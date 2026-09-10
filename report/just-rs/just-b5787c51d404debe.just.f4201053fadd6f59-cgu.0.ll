Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 598
loop-unroll.NumUnrolled: 723
begin_hunk_0_@_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer11presume_str:.lr.ph
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i
  %.sroa.0.1.ph = phi ptr [ %i.j, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i ], [ %i.s, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i ], [ %i.ac, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.o, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i ], [ %i.z, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i ], [ %i.ak, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i ], [ %i.q, %bb.b ] ; 2 uses
  %i.al = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer7presume(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef align 8 dereferenceable(208) %1, i32 noundef %.sroa.4.0.i.ph)
  %i.am = load i8, ptr %i.c, align 8, !range !45, !noundef !28
  %.not = icmp eq i8 %i.am, -1
  br i1 %.not, label %bb.f, label %bb.e

._crit_edge:                                      ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 -1, ptr %i.an, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = icmp eq ptr %.sroa.0.1.ph, %i.b
  br i1 %i.ao, label %._crit_edge, label %bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer13lex_delimiter(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(208) %1, i8 noundef range(i8 8, 34) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [128 x i8], align 8               ; 5 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %i.e = alloca [128 x i8], align 8               ; 8 uses
  %i.f = alloca [128 x i8], align 8               ; 5 uses
  %i.g = alloca [128 x i8], align 8               ; 8 uses
  %i.h = alloca [128 x i8], align 8               ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 8 uses
  %i.k = alloca [80 x i8], align 8                ; 8 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %i.m = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %2, ptr %i.m, align 1
  switch i8 %2, label %.split [
    i8 8, label %bb.f
    i8 9, label %bb.h
    i8 10, label %bb.l
    i8 11, label %bb.n
    i8 32, label %bb.r
    i8 33, label %bb.t
  ]

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.m, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXNtCskXtk6F4WjxZ_4just10token_kindNtB2_9TokenKindNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !40929
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @852, ptr noundef nonnull %i.i), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !40930)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !40930, !noalias !40931, !nonnull !28, !noundef !28
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !40930, !noalias !40931, !noundef !28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.u = load <2 x i64>, ptr %i.t, align 8, !alias.scope !40930, !noalias !40931
  %i.v = load i64, ptr %i.s, align 8, !alias.scope !40930, !noalias !40931, !noundef !28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !40930, !noalias !40931, !nonnull !28, !noundef !28
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !40930, !noalias !40931, !noundef !28
  store i64 -9223372036854775761, ptr %i.h, align 8, !noalias !40929
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !40932
  %i.aa = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !40932 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.b, label %_RINvMNtCskXtk6F4WjxZ_4just5lexerNtB3_5Lexer14internal_errorNtNtCs4wP2HXfJTCR_5alloc6string6StringEB5_.exit, !prof !26

bb.b:                                             ; preds = %.split
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #71
          to label %.noexc.i.i unwind label %bb.c, !noalias !40933

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.h) #72
          to label %bb.e unwind label %bb.d, !noalias !40934

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !40934
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.ac

_RINvMNtCskXtk6F4WjxZ_4just5lexerNtB3_5Lexer14internal_errorNtNtCs4wP2HXfJTCR_5alloc6string6StringEB5_.exit: ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.aa, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false), !noalias !40934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !40929
  store ptr %i.aa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.r, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.u, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 40, ptr %.sroa.12.0..sroa_idx, align 8
  br label %bb.ac

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40935)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !40935, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40936)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !40937, !noalias !40938, !noundef !28 ; 3 uses
  %i.aj = load i64, ptr %i.ae, align 8, !range !43, !alias.scope !40937, !noalias !40938, !noundef !28
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.g, label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCskXtk6F4WjxZ_4just9delimiter9DelimiterjEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae) #74, !noalias !40938
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit

_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit: ; preds = %bb.f, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !40937, !noalias !40938, !nonnull !28, !noundef !28
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ai ; 2 uses
  store i8 2, ptr %i.an, align 8, !noalias !40937
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.ag, ptr %.sroa.51.0..sroa_idx.i, align 8, !noalias !40937
  %i.ao = add i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !40937, !noalias !40938
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40940)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !40940, !noalias !40939, !noundef !28 ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !40941
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 2, ptr %i.as, align 8, !noalias !40941
  store i64 -9223372036854775730, ptr %i.f, align 8, !noalias !40941
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer5error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40941
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = add nsw i64 %i.aq, -1                   ; 3 uses
  store i64 %i.au, ptr %i.ap, align 8, !alias.scope !40940, !noalias !40939
  %i.av = load i64, ptr %i.at, align 8, !range !43, !alias.scope !40940, !noalias !40939, !noundef !28
  %i.aw = icmp samesign ult i64 %i.au, %i.av
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !40940, !noalias !40939, !nonnull !28, !noundef !28
  %i.az = icmp ult i64 %i.aq, 576460752303423489
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.au ; 3 uses
  %.sroa.015.0.copyload.i = load i8, ptr %i.ba, align 8, !noalias !40941 ; 3 uses
  %i.bb = icmp ne i8 %.sroa.015.0.copyload.i, 4
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp eq i8 %.sroa.015.0.copyload.i, 2
  br i1 %i.bc, label %3, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.6.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i12, align 8, !noalias !40941
  %.sroa.4.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i11, align 1, !noalias !40941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !40941
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 2, ptr %i.bd, align 8, !noalias !40941
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  store i8 %.sroa.015.0.copyload.i, ptr %i.be, align 2, !noalias !40941
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  store i8 %.sroa.4.0.copyload.i, ptr %i.bf, align 1, !noalias !40941
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.6.0.copyload.i, ptr %i.bg, align 8, !noalias !40941
  store i64 -9223372036854775749, ptr %i.g, align 8, !noalias !40941
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer5error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !40941
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit

3:                                                ; preds = %bb.j
  %4 = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i8 -1, ptr %4, align 8, !alias.scope !40939, !noalias !40940
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit

_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit: ; preds = %bb.i, %bb.k, %3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.bi = load i8, ptr %i.bh, align 8, !range !45, !noundef !28
  %.not7 = icmp eq i8 %i.bi, -1
  br i1 %.not7, label %bb.ab, label %bb.aa

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40942)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !40942, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40943)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !40944, !noalias !40945, !noundef !28 ; 3 uses
  %i.bo = load i64, ptr %i.bj, align 8, !range !43, !alias.scope !40944, !noalias !40945, !noundef !28
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.m, label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit15

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCskXtk6F4WjxZ_4just9delimiter9DelimiterjEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj) #74, !noalias !40945
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit15

_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit15: ; preds = %bb.l, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !40944, !noalias !40945, !nonnull !28, !noundef !28
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bn ; 2 uses
  store i8 3, ptr %i.bs, align 8, !noalias !40944
  %.sroa.51.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.bl, ptr %.sroa.51.0..sroa_idx.i14, align 8, !noalias !40944
  %i.bt = add i64 %i.bn, 1
  store i64 %i.bt, ptr %i.bm, align 8, !alias.scope !40944, !noalias !40945
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40947)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !40947, !noalias !40946, !noundef !28 ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40948
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 3, ptr %i.bx, align 8, !noalias !40948
  store i64 -9223372036854775730, ptr %i.d, align 8, !noalias !40948
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer5error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40948
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit23

