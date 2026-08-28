Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant_rust_stemmers-4f3eb9ef80bdada6.qdrant_rust_stemmers.4ea1d8c379a1dc56-cgu.00?download=true
inline.NumInlined: 48
inline.NumDeleted: 12
begin_hunk_0_@_RNvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB2_11SnowballEnv6insert:bb.a
bb.a:
  %i.a = tail call fastcc noundef i32 @_RNvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB2_11SnowballEnv9replace_s(ptr noalias nofree noundef align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.c to i32
  %i.e = add i32 %i.a, %i.d
  %i.f = sext i32 %i.e to i64
  store i64 %i.f, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %.not2 = icmp ugt i64 %1, %i.h
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.a, %i.i
  %i.k = sext i32 %i.j to i64
  store i64 %i.k, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB2_11SnowballEnv8slice_to(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 7 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  %i.g = icmp ugt i64 %i.e, %.sroa.5.0
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread11, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.c, %.sroa.5.0
  br i1 %i.h, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.c, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = icmp eq i64 %i.e, %.sroa.5.0
  br i1 %i.j, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.c
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !61, !noundef !4
  %i.m = icmp sgt i8 %i.l, -65
  br i1 %i.m, label %bb.d, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread11, !prof !64

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.e
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !61, !noundef !4
  %i.p = icmp sgt i8 %i.o, -65
  br i1 %i.p, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread11, !prof !65

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread11: ; preds = %bb.e, %bb.a, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.5.0, i64 noundef %i.c, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #11
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.d, %bb.b, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.q = sub nuw i64 %i.e, %i.c                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.q, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.s = load i64, ptr %i.a, align 8, !range !66, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !67, !noundef !4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g, !prof !68

bb.f:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  %i.x = load i64, ptr %i.w, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #14
  unreachable

bb.g:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = icmp ule i64 %i.q, %i.v
  tail call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not8 = icmp eq i64 %i.e, %i.c
  br i1 %.not8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  store i64 %i.v, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.6.0..sroa_idx, align 8
  ret void

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.r, i64 %i.q, i1 false)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB2_11SnowballEnv9replace_s(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = trunc i64 %4 to i32
  %i.e = trunc i64 %2 to i32
  %i.f = trunc i64 %1 to i32
  %.neg = sub i32 %i.f, %i.e
  %i.g = add i32 %.neg, %i.d                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.3.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.a, align 8, !range !66, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !67, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.o = icmp ule i64 %.sroa.3.0, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.c, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.n, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.p = icmp eq i64 %1, 0                        ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp ult i64 %1, %.sroa.3.0
  br i1 %.not.i, label %bb.e, label %.split3.i

.split3.i:                                        ; preds = %bb.d
  %i.q = icmp eq i64 %1, %.sroa.3.0
  br i1 %i.q, label %bb.f, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 %1
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !69, !noalias !72, !noundef !4
  %i.t = icmp sgt i8 %i.s, -65
  br i1 %i.t, label %bb.f, label %.invoke

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i.i.i: ; preds = %bb.s, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.u ], [ %i.bh, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.v

bb.f:                                             ; preds = %bb.c, %bb.e, %.split3.i
  %i.u = icmp eq i64 %2, 0
  br i1 %i.u, label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i19 = icmp ult i64 %2, %.sroa.3.0
  br i1 %.not.i19, label %bb.h, label %.split3.i20

.split3.i20:                                      ; preds = %bb.g
  %i.v = icmp eq i64 %2, %.sroa.3.0
  br i1 %i.v, label %.split.i21, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 %2
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !74, !noalias !77, !noundef !4
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %.split.i21, label %.invoke

.split.i21:                                       ; preds = %bb.h, %.split3.i20
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 %2
  %i.aa = sub i64 %.sroa.3.0, %2
  br label %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit28

_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit28: ; preds = %bb.f, %.split.i21
  %.sroa.841.0 = phi i64 [ %.sroa.3.0, %bb.f ], [ %i.aa, %.split.i21 ] ; 4 uses
  %.sroa.6.0 = phi ptr [ %.sroa.01.0, %bb.f ], [ %i.z, %.split.i21 ]
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %1)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit28
  %i.ab = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79, !noundef !4 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.ad = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !79, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %.sroa.01.0, i64 %1, i1 false)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79
  br label %bb.j

