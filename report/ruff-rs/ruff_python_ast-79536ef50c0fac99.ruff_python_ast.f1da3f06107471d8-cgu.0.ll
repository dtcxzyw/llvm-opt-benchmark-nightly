Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBN_:bb.a
bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i3 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.a, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.k) #59
          to label %bb.c unwind label %bb.e, !inline_history !36

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !36
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBG_.exit: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBG_.exit
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBG_.exit
  %i.p = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.n, i64 88) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.r, i64 16) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBA_.exit, !prof !5

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
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.b = load i64, ptr %.val, align 8, !noundef !3 ; 4 uses
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
          to label %bb.b unwind label %bb.d, !inline_history !37

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
          to label %bb.c unwind label %bb.e, !inline_history !37

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !inline_history !37
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBG_.exit: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBG_.exit
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBG_.exit
  %i.p = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.n, i64 72) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.g, !prof !5

bb.g:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.r, i64 16) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBA_.exit, !prof !5

bb.h:                                             ; preds = %_RNvXs_CsaSrGj5dYoxL_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCsaSrGj5dYoxL_8thin_vec17capacity_overflow() #61
  unreachable

_RINvCsaSrGj5dYoxL_8thin_vec6layoutNtNtCskLngH8kgpZI_15ruff_python_ast9generated7PatternEBA_.exit: ; preds = %bb.g
  %i.u = extractvalue { i64, i1 } %i.s, 0
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.u, i64 noundef 8) #62
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskLngH8kgpZI_15ruff_python_ast.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !38, !noundef !3 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !38, !noundef !3
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !38, !noundef !3
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !38, !noundef !3
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit12.i.i.i.i.i ], [ %i.f, %bb.b ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskLngH8kgpZI_15ruff_python_ast.exit12.i.i.i.i.i ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.e
  %i.ar = add i64 %i.aq, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i
    i32 13, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i
    i32 12, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i
    i32 11, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i
    i32 10, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i
    i32 9, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.as, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskLngH8kgpZI_15ruff_python_ast.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskLngH8kgpZI_15ruff_python_ast.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !52, !noundef !3
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !52, !noundef !3
  %i.bg = lshr i8 %i.bf, 1
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i, label %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskLngH8kgpZI_15ruff_python_ast.exit

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i: ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %bb.e, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.022 = phi ptr [ %0, %bb.a ], [ %i.an, %bb.d ], [ %i.an, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %i.an, %bb.e ] ; 6 uses
  %.sroa.14.020 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.d ], [ %i.ar, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.022, %i.a
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskLngH8kgpZI_15ruff_python_ast.exit, %bb.t
  %i.bk = phi ptr [ %i.cu, %bb.t ], [ %i.a, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskLngH8kgpZI_15ruff_python_ast.exit ] ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !53, !noundef !3 ; 3 uses
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.j, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i5
  %i.bo = icmp ne ptr %.sroa.4.022, %i.bl
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -2 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !53, !noundef !3 ; 3 uses
  %i.br = and i8 %i.bq, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = icmp slt i8 %i.bq, -64
  br i1 %i.bt, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i5
  %i.bu = zext nneg i8 %i.bm to i32
  br label %bb.m

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit17.i.i.i.i.i
  %i.bv = icmp ne ptr %.sroa.4.022, %i.bp
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 -3 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !53, !noundef !3 ; 3 uses
  %i.by = and i8 %i.bx, 15
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = icmp slt i8 %i.bx, -64
  br i1 %i.ca, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit17.i.i.i.i.i
  %i.cb = phi ptr [ %i.cp, %bb.l ], [ %i.bp, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.ct, %bb.l ], [ %i.bs, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit17.i.i.i.i.i ]
  %i.cc = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cd = and i8 %i.bm, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  br label %bb.m

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit19.i.i.i.i.i
  %i.cg = icmp ne ptr %.sroa.4.022, %i.bw
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !53, !noundef !3
  %i.cj = and i8 %i.ci, 7
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 6
  %i.cm = and i8 %i.bx, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit19.i.i.i.i.i
  %i.cp = phi ptr [ %i.ch, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit21.i.i.i.i.i ], [ %i.bw, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.co, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit21.i.i.i.i.i ], [ %i.bz, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskLngH8kgpZI_15ruff_python_ast.exit19.i.i.i.i.i ]
  %i.cq = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cr = and i8 %i.bq, 63
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cq, %i.cs
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi ptr [ %i.bl, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bu, %bb.j ], [ %i.cf, %bb.k ] ; 8 uses
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cv)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cw, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cx, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cz = zext i1 %i.cy to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i7