bb.p:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bz = add nsw i64 %i.bv, -1                   ; 3 uses
  store i64 %i.bz, ptr %i.bu, align 8, !alias.scope !40947, !noalias !40946
  %i.ca = load i64, ptr %i.by, align 8, !range !43, !alias.scope !40947, !noalias !40946, !noundef !28
  %i.cb = icmp samesign ult i64 %i.bz, %i.ca
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !40947, !noalias !40946, !nonnull !28, !noundef !28
  %i.ce = icmp ult i64 %i.bv, 576460752303423489
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.bz ; 3 uses
  %.sroa.015.0.copyload.i16 = load i8, ptr %i.cf, align 8, !noalias !40948 ; 3 uses
  %i.cg = icmp ne i8 %.sroa.015.0.copyload.i16, 4
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp eq i8 %.sroa.015.0.copyload.i16, 3
  br i1 %i.ch, label %5, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.6.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.6.0.copyload.i20 = load i64, ptr %.sroa.6.0..sroa_idx.i19, align 8, !noalias !40948
  %.sroa.4.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %.sroa.4.0.copyload.i18 = load i8, ptr %.sroa.4.0..sroa_idx.i17, align 1, !noalias !40948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40948
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 3, ptr %i.ci, align 8, !noalias !40948
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i8 %.sroa.015.0.copyload.i16, ptr %i.cj, align 2, !noalias !40948
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  store i8 %.sroa.4.0.copyload.i18, ptr %i.ck, align 1, !noalias !40948
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.6.0.copyload.i20, ptr %i.cl, align 8, !noalias !40948
  store i64 -9223372036854775749, ptr %i.e, align 8, !noalias !40948
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer5error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40948
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit23

5:                                                ; preds = %bb.p
  %6 = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i8 -1, ptr %6, align 8, !alias.scope !40946, !noalias !40947
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit23

_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit23: ; preds = %bb.o, %bb.q, %5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.cn = load i8, ptr %i.cm, align 8, !range !45, !noundef !28
  %.not6 = icmp eq i8 %i.cn, -1
  br i1 %.not6, label %bb.ae, label %bb.ad

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40949)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !40949, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40950)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !40951, !noalias !40952, !noundef !28 ; 3 uses
  %i.ct = load i64, ptr %i.co, align 8, !range !43, !alias.scope !40951, !noalias !40952, !noundef !28
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.s, label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit26

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCskXtk6F4WjxZ_4just9delimiter9DelimiterjEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co) #74, !noalias !40952
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit26

_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit26: ; preds = %bb.r, %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !40951, !noalias !40952, !nonnull !28, !noundef !28
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cs ; 2 uses
  store i8 5, ptr %i.cx, align 8, !noalias !40951
  %.sroa.51.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.cq, ptr %.sroa.51.0..sroa_idx.i25, align 8, !noalias !40951
  %i.cy = add i64 %i.cs, 1
  store i64 %i.cy, ptr %i.cr, align 8, !alias.scope !40951, !noalias !40952
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40954)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !40954, !noalias !40953, !noundef !28 ; 3 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40955
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 5, ptr %i.dc, align 8, !noalias !40955
  store i64 -9223372036854775730, ptr %i.b, align 8, !noalias !40955
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer5error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40955
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit34

bb.v:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.de = add nsw i64 %i.da, -1                   ; 3 uses
  store i64 %i.de, ptr %i.cz, align 8, !alias.scope !40954, !noalias !40953
  %i.df = load i64, ptr %i.dd, align 8, !range !43, !alias.scope !40954, !noalias !40953, !noundef !28
  %i.dg = icmp samesign ult i64 %i.de, %i.df
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !40954, !noalias !40953, !nonnull !28, !noundef !28
  %i.dj = icmp ult i64 %i.da, 576460752303423489
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.de ; 3 uses
  %.sroa.015.0.copyload.i27 = load i8, ptr %i.dk, align 8, !noalias !40955 ; 3 uses
  %i.dl = icmp ne i8 %.sroa.015.0.copyload.i27, 4
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp eq i8 %.sroa.015.0.copyload.i27, 5
  br i1 %i.dm, label %7, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.6.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.6.0.copyload.i31 = load i64, ptr %.sroa.6.0..sroa_idx.i30, align 8, !noalias !40955
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %.sroa.4.0.copyload.i29 = load i8, ptr %.sroa.4.0..sroa_idx.i28, align 1, !noalias !40955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40955
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 5, ptr %i.dn, align 8, !noalias !40955
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i8 %.sroa.015.0.copyload.i27, ptr %i.do, align 2, !noalias !40955
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  store i8 %.sroa.4.0.copyload.i29, ptr %i.dp, align 1, !noalias !40955
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.copyload.i31, ptr %i.dq, align 8, !noalias !40955
  store i64 -9223372036854775749, ptr %i.c, align 8, !noalias !40955
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer5error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40955
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit34

