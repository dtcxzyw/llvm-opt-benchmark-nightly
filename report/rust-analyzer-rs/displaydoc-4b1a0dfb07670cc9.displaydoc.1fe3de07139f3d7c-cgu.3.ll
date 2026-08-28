Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/displaydoc-4b1a0dfb07670cc9.displaydoc.1fe3de07139f3d7c-cgu.3?download=true
inline.NumInlined: 40
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtCs2JKw6W5IoNc_10displaydoc6expand21generate_where_clause:bb.a
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsgFSQ9XOTBNe_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEEBG_(ptr nonnull align 8 %i.f) #14
          to label %.body.i unwind label %bb.ba, !noalias !54

bb.bd:                                            ; preds = %bb.av
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.h) #14
          to label %.body.i unwind label %bb.ba, !noalias !54

bb.be:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.i, ptr noundef nonnull align 8 dereferenceable(224) %i.c, i64 224, i1 false)
  store i32 %i.co, ptr %i.cb, align 8, !alias.scope !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvNtCs2JKw6W5IoNc_10displaydoc6expand40add_display_constraint_to_type_predicate(ptr nonnull align 8 %i.i)
          to label %bb.bf unwind label %bb.bl

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.g, ptr noundef nonnull align 8 dereferenceable(312) %i.i, i64 312, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ct = invoke zeroext i1 @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14WherePredicateNtNtB4_5token5CommaE8is_emptyB4_(ptr nonnull align 8 %i.ae)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ct, label %_RNvNtCs2JKw6W5IoNc_10displaydoc6expand34append_where_clause_type_predicate.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cu = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
          to label %bb.bi unwind label %bb.bj

_RNvNtCs2JKw6W5IoNc_10displaydoc6expand34append_where_clause_type_predicate.exit.i.i: ; preds = %bb.bi, %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %i.g, i64 312, i1 false)
  invoke void @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14WherePredicateNtNtB4_5token5CommaE10push_valueB4_(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.a)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %_RNvNtCs2JKw6W5IoNc_10displaydoc6expand34append_where_clause_type_predicate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNtCs2JKw6W5IoNc_10displaydoc6expand39ensure_display_in_where_clause_for_type.exit.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14WherePredicateNtNtB4_5token5CommaE10push_punctB4_(ptr nonnull align 8 %i.ae, i32 %i.cu)
          to label %_RNvNtCs2JKw6W5IoNc_10displaydoc6expand34append_where_clause_type_predicate.exit.i.i unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bf
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics13PredicateTypeEBF_(ptr nonnull align 8 %i.g) #14
          to label %.body.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bl:                                            ; preds = %bb.be
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics13PredicateTypeEBF_(ptr nonnull align 8 %i.i) #14
          to label %.body.i unwind label %bb.bm

bb.bm:                                            ; preds = %.thread13.i.i, %bb.bl, %bb.ar
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bn:                                            ; preds = %bb.at
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.v, ptr %i.k, align 8
  %i.cz = invoke align 8 ptr @_RNvMs_NtCsgFSQ9XOTBNe_3syn4pathNtB4_4Path9get_ident(ptr nonnull align 8 %i.cy)
          to label %bb.bo unwind label %.loopexit.i.i

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.cz, ptr %i.j, align 8
  %i.da = invoke zeroext i1 @_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionRNtCs1K5DUQUZc67_11proc_macro25IdentENtNtB7_3cmp9PartialEq2eqCs2JKw6W5IoNc_10displaydoc(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.j)
          to label %bb.bp unwind label %.loopexit.i.i

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.da, label %bb.bq, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %bb.bp, %bb.at
  br label %.critedge.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke fastcc void @_RNvNtCs2JKw6W5IoNc_10displaydoc6expand40add_display_constraint_to_type_predicate(ptr nonnull align 8 %i.cl)
          to label %bb.br unwind label %.loopexit.split-lp.i.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtCsgFSQ9XOTBNe_3syn10punctuated7IterMutNtNtB1m_8generics14WherePredicateEINtNtB4_6option6OptionQNtB20_13PredicateTypeENCNvNtCs2JKw6W5IoNc_10displaydoc6expand39ensure_display_in_where_clause_for_type0EEB3l_(ptr nonnull align 8 %i.l)
          to label %bb.bs unwind label %.thread17.i.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.v)
          to label %_RNvNtCs2JKw6W5IoNc_10displaydoc6expand39ensure_display_in_where_clause_for_type.exit.i unwind label %bb.ak