bb.q:                                             ; preds = %bb.o
  %i.da = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.db = zext i1 %i.da to i8
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i7

bb.r:                                             ; preds = %bb.o
  %i.dc = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !67, !noundef !3
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i7

bb.s:                                             ; preds = %bb.o
  %i.dg = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !67, !noundef !3
  %i.dk = lshr i8 %i.dj, 1
  br label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i7

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i7: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i8 = phi i8 [ %i.db, %bb.q ], [ %i.df, %bb.r ], [ %i.cz, %bb.p ], [ %i.dk, %bb.s ]
  %i.dl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i8 to i1
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i7, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dm = icmp eq ptr %.sroa.4.022, %i.cu
  br i1 %i.dm, label %.loopexit, label %.lr.ph.i.i5

bb.u:                                             ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i7, %bb.o, %bb.n
  %i.dn = ptrtoint ptr %i.bk to i64
  %i.do = ptrtoint ptr %.sroa.4.022 to i64
  %i.dp = sub i64 %.sroa.14.020, %i.do
  %i.dq = add i64 %i.dp, %i.dn
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i, %bb.t, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskLngH8kgpZI_15ruff_python_ast.exit, %bb.u
  %.sroa.0.046 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCskLngH8kgpZI_15ruff_python_ast.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCskLngH8kgpZI_15ruff_python_ast.exit.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs13_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteralNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @409, i64 noundef 25)
  %i.c = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load atomic i32, ptr %i.e acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RNvMs11_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteral6to_str.exit, label %bb.b, !prof !91

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEE10initializeNCINvB2_11get_or_initNCNvMs11_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB2a_25ConcatenatedStringLiteral6to_str0E0zEB2c_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %0)
  br label %_RNvMs11_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteral6to_str.exit

_RNvMs11_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_25ConcatenatedStringLiteral6to_str.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  store ptr %i.h, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @413, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @412)
  %i.m = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.m
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs18_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValueINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqShE2eq(ptr nofree noundef nonnull readonly align 8 captures(address) %0, ptr noalias noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !3
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.b, %bb.a
  %.sroa.0.06.i = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %.sroa.6.05.i = phi i64 [ %i.f, %bb.b ], [ 1, %bb.a ] ; 3 uses
  %xtraiter = and i64 %.sroa.6.05.i, 3            ; 3 uses
  %i.h = icmp ult i64 %.sroa.6.05.i, 4
  br i1 %i.h, label %.epil.preheader, label %.thread.i.new

.thread.i.new:                                    ; preds = %.thread.i
  %unroll_iter = and i64 %.sroa.6.05.i, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.thread.i.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.thread.i.new ], [ %i.u, %bb.c ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.thread.i.new ], [ %i.t, %bb.c ]
  %niter = phi i64 [ 0, %.thread.i.new ], [ %niter.next.3, %bb.c ]
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.06.i, i64 %.sroa.04.0.i.i
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i.i = load i64, ptr %i.j, align 8, !noundef !3
  %i.k = add i64 %.val.i.i, %.sroa.02.0.i.i
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.06.i, i64 %.sroa.04.0.i.i
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %.val.i.i.1 = load i64, ptr %i.m, align 8, !noundef !3
  %i.n = add i64 %.val.i.i.1, %i.k
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.06.i, i64 %.sroa.04.0.i.i
  %i.p = getelementptr i8, ptr %i.o, i64 72
  %.val.i.i.2 = load i64, ptr %i.p, align 8, !noundef !3
  %i.q = add i64 %.val.i.i.2, %i.n
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.06.i, i64 %.sroa.04.0.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 104
  %.val.i.i.3 = load i64, ptr %i.s, align 8, !noundef !3
  %i.t = add i64 %.val.i.i.3, %i.q                ; 3 uses
  %i.u = add nuw nsw i64 %.sroa.04.0.i.i, 4       ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.unr-lcssa, label %bb.c

