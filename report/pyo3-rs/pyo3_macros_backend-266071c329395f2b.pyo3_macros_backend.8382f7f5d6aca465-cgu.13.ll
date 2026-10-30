Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_macros_backend-266071c329395f2b.pyo3_macros_backend.8382f7f5d6aca465-cgu.13?download=true
inline.NumInlined: 77
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionbE9unwrap_orCsbi23obv45GP_19pyo3_macros_backend:bb.a
  ret i1 %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i64 @_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionjE6expectCsbi23obv45GP_19pyo3_macros_backend(i64 %0, i64 returned %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %i.a = trunc nuw i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  ret i64 %1

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #15
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMNtNtCs4yLFsuhaAhE_5quote9___private8get_spanINtB2_7GetSpanNtCs3FigHW6Y7TR_11proc_macro24SpanE11___into_spanCsbi23obv45GP_19pyo3_macros_backend(i32 returned %0) unnamed_addr #5 {
bb.a:
  ret i32 %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = invoke i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.b, ptr align 8 %1)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = invoke { i64, ptr } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB21_11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i64 %i.c, ptr align 8 %1, ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { i64, ptr } %i.d, 1
  %i.h = ptrtoint ptr %i.g to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = lshr i64 %i.c, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = call ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringuEE22insert_tagged_at_indexCsbi23obv45GP_19pyo3_macros_backend(ptr align 8 %0, i8 %i.j, i64 %i.h, ptr nonnull align 8 %i.a) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = xor i1 %i.f, true
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm

bb.h:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3FigHW6Y7TR_11proc_macro2(ptr align 8 %1) #13
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCskKLDkoKarTP_4core6optionINtB5_6OptionRNtNtCs1QQTzni0HOp_3syn8generics11WhereClauseE6clonedCsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs2S_NtNtCs1QQTzni0HOp_3syn3gen5cloneNtNtBa_8generics11WhereClauseNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr nonnull sret([40 x i8]) align 8 %i.a, ptr nonnull align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytesCsbi23obv45GP_19pyo3_macros_backend(ptr nofree captures(none) %0, ptr nofree captures(none) %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 5 uses
  %i.b = and i64 %2, 7                            ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbi23obv45GP_19pyo3_macros_backend.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 64
  br i1 %min.iters.check, label %.lr.ph.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.c = and i64 %2, -8                           ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %0, %i.e
  %bound1 = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.f, align 1, !alias.scope !26, !noalias !27
  %wide.load9 = load <2 x i64>, ptr %i.h, align 1, !alias.scope !26, !noalias !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load10 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !27
  %wide.load11 = load <2 x i64>, ptr %i.i, align 1, !alias.scope !27
  store <2 x i64> %wide.load10, ptr %i.f, align 1, !alias.scope !26, !noalias !27
  store <2 x i64> %wide.load11, ptr %i.h, align 1, !alias.scope !26, !noalias !27
  store <2 x i64> %wide.load, ptr %i.g, align 1, !alias.scope !27
  store <2 x i64> %wide.load9, ptr %i.i, align 1, !alias.scope !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbi23obv45GP_19pyo3_macros_backend.exit, label %.lr.ph.i.preheader12

.lr.ph.i.preheader12:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.sroa.0.03.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.03.i.ph, 1
  %i.k = and i64 %2, 8
  %lcmp.mod.not = icmp eq i64 %i.k, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader12
  %i.l = or disjoint i64 %.sroa.0.03.i.ph, 1
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.ph ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.ph ; 2 uses
  %.sroa.0.0.copyload.i.i.prol = load i64, ptr %i.m, align 1
  %.sroa.02.0.copyload.i.i.prol = load i64, ptr %i.n, align 1
  store i64 %.sroa.02.0.copyload.i.i.prol, ptr %i.m, align 1
  store i64 %.sroa.0.0.copyload.i.i.prol, ptr %i.n, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader12
  %.sroa.0.03.i.unr = phi i64 [ %.sroa.0.03.i.ph, %.lr.ph.i.preheader12 ], [ %i.l, %.lr.ph.i.prol ]
  %i.o = icmp eq i64 %i.a, %.neg
  br i1 %i.o, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbi23obv45GP_19pyo3_macros_backend.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.03.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.sroa.0.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.p = add nuw nsw i64 %.sroa.0.03.i, 1         ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.q, align 1
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.r, align 1
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.q, align 1
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.r, align 1
  %i.s = add nuw nsw i64 %.sroa.0.03.i, 2         ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.p ; 2 uses
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.t, align 1
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.u, align 1
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %i.t, align 1
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.u, align 1
  %exitcond.not.i.1 = icmp eq i64 %i.s, %i.a
  br i1 %exitcond.not.i.1, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbi23obv45GP_19pyo3_macros_backend.exit, label %.lr.ph.i, !llvm.loop !25

_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.not4 = icmp eq i64 %i.b, 0
  br i1 %.not4, label %_RNvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbi23obv45GP_19pyo3_macros_backend.exit
  %i.v = and i64 %2, -8                           ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 4 uses
  %i.y = icmp samesign ult i64 %i.b, 4
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i5 = load i32, ptr %i.w, align 1
  %.sroa.02.0.copyload.i.i6 = load i32, ptr %i.x, align 1
  store i32 %.sroa.02.0.copyload.i.i6, ptr %i.w, align 1
  store i32 %.sroa.0.0.copyload.i.i5, ptr %i.x, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ 6, %bb.c ]
  %.sroa.0.0.i.a = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 3 uses
  %i.z = and i64 %2, 2
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.0.i.a ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.0.0.i.a ; 2 uses
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.ab, align 1
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.ac, align 1
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.ab, align 1
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.ac, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i.a, %bb.d ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %i.ad = and i64 %2, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RNvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsbi23obv45GP_19pyo3_macros_backend.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.1.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.0.1.i ; 2 uses
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.af, align 1
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.ag, align 1
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.af, align 1
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.ag, align 1
  br label %_RNvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsbi23obv45GP_19pyo3_macros_backend.exit

_RNvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsbi23obv45GP_19pyo3_macros_backend.exit: ; preds = %bb.g, %bb.f, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbi23obv45GP_19pyo3_macros_backend.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs1QQTzni0HOp_3syn11parse_quoteINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw6frozenENtB2_10ParseQuote5parseB1h_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { ptr, ptr } @_RNvMs9_NtCs1QQTzni0HOp_3syn5parseNtB5_11ParseBuffer6cursor(ptr align 8 %1) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = tail call zeroext i1 @_RNvXs0_NtCs1QQTzni0HOp_3syn5tokenNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw6frozenNtB5_5Token4peekBB_(ptr %i.e, ptr %i.f)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %_RNvXsb_NtCs1QQTzni0HOp_3syn5parseINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw6frozenENtB5_5Parse5parseB1d_.exit

bb.c:                                             ; preds = %bb.a
  call void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw6frozenEB10_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw6frozenNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #12
  %i.i = load i64, ptr %i.c, align 8
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw6frozenENtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB28_EE13from_residualB1c_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @3) #12
  br label %_RNvXsb_NtCs1QQTzni0HOp_3syn5parseINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw6frozenENtB5_5Parse5parseB1d_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.k, ptr %i.m, align 4
  store i64 -1, ptr %0, align 8
  br label %_RNvXsb_NtCs1QQTzni0HOp_3syn5parseINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw6frozenENtB5_5Parse5parseB1d_.exit

