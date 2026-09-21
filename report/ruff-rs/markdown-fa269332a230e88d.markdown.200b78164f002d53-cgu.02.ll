Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/markdown-fa269332a230e88d.markdown.200b78164f002d53-cgu.02?download=true
inline.NumInlined: 118
inline.NumDeleted: 36
begin_hunk_0_@_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item5after:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !6 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !6 ; 2 uses
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %bb.k

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.am = zext i1 %i.f to i64
  %i.an = add i64 %i.ac, %i.am
  %i.ao = add i64 %i.an, %i.ae
  %spec.select = add i64 %i.ao, %i.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !6, !noundef !6
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ai ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  %i.at = zext i1 %i.f to i8
  store i8 %i.at, ptr %i.as, align 1
  store i64 %spec.select, ptr %i.ar, align 8
  call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 109)
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 5, ptr %i.a, align 1, !noalias !325
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !325, !nonnull !6, !noundef !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !325, !noundef !6 ; 6 uses
  %i.ay = call noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs2KzzoC5ewhj_8markdown7resolve4NameNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax), !noalias !325
  br i1 %i.ay, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer24register_resolver_before.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.ba = icmp sgt i64 %i.ax, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i64, ptr %i.az, align 8, !range !9, !alias.scope !326, !noundef !6
  %i.bc = icmp eq i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
  %.pre.i = load ptr, ptr %i.au, align 8, !alias.scope !326
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi ptr [ %.pre.i, %bb.h ], [ %i.av, %bb.g ] ; 3 uses
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull align 1 %i.bd, i64 %i.ax, i1 false)
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit.i: ; preds = %bb.j, %bb.i
  store i8 5, ptr %i.bd, align 1
  %i.bf = add nuw i64 %i.ax, 1
  store i64 %i.bf, ptr %i.aw, align 8, !alias.scope !326
  br label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer24register_resolver_before.exit

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer24register_resolver_before.exit: ; preds = %bb.f, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs2KzzoC5ewhj_8markdown7resolve4NameE10insert_mutBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.k:                                             ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 9 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !7, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.h = load i8, ptr %i.g, align 1, !range !11, !noundef !6
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !336
  store i64 2, ptr %i.b, align 8, !noalias !336
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 107, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !336
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.k = load i8, ptr %i.j, align 8, !range !11, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit
  %.sink3 = phi i16 [ 345, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit ], [ 250, %bb.d ], [ 250, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink3, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i64 [ -9223372036854775805, %bb.a ], [ -9223372036854775807, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.o = load i8, ptr %i.n, align 1, !noundef !6
  switch i8 %i.o, label %.sink.split [
    i8 9, label %bb.e
    i8 32, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !338
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !339
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 250, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !339
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775805, ptr %i.p, align 8, !noalias !340
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 0, ptr %i.q, align 8, !noalias !338
  %.sroa.2.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i8 2, ptr %.sroa.2.0..sroa_idx1.i, align 2, !noalias !338
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !341, !noalias !342, !noundef !6 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !9, !alias.scope !341, !noalias !342, !noundef !6
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit unwind label %bb.g, !noalias !342

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.i unwind label %bb.h, !noalias !343

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !343
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.w

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer7attempt.exit: ; preds = %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !341, !noalias !342, !nonnull !6, !noundef !6
  %i.aa = getelementptr inbounds nuw [160 x i8], ptr %i.z, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.aa, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !343
  %i.ab = add i64 %i.t, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !341, !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !338
  %i.ac = load ptr, ptr %i.c, align 8, !nonnull !6, !align !7, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !align !7, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 37
  %i.ag = load i8, ptr %i.af, align 1, !range !11, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  %. = select i1 %i.ah, i64 3, i64 -1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 404
  store i8 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 -1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 %., ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 -92, ptr %i.am, align 1
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item5value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 2 uses
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !noundef !6  ; 2 uses
  switch i8 %i.e, label %bb.e [
    i8 46, label %bb.c
    i8 41, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 653
  %i.g = load i8, ptr %i.f, align 1, !range !11, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 360
  %3 = load i64, ptr %2, align 8
  %4 = icmp ugt i64 %3, 1
  %or.cond6.not = select i1 %i.h, i1 %4, i1 false
  br i1 %or.cond6.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 110)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 254, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %5 = add i8 %i.e, -48
  %i.j = icmp ult i8 %5, 10
  br i1 %i.j, label %bb.g, label %.thread

bb.f:                                             ; preds = %.thread, %bb.h, %bb.d
  %.sink = phi i64 [ -9223372036854775805, %.thread ], [ -9223372036854775808, %bb.h ], [ -9223372036854775807, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

.thread:                                          ; preds = %bb.c, %bb.a, %bb.g, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 0, ptr %i.k, align 8
  br label %bb.f

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !6
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = icmp ult i64 %i.n, 10
  br i1 %i.o, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  store i64 %i.n, ptr %i.l, align 8
  tail call fastcc void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer8move_one(ptr noalias noundef align 8 dereferenceable(664) %1)
  %i.p = load i8, ptr %i.a, align 8, !range !11, !alias.scope !346, !noundef !6
  %i.q = load i8, ptr %i.d, align 1, !alias.scope !346
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 %i.p, ptr %i.r, align 2, !alias.scope !346
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 651
  store i8 %i.q, ptr %i.s, align 1, !alias.scope !346
  store i8 0, ptr %i.a, align 8, !alias.scope !346
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.t, align 4, !alias.scope !346
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 253, ptr %i.u, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item6before(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.f = load i8, ptr %i.e, align 1, !noundef !6  ; 3 uses
  switch i8 %i.f, label %bb.j [
    i8 42, label %bb.c
    i8 45, label %bb.c
    i8 43, label %.sink.split
    i8 49, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 650
  %i.h = load i8, ptr %i.g, align 2, !range !11, !alias.scope !354, !noalias !355, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 651
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !354, !noalias !355
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !355
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !354, !noalias !355, !noundef !6 ; 2 uses
  %i.o = icmp ult i64 %i.n, 115292150460684698
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !354, !noalias !355, !noundef !6 ; 2 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  store i64 -9223372036854775805, ptr %i.a, align 8, !noalias !357
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775808, ptr %i.s, align 8, !noalias !358
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 252, ptr %.sroa.42.0..sroa_idx, align 8, !noalias !358
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 1, ptr %i.t, align 8, !noalias !356
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.n, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !356
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.q, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !356
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 %i.h, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !356
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 145
  store i8 %i.j, ptr %.sroa.75.0..sroa_idx.i, align 1, !noalias !356
  %.sroa.86.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i8 1, ptr %.sroa.86.0..sroa_idx.i, align 2, !noalias !356
  %.sroa.97.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 147
  store i8 %i.f, ptr %.sroa.97.0..sroa_idx.i, align 1, !noalias !356
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !359, !noalias !360, !noundef !6 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !9, !alias.scope !359, !noalias !360, !noundef !6
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit unwind label %bb.e, !noalias !360

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown9tokenizer7AttemptEBF_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a) #15
          to label %bb.g unwind label %bb.f, !noalias !355

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !355
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.z

_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit: ; preds = %bb.c, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !359, !noalias !360, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw [160 x i8], ptr %i.ac, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ad, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !355
  %i.ae = add i64 %i.w, 1
  store i64 %i.ae, ptr %i.v, align 8, !alias.scope !359, !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !356
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit, %bb.i
  %.sink8 = phi i16 [ 363, %_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer5check.exit ], [ 251, %bb.i ], [ 252, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink8, ptr %i.af, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.j, %bb.a
  %.sink = phi i64 [ -9223372036854775805, %bb.j ], [ -9223372036854775805, %bb.a ], [ -9223372036854775807, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.b, %bb.j
  br label %.sink.split

bb.j:                                             ; preds = %bb.b
  %i.ag = add i8 %i.f, -58
  %or.cond = icmp ult i8 %i.ag, -10
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 653
  %i.ai = load i8, ptr %i.ah, align 1, !range !11
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond7 = select i1 %or.cond, i1 true, i1 %i.aj
  br i1 %or.cond7, label %bb.h, label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item6marker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !365
  store i64 2, ptr %i.a, align 8, !noalias !365
  call fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown9tokenizer10enter_impl(ptr noalias noundef align 8 dereferenceable(664) %1, i8 noundef 108, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !365
  tail call fastcc void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer8move_one(ptr noalias noundef align 8 dereferenceable(664) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !11, !alias.scope !366, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !366
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 %i.c, ptr %i.f, align 2, !alias.scope !366
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 651
  store i8 %i.e, ptr %i.g, align 1, !alias.scope !366
  store i8 0, ptr %i.b, align 8, !alias.scope !366
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i8 1, ptr %i.h, align 4, !alias.scope !366
  tail call void @_RNvMNtCs2KzzoC5ewhj_8markdown9tokenizerNtB2_9Tokenizer4exit(ptr noalias noundef nonnull align 8 dereferenceable(664) %1, i8 noundef 108)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 255, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown9construct9list_item7resolve(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(664) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split245:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.028 = alloca [72 x i8], align 8          ; 3 uses
  %.sroa.026 = alloca [72 x i8], align 8          ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 8 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 12 uses
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 11 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 6 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !6 ; 3 uses
  %i.o = icmp ult i64 %i.n, 115292150460684698
  tail call void @llvm.assume(i1 %i.o)
  %.not256 = icmp eq i64 %i.n, 0
  br i1 %.not256, label %._crit_edge250, label %.lr.ph249

.lr.ph249:                                        ; preds = %.split245
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
end_hunk_0
