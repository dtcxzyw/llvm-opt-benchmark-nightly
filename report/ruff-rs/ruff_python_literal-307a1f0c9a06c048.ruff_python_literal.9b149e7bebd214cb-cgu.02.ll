Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_literal-307a1f0c9a06c048.ruff_python_literal.9b149e7bebd214cb-cgu.02?download=true
inline.NumInlined: 74
inline.NumDeleted: 42
begin_hunk_0_@_RNvMs1_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_13UnicodeEscape11repr_layout:bb.a
bb.y:                                             ; preds = %bb.w
  %.not.i.i = icmp ne i64 %.sroa.04.2.i, 0
  %i.bj = icmp eq i64 %.sroa.010.1.i, 0
  %or.cond.i42.i = and i1 %i.bj, %.not.i.i
  br label %_RNvNvMs1_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB7_13UnicodeEscape26output_layout_with_checker4stop.exit.i

_RNvNvMs1_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB7_13UnicodeEscape26output_layout_with_checker4stop.exit.i: ; preds = %bb.y, %bb.x
  %.sroa.03.0.shrunk.i.i = phi i1 [ %or.cond.i42.i, %bb.y ], [ %or.cond12.not.i.i, %bb.x ]
  %.sroa.03.0.i.i = zext i1 %.sroa.03.0.shrunk.i.i to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.03.0.i.i, ptr %i.bk, align 8, !alias.scope !124, !noalias !121
  store i64 0, ptr %0, align 8, !alias.scope !124, !noalias !121
  br label %_RINvMs1_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_13UnicodeEscape26output_layout_with_checkerNCNvB2_11repr_layout0EB8_.exit

_RINvMs1_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_13UnicodeEscape26output_layout_with_checkerNCNvB2_11repr_layout0EB8_.exit: ; preds = %bb.l, %bb.m, %_RNvNvMs1_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB7_13UnicodeEscape26output_layout_with_checker4stop.exit.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMs4_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_11AsciiEscape11repr_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp samesign eq i64 %2, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.e
  %i.d = extractvalue { i64, i1 } %i.j, 0         ; 2 uses
  %i.e = icmp eq ptr %i.f, %i.b
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.04.0.i16 = phi i64 [ %.sroa.04.1.i, %bb.b ], [ 0, %bb.a ] ; 7 uses
  %.sroa.010.0.i15 = phi i64 [ %.sroa.010.1.i, %bb.b ], [ 0, %bb.a ] ; 7 uses
  %.sroa.014.0.i14 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.017.0.i13 = phi i64 [ %i.d, %bb.b ], [ 3, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i14, i64 1 ; 2 uses
  %i.g = load i8, ptr %.sroa.014.0.i14, align 1, !alias.scope !131, !noalias !130, !noundef !3 ; 2 uses
  switch i8 %i.g, label %bb.f [
    i8 39, label %bb.c
    i8 34, label %bb.d
    i8 92, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 10, label %bb.e
  ]

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.017.0.i.lcssa = phi i64 [ 3, %bb.a ], [ %i.d, %bb.b ]
  %.sroa.010.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.010.1.i, %bb.b ] ; 3 uses
  %.sroa.04.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.04.1.i, %bb.b ] ; 3 uses
  br i1 %3, label %bb.j, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %i.h = add i64 %.sroa.04.0.i16, 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.i = add i64 %.sroa.010.0.i15, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.c, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.sroa.016.0.i = phi i64 [ 2, %.lr.ph ], [ 2, %.lr.ph ], [ %..i, %bb.f ], [ 1, %bb.c ], [ 1, %bb.d ], [ 2, %.lr.ph ], [ 2, %.lr.ph ]
  %.sroa.010.1.i = phi i64 [ %.sroa.010.0.i15, %.lr.ph ], [ %.sroa.010.0.i15, %.lr.ph ], [ %.sroa.010.0.i15, %bb.f ], [ %.sroa.010.0.i15, %bb.c ], [ %i.i, %bb.d ], [ %.sroa.010.0.i15, %.lr.ph ], [ %.sroa.010.0.i15, %.lr.ph ] ; 4 uses
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.i16, %.lr.ph ], [ %.sroa.04.0.i16, %.lr.ph ], [ %.sroa.04.0.i16, %bb.f ], [ %i.h, %bb.c ], [ %.sroa.04.0.i16, %bb.d ], [ %.sroa.04.0.i16, %.lr.ph ], [ %.sroa.04.0.i16, %.lr.ph ] ; 4 uses
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.sroa.017.0.i13, i64 %.sroa.016.0.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.b, !prof !5

