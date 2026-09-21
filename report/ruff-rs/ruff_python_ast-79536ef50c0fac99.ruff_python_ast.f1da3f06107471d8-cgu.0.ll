Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_:bb.a
  %i.g = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i3 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBF_(ptr noalias noundef align 8 dereferenceable(80) %i.k) #59
          to label %bb.c unwind label %bb.e, !inline_history !124

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !124
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBG_.exit: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !46 ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBG_.exit
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBG_.exit
  %i.p = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.n, i64 80) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBA_.exit, !prof !47

bb.g:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBA_.exit: ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = add nuw nsw i64 %i.r, 16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef 8) #62
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.b = load i64, ptr %.val, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBG_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB11_.exit.i
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBF_.exit
  %.sroa.0.0.i15 = phi i64 [ %i.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %.sroa.0.0.i15 ; 4 uses
  %i.f = add i64 %.sroa.0.0.i15, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 95
  %i.h = load i8, ptr %i.g, align 1, !range !48, !alias.scope !145, !noundef !46 ; 2 uses
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB11_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.k = and i8 %i.h, -2
  %switch.i.i.i.i.i.i.i = icmp eq i8 %i.k, -48
  br i1 %switch.i.i.i.i.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB11_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %.pn.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !152, !nonnull !46, !noundef !46
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i, i64 -8
  %i.l = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !152
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB11_.exit.i, !prof !47

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB11_.exit.i unwind label %bb.e, !inline_history !141

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB11_.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBF_.exit unwind label %bb.h, !inline_history !141

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e) #59
          to label %.body unwind label %bb.f, !inline_history !141

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !141
  unreachable

bb.g:                                             ; preds = %.lr.ph17
  %i.p = add i64 %.sroa.0.1.i16, 1                ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.b
  br i1 %i.q, label %._crit_edge, label %.lr.ph17

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB11_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.n, %bb.e ]
  %i.s = icmp eq i64 %i.f, %i.b
  br i1 %i.s, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body, %bb.g
  %.sroa.0.1.i16 = phi i64 [ %i.p, %bb.g ], [ %i.f, %.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %i.a, i64 %.sroa.0.1.i16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBF_(ptr noalias noundef align 8 dereferenceable(120) %i.t) #59
          to label %bb.g unwind label %bb.i, !inline_history !142

._crit_edge:                                      ; preds = %bb.g, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.lr.ph17
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !142
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBG_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBF_.exit, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !46 ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.j, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBG_.exit
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBG_.exit
  %i.y = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.w, i64 120) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.l, label %bb.k, !prof !47

bb.k:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.aa = extractvalue { i64, i1 } %i.y, 0
  %i.ab = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aa, i64 16) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.m, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBA_.exit, !prof !47

bb.l:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBA_.exit: ; preds = %bb.k
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ad, i64 noundef 8) #62
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBN_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.b = load i64, ptr %.val, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBG_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit.i
  %.sroa.0.0.i2 = phi i64 [ %i.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %.sroa.0.0.i2
  %i.f = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit.i unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit7.i: ; preds = %.lr.ph4
  %i.g = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit7.i._crit_edge, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit7.i._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit7.i
  %.sroa.0.1.i3 = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit7.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %.sroa.0.1.i3
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit7.i unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit7.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit7.i, %bb.b
  resume { ptr, i32 } %i.i

bb.c:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBG_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBF_.exit.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !46 ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBG_.exit
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBG_.exit
  %i.p = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.n, i64 88) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %bb.f, label %bb.e, !prof !47

bb.e:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.r, i64 16) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %bb.g, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBA_.exit, !prof !47

bb.f:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEBA_.exit: ; preds = %bb.e
  %i.u = extractvalue { i64, i1 } %i.s, 0
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.u, i64 noundef 8) #62
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBN_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.b = load i64, ptr %.val, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i2 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i2
  %i.f = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !0

bb.c:                                             ; preds = %.lr.ph4
  %i.g = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i3 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.1.i3
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k) #59
          to label %bb.c unwind label %bb.e, !inline_history !0

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !0
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBG_.exit: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !46 ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBG_.exit
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBG_.exit
  %i.p = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.n, i64 72) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.g, !prof !47

bb.g:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.r, i64 16) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBA_.exit, !prof !47

bb.h:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBA_.exit: ; preds = %bb.g
  %i.u = extractvalue { i64, i1 } %i.s, 0
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.u, i64 noundef 8) #62
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBN_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.b = load i64, ptr %.val, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i2 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %.sroa.0.0.i2
  %i.f = add i64 %.sroa.0.0.i2, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !153

bb.c:                                             ; preds = %.lr.ph4
  %i.g = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i3 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.k) #59
          to label %bb.c unwind label %bb.e, !inline_history !153

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !153
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBG_.exit: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !46 ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBG_.exit
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBG_.exit
  %i.p = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.n, i64 88) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.g, !prof !47

bb.g:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.r, i64 16) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBA_.exit, !prof !47

bb.h:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBA_.exit: ; preds = %bb.g
  %i.u = extractvalue { i64, i1 } %i.s, 0
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.u, i64 noundef 8) #62
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBN_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.b = load i64, ptr %.val, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i2 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i2
  %i.f = add i64 %.sroa.0.0.i2, 1                 ; 4 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !154

bb.c:                                             ; preds = %.lr.ph4
  %i.g = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i3 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.1.i3
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k) #59
          to label %bb.c unwind label %bb.e, !inline_history !154

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !154
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBG_.exit: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !46 ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBG_.exit
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBG_.exit
  %i.p = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.n, i64 72) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.g, !prof !47
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEB1d_:bb.a
  br i1 %i.b, label %_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit, label %bb.b, !prof !53

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !inline_history !1489
  br label %_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit

_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEEB1d_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1493, !nonnull !46, !noundef !46
  %i.b = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.b, label %_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit, label %bb.b, !prof !53

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !inline_history !1492
  br label %_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit

_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEEB1x_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !58, !noundef !46 ; 5 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1b_.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1b_.exit: ; preds = %bb.j, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1507, !nonnull !46, !noundef !46 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1507, !noundef !46 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %.sroa.0.0.i1 ; 4 uses
  %i.i = add nuw i64 %.sroa.0.0.i1, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508), !noalias !1506
  %i.j = load i64, ptr %i.h, align 8, !range !57, !alias.scope !1509, !noalias !1506, !noundef !46
  %i.k = icmp eq i64 %i.j, -2
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i.i = load i64, ptr %i.l, align 8, !range !58, !alias.scope !1509, !noalias !1506, !noundef !46 ; 2 uses
  %i.m = icmp sgt i64 %.val.i.i, 0
  br i1 %i.m, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %.val1.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1509, !noalias !1506, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !1510, !inline_history !1504
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i

