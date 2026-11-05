Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.03?download=true
inline.NumInlined: 4529
inline.NumDeleted: 1845
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtBT_3Dex13parse_strings0INtB7_5FnMutTmEE8call_mutBZ_:bb.a
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %.val = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1 = load i64, ptr %i.i, align 8, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5189)
  %i.j = icmp ult i32 %2, 112
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %2 to i64                       ; 3 uses
  %i.l = icmp samesign ult i64 %.val1, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !5190
  br label %_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex13parse_strings0Ba_.exit

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %0, align 8, !alias.scope !5190
  br label %_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex13parse_strings0Ba_.exit

bb.e:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %.val1, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5192
  call void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils6leb1287uleb128(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef range(i64 0, 9223372036854775696) %i.m), !noalias !5193
  %i.o = load i64, ptr %i.g, align 8, !range !5, !noalias !5192, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5192
  store i64 -1, ptr %0, align 8, !alias.scope !5193
  br label %_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex13parse_strings0Ba_.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.013.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !noalias !5192, !nonnull !6, !noundef !6
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.414.0.copyload.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !5192
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.515.0.copyload.i.i.i = load i64, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !5192 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5192
  %i.q = icmp ugt i64 %.sroa.515.0.copyload.i.i.i, 65536
  %i.r = icmp ugt i64 %.sroa.515.0.copyload.i.i.i, %.val1
  %or.cond.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 8, !alias.scope !5193
  br label %_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex13parse_strings0Ba_.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5192
  %i.s = tail call noundef i64 @_RINvNtCsgkljs906P5b_3nom5bytes4takejRShINtNtB4_5error5ErrorBy_EECs7gfv9tzbXmh_6yara_x(i64 noundef %.sroa.515.0.copyload.i.i.i), !noalias !5193
  store i64 %i.s, ptr %i.e, align 8, !noalias !5192
  call void @_RINvXs3_NtCsgkljs906P5b_3nom5bytesINtB6_4TakeINtNtB8_5error5ErrorRShEEINtNtB8_8internal6ParserB11_E7processINtB19_7OutputMNtB19_4EmitB1W_NtB19_8CompleteEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.013.0.copyload.i.i.i, i64 noundef %.sroa.414.0.copyload.i.i.i), !noalias !5193
  %i.t = load i64, ptr %i.f, align 8, !range !14, !noalias !5192, !noundef !6
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5192
  store i64 -1, ptr %0, align 8, !alias.scope !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5192
  br label %_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex13parse_strings0Ba_.exit

bb.k:                                             ; preds = %bb.i
  %.sroa.526.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.526.0.copyload.i.i.i = load ptr, ptr %.sroa.526.0..sroa_idx.i.i.i, align 8, !noalias !5192, !nonnull !6, !noundef !6 ; 9 uses
  %.sroa.627.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.627.0.copyload.i.i.i = load i64, ptr %.sroa.627.0..sroa_idx.i.i.i, align 8, !noalias !5192 ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5192
  call void @llvm.experimental.noalias.scope.decl(metadata !5194)
  %i.v = icmp samesign ult i64 %.sroa.627.0.copyload.i.i.i, 64
  br i1 %i.v, label %.split.i.i.i.i, label %_RNvNtNtCsjsYspB54BFh_8simdutf814implementation3x8619validate_utf8_basic.exit.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5195
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.526.0.copyload.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.627.0.copyload.i.i.i), !noalias !5196
  %i.w = load i64, ptr %i.d, align 8, !range !14, !noalias !5195, !noundef !6
  %i.x = trunc nuw i64 %i.w to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5195
  br i1 %i.x, label %bb.l, label %bb.au

_RNvNtNtCsjsYspB54BFh_8simdutf814implementation3x8619validate_utf8_basic.exit.i.i.i.i: ; preds = %bb.k
  %i.y = load atomic ptr, ptr @_RNvNvNtNtCsjsYspB54BFh_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !noalias !5195, !nonnull !6, !noundef !6
  %i.z = call noundef zeroext i1 %i.y(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.526.0.copyload.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.627.0.copyload.i.i.i), !noalias !5196, !inline_history !5171
  br i1 %i.z, label %bb.l, label %bb.au