_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.unr-lcssa, %.thread.i
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.thread.i ], [ %i.u, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.thread.i ], [ %i.t, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %.sroa.04.0.i.i.epil.init, %.epil.preheader ], [ %i.y, %bb.d ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %.sroa.02.0.i.i.epil.init, %.epil.preheader ], [ %i.x, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.06.i, i64 %.sroa.04.0.i.i.epil
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val.i.i.epil = load i64, ptr %i.w, align 8, !noundef !3
  %i.x = add i64 %.val.i.i.epil, %.sroa.02.0.i.i.epil ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit, label %bb.d, !llvm.loop !10225

_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit: ; preds = %bb.d, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.unr-lcssa
  %.lcssa42 = phi i64 [ %i.t, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.unr-lcssa ], [ %i.x, %bb.d ]
  %.not = icmp eq i64 %.lcssa42, %2
  br i1 %.not, label %bb.e, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB8_6copied6CopiedIB1g_hEENCNvMs15_B1H_NtB1H_17BytesLiteralValue5bytes0EB2z_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3S_3all5checkThhENCNvXs18_B1H_B3g_INtNtBc_3cmp9PartialEqShE2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1J_.exit

_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.thread: ; preds = %bb.b
  %.not6 = icmp eq i64 %2, 0
  br i1 %.not6, label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB8_6copied6CopiedIB1g_hEENCNvMs15_B1H_NtB1H_17BytesLiteralValue5bytes0EB2z_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3S_3all5checkThhENCNvXs18_B1H_B3g_INtNtBc_3cmp9PartialEqShE2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1J_.exit

bb.e:                                             ; preds = %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit
  br i1 %i.b, label %..thread_crit_edge, label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit

..thread_crit_edge:                               ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !10226
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre24 = load i64, ptr %.phi.trans.insert23, align 8, !noalias !10226
  br label %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit

_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit: ; preds = %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.thread, %..thread_crit_edge, %bb.e
  %.sroa.6.0.i = phi i64 [ 1, %bb.e ], [ %.pre24, %..thread_crit_edge ], [ 0, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.thread ]
  %.sroa.0.0.i = phi ptr [ %0, %bb.e ], [ %.pre, %..thread_crit_edge ], [ %i.d, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.thread ] ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i, i64 %.sroa.6.0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB6_6copied6CopiedIB1k_hEENCNvMs15_B1L_NtB1L_17BytesLiteralValue5bytes0EB2D_ENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit
  %i.ab = phi ptr [ %i.ak, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB6_6copied6CopiedIB1k_hEENCNvMs15_B1L_NtB1L_17BytesLiteralValue5bytes0EB2D_ENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i ], [ %1, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit ] ; 3 uses
  %i.ac = phi ptr [ %.lcssa11, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB6_6copied6CopiedIB1k_hEENCNvMs15_B1L_NtB1L_17BytesLiteralValue5bytes0EB2D_ENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i ], [ undef, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit ] ; 2 uses
  %i.ad = phi ptr [ %.lcssa, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB6_6copied6CopiedIB1k_hEENCNvMs15_B1L_NtB1L_17BytesLiteralValue5bytes0EB2D_ENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i ], [ %.sroa.0.0.i, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit ] ; 2 uses
  %.val.i.i.i.i.i.i13.i = phi ptr [ %i.aj, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB6_6copied6CopiedIB1k_hEENCNvMs15_B1L_NtB1L_17BytesLiteralValue5bytes0EB2D_ENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i ], [ null, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue5bytes.exit ] ; 3 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %.val.i.i.i.i.i.i13.i, null
  %.not4.i.i.i.i.i.i15 = icmp eq ptr %.val.i.i.i.i.i.i13.i, %i.ac
  %or.cond16 = select i1 %.not.i.i.i.i.i.i14, i1 true, i1 %.not4.i.i.i.i.i.i15
  br i1 %or.cond16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.ae = phi ptr [ %i.ag, %bb.g ], [ %i.ad, %bb.f ] ; 5 uses
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.ae, null
  %i.af = icmp eq ptr %i.ae, %i.z
  %or.cond7 = select i1 %.not.i4.i.i.i.i.i, i1 true, i1 %i.af
  br i1 %or.cond7, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB8_6copied6CopiedIB1g_hEENCNvMs15_B1H_NtB1H_17BytesLiteralValue5bytes0EB2z_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3S_3all5checkThhENCNvXs18_B1H_B3g_INtNtBc_3cmp9PartialEqShE2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1J_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !10229, !noundef !3 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp samesign eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.g
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !10229, !nonnull !3, !noundef !3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.lcssa11 = phi ptr [ %i.ac, %bb.f ], [ %i.ai, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.ad, %bb.f ], [ %i.ag, %._crit_edge.loopexit ]
  %.val.i.i.i.i.i.i12.i.lcssa = phi ptr [ %.val.i.i.i.i.i.i13.i, %bb.f ], [ %.val.i.i.i.i.i.i.i, %._crit_edge.loopexit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.aa          ; 3 uses
  br i1 %.not.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB8_6copied6CopiedIB1g_hEENCNvMs15_B1H_NtB1H_17BytesLiteralValue5bytes0EB2z_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3S_3all5checkThhENCNvXs18_B1H_B3g_INtNtBc_3cmp9PartialEqShE2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1J_.exit, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB6_6copied6CopiedIB1k_hEENCNvMs15_B1L_NtB1L_17BytesLiteralValue5bytes0EB2D_ENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB6_6copied6CopiedIB1k_hEENCNvMs15_B1L_NtB1L_17BytesLiteralValue5bytes0EB2D_ENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i: ; preds = %._crit_edge
  %.sroa.3.0.i10.pn.i.i.ph.i.i.i = load i8, ptr %.val.i.i.i.i.i.i12.i.lcssa, align 1, !noalias !10244, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i12.i.lcssa, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.al = load i8, ptr %i.ab, align 1, !noalias !10245, !noundef !3
  %.not.i = icmp eq i8 %.sroa.3.0.i10.pn.i.i.ph.i.i.i, %i.al
  br i1 %.not.i, label %bb.f, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB8_6copied6CopiedIB1g_hEENCNvMs15_B1H_NtB1H_17BytesLiteralValue5bytes0EB2z_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3S_3all5checkThhENCNvXs18_B1H_B3g_INtNtBc_3cmp9PartialEqShE2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1J_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB8_6copied6CopiedIB1g_hEENCNvMs15_B1H_NtB1H_17BytesLiteralValue5bytes0EB2z_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3S_3all5checkThhENCNvXs18_B1H_B3g_INtNtBc_3cmp9PartialEqShE2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1J_.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB6_6copied6CopiedIB1k_hEENCNvMs15_B1L_NtB1L_17BytesLiteralValue5bytes0EB2D_ENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i, %._crit_edge, %.lr.ph, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.thread, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit.thread ], [ false, %_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len.exit ], [ true, %.lr.ph ], [ %.not.i.i.i, %._crit_edge ], [ %.not.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtB6_6copied6CopiedIB1k_hEENCNvMs15_B1L_NtB1L_17BytesLiteralValue5bytes0EB2D_ENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs19_NtCskLngH8kgpZI_15ruff_python_ast5nodesINtNtCscdodAO9FK5_5alloc6borrow3CowShEINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_17BytesLiteralValueE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !3   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10248
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i17, %bb.b
  %.sroa.35.0 = phi ptr [ %i.e, %bb.b ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i17 ] ; 5 uses
  %.sroa.18.0 = phi ptr [ undef, %bb.b ], [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i17 ] ; 3 uses
  %.sroa.14.0 = phi i64 [ undef, %bb.b ], [ %.val2.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i17 ] ; 5 uses
  %.sroa.025.1 = phi ptr [ null, %bb.b ], [ %.sroa.8.0.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i17 ] ; 4 uses
  %.sroa.8.0.i2.i = phi ptr [ undef, %bb.b ], [ %.sroa.8.0.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i17 ] ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %.sroa.025.1, null
  br i1 %.not.i.i.i13, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not9.i.i.i = icmp eq ptr %.sroa.8.0.i2.i, %.sroa.18.0
  br i1 %.not9.i.i.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %.sroa.14.0, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.025.1, i64 noundef %.sroa.14.0, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !10252
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %i.j = icmp eq ptr %.sroa.35.0, %i.h
  br i1 %i.j, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1C_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBQ_NCNvXs19_B2S_INtNtB6_6borrow3CowShEINtNtB1C_7convert4FromRNtB2S_17BytesLiteralValueE4from0EE9from_iterB2U_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.35.0, i64 32
  %.val.i.i.i.i16 = load ptr, ptr %.sroa.35.0, align 8, !noalias !10261, !nonnull !3, !noundef !3
  %i.l = getelementptr i8, ptr %.sroa.35.0, i64 8
  %.val2.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !10261, !noundef !3 ; 7 uses
  %.not.i.i.i.i.i.i = icmp slt i64 %.val2.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.noexc, label %bb.i, !prof !606

bb.i:                                             ; preds = %bb.h
  %i.m = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i17, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %bb.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !10268
  %i.n = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !10268 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.noexc, label %bb.j

.noexc:                                           ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %bb.h
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %bb.h ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.val2.i.i.i.i) #61
  unreachable

bb.j:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %.val.i.i.i.i16, i64 %.val2.i.i.i.i, i1 false), !noalias !10273
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i17

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i17: ; preds = %bb.j, %bb.i
  %.sroa.8.0.i.i = phi ptr [ %i.n, %bb.j ], [ inttoptr (i64 1 to ptr), %bb.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i.i, i64 %.val2.i.i.i.i
  br label %bb.c

bb.k:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i2.i, i64 1 ; 2 uses
  %i.r = load i8, ptr %.sroa.8.0.i2.i, align 1, !noalias !10274, !noundef !3
  %i.s = ptrtoint ptr %.sroa.18.0 to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 1)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.v, i64 8) ; 4 uses
  %.not.i.i8.i = icmp slt i64 %.sroa.0.0.i.i, 0
  br i1 %.not.i.i8.i, label %bb.m, label %bb.l, !prof !606

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !10279
  %i.w = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %.sroa.0.0.i.i, i64 noundef range(i64 1, 17) 1) #62, !noalias !10279 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.0.0.i.i) #61
          to label %.noexc.i unwind label %bb.x, !noalias !10248

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  store i8 %i.r, ptr %i.w, align 1, !noalias !10248
  store i64 %.sroa.0.0.i.i, ptr %i.a, align 8, !noalias !10248
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10248
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !10248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10285)
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i, %bb.n
  %i.y = phi ptr [ %i.ay, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %i.w, %bb.n ]
  %.sroa.6.0.copyload24 = phi i64 [ %i.ba, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ 1, %bb.n ] ; 6 uses
  %.lcssa3462.i = phi ptr [ %.lcssa, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %.sroa.35.0, %bb.n ] ; 5 uses
  %.val2.i.i.i.i42.lcssa4359.i = phi i64 [ %.val5.i.i.i.i.i.lcssa, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %.sroa.14.0, %bb.n ] ; 3 uses
  %.sroa.8.0.i.i1238.lcssa3956.i = phi ptr [ %i.aq, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %i.q, %bb.n ] ; 2 uses
  %.lcssa4853.i = phi ptr [ %.lcssa50, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %.sroa.18.0, %bb.n ] ; 2 uses
  %.sroa.8.0.i.i1231.lcssa51.i = phi ptr [ %.sroa.8.0.i.i1230.i.lcssa, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i ], [ %.sroa.025.1, %bb.n ] ; 2 uses
  %.not9.i.i.i.i65 = icmp eq ptr %.sroa.8.0.i.i1238.lcssa3956.i, %.lcssa4853.i
  br i1 %.not9.i.i.i.i65, label %.lr.ph.peel, label %._crit_edge

