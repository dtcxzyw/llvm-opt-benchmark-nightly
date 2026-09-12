Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.14?download=true
inline.NumInlined: 3742
inline.NumDeleted: 1475
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB2_9ElfParser5parse:bb.a
  %i.ao = alloca [32 x i8], align 8               ; 10 uses
  %i.ap = alloca [32 x i8], align 8               ; 9 uses
  %i.aq = alloca [32 x i8], align 8               ; 10 uses
  %i.ar = alloca [40 x i8], align 8               ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 10 uses
  %i.at = alloca [32 x i8], align 8               ; 10 uses
  %i.au = alloca [32 x i8], align 8               ; 10 uses
  %i.av = alloca [32 x i8], align 8               ; 9 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [112 x i8], align 8              ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 5 uses
  %i.bb = alloca [112 x i8], align 8              ; 16 uses
  %i.bc = alloca [24 x i8], align 8               ; 10 uses
  %i.bd = alloca [128 x i8], align 8              ; 20 uses
  %i.be = alloca [24 x i8], align 8               ; 18 uses
  %i.bf = alloca [24 x i8], align 8               ; 23 uses
  %i.bg = alloca [8 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.bh = tail call noundef i64 @_RINvNtCsgkljs906P5b_3nom5bytes4takejRShINtNtB4_5error5ErrorBy_EECs7gfv9tzbXmh_6yara_x(i64 noundef 6)
  store i64 %i.bh, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !4207
  call void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete6le_u32RShINtNtB8_5error5ErrorB1m_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB1U_9ElfParser5parse0mEINtNtB8_8internal6ParserB1m_E7processINtB36_7OutputMNtB36_4EmitB3T_NtB36_9StreamingEEB20_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.av, ptr noalias nofree noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !4208
  %i.bj = load i64, ptr %i.av, align 8, !range !22, !noalias !4207, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.bj, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.0153.0.copyload.i = load ptr, ptr %i.bk, align 8, !noalias !4207 ; 3 uses
  %.sroa.4154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.4154.0.copyload.i = load i64, ptr %.sroa.4154.0..sroa_idx.i, align 8, !noalias !4207 ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.6165.0.copyload.i = load i32, ptr %.sroa.6165.0..sroa_idx.i, align 8, !noalias !4207 ; 2 uses
  %.sroa.7166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %.sroa.7166.0.copyload.i = load i32, ptr %.sroa.7166.0..sroa_idx.i, align 4, !noalias !4207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !4207
  %i.bl = ptrtoint ptr %.sroa.0153.0.copyload.i to i64
  %.sroa.35.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.sroa.6165.0.copyload.i to i8
  %.sroa.35.sroa.0.sroa.13.0.extract.shift = lshr i32 %.sroa.6165.0.copyload.i, 8
  %.sroa.35.sroa.0.sroa.13.0.extract.trunc = trunc nuw i32 %.sroa.35.sroa.0.sroa.13.0.extract.shift to i24
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !4207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !4209
  call void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB1i_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB1Q_9ElfParser5parses_0hEINtNtB8_8internal6ParserB1i_E7processINtB34_7OutputMNtB34_4EmitB3R_NtB34_9StreamingEEB1W_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0153.0.copyload.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4154.0.copyload.i), !noalias !4210
  %i.bm = load i64, ptr %i.ao, align 8, !range !22, !noalias !4209, !noundef !6 ; 2 uses
  %.not.i143 = icmp eq i64 %i.bm, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.021.0.copyload.i = load ptr, ptr %i.bn, align 8, !noalias !4209 ; 2 uses
  %.sroa.422.0.copyload.i = load i64, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !4209 ; 2 uses
  %.sroa.523.0.copyload.i = load i8, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !4209 ; 3 uses
  br i1 %.not.i143, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.734.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 25
  %.sroa.10.i.sroa.0.0.copyload = load i24, ptr %.sroa.734.0..sroa_idx.i, align 1, !noalias !4209
  %.sroa.10.i.sroa.5.0..sroa.734.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %.sroa.10.i.sroa.5.0.copyload = load i32, ptr %.sroa.10.i.sroa.5.0..sroa.734.0..sroa_idx.i.sroa_idx, align 4, !noalias !4209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4209
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !4209
  %switch.selectcmp.i.i.i.i = icmp eq i8 %.sroa.523.0.copyload.i, 2
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i8 2, i8 0
  %switch.selectcmp1.i.i.i.i = icmp eq i8 %.sroa.523.0.copyload.i, 1
  %switch.select2.i.i.i.i = select i1 %switch.selectcmp1.i.i.i.i, i8 1, i8 %switch.select.i.i.i.i ; 2 uses
  %.not40.i = icmp eq i8 %switch.select2.i.i.i.i, 0
  br i1 %.not40.i, label %bb.f, label %_RINvXsi_NtCsgkljs906P5b_3nom8internalINtB6_6MapOptINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB1G_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB2e_9ElfParser5parses_0hENvYNtB2e_5ClassNtNtCs897I0O1htiw_10num_traits4cast13FromPrimitive7from_u8EINtB6_6ParserB1G_E7processINtB6_7OutputMNtB6_4EmitB5f_NtB6_9StreamingEEB2k_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.23444.sroa.0.0.ph = phi i24 [ %.sroa.10.i.sroa.0.0.copyload, %bb.d ], [ undef, %bb.e ]
  %.sroa.23444.sroa.6.0.ph = phi i32 [ %.sroa.10.i.sroa.5.0.copyload, %bb.d ], [ undef, %bb.e ]
  %.sroa.18442.0.ph = phi i8 [ %.sroa.523.0.copyload.i, %bb.d ], [ 2, %bb.e ]
  %.sroa.13440.0.ph = phi i64 [ %.sroa.422.0.copyload.i, %bb.d ], [ %.sroa.4154.0.copyload.i, %bb.e ]
  %.sroa.8439.0.ph = phi ptr [ %.sroa.021.0.copyload.i, %bb.d ], [ %.sroa.0153.0.copyload.i, %bb.e ]
  %.sroa.0437.0.ph = phi i64 [ %i.bm, %bb.d ], [ 1, %bb.e ]
  %i.bo = ptrtoint ptr %.sroa.8439.0.ph to i64
  br label %bb.r