bb.f:                                             ; preds = %.lr.ph
  %i.l = add i8 %i.g, -32
  %or.cond.i = icmp ult i8 %i.l, 95
  %..i = select i1 %or.cond.i, i64 1, i64 4
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not11.i.i = icmp eq i64 %.sroa.010.1.i, 0
  %i.m = icmp ne i64 %.sroa.04.1.i, 0
  %or.cond12.not.i.i = or i1 %.not11.i.i, %i.m
  br label %_RNvNvMs4_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB7_11AsciiEscape26output_layout_with_checker4stop.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp ne i64 %.sroa.04.1.i, 0
  %i.n = icmp eq i64 %.sroa.010.1.i, 0
  %or.cond.i.i = and i1 %i.n, %.not.i.i
  br label %_RNvNvMs4_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB7_11AsciiEscape26output_layout_with_checker4stop.exit.i

_RNvNvMs4_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB7_11AsciiEscape26output_layout_with_checker4stop.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.03.0.shrunk.i.i = phi i1 [ %or.cond.i.i, %bb.i ], [ %or.cond12.not.i.i, %bb.h ]
  %.sroa.03.0.i.i = zext i1 %.sroa.03.0.shrunk.i.i to i8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.03.0.i.i, ptr %i.o, align 8, !alias.scope !132, !noalias !131
  store i64 0, ptr %0, align 8, !alias.scope !132, !noalias !131
  br label %_RINvMs4_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_11AsciiEscape26output_layout_with_checkerNCNvB2_11repr_layout0EB8_.exit

bb.j:                                             ; preds = %._crit_edge
  %.not32.i = icmp eq i64 %.sroa.010.0.i.lcssa, 0
  br i1 %.not32.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %._crit_edge
  %.not.i = icmp eq i64 %.sroa.04.0.i.lcssa, 0
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = icmp eq i64 %.sroa.010.0.i.lcssa, 0      ; 2 uses
  %spec.select34.i = select i1 %i.p, i64 0, i64 %.sroa.04.0.i.lcssa
  %spec.select35.i = select i1 %i.p, i8 1, i8 %i.a
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.q = icmp eq i64 %.sroa.04.0.i.lcssa, 0       ; 2 uses
  %spec.select.i = select i1 %i.q, i64 0, i64 %.sroa.010.0.i.lcssa
  %spec.select33.i = select i1 %i.q, i8 0, i8 %i.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.sroa.028.0.i = phi i64 [ 0, %bb.k ], [ 0, %bb.j ], [ %spec.select.i, %bb.m ], [ %spec.select34.i, %bb.l ]
  %.sroa.0.1.i = phi i8 [ 0, %bb.k ], [ 1, %bb.j ], [ %spec.select33.i, %bb.m ], [ %spec.select35.i, %bb.l ] ; 2 uses
  %i.r = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.sroa.017.0.i.lcssa, i64 %.sroa.028.0.i) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = extractvalue { i64, i1 } %i.r, 0
  %i.u = add i64 %i.t, -3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.0.1.i, ptr %i.v, align 8, !alias.scope !130, !noalias !131
  store i64 1, ptr %0, align 8, !alias.scope !130, !noalias !131
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.w, align 8, !alias.scope !130, !noalias !131
  br label %_RINvMs4_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_11AsciiEscape26output_layout_with_checkerNCNvB2_11repr_layout0EB8_.exit

bb.p:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.0.1.i, ptr %i.x, align 8, !alias.scope !130, !noalias !131
  store i64 0, ptr %0, align 8, !alias.scope !130, !noalias !131
  br label %_RINvMs4_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_11AsciiEscape26output_layout_with_checkerNCNvB2_11repr_layout0EB8_.exit