_RNvXsb_NtCs1QQTzni0HOp_3syn5parseINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw6frozenENtB5_5Parse5parseB1d_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs1QQTzni0HOp_3syn11parse_quoteINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw8subclassENtB2_10ParseQuote5parseB1h_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { ptr, ptr } @_RNvMs9_NtCs1QQTzni0HOp_3syn5parseNtB5_11ParseBuffer6cursor(ptr align 8 %1) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = tail call zeroext i1 @_RNvXs0_NtCs1QQTzni0HOp_3syn5tokenNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw8subclassNtB5_5Token4peekBB_(ptr %i.e, ptr %i.f)
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.h, align 8
  store i64 -1, ptr %0, align 8
  br label %_RNvXsb_NtCs1QQTzni0HOp_3syn5parseINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw8subclassENtB5_5Parse5parseB1d_.exit

bb.c:                                             ; preds = %bb.a
  call void @_RINvMs9_NtCs1QQTzni0HOp_3syn5parseNtB6_11ParseBuffer5parseNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw8subclassEB10_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1)
  call void @_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw8subclassNtNtCs1QQTzni0HOp_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b) #12
  %i.i = load i64, ptr %i.c, align 8
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw8subclassENtNtCs1QQTzni0HOp_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB2a_EE13from_residualB1c_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @3) #12
  br label %_RNvXsb_NtCs1QQTzni0HOp_3syn5parseINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw8subclassENtB5_5Parse5parseB1d_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.k, ptr %i.m, align 4
  store i64 -1, ptr %0, align 8
  br label %_RNvXsb_NtCs1QQTzni0HOp_3syn5parseINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw8subclassENtB5_5Parse5parseB1d_.exit

