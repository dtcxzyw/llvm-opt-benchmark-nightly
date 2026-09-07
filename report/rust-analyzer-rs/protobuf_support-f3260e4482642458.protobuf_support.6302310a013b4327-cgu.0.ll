Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/protobuf_support-f3260e4482642458.protobuf_support.6302310a013b4327-cgu.0?download=true
inline.NumInlined: 194
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer19next_decimal_digits:bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body.thread.i.i unwind label %bb.e, !noalias !454

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !454
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string13FromUtf8ErrorECs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i: ; preds = %bb.c
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8v1fP8rbDwN_16protobuf_support(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !454
  br label %bb.i

.body.thread.i.i:                                 ; preds = %bb.f, %bb.d
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.l, %bb.f ]
  resume { ptr, i32 } %eh.lpad-body8.i.i

bb.f:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_impl10LexerErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #14
          to label %.body.thread.i.i unwind label %bb.g, !noalias !455

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !455
  unreachable

bb.h:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !454
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0.copyload3.i = load i32, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !457, !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !449
  store i64 -9223372036854775797, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0.copyload3.i, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.r

bb.i:                                             ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string13FromUtf8ErrorECs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !449
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !459, !noundef !5 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.p = call noundef range(i32 -1, 1114112) i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !460
  %i.q = add nsw i32 %i.p, -48
  %or.cond.i = icmp ult i32 %i.q, 10
  br i1 %or.cond.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load i64, ptr %i.n, align 8, !alias.scope !459, !noundef !5 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !alias.scope !459, !nonnull !5, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !459, !noundef !5 ; 4 uses
  %i.v = icmp ugt i64 %i.o, %i.r
  %i.w = icmp ugt i64 %i.r, %i.u
  %or.cond.i.i = or i1 %i.v, %i.w
  br i1 %or.cond.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread8.i, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.x = icmp eq i64 %i.o, %i.u
  br i1 %i.x, label %_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer10take_whileNCNvB2_19next_decimal_digits0EBa_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = icmp eq i64 %i.o, 0
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.z = icmp eq i64 %i.r, %i.u
  br i1 %i.z, label %_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer10take_whileNCNvB2_19next_decimal_digits0EBa_.exit, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !461, !noalias !459, !noundef !5
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %bb.n, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread8.i, !prof !9

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i: ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !461, !noalias !459, !noundef !5
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer10take_whileNCNvB2_19next_decimal_digits0EBa_.exit, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread8.i, !prof !10

bb.p:                                             ; preds = %bb.j
  %i.ag = call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %.not4.i = icmp eq i32 %i.ag, -1
  br i1 %.not4.i, label %bb.q, label %bb.j, !prof !11

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread8.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.o, %bb.k
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u, i64 noundef %i.o, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #15, !noalias !459
  unreachable

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15, !noalias !459
  unreachable

_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer10take_whileNCNvB2_19next_decimal_digits0EBa_.exit: ; preds = %bb.l, %bb.n, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i
  store i64 -2, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer10take_whileNCNvB2_19next_decimal_digits0EBa_.exit, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer20lookahead_char_is_in(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, 12) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 17 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 40, i1 false), !noalias !493
  %i.e = call noundef range(i32 -1, 1114112) i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !494 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !494
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %.not.i.i = icmp eq i32 %i.e, -1
  br i1 %.not.i.i, label %_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer17lookahead_char_isNCNvB2_20lookahead_char_is_in0EBa_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.f = icmp samesign ult i32 %i.e, 128
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !498
  store i32 0, ptr %i.c, align 4, !noalias !498
  %i.g = icmp samesign ult i32 %i.e, 2048
  %i.h = trunc i32 %i.e to i8
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 3 uses
  %i.k = lshr i32 %i.e, 6
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128                ; 2 uses
  %i.o = lshr i32 %i.e, 12
  %i.p = trunc i32 %i.o to i8                     ; 2 uses
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128
  %i.s = lshr i32 %i.e, 18
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = or disjoint i8 %i.t, -16
  br i1 %i.g, label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i32 %i.e, 65536
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = or disjoint i8 %i.p, -32
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.j, ptr %i.x, align 1, !alias.scope !499, !noalias !498
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.y = phi i8 [ %i.w, %bb.e ], [ %i.u, %bb.f ]  ; 5 uses
  %.sink6.i.i.i.i = phi i8 [ %i.n, %bb.e ], [ %i.r, %bb.f ]
  %.sink.i.i.i.i = phi i8 [ %i.j, %bb.e ], [ %i.n, %bb.f ]
  %.sroa.0.05.i.i.i.i.i = phi i64 [ 3, %bb.e ], [ 4, %bb.f ] ; 11 uses
  store i8 %i.y, ptr %i.c, align 4, !alias.scope !499, !noalias !498
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sink6.i.i.i.i, ptr %i.z, align 1, !alias.scope !499, !noalias !498
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %.sink.i.i.i.i, ptr %i.aa, align 2, !alias.scope !499, !noalias !498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.ab = icmp samesign ult i64 %.sroa.0.05.i.i.i.i.i, %2
  br i1 %i.ab, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i, label %bb.g

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i: ; preds = %bb.c
  %i.ac = or disjoint i8 %i.l, -64
  store i8 %i.ac, ptr %i.c, align 4, !alias.scope !499, !noalias !498
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.j, ptr %i.ad, align 1, !alias.scope !499, !noalias !498
  %i.ae = icmp samesign ugt i64 %2, 2
  br i1 %i.ae, label %.lr.ph.split.us.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i
  %.sroa.0.05.i3.i.i.i.i = phi i64 [ 2, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i ]
  %i.af = icmp eq i64 %.sroa.0.05.i3.i.i.i.i, %2
  br i1 %i.af, label %bb.h, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %3 = add nsw i64 %.sroa.0.05.i.i.i.i.i, -1      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %3
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !503, !noalias !504, !noundef !5
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i8 %i.ah, %i.y
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %.preheader.split.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i