bb.e:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i unwind label %bb.g, !noalias !1506, !inline_history !1505

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i: ; preds = %bb.e, %bb.c, %bb.d
  %i.o = icmp eq i64 %i.i, %i.f
  br i1 %i.o, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph8
  %i.p = add i64 %.sroa.0.1.i7, 1                 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %.body, label %.lr.ph8

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.i, %i.f
  br i1 %i.s, label %.body, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.g, %bb.f
  %.sroa.0.1.i7 = phi i64 [ %i.p, %bb.f ], [ %i.i, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %.sroa.0.1.i7
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_(ptr noalias noundef align 8 dereferenceable(184) %i.t) #59
          to label %bb.f unwind label %bb.h, !noalias !1506, !inline_history !1504

bb.h:                                             ; preds = %.lr.ph8
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !1506, !inline_history !1504
  unreachable

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i, %bb.b
  %i.v = icmp eq i64 %i.a, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1b_.exit, label %bb.j

.body:                                            ; preds = %bb.f, %bb.g
  %i.w = icmp eq i64 %i.a, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1i_.exit.i, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = mul nuw i64 %i.a, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !1506, !inline_history !1511
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1i_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1i_.exit.i: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.r

bb.j:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i
  %i.y = mul nuw i64 %i.a, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !1506, !inline_history !1511
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1b_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEEB1z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !54, !noundef !46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB1d_.exit unwind label %bb.d, !noalias !1514, !inline_history !65

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 8) #62, !noalias !1514
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 8) #62, !noalias !1514
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersEEEB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !54, !noundef !46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersEEB1d_.exit unwind label %bb.d, !noalias !1517, !inline_history !1518

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #62, !noalias !1517
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #62, !noalias !1517
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10TypeParamsEEEB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !54, !noundef !46 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10TypeParamsEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1525, !nonnull !46, !noundef !46 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1525, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %.val1.i.i.i
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i1 = phi i64 [ %i.h, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i, i64 %.sroa.0.0.i.i.i.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i1, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamEBF_(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %bb.d unwind label %bb.f, !noalias !1525

bb.e:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i.i.i.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %.val1.i.i.i
  br i1 %i.j, label %.body.i.i.i, label %.lr.ph3

bb.f:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %.val1.i.i.i
  br i1 %i.l, label %.body.i.i.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i2 = phi i64 [ %i.i, %bb.e ], [ %i.h, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i2
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamEBF_(ptr noalias noundef align 8 dereferenceable(72) %i.m) #59
          to label %bb.e unwind label %bb.g, !noalias !1525

bb.g:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !1525
  unreachable

.body.i.i.i:                                      ; preds = %bb.e, %bb.f
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !range !52, !alias.scope !1525, !noundef !46 ; 2 uses
  %i.o = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.o, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.body.i.i.i
  %i.p = mul nuw i64 %.val4.i.i.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !1525
  br label %bb.j

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !52, !alias.scope !1525, !noundef !46 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10TypeParamsEEB1d_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i.i
  %i.r = mul nuw i64 %.val2.i.i.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !1525
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10TypeParamsEEB1d_.exit

bb.j:                                             ; preds = %bb.h, %.body.i.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #62
  resume { ptr, i32 } %i.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10TypeParamsEEB1d_.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated9TypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i.i, %bb.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #62
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEEEB1z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !54, !noundef !46 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1537, !noalias !1538, !nonnull !46, !noundef !46 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1537, !noalias !1538, !noundef !46 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEBF_.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEBF_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i5 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.sroa.0.0.i.i5
  %i.j = add i64 %.sroa.0.0.i.i5, 1               ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_(ptr noalias noundef align 8 dereferenceable(64) %i.i)
          to label %bb.d unwind label %bb.f, !noalias !1539, !inline_history !1530

bb.e:                                             ; preds = %.lr.ph7
  %i.k = add i64 %.sroa.0.1.i.i6, 1               ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %.body2, label %.lr.ph7

bb.f:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %.body2, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i6 = phi i64 [ %i.k, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.sroa.0.1.i.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_(ptr noalias noundef align 8 dereferenceable(64) %i.o) #59
          to label %bb.e unwind label %bb.g, !noalias !1539, !inline_history !1530

bb.g:                                             ; preds = %.lr.ph7
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !1539, !inline_history !1530
  unreachable

.body2:                                           ; preds = %bb.e, %bb.f
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !52, !alias.scope !1540, !noalias !1538, !noundef !46 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.q, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.body2
  %.val3.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1540, !noalias !1538, !nonnull !46, !noundef !46
  %i.r = shl nuw i64 %.val2.i.i.i, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !1538
  br label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEBF_.exit: ; preds = %bb.d, %bb.c
  %.val.i.i.i = load i64, ptr %i.a, align 8, !range !52, !alias.scope !1540, !noalias !1538, !noundef !46 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEEB1d_.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEBF_.exit
  %.val1.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1540, !noalias !1538, !nonnull !46, !noundef !46
  %i.t = shl nuw i64 %.val.i.i.i, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !1538
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEEB1d_.exit

bb.j:                                             ; preds = %bb.h, %.body2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #62, !noalias !1538
  resume { ptr, i32 } %i.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEEB1d_.exit: ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEBF_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #62, !noalias !1538
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEEEB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !54, !noundef !46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEBF_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEEB1d_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #62
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #62
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEEB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !54, !noundef !46
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEB1d_(ptr noalias noundef align 8 dereferenceable(8) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !54, !noundef !46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit unwind label %bb.d, !noalias !1543, !inline_history !66

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #62, !noalias !1543
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #62, !noalias !1543
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable16HashableExprKindEEB1b_:bb.a
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable16HashableExprKindEEB1i_.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable16HashableExprKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.p = mul nuw i64 %.val, 144
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable16HashableExprKindEEB1i_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable16HashableExprKindEEB1i_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable16HashableExprKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable16HashableExprKindEEB1i_.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1604, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1604, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEBF_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEBF_.exit.i
  %.sroa.0.0.i5 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEBF_.exit.i unwind label %bb.b, !inline_history !1602

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEBF_.exit7.i: ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEBF_.exit7.i
  %.sroa.0.1.i6 = phi i64 [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEBF_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEBF_.exit7.i unwind label %bb.c, !inline_history !1602

bb.c:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1603
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEBF_.exit7.i, %bb.b
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEEB1i_.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 144
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEEB1i_.exit4, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.r = mul nuw i64 %.val, 144
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.e
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordEEB1i_.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1608, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1608, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [176 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEBF_(ptr noalias noundef align 8 dereferenceable(176) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !1607

bb.c:                                             ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [176 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEBF_(ptr noalias noundef align 8 dereferenceable(176) %i.m) #59
          to label %bb.c unwind label %bb.e, !inline_history !1607

bb.e:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1607
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEEB1i_.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 176
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEEB1i_.exit4, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.r = mul nuw i64 %.val, 176
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEEB1i_.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1618, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1618, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEBF_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEBF_.exit.i
  %.sroa.0.0.i17 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.0.i17 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i17, 1        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !68, !alias.scope !1619, !noundef !46
  %i.k = icmp eq i64 %i.j, -2
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit.i unwind label %bb.c, !inline_history !1615

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.g) #59
          to label %.body.i unwind label %bb.d, !inline_history !1616

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit.i: ; preds = %bb.b, %.lr.ph
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEBF_.exit.i unwind label %bb.f, !inline_history !1616

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1616
  unreachable

bb.e:                                             ; preds = %.lr.ph19
  %i.n = add i64 %.sroa.0.1.i18, 1                ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.d
  br i1 %i.o, label %.body, label %.lr.ph19

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.l, %bb.c ]
  %i.q = icmp eq i64 %i.h, %i.d
  br i1 %i.q, label %.body, label %.lr.ph19

.lr.ph19:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i18 = phi i64 [ %i.n, %bb.e ], [ %i.h, %.body.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.1.i18
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEBF_(ptr noalias noundef align 8 dereferenceable(256) %i.r) #59
          to label %bb.e unwind label %bb.g, !inline_history !1617

bb.g:                                             ; preds = %.lr.ph19
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1617
  unreachable

.body:                                            ; preds = %bb.e, %.body.i
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.t = icmp eq i64 %.val2, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEEB1i_.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.u = shl nuw i64 %.val2, 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.v = icmp eq i64 %.val, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEEB1i_.exit4, label %bb.i

bb.i:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.w = shl nuw i64 %.val, 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.i
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableDictItemEEB1i_.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEBF_.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [256 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !68, !alias.scope !1628, !noundef !46
  %i.i = icmp eq i64 %i.h, -2
  br i1 %i.i, label %.body.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g)
          to label %.body.i.i unwind label %bb.f, !inline_history !9

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !68, !alias.scope !1629, !noundef !46
  %i.l = icmp eq i64 %i.k, -2
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEBF_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEBF_.exit.i.i unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEBF_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.n = icmp eq i64 %i.e, %.val1
  br i1 %i.n, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.0.1.i.i27, 1              ; 2 uses
  %i.p = icmp eq i64 %i.o, %.val1
  br i1 %i.p, label %.body, label %.lr.ph

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.c, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  %i.r = icmp eq i64 %i.e, %.val1
  br i1 %i.r, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i27 = phi i64 [ %i.o, %bb.g ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %.val, i64 %.sroa.0.1.i.i27
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEBF_(ptr noalias noundef align 8 dereferenceable(256) %i.s) #59
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable

.body:                                            ; preds = %bb.g, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.u = icmp eq i64 %.val4, 0
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEEB1i_.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.v = shl nuw i64 %.val4, 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEBF_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.w = icmp eq i64 %.val2, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEEB1i_.exit6, label %bb.k

bb.k:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.x = shl nuw i64 %.val2, 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEEB1i_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEEB1i_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.k
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable18ComparableWithItemEEB1i_.exit: ; preds = %bb.j, %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEBF_.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEBF_.exit.i.i
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [128 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEBF_.exit.i.i unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEBF_.exit7.i.i: ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEBF_.exit7.i.i
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEBF_.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEBF_.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEBF_.exit7.i.i, %bb.b
  %.val4 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEEB1i_.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.n = shl nuw i64 %.val4, 7
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEBF_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEEB1i_.exit6, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.p = shl nuw i64 %.val2, 7
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEEB1i_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEEB1i_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.e
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDecoratorEEB1i_.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1639, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1639, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEBF_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEBF_.exit.i
  %.sroa.0.0.i27 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [328 x i8], ptr %i.b, i64 %.sroa.0.0.i27 ; 5 uses
  %i.h = add i64 %.sroa.0.0.i27, 1                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEBF_(ptr noalias noundef align 8 dereferenceable(176) %i.i)
          to label %bb.d unwind label %bb.b, !inline_history !1632

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 200 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !68, !alias.scope !1640, !noundef !46
  %i.m = icmp eq i64 %i.l, -2
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit6, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit6 unwind label %bb.g, !inline_history !1635

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 200 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !68, !alias.scope !1641, !noundef !46
  %i.p = icmp eq i64 %i.o, -2
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit unwind label %bb.f, !inline_history !1635

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit6: ; preds = %bb.b, %bb.c, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableStmtEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.g) #59
          to label %.body.i unwind label %bb.g, !inline_history !1632

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit: ; preds = %bb.d, %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableStmtEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEBF_.exit.i unwind label %bb.i, !inline_history !1632

bb.g:                                             ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit6
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1632
  unreachable

bb.h:                                             ; preds = %.lr.ph29
  %i.s = add i64 %.sroa.0.1.i28, 1                ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %.body, label %.lr.ph29

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit6, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.i ], [ %.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB11_.exit6 ]
  %i.v = icmp eq i64 %i.h, %i.d
  br i1 %i.v, label %.body, label %.lr.ph29

.lr.ph29:                                         ; preds = %.body.i, %bb.h
  %.sroa.0.1.i28 = phi i64 [ %i.s, %bb.h ], [ %i.h, %.body.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [328 x i8], ptr %i.b, i64 %.sroa.0.1.i28
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEBF_(ptr noalias noundef align 8 dereferenceable(328) %i.w) #59
          to label %bb.h unwind label %bb.j, !inline_history !1638

bb.j:                                             ; preds = %.lr.ph29
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1638
  unreachable

.body:                                            ; preds = %bb.h, %.body.i
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.y = icmp eq i64 %.val2, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEEB1i_.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.z = mul nuw i64 %.val2, 328
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.aa = icmp eq i64 %.val, 0
  br i1 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEEB1i_.exit4, label %bb.l

bb.l:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.ab = mul nuw i64 %.val, 328
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.l
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableMatchCaseEEB1i_.exit: ; preds = %bb.k, %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamEBF_(ptr noalias noundef readonly align 8 dereferenceable(40) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamEBF_(ptr noalias noundef readonly align 8 dereferenceable(40) %i.k) #59
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !1644
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamEEB1i_.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamEEB1i_.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.p = mul nuw i64 %.val2, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamEEB1i_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamEEB1i_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.g
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableTypeParamEEB1i_.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !46, !noundef !46 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !46
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBG_(ptr noalias noundef nonnull align 8 %.val, i64 noundef %.val1)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val4 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.d = icmp eq i64 %.val4, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEEB1i_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw i64 %.val4, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEEB1i_.exit6, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.g = mul nuw i64 %.val2, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEEB1i_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEEB1i_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.d
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEEB1i_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1648, !nonnull !46, !noundef !46 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1648, !noundef !46
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBG_(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit unwind label %bb.b, !inline_history !1647

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEEB1i_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = mul nuw i64 %.val2, 288
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.h = icmp eq i64 %.val, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEEB1i_.exit4, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.i = mul nuw i64 %.val, 288
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.d
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEEB1i_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1653, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1653, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEBF_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEBF_.exit.i
  %.sroa.0.0.i5 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable26ExceptHandlerExceptHandlerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEBF_.exit.i unwind label %bb.b, !inline_history !1651

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEBF_.exit7.i: ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEBF_.exit7.i
  %.sroa.0.1.i6 = phi i64 [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEBF_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable26ExceptHandlerExceptHandlerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEBF_.exit7.i unwind label %bb.c, !inline_history !1651

bb.c:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1652
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEBF_.exit7.i, %bb.b
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEEB1i_.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 48
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEEB1i_.exit4, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.r = mul nuw i64 %.val, 48
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.e
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableExceptHandlerEEB1i_.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable24ComparableElifElseClauseEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_2
begin_hunk_3_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultEEB1b_:bb.a
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultEBF_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableParameterEBF_.exit, %bb.d
  %i.q = icmp eq i64 %i.g, %i.d
  br i1 %i.q, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph68
  %i.r = add i64 %.sroa.0.1.i67, 1                ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.d
  br i1 %i.s, label %.body, label %.lr.ph68

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %.body7, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.k, %.body7 ], [ %i.k, %bb.c ]
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %.body, label %.lr.ph68

.lr.ph68:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i67 = phi i64 [ %i.r, %bb.f ], [ %i.g, %.body.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [152 x i8], ptr %i.b, i64 %.sroa.0.1.i67
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultEBF_(ptr noalias noundef align 8 dereferenceable(152) %i.v) #59
          to label %bb.f unwind label %bb.h, !inline_history !1683

bb.h:                                             ; preds = %.lr.ph68
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1683
  unreachable

.body:                                            ; preds = %bb.f, %.body.i
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.x = icmp eq i64 %.val2, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultEEB1i_.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.y = mul nuw i64 %.val2, 152
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.z = icmp eq i64 %.val, 0
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultEEB1i_.exit4, label %bb.j

bb.j:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.aa = mul nuw i64 %.val, 152
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.j
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultEEB1i_.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1700, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1700, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i
  %.sroa.0.0.i5 = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %.sroa.0.0.i5 ; 4 uses
  %i.g = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.h = load i64, ptr %i.f, align 8, !range !57, !alias.scope !1702, !noundef !46
  %i.i = icmp eq i64 %i.h, -2
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i = load i64, ptr %i.j, align 8, !range !58, !alias.scope !1702, !noundef !46 ; 2 uses
  %i.k = icmp sgt i64 %.val.i.i, 0
  br i1 %i.k, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1702, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !1703
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i

bb.d:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i unwind label %bb.f, !inline_history !1698

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph11
  %i.n = add i64 %.sroa.0.1.i10, 1                ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.d
  br i1 %i.o, label %.body, label %.lr.ph11

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.g, %i.d
  br i1 %i.q, label %.body, label %.lr.ph11

.lr.ph11:                                         ; preds = %bb.f, %bb.e
  %.sroa.0.1.i10 = phi i64 [ %i.n, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw [184 x i8], ptr %i.b, i64 %.sroa.0.1.i10
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_(ptr noalias noundef align 8 dereferenceable(184) %i.r) #59
          to label %bb.e unwind label %bb.g, !inline_history !1699

bb.g:                                             ; preds = %.lr.ph11
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1699
  unreachable

.body:                                            ; preds = %bb.e, %bb.f
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.t = icmp eq i64 %.val2, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1i_.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.u = mul nuw i64 %.val2, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.v = icmp eq i64 %.val, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1i_.exit4, label %bb.i

bb.i:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.w = mul nuw i64 %.val, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.i
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1i_.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  %i.h = load i8, ptr %i.g, align 1, !range !69, !alias.scope !1735, !noundef !46
  %i.i = and i8 %i.h, -2
  %switch.i.i.i.i.i.i.i = icmp eq i8 %i.i, -48
  br i1 %switch.i.i.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  %.pn.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1737, !nonnull !46, !noundef !46
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i, i64 -8
  %i.j = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !1738
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i, !prof !47

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = icmp eq i64 %i.e, %.val1
  br i1 %i.l, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.e, %.val1
  br i1 %i.n, label %.body, label %.lr.ph15.i.i

.lr.ph15.i.i:                                     ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit11.i.i
  %.sroa.0.113.i.i = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit11.i.i ], [ %i.e, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.113.i.i ; 2 uses
  %i.p = add i64 %.sroa.0.113.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 23
  %i.s = load i8, ptr %i.r, align 1, !range !69, !alias.scope !1744, !noundef !46
  %i.t = and i8 %i.s, -2
  %switch.i.i.i.i.i7.i.i = icmp eq i8 %i.t, -48
  br i1 %switch.i.i.i.i.i7.i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit11.i.i

bb.e:                                             ; preds = %.lr.ph15.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %.pn.i.i.i.i.i.i8.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1746, !nonnull !46, !noundef !46
  %.sroa.0.0.i.i.i.i.i.i9.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i8.i.i, i64 -8
  %i.u = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i9.i.i, i64 1 release, align 8, !noalias !1747
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit11.i.i, !prof !47

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit11.i.i unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit11.i.i: ; preds = %bb.f, %bb.e, %.lr.ph15.i.i
  %i.w = icmp eq i64 %i.p, %.val1
  br i1 %i.w, label %.body, label %.lr.ph15.i.i

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit11.i.i, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.y = icmp eq i64 %.val4, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB1i_.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.z = shl nuw i64 %.val4, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.aa = icmp eq i64 %.val2, 0
  br i1 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB1i_.exit6, label %bb.i

bb.i:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.ab = shl nuw i64 %.val2, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB1i_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB1i_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.i
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB1i_.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1767, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1767, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEBF_.exit.i
  %.sroa.0.0.i11 = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.0.i11 ; 5 uses
  %i.g = add nuw i64 %.sroa.0.0.i11, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  %i.h = load i64, ptr %i.f, align 8, !range !58, !alias.scope !1769, !noundef !46 ; 5 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %.val1.i.i = load i64, ptr %i.j, align 8, !alias.scope !1770, !noundef !46 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEBF_.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1769, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #62, !noalias !1771
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEBF_.exit.i

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1774, !nonnull !46, !noundef !46 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1774, !noundef !46
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBG_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %i.p)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i unwind label %bb.d, !noalias !1775, !inline_history !1764

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i: ; preds = %bb.c
  %i.q = icmp eq i64 %i.h, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEBF_.exit.i, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.h, 0
  br i1 %i.s, label %.body7, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = shl nuw i64 %i.h, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !1775, !inline_history !1765
  br label %.body7

bb.f:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i
  %i.u = shl nuw i64 %i.h, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !1775, !inline_history !1765
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEBF_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEBF_.exit.i: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i, %bb.f, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.b
  %i.v = icmp eq i64 %i.g, %i.d
  br i1 %i.v, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph27
  %i.w = add i64 %.sroa.0.1.i26, 1                ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.d
  br i1 %i.x, label %.body, label %.lr.ph27

.body7:                                           ; preds = %bb.d, %bb.e
  %i.y = icmp eq i64 %i.g, %i.d
  br i1 %i.y, label %.body, label %.lr.ph27

.lr.ph27:                                         ; preds = %.body7, %bb.g
  %.sroa.0.1.i26 = phi i64 [ %i.w, %bb.g ], [ %i.g, %.body7 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i26
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEBF_(ptr noalias noundef align 8 dereferenceable(40) %i.z) #59
          to label %bb.g unwind label %bb.h, !inline_history !1766

bb.h:                                             ; preds = %.lr.ph27
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1766
  unreachable

.body:                                            ; preds = %bb.g, %.body7
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.ab = icmp eq i64 %.val2, 0
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEEB1i_.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.ac = mul nuw i64 %.val2, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.ad = icmp eq i64 %.val, 0
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEEB1i_.exit4, label %bb.j

bb.j:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.ae = mul nuw i64 %.val, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.j
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEEB1i_.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.r
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !46, !noundef !46 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !46 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBF_.exit.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load i64, ptr %i.f, align 8, !alias.scope !1783, !noundef !46 ; 2 uses
  %i.g = icmp eq i64 %.val9.i.i, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBF_.exit.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1782, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %.val9.i.i, i64 noundef 1) #62, !noalias !1784
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBF_.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBF_.exit.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %.lr.ph.i.i
end_hunk_3
begin_hunk_4_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEEB1b_:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1823, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1823, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEBF_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEBF_.exit.i
  %.sroa.0.0.i17 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %.sroa.0.0.i17 ; 4 uses
  %i.h = add i64 %.sroa.0.0.i17, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 95
  %i.k = load i8, ptr %i.j, align 1, !range !69, !alias.scope !1829, !noundef !46
  %i.l = and i8 %i.k, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.l, -48
  br i1 %switch.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1831, !nonnull !46, !noundef !46
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.m = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !1831
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit, !prof !47

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBF_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.g) #59
          to label %.body.i unwind label %bb.e, !inline_history !1821

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit: ; preds = %bb.b, %.lr.ph, %bb.c
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBF_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEBF_.exit.i unwind label %bb.g, !inline_history !1821

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1821
  unreachable

bb.f:                                             ; preds = %.lr.ph19
  %i.q = add i64 %.sroa.0.1.i18, 1                ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d
  br i1 %i.r, label %.body, label %.lr.ph19

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.o, %bb.d ]
  %i.t = icmp eq i64 %i.h, %i.d
  br i1 %i.t, label %.body, label %.lr.ph19

.lr.ph19:                                         ; preds = %.body.i, %bb.f
  %.sroa.0.1.i18 = phi i64 [ %i.q, %bb.f ], [ %i.h, %.body.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %.sroa.0.1.i18
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEBF_(ptr noalias noundef align 8 dereferenceable(120) %i.u) #59
          to label %bb.f unwind label %bb.h, !inline_history !1822

bb.h:                                             ; preds = %.lr.ph19
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1822
  unreachable

.body:                                            ; preds = %bb.f, %.body.i
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.w = icmp eq i64 %.val2, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEEB1i_.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = mul nuw i64 %.val2, 120
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.y = icmp eq i64 %.val, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEEB1i_.exit4, label %bb.j

bb.j:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.z = mul nuw i64 %.val, 120
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.j
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordEEB1i_.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEBF_.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 5 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 63
  %i.h = load i8, ptr %i.g, align 1, !range !69, !alias.scope !1868, !noundef !46
  %i.i = and i8 %i.h, -2
  %switch.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, -48
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  %.pn.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1870, !nonnull !46, !noundef !46
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i.i, i64 -8
  %i.j = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !1871
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i.i, !prof !47

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d) #59
          to label %.body.i.i unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  %i.n = load i8, ptr %i.m, align 1, !range !48, !alias.scope !1873, !noundef !46 ; 2 uses
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEBF_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  %i.q = and i8 %i.n, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, -48
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEBF_.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  %.pn.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1880, !nonnull !46, !noundef !46
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i, i64 -8
  %i.r = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !1881
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEBF_.exit.i.i, !prof !47

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEBF_.exit.i.i unwind label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEBF_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i.i.i
  %i.u = icmp eq i64 %i.e, %.val1
  br i1 %i.u, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i.i28, 1              ; 2 uses
  %i.w = icmp eq i64 %i.v, %.val1
  br i1 %i.w, label %.body, label %.lr.ph

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.l, %bb.d ]
  %i.y = icmp eq i64 %i.e, %.val1
  br i1 %i.y, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.i
  %.sroa.0.1.i.i28 = phi i64 [ %i.v, %bb.i ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.0.1.i.i28
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEBF_(ptr noalias noundef align 8 dereferenceable(80) %i.z) #59
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable

.body:                                            ; preds = %bb.i, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.ab = icmp eq i64 %.val4, 0
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEB1i_.exit, label %bb.l

bb.l:                                             ; preds = %.body
  %i.ac = mul nuw i64 %.val4, 80
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEBF_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.ad = icmp eq i64 %.val2, 0
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEB1i_.exit6, label %bb.m

bb.m:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.ae = mul nuw i64 %.val2, 80
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEB1i_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEB1i_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.m
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEEB1i_.exit: ; preds = %bb.l, %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1886, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1886, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBF_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBF_.exit.i
  %.sroa.0.0.i5 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsEBF_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBF_.exit.i unwind label %bb.b, !inline_history !1884

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBF_.exit7.i: ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBF_.exit7.i
  %.sroa.0.1.i6 = phi i64 [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBF_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsEBF_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBF_.exit7.i unwind label %bb.c, !inline_history !1884

bb.c:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1885
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBF_.exit7.i, %bb.b
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEEB1i_.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEEB1i_.exit4, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.r = mul nuw i64 %.val, 40
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.e
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEEB1i_.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1896, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1896, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEBF_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_.exit.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEBF_.exit.i
  %.sroa.0.0.i17 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.0.i17 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i17, 1        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !range !49, !alias.scope !1897, !noundef !46
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_.exit.i unwind label %bb.c, !inline_history !1893

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.g) #59
          to label %.body.i unwind label %bb.d, !inline_history !1894

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_.exit.i: ; preds = %bb.b, %.lr.ph
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEBF_.exit.i unwind label %bb.f, !inline_history !1894

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1894
  unreachable

bb.e:                                             ; preds = %.lr.ph19
  %i.n = add i64 %.sroa.0.1.i18, 1                ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.d
  br i1 %i.o, label %.body, label %.lr.ph19

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.l, %bb.c ]
  %i.q = icmp eq i64 %i.h, %i.d
  br i1 %i.q, label %.body, label %.lr.ph19

.lr.ph19:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i18 = phi i64 [ %i.n, %bb.e ], [ %i.h, %.body.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.1.i18
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEBF_(ptr noalias noundef align 8 dereferenceable(144) %i.r) #59
          to label %bb.e unwind label %bb.g, !inline_history !1895

bb.g:                                             ; preds = %.lr.ph19
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1895
  unreachable

.body:                                            ; preds = %bb.e, %.body.i
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.t = icmp eq i64 %.val2, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEEB1i_.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.u = mul nuw i64 %.val2, 144
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.v = icmp eq i64 %.val, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEEB1i_.exit4, label %bb.i

bb.i:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.w = mul nuw i64 %.val, 144
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.i
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemEEB1i_.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEEB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !46 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEBF_.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 4 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #59
          to label %.body.i.i unwind label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1907, !align !54, !noundef !46 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEBF_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i) #63
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit.i.i.i.i unwind label %bb.e, !noalias !1908, !inline_history !70

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 72, i64 noundef 8) #62, !noalias !1908, !inline_history !71
  br label %.body.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 72, i64 noundef 8) #62, !noalias !1908, !inline_history !71
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEBF_.exit.i.i

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEBF_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit.i.i.i.i, %bb.c
  %i.m = icmp eq i64 %i.e, %.val1
  br i1 %i.m, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.n = add i64 %.sroa.0.1.i.i36, 1              ; 2 uses
  %i.o = icmp eq i64 %i.n, %.val1
  br i1 %i.o, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.k, %bb.e ]
  %i.p = icmp eq i64 %i.e, %.val1
  br i1 %i.p, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i36 = phi i64 [ %i.n, %bb.g ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.sroa.0.1.i.i36
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEBF_(ptr noalias noundef align 8 dereferenceable(96) %i.q) #59
          to label %bb.g unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable

.body:                                            ; preds = %bb.g, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEEB1i_.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.t = mul nuw i64 %.val4, 96
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEBF_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEEB1i_.exit6, label %bb.j

bb.j:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.v = mul nuw i64 %.val2, 96
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEEB1i_.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEEB1i_.exit6: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.j
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEEB1i_.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1912, !nonnull !46, !noundef !46 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1912, !noundef !46
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEBG_(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit unwind label %bb.b, !inline_history !1911

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEEB1i_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = mul nuw i64 %.val2, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.h = icmp eq i64 %.val, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEEB1i_.exit4, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.i = mul nuw i64 %.val, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.d
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEEB1i_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEEB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1917, !nonnull !46, !noundef !46 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1917, !noundef !46 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit.i
  %.sroa.0.0.i5 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26ExceptHandlerExceptHandlerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit.i unwind label %bb.b, !inline_history !1915

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7.i: ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7.i
  %.sroa.0.1.i6 = phi i64 [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26ExceptHandlerExceptHandlerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7.i unwind label %bb.c, !inline_history !1915

bb.c:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1916
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7.i, %bb.b
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEEB1i_.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.p = shl nuw i64 %.val2, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEEB1i_.exit4, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.r = shl nuw i64 %.val, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.e
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEEB1i_.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEEB1b_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1921, !nonnull !46, !noundef !46 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1921, !noundef !46
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBG_(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit unwind label %bb.b, !inline_history !1920

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEEB1i_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %.val2, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEEB1i_.exit

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit: ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !52, !noundef !46 ; 2 uses
  %i.h = icmp eq i64 %.val, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEEB1i_.exit4, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit
  %i.i = shl nuw i64 %.val, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEEB1i_.exit4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEEB1i_.exit4: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit, %bb.d
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEEB1i_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_4
begin_hunk_5_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEEB1d_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEBF_.exit: ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #62
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #62
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEB1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.d = load i8, ptr %i.c, align 1, !range !69, !alias.scope !1953, !noundef !46
  %i.e = and i8 %i.d, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.e, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1955, !nonnull !46, !noundef !46
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.f = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !1955
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i, !prof !47

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i unwind label %bb.d, !inline_history !72

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1956, !align !54, !noundef !46 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEBF_.exit, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1957, !align !54, !noundef !46
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.i unwind label %bb.h, !inline_history !1958

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %.noexc unwind label %bb.g, !noalias !1959, !inline_history !1960

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 72, i64 noundef 8) #62, !noalias !1959, !inline_history !1960
  br label %bb.i

.noexc:                                           ; preds = %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 72, i64 noundef 8) #62, !noalias !1959, !inline_history !1960
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEBF_.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !72
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEBF_.exit: ; preds = %.noexc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEBF_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #62
  ret void

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %i.o, %bb.g ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #62
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46 ; 3 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #62
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #62
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEEB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !46 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i6 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [184 x i8], ptr %i.a, i64 %.sroa.0.0.i6
  %i.f = add i64 %.sroa.0.0.i6, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_(ptr noalias noundef align 8 dereferenceable(184) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !1961

bb.c:                                             ; preds = %.lr.ph8
  %i.g = add i64 %.sroa.0.1.i7, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i7 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [184 x i8], ptr %i.a, i64 %.sroa.0.1.i7
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_(ptr noalias noundef align 8 dereferenceable(184) %i.k) #59
          to label %bb.c unwind label %bb.e, !inline_history !1961

bb.e:                                             ; preds = %.lr.ph8
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1961
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.m, i64 noundef 8) #62
  resume { ptr, i32 } %i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %i.c, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef 8) #62
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1e_(ptr %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i
  %.sroa.0.07.i = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [184 x i8], ptr %.0.val, i64 %.sroa.0.07.i ; 4 uses
  %i.c = add nuw nsw i64 %.sroa.0.07.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  %i.d = load i64, ptr %i.b, align 8, !range !57, !alias.scope !1971, !noundef !46
  %i.e = icmp eq i64 %i.d, -2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load i64, ptr %i.f, align 8, !range !58, !alias.scope !1971, !noundef !46 ; 2 uses
  %i.g = icmp sgt i64 %.val.i.i, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 16
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1971, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !1972, !inline_history !1968
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i unwind label %bb.f, !inline_history !1969

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = icmp eq i64 %i.c, %.8.val
  br i1 %i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i5, 1                 ; 2 uses
  %i.k = icmp eq i64 %i.j, %.8.val
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.c, %.8.val
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.e
  %.sroa.0.1.i5 = phi i64 [ %i.j, %bb.e ], [ %i.c, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [184 x i8], ptr %.0.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_(ptr noalias noundef align 8 dereferenceable(184) %i.n) #59
          to label %bb.e unwind label %bb.g, !inline_history !1968

bb.g:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !1968
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i
  %i.p = mul nuw nsw i64 %.8.val, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.p, i64 noundef 8) #62
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4
  ret void

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.q = mul nuw nsw i64 %.8.val, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.q, i64 noundef 8) #62
  resume { ptr, i32 } %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEEB1e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !46 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #62
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !46 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i6 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i6
  %i.f = add i64 %.sroa.0.0.i6, 1                 ; 4 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !0

bb.c:                                             ; preds = %.lr.ph8
  %i.g = add i64 %.sroa.0.1.i7, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i7 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.1.i7
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k) #59
          to label %bb.c unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %.lr.ph8
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !0
  unreachable

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.m, i64 noundef 8) #62
  resume { ptr, i32 } %i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.n, i64 noundef 8) #62
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxShEECskLngH8kgpZI_15ruff_python_ast(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !46 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #62
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECskLngH8kgpZI_15ruff_python_ast(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !46 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #62
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECskLngH8kgpZI_15ruff_python_ast(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1976
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1976
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !1976, !nonnull !46, !align !54, !noundef !46 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1976, !noundef !46 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !1976, !nonnull !46, !noundef !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !1976, !noundef !46
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !1976, !noundef !46
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !1976
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !1976, !nonnull !46, !noundef !46
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !1976
  %i.q = load i64, ptr %i.e, align 8, !noalias !1976, !noundef !46
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !1976
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.e ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !1976, !nonnull !46, !noundef !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !1976, !noundef !46
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.i.i
end_hunk_5
begin_hunk_6_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter7BuilderECskLngH8kgpZI_15ruff_python_ast:bb.a

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter13MemmemBuilderECskLngH8kgpZI_15ruff_python_ast.exit9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4121)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !4122, !nonnull !46, !noundef !46 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val1.i.i.i.i = load i64, ptr %i.j, align 16, !alias.scope !4122, !noundef !46 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4123)
  %i.k = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.k, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_hEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !4123, !noalias !4122 ; 2 uses
  %i.n = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !4123, !noalias !4122, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !4124
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.p = icmp eq i64 %i.m, %.val1.i.i.i.i
  br i1 %i.p, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_hEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_hEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i, %bb.d
  %i.q = icmp eq i64 %i.g, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_hEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_hEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i
  %i.r = mul nuw i64 %i.g, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !4122
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_hEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_hEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i: ; preds = %bb.f, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_hEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !4125 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick6packed3api7BuilderEECskLngH8kgpZI_15ruff_python_ast.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_hEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val1.i.i.i = load ptr, ptr %i.u, align 16, !alias.scope !4125, !nonnull !46, !noundef !46
  %i.v = shl nuw i64 %.val.i.i.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 4) #62, !noalias !4125
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick6packed3api7BuilderEECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick6packed3api7BuilderEECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter13MemmemBuilderECskLngH8kgpZI_15ruff_python_ast.exit9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_hEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBG_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 50127021939428130) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_.exit
  %.sroa.0.024 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %.sroa.0.024 ; 9 uses
  %i.c = add nuw nsw i64 %.sroa.0.024, 1          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.d)
          to label %bb.d unwind label %bb.b, !inline_history !83

bb.b:                                             ; preds = %.lr.ph25
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val3.i = load i64, ptr %i.f, align 8, !range !57, !alias.scope !4144, !noundef !46 ; 2 uses
  %i.g = icmp sgt i64 %.val3.i, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit11

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 32
  %.val4.i = load ptr, ptr %i.h, align 8, !alias.scope !4144, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !4145
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit11

bb.d:                                             ; preds = %.lr.ph25
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val.i = load i64, ptr %i.i, align 8, !range !57, !alias.scope !4144, !noundef !46 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.b, i64 32
  %.val2.i = load ptr, ptr %i.k, align 8, !alias.scope !4144, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !4146
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit11: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEEB1x_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.b) #59
          to label %.body unwind label %bb.o, !inline_history !83

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit: ; preds = %bb.e, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4147)
  %i.l = load i64, ptr %i.b, align 8, !range !58, !alias.scope !4147, !noundef !46 ; 5 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4149, !nonnull !46, !noundef !46 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !4149, !noundef !46 ; 4 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i
  %.sroa.0.0.i23 = phi i64 [ %i.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i ], [ 0, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [184 x i8], ptr %i.o, i64 %.sroa.0.0.i23 ; 4 uses
  %i.t = add nuw i64 %.sroa.0.0.i23, 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4150), !noalias !4151
  %i.u = load i64, ptr %i.s, align 8, !range !57, !alias.scope !4152, !noalias !4151, !noundef !46
  %i.v = icmp eq i64 %i.u, -2
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.i12 = load i64, ptr %i.w, align 8, !range !58, !alias.scope !4152, !noalias !4151, !noundef !46 ; 2 uses
  %i.x = icmp sgt i64 %.val.i.i12, 0
  br i1 %i.x, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.s, i64 16
  %.val1.i.i13 = load ptr, ptr %i.y, align 8, !alias.scope !4152, !noalias !4151, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i13, i64 noundef %.val.i.i12, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !4153, !inline_history !12
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i