_RINvXsi_NtCsgkljs906P5b_3nom8internalINtB6_6MapOptINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB1G_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB2e_9ElfParser5parses_0hENvYNtB2e_5ClassNtNtCs897I0O1htiw_10num_traits4cast13FromPrimitive7from_u8EINtB6_6ParserB1G_E7processINtB6_7OutputMNtB6_4EmitB5f_NtB6_9StreamingEEB2k_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !4207
  call void @_RINvXs3_NtCsgkljs906P5b_3nom10combinatorINtB6_6VerifyINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB1i_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB1Q_9ElfParser5parses0_0hEINtNtB8_8internal6ParserB1i_E7processINtB35_7OutputMNtB35_4EmitB3S_NtB35_9StreamingEEB1W_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.au, ptr noalias nofree noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.021.0.copyload.i, i64 noundef %.sroa.422.0.copyload.i), !noalias !4208
  %i.bp = load i64, ptr %i.au, align 8, !range !22, !noalias !4207, !noundef !6 ; 2 uses
  %.not303.i = icmp eq i64 %i.bp, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.0191.0.copyload.i = load ptr, ptr %i.bq, align 8, !noalias !4207 ; 2 uses
  %.sroa.4192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.4192.0.copyload.i = load i64, ptr %.sroa.4192.0..sroa_idx.i, align 8, !noalias !4207 ; 2 uses
  %.sroa.5193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.5193.0.copyload.i = load i8, ptr %.sroa.5193.0..sroa_idx.i, align 8, !noalias !4207 ; 3 uses
  br i1 %.not303.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvXsi_NtCsgkljs906P5b_3nom8internalINtB6_6MapOptINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB1G_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB2e_9ElfParser5parses_0hENvYNtB2e_5ClassNtNtCs897I0O1htiw_10num_traits4cast13FromPrimitive7from_u8EINtB6_6ParserB1G_E7processINtB6_7OutputMNtB6_4EmitB5f_NtB6_9StreamingEEB2k_.exit
  %.sroa.7204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 25
  %.sroa.7204.i.sroa.0.0.copyload = load i24, ptr %.sroa.7204.0..sroa_idx.i, align 1, !noalias !4207
  %.sroa.7204.i.sroa.4.0..sroa.7204.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %.sroa.7204.i.sroa.4.0.copyload = load i32, ptr %.sroa.7204.i.sroa.4.0..sroa.7204.0..sroa_idx.i.sroa_idx, align 4, !noalias !4207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !4207
  %i.br = ptrtoint ptr %.sroa.0191.0.copyload.i to i64
  br label %bb.r