_RNvXsb_NtCs1QQTzni0HOp_3syn5parseINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsbi23obv45GP_19pyo3_macros_backend10attributes2kw8subclassENtB5_5Parse5parseB1d_.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvXNtCs1QQTzni0HOp_3syn7spannedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB19_2kw10rename_allNtB19_18RenamingRuleLitStrEENtB2_7Spanned4spanB1b_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8
  %.not.i.i.i.i.i = icmp eq i8 %i.d, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw10rename_allNtB1e_18RenamingRuleLitStrEENtB5_7Spanned6___spanB1g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw10rename_allNtB5_18RenamingRuleLitStrENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw10rename_allNtB1e_18RenamingRuleLitStrEENtB5_7Spanned6___spanB1g_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw10rename_allNtB1e_18RenamingRuleLitStrEENtB5_7Spanned6___spanB1g_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call i32 @_RNvNtCs4yLFsuhaAhE_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.g
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvXNtCs1QQTzni0HOp_3syn7spannedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB19_2kw11constructorNtNtNtB1b_10pyfunction9signature9SignatureEENtB2_7Spanned4spanB1b_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.c = load i64, ptr %0, align 8
  %.not.i.i.i.i.i = icmp eq i64 %i.c, -1
  br i1 %.not.i.i.i.i.i, label %_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw11constructorNtNtNtB1g_10pyfunction9signature9SignatureEENtB5_7Spanned6___spanB1g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw11constructorNtNtNtB7_10pyfunction9signature9SignatureENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw11constructorNtNtNtB1g_10pyfunction9signature9SignatureEENtB5_7Spanned6___spanB1g_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvXs0_NtCs4yLFsuhaAhE_5quote7spannedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw11constructorNtNtNtB1g_10pyfunction9signature9SignatureEENtB5_7Spanned6___spanB1g_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call i32 @_RNvNtCs4yLFsuhaAhE_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.f
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvXNtCs1QQTzni0HOp_3syn7spannedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB19_2kw3newNtB19_25NewImplTypeAttributeValueEENtB2_7Spanned4spanB1b_(ptr align 4 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterQNtNtCs1QQTzni0HOp_3syn4item5FnArgENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintCsbi23obv45GP_19pyo3_macros_backend:bb.a
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtCs3FigHW6Y7TR_11proc_macro211TokenStreamENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsbi23obv45GP_19pyo3_macros_backend(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCs1QQTzni0HOp_3syn4data7VariantENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintCsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCs1QQTzni0HOp_3syn4item7UseTreeENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintCsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCs1QQTzni0HOp_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintCsbi23obv45GP_19pyo3_macros_backend(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintBR_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBR_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintBR_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 8 ptr @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemENtNtNtNtB7_4iter6traits8iterator8Iterator4nextBT_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsy_NtCskKLDkoKarTP_4core6optionINtB5_8IntoIterRNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemENtNtNtNtB7_4iter6traits8iterator8Iterator9size_hintBT_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterQNtNtCs1QQTzni0HOp_3syn4data7VariantENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterQNtNtCs1QQTzni0HOp_3syn4item5FnArgENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtCs1QQTzni0HOp_3syn4data7VariantENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtCs1QQTzni0HOp_3syn4item7UseTreeENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtCs1QQTzni0HOp_3syn4path15GenericArgumentENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenCsbi23obv45GP_19pyo3_macros_backend(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend6module18PyModulePyO3OptionENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenBL_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtCsbi23obv45GP_19pyo3_macros_backend7pyclass17PyClassPyO3OptionENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenBL_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 2) i64 @_RNvYINtNtCskKLDkoKarTP_4core6option8IntoIterRNtNtNtCsbi23obv45GP_19pyo3_macros_backend10pyfunction9signature13SignatureItemENtNtNtNtB7_4iter6traits10exact_size17ExactSizeIterator3lenBN_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsbi23obv45GP_19pyo3_macros_backend(ptr %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread, %.lr.ph
  %.sroa.0.017 = phi ptr [ %i.l, %.thread ], [ %1, %.lr.ph ] ; 3 uses
  %.sroa.6.016 = phi i64 [ %i.k, %.thread ], [ %2, %.lr.ph ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXs3_NtNtNtCsG258MDvU3F_3std3sys5stdio4unixNtB5_6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr %0, ptr %.sroa.0.017, i64 %.sroa.6.016) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.l
  %i.h = invoke zeroext i1 @_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interruptedCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.c)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.l, %bb.b
  %.lcssa = phi ptr [ %i.f, %bb.b ], [ %7, %bb.l ] ; 2 uses
  %3 = ptrtoint ptr %.lcssa to i64                ; 4 uses
  %i.i = icmp eq ptr %.lcssa, null
  br i1 %i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ult i64 %.sroa.6.016, %3
  br i1 %i.j, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.k = sub nuw i64 %.sroa.6.016, %3             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 %3
  %4 = icmp eq i64 %i.k, 0
  br i1 %4, label %.loopexit, label %bb.b

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 %3, i64 %.sroa.6.016, i64 %.sroa.6.016, ptr nonnull align 8 @7) #16
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.i
  %.pre = load i64, ptr %i.a, align 8
  %i.m = trunc nuw i64 %.pre to i1
  br i1 %i.m, label %bb.k, label %bb.l

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.n = load i64, ptr %i.a, align 8
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.m, label %bb.n

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.g, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr %i.c, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %bb.d, %bb.a, %bb.j
  %.sroa.07.0 = phi ptr [ %i.p, %bb.j ], [ null, %bb.a ], [ null, %.thread ], [ @5, %bb.d ]
  ret ptr %.sroa.07.0

bb.k:                                             ; preds = %bb.g
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %5 = call { i64, ptr } @_RNvXs3_NtNtNtCsG258MDvU3F_3std3sys5stdio4unixNtB5_6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr %0, ptr %.sroa.0.017, i64 %.sroa.6.016) ; 2 uses
  %6 = extractvalue { i64, ptr } %5, 0            ; 2 uses
  %7 = extractvalue { i64, ptr } %5, 1            ; 2 uses
  store i64 %6, ptr %i.a, align 8
  store ptr %7, ptr %i.c, align 8
  %8 = trunc nuw i64 %6 to i1
  br i1 %8, label %bb.c, label %bb.d

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.c) #13
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbi23obv45GP_19pyo3_macros_backend(ptr %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_RNvMs4_NtCskKLDkoKarTP_4core3fmtNtB5_9Arguments23as_statically_known_strCsbi23obv45GP_19pyo3_macros_backend(ptr nonnull align 8 %i.a) #12 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = call ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsbi23obv45GP_19pyo3_macros_backend(ptr %0, ptr nonnull %i.d, i64 %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = call ptr @_RINvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrECsbi23obv45GP_19pyo3_macros_backend(ptr %0, ptr %i.g, ptr %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw10rename_allNtBI_18RenamingRuleLitStrEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8
  %.not.i.i = icmp eq i8 %i.d, -1
  br i1 %.not.i.i, label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw10rename_allNtB1e_18RenamingRuleLitStrEENtB2_8ToTokens9to_tokensB1g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw10rename_allNtB5_18RenamingRuleLitStrENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw10rename_allNtB1e_18RenamingRuleLitStrEENtB2_8ToTokens9to_tokensB1g_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw10rename_allNtB1e_18RenamingRuleLitStrEENtB2_8ToTokens9to_tokensB1g_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw10rename_allNtBI_18RenamingRuleLitStrEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens17into_token_streamBK_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %.not.i.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i, label %_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw10rename_allNtBI_18RenamingRuleLitStrEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw10rename_allNtB5_18RenamingRuleLitStrENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw10rename_allNtBI_18RenamingRuleLitStrEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw10rename_allNtBI_18RenamingRuleLitStrEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw11constructorNtNtNtBK_10pyfunction9signature9SignatureEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %.not.i.i = icmp eq i64 %i.c, -1
  br i1 %.not.i.i, label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw11constructorNtNtNtB1g_10pyfunction9signature9SignatureEENtB2_8ToTokens9to_tokensB1g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw11constructorNtNtNtB7_10pyfunction9signature9SignatureENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw11constructorNtNtNtB1g_10pyfunction9signature9SignatureEENtB2_8ToTokens9to_tokensB1g_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw11constructorNtNtNtB1g_10pyfunction9signature9SignatureEENtB2_8ToTokens9to_tokensB1g_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw11constructorNtNtNtBK_10pyfunction9signature9SignatureEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens17into_token_streamBK_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load i64, ptr %1, align 8
  %.not.i.i.i = icmp eq i64 %i.b, -1
  br i1 %.not.i.i.i, label %_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw11constructorNtNtNtBK_10pyfunction9signature9SignatureEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw11constructorNtNtNtB7_10pyfunction9signature9SignatureENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 8 %1, ptr nonnull align 8 %i.a)
          to label %_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw11constructorNtNtNtBK_10pyfunction9signature9SignatureEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3FigHW6Y7TR_11proc_macro211TokenStreamECs4yLFsuhaAhE_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw11constructorNtNtNtBK_10pyfunction9signature9SignatureEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvYRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtBI_2kw3newNtBI_25NewImplTypeAttributeValueEENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens15to_token_streamBK_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCs3FigHW6Y7TR_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = trunc i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw3newNtB1e_25NewImplTypeAttributeValueEENtB2_8ToTokens9to_tokensB1g_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  invoke void @_RNvXsb_NtCsbi23obv45GP_19pyo3_macros_backend10attributesINtB5_16KeywordAttributeNtNtB5_2kw3newNtB5_25NewImplTypeAttributeValueENtNtCs4yLFsuhaAhE_5quote9to_tokens8ToTokens9to_tokensB7_(ptr nonnull align 4 %i.e, ptr nonnull align 8 %i.a)
          to label %_RNvXNtCs4yLFsuhaAhE_5quote9to_tokensRINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsbi23obv45GP_19pyo3_macros_backend10attributes16KeywordAttributeNtNtB1e_2kw3newNtB1e_25NewImplTypeAttributeValueEENtB2_8ToTokens9to_tokensB1g_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
end_hunk_1