bb.l:                                             ; preds = %_RNvNtNtCsjsYspB54BFh_8simdutf814implementation3x8619validate_utf8_basic.exit.i.i.i.i, %.split.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5197)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5198
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %.sroa.627.0.copyload.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !5199
  %i.aa = load i64, ptr %i.b, align 8, !range !14, !noalias !5198, !noundef !6
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !15, !noalias !5198, !noundef !6 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ab, label %bb.m, label %bb.n, !prof !4

bb.m:                                             ; preds = %bb.l
  %i.af = load i64, ptr %i.ae, align 8, !noalias !5198
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.af) #33, !noalias !5199
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !noalias !5198, !nonnull !6, !noundef !6 ; 2 uses
  %i.ah = icmp samesign ule i64 %.sroa.627.0.copyload.i.i.i, %i.ad
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5198
  store i64 %i.ad, ptr %i.c, align 8, !noalias !5198
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  store ptr %i.ag, ptr %i.ai, align 8, !noalias !5198
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 8 uses
  store i64 0, ptr %i.aj, align 8, !noalias !5198
  %.not101.i.i.i.i.i = icmp eq i64 %.sroa.627.0.copyload.i.i.i, 0
  br i1 %.not101.i.i.i.i.i, label %_RNvNtCsfhfqTraTzL8_10simd_cesu85mutf86decode.exit.thread11.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvNtCsfhfqTraTzL8_10simd_cesu85mutf86decode.exit.thread11.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5198
  br label %_RNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB6_3Dex24parse_string_from_offset00Bc_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.aa
  %i.ak = phi i64 [ %.sroa.7.i.sroa.8.0.copyload.i.i.i, %bb.aa ], [ 0, %bb.n ] ; 6 uses
  %.sroa.040.0100.i.i.i.i.i = phi i64 [ %.sroa.022.2.i.i.i.i.i, %bb.aa ], [ 0, %bb.n ] ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.526.0.copyload.i.i.i, i64 %.sroa.040.0100.i.i.i.i.i
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !5200, !noalias !5193, !noundef !6 ; 10 uses
  %i.an = add nuw nsw i64 %.sroa.040.0100.i.i.i.i.i, 1 ; 7 uses
  %i.ao = icmp eq i8 %i.am, 0
  br i1 %i.ao, label %.thread.i.i.i.i.i, label %bb.v

bb.o:                                             ; preds = %bb.u
  %i.ap = add nsw i8 %i.am, 62
  %or.cond.i.i.i.i.i = icmp ult i8 %i.ap, 30
  br i1 %or.cond.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.p:                                             ; preds = %bb.v
  %i.aq = load i64, ptr %i.c, align 8, !range !24, !alias.scope !5201, !noalias !5198, !noundef !6
  %i.ar = icmp eq i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.q, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #31
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i unwind label %bb.t, !noalias !5199

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %i.as = load ptr, ptr %i.ai, align 8, !alias.scope !5201, !noalias !5198, !nonnull !6, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store i8 %i.am, ptr %i.at, align 1, !noalias !5199
  %i.au = add i64 %i.ak, 1
  br label %bb.aa

.thread.i.i.i.i.i:                                ; preds = %bb.aq, %bb.an, %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.x, %bb.w, %.lr.ph.i.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvNtCsfhfqTraTzL8_10simd_cesu88internal6decode.exit.thread.i.i.i.i unwind label %bb.r, !noalias !5199

bb.r:                                             ; preds = %.thread.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i.i.i.i unwind label %bb.s, !noalias !5199

bb.s:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !5199
  unreachable