7:                                                ; preds = %bb.v
  %8 = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i8 -1, ptr %8, align 8, !alias.scope !40953, !noalias !40954
  br label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit34

_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit34: ; preds = %bb.u, %bb.w, %7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ds = load i8, ptr %i.dr, align 8, !range !45, !noundef !28
  %.not = icmp eq i8 %i.ds, -1
  br i1 %.not, label %bb.ag, label %bb.af

bb.x:                                             ; preds = %bb.ag, %bb.ae, %bb.ab, %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit26, %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit15, %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !40956)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40957
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer7advance(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %1), !noalias !40958
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.du = load i8, ptr %i.dt, align 8, !range !45, !noalias !40957, !noundef !28 ; 2 uses
  %.not.i = icmp eq i8 %i.du, -1
  br i1 %.not.i, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40957
  call void @llvm.experimental.noalias.scope.decl(metadata !40959)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !40960, !noalias !40958, !noundef !28
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !40960, !noalias !40958, !noundef !28
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ec = load i64, ptr %i.ea, align 8, !alias.scope !40960, !noalias !40958, !noundef !28
  %i.ed = load <2 x i64>, ptr %i.eb, align 8, !alias.scope !40960, !noalias !40958
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !40960, !noalias !40958, !nonnull !28, !noundef !28
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !40960, !noalias !40958, !noundef !28
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !40960, !noalias !40958, !nonnull !28, !noundef !28
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !40960, !noalias !40958, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !40961)
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !40962, !noalias !40963, !noundef !28 ; 3 uses
  %i.eo = load i64, ptr %i.dv, align 8, !range !43, !alias.scope !40962, !noalias !40963, !noundef !28
  %i.ep = icmp eq i64 %i.en, %i.eo
  br i1 %i.ep, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCskXtk6F4WjxZ_4just5token5TokenE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv) #74, !noalias !40963
  br label %bb.ai

bb.aa:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ac

bb.ab:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.x

bb.ac:                                            ; preds = %_RINvMNtCskXtk6F4WjxZ_4just5lexerNtB3_5Lexer14internal_errorNtNtCs4wP2HXfJTCR_5alloc6string6StringEB5_.exit, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.aa
  ret void

bb.ad:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ac

bb.ae:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.af:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ac

bb.ag:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.ah:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %.sroa.741.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.557.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.741.0..sroa_idx42, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40957
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.du, ptr %.sroa.456.0..sroa_idx, align 8
  br label %bb.ac