bb.i:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i unwind label %bb.k, !noalias !4151, !inline_history !13

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i: ; preds = %bb.i, %bb.g, %bb.h
  %i.z = icmp eq i64 %i.t, %i.q
  br i1 %i.z, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph102
  %i.aa = add i64 %.sroa.0.1.i100, 1              ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.q
  br i1 %i.ab, label %.body14, label %.lr.ph102

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = icmp eq i64 %i.t, %i.q
  br i1 %i.ad, label %.body14, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.k, %bb.j
  %.sroa.0.1.i100 = phi i64 [ %i.aa, %bb.j ], [ %i.t, %bb.k ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [184 x i8], ptr %i.o, i64 %.sroa.0.1.i100
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_(ptr noalias noundef align 8 dereferenceable(184) %i.ae) #59
          to label %bb.j unwind label %bb.l, !noalias !4151, !inline_history !12

bb.l:                                             ; preds = %.lr.ph102
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !4151, !inline_history !12
  unreachable

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_.exit.i, %bb.f
  %i.ag = icmp eq i64 %i.l, 0
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_.exit, label %bb.n

.body14:                                          ; preds = %bb.j, %bb.k
  %i.ah = icmp eq i64 %i.l, 0
  br i1 %i.ah, label %.body, label %bb.m

bb.m:                                             ; preds = %.body14
  %i.ai = mul nuw i64 %i.l, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !4151, !inline_history !84
  br label %.body

bb.n:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i
  %i.aj = mul nuw i64 %i.l, 184
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !4151, !inline_history !84
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_.exit

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit11
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !83
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit, %bb.n, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i.i
  %i.al = icmp eq i64 %i.c, %1
  br i1 %i.al, label %._crit_edge, label %.lr.ph25

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_.exit, %bb.a
  ret void

bb.p:                                             ; preds = %.lr.ph104
  %i.am = add i64 %.sroa.0.1103, 1                ; 2 uses
  %i.an = icmp eq i64 %i.am, %1
  br i1 %i.an, label %._crit_edge105, label %.lr.ph104

.body:                                            ; preds = %bb.m, %.body14, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit11
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19ComparableDebugTextEEB11_.exit11 ], [ %i.ac, %.body14 ], [ %i.ac, %bb.m ]
  %i.ao = icmp eq i64 %i.c, %1
  br i1 %i.ao, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %.body, %bb.p
  %.sroa.0.1103 = phi i64 [ %i.am, %bb.p ], [ %i.c, %.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %.sroa.0.1103
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_(ptr noalias noundef align 8 dereferenceable(184) %i.ap) #59
          to label %bb.p unwind label %bb.q

._crit_edge105:                                   ; preds = %bb.p, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.q:                                             ; preds = %.lr.ph104
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBG_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 32025597350190194) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBF_.exit._crit_edge, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBF_.exit: ; preds = %bb.f
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBF_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBF_.exit
  %.sroa.0.042 = phi i64 [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.0.042 ; 5 uses
  %i.d = add nuw nsw i64 %.sroa.0.042, 1          ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.e)
          to label %bb.c unwind label %bb.b, !inline_history !4154

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.g) #59
          to label %bb.d unwind label %bb.g, !inline_history !4154

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.h)
          to label %bb.f unwind label %bb.e, !inline_history !4154

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.f, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.c) #59
          to label %.body unwind label %bb.g, !inline_history !4154

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(288) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBF_.exit unwind label %bb.i, !inline_history !4154

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !4154
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBF_.exit._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBF_.exit, %bb.a
  ret void