_RINvMs4_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_11AsciiEscape26output_layout_with_checkerNCNvB2_11repr_layout0EB8_.exit: ; preds = %_RNvNvMs4_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB7_11AsciiEscape26output_layout_with_checker4stop.exit.i, %bb.o, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_9BytesRepr9to_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !3, !align !6, !noundef !3 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !range !7, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = trunc nuw i64 %i.g to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.k = load i64, ptr %i.d, align 8, !range !7, !noundef !3
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !8, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f, !prof !5

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #13
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.r = icmp ule i64 %i.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.n, ptr %i.e, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.q, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 11 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i8, ptr %i.s, align 8, !range !4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !4, !noalias !172, !noundef !3 ; 2 uses
  %2 = icmp eq i8 %.val8, 0
  %i.v = or disjoint i8 %i.u, 2
  %.sroa.01.1.i = select i1 %2, i8 %i.v, i8 %i.u  ; 2 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
          to label %.noexc9 unwind label %bb.m

.noexc9:                                          ; preds = %bb.f
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !173, !nonnull !3, !noundef !3
  store i8 98, ptr %i.w, align 1
  store i64 1, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !173
  %i.x = invoke { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes17BytesLiteralFlagsNtB4_11StringFlags9quote_strCsdjunURa2XPj_19ruff_python_literal(i8 noundef %.sroa.01.1.i)
          to label %.noexc10 unwind label %bb.m   ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %i.y = extractvalue { ptr, i64 } %i.x, 1        ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.y)
          to label %.noexc11 unwind label %bb.m

.noexc11:                                         ; preds = %.noexc10
  %i.z = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !174, !noalias !175, !noundef !3 ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc11
  %i.ab = extractvalue { ptr, i64 } %i.x, 0
  %i.ac = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !174, !noalias !175, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %i.ab, i64 %i.y, i1 false)
  %.pre.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !174, !noalias !175
  br label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.i

_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.i: ; preds = %bb.g, %.noexc11
  %i.ae = phi i64 [ %.pre.i.i.i.i, %bb.g ], [ %i.z, %.noexc11 ]
  %i.af = add i64 %i.ae, %i.y
  store i64 %i.af, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !174, !noalias !175
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.val.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !178, !noalias !179, !noundef !3 ; 2 uses
  %i.ah = load i64, ptr %i.f, align 8, !range !7, !alias.scope !178, !noalias !179, !noundef !3
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = load i64, ptr %i.h, align 8, !alias.scope !178, !noalias !179
  %i.ak = icmp eq i64 %i.aj, %.val.i.i.i
  %.sroa.0.0.i.not.i.i = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %.sroa.0.0.i.not.i.i, label %bb.h, label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.i

bb.h:                                             ; preds = %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val.i.i = load ptr, ptr %i.al, align 8, !alias.scope !176, !noalias !179, !nonnull !3, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !181
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val.i.i.i)
          to label %.noexc12 unwind label %bb.m

.noexc12:                                         ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.am = load i64, ptr %i.c, align 8, !range !7, !alias.scope !182, !noalias !181, !noundef !3
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsdjunURa2XPj_19ruff_python_literal.exit.i.i.i, !prof !5

bb.i:                                             ; preds = %.noexc12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !183
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !noalias !181
  br label %.invoke

.invoke:                                          ; preds = %.noexc15, %bb.i
  %i.ap = phi ptr [ @6, %bb.i ], [ @11, %.noexc15 ]
  %i.aq = phi i64 [ 11, %bb.i ], [ 43, %.noexc15 ]
  %i.ar = phi ptr [ %i.b, %bb.i ], [ %i.a, %.noexc15 ]
  %i.as = phi ptr [ @9, %bb.i ], [ @10, %.noexc15 ]
  %i.at = phi ptr [ @8, %bb.i ], [ @12, %.noexc15 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.aq, ptr noundef nonnull %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at) #13
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsdjunURa2XPj_19ruff_python_literal.exit.i.i.i: ; preds = %.noexc12
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !182, !noalias !181, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !182, !noalias !181, !noundef !3 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !181
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ax)
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsdjunURa2XPj_19ruff_python_literal.exit.i.i.i
  %i.ay = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !184, !noalias !185, !noundef !3 ; 3 uses
  %i.az = icmp sgt i64 %i.ay, -1
  call void @llvm.assume(i1 %i.az)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i, label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.noexc14
  %i.ba = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !184, !noalias !185, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %i.av, i64 %i.ax, i1 false), !noalias !176
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !184, !noalias !185
  br label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.thread.i