common.resume.i.i.i.i.i:                          ; preds = %bb.t, %bb.r
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.r ], [ %i.ax, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

_RNvNtCsfhfqTraTzL8_10simd_cesu88internal6decode.exit.thread.i.i.i.i: ; preds = %.thread.i.i.i.i.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !5199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5198
  br label %_RNvNtCsfhfqTraTzL8_10simd_cesu85mutf86decode.exit.thread.i.i.i

bb.t:                                             ; preds = %bb.ar, %bb.ao, %bb.al, %bb.z, %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %common.resume.i.i.i.i.i unwind label %bb.at, !noalias !5199

bb.u:                                             ; preds = %bb.v
  %i.ay = icmp eq i8 %i.am, -64
  br i1 %i.ay, label %bb.w, label %bb.o

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.az = icmp sgt i8 %i.am, -1
  br i1 %i.az, label %bb.p, label %bb.u

bb.w:                                             ; preds = %bb.u
  %.not79.i.i.i.i.i = icmp samesign ult i64 %i.an, %.sroa.627.0.copyload.i.i.i
  br i1 %.not79.i.i.i.i.i, label %bb.x, label %.thread.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.526.0.copyload.i.i.i, i64 %i.an
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !5200, !noalias !5193, !noundef !6
  %i.bc = icmp eq i8 %i.bb, -128
  br i1 %i.bc, label %bb.y, label %.thread.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.bd = add nuw nsw i64 %.sroa.040.0100.i.i.i.i.i, 2
  %i.be = load i64, ptr %i.c, align 8, !range !24, !alias.scope !5202, !noalias !5198, !noundef !6
  %i.bf = icmp eq i64 %i.ak, %i.be
  br i1 %i.bf, label %bb.z, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit86.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #31
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit86.i.i.i.i.i unwind label %bb.t, !noalias !5199

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit86.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %i.bg = load ptr, ptr %i.ai, align 8, !alias.scope !5202, !noalias !5198, !nonnull !6, !noundef !6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ak
  store i8 0, ptr %i.bh, align 1, !noalias !5199
  %i.bi = add i64 %i.ak, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.as, %bb.ap, %bb.am, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit86.i.i.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %.sroa.7.i.sroa.8.0.copyload.i.i.i = phi i64 [ %i.bi, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit86.i.i.i.i.i ], [ %i.au, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.cp, %bb.am ], [ %i.cy, %bb.ap ], [ %i.dh, %bb.as ] ; 3 uses
  %.sroa.022.2.i.i.i.i.i = phi i64 [ %i.bd, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit86.i.i.i.i.i ], [ %i.an, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ %i.br, %bb.am ], [ %i.cs, %bb.ap ], [ %i.db, %bb.as ] ; 2 uses
  store i64 %.sroa.7.i.sroa.8.0.copyload.i.i.i, ptr %i.aj, align 8, !noalias !5198
  %i.bj = icmp ult i64 %.sroa.022.2.i.i.i.i.i, %.sroa.627.0.copyload.i.i.i
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %_RNvNtCsfhfqTraTzL8_10simd_cesu88internal6decode.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.o
  %i.bk = and i8 %i.am, -16
  %or.cond1.i.i.i.i.i = icmp eq i8 %i.bk, -32
  %.not.i.i.i.i.i = icmp samesign ult i64 %i.an, %.sroa.627.0.copyload.i.i.i
  %or.cond109.i.i.i.i.i = select i1 %or.cond1.i.i.i.i.i, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond109.i.i.i.i.i, label %bb.ad, label %.thread.i.i.i.i.i

bb.ac:                                            ; preds = %bb.o
  %.not78.i.i.i.i.i = icmp samesign ult i64 %i.an, %.sroa.627.0.copyload.i.i.i
  br i1 %.not78.i.i.i.i.i, label %bb.aq, label %.thread.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.526.0.copyload.i.i.i, i64 %i.an
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !5200, !noalias !5193, !noundef !6 ; 6 uses
  %i.bn = add nuw nsw i64 %.sroa.040.0100.i.i.i.i.i, 2 ; 4 uses
  %i.bo = icmp eq i8 %i.am, -32
  br i1 %i.bo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bp = and i8 %i.bm, -32
  %or.cond2.i.i.i.i.i = icmp eq i8 %i.bp, -96
  %.not77.i.i.i.i.i = icmp samesign ult i64 %i.bn, %.sroa.627.0.copyload.i.i.i
  %or.cond110.i.i.i.i.i = select i1 %or.cond2.i.i.i.i.i, i1 %.not77.i.i.i.i.i, i1 false
  br i1 %or.cond110.i.i.i.i.i, label %bb.an, label %.thread.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %or.cond99.i.i.i.i.i = icmp slt i8 %i.bm, -64
  br i1 %or.cond99.i.i.i.i.i, label %bb.ah, label %.thread.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ah
  %.not77.old.i.i.i.i.i = icmp samesign ult i64 %i.bn, %.sroa.627.0.copyload.i.i.i
  br i1 %.not77.old.i.i.i.i.i, label %bb.an, label %.thread.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %cond.i.i.i.i.i = icmp ne i8 %i.am, -19
  %i.bq = icmp samesign ult i8 %i.bm, -96
  %or.cond84.i.i.i.i.i = or i1 %cond.i.i.i.i.i, %i.bq
  br i1 %or.cond84.i.i.i.i.i, label %bb.ag, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.old.i.i.i.i.i = icmp samesign ult i8 %i.bm, -80
  br i1 %.old.i.i.i.i.i, label %bb.aj, label %.thread.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.br = add nuw i64 %.sroa.040.0100.i.i.i.i.i, 6 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, %.sroa.627.0.copyload.i.i.i
  br i1 %i.bs, label %.thread.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.526.0.copyload.i.i.i, i64 %i.bn
  %i.bu = load i32, ptr %i.bt, align 1, !alias.scope !5200, !noalias !5193 ; 4 uses
  %i.bv = and i32 %i.bu, -1057947712
  %i.bw = icmp eq i32 %i.bv, -2135888512
  br i1 %i.bw, label %bb.al, label %.thread.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 4)
          to label %bb.am unwind label %bb.t, !noalias !5199