bb.h:                                             ; preds = %_RINvXsi_NtCsgkljs906P5b_3nom8internalINtB6_6MapOptINtNtB8_10combinator6VerifyINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB1G_EENCNvMNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB2e_9ElfParser5parses_0hENvYNtB2e_5ClassNtNtCs897I0O1htiw_10num_traits4cast13FromPrimitive7from_u8EINtB6_6ParserB1G_E7processINtB6_7OutputMNtB6_4EmitB5f_NtB6_9StreamingEEB2k_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !4207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !4207
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB12_EEINtB6_6ParserB12_E7processINtB6_7OutputMNtB6_4EmitB29_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.at, ptr noalias nofree noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0191.0.copyload.i, i64 noundef %.sroa.4192.0.copyload.i), !noalias !4208
  %i.bs = load i64, ptr %i.at, align 8, !range !22, !noalias !4207, !noundef !6 ; 2 uses
  %.not304.i = icmp eq i64 %i.bs, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0210.0.copyload.i = load ptr, ptr %i.bt, align 8, !noalias !4207 ; 2 uses
  %.sroa.4211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.4211.0.copyload.i = load i64, ptr %.sroa.4211.0..sroa_idx.i, align 8, !noalias !4207 ; 2 uses
  br i1 %.not304.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.6222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.6222.0.copyload.i = load i8, ptr %.sroa.6222.0..sroa_idx.i, align 8, !noalias !4207
  %.sroa.7223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 25
  %.sroa.7223.i.sroa.0.0.copyload = load i24, ptr %.sroa.7223.0..sroa_idx.i, align 1, !noalias !4207
  %.sroa.7223.i.sroa.4.0..sroa.7223.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %.sroa.7223.i.sroa.4.0.copyload = load i32, ptr %.sroa.7223.i.sroa.4.0..sroa.7223.0..sroa_idx.i.sroa_idx, align 4, !noalias !4207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !4207
  %i.bu = ptrtoint ptr %.sroa.0210.0.copyload.i to i64
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !4207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !4211
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB12_EEINtB6_6ParserB12_E7processINtB6_7OutputMNtB6_4EmitB29_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ap, ptr noalias nofree noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0210.0.copyload.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4211.0.copyload.i), !noalias !4212
  %i.bv = load i64, ptr %i.ap, align 8, !range !22, !noalias !4211, !noundef !6 ; 2 uses
  %.not.i131 = icmp eq i64 %i.bv, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !4211 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noalias !4211 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  br i1 %.not.i131, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.6485.0.copyload = load i32, ptr %i.ca, align 8, !noalias !4211 ; 2 uses
  %.sroa.7486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %.sroa.7486.0.copyload = load i32, ptr %.sroa.7486.0..sroa_idx, align 4, !noalias !4211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4211
  %i.cb = ptrtoint ptr %i.bx to i64
  %.sroa.35.sroa.0.sroa.0.0.extract.trunc284 = trunc i32 %.sroa.6485.0.copyload to i8
  %.sroa.35.sroa.0.sroa.13.0.extract.shift287 = lshr i32 %.sroa.6485.0.copyload, 8
  %.sroa.35.sroa.0.sroa.13.0.extract.trunc288 = trunc nuw i32 %.sroa.35.sroa.0.sroa.13.0.extract.shift287 to i24
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.cc = load i8, ptr %i.ca, align 8, !noalias !4211, !noundef !6
  %i.cd = zext i8 %i.cc to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !4211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !4207
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB12_EEINtB6_6ParserB12_E7processINtB6_7OutputMNtB6_4EmitB29_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.as, ptr noalias nofree noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef %i.bz), !noalias !4208
  %i.ce = load i64, ptr %i.as, align 8, !range !22, !noalias !4207, !noundef !6 ; 2 uses
  %.not306.i = icmp eq i64 %i.ce, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0248.0.copyload.i = load ptr, ptr %i.cf, align 8, !noalias !4207 ; 2 uses
  %.sroa.4249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.4249.0.copyload.i = load i64, ptr %.sroa.4249.0..sroa_idx.i, align 8, !noalias !4207 ; 2 uses
  br i1 %.not306.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.6260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.6260.0.copyload.i = load i8, ptr %.sroa.6260.0..sroa_idx.i, align 8, !noalias !4207
  %.sroa.7261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 25
  %.sroa.7261.i.sroa.0.0.copyload = load i24, ptr %.sroa.7261.0..sroa_idx.i, align 1, !noalias !4207
  %.sroa.7261.i.sroa.4.0..sroa.7261.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %.sroa.7261.i.sroa.4.0.copyload = load i32, ptr %.sroa.7261.i.sroa.4.0..sroa.7261.0..sroa_idx.i.sroa_idx, align 4, !noalias !4207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4207
  %i.cg = ptrtoint ptr %.sroa.0248.0.copyload.i to i64
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !4207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !4207
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB16_EE0INtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2e_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0248.0.copyload.i, i64 noundef %.sroa.4249.0.copyload.i), !noalias !4208
  %i.ch = load i64, ptr %i.ar, align 8, !range !17, !noalias !4207, !noundef !6
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.0275.0.copyload.i = load ptr, ptr %i.cj, align 8, !noalias !4207 ; 2 uses
  %.sroa.4276.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.4276.0.copyload.i = load i64, ptr %.sroa.4276.0..sroa_idx.i, align 8, !noalias !4207 ; 2 uses
  br i1 %i.ci, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.5277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.5277.0.copyload.i = load ptr, ptr %.sroa.5277.0..sroa_idx.i, align 8, !noalias !4207
  %.sroa.6278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.6278.0.copyload.i = load i64, ptr %.sroa.6278.0..sroa_idx.i, align 8, !noalias !4207 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4207
  %i.ck = ptrtoint ptr %.sroa.0275.0.copyload.i to i64
  %i.cl = ptrtoint ptr %.sroa.5277.0.copyload.i to i64
  %.sroa.35.sroa.0.0.extract.trunc273 = trunc i64 %.sroa.6278.0.copyload.i to i32
  %.sroa.35.sroa.0.sroa.0.0.extract.trunc286 = trunc i64 %.sroa.6278.0.copyload.i to i8
  %.sroa.35.sroa.0.sroa.13.0.extract.shift291 = lshr i32 %.sroa.35.sroa.0.0.extract.trunc273, 8
  %.sroa.35.sroa.0.sroa.13.0.extract.trunc292 = trunc nuw i32 %.sroa.35.sroa.0.sroa.13.0.extract.shift291 to i24
  %.sroa.35.sroa.18.0.extract.shift278 = lshr i64 %.sroa.6278.0.copyload.i, 32
  %.sroa.35.sroa.18.0.extract.trunc279 = trunc nuw i64 %.sroa.35.sroa.18.0.extract.shift278 to i32
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !4207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !4207
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalINvNtNtB8_6number8complete2u8RShINtNtB8_5error5ErrorB12_EEINtB6_6ParserB12_E7processINtB6_7OutputMNtB6_4EmitB29_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aq, ptr noalias nofree noundef nonnull %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0275.0.copyload.i, i64 noundef %.sroa.4276.0.copyload.i), !noalias !4208
  %i.cm = load i64, ptr %i.aq, align 8, !range !22, !noalias !4207, !noundef !6 ; 2 uses
  %.not307.i = icmp eq i64 %i.cm, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0283.0.copyload.i = load ptr, ptr %i.cn, align 8, !noalias !4207 ; 2 uses
  %.sroa.4284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.4284.0.copyload.i = load i64, ptr %.sroa.4284.0..sroa_idx.i, align 8, !noalias !4207 ; 2 uses
  br i1 %.not307.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.6295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.6295.0.copyload.i = load i8, ptr %.sroa.6295.0..sroa_idx.i, align 8, !noalias !4207
  %.sroa.7296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 25
  %.sroa.7296.i.sroa.0.0.copyload = load i24, ptr %.sroa.7296.0..sroa_idx.i, align 1, !noalias !4207
  %.sroa.7296.i.sroa.4.0..sroa.7296.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %.sroa.7296.i.sroa.4.0.copyload = load i32, ptr %.sroa.7296.i.sroa.4.0..sroa.7296.0..sroa_idx.i.sroa_idx, align 4, !noalias !4207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4207
  %i.co = ptrtoint ptr %.sroa.0283.0.copyload.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.m, %bb.k, %bb.i, %bb.g, %bb.f, %bb.b
  %.sroa.35.sroa.0.sroa.13.sroa.0.0.ph = phi i24 [ %.sroa.35.sroa.0.sroa.13.0.extract.trunc, %bb.b ], [ %.sroa.23444.sroa.0.0.ph, %bb.f ], [ %.sroa.7204.i.sroa.0.0.copyload, %bb.g ], [ %.sroa.7223.i.sroa.0.0.copyload, %bb.i ], [ %.sroa.35.sroa.0.sroa.13.0.extract.trunc288, %bb.k ], [ %.sroa.7261.i.sroa.0.0.copyload, %bb.m ], [ %.sroa.7296.i.sroa.0.0.copyload, %bb.q ], [ %.sroa.35.sroa.0.sroa.13.0.extract.trunc292, %bb.o ]
  %.sroa.35.sroa.0.sroa.0.0.ph = phi i8 [ %.sroa.35.sroa.0.sroa.0.0.extract.trunc, %bb.b ], [ %.sroa.18442.0.ph, %bb.f ], [ %.sroa.5193.0.copyload.i, %bb.g ], [ %.sroa.6222.0.copyload.i, %bb.i ], [ %.sroa.35.sroa.0.sroa.0.0.extract.trunc284, %bb.k ], [ %.sroa.6260.0.copyload.i, %bb.m ], [ %.sroa.6295.0.copyload.i, %bb.q ], [ %.sroa.35.sroa.0.sroa.0.0.extract.trunc286, %bb.o ]
  %.sroa.35.sroa.18.0.ph = phi i32 [ %.sroa.7166.0.copyload.i, %bb.b ], [ %.sroa.23444.sroa.6.0.ph, %bb.f ], [ %.sroa.7204.i.sroa.4.0.copyload, %bb.g ], [ %.sroa.7223.i.sroa.4.0.copyload, %bb.i ], [ %.sroa.7486.0.copyload, %bb.k ], [ %.sroa.7261.i.sroa.4.0.copyload, %bb.m ], [ %.sroa.7296.i.sroa.4.0.copyload, %bb.q ], [ %.sroa.35.sroa.18.0.extract.trunc279, %bb.o ]
  %.sroa.25.0.ph = phi i64 [ %.sroa.4154.0.copyload.i, %bb.b ], [ %.sroa.13440.0.ph, %bb.f ], [ %.sroa.4192.0.copyload.i, %bb.g ], [ %.sroa.4211.0.copyload.i, %bb.i ], [ %i.bz, %bb.k ], [ %.sroa.4249.0.copyload.i, %bb.m ], [ %.sroa.4284.0.copyload.i, %bb.q ], [ %i.cl, %bb.o ]
  %.sroa.14.0.ph = phi i64 [ %i.bl, %bb.b ], [ %i.bo, %bb.f ], [ %i.br, %bb.g ], [ %i.bu, %bb.i ], [ %i.cb, %bb.k ], [ %i.cg, %bb.m ], [ %i.co, %bb.q ], [ %.sroa.4276.0.copyload.i, %bb.o ]
  %.sroa.0.0.ph = phi i64 [ %i.bj, %bb.b ], [ %.sroa.0437.0.ph, %bb.f ], [ %i.bp, %bb.g ], [ %i.bs, %bb.i ], [ %i.bv, %bb.k ], [ %i.ce, %bb.m ], [ %i.cm, %bb.q ], [ %i.ck, %bb.o ]
  %i.cp = inttoptr i64 %.sroa.0.0.ph to ptr
  %i.cq = inttoptr i64 %.sroa.25.0.ph to ptr
  %.sroa.35.sroa.0.sroa.13.0.insert.ext = zext i24 %.sroa.35.sroa.0.sroa.13.sroa.0.0.ph to i64
  %.sroa.35.sroa.0.sroa.13.0.insert.shift = shl nuw nsw i64 %.sroa.35.sroa.0.sroa.13.0.insert.ext, 8
  %.sroa.35.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.35.sroa.0.sroa.0.0.ph to i64
  %.sroa.35.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.35.sroa.0.sroa.13.0.insert.shift, %.sroa.35.sroa.0.sroa.0.0.insert.ext
  %.sroa.35.sroa.18.0.insert.ext = zext i32 %.sroa.35.sroa.18.0.ph to i64
  %.sroa.35.sroa.18.0.insert.shift = shl nuw i64 %.sroa.35.sroa.18.0.insert.ext, 32
  %.sroa.35.sroa.0.0.insert.insert = or disjoint i64 %.sroa.35.sroa.18.0.insert.shift, %.sroa.35.sroa.0.sroa.0.0.insert.insert
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %i.cr, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.0.ph, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cq, ptr %.sroa.564.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.35.sroa.0.0.insert.insert, ptr %.sroa.665.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.eu

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !4207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  switch i8 %.sroa.5193.0.copyload.i, label %bb.t [
    i8 1, label %bb.v
    i8 2, label %bb.u
  ], !prof !4213

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #36
  unreachable