bb.h:                                             ; preds = %.lr.ph44
  %i.k = add i64 %.sroa.0.143, 1                  ; 2 uses
  %i.l = icmp eq i64 %i.k, %1
  br i1 %i.l, label %._crit_edge, label %.lr.ph44

bb.i:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.i ], [ %.pn.i, %bb.d ]
  %i.n = icmp eq i64 %i.d, %1
  br i1 %i.n, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %.body, %bb.h
  %.sroa.0.143 = phi i64 [ %i.k, %bb.h ], [ %i.d, %.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %.sroa.0.143
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionEBF_(ptr noalias noundef align 8 dereferenceable(288) %i.o) #59
          to label %bb.h unwind label %bb.j

._crit_edge:                                      ; preds = %bb.h, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %.lr.ph44
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEBG_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 50127021939428130) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEBF_.exit
  %.sroa.0.019 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %.sroa.0.019 ; 8 uses
  %i.c = add nuw nsw i64 %.sroa.0.019, 1          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %bb.c unwind label %bb.b, !inline_history !4160

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f) #59
          to label %bb.d unwind label %bb.m, !inline_history !4160

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %bb.f unwind label %bb.e, !inline_history !4160

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.b) #59
          to label %.body unwind label %bb.m, !inline_history !4160

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4161)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !4162, !nonnull !46, !noundef !46 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !4162, !noundef !46 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i, label %.lr.ph60

