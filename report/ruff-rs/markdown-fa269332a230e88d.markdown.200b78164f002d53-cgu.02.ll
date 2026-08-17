inline.NumInlined: 118
inline.NumDeleted: 36
begin_hunk_0_@_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter11content_end:bb.a
  br label %bb.d

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @13, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs2KzzoC5ewhj_8markdown, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter13content_start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.c = load i8, ptr %i.b, align 8, !range !38, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp ne i8 %i.f, 10
  %or.cond.not = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !193
  store i64 2, ptr %i.a, align 8, !noalias !193
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 48, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i16 [ 90, %bb.b ], [ 91, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.h, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter13open_sequence(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !range !38, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, %i.c
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = add i64 %i.k, 1
  store i64 %i.m, ptr %i.j, align 8
  tail call fastcc void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer8move_one(ptr noalias noundef align 8 dereferenceable(664) %1)
  %i.n = load i8, ptr %i.d, align 8, !range !38, !alias.scope !196, !noundef !4
  %i.o = load i8, ptr %i.g, align 1, !alias.scope !196
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 %i.n, ptr %i.p, align 2, !alias.scope !196
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 651
  store i8 %i.o, ptr %i.q, align 1, !alias.scope !196
  store i8 0, ptr %i.d, align 8, !alias.scope !196
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.r, align 4, !alias.scope !196
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 86, ptr %i.s, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %i.j, align 8
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 50)
  %i.t = load i8, ptr %i.d, align 8, !range !38, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 8
  store i64 0, ptr %i.j, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.g, align 1, !noundef !4
  switch i8 %i.v, label %bb.g [
    i8 9, label %bb.h
    i8 32, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 87, ptr %i.w, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !202
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !205
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 87, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !205
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775805, ptr %i.x, align 8, !noalias !206
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.y, align 8, !noalias !202
  %.sroa.2.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i8 2, ptr %.sroa.2.0..sroa_idx1.i, align 2, !noalias !202
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !207, !noalias !210, !noundef !4 ; 3 uses
  %i.ac = load i64, ptr %i.z, align 8, !range !19, !alias.scope !207, !noalias !210, !noundef !4
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.i, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit unwind label %bb.j, !noalias !210

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.l unwind label %bb.k, !noalias !212

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !212
  unreachable

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ae

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit: ; preds = %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !207, !noalias !210, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw [160 x i8], ptr %i.ah, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ai, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !212
  %i.aj = add i64 %i.ab, 1
  store i64 %i.aj, ptr %i.aa, align 8, !alias.scope !207, !noalias !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !202
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 404
  store i8 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 -1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 -1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 -92, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 345, ptr %i.ap, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit, %bb.g, %bb.c
  %.sink = phi i64 [ -9223372036854775805, %bb.e ], [ -9223372036854775807, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit ], [ -9223372036854775807, %bb.g ], [ -9223372036854775808, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter14close_sequence(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.c = load i8, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !range !38, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, %i.c
  %or.cond = select i1 %i.f, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.k, 3
  store i64 0, ptr %i.j, align 8
  br i1 %i.l, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.m = add i64 %i.k, 1
  store i64 %i.m, ptr %i.j, align 8
  tail call fastcc void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer8move_one(ptr noalias noundef align 8 dereferenceable(664) %1)
  %i.n = load i8, ptr %i.d, align 8, !range !38, !alias.scope !213, !noundef !4
  %i.o = load i8, ptr %i.g, align 1, !alias.scope !213
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 %i.n, ptr %i.p, align 2, !alias.scope !213
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 651
  store i8 %i.o, ptr %i.q, align 1, !alias.scope !213
  store i8 0, ptr %i.d, align 8, !alias.scope !213
  br label %.sink.split.sink.split

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 50)
  %i.r = load i8, ptr %i.d, align 8, !range !38, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.g, align 1, !noundef !4
  switch i8 %i.t, label %.sink.split [
    i8 9, label %bb.f
    i8 32, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !219
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !222
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 94, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !222
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775805, ptr %i.u, align 8, !noalias !223
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.v, align 8, !noalias !219
  %.sroa.2.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i8 2, ptr %.sroa.2.0..sroa_idx1.i, align 2, !noalias !219
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !224, !noalias !227, !noundef !4 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !range !19, !alias.scope !224, !noalias !227, !noundef !4
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit unwind label %bb.h, !noalias !227

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.j unwind label %bb.i, !noalias !229

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !229
  unreachable

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ab

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit: ; preds = %bb.f, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !224, !noalias !227, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [160 x i8], ptr %i.ae, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.af, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !229
  %i.ag = add i64 %i.y, 1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !224, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 404
  store i8 0, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 -1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 -1, ptr %i.ak, align 8
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit, %bb.c
  %.sink10 = phi i64 [ 652, %bb.c ], [ 409, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit ]
  %.sink8 = phi i8 [ 1, %bb.c ], [ -92, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit ]
  %.sink6.ph = phi i16 [ 93, %bb.c ], [ 345, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit ]
  %.sink.ph.ph = phi i64 [ -9223372036854775808, %bb.c ], [ -9223372036854775807, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit ]
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 %.sink10
  store i8 %.sink8, ptr %2, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.d, %bb.e
  %.sink6 = phi i16 [ 94, %bb.e ], [ 94, %bb.d ], [ %.sink6.ph, %.sink.split.sink.split ]
  %.sink.ph = phi i64 [ -9223372036854775807, %bb.e ], [ -9223372036854775807, %bb.d ], [ %.sink.ph.ph, %.sink.split.sink.split ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink6, ptr %i.al, align 8
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.b
  %.sink = phi i64 [ -9223372036854775805, %bb.b ], [ %.sink.ph, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter14content_inside(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !38, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp ne i8 %i.e, 10
  %or.cond.not = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 48)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer8move_one(ptr noalias noundef align 8 dereferenceable(664) %1)
  %i.g = load i8, ptr %i.a, align 8, !range !38, !alias.scope !230, !noundef !4
  %i.h = load i8, ptr %i.d, align 1, !alias.scope !230
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 %i.g, ptr %i.i, align 2, !alias.scope !230
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 651
  store i8 %i.h, ptr %i.j, align 1, !alias.scope !230
  store i8 0, ptr %i.a, align 8, !alias.scope !230
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.k, align 4, !alias.scope !230
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i16 [ 90, %bb.c ], [ 91, %bb.b ]
  %storemerge = phi i64 [ -9223372036854775808, %bb.c ], [ -9223372036854775807, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.l, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter5after(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 47)
  store i64 -9223372036854775806, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct11frontmatter5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  %i.i = load i8, ptr %i.h, align 1, !range !38, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.l = load i8, ptr %i.k, align 8, !range !38
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %i.j, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.o = load i8, ptr %i.n, align 1, !noundef !4  ; 2 uses
  switch i8 %i.o, label %bb.d [
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !233
  store i64 2, ptr %i.c, align 8, !noalias !233
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 47, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !236
  store i64 2, ptr %i.b, align 8, !noalias !236
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 49, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !239
  store i64 2, ptr %i.a, align 8, !noalias !239
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 50, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !239
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 86, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i64 [ -9223372036854775807, %bb.c ], [ -9223372036854775805, %bb.a ], [ -9223372036854775805, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct20partial_space_or_tab5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %.not = icmp ne i64 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.f = load i8, ptr %i.e, align 8, !range !38
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.i = load i8, ptr %i.h, align 1, !noundef !4
  switch i8 %i.i, label %bb.i [
    i8 9, label %bb.c
    i8 32, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.k = load i8, ptr %i.j, align 8, !range !242, !noundef !4 ; 2 uses
  %.not1 = icmp eq i8 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 409
  %i.m = load i8, ptr %i.l, align 1, !range !243, !noundef !4 ; 2 uses
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %i.k, ptr %i.o, align 8
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef range(i8 0, -85) %i.m, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244
  store i64 2, ptr %i.a, align 8, !noalias !244
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef range(i8 0, -85) %i.m, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 404 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !range !38, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.p, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %i.u = icmp ult i64 %i.t, 115292150460684698
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nsw i64 %i.t, -1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvNtCs2KzzoC5ewhj_8markdown11subtokenize4link(ptr noalias noundef nonnull align 8 %i.x, i64 noundef %i.t, i64 noundef %i.v)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.b
  %.sink = phi i16 [ 347, %bb.a ], [ 347, %bb.b ], [ 346, %bb.h ], [ 346, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.y, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct20partial_space_or_tab6inside(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !38, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noundef !4
  switch i8 %i.e, label %bb.c [
    i8 9, label %bb.d
    i8 32, label %bb.e
  ]
end_hunk_0