bb.am:                                            ; preds = %bb.al
  %i.bx = lshr i32 %i.bu, 10
  %i.by = and i32 %i.bx, 4032
  %i.bz = zext i8 %i.bm to i32
  %i.ca = shl nuw nsw i32 %i.bz, 16
  %i.cb = shl i32 %i.bu, 10
  %i.cc = and i32 %i.cb, 64512
  %i.cd = add nsw i32 %i.ca, -2100224
  %i.ce = add nuw nsw i32 %i.cd, %i.cc
  %i.cf = add nuw nsw i32 %i.ce, %i.by            ; 2 uses
  %i.cg = shl i32 %i.cf, 10
  %.sroa.3.0.insert.ext.i.i.i.i.i.i = and i32 %i.cg, 4128768
  %.sroa.4.0.insert.shift.i.i.i.i.i.i = and i32 %i.bu, -1090519040
  %i.ch = add nuw nsw i32 %i.cf, 65536            ; 2 uses
  %i.ci = lshr exact i32 %i.ch, 4
  %.sroa.2.0.insert.ext.i.i.i.i.i.i = and i32 %i.ci, 16128
  %i.cj = lshr i32 %i.ch, 18
  %i.ck = and i32 %i.cj, 7
  %.sroa.3.0.insert.shift.i.i.i.i.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i.i.i.i.i, %.sroa.3.0.insert.ext.i.i.i.i.i.i
  %.sroa.2.0.insert.shift.i.i.i.i.i.i = or disjoint i32 %.sroa.3.0.insert.shift.i.i.i.i.i.i, %.sroa.2.0.insert.ext.i.i.i.i.i.i
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i.i.i.i.i, %i.ck
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i32 %.sroa.0.0.insert.ext.i.i.i.i.i.i, 8421616
  %i.cl = load i64, ptr %i.aj, align 8, !alias.scope !5203, !noalias !5198, !noundef !6 ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  call void @llvm.assume(i1 %i.cm)
  %i.cn = load ptr, ptr %i.ai, align 8, !alias.scope !5203, !noalias !5198, !nonnull !6, !noundef !6
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %i.co, align 1, !noalias !5199
  %.pre.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !5203, !noalias !5198
  %i.cp = add i64 %.pre.i.i.i.i.i.i, 4
  br label %bb.aa