bb.g:                                             ; preds = %.lr.ph60
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.i58 = phi i64 [ %i.p, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %.sroa.0.0.i58
  %i.p = add i64 %.sroa.0.0.i58, 1                ; 4 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.o)
          to label %bb.g unwind label %bb.i, !noalias !4161, !inline_history !4159

bb.h:                                             ; preds = %.lr.ph63
  %i.q = add i64 %.sroa.0.1.i61, 1                ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body9, label %.lr.ph63

bb.i:                                             ; preds = %.lr.ph60
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body9, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i61 = phi i64 [ %i.q, %bb.h ], [ %i.p, %bb.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %.sroa.0.1.i61
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u) #59
          to label %bb.h unwind label %bb.j, !noalias !4161, !inline_history !4159

bb.j:                                             ; preds = %.lr.ph63
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !4161, !inline_history !4159
  unreachable

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i: ; preds = %bb.g, %bb.f
  %.val.i = load i64, ptr %i.b, align 8, !range !52, !alias.scope !4161, !noundef !46 ; 2 uses
  %i.w = icmp eq i64 %.val.i, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEBF_.exit, label %bb.l

.body9:                                           ; preds = %bb.h, %bb.i
  %.val2.i = load i64, ptr %i.b, align 8, !range !52, !alias.scope !4161, !noundef !46 ; 2 uses
  %i.x = icmp eq i64 %.val2.i, 0
  br i1 %i.x, label %.body, label %bb.k

bb.k:                                             ; preds = %.body9
  %i.y = mul nuw i64 %.val2.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !4161, !inline_history !4163
  br label %.body

bb.l:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i
  %i.z = mul nuw i64 %.val.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !4161, !inline_history !4163
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEBF_.exit

bb.m:                                             ; preds = %bb.d, %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !4160
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEBF_.exit: ; preds = %bb.l, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_.exit.i
  %i.ab = icmp eq i64 %i.c, %1
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEBF_.exit, %bb.a
  ret void

bb.n:                                             ; preds = %.lr.ph65
  %i.ac = add i64 %.sroa.0.164, 1                 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %1
  br i1 %i.ad, label %._crit_edge66, label %.lr.ph65

.body:                                            ; preds = %bb.k, %.body9, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.s, %.body9 ], [ %i.s, %bb.k ]
  %i.ae = icmp eq i64 %i.c, %1
  br i1 %i.ae, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %.body, %bb.n
  %.sroa.0.164 = phi i64 [ %i.ac, %bb.n ], [ %i.c, %.body ] ; 2 uses
  %i.af = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %.sroa.0.164
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEBF_(ptr noalias noundef align 8 dereferenceable(184) %i.af) #59
          to label %bb.n unwind label %bb.o