.invoke:                                          ; preds = %.split3.i20, %bb.h, %.split3.i, %bb.e
  %i.af = phi i64 [ %1, %.split3.i ], [ %1, %bb.e ], [ %2, %bb.h ], [ %2, %.split3.i20 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.3.0, i64 noundef 0, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i, %.noexc
  %i.ag = phi i64 [ %.pre.i, %bb.i ], [ %i.ab, %.noexc ]
  %i.ah = add i64 %i.ag, %1
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %4)
          to label %.noexc32 unwind label %bb.w

.noexc32:                                         ; preds = %bb.j
  %i.ai = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !82, !noundef !4 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %.not.i30 = icmp eq i64 %4, 0
  br i1 %.not.i30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc32
  %i.ak = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !82, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull readonly align 1 %3, i64 %4, i1 false)
  %.pre.i31 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !82
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc32
  %i.am = phi i64 [ %.pre.i31, %bb.k ], [ %i.ai, %.noexc32 ]
  %i.an = add i64 %i.am, %4
  store i64 %i.an, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !82
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.841.0)
          to label %.noexc36 unwind label %bb.w

.noexc36:                                         ; preds = %bb.l
  %i.ao = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !85, !noundef !4 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %.not.i34 = icmp eq i64 %.sroa.841.0, 0
  br i1 %.not.i34, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc36
  %i.aq = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !85, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %.sroa.6.0, i64 %.sroa.841.0, i1 false)
  %.pre.i35 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !85
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.noexc36
  %i.as = phi i64 [ %.pre.i35, %bb.m ], [ %i.ao, %.noexc36 ]
  %i.at = add i64 %i.as, %.sroa.841.0
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !85
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noundef !4
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add i32 %i.g, %i.aw
  %i.ay = sext i32 %i.ax to i64
  store i64 %i.ay, ptr %i.au, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !noundef !4 ; 3 uses
  %.not17 = icmp ult i64 %i.ba, %2
  br i1 %.not17, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = icmp ugt i64 %i.ba, %1
  br i1 %i.bb, label %.sink.split, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bc = trunc i64 %i.ba to i32
  %i.bd = add i32 %i.g, %i.bc
  %i.be = sext i32 %i.bd to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.p
  %.sink = phi i64 [ %i.be, %bb.p ], [ %1, %bb.o ]
  store i64 %.sink, ptr %i.az, align 8
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bf = load i64, ptr %0, align 8, !range !88, !alias.scope !89, !noundef !4
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i.i.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit: ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %i.g

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i.i.i, %bb.w
  %.pn44 = phi { ptr, i32 } [ %i.bk, %bb.w ], [ %eh.lpad-body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6KyyKVsJz8w_20qdrant_rust_stemmers.exit.i.i.i ]
  resume { ptr, i32 } %.pn44

bb.w:                                             ; preds = %.invoke, %bb.l, %bb.j, %_RNvMNtCskKLDkoKarTP_4core3stre16split_at_checked.exit28
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #15
          to label %bb.v unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB2_11SnowballEnv9slice_del(ptr noalias nofree noundef align 8 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !92, !noalias !95, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !92, !noalias !95, !noundef !4
  %i.e = tail call fastcc noundef i32 @_RNvMNtNtCs6KyyKVsJz8w_20qdrant_rust_stemmers8snowball12snowball_envNtB2_11SnowballEnv9replace_s(ptr noalias nofree noundef align 8 dereferenceable(64) %0, i64 noundef %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0) ; 0 uses
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6KyyKVsJz8w_20qdrant_rust_stemmers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8
end_hunk_0