bb.an:                                            ; preds = %bb.ag, %bb.ae
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.526.0.copyload.i.i.i, i64 %i.bn
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !5200, !noalias !5193, !noundef !6 ; 2 uses
  %i.cs = add nuw nsw i64 %.sroa.040.0100.i.i.i.i.i, 3
  %i.ct = icmp slt i8 %i.cr, -64
  br i1 %i.ct, label %bb.ao, label %.thread.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 3)
          to label %bb.ap unwind label %bb.t, !noalias !5199

bb.ap:                                            ; preds = %bb.ao
  %i.cu = load i64, ptr %i.aj, align 8, !alias.scope !5204, !noalias !5198, !noundef !6 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.cv)
  %i.cw = load ptr, ptr %i.ai, align 8, !alias.scope !5204, !noalias !5198, !nonnull !6, !noundef !6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cu ; 3 uses
  store i8 %i.am, ptr %i.cx, align 1, !noalias !5199
  %.sroa.495.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store i8 %i.bm, ptr %.sroa.495.0..sroa_idx.i.i.i.i.i, align 1, !noalias !5199
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i8 %i.cr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !noalias !5199
  %.pre.i88.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !5204, !noalias !5198
  %i.cy = add i64 %.pre.i88.i.i.i.i.i, 3
  br label %bb.aa

bb.aq:                                            ; preds = %bb.ac
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.526.0.copyload.i.i.i, i64 %i.an
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !5200, !noalias !5193, !noundef !6 ; 2 uses
  %i.db = add nuw nsw i64 %.sroa.040.0100.i.i.i.i.i, 2
  %i.dc = icmp slt i8 %i.da, -64
  br i1 %i.dc, label %bb.ar, label %.thread.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 2)
          to label %bb.as unwind label %bb.t, !noalias !5199

bb.as:                                            ; preds = %bb.ar
  %i.dd = load i64, ptr %i.aj, align 8, !alias.scope !5205, !noalias !5198, !noundef !6 ; 2 uses
  %i.de = icmp sgt i64 %i.dd, -1
  call void @llvm.assume(i1 %i.de)
  %i.df = load ptr, ptr %i.ai, align 8, !alias.scope !5205, !noalias !5198, !nonnull !6, !noundef !6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd ; 2 uses
  store i8 %i.am, ptr %i.dg, align 1, !noalias !5199
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store i8 %i.da, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 1, !noalias !5199
  %.pre.i91.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !5205, !noalias !5198
  %i.dh = add i64 %.pre.i91.i.i.i.i.i, 2
  br label %bb.aa

bb.at:                                            ; preds = %bb.t
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30, !noalias !5199
  unreachable

_RNvNtCsfhfqTraTzL8_10simd_cesu88internal6decode.exit.i.i.i.i: ; preds = %bb.aa
  %.sroa.0.0.copyload3.pre.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !5206 ; 2 uses
  %.sroa.7.i.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !5206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5198
  %switch.i.i.i = icmp ugt i64 %.sroa.0.0.copyload3.pre.i.i.i.i, -3
  br i1 %switch.i.i.i, label %_RNvNtCsfhfqTraTzL8_10simd_cesu85mutf86decode.exit.thread.i.i.i, label %_RNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB6_3Dex24parse_string_from_offset00Bc_.exit.i.i.i

bb.au:                                            ; preds = %_RNvNtNtCsjsYspB54BFh_8simdutf814implementation3x8619validate_utf8_basic.exit.i.i.i.i, %.split.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5207
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.627.0.copyload.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !5208
  %i.dj = load i64, ptr %i.a, align 8, !range !14, !noalias !5207, !noundef !6
  %i.dk = trunc nuw i64 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !range !15, !noalias !5207, !noundef !6 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dk, label %bb.av, label %bb.aw, !prof !4