.thread13.i.i:                                    ; preds = %bb.ar, %.thread17.i.i
  %.pn16.i.i = phi { ptr, i32 } [ %i.ci, %.thread17.i.i ], [ %lpad.phi.i.i, %bb.ar ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.v) #14
          to label %.body.i unwind label %bb.bm

_RNvNtCs2JKw6W5IoNc_10displaydoc6expand39ensure_display_in_where_clause_for_type.exit.i: ; preds = %bb.bs, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.am

bb.bt:                                            ; preds = %bb.bu, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.dc, %bb.bu ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %.sroa.0.2.i = phi i8 [ %.sroa.0.1.i, %bb.bu ], [ %.sroa.0.0.lpad-body.i, %.body.i ]
  %i.db = trunc nuw i8 %.sroa.0.2.i to i1
  br i1 %i.db, label %bb.by, label %bb.af

bb.bu:                                            ; preds = %bb.am
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bv:                                            ; preds = %bb.am
  %i.dd = trunc nuw i8 %.sroa.0.1.i to i1
  br i1 %i.dd, label %bb.bw, label %.backedge

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.x)
          to label %.backedge unwind label %bb.ag

.backedge:                                        ; preds = %bb.bw, %bb.bv
  br label %bb.ae

bb.bx:                                            ; preds = %bb.by, %.body.i, %bb.af
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.by:                                            ; preds = %bb.bt
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs1K5DUQUZc67_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.x) #14
          to label %bb.af unwind label %bb.bx

bb.bz:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false)
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtCsgFSQ9XOTBNe_3syn8generics9TypeParamEECs2JKw6W5IoNc_10displaydoc(ptr nonnull align 8 %i.ac)
  ret void

bb.ca:                                            ; preds = %.thread, %.body
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.cb:                                            ; preds = %.thread
  resume { ptr, i32 } %.pn11