bb.u:                                             ; preds = %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u
  %.sink = phi i8 [ 0, %bb.u ], [ %.sroa.5193.0.copyload.i, %bb.s ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 305
  store i8 %.sink, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 304
  store i8 %switch.select2.i.i.i.i, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  store i32 1, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 268
  store i32 %i.cd, ptr %i.cv, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !4214
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  store i8 %.sink, ptr %i.cw, align 8, !noalias !4214
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 25 ; 2 uses
  store i8 %.sink, ptr %i.cx, align 1, !noalias !4214
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 26 ; 2 uses
  store i8 %.sink, ptr %i.cy, align 2, !noalias !4214
  store ptr %1, ptr %i.an, align 8, !noalias !4214
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %1, ptr %i.cz, align 8, !noalias !4214
  %i.da = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store ptr %1, ptr %i.da, align 8, !noalias !4214
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 27 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.an, i64 29
  %i.de = getelementptr inbounds nuw i8, ptr %i.an, i64 30
  %i.df = getelementptr inbounds nuw i8, ptr %i.an, i64 31
  %i.dg = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.an, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.db, i8 %.sink, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !4215
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u16RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.am, ptr noalias nofree noundef nonnull dereferenceable(1) %i.cw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0283.0.copyload.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4284.0.copyload.i), !noalias !4216
  %i.di = load i64, ptr %i.am, align 8, !range !22, !noalias !4215, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i64 %i.di, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0235.0.copyload.i.i = load ptr, ptr %i.dj, align 8, !noalias !4215 ; 2 uses
  %.sroa.4236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.4236.0.copyload.i.i = load i64, ptr %.sroa.4236.0..sroa_idx.i.i, align 8, !noalias !4215 ; 2 uses
  %.sroa.5237.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.5237.0.copyload.i.i = load i16, ptr %.sroa.5237.0..sroa_idx.i.i, align 8, !noalias !4215 ; 2 uses
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.7248.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 26
  %.sroa.7248.i.sroa.0.0.copyload.i = load i16, ptr %.sroa.7248.0..sroa_idx.i.i, align 2, !noalias !4215
  %.sroa.7248.i.sroa.4.0..sroa.7248.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %.sroa.7248.i.sroa.4.0.copyload.i = load i32, ptr %.sroa.7248.i.sroa.4.0..sroa.7248.0..sroa_idx.i.sroa_idx.i, align 4, !noalias !4215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4215
  br label %_RNCNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB6_9ElfParser10parse_ehdr0Bc_.exit.thread

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !4215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !4215
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u16RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull dereferenceable(1) %i.cx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0235.0.copyload.i.i, i64 noundef %.sroa.4236.0.copyload.i.i), !noalias !4216
  %i.dk = load i64, ptr %i.al, align 8, !range !22, !noalias !4215, !noundef !6 ; 2 uses
  %.not470.i.i = icmp eq i64 %i.dk, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.0254.0.copyload.i.i = load ptr, ptr %i.dl, align 8, !noalias !4215 ; 2 uses
  %.sroa.4255.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.4255.0.copyload.i.i = load i64, ptr %.sroa.4255.0..sroa_idx.i.i, align 8, !noalias !4215 ; 2 uses
  %.sroa.5256.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.5256.0.copyload.i.i = load i16, ptr %.sroa.5256.0..sroa_idx.i.i, align 8, !noalias !4215 ; 2 uses
  br i1 %.not470.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.7267.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 26
  %.sroa.7267.i.sroa.0.0.copyload.i = load i16, ptr %.sroa.7267.0..sroa_idx.i.i, align 2, !noalias !4215
  %.sroa.7267.i.sroa.4.0..sroa.7267.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %.sroa.7267.i.sroa.4.0.copyload.i = load i32, ptr %.sroa.7267.i.sroa.4.0..sroa.7267.0..sroa_idx.i.sroa_idx.i, align 4, !noalias !4215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !4215
  br label %_RNCNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB6_9ElfParser10parse_ehdr0Bc_.exit.thread

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !4215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4215
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull dereferenceable(1) %i.cy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0254.0.copyload.i.i, i64 noundef %.sroa.4255.0.copyload.i.i), !noalias !4216
  %i.dm = load i64, ptr %i.ak, align 8, !range !22, !noalias !4215, !noundef !6 ; 2 uses
  %.not471.i.i = icmp eq i64 %i.dm, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.0273.0.copyload.i.i = load ptr, ptr %i.dn, align 8, !noalias !4215 ; 3 uses
  %.sroa.4274.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.4274.0.copyload.i.i = load i64, ptr %.sroa.4274.0..sroa_idx.i.i, align 8, !noalias !4215 ; 3 uses
  br i1 %.not471.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.5275.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.5275.0.copyload.i.i = load i32, ptr %.sroa.5275.0..sroa_idx.i.i, align 8, !noalias !4215 ; 2 uses
  %.sroa.7286.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %.sroa.7286.0.copyload.i.i = load i32, ptr %.sroa.7286.0..sroa_idx.i.i, align 4, !noalias !4215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4215
  %.sroa.65.sroa.0.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.5275.0.copyload.i.i to i16
  %.sroa.65.sroa.0.sroa.19.0.extract.shift.i = lshr i32 %.sroa.5275.0.copyload.i.i, 16
  %.sroa.65.sroa.0.sroa.19.0.extract.trunc.i = trunc nuw i32 %.sroa.65.sroa.0.sroa.19.0.extract.shift.i to i16
  br label %_RNCNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf6parserNtB6_9ElfParser10parse_ehdr0Bc_.exit.thread

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4215
  %.val39.i = load ptr, ptr %i.an, align 8, !noalias !4214, !nonnull !6, !align !10, !noundef !6 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val39.i, i64 304
  %i.dp = load i8, ptr %i.do, align 8, !range !21, !noalias !4217, !noundef !6
  %i.dq = icmp eq i8 %i.dp, 1
  br i1 %i.dq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4218
  %i.dr = getelementptr inbounds nuw i8, ptr %.val39.i, i64 305
  %i.ds = load i8, ptr %i.dr, align 1, !range !14, !noalias !4217, !noundef !6
  store i8 %i.ds, ptr %i.aa, align 1, !noalias !4218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4219
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull dereferenceable(1) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0273.0.copyload.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4274.0.copyload.i.i), !noalias !4220
  %i.dt = load i64, ptr %i.x, align 8, !range !22, !noalias !4219, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dt, -1
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.019.0.copyload.i.i.i.i = load ptr, ptr %i.du, align 8, !noalias !4219 ; 3 uses
  %.sroa.420.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.420.0.copyload.i.i.i.i = load i64, ptr %.sroa.420.0..sroa_idx.i.i.i.i, align 8, !noalias !4219 ; 2 uses
  %.sroa.521.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.521.0.copyload.i.i.i.i = load i32, ptr %.sroa.521.0..sroa_idx.i.i.i.i, align 8, !noalias !4219 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4218
  %i.dv = getelementptr inbounds nuw i8, ptr %.val39.i, i64 305
  %i.dw = load i8, ptr %i.dv, align 1, !range !14, !noalias !4217, !noundef !6
  store i8 %i.dw, ptr %i.y, align 1, !noalias !4218
  call void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull dereferenceable(1) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0273.0.copyload.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4274.0.copyload.i.i), !noalias !4221
  %i.dx = load i64, ptr %i.z, align 8, !range !22, !noalias !4218, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dx, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.z, i64 8
end_hunk_0