bb.av:                                            ; preds = %bb.au
  %i.do = load i64, ptr %i.dn, align 8, !noalias !5207
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dm, i64 %i.do) #33, !noalias !5208
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.dp = load ptr, ptr %i.dn, align 8, !noalias !5207, !nonnull !6, !noundef !6 ; 3 uses
  %i.dq = icmp ule i64 %.sroa.627.0.copyload.i.i.i, %i.dm
  call void @llvm.assume(i1 %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5207
  %.not1.i.i.i.i = icmp eq i64 %.sroa.627.0.copyload.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_RNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB6_3Dex24parse_string_from_offset00Bc_.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr nonnull align 1 %.sroa.526.0.copyload.i.i.i, i64 %.sroa.627.0.copyload.i.i.i, i1 false), !noalias !5208
  br label %_RNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB6_3Dex24parse_string_from_offset00Bc_.exit.i.i.i

_RNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB6_3Dex24parse_string_from_offset00Bc_.exit.i.i.i: ; preds = %bb.ax, %bb.aw, %_RNvNtCsfhfqTraTzL8_10simd_cesu88internal6decode.exit.i.i.i.i, %_RNvNtCsfhfqTraTzL8_10simd_cesu85mutf86decode.exit.thread11.i.i.i
  %.sroa.66.sroa.4.019.i.i.i = phi i64 [ 0, %bb.aw ], [ %.sroa.627.0.copyload.i.i.i, %bb.ax ], [ 0, %_RNvNtCsfhfqTraTzL8_10simd_cesu85mutf86decode.exit.thread11.i.i.i ], [ %.sroa.7.i.sroa.8.0.copyload.i.i.i, %_RNvNtCsfhfqTraTzL8_10simd_cesu88internal6decode.exit.i.i.i.i ]
  %.sroa.5.0.i.i.i = phi ptr [ %i.dp, %bb.aw ], [ %i.dp, %bb.ax ], [ %i.ag, %_RNvNtCsfhfqTraTzL8_10simd_cesu85mutf86decode.exit.thread11.i.i.i ], [ %.sroa.7.i.sroa.0.0.copyload.i.i.i, %_RNvNtCsfhfqTraTzL8_10simd_cesu88internal6decode.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.dm, %bb.aw ], [ %i.dm, %bb.ax ], [ %i.ad, %_RNvNtCsfhfqTraTzL8_10simd_cesu85mutf86decode.exit.thread11.i.i.i ], [ %.sroa.0.0.copyload3.pre.i.i.i.i, %_RNvNtCsfhfqTraTzL8_10simd_cesu88internal6decode.exit.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i, ptr %0, align 8, !alias.scope !5193
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !5193
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.66.sroa.4.019.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !5193
  br label %_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex13parse_strings0Ba_.exit

_RNvNtCsfhfqTraTzL8_10simd_cesu85mutf86decode.exit.thread.i.i.i: ; preds = %_RNvNtCsfhfqTraTzL8_10simd_cesu88internal6decode.exit.i.i.i.i, %_RNvNtCsfhfqTraTzL8_10simd_cesu88internal6decode.exit.thread.i.i.i.i
  store i64 -1, ptr %0, align 8, !alias.scope !5193
  br label %_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex13parse_strings0Ba_.exit

_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex13parse_strings0Ba_.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.h, %bb.j, %_RNCNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB6_3Dex24parse_string_from_offset00Bc_.exit.i.i.i, %_RNvNtCsfhfqTraTzL8_10simd_cesu85mutf86decode.exit.thread.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtBT_3Dex15parse_type_list0INtB7_5FnMutTtEE8call_mutBZ_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i16 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6
  %i.c = zext i16 %2 to i64                       ; 2 uses
  %i.d = icmp ugt i64 %.val1, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !5211
  br label %_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex15parse_type_list0Ba_.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.c
  tail call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  br label %_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex15parse_type_list0Ba_.exit

_RNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtB4_3Dex15parse_type_list0Ba_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3dex6parserNtBT_3Dex16parse_class_defs0INtB7_5FnMutTTmmmmmmmmEEE8call_mutBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 4 uses
end_hunk_0