.lr.ph.peel:                                      ; preds = %bb.o
  %i.z = icmp eq i64 %.val2.i.i.i.i42.lcssa4359.i, 0
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.peel, label %bb.p

bb.p:                                             ; preds = %.lr.ph.peel
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i.i1231.lcssa51.i, i64 noundef %.val2.i.i.i.i42.lcssa4359.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !10288
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.peel

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.peel: ; preds = %bb.p, %.lr.ph.peel
  %i.aa = icmp eq ptr %.lcssa3462.i, %i.h
  br i1 %i.aa, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBG_NCNvXs19_B2A_INtNtB6_6borrow3CowShEINtNtB1k_7convert4FromRNtB2A_17BytesLiteralValueE4from0EE11spec_extendB2C_.exit.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.peel
  %i.ab = getelementptr i8, ptr %.lcssa3462.i, i64 8
  %.val2.i.i.i.i.i.peel = load i64, ptr %i.ab, align 8, !noalias !10297, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i.i.i.peel = icmp slt i64 %.val2.i.i.i.i.i.peel, 0
  br i1 %.not.i.i.i.i.i.i.i.peel, label %.loopexit, label %bb.r, !prof !606

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %.lcssa3462.i, i64 32 ; 2 uses
  %i.ad = icmp eq i64 %.val2.i.i.i.i.i.peel, 0
  br i1 %i.ad, label %.lr.ph, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %i.ae = phi ptr [ %i.ah, %bb.t ], [ %i.ac, %bb.r ] ; 4 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  br i1 %i.af, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBG_NCNvXs19_B2A_INtNtB6_6borrow3CowShEINtNtB1k_7convert4FromRNtB2A_17BytesLiteralValueE4from0EE11spec_extendB2C_.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %.val2.i.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !10297, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp slt i64 %.val2.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %bb.t, !prof !606

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ai, label %.lr.ph, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, !llvm.loop !10304

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.r
  %.val.i.i.i.i10.i.lcssa.in = phi ptr [ %.lcssa3462.i, %bb.r ], [ %i.ae, %bb.t ]
  %.lcssa137 = phi ptr [ %i.ac, %bb.r ], [ %i.ah, %bb.t ]
  %.val2.i.i.i.i.i.lcssa135 = phi i64 [ %.val2.i.i.i.i.i.peel, %bb.r ], [ %.val2.i.i.i.i.i, %bb.t ] ; 5 uses
  %.val.i.i.i.i10.i.lcssa = load ptr, ptr %.val.i.i.i.i10.i.lcssa.in, align 8, !noalias !10297, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !10306
  %i.aj = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %.val2.i.i.i.i.i.lcssa135, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !10306 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.loopexit, label %._crit_edge.loopexit