_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.thread.i: ; preds = %bb.j, %.noexc14
  %i.bc = phi i64 [ %.pre.i.i.i.i.i.i, %bb.j ], [ %i.ay, %.noexc14 ]
  %i.bd = add i64 %i.bc, %i.ax
  store i64 %i.bd, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !184, !noalias !185
  br label %bb.k

_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.i: ; preds = %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.i
  %i.be = invoke fastcc noundef zeroext i1 @_RINvXs5_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_11AsciiEscapeNtB6_6Escape15write_body_slowNtNtCscdodAO9FK5_5alloc6string6StringEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc15 unwind label %bb.m

.noexc15:                                         ; preds = %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.i
  br i1 %i.be, label %.invoke, label %bb.k, !prof !9

bb.k:                                             ; preds = %.noexc15, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.thread.i
  %i.bf = invoke { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes17BytesLiteralFlagsNtB4_11StringFlags9quote_strCsdjunURa2XPj_19ruff_python_literal(i8 noundef %.sroa.01.1.i)
          to label %.noexc16 unwind label %bb.m   ; 2 uses

.noexc16:                                         ; preds = %bb.k
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1      ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bg)
          to label %.noexc17 unwind label %bb.m

.noexc17:                                         ; preds = %.noexc16
  %i.bh = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !186, !noalias !187, !noundef !3 ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bi)
  %.not.i.i.i7.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i7.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.noexc17
  %i.bj = extractvalue { ptr, i64 } %i.bf, 0
  %i.bk = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !186, !noalias !187, !nonnull !3, !noundef !3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull readonly align 1 %i.bj, i64 %i.bg, i1 false)
  %.pre.i.i.i8.i = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !186, !noalias !187
  br label %bb.n

bb.m:                                             ; preds = %.invoke, %.noexc16, %bb.k, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsdjunURa2XPj_19ruff_python_literal.exit.i.i.i, %bb.h, %.noexc10, %.noexc9, %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24) %i.e) #14
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %.noexc17, %bb.l
  %i.bn = phi i64 [ %.pre.i.i.i8.i, %bb.l ], [ %i.bh, %.noexc17 ]
  %i.bo = add i64 %i.bn, %i.bg
  store i64 %i.bo, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !186, !noalias !187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.d

bb.o:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.p:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.bm
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB4_7StrRepr9to_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !nonnull !3, !align !6, !noundef !3 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !range !7, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.i = load i64, ptr %i.b, align 8, !range !7, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !8, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f, !prof !5

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #13
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.p = icmp ule i64 %i.g, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.l, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.o, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i8, ptr %i.q, align 8, !range !4, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !4, !noalias !221, !noundef !3 ; 2 uses
  %2 = icmp eq i8 %.val8, 0
  %i.t = or disjoint i8 %i.s, 2
  %.sroa.01.1.i = select i1 %2, i8 %i.t, i8 %i.s  ; 2 uses
  %i.u = invoke { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags9quote_strCsdjunURa2XPj_19ruff_python_literal(i8 noundef %.sroa.01.1.i)
          to label %.noexc9 unwind label %bb.l    ; 2 uses

.noexc9:                                          ; preds = %bb.f
  %i.v = extractvalue { ptr, i64 } %i.u, 1        ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.v)
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %.noexc9
  %i.w = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !222, !noalias !223, !noundef !3 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.x)
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc10
  %i.y = extractvalue { ptr, i64 } %i.u, 0
  %i.z = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !222, !noalias !223, !nonnull !3, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.y, i64 %i.v, i1 false)
  %.pre.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !222, !noalias !223
  br label %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.i

_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.i: ; preds = %bb.g, %.noexc10
  %i.ab = phi i64 [ %.pre.i.i.i.i, %bb.g ], [ %i.w, %.noexc10 ]
  %i.ac = add i64 %i.ab, %i.v
  store i64 %i.ac, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !222, !noalias !223
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !226, !noalias !227, !noundef !3 ; 5 uses
  %i.ae = load i64, ptr %i.d, align 8, !range !7, !alias.scope !226, !noalias !227, !noundef !3
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = load i64, ptr %i.f, align 8, !alias.scope !226, !noalias !227
  %i.ah = icmp eq i64 %i.ag, %.val.i.i.i
  %.sroa.0.0.i.not.i.i = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %.sroa.0.0.i.not.i.i, label %bb.h, label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.i