.thread:                                          ; preds = %.body, %.thread12
  %.pn11 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread12 ], [ %eh.lpad-body, %.body ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics11WhereClauseEBF_(ptr nonnull align 8 %i.ae) #14
          to label %bb.cb unwind label %bb.ca
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs2JKw6W5IoNc_10displaydoc6expand22new_empty_where_clause(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 36)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = tail call i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
  call void @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14WherePredicateNtNtB4_5token5CommaE3newB4_(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2JKw6W5IoNc_10displaydoc6expand40add_display_constraint_to_type_predicate(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [120 x i8], align 8               ; 2 uses
  %i.h = alloca [120 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE3newB4_(ptr nonnull sret([32 x i8]) align 8 %i.f), !noalias !57
  %i.i = invoke zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSRe8is_emptyCs2JKw6W5IoNc_10displaydoc(ptr nonnull align 8 @37, i64 3)
          to label %bb.c unwind label %.loopexit.split-lp.i, !noalias !57

.loopexit.i:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.n, %bb.l
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp.i:                             ; preds = %bb.p, %bb.o, %bb.j, %_RNvXNtNtCshzWfHUSfYae_4core5slice5indexSReINtNtNtB6_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2JKw6W5IoNc_10displaydoc.exit.i, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsgFSQ9XOTBNe_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEEBG_(ptr nonnull align 8 %i.f) #14
          to label %common.resume unwind label %bb.v, !noalias !57

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr nonnull @33, i64 43, ptr nonnull align 8 @34) #17
          to label %bb.f unwind label %.loopexit.split-lp.i, !noalias !57

bb.e:                                             ; preds = %bb.c
  %i.j = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
          to label %bb.g unwind label %.loopexit.split-lp.i, !noalias !57

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvMsx_Cs1K5DUQUZc67_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull @6, i64 4, i32 %i.j, ptr nonnull align 8 @30)
          to label %bb.h unwind label %.loopexit.split-lp.i, !noalias !57

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !57
  store i64 -9223372036854775808, ptr %i.e, align 8, !noalias !57
  invoke void @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE10push_valueB4_(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.e)
          to label %bb.i unwind label %.loopexit.split-lp.i, !noalias !57

bb.i:                                             ; preds = %bb.h
  %i.l = invoke { ptr, i64 } @_RNvXs5_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSReE5indexCs2JKw6W5IoNc_10displaydoc(i64 1, ptr nonnull align 8 @37, i64 3, ptr nonnull align 8 @31) #16
          to label %_RNvXNtNtCshzWfHUSfYae_4core5slice5indexSReINtNtNtB6_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2JKw6W5IoNc_10displaydoc.exit.i unwind label %.loopexit.split-lp.i, !noalias !57 ; 2 uses

_RNvXNtNtCshzWfHUSfYae_4core5slice5indexSReINtNtNtB6_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2JKw6W5IoNc_10displaydoc.exit.i: ; preds = %bb.i
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  %i.o = invoke { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core5sliceSRe4iterCs1K5DUQUZc67_11proc_macro2(ptr align 8 %i.m, i64 %i.n)
          to label %bb.j unwind label %.loopexit.split-lp.i, !noalias !57 ; 2 uses

bb.j:                                             ; preds = %_RNvXNtNtCshzWfHUSfYae_4core5slice5indexSReINtNtNtB6_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2JKw6W5IoNc_10displaydoc.exit.i
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %i.q = extractvalue { ptr, ptr } %i.o, 1
  %i.r = invoke { ptr, ptr } @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB8_5slice4iter4IterReENtB2_12IntoIterator9into_iterCs2JKw6W5IoNc_10displaydoc(ptr %i.p, ptr %i.q)
          to label %bb.k unwind label %.loopexit.split-lp.i, !noalias !57 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  store ptr %i.s, ptr %i.c, align 8, !noalias !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.t, ptr %i.u, align 8, !noalias !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %bb.l

bb.l:                                             ; preds = %bb.u, %bb.k
  %i.w = invoke align 8 ptr @_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgFSQ9XOTBNe_3syn(ptr nonnull align 8 %i.c)
          to label %bb.m unwind label %.loopexit.i, !noalias !57 ; 3 uses

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
          to label %bb.q unwind label %.loopexit.i, !noalias !57

bb.o:                                             ; preds = %bb.m
  %i.y = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
          to label %bb.p unwind label %.loopexit.split-lp.i, !noalias !57

bb.p:                                             ; preds = %bb.o
  %i.z = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span10mixed_site()
          to label %_RNvNtCs2JKw6W5IoNc_10displaydoc6expand10join_paths.exit unwind label %.loopexit.split-lp.i, !noalias !57

bb.q:                                             ; preds = %bb.n
  %i.aa = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span10mixed_site()
          to label %bb.r unwind label %.loopexit.i, !noalias !57

bb.r:                                             ; preds = %bb.q
  %.sroa.26.0.insert.ext.i = zext i32 %i.aa to i64
  %.sroa.26.0.insert.shift.i = shl nuw i64 %.sroa.26.0.insert.ext.i, 32
  %.sroa.05.0.insert.ext.i = zext i32 %i.x to i64
  %.sroa.05.0.insert.insert.i = or disjoint i64 %.sroa.26.0.insert.shift.i, %.sroa.05.0.insert.ext.i
  invoke void @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE10push_punctB4_(ptr nonnull align 8 %i.f, i64 %.sroa.05.0.insert.insert.i)
          to label %bb.s unwind label %.loopexit.i, !noalias !57

bb.s:                                             ; preds = %bb.r
  %i.ab = load ptr, ptr %i.w, align 8, !noalias !57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !57
  %i.ae = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
          to label %bb.t unwind label %.loopexit.i, !noalias !57

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMsx_Cs1K5DUQUZc67_11proc_macro2NtB5_5Ident3new(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %i.ab, i64 %i.ad, i32 %i.ae, ptr nonnull align 8 @32)
          to label %bb.u unwind label %.loopexit.i, !noalias !57

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !57
  store i64 -9223372036854775808, ptr %i.b, align 8, !noalias !57
  invoke void @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE10push_valueB4_(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.b)
          to label %bb.l unwind label %.loopexit.i, !noalias !57

bb.v:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !57
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %bb.b ], [ %lpad.thr_comm, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

_RNvNtCs2JKw6W5IoNc_10displaydoc6expand10join_paths.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.01.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 1, ptr %.sroa.01.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.01.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 %i.y, ptr %.sroa.01.sroa.0.sroa.3.0..sroa_idx, align 4
  %.sroa.01.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 %i.z, ptr %.sroa.01.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 -1, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ah = invoke zeroext i1 @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE8is_emptyB4_(ptr nonnull align 8 %i.ag)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %_RNvNtCs2JKw6W5IoNc_10displaydoc6expand10join_paths.exit
  br i1 %i.ah, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ai = invoke i32 @_RNvMsi_Cs1K5DUQUZc67_11proc_macro2NtB5_4Span9call_site()
          to label %bb.z unwind label %bb.aa

bb.y:                                             ; preds = %bb.z, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.h, i64 120, i1 false)
  call void @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_valueB4_(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.g)
  ret void

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvMNtCsgFSQ9XOTBNe_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE10push_punctB4_(ptr nonnull align 8 %i.ag, i32 %i.ai)
          to label %bb.y unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %_RNvNtCs2JKw6W5IoNc_10displaydoc6expand10join_paths.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics14TypeParamBoundEBF_(ptr nonnull align 8 %i.h) #14
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs2JKw6W5IoNc_10displaydoc6expand6derive(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 18 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 16 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 18 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 18 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 16 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 18 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [2 x i8], align 1                ; 5 uses
  %i.an = alloca [40 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [40 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 6 uses
  %i.av = alloca [40 x i8], align 8               ; 8 uses
  %i.aw = alloca [40 x i8], align 8               ; 4 uses
  %i.ax = alloca [40 x i8], align 8               ; 6 uses
  %i.ay = alloca [32 x i8], align 8               ; 6 uses
  %i.az = alloca [2 x i8], align 1                ; 5 uses
  %i.ba = alloca [40 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 2 uses
  %i.bg = alloca [32 x i8], align 8               ; 5 uses
  %i.bh = alloca [32 x i8], align 8               ; 2 uses
  %i.bi = alloca [32 x i8], align 8               ; 2 uses
  %i.bj = alloca [32 x i8], align 8               ; 8 uses
  %i.bk = alloca [32 x i8], align 8               ; 2 uses
  %i.bl = alloca [32 x i8], align 8               ; 5 uses
  %i.bm = alloca [32 x i8], align 8               ; 2 uses
  %i.bn = alloca [32 x i8], align 8               ; 12 uses
  %i.bo = alloca [32 x i8], align 8               ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 2 uses
  %i.bq = alloca [32 x i8], align 8               ; 11 uses
  %i.br = alloca [32 x i8], align 8               ; 4 uses
  %i.bs = alloca [32 x i8], align 8               ; 4 uses
  %i.bt = load i64, ptr %1, align 8
  %i.bu = tail call i64 @llvm.usub.sat.i64(i64 %i.bt, i64 2)
  switch i64 %i.bu, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.t
    i64 2, label %bb.fs
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.bv, ptr %i.be, align 8, !noalias !60
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @_RNvMs_NtCsgFSQ9XOTBNe_3syn8genericsNtB4_8Generics14split_for_impl(ptr nonnull sret([24 x i8]) align 8 %i.bb, ptr nonnull align 8 %i.bw), !noalias !60
  %i.bx = load ptr, ptr %i.bb, align 8, !noalias !60
  store ptr %i.bx, ptr %i.bd, align 8, !noalias !60
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !60
  store ptr %i.bz, ptr %i.bc, align 8, !noalias !60
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !60
  call fastcc void @_RNvNtCs2JKw6W5IoNc_10displaydoc6expand21generate_where_clause(ptr noalias align 8 %i.ba, ptr nonnull align 8 %i.bw, ptr align 8 %i.cb), !noalias !60
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cd = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.cc)
          to label %bb.f unwind label %bb.e, !noalias !60 ; 2 uses

bb.d:                                             ; preds = %bb.n, %bb.e
  %.pn2.i = phi { ptr, i32 } [ %i.ce, %bb.e ], [ %.pn.i, %bb.n ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn8generics11WhereClauseEBF_(ptr nonnull align 8 %i.ba) #14
          to label %common.resume unwind label %bb.s

bb.e:                                             ; preds = %bb.r, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.cf = extractvalue { ptr, i64 } %i.cd, 0
  %i.cg = extractvalue { ptr, i64 } %i.cd, 1
  %i.ch = invoke { i1, i1 } @_RNvMs0_NtCs2JKw6W5IoNc_10displaydoc4attrNtB5_11AttrsHelper3new(ptr align 8 %i.cf, i64 %i.cg)
          to label %bb.g unwind label %bb.e, !noalias !60 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ci = extractvalue { i1, i1 } %i.ch, 0
  %i.cj = extractvalue { i1, i1 } %i.ch, 1
  %i.ck = zext i1 %i.ci to i8
  store i8 %i.ck, ptr %i.az, align 1, !noalias !60
  %i.cl = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.cm = zext i1 %i.cj to i8
  store i8 %i.cm, ptr %i.cl, align 1, !noalias !60
  %i.cn = invoke { ptr, i64 } @_RNvXs8_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5derefBJ_(ptr nonnull align 8 %i.cc)
          to label %bb.h unwind label %bb.e, !noalias !60 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.co = extractvalue { ptr, i64 } %i.cn, 0
  %i.cp = extractvalue { ptr, i64 } %i.cn, 1
  invoke void @_RNvMs0_NtCs2JKw6W5IoNc_10displaydoc4attrNtB5_11AttrsHelper7display(ptr nonnull sret([40 x i8]) align 8 %i.aw, ptr nonnull %i.az, ptr align 8 %i.co, i64 %i.cp)
          to label %bb.i unwind label %bb.e, !noalias !60

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs2JKw6W5IoNc_10displaydoc4attr7DisplayENtNtCsgFSQ9XOTBNe_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1a_(ptr nonnull sret([40 x i8]) align 8 %i.ax, ptr nonnull align 8 %i.aw)
          to label %bb.j unwind label %bb.e, !noalias !60

bb.j:                                             ; preds = %bb.i
  %i.cq = load i64, ptr %i.ax, align 8, !noalias !60
  %i.cr = icmp eq i64 %i.cq, -3
  br i1 %i.cr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !noalias !60
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtCs1K5DUQUZc67_11proc_macro211TokenStreamNtNtCsgFSQ9XOTBNe_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %i.bq, ptr nonnull align 8 %i.as, ptr nonnull align 8 @35)
          to label %_RNvNtCs2JKw6W5IoNc_10displaydoc6expand11impl_struct.exit unwind label %bb.e

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false), !noalias !60
  store ptr %1, ptr %i.av, align 8, !noalias !60
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 8
end_hunk_0