.loopexit:                                        ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.s, %bb.q
  %.val2.i.i.i.i.i136 = phi i64 [ %.val2.i.i.i.i.i.peel, %bb.q ], [ %.val2.i.i.i.i.i, %bb.s ], [ %.val2.i.i.i.i.i.lcssa135, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ 0, %bb.q ], [ 1, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i136) #61
          to label %.noexc13.i unwind label %.body.i.thread, !noalias !10248

.noexc13.i:                                       ; preds = %.loopexit
  unreachable

.body.i:                                          ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = icmp eq i64 %.val5.i.i.i.i.i.lcssa, 0
  br i1 %i.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit11, label %bb.u

bb.u:                                             ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i.i1230.i.lcssa) ], !noalias !10311
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i.i1230.i.lcssa, i64 noundef %.val5.i.i.i.i.i.lcssa, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !10312
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit11

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit11: ; preds = %.body.i, %bb.u, %.body.i.thread
  %.pn.i.i.i41 = phi { ptr, i32 } [ %i.ao, %.body.i.thread ], [ %i.al, %bb.u ], [ %i.al, %.body.i ] ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !noalias !10248 ; 2 uses
  %i.an = icmp eq i64 %.val.i, 0
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit, label %bb.w

.body.i.thread:                                   ; preds = %.loopexit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit11