bb.ai:                                            ; preds = %bb.y, %bb.z
  %i.eq = sub i64 %i.dz, %i.ec
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !40962, !noalias !40963, !nonnull !28, !noundef !28
  %i.eu = getelementptr inbounds nuw [72 x i8], ptr %i.et, i64 %i.en ; 8 uses
  store ptr %i.ef, ptr %i.eu, align 8, !noalias !40964
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %i.eh, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !40964
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr %i.ej, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !40964
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store i64 %i.el, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !40964
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store i64 %i.dx, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !40964
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store i64 %i.eq, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !40964
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  store <2 x i64> %i.ed, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !40964
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  store i8 %2, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !40964
  %i.ev = add i64 %i.en, 1
  store i64 %i.ev, ptr %i.em, align 8, !alias.scope !40962, !noalias !40963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.er, i64 24, i1 false), !alias.scope !40960, !noalias !40958
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 -1, ptr %i.ew, align 8
  br label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer14open_delimiter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, i8 noundef range(i8 0, 6) %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i64, ptr %i.b, align 8, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40968)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !40968, !noalias !40969, !noundef !28 ; 3 uses
  %i.f = load i64, ptr %i.a, align 8, !range !43, !alias.scope !40968, !noalias !40969, !noundef !28
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCskXtk6F4WjxZ_4just9delimiter9DelimiterjEE8push_mutBK_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtCskXtk6F4WjxZ_4just9delimiter9DelimiterjEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #74, !noalias !40969
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCskXtk6F4WjxZ_4just9delimiter9DelimiterjEE8push_mutBK_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtCskXtk6F4WjxZ_4just9delimiter9DelimiterjEE8push_mutBK_.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !40968, !noalias !40969, !nonnull !28, !noundef !28
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.e ; 3 uses
  store i8 %1, ptr %i.j, align 8, !noalias !40968
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %2, ptr %.sroa.4.0..sroa_idx, align 1, !noalias !40968
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.c, ptr %.sroa.51.0..sroa_idx, align 8, !noalias !40968
  %i.k = add i64 %i.e, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !40968, !noalias !40969
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer15close_delimiter(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(208) %1, i8 noundef range(i8 0, 6) %2, i8 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !28 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %3, ptr %i.g, align 1
  store i64 -9223372036854775730, ptr %i.a, align 8
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = add nsw i64 %i.d, -1                     ; 3 uses
  store i64 %i.i, ptr %i.c, align 8
  %i.j = load i64, ptr %i.h, align 8, !range !43, !noundef !28
  %i.k = icmp samesign ult i64 %i.i, %i.j
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28
  %i.n = icmp ult i64 %i.d, 576460752303423489
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.i ; 3 uses
  %.sroa.015.0.copyload = load i8, ptr %i.o, align 8 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.p = icmp ne i8 %.sroa.015.0.copyload, 4
  tail call void @llvm.assume(i1 %i.p)
  %.inv = icmp ult i8 %.sroa.015.0.copyload, 2    ; 2 uses
  %i.q = icmp ne i8 %2, 4
  tail call void @llvm.assume(i1 %i.q)
  %.inv19 = icmp samesign ult i8 %2, 2
  %4 = select i1 %.inv, i8 4, i8 %.sroa.015.0.copyload
  %narrow18 = select i1 %.inv19, i8 4, i8 %2
  %i.r = icmp eq i8 %4, %narrow18
  br i1 %i.r, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  br i1 %.inv, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i8 %.sroa.015.0.copyload, %2
  %i.t = icmp eq i8 %.sroa.4.0.copyload, %3
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 %3, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i8 %.sroa.015.0.copyload, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  store i8 %.sroa.4.0.copyload, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.6.0.copyload, ptr %i.y, align 8
  store i64 -9223372036854775749, ptr %i.b, align 8
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 -1, ptr %i.z, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer16rest_starts_with(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 1, 5) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40977)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !40977, !nonnull !28, !noundef !28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !40977, !noundef !28 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !40977, !noundef !28 ; 7 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer4rest.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i64 %i.f, %i.d
  br i1 %.not.i.i, label %bb.c, label %.split.i.i

.split.i.i:                                       ; preds = %bb.b
  %i.h = icmp eq i64 %i.f, %i.d
  br i1 %i.h, label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer4rest.exit, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !40978, !noalias !40977, !noundef !28
  %i.k = icmp sgt i8 %i.j, -65
  br i1 %i.k, label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer4rest.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #75, !noalias !40977
  unreachable