._crit_edge66:                                    ; preds = %bb.n, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %.lr.ph65
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEBG_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEBF_.exit._crit_edge, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_.exit
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEBF_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEBF_.exit
  %.sroa.0.019 = phi i64 [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.019 ; 4 uses
  %i.d = add nuw nsw i64 %.sroa.0.019, 1          ; 4 uses
  %i.e = load i32, ptr %i.c, align 8, !range !49, !alias.scope !4166, !noundef !46
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_.exit unwind label %bb.c, !inline_history !4167

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #59
          to label %.body unwind label %bb.d, !inline_history !4168

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_.exit: ; preds = %.lr.ph, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEBF_.exit unwind label %bb.f, !inline_history !4168

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !4168
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEBF_.exit._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEBF_.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph21
  %i.k = add i64 %.sroa.0.120, 1                  ; 2 uses
  %i.l = icmp eq i64 %i.k, %1
  br i1 %i.l, label %._crit_edge, label %.lr.ph21

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.g, %bb.c ]
  %i.n = icmp eq i64 %i.d, %1
  br i1 %i.n, label %._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %.body, %bb.e
  %.sroa.0.120 = phi i64 [ %i.k, %bb.e ], [ %i.d, %.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.120
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14ElifElseClauseEBF_(ptr noalias noundef align 8 dereferenceable(96) %i.o) #59
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %.lr.ph21
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEBG_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 88686269585142076) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEBF_.exit
  %.sroa.0.018 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.0.018 ; 5 uses
  %i.c = add nuw nsw i64 %.sroa.0.018, 1          ; 4 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBF_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %bb.c unwind label %bb.b, !inline_history !4181

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #59
          to label %.body9 unwind label %bb.h, !inline_history !4181

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4182)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4182, !align !54, !noundef !46 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g) #63
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit.i unwind label %bb.e, !noalias !4183, !inline_history !4184

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 72, i64 noundef 8) #62, !noalias !4183, !inline_history !4185
  br label %.body9

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 72, i64 noundef 8) #62, !noalias !4183, !inline_history !4185
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_.exit

.body9:                                           ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.i, %bb.e ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !4186, !nonnull !46, !noundef !46
  %i.l = icmp eq ptr %i.k, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.l, label %.body, label %bb.f, !prof !53

bb.f:                                             ; preds = %.body9
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.body unwind label %bb.h, !inline_history !4187

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !4188, !nonnull !46, !noundef !46
  %i.o = icmp eq ptr %i.n, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEBF_.exit, label %bb.g, !prof !53

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_.exit
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEBF_.exit unwind label %bb.j, !inline_history !4187

bb.h:                                             ; preds = %bb.f, %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !4181
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_.exit, %bb.g
  %i.q = icmp eq i64 %i.c, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEBF_.exit, %bb.a
  ret void

bb.i:                                             ; preds = %.lr.ph52
  %i.r = add i64 %.sroa.0.151, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge53, label %.lr.ph52

bb.j:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %.body9, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.j ], [ %.pn.i, %.body9 ], [ %.pn.i, %bb.f ]
  %i.u = icmp eq i64 %i.c, %1
  br i1 %i.u, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %.body, %bb.i
  %.sroa.0.151 = phi i64 [ %i.r, %bb.i ], [ %i.c, %.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.0.151
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9MatchCaseEBF_(ptr noalias noundef align 8 dereferenceable(104) %i.v) #59
          to label %bb.i unwind label %bb.k

._crit_edge53:                                    ; preds = %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.k:                                             ; preds = %.lr.ph52
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBG_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 144115188075855872) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit._crit_edge, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit: ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit
  %.sroa.0.08 = phi i64 [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.0.08
  %i.d = add nuw nsw i64 %.sroa.0.08, 1           ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26ExceptHandlerExceptHandlerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit unwind label %bb.b, !inline_history !4189

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit, %bb.a
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7: ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.19, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7._crit_edge, label %.lr.ph10

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7._crit_edge, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7
  %.sroa.0.19 = phi i64 [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7 ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.0.19
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26ExceptHandlerExceptHandlerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7 unwind label %bb.c, !inline_history !4189

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExceptHandlerEBF_.exit7, %bb.b
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBG_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 144115188075855872) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_.exit
  %.sroa.0.022 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.0.022 ; 12 uses
  %i.c = add nuw nsw i64 %.sroa.0.022, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4231)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.e = load i8, ptr %i.d, align 4, !range !55, !alias.scope !4231, !noundef !46
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4232)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4233)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4234, !nonnull !46, !noundef !46 ; 3 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBF_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit.i unwind label %bb.c, !noalias !4234, !inline_history !4196

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 72, i64 noundef 8) #62, !noalias !4234, !inline_history !4196
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.j = load i8, ptr %i.i, align 1, !range !67, !alias.scope !4235, !noundef !46
  %cond = icmp eq i8 %i.j, -40
  br i1 %cond, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i, !prof !89

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 72, i64 noundef 8) #62, !noalias !4234, !inline_history !4196
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.l = load i8, ptr %i.k, align 1, !range !67, !alias.scope !4236, !noundef !46
  %cond12 = icmp eq i8 %i.l, -40
  br i1 %cond12, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit3.i, !prof !89

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8, !alias.scope !4237, !nonnull !46, !noundef !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !4237, !noundef !46
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i unwind label %bb.j, !noalias !4232, !inline_history !4209

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit.i
  %i.p = load ptr, ptr %i.b, align 8, !alias.scope !4238, !nonnull !46, !noundef !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4238, !noundef !46
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %i.p, i64 noundef %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit3.i unwind label %bb.g, !noalias !4232, !inline_history !4209

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit3.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_.exit.i, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !4239, !align !54, !noundef !46 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_.exit, label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i: ; preds = %bb.c, %bb.d, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.h, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !4240, !align !54, !noundef !46
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.body, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEEB1d_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.body unwind label %bb.j, !inline_history !4222

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit3.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsEBF_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.noexc7 unwind label %bb.i, !noalias !4241, !inline_history !4225

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 40, i64 noundef 8) #62, !noalias !4241, !inline_history !4226
  br label %.body

.noexc7:                                          ; preds = %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 40, i64 noundef 8) #62, !noalias !4241, !inline_history !4226
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_.exit

bb.j:                                             ; preds = %bb.f, %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !4209
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.ab = getelementptr i8, ptr %i.b, i64 8
  %.val1.i = load i64, ptr %i.ab, align 8, !alias.scope !4242, !noundef !46 ; 2 uses
  %i.ac = icmp eq i64 %.val1.i, 0
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !4231, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #62, !noalias !4243
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit3.i, %.noexc7
  %i.ad = icmp eq i64 %i.c, %1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_.exit, %bb.a
  ret void

bb.l:                                             ; preds = %.lr.ph59
  %i.ae = add i64 %.sroa.0.158, 1                 ; 2 uses
  %i.af = icmp eq i64 %i.ae, %1
  br i1 %i.af, label %._crit_edge60, label %.lr.ph59

.body:                                            ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEEB11_.exit.i ], [ %.pn.i, %bb.f ], [ %i.z, %bb.i ]
  %i.ag = icmp eq i64 %i.c, %1
  br i1 %i.ag, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %.body, %bb.l
  %.sroa.0.158 = phi i64 [ %i.ae, %bb.l ], [ %i.c, %.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.0.158
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEBF_(ptr noalias noundef align 8 dereferenceable(64) %i.ah) #59
          to label %bb.l unwind label %bb.m

._crit_edge60:                                    ; preds = %bb.l, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %.lr.ph59
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECskLngH8kgpZI_15ruff_python_ast(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4246)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !4246 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskLngH8kgpZI_15ruff_python_ast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !4246, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !4246
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskLngH8kgpZI_15ruff_python_ast.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef align 8 dereferenceable(32) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehReECskLngH8kgpZI_15ruff_python_ast(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val78 = load ptr, ptr %1, align 8, !nonnull !46, !noundef !46
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val79 = load i64, ptr %i.e, align 8, !noundef !46 ; 6 uses
  %gepdiff = add nsw i64 %.idx, -16
  %i.f = lshr exact i64 %gepdiff, 4               ; 2 uses
  %i.g = add i64 %.val79, %i.f                    ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECskLngH8kgpZI_15ruff_python_ast.exit, label %.preheader.preheader, !prof !47

.preheader.preheader:                             ; preds = %bb.b
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %.preheader._crit_edge, label %.lr.ph3

.preheader:                                       ; preds = %.lr.ph3
  %i.j = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %.preheader._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.01.0.i2 = phi i64 [ %i.n, %.preheader ], [ %i.g, %.preheader.preheader ] ; 2 uses
  %i.l = phi ptr [ %i.j, %.preheader ], [ %i.d, %.preheader.preheader ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val9.i = load i64, ptr %i.m, align 8, !noalias !4261, !noundef !46
  %i.n = add i64 %.val9.i, %.sroa.01.0.i2         ; 3 uses
  %i.o = icmp ult i64 %i.n, %.sroa.01.0.i2
  br i1 %i.o, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECskLngH8kgpZI_15ruff_python_ast.exit, label %.preheader

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %.sroa.01.0.i.lcssa = phi i64 [ %i.g, %.preheader.preheader ], [ %i.n, %.preheader ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i.i = icmp slt i64 %.sroa.01.0.i.lcssa, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !61

bb.c:                                             ; preds = %.preheader._crit_edge
  %i.p = icmp eq i64 %.sroa.01.0.i.lcssa, 0
  br i1 %i.p, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.c
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !4262
  %i.q = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %.sroa.01.0.i.lcssa, i64 noundef range(i64 1, 17) 1) #62, !noalias !4262 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit

bb.d:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %.preheader._crit_edge
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %.preheader._crit_edge ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.01.0.i.lcssa) #61
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.c
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.q, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ] ; 3 uses
  store i64 %.sroa.01.0.i.lcssa, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4264)
  %i.u = icmp ugt i64 %.val79, %.sroa.01.0.i.lcssa
  br i1 %i.u, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i, !prof !47

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.val79, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i
  %i.v = load i64, ptr %i.t, align 8, !alias.scope !4265, !noundef !46 ; 2 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %.pre = load ptr, ptr %i.s, align 8, !alias.scope !4265
  br label %bb.e

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskLngH8kgpZI_15ruff_python_ast.exit
  %.not.i.i80 = icmp samesign eq i64 %.val79, 0
  br i1 %.not.i.i80, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i, %.noexc
  %i.x = phi ptr [ %.pre, %.noexc ], [ %.sroa.10.0.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i ] ; 2 uses
  %i.y = phi i64 [ %i.v, %.noexc ], [ 0, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %.val78, i64 %.val79, i1 false), !noalias !4265
  br label %bb.h

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %.lr.ph3, %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #61
  unreachable

bb.f:                                             ; preds = %.invoke, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ab = icmp eq i64 %.val, 0
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskLngH8kgpZI_15ruff_python_ast.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val76 = load ptr, ptr %i.s, align 8, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val76, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #62
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskLngH8kgpZI_15ruff_python_ast.exit