bb.h:                                             ; preds = %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !224, !noalias !227, !nonnull !3, !noundef !3
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.val.i.i.i)
          to label %.noexc11 unwind label %bb.l

.noexc11:                                         ; preds = %bb.h
  %i.aj = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !228, !noalias !229, !noundef !3 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ak)
  %.not.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.noexc11
  %i.al = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !228, !noalias !229, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %.val.i.i, i64 %.val.i.i.i, i1 false), !noalias !224
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !228, !noalias !229
  br label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.thread.i

_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.thread.i: ; preds = %bb.i, %.noexc11
  %i.an = phi i64 [ %.pre.i.i.i.i.i.i, %bb.i ], [ %i.aj, %.noexc11 ]
  %i.ao = add i64 %i.an, %.val.i.i.i
  store i64 %i.ao, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !228, !noalias !229
  br label %bb.j

_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.i: ; preds = %_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str.exit.i
  %i.ap = invoke fastcc noundef zeroext i1 @_RINvXs2_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_13UnicodeEscapeNtB6_6Escape15write_body_slowNtNtCscdodAO9FK5_5alloc6string6StringEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc12 unwind label %bb.l

.noexc12:                                         ; preds = %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.i
  br i1 %i.ap, label %bb.m, label %bb.j, !prof !9

bb.j:                                             ; preds = %.noexc12, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.thread.i
  %i.aq = invoke { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags9quote_strCsdjunURa2XPj_19ruff_python_literal(i8 noundef %.sroa.01.1.i)
          to label %.noexc13 unwind label %bb.l   ; 2 uses

.noexc13:                                         ; preds = %bb.j
  %i.ar = extractvalue { ptr, i64 } %i.aq, 1      ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ar)
          to label %.noexc14 unwind label %bb.l

.noexc14:                                         ; preds = %.noexc13
  %i.as = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !230, !noalias !231, !noundef !3 ; 3 uses
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  %.not.i.i.i7.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i7.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.noexc14
  %i.au = extractvalue { ptr, i64 } %i.aq, 0
  %i.av = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !230, !noalias !231, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull readonly align 1 %i.au, i64 %i.ar, i1 false)
  %.pre.i.i.i8.i = load i64, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !230, !noalias !231
  br label %bb.n

bb.l:                                             ; preds = %.noexc13, %bb.j, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCscdodAO9FK5_5alloc6string6StringEB7_.exit.i, %bb.h, %.noexc9, %bb.f, %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24) %i.c) #14
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %.noexc12
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #13
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.noexc14, %bb.k
  %i.ay = phi i64 [ %.pre.i.i.i8.i, %bb.k ], [ %i.as, %.noexc14 ]
  %i.az = add i64 %i.ay, %i.ar
  store i64 %i.az, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !230, !noalias !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.d

bb.o:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.p:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.ax
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_7StrReprNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !align !6, !noundef !3 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !4, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noalias !239, !noundef !3 ; 2 uses
  %2 = icmp eq i8 %.val1, 0
  %i.d = or disjoint i8 %i.c, 2
  %.sroa.01.1.i = select i1 %2, i8 %i.d, i8 %i.c  ; 2 uses
  %i.e = tail call { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags9quote_strCsdjunURa2XPj_19ruff_python_literal(i8 noundef %.sroa.01.1.i), !noalias !239 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  %i.h = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.g)
  br i1 %i.h, label %_RINvMs_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_7StrRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.val.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !241, !noalias !242, !noundef !3 ; 2 uses
  %i.j = load i64, ptr %.val, align 8, !range !7, !alias.scope !241, !noalias !242, !noundef !3
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !241, !noalias !242
  %i.n = icmp eq i64 %i.m, %.val.i.i.i
  %.sroa.0.0.i.not.i.i = select i1 %i.k, i1 %i.n, i1 false
  br i1 %.sroa.0.0.i.not.i.i, label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.o = tail call fastcc noundef zeroext i1 @_RINvXs2_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_13UnicodeEscapeNtB6_6Escape15write_body_slowNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.o, label %_RINvMs_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_7StrRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit, label %bb.c