_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer4rest.exit: ; preds = %bb.a, %.split.i.i, %bb.c
  %i.l = sub nuw i64 %i.d, %i.f
  %.not.i = icmp samesign ult i64 %i.l, %2
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer4rest.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.m, i64 range(i64 0, -9223372036854775808) %2), !alias.scope !40979
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer4rest.exit, %bb.e
  %.sroa.0.0.i = phi i1 [ %i.n, %bb.e ], [ false, %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer4rest.exit ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer5error(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 5 uses
  %i.b = load i64, ptr %2, align 8, !range !94, !noundef !28 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775788
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.b, 9223372036854775802
  %i.e = icmp ugt i64 %i.b, -9223372036854775803
  %i.f = select i1 %i.e, i64 %i.d, i64 14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  switch i64 %i.f, label %bb.b [
    i64 88, label %bb.g
    i64 90, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41000)
  %i.k = load ptr, ptr %i.g, align 8, !alias.scope !41000, !nonnull !28, !noundef !28 ; 6 uses
  %i.l = load i64, ptr %i.h, align 8, !alias.scope !41000, !noundef !28 ; 7 uses
  %i.m = load i64, ptr %i.i, align 8, !alias.scope !41000, !noundef !28 ; 9 uses
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !41000, !noundef !28 ; 8 uses
  %i.o = icmp ugt i64 %i.m, %i.n
  %i.p = icmp ugt i64 %i.n, %i.l
  %or.cond.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.invoke, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.m, %i.l
  br i1 %i.q, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.s = icmp eq i64 %i.n, %i.l
  br i1 %i.s, label %bb.x, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !41001, !noalias !41000, !noundef !28
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %bb.e, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.invoke, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !41001, !noalias !41000, !noundef !28
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %bb.x, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.invoke, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.invoke: ; preds = %bb.o, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i17, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i12, %bb.k, %bb.g, %bb.b, %bb.f, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i
  %i.z = phi ptr [ %i.k, %bb.f ], [ %i.k, %bb.b ], [ %i.k, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i ], [ %i.ad, %bb.g ], [ %i.ad, %bb.k ], [ %i.ad, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i12 ], [ %i.ad, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i17 ], [ %i.ad, %bb.o ]
  %i.aa = phi i64 [ %i.l, %bb.f ], [ %i.l, %bb.b ], [ %i.l, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i ], [ %i.ae, %bb.g ], [ %i.ae, %bb.k ], [ %i.ae, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i12 ], [ %i.ae, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i17 ], [ %i.ae, %bb.o ]
  %i.ab = phi i64 [ %i.m, %bb.f ], [ %i.m, %bb.b ], [ %i.m, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i ], [ %i.af, %bb.g ], [ %i.af, %bb.k ], [ %i.af, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i12 ], [ %i.af, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i17 ], [ %i.af, %bb.o ]
  %i.ac = phi i64 [ %i.n, %bb.f ], [ %i.n, %bb.b ], [ %i.n, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i ], [ %i.ag, %bb.g ], [ %i.ag, %bb.k ], [ %i.ag, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i12 ], [ %i.ag, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i17 ], [ %i.ag, %bb.o ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.aa, i64 noundef %i.ab, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @859) #75
          to label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.cont unwind label %bb.z

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.cont: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.invoke
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41002)
  %i.ad = load ptr, ptr %i.g, align 8, !alias.scope !41002, !nonnull !28, !noundef !28 ; 11 uses
  %i.ae = load i64, ptr %i.h, align 8, !alias.scope !41002, !noundef !28 ; 11 uses
  %i.af = load i64, ptr %i.i, align 8, !alias.scope !41002, !noundef !28 ; 15 uses
  %i.ag = load i64, ptr %i.j, align 8, !alias.scope !41002, !noundef !28 ; 13 uses
  %i.ah = icmp ugt i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.ag, %i.ae
  %or.cond.i.i10 = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i10, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.invoke, label %bb.h, !prof !31

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %i.af, %i.ae                ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq i64 %i.af, 0
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.al = icmp eq i64 %i.ag, %i.ae
  br i1 %i.al, label %bb.l, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i12

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !41003, !noalias !41002, !noundef !28
  %i.ao = icmp sgt i8 %i.an, -65
  br i1 %i.ao, label %bb.j, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.invoke, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i12: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !41003, !noalias !41002, !noundef !28
  %i.ar = icmp sgt i8 %i.aq, -65
  br i1 %i.ar, label %bb.l, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.invoke, !prof !33

bb.l:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i12, %bb.j, %bb.h
  %i.as = sub nuw i64 %i.ag, %i.af                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 10 uses
  %.not.i = icmp samesign ult i64 %i.as, 2
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.l
  %i.au = load i16, ptr %i.at, align 1
  %i.av = icmp ne i16 32125, %i.au
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.t, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.l, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit
  br i1 %i.aj, label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer6lexeme.exit19, label %bb.m

bb.m:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread
  %i.ay = icmp eq i64 %i.af, 0
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.az = icmp eq i64 %i.ag, %i.ae
  br i1 %i.az, label %_RNvMNtCskXtk6F4WjxZ_4just5lexerNtB2_5Lexer6lexeme.exit19, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i17
end_hunk_0