bb.h:                                             ; preds = %bb.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.ac = phi ptr [ %i.x, %bb.e ], [ %.sroa.10.0.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i ]
  %i.ad = phi i64 [ %i.y, %bb.e ], [ 0, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i ]
  %i.ae = add i64 %i.ad, %.val79                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = sub nsw i64 %.sroa.01.0.i.lcssa, %i.ae  ; 2 uses
  %i.ah = icmp eq i64 %2, 1
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskLngH8kgpZI_15ruff_python_ast.exit92, %bb.h
  %.sroa.26.2.lcssa = phi i64 [ %i.ag, %bb.h ], [ %i.ap, %_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskLngH8kgpZI_15ruff_python_ast.exit92 ]
  %i.aj = sub i64 %.sroa.01.0.i.lcssa, %.sroa.26.2.lcssa
  store i64 %i.aj, ptr %i.t, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskLngH8kgpZI_15ruff_python_ast.exit92
  %.sroa.012.114 = phi ptr [ %i.ak, %_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskLngH8kgpZI_15ruff_python_ast.exit92 ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %.sroa.035.213 = phi ptr [ %i.ao, %_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskLngH8kgpZI_15ruff_python_ast.exit92 ], [ %i.ai, %.lr.ph.preheader ] ; 2 uses
  %.sroa.26.212 = phi i64 [ %i.ap, %_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskLngH8kgpZI_15ruff_python_ast.exit92 ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.114, i64 16 ; 2 uses
  %.sroa.012.1.val = load ptr, ptr %.sroa.012.114, align 8, !nonnull !46, !noundef !46
  %i.al = getelementptr i8, ptr %.sroa.012.114, i64 8
  %.sroa.012.1.val77 = load i64, ptr %i.al, align 8, !noundef !46 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.26.212, 0
  br i1 %.not.i, label %.invoke, label %bb.i, !prof !47

bb.i:                                             ; preds = %.lr.ph
  %i.am = add nsw i64 %.sroa.26.212, -1           ; 2 uses
  store i8 10, ptr %.sroa.035.213, align 1, !alias.scope !4266
  %.not.i84 = icmp ugt i64 %.sroa.012.1.val77, %i.am
  br i1 %.not.i84, label %.invoke, label %_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskLngH8kgpZI_15ruff_python_ast.exit92, !prof !47

.invoke:                                          ; preds = %bb.i, %.lr.ph
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @237, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #61
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskLngH8kgpZI_15ruff_python_ast.exit92: ; preds = %bb.i
end_hunk_6
begin_hunk_7_@_RNvNvXsK_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB7_12HashableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtB9_9generated4ExprE4from9as_number:bb.a
  store i64 %.sroa.372.0, ptr %.sroa.372.0..sroa_idx73, align 8
  %.sroa.575.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.575.0, ptr %.sroa.575.0..sroa_idx76, align 16
  %.sroa.778.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.778.0.copyload, ptr %.sroa.778.0..sroa_idx79, align 16
  %.sroa.881.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.881.0, ptr %.sroa.881.0..sroa_idx82, align 8
  %.sroa.10.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i128 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx84, align 16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  store i64 %i.bj, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.af:                                            ; preds = %bb.d
  %i.bq = load ptr, ptr %i.k, align 8, !noundef !46
  %.not124 = icmp eq ptr %i.bq, null
  br i1 %.not124, label %bb.aj, label %bb.ai

bb.ag:                                            ; preds = %bb.d
  %i.br = load double, ptr %i.k, align 8, !noundef !46 ; 4 uses
  %i.bs = tail call double @llvm.fabs.f64(double %i.br) ; 2 uses
  %i.bt = fcmp one double %i.bs, +inf
  %i.bu = fcmp olt double %i.bs, f0x43F0000000000000
  %or.cond130 = and i1 %i.bt, %i.bu
  br i1 %or.cond130, label %bb.al, label %bb.ak

bb.ah:                                            ; preds = %bb.d
  %i.bv = load double, ptr %i.k, align 8, !noundef !46 ; 4 uses
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv) ; 2 uses
  %i.bx = fcmp one double %i.bw, +inf
  %i.by = fcmp olt double %i.bw, f0x43F0000000000000
  %or.cond131 = and i1 %i.bx, %i.by
  br i1 %or.cond131, label %bb.ao, label %bb.an

bb.ai:                                            ; preds = %bb.af
  store i64 2, ptr %0, align 16
  br label %bb.z

bb.aj:                                            ; preds = %bb.af
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr133, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !46
  %i.cb = zext i64 %i.ca to i128
  store i64 0, ptr %0, align 16
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.cb, ptr %.sroa.559.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.6.0..sroa_idx60, align 16
  %.sroa.6.sroa.566.0..sroa.6.0..sroa_idx60.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i128 0, ptr %.sroa.6.sroa.566.0..sroa.6.0..sroa_idx60.sroa_idx, align 16
  br label %bb.z

bb.ak:                                            ; preds = %bb.al, %bb.ag
  %i.cc = bitcast double %i.br to i64
  br label %bb.am

bb.al:                                            ; preds = %bb.ag
  %i.cd = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.br) ; 2 uses
  %i.ce = sitofp i128 %i.cd to double
  %i.cf = fcmp oeq double %i.br, %i.ce
  br i1 %i.cf, label %bb.am, label %bb.ak

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sroa.68.0 = phi i128 [ undef, %bb.ak ], [ %i.cd, %bb.al ]
  %.sroa.57.0 = phi i64 [ %i.cc, %bb.ak ], [ undef, %bb.al ]
  %.sroa.06.0 = phi i64 [ 1, %bb.ak ], [ 0, %bb.al ]
  store i64 %.sroa.06.0, ptr %0, align 16
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.57.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.68.0, ptr %.sroa.511.0..sroa_idx, align 16
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.612.0..sroa_idx, align 16
  %.sroa.612.sroa.5.0..sroa.612.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i128 0, ptr %.sroa.612.sroa.5.0..sroa.612.0..sroa_idx.sroa_idx, align 16
  br label %bb.z