_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !240, !noalias !242, !nonnull !3, !noundef !3
  %i.q = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val.i.i.i), !noalias !240
  br i1 %i.q, label %_RINvMs_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_7StrRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit.i, %.split.i
  %i.r = tail call { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags9quote_strCsdjunURa2XPj_19ruff_python_literal(i8 noundef %.sroa.01.1.i) ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  %i.u = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t)
  br label %_RINvMs_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_7StrRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit

_RINvMs_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_7StrRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit: ; preds = %bb.a, %.split.i, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit.i, %bb.c
  %.sroa.0.0.i = phi i1 [ true, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape13UnicodeEscapeNtB5_6Escape10write_bodyNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit.i ], [ true, %bb.a ], [ %i.u, %bb.c ], [ true, %.split.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB5_9BytesReprNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !align !6, !noundef !3 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.c, align 8, !range !4, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !4, !noalias !254, !noundef !3 ; 2 uses
  %2 = icmp eq i8 %.val1, 0
  %i.f = or disjoint i8 %i.e, 2
  %.sroa.01.1.i = select i1 %2, i8 %i.f, i8 %i.e  ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 98)
  br i1 %i.g, label %_RINvMs6_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_9BytesRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes17BytesLiteralFlagsNtB4_11StringFlags9quote_strCsdjunURa2XPj_19ruff_python_literal(i8 noundef %.sroa.01.1.i) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %i.k = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.j)
  br i1 %i.k, label %_RINvMs6_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_9BytesRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.val.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !256, !noalias !257, !noundef !3 ; 2 uses
  %i.m = load i64, ptr %.val, align 8, !range !7, !alias.scope !256, !noalias !257, !noundef !3
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !256, !noalias !257
  %i.q = icmp eq i64 %i.p, %.val.i.i.i
  %.sroa.0.0.i.not.i.i = select i1 %i.n, i1 %i.q, i1 false
  br i1 %.sroa.0.0.i.not.i.i, label %bb.d, label %.split.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i = load ptr, ptr %i.r, align 8, !alias.scope !255, !noalias !257, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !258
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val.i.i.i), !noalias !259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.s = load i64, ptr %i.b, align 8, !range !7, !alias.scope !260, !noalias !258, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.e, label %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !261
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !258
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !262
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.v = tail call fastcc noundef zeroext i1 @_RINvXs5_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_11AsciiEscapeNtB6_6Escape15write_body_slowNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.v, label %_RINvMs6_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_9BytesRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB8_.exit, label %bb.f

_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit.i: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !260, !noalias !258, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !260, !noalias !258, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !258
  %i.aa = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z), !noalias !255
  br i1 %i.aa, label %_RINvMs6_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_9BytesRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB8_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit.i, %.split.i
  %i.ab = tail call { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes17BytesLiteralFlagsNtB4_11StringFlags9quote_strCsdjunURa2XPj_19ruff_python_literal(i8 noundef %.sroa.01.1.i) ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  %i.ae = tail call noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
  br label %_RINvMs6_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_9BytesRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB8_.exit

_RINvMs6_NtCsdjunURa2XPj_19ruff_python_literal6escapeNtB6_9BytesRepr5writeNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB8_.exit: ; preds = %bb.a, %bb.b, %.split.i, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit.i, %bb.f
  %.sroa.0.0.i = phi i1 [ true, %_RINvYNtNtCsdjunURa2XPj_19ruff_python_literal6escape11AsciiEscapeNtB5_6Escape10write_bodyNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEB7_.exit.i ], [ true, %bb.a ], [ true, %bb.b ], [ %i.ae, %bb.f ], [ true, %.split.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 11, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsdjunURa2XPj_19ruff_python_literal4char12is_printable(i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes17BytesLiteralFlagsNtB4_11StringFlags9quote_strCsdjunURa2XPj_19ruff_python_literal(i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags9quote_strCsdjunURa2XPj_19ruff_python_literal(i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjunURa2XPj_19ruff_python_literal(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0
end_hunk_0