._crit_edge.loopexit:                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %.val.i.i.i.i10.i.lcssa, i64 %.val2.i.i.i.i.i.lcssa135, i1 false), !noalias !10319
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.val2.i.i.i.i.i.lcssa135
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %.lcssa50 = phi ptr [ %.lcssa4853.i, %bb.o ], [ %i.ap, %._crit_edge.loopexit ] ; 2 uses
  %.val5.i.i.i.i.i.lcssa = phi i64 [ %.val2.i.i.i.i42.lcssa4359.i, %bb.o ], [ %.val2.i.i.i.i.i.lcssa135, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.8.0.i.i1238.i.lcssa = phi ptr [ %.sroa.8.0.i.i1238.lcssa3956.i, %bb.o ], [ %i.aj, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ %.lcssa3462.i, %bb.o ], [ %.lcssa137, %._crit_edge.loopexit ]
  %.sroa.8.0.i.i1230.i.lcssa = phi ptr [ %.sroa.8.0.i.i1231.lcssa51.i, %bb.o ], [ %i.aj, %._crit_edge.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i.i1238.i.lcssa, i64 1 ; 2 uses
  %.sroa.3.0.i7.pn.i.i.ph.i = load i8, ptr %.sroa.8.0.i.i1238.i.lcssa, align 1, !noalias !10320, !noundef !3
  %i.ar = icmp sgt i64 %.sroa.6.0.copyload24, -1
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i64, ptr %i.a, align 8, !range !86, !alias.scope !10321, !noalias !10322, !noundef !3
  %i.at = icmp eq i64 %.sroa.6.0.copyload24, %i.as
  br i1 %i.at, label %bb.v, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i

bb.v:                                             ; preds = %._crit_edge
  %i.au = ptrtoint ptr %.lcssa50 to i64
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = tail call i64 @llvm.uadd.sat.i64(i64 %i.aw, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.6.0.copyload24, i64 noundef %i.ax, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i_crit_edge.i unwind label %.body.i, !noalias !10322

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i_crit_edge.i: ; preds = %bb.v
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10321, !noalias !10322
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i_crit_edge.i, %._crit_edge
  %i.ay = phi ptr [ %.pre.i, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i_crit_edge.i ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.6.0.copyload24
  store i8 %.sroa.3.0.i7.pn.i.i.ph.i, ptr %i.az, align 1, !noalias !10325
  %i.ba = add nuw i64 %.sroa.6.0.copyload24, 1    ; 2 uses
  store i64 %i.ba, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10321, !noalias !10322
  br label %bb.o

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit11
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10248, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !10248
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit

_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBG_NCNvXs19_B2A_INtNtB6_6borrow3CowShEINtNtB1k_7convert4FromRNtB2A_17BytesLiteralValueE4from0EE11spec_extendB2C_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhEEECskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.peel, %.lr.ph
  %.sroa.0.0.copyload18 = load i64, ptr %i.a, align 8, !noalias !10326
  %.sroa.5.0.copyload21 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10326
  br label %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1C_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBQ_NCNvXs19_B2S_INtNtB6_6borrow3CowShEINtNtB1C_7convert4FromRNtB2S_17BytesLiteralValueE4from0EE9from_iterB2U_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit: ; preds = %bb.y, %bb.x, %bb.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit11
  %.pn16.i = phi { ptr, i32 } [ %.pn.i.i.i41, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit11 ], [ %.pn.i.i.i41, %bb.w ], [ %i.bb, %bb.x ], [ %i.bb, %bb.y ]
  resume { ptr, i32 } %.pn16.i

bb.x:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = icmp eq i64 %.sroa.14.0, 0
  br i1 %i.bc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.025.1, i64 noundef %.sroa.14.0, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !10327
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEINtNtCscdodAO9FK5_5alloc3vec3VechENCNvXs19_B1J_INtNtB2G_6borrow3CowShEINtNtB4_7convert4FromRNtB1J_17BytesLiteralValueE4from0EEB1L_.exit

_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1C_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBQ_NCNvXs19_B2S_INtNtB6_6borrow3CowShEINtNtB1C_7convert4FromRNtB2S_17BytesLiteralValueE4from0EE9from_iterB2U_.exit: ; preds = %bb.g, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBG_NCNvXs19_B2A_INtNtB6_6borrow3CowShEINtNtB1k_7convert4FromRNtB2A_17BytesLiteralValueE4from0EE11spec_extendB2C_.exit.i
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload24, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBG_NCNvXs19_B2A_INtNtB6_6borrow3CowShEINtNtB1k_7convert4FromRNtB2A_17BytesLiteralValueE4from0EE11spec_extendB2C_.exit.i ], [ 0, %bb.g ]
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload21, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBG_NCNvXs19_B2A_INtNtB6_6borrow3CowShEINtNtB1k_7convert4FromRNtB2A_17BytesLiteralValueE4from0EE11spec_extendB2C_.exit.i ], [ inttoptr (i64 1 to ptr), %bb.g ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload18, %_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1k_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBG_NCNvXs19_B2A_INtNtB6_6borrow3CowShEINtNtB1k_7convert4FromRNtB2A_17BytesLiteralValueE4from0EE11spec_extendB2C_.exit.i ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10248
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx19, align 8
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx22, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %i.bg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1C_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralEBQ_NCNvXs19_B2S_INtNtB6_6borrow3CowShEINtNtB1C_7convert4FromRNtB2S_17BytesLiteralValueE4from0EE9from_iterB2U_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1A_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_8OperatorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !9679, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1A_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_8OperatorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1A_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_8OperatorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.1388, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_7UnaryOpNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !9680, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_7UnaryOpNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1C_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_7UnaryOpNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.1389, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1E_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_5CmpOpNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !8489, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1E_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_5CmpOpNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1E_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_5CmpOpNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.1390, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, ptr } @_RNvXs1P_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4last(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !10334, !align !95, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_RNvXs1Q_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !10334, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !10334, !nonnull !3, !noundef !3
  %i.g = icmp eq ptr %i.f, %i.e
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -80
  br label %_RNvXs1Q_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10334, !align !95, !noundef !3 ; 2 uses
  %.not16.i = icmp eq ptr %i.j, null
  br i1 %.not16.i, label %bb.e, label %_RNvXs1Q_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !10334, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !alias.scope !10334, !nonnull !3, !noundef !3
  %i.o = icmp eq ptr %i.n, %i.m
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -80
  br label %_RNvXs1Q_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !10334, !nonnull !3, !noundef !3 ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !alias.scope !10334, !nonnull !3, !noundef !3
  %i.t = icmp eq ptr %i.s, %i.r                   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -80
  %spec.select = select i1 %i.t, ptr undef, ptr %i.u
  %spec.select5 = select i1 %i.t, i64 2, i64 1
  br label %_RNvXs1Q_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back.exit

_RNvXs1Q_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_18ParametersIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back.exit: ; preds = %bb.g, %bb.a, %bb.c, %bb.d, %bb.f
  %.sroa.7.0.i = phi ptr [ %i.h, %bb.c ], [ %i.b, %bb.a ], [ %i.j, %bb.d ], [ %i.p, %bb.f ], [ %spec.select, %bb.g ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.f ], [ %spec.select5, %bb.g ]
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.w = insertvalue { i64, ptr } %i.v, ptr %.sroa.7.0.i, 1
  ret { i64, ptr } %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvXs1T_NtCskLngH8kgpZI_15ruff_python_ast5nodesRNtB6_10ParametersNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10340)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i.i = load ptr, ptr %1, align 8, !noalias !10343, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16 ; 2 uses
  %i.d = load i64, ptr %.val4.i.i, align 8, !noalias !10343, !noundef !3
  %.val3.i.i = load ptr, ptr %i.a, align 8, !noalias !10343, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16 ; 2 uses
  %i.f = load i64, ptr %.val3.i.i, align 8, !noalias !10343, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !10343, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.i = load i64, ptr %.val.i.i, align 8, !noalias !10343, !noundef !3
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.f
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.d
  store ptr %i.c, ptr %0, align 8, !alias.scope !10343
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !10343
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.n, align 8, !alias.scope !10343
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.o, align 8, !alias.scope !10343
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.q, align 8, !alias.scope !10343
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.r, align 8, !alias.scope !10343
  %i.s = load <2 x ptr>, ptr %i.g, align 8, !noalias !10343
  store <2 x ptr> %i.s, ptr %i.p, align 8, !alias.scope !10343
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_RNvXs1U_NtCskLngH8kgpZI_15ruff_python_ast5nodesRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB6_10ParametersENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10350)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val4.i.i.i = load ptr, ptr %i.a, align 8, !noalias !10353, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16 ; 2 uses
  %i.e = load i64, ptr %.val4.i.i.i, align 8, !noalias !10353, !noundef !3
  %.val3.i.i.i = load ptr, ptr %i.b, align 8, !noalias !10353, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16 ; 2 uses
  %i.g = load i64, ptr %.val3.i.i.i, align 8, !noalias !10353, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !noalias !10353, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 2 uses
  %i.j = load i64, ptr %.val.i.i.i, align 8, !noalias !10353, !noundef !3
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %i.g
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.e
  store ptr %i.d, ptr %0, align 8, !alias.scope !10353
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !10353
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.o, align 8, !alias.scope !10353
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.p, align 8, !alias.scope !10353
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.r, align 8, !alias.scope !10353
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.s, align 8, !alias.scope !10353
end_hunk_1