bb.an:                                            ; preds = %bb.ao, %bb.ah
  %i.cg = bitcast double %i.bv to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ah
  %i.ch = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.bv) ; 2 uses
  %i.ci = sitofp i128 %i.ch to double
  %i.cj = fcmp oeq double %i.bv, %i.ci
  br i1 %i.cj, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sroa.615.0 = phi i128 [ undef, %bb.an ], [ %i.ch, %bb.ao ]
  %.sroa.514.0 = phi i64 [ %i.cg, %bb.an ], [ undef, %bb.ao ]
  %.sroa.013.0 = phi i64 [ 1, %bb.an ], [ 0, %bb.ao ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr133, i64 24
  %i.cl = load double, ptr %i.ck, align 8, !noundef !46 ; 4 uses
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl) ; 2 uses
  %i.cn = fcmp one double %i.cm, +inf
  %i.co = fcmp olt double %i.cm, f0x43F0000000000000
  %or.cond132 = and i1 %i.cn, %i.co
  br i1 %or.cond132, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.cp = bitcast double %i.cl to i64
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.cq = tail call i128 @llvm.fptosi.sat.i128.f64(double %i.cl) ; 2 uses
  %i.cr = sitofp i128 %i.cq to double
  %i.cs = fcmp oeq double %i.cl, %i.cr
  br i1 %i.cs, label %bb.as, label %bb.aq

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.622.0 = phi i128 [ undef, %bb.aq ], [ %i.cq, %bb.ar ]
  %.sroa.521.0 = phi i64 [ %i.cp, %bb.aq ], [ undef, %bb.ar ]
  %.sroa.020.0 = phi i64 [ 1, %bb.aq ], [ 0, %bb.ar ]
  store i64 %.sroa.013.0, ptr %0, align 16
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.514.0, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.615.0, ptr %.sroa.518.0..sroa_idx, align 16
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.020.0, ptr %.sroa.619.0..sroa_idx, align 16
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.521.0, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx, align 8
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i128 %.sroa.622.0, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx, align 16
  br label %bb.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, ptr } @_RNvXNtCskLngH8kgpZI_15ruff_python_ast10expressionNtNtB4_9generated7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtBN_4ExprEE4from(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #15 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !46, !noundef !46 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !62, !noundef !46 ; 2 uses
  %i.c = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor10visit_exprB8_, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.idx.cast = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %switch.ext
  %i.e = insertvalue { i64, ptr } poison, i64 %switch.idx.cast, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.d, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCskLngH8kgpZI_15ruff_python_ast3intNtB2_3IntNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !9713, !noalias !9714, !noundef !46 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !9713, !noalias !9714
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  %cond.i = icmp eq i8 %i.b, 43                   ; 2 uses
  %i.c = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %2, %i.c            ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.d, label %.preheader.i, label %.preheader60.split.us.i.preheader

.preheader60.split.us.i:                          ; preds = %bb.e
  %.not52.us.i = icmp eq i64 %i.f, 0
  br i1 %.not52.us.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.preheader60.split.us.i.preheader

.preheader60.split.us.i.preheader:                ; preds = %bb.c, %.preheader60.split.us.i
  %.sroa.0.1.us.i63 = phi ptr [ %i.e, %.preheader60.split.us.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.us.i62 = phi i64 [ %i.f, %.preheader60.split.us.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.042.0.us.i61 = phi i64 [ %i.o, %.preheader60.split.us.i ], [ 0, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i63, i64 1
  %i.f = add nsw i64 %.sroa.15.1.us.i62, -1       ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.us.i61, i64 10) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.g, 1
  %i.j = load i8, ptr %.sroa.0.1.us.i63, align 1, !alias.scope !9713, !noalias !9714, !noundef !46 ; 2 uses
  br i1 %i.i, label %.split.us.i, label %bb.d, !prof !47

bb.d:                                             ; preds = %.preheader60.split.us.i.preheader
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -48                    ; 2 uses
  %i.m = icmp ult i32 %i.l, 10
  br i1 %i.m, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.n = zext nneg i32 %i.l to i64
  %i.o = add i64 %i.h, %i.n                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %.loopexit25, label %.preheader60.split.us.i, !prof !47

.preheader.i:                                     ; preds = %bb.c
  %.not5373.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5373.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.preheader.i, %bb.f
  %.sroa.0.276.us.i = phi ptr [ %i.w, %bb.f ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.275.us.i = phi i64 [ %i.v, %bb.f ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.274.us.i = phi i64 [ %i.y, %bb.f ], [ 0, %.preheader.i ]
  %i.q = load i8, ptr %.sroa.0.276.us.i, align 1, !alias.scope !9713, !noalias !9714, !noundef !46
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48                    ; 2 uses
  %i.t = icmp ult i32 %i.s, 10
  br i1 %i.t, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.u = mul i64 %.sroa.042.274.us.i, 10
  %i.v = add nsw i64 %.sroa.15.275.us.i, -1       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.276.us.i, i64 1
  %i.x = zext nneg i32 %i.s to i64
  %i.y = add i64 %i.u, %i.x                       ; 2 uses
  %.not53.us.i = icmp eq i64 %i.v, 0
  br i1 %.not53.us.i, label %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit, label %.lr.ph.split.us.i

.split.us.i:                                      ; preds = %.preheader60.split.us.i.preheader
  %i.z = add i8 %i.j, -48
  %i.aa = icmp ult i8 %i.z, 10
  br i1 %i.aa, label %.loopexit25, label %.loopexit

_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit: ; preds = %.preheader60.split.us.i, %bb.f, %.preheader.i
  %.sroa.1113.0 = phi i64 [ %i.y, %bb.f ], [ 0, %.preheader.i ], [ %i.o, %.preheader60.split.us.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ab, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.1113.0, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.i, %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit
  %.sink = phi i8 [ 1, %.loopexit ], [ 0, %bb.i ], [ 0, %_RNvMsD_NtCs4NRVxsYgnAr_4core3numy16from_ascii_radix.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void

.loopexit:                                        ; preds = %bb.d, %.lr.ph.split.us.i, %.split.us.i, %bb.b, %bb.b, %bb.a
  %.sroa.4.0.ph.ph = phi i8 [ 1, %bb.b ], [ 1, %.lr.ph.split.us.i ], [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %.split.us.i ], [ 1, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.ph.ph, ptr %i.ac, align 1
  br label %bb.g

.loopexit25:                                      ; preds = %bb.e, %.split.us.i
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i: ; preds = %.loopexit25
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !9715
  %i.ad = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !9715 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %2) #61
  unreachable

bb.i:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i, %.loopexit25
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 1 to ptr), %.loopexit25 ], [ %i.ad, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i, ptr %i.af, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.46.0..sroa_idx, align 8
  br label %bb.g
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define void @_RNvXNtCskLngH8kgpZI_15ruff_python_ast8relocateNtB2_9RelocatorNtNtNtB4_7visitor11transformer11Transformer10visit_expr(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1) unnamed_addr #32 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 34 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 27 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr37 = phi ptr [ %1, %bb.a ], [ %.tr37.be, %tailrecurse.backedge ] ; 116 uses
  %i.d = load i32, ptr %.tr37, align 8, !range !62, !noundef !46
  switch i32 %i.d, label %default.unreachable [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.q
    i32 11, label %bb.r
    i32 12, label %bb.s
    i32 13, label %bb.t
    i32 14, label %bb.u
    i32 15, label %bb.v
    i32 16, label %bb.w
    i32 17, label %bb.x
    i32 18, label %bb.y
    i32 19, label %_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtB6_8relocate9RelocatorEB6_.exit.loopexit136
    i32 20, label %_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtB6_8relocate9RelocatorEB6_.exit.loopexit137
    i32 21, label %bb.b
    i32 22, label %bb.c
    i32 23, label %bb.d
    i32 24, label %bb.e
    i32 25, label %bb.z
    i32 26, label %bb.aa
    i32 27, label %bb.ab
    i32 28, label %bb.ac
    i32 29, label %bb.ad
    i32 30, label %bb.ae
    i32 31, label %bb.af
    i32 32, label %bb.f
  ]

default.unreachable:                              ; preds = %tailrecurse
  unreachable

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr37, i64 32
  store i32 %i.a, ptr %i.e, align 8
  br label %_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtB6_8relocate9RelocatorEB6_.exit.sink.split

bb.c:                                             ; preds = %tailrecurse
  %i.f = getelementptr inbounds nuw i8, ptr %.tr37, i64 8
  store i32 %i.a, ptr %i.f, align 4
  br label %_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtB6_8relocate9RelocatorEB6_.exit.sink.split

bb.d:                                             ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %.tr37, i64 4
  store i32 %i.a, ptr %i.g, align 4
  br label %_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtB6_8relocate9RelocatorEB6_.exit.sink.split

bb.e:                                             ; preds = %tailrecurse
  %i.h = getelementptr inbounds nuw i8, ptr %.tr37, i64 4
  store i32 %i.a, ptr %i.h, align 4
  br label %_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtB6_8relocate9RelocatorEB6_.exit.sink.split

bb.f:                                             ; preds = %tailrecurse
  %i.i = getelementptr inbounds nuw i8, ptr %.tr37, i64 24
  store i32 %i.a, ptr %i.i, align 8
  br label %_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtB6_8relocate9RelocatorEB6_.exit.sink.split

bb.g:                                             ; preds = %tailrecurse
  %i.j = getelementptr inbounds nuw i8, ptr %.tr37, i64 32
  store i32 %i.a, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.tr37, i64 36
  store i32 %i.c, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.tr37, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr37, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !9793, !noalias !9794, !noundef !46 ; 2 uses
  %.idx129 = mul nuw nsw i64 %i.o, 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx129
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtB6_8relocate9RelocatorEB6_.exit, label %.lr.ph110

bb.h:                                             ; preds = %tailrecurse
  %i.r = getelementptr inbounds nuw i8, ptr %.tr37, i64 24
  store i32 %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.tr37, i64 28
  store i32 %i.c, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.tr37, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.tr37, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46
  tail call void @_RNvXNtCskLngH8kgpZI_15ruff_python_ast8relocateNtB2_9RelocatorNtNtNtB4_7visitor11transformer11Transformer10visit_expr(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v), !inline_history !9719
  %i.w = load ptr, ptr %i.t, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.h, %bb.i, %bb.j, %bb.l, %bb.s, %bb.u, %bb.z, %bb.aa, %bb.ab, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast8relocate9RelocatorNtNtNtB6_7visitor11transformer11Transformer16visit_parametersB6_.exit, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast8relocate9RelocatorNtNtNtB6_7visitor11transformer11Transformer19visit_comprehensionB6_.exit8._crit_edge, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast8relocate9RelocatorNtNtNtB6_7visitor11transformer11Transformer19visit_comprehensionB6_.exit6._crit_edge, %bb.ax, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast8relocate9RelocatorNtNtNtB6_7visitor11transformer11Transformer19visit_comprehensionB6_.exit._crit_edge, %bb.t, %bb.bc
  %.tr37.be = phi ptr [ %i.w, %bb.h ], [ %i.ac, %bb.i ], [ %i.ag, %bb.j ], [ %i.at, %bb.l ], [ %i.ct, %bb.s ], [ %i.db, %bb.u ], [ %i.fk, %bb.z ], [ %i.fq, %bb.aa ], [ %i.fu, %bb.ab ], [ %i.iv, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast8relocate9RelocatorNtNtNtB6_7visitor11transformer11Transformer16visit_parametersB6_.exit ], [ %i.jp, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast8relocate9RelocatorNtNtNtB6_7visitor11transformer11Transformer19visit_comprehensionB6_.exit8._crit_edge ], [ %i.kd, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast8relocate9RelocatorNtNtNtB6_7visitor11transformer11Transformer19visit_comprehensionB6_.exit6._crit_edge ], [ %i.kt, %bb.ax ], [ %i.lh, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast8relocate9RelocatorNtNtNtB6_7visitor11transformer11Transformer19visit_comprehensionB6_.exit._crit_edge ], [ %i.cx, %bb.t ], [ %i.mm, %bb.bc ]
  br label %tailrecurse

bb.i:                                             ; preds = %tailrecurse
  %i.x = getelementptr inbounds nuw i8, ptr %.tr37, i64 24
  store i32 %i.a, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.tr37, i64 28
  store i32 %i.c, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.tr37, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46
  tail call void @_RNvXNtCskLngH8kgpZI_15ruff_python_ast8relocateNtB2_9RelocatorNtNtNtB4_7visitor11transformer11Transformer10visit_expr(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa), !inline_history !9719
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr37, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46
  br label %tailrecurse.backedge

bb.j:                                             ; preds = %tailrecurse
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr37, i64 16
  store i32 %i.a, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr37, i64 20
  store i32 %i.c, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.tr37, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46
  br label %tailrecurse.backedge

bb.k:                                             ; preds = %tailrecurse
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr37, i64 16
  store i32 %i.a, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr37, i64 20
  store i32 %i.c, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr37, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr37, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !9793, !noalias !9794, !align !54, !noundef !46 ; 6 uses
  %.not67.i = icmp eq ptr %i.al, null
  br i1 %.not67.i, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast8relocate9RelocatorNtNtNtB6_7visitor11transformer11Transformer16visit_parametersB6_.exit, label %bb.ag

bb.l:                                             ; preds = %tailrecurse
  %i.am = getelementptr inbounds nuw i8, ptr %.tr37, i64 32
  store i32 %i.a, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.tr37, i64 36
  store i32 %i.c, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr37, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46
  tail call void @_RNvXNtCskLngH8kgpZI_15ruff_python_ast8relocateNtB2_9RelocatorNtNtNtB4_7visitor11transformer11Transformer10visit_expr(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ap), !inline_history !9719
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr37, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46
  tail call void @_RNvXNtCskLngH8kgpZI_15ruff_python_ast8relocateNtB2_9RelocatorNtNtNtB4_7visitor11transformer11Transformer10visit_expr(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ar), !inline_history !9719
  %i.as = getelementptr inbounds nuw i8, ptr %.tr37, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46
  br label %tailrecurse.backedge

bb.m:                                             ; preds = %tailrecurse
  %i.au = getelementptr inbounds nuw i8, ptr %.tr37, i64 32
  store i32 %i.a, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.tr37, i64 36
  store i32 %i.c, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.tr37, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr37, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !9793, !noalias !9794, !noundef !46 ; 2 uses
  %.idx128 = mul nuw nsw i64 %i.az, 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx128
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtB6_8relocate9RelocatorEB6_.exit, label %.lr.ph107

bb.n:                                             ; preds = %tailrecurse
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr37, i64 32
  store i32 %i.a, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr37, i64 36
  store i32 %i.c, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.tr37, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr37, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !9793, !noalias !9794, !noundef !46 ; 2 uses
  %.idx127 = mul nuw nsw i64 %i.bh, 72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx127
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor11transformer9walk_exprNtNtB6_8relocate9RelocatorEB6_.exit, label %.lr.ph104

bb.o:                                             ; preds = %tailrecurse
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr37, i64 40
  store i32 %i.a, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr37, i64 44
  store i32 %i.c, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr37, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !9793, !noalias !9794, !nonnull !46, !noundef !46 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr37, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !9793, !noalias !9794, !noundef !46 ; 2 uses
  %.idx125 = mul nuw nsw i64 %i.bp, 184
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx125
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast8relocate9RelocatorNtNtNtB6_7visitor11transformer11Transformer19visit_comprehensionB6_.exit8._crit_edge, label %.lr.ph81

bb.p:                                             ; preds = %tailrecurse
end_hunk_7