.preheader.split.i.i.i.i.i.i:                     ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.1

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.1: ; preds = %.preheader.split.i.i.i.i.i.i
  %4 = add nsw i64 %.sroa.0.05.i.i.i.i.i, -2      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %4
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !503, !noalias !504, !noundef !5
  %.not.i.not.i.i.i.i.i.i.i.1 = icmp eq i8 %i.aj, %i.y
  br i1 %.not.i.not.i.i.i.i.i.i.i.1, label %.preheader.split.i.i.i.i.i.i.1, label %.lr.ph.split.us.i.i.i.i.i.i.i

.preheader.split.i.i.i.i.i.i.1:                   ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.1
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %4, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.2

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.2: ; preds = %.preheader.split.i.i.i.i.i.i.1
  %i.ak = add nsw i64 %.sroa.0.05.i.i.i.i.i, -3   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !503, !noalias !504, !noundef !5
  %.not.i.not.i.i.i.i.i.i.i.2 = icmp eq i8 %i.am, %i.y
  br i1 %.not.i.not.i.i.i.i.i.i.i.2, label %.preheader.split.i.i.i.i.i.i.2, label %.lr.ph.split.us.i.i.i.i.i.i.i

.preheader.split.i.i.i.i.i.i.2:                   ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.2
  %.not.i.i.i.i.i.i.2 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.2, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.3

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.3: ; preds = %.preheader.split.i.i.i.i.i.i.2
  %i.an = getelementptr i8, ptr %i.c, i64 %.sroa.0.05.i.i.i.i.i
  %i.ao = getelementptr i8, ptr %i.an, i64 -4
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !503, !noalias !504, !noundef !5
  %.not.i.not.i.i.i.i.i.i.i.3 = icmp eq i8 %i.ap, %i.y
  br i1 %.not.i.not.i.i.i.i.i.i.i.3, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i:                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.3, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i
  %.sroa.0.05.i25.i.i.i.i = phi i64 [ 2, %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit.thread.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.3 ], [ %.sroa.0.05.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.2 ], [ %.sroa.0.05.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.1 ], [ %.sroa.0.05.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i ] ; 4 uses
  %bcmp.i.i.us22.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i25.i.i.i.i), !alias.scope !505, !noalias !506
  %i.aq = icmp eq i32 %bcmp.i.i.us22.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  %i.ar = add nsw i64 %2, -1                      ; 2 uses
  %.not27.i.i.not.i.not.i.not.i.not.i.not.i.not4 = icmp ugt i64 %.sroa.0.05.i25.i.i.i.i, %i.ar
  br i1 %.not27.i.i.not.i.not.i.not.i.not.i.not.i.not4, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i, label %.split.us.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i:                          ; preds = %.split.us.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader
  %i.as = phi i64 [ %i.av, %.split.us.i.i.i.i.i.i.i ], [ %i.ar, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader ]
  %.pn.i.i.i.i.i.i5 = phi ptr [ %i.at, %.split.us.i.i.i.i.i.i.i ], [ %1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i5, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.at, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i25.i.i.i.i), !alias.scope !505, !noalias !506
  %i.au = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.av = add nsw i64 %i.as, -1                   ; 2 uses
  %.not27.i.i.not.i.not.i.not.i.not.i.not.i.not = icmp ugt i64 %.sroa.0.05.i25.i.i.i.i, %i.av
  %or.cond = select i1 %i.au, i1 true, i1 %.not27.i.i.not.i.not.i.not.i.not.i.not.i.not
  br i1 %or.cond, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i, label %.split.us.i.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs8v1fP8rbDwN_16protobuf_support.exit.i.i.i.i.i.i.i.3, %.preheader.split.i.i.i.i.i.i.2, %.preheader.split.i.i.i.i.i.i.1, %.preheader.split.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !507
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, 12) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 1, 5) %.sroa.0.05.i.i.i.i.i), !noalias !508
  call fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #18, !noalias !508
  %i.aw = load i64, ptr %i.b, align 8, !range !13, !noalias !507, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !507
  %i.ax = trunc nuw i64 %i.aw to i1
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.c, ptr noundef nonnull readonly dereferenceable(1) %1, i64 range(i64 2, 5) %2), !alias.scope !509, !noalias !508
  %i.ay = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader, %bb.h, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi i1 [ false, %bb.g ], [ true, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %i.ay, %bb.h ], [ %i.ax, %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i.i.i.i ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs8v1fP8rbDwN_16protobuf_support.exit.backedge.us.i.i.i.i.i.i.i.preheader ], [ %i.au, %.split.us.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !498
  br label %_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer17lookahead_char_isNCNvB2_20lookahead_char_is_in0EBa_.exit

bb.i:                                             ; preds = %bb.b
  %i.az = trunc nuw nsw i32 %i.e to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.05.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %i.bd, %bb.j ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i.i.i.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !510, !noalias !508, !noundef !5
  %i.bc = icmp eq i8 %i.bb, %i.az                 ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bd, %2
  %or.cond.i.i.i.i = select i1 %i.bc, i1 true, i1 %exitcond.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer17lookahead_char_isNCNvB2_20lookahead_char_is_in0EBa_.exit, label %bb.j

_RINvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB6_5Lexer17lookahead_char_isNCNvB2_20lookahead_char_is_in0EBa_.exit: ; preds = %bb.j, %bb.a, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i
  %.sroa.02.0.i.i = phi i1 [ false, %bb.a ], [ %.sroa.0.0.i.i.i.i.i, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.i.i.i ], [ %i.bc, %bb.j ]
  ret i1 %.sroa.02.0.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer20next_json_char_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 21 uses
  %i.b = tail call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !520 ; 2 uses
  switch i32 %i.b, label %bb.c [
    i32 -1, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9next_char.exit
    i32 92, label %bb.b
  ]

_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9next_char.exit: ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.438.0..sroa_idx, align 8
  br label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !521
  switch i32 %i.c, label %bb.d [
    i32 -1, label %_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9next_char.exit67
    i32 34, label %bb.e
    i32 39, label %bb.f
    i32 92, label %bb.g
    i32 47, label %bb.h
    i32 98, label %bb.i
    i32 102, label %bb.j
    i32 110, label %bb.k
    i32 114, label %bb.l
    i32 116, label %bb.m
    i32 117, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !523
  %i.d = call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !524 ; 6 uses
  %.not.i.i = icmp eq i32 %i.d, -1
  br i1 %.not.i.i, label %bb.u, label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer9next_char.exit67: ; preds = %bb.b
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.447.0..sroa_idx, align 8
  br label %bb.al

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.al

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 34, ptr %i.f, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.f:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 39, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.g:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 92, ptr %i.h, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.h:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 47, ptr %i.i, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.i:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.j, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.j:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 12, ptr %i.k, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.k:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.l, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.l:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 13, ptr %i.m, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.m:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 9, ptr %i.n, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.n:                                             ; preds = %.preheader.preheader
  %i.o = add nsw i32 %i.d, -48                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.o, 10
  br i1 %or.cond.i, label %.preheader.1, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.p = add nsw i32 %i.d, -65
  %or.cond1.i = icmp ult i32 %i.p, 6
  br i1 %or.cond1.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.q = add nsw i32 %i.d, -97
  %or.cond2.i = icmp ult i32 %i.q, 6
  br i1 %or.cond2.i, label %bb.r, label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.r = add nsw i32 %i.d, -55
  br label %.preheader.1

bb.r:                                             ; preds = %bb.p
  %i.s = add nsw i32 %i.d, -87
  br label %.preheader.1

bb.s:                                             ; preds = %bb.ak
  %i.t = icmp samesign ult i32 %i.as, 1114112
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.as, ptr %i.u, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.al

bb.t:                                             ; preds = %bb.ak
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.al

bb.u:                                             ; preds = %bb.ah, %.preheader.3, %bb.ac, %.preheader.2, %bb.x, %.preheader.1, %.preheader.preheader, %bb.p
  %.sroa.075.0.ph = phi i64 [ -9223372036854775799, %bb.p ], [ -9223372036854775807, %.preheader.preheader ], [ -9223372036854775807, %.preheader.1 ], [ -9223372036854775799, %bb.x ], [ -9223372036854775807, %.preheader.2 ], [ -9223372036854775799, %bb.ac ], [ -9223372036854775807, %.preheader.3 ], [ -9223372036854775799, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !522
  store i64 %.sroa.075.0.ph, ptr %0, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.sroa.460.0..sroa_idx, align 8
  br label %bb.al

.preheader.1:                                     ; preds = %bb.r, %bb.q, %bb.n
  %.sroa.0.0.i = phi i32 [ %i.s, %bb.r ], [ %i.r, %bb.q ], [ %i.o, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !523
  %i.v = call noundef i32 @_RNvMs2_NtNtCs8v1fP8rbDwN_16protobuf_support5lexer10lexer_implNtB5_5Lexer13next_char_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !524 ; 6 uses
  %.not.i.i.1 = icmp eq i32 %i.v, -1
  br i1 %.not.i.i.1, label %bb.u, label %bb.v
end_hunk_0
