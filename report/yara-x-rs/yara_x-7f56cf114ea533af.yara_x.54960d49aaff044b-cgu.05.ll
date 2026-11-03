Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser18parse_certificates:bb.a
  %.sroa.641.sroa.7.0.copyload.i = load i64, ptr %.sroa.641.sroa.7.0..sroa.641.0..sroa_idx.sroa_idx.i, align 8, !noalias !10862
  %.sroa.641.sroa.8.0..sroa.641.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.641.sroa.8.0.copyload.i = load ptr, ptr %.sroa.641.sroa.8.0..sroa.641.0..sroa_idx.sroa_idx.i, align 8, !noalias !10862
  %.sroa.641.sroa.9.0..sroa.641.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.641.sroa.9.0.copyload.i = load i64, ptr %.sroa.641.sroa.9.0..sroa.641.0..sroa_idx.sroa_idx.i, align 8, !noalias !10862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10862
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.039.0.copyload.i, ptr %i.ir, align 8, !alias.scope !10861
  %.sroa.4120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.641.sroa.0.0.copyload.i, ptr %.sroa.4120.0..sroa_idx.i, align 8, !alias.scope !10861
  %.sroa.5121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.641.sroa.7.0.copyload.i, ptr %.sroa.5121.0..sroa_idx.i, align 8, !alias.scope !10861
  %.sroa.6122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.641.sroa.8.0.copyload.i, ptr %.sroa.6122.0..sroa_idx.i, align 8, !alias.scope !10861
  %.sroa.7123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.641.sroa.9.0.copyload.i, ptr %.sroa.7123.0..sroa_idx.i, align 8, !alias.scope !10861
  br label %bb.ff

bb.fp:                                            ; preds = %bb.fk, %bb.g, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs92Y28wVgKBa_7asn1_rs6header6HeaderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj) #28
          to label %common.resume.i unwind label %bb.fq, !noalias !10861

bb.fq:                                            ; preds = %bb.fp
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !10861
  unreachable

_RNCINvNtNtCslJIpglpJv42_10der_parser3ber5multi19parse_ber_containerINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser11CertificateENCINvB4_28parse_ber_sequence_defined_gB13_NCNvB1C_18parse_certificates0NtNtCs92Y28wVgKBa_7asn1_rs5error5ErrorE0B3L_E0B1I_.exit: ; preds = %bb.b, %bb.fn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs92Y28wVgKBa_7asn1_rs6header6HeaderECs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser25convert_to_version_string(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = lshr i32 %1, 16
  store i32 %i.e, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = lshr i32 %1, 8
  %i.g = and i32 %i.f, 255
  store i32 %i.g, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = and i32 %1, 255
  store i32 %i.h, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.i, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.j, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @628, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser29convert_to_build_tool_version(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = lshr i32 %1, 16
  store i32 %i.d, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = lshr i32 %1, 8
  %i.f = and i32 %i.e, 255
  store i32 %i.f, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @37, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser32convert_to_source_version_string(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [80 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = lshr i64 %1, 40
  store i64 %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = lshr i64 %1, 30
  %i.i = and i64 %i.h, 63
  store i64 %i.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = lshr i64 %1, 20
  %i.k = and i64 %i.j, 63
  store i64 %i.k, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = lshr i64 %1, 10
  %i.m = and i64 %i.l, 63
  store i64 %i.m, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = and i64 %1, 63
  store i64 %i.n, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.o, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.p, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.q, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.b, ptr %i.r, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @629, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5utils4asn110oid_to_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 1                ; 44 uses
  %i.e = alloca [44 x i8], align 4                ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !5
  %.sroa.02800.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.02800.0 = load ptr, ptr %.sroa.02800.0.in, align 8, !nonnull !5, !noundef !5
  call void @_RNvMs_Cs9UgDHlk63pp_9const_oidNtB4_16ObjectIdentifier10from_bytes(ptr noalias nofree noundef nonnull sret([44 x i8]) align 4 captures(none) dereferenceable(44) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.02800.0, i64 noundef %.sroa.5.0)
  %i.f = load i8, ptr %i.e, align 4, !range !22, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @2694, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bu

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.0.0.copyload = load i8, ptr %i.j, align 1 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %.sroa.110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %.sroa.125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 11 ; 2 uses
  %.sroa.165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 13 ; 2 uses
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %.sroa.301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %.sroa.394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  %.sroa.508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 27
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 29
  %2 = load <32 x i8>, ptr %.sroa.16.0..sroa_idx, align 4 ; 2 uses
  %.sroa.784.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  %.sroa.808.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 31
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 33
  %.sroa.922.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 34
  %.sroa.946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 35
  %.sroa.991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %.sroa.1015.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 37
  %.sroa.1060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 38
  %i.k = load <32 x i8>, ptr %.sroa.53.0..sroa_idx, align 1 ; 4 uses
  %.sroa.1060.0.copyload = load i8, ptr %.sroa.1060.0..sroa_idx, align 2 ; 22 uses
  %.sroa.1015.0.copyload = load i8, ptr %.sroa.1015.0..sroa_idx, align 1 ; 22 uses
  %i.l = load <16 x i8>, ptr %.sroa.125.0..sroa_idx, align 1 ; 20 uses
  %3 = load <32 x i8>, ptr %.sroa.3.0..sroa_idx, align 2 ; 2 uses
  %i.m = load <32 x i8>, ptr %.sroa.23.0..sroa_idx, align 1 ; 12 uses
  %.sroa.991.0.copyload = load i8, ptr %.sroa.991.0..sroa_idx, align 4 ; 16 uses
  %.sroa.946.0.copyload = load i8, ptr %.sroa.946.0..sroa_idx, align 1 ; 16 uses
  %.sroa.922.0.copyload = load i8, ptr %.sroa.922.0..sroa_idx, align 2 ; 16 uses
  %.sroa.877.0.copyload = load i8, ptr %.sroa.877.0..sroa_idx, align 1 ; 16 uses
  %.sroa.853.0.copyload = load i8, ptr %.sroa.853.0..sroa_idx, align 4 ; 16 uses
  %.sroa.808.0.copyload = load i8, ptr %.sroa.808.0..sroa_idx, align 1 ; 16 uses
  %.sroa.784.0.copyload = load i8, ptr %.sroa.784.0..sroa_idx, align 2 ; 16 uses
  %.sroa.739.0.copyload = load i8, ptr %.sroa.739.0..sroa_idx, align 1 ; 15 uses
  %i.n = load <16 x i8>, ptr %.sroa.187.0..sroa_idx, align 1 ; 6 uses
  %.sroa.715.0.copyload = load i8, ptr %.sroa.715.0..sroa_idx, align 4 ; 12 uses
  %.sroa.670.0.copyload = load i8, ptr %.sroa.670.0..sroa_idx, align 1 ; 12 uses
  %.sroa.646.0.copyload = load i8, ptr %.sroa.646.0..sroa_idx, align 2
  %.sroa.601.0.copyload = load i8, ptr %.sroa.601.0..sroa_idx, align 1
  %.sroa.577.0.copyload = load i8, ptr %.sroa.577.0..sroa_idx, align 4
  %.sroa.532.0.copyload = load i8, ptr %.sroa.532.0..sroa_idx, align 1
  %.sroa.508.0.copyload = load i8, ptr %.sroa.508.0..sroa_idx, align 2
  %.sroa.463.0.copyload = load i8, ptr %.sroa.463.0..sroa_idx, align 1
  %.sroa.439.0.copyload = load i8, ptr %.sroa.439.0..sroa_idx, align 4
  %.sroa.394.0.copyload = load i8, ptr %.sroa.394.0..sroa_idx, align 1
  %.sroa.370.0.copyload = load i8, ptr %.sroa.370.0..sroa_idx, align 2
  %.sroa.325.0.copyload = load i8, ptr %.sroa.325.0..sroa_idx, align 1
  %.sroa.301.0.copyload = load i8, ptr %.sroa.301.0..sroa_idx, align 4
  %.sroa.256.0.copyload = load i8, ptr %.sroa.256.0..sroa_idx, align 1
  %.sroa.232.0.copyload = load i8, ptr %.sroa.232.0..sroa_idx, align 2
  %.sroa.187.0.copyload = load i8, ptr %.sroa.187.0..sroa_idx, align 1
  %.sroa.165.0.copyload = load i8, ptr %.sroa.165.0..sroa_idx, align 4 ; 2 uses
  %.sroa.125.0.copyload = load i8, ptr %.sroa.125.0..sroa_idx, align 1 ; 2 uses
  %.sroa.110.0.copyload = load i8, ptr %.sroa.110.0..sroa_idx, align 2 ; 5 uses
  %i.o = load <8 x i8>, ptr %.sroa.3.0..sroa_idx, align 2
  %.fr = freeze <8 x i8> %i.o                     ; 33 uses
  %.sroa.1084.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 39
  %.sroa.1084.0.copyload = load i8, ptr %.sroa.1084.0..sroa_idx, align 1 ; 24 uses
  %.sroa.1129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.1129.0.copyload = load i8, ptr %.sroa.1129.0..sroa_idx, align 4 ; 24 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  switch i8 %.sroa.0.0.copyload, label %bb.d [
    i8 8, label %bb.e
    i8 5, label %bb.f
    i8 9, label %bb.g
    i8 7, label %bb.h
    i8 3, label %bb.i
    i8 11, label %bb.j
  ]

bb.d:                                             ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.sroa.0.0.copyload, ptr %i.d, align 1
  %.sroa.3.0..sroa_idx1609 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.p = extractelement <8 x i8> %.fr, i64 0
  store i8 %i.p, ptr %.sroa.3.0..sroa_idx1609, align 1
  %.sroa.9.0..sroa_idx1616 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.q = extractelement <8 x i8> %.fr, i64 1
  store i8 %i.q, ptr %.sroa.9.0..sroa_idx1616, align 1
  %.sroa.16.0..sroa_idx1624 = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.r = extractelement <8 x i8> %.fr, i64 2
  store i8 %i.r, ptr %.sroa.16.0..sroa_idx1624, align 1
  %.sroa.23.0..sroa_idx1632 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.s = extractelement <8 x i8> %.fr, i64 3
  store i8 %i.s, ptr %.sroa.23.0..sroa_idx1632, align 1
  %.sroa.41.0..sroa_idx1651 = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.t = extractelement <8 x i8> %.fr, i64 4
  store i8 %i.t, ptr %.sroa.41.0..sroa_idx1651, align 1
  %.sroa.53.0..sroa_idx1664 = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.u = extractelement <8 x i8> %.fr, i64 5
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx1664, align 1
  %.sroa.74.0..sroa_idx1686 = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.v = extractelement <8 x i8> %.fr, i64 6
  store i8 %i.v, ptr %.sroa.74.0..sroa_idx1686, align 1
  %.sroa.88.0..sroa_idx1701 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = extractelement <8 x i8> %.fr, i64 7
  store i8 %i.w, ptr %.sroa.88.0..sroa_idx1701, align 1
  %.sroa.110.0..sroa_idx1724 = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 %.sroa.110.0.copyload, ptr %.sroa.110.0..sroa_idx1724, align 1
  %.sroa.125.0..sroa_idx1740 = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i8 %.sroa.125.0.copyload, ptr %.sroa.125.0..sroa_idx1740, align 1
  %.sroa.165.0..sroa_idx1781 = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  store i8 %.sroa.165.0.copyload, ptr %.sroa.165.0..sroa_idx1781, align 1
  %.sroa.187.0..sroa_idx1804 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 %.sroa.187.0.copyload, ptr %.sroa.187.0..sroa_idx1804, align 1
  %.sroa.232.0..sroa_idx1850 = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 %.sroa.232.0.copyload, ptr %.sroa.232.0..sroa_idx1850, align 1
  %.sroa.256.0..sroa_idx1875 = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  store i8 %.sroa.256.0.copyload, ptr %.sroa.256.0..sroa_idx1875, align 1
  %.sroa.301.0..sroa_idx1921 = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 %.sroa.301.0.copyload, ptr %.sroa.301.0..sroa_idx1921, align 1
  %.sroa.325.0..sroa_idx1946 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %.sroa.325.0.copyload, ptr %.sroa.325.0..sroa_idx1946, align 1
  %.sroa.370.0..sroa_idx1992 = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  store i8 %.sroa.370.0.copyload, ptr %.sroa.370.0..sroa_idx1992, align 1
  %.sroa.394.0..sroa_idx2017 = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 %.sroa.394.0.copyload, ptr %.sroa.394.0..sroa_idx2017, align 1
  %.sroa.439.0..sroa_idx2063 = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  store i8 %.sroa.439.0.copyload, ptr %.sroa.439.0..sroa_idx2063, align 1
  %.sroa.463.0..sroa_idx2088 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 %.sroa.463.0.copyload, ptr %.sroa.463.0..sroa_idx2088, align 1
  %.sroa.508.0..sroa_idx2134 = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  store i8 %.sroa.508.0.copyload, ptr %.sroa.508.0..sroa_idx2134, align 1
  %.sroa.532.0..sroa_idx2159 = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  store i8 %.sroa.532.0.copyload, ptr %.sroa.532.0..sroa_idx2159, align 1
  %.sroa.577.0..sroa_idx2205 = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  store i8 %.sroa.577.0.copyload, ptr %.sroa.577.0..sroa_idx2205, align 1
  %.sroa.601.0..sroa_idx2230 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %.sroa.601.0.copyload, ptr %.sroa.601.0..sroa_idx2230, align 1
  %.sroa.646.0..sroa_idx2276 = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  store i8 %.sroa.646.0.copyload, ptr %.sroa.646.0..sroa_idx2276, align 1
  %.sroa.670.0..sroa_idx2301 = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  store i8 %.sroa.670.0.copyload, ptr %.sroa.670.0..sroa_idx2301, align 1
  %.sroa.715.0..sroa_idx2347 = getelementptr inbounds nuw i8, ptr %i.d, i64 27
  store i8 %.sroa.715.0.copyload, ptr %.sroa.715.0..sroa_idx2347, align 1
  %.sroa.739.0..sroa_idx2372 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i8 %.sroa.739.0.copyload, ptr %.sroa.739.0..sroa_idx2372, align 1
  %.sroa.784.0..sroa_idx2418 = getelementptr inbounds nuw i8, ptr %i.d, i64 29
  store i8 %.sroa.784.0.copyload, ptr %.sroa.784.0..sroa_idx2418, align 1
  %.sroa.808.0..sroa_idx2443 = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  store i8 %.sroa.808.0.copyload, ptr %.sroa.808.0..sroa_idx2443, align 1
  %.sroa.853.0..sroa_idx2489 = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  store i8 %.sroa.853.0.copyload, ptr %.sroa.853.0..sroa_idx2489, align 1
  %.sroa.877.0..sroa_idx2514 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 %.sroa.877.0.copyload, ptr %.sroa.877.0..sroa_idx2514, align 1
  %.sroa.922.0..sroa_idx2560 = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  store i8 %.sroa.922.0.copyload, ptr %.sroa.922.0..sroa_idx2560, align 1
  %.sroa.946.0..sroa_idx2585 = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  store i8 %.sroa.946.0.copyload, ptr %.sroa.946.0..sroa_idx2585, align 1
  %.sroa.991.0..sroa_idx2631 = getelementptr inbounds nuw i8, ptr %i.d, i64 35
  store i8 %.sroa.991.0.copyload, ptr %.sroa.991.0..sroa_idx2631, align 1
  %.sroa.1015.0..sroa_idx2656 = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i8 %.sroa.1015.0.copyload, ptr %.sroa.1015.0..sroa_idx2656, align 1
  %.sroa.1060.0..sroa_idx2702 = getelementptr inbounds nuw i8, ptr %i.d, i64 37
  store i8 %.sroa.1060.0.copyload, ptr %.sroa.1060.0..sroa_idx2702, align 1
  %.sroa.1084.0..sroa_idx2727 = getelementptr inbounds nuw i8, ptr %i.d, i64 38
  store i8 %.sroa.1084.0.copyload, ptr %.sroa.1084.0..sroa_idx2727, align 1
  %.sroa.1129.0..sroa_idx2773 = getelementptr inbounds nuw i8, ptr %i.d, i64 39
  store i8 %.sroa.1129.0.copyload, ptr %.sroa.1129.0..sroa_idx2773, align 1
  %i.x = call { ptr, i64 } @_RNvMNtCs9UgDHlk63pp_9const_oid2dbNtB2_8Database6by_oid(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @2693, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(40) %i.d) ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0        ; 2 uses
  %.not2801 = icmp eq ptr %i.y, null
  br i1 %.not2801, label %bb.bn, label %bb.bm

bb.e:                                             ; preds = %bb.c
  %i.z = extractelement <8 x i8> %.fr, i64 0
  %i.aa = icmp eq i8 %i.z, 42
  %i.ab = extractelement <8 x i8> %.fr, i64 1
  %i.ac = icmp eq i8 %i.ab, -122
  %i.ad = shufflevector <32 x i8> %2, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25>
  %i.ae = shufflevector <32 x i8> %2, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24>
  %i.af = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ag = or <16 x i8> %i.ad, %i.af
  %.fr3283 = freeze <16 x i8> %i.ag
  %i.ah = or i8 %.sroa.808.0.copyload, %.sroa.784.0.copyload
  %or.cond71 = icmp eq i8 %i.ah, 0
  %i.ai = or i8 %.sroa.877.0.copyload, %.sroa.853.0.copyload
  %or.cond75 = icmp eq i8 %i.ai, 0
  %i.aj = or i8 %.sroa.946.0.copyload, %.sroa.922.0.copyload
  %or.cond79 = icmp eq i8 %i.aj, 0
  %i.ak = or i8 %.sroa.1015.0.copyload, %.sroa.991.0.copyload
  %or.cond83 = icmp eq i8 %i.ak, 0
  %i.al = icmp ne <16 x i8> %.fr3283, <i8 72, i8 -122, i8 -9, i8 13, i8 2, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  %op.rdx = and i1 %i.an, %i.aa
  %i.ao = and i1 %op.rdx, %i.ac
  %op.rdx3147 = select i1 %i.ao, i1 %or.cond71, i1 false
  %i.ap = select i1 %op.rdx3147, i1 %or.cond75, i1 false
  %i.aq = select i1 %i.ap, i1 %or.cond79, i1 false
  %op.rdx3149 = select i1 %i.aq, i1 %or.cond83, i1 false
  br i1 %op.rdx3149, label %bb.k, label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ar = extractelement <8 x i8> %.fr, i64 0
  %i.as = icmp eq i8 %i.ar, 43
  %i.at = extractelement <8 x i8> %.fr, i64 1
  %i.au = icmp eq i8 %i.at, 14
  %or.cond95 = and i1 %i.as, %i.au
  %i.av = extractelement <8 x i8> %.fr, i64 2
  %i.aw = icmp eq i8 %i.av, 3
  %or.cond99 = and i1 %or.cond95, %i.aw
  %i.ax = extractelement <8 x i8> %.fr, i64 3
  %i.ay = icmp eq i8 %i.ax, 2
  %or.cond103 = and i1 %or.cond99, %i.ay
  br i1 %or.cond103, label %bb.m, label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.az = extractelement <8 x i8> %.fr, i64 0
  switch i8 %i.az, label %bb.d [
    i8 96, label %bb.r
    i8 42, label %bb.s
  ]

bb.h:                                             ; preds = %bb.c
  %i.ba = shufflevector <32 x i8> %3, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24>
  %i.bb = shufflevector <32 x i8> %3, <32 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23>
  %i.bc = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bd = or <16 x i8> %i.ba, %i.bc
  %.fr3270 = freeze <16 x i8> %i.bd
  %i.be = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond943 = icmp eq i8 %i.be, 0
  %i.bf = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond947 = icmp eq i8 %i.bf, 0
  %i.bg = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond951 = icmp eq i8 %i.bg, 0
  %i.bh = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond955 = icmp eq i8 %i.bh, 0
  %i.bi = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond959 = icmp eq i8 %i.bi, 0
  %i.bj = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond963 = icmp eq i8 %i.bj, 0
  %i.bk = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond967 = icmp eq i8 %i.bk, 0
  %i.bl = icmp ne <16 x i8> %.fr3270, <i8 42, i8 -122, i8 72, i8 -50, i8 56, i8 4, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %i.bn = icmp eq i16 %i.bm, 0
  %op.rdx3222 = select i1 %i.bn, i1 %or.cond943, i1 false
  %i.bo = select i1 %op.rdx3222, i1 %or.cond947, i1 false
  %op.rdx3226 = select i1 %i.bo, i1 %or.cond951, i1 false
  %i.bp = select i1 %op.rdx3226, i1 %or.cond955, i1 false
  %i.bq = select i1 %i.bp, i1 %or.cond959, i1 false
  %i.br = select i1 %i.bq, i1 %or.cond963, i1 false
  %op.rdx3228 = select i1 %i.br, i1 %or.cond967, i1 false
  br i1 %op.rdx3228, label %bb.ar, label %bb.d

bb.i:                                             ; preds = %bb.c
  %i.bs = extractelement <8 x i8> %.fr, i64 0
  %i.bt = icmp eq i8 %i.bs, 85
  %i.bu = extractelement <8 x i8> %.fr, i64 1
  %i.bv = icmp eq i8 %i.bu, 4
  %or.cond971 = and i1 %i.bt, %i.bv
  br i1 %or.cond971, label %bb.as, label %bb.d

bb.j:                                             ; preds = %bb.c
  %i.bw = icmp eq i8 %.sroa.110.0.copyload, 2
  %i.bx = icmp eq i8 %.sroa.125.0.copyload, 1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.by = icmp eq i64 %.fr.scalar, 4339079706868516395
  %op.rdx3259 = select i1 %i.by, i1 %i.bw, i1 false
  %op.rdx3260 = select i1 %op.rdx3259, i1 %i.bx, i1 false
  br i1 %op.rdx3260, label %bb.bf, label %bb.d

bb.k:                                             ; preds = %bb.e
  %i.bz = or i8 %.sroa.1084.0.copyload, %.sroa.1060.0.copyload
  %or.cond87 = icmp eq i8 %i.bz, 0
  %i.ca = icmp eq i8 %.sroa.1129.0.copyload, 0
  %or.cond91 = select i1 %or.cond87, i1 %i.ca, i1 false
  br i1 %or.cond91, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @630, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.cc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.m:                                             ; preds = %bb.f
  %i.cd = extractelement <8 x i8> %.fr, i64 4
  switch i8 %i.cd, label %bb.d [
    i8 26, label %bb.n
    i8 29, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ce = shufflevector <32 x i8> %i.k, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.cf = shufflevector <32 x i8> %i.k, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.cg = or <16 x i8> %i.ce, %i.cf
  %.fr3282 = freeze <16 x i8> %i.cg
  %i.ch = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond171 = icmp eq i8 %i.ch, 0
  %i.ci = icmp ne <16 x i8> %.fr3282, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16
  %i.ck = icmp eq i16 %i.cj, 0
  %op.rdx3150 = select i1 %i.ck, i1 %or.cond171, i1 false
  br i1 %op.rdx3150, label %bb.p, label %bb.d

bb.o:                                             ; preds = %bb.m
  %i.cl = shufflevector <32 x i8> %i.k, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.cm = shufflevector <32 x i8> %i.k, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.cn = or <16 x i8> %i.cl, %i.cm
  %.fr3281 = freeze <16 x i8> %i.cn
  %i.co = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond239 = icmp eq i8 %i.co, 0
  %i.cp = icmp ne <16 x i8> %.fr3281, zeroinitializer
  %i.cq = bitcast <16 x i1> %i.cp to i16
  %i.cr = icmp eq i16 %i.cq, 0
  %op.rdx3151 = select i1 %i.cr, i1 %or.cond239, i1 false
  br i1 %op.rdx3151, label %bb.q, label %bb.d

bb.p:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @631, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %i.ct, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.q:                                             ; preds = %bb.aj, %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @638, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %i.cv, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.r:                                             ; preds = %bb.g
  %i.cw = extractelement <8 x i8> %.fr, i64 1
  %i.cx = icmp eq i8 %i.cw, -122
  %i.cy = extractelement <8 x i8> %.fr, i64 2
  %i.cz = icmp eq i8 %i.cy, 72
  %or.cond243 = and i1 %i.cx, %i.cz
  %i.da = extractelement <8 x i8> %.fr, i64 3
  %i.db = icmp eq i8 %i.da, 1
  %or.cond247 = and i1 %or.cond243, %i.db
  %i.dc = extractelement <8 x i8> %.fr, i64 4
  %i.dd = icmp eq i8 %i.dc, 101
  %or.cond251 = and i1 %or.cond247, %i.dd
  %i.de = extractelement <8 x i8> %.fr, i64 5
  %i.df = icmp eq i8 %i.de, 3
  %or.cond255 = and i1 %or.cond251, %i.df
  %i.dg = extractelement <8 x i8> %.fr, i64 6
  %i.dh = icmp eq i8 %i.dg, 4
  %or.cond259 = and i1 %or.cond255, %i.dh
  br i1 %or.cond259, label %bb.t, label %bb.d

bb.s:                                             ; preds = %bb.g
  %i.di = extractelement <8 x i8> %.fr, i64 1
  %i.dj = icmp eq i8 %i.di, -122
  %i.dk = extractelement <8 x i8> %.fr, i64 2
  %i.dl = icmp eq i8 %i.dk, 72
  %or.cond563 = and i1 %i.dj, %i.dl
  %i.dm = extractelement <8 x i8> %.fr, i64 3
  %i.dn = icmp eq i8 %i.dm, -122
  %or.cond567 = and i1 %or.cond563, %i.dn
  %i.do = extractelement <8 x i8> %.fr, i64 4
  %i.dp = icmp eq i8 %i.do, -9
  %or.cond571 = and i1 %or.cond567, %i.dp
  %i.dq = extractelement <8 x i8> %.fr, i64 5
  %i.dr = icmp eq i8 %i.dq, 13
  %or.cond575 = and i1 %or.cond571, %i.dr
  br i1 %or.cond575, label %bb.ag, label %bb.d

bb.t:                                             ; preds = %bb.r
  %i.ds = extractelement <8 x i8> %.fr, i64 7
  switch i8 %i.ds, label %bb.d [
    i8 2, label %bb.u
    i8 3, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  switch i8 %.sroa.110.0.copyload, label %bb.d [
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
  ]

bb.v:                                             ; preds = %bb.t
  switch i8 %.sroa.110.0.copyload, label %bb.d [
    i8 1, label %bb.ac
    i8 2, label %bb.ad
  ]

bb.w:                                             ; preds = %bb.u
  %i.dt = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.du = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dv = or <8 x i8> %i.dt, %i.du
  %.fr3280 = freeze <8 x i8> %i.dv
  %i.dw = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond295 = icmp eq i8 %i.dw, 0
  %i.dx = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond299 = icmp eq i8 %i.dx, 0
  %i.dy = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond303 = icmp eq i8 %i.dy, 0
  %i.dz = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond307 = icmp eq i8 %i.dz, 0
  %i.ea = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond311 = icmp eq i8 %i.ea, 0
  %i.eb = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond315 = icmp eq i8 %i.eb, 0
  %i.ec = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond319 = icmp eq i8 %i.ec, 0
  %.fr3280.scalar = bitcast <8 x i8> %.fr3280 to i64
  %i.ed = icmp eq i64 %.fr3280.scalar, 0
  %op.rdx3152 = select i1 %i.ed, i1 %or.cond295, i1 false
  %i.ee = select i1 %op.rdx3152, i1 %or.cond299, i1 false
  %op.rdx3156 = select i1 %i.ee, i1 %or.cond303, i1 false
  %i.ef = select i1 %op.rdx3156, i1 %or.cond307, i1 false
  %i.eg = select i1 %i.ef, i1 %or.cond311, i1 false
  %i.eh = select i1 %i.eg, i1 %or.cond315, i1 false
  %op.rdx3158 = select i1 %i.eh, i1 %or.cond319, i1 false
  br i1 %op.rdx3158, label %bb.z, label %bb.d

bb.x:                                             ; preds = %bb.u
  %i.ei = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ej = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ek = or <8 x i8> %i.ei, %i.ej
  %.fr3279 = freeze <8 x i8> %i.ek
  %i.el = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond355 = icmp eq i8 %i.el, 0
  %i.em = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond359 = icmp eq i8 %i.em, 0
  %i.en = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond363 = icmp eq i8 %i.en, 0
  %i.eo = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond367 = icmp eq i8 %i.eo, 0
  %i.ep = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond371 = icmp eq i8 %i.ep, 0
  %i.eq = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond375 = icmp eq i8 %i.eq, 0
  %i.er = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond379 = icmp eq i8 %i.er, 0
  %.fr3279.scalar = bitcast <8 x i8> %.fr3279 to i64
  %i.es = icmp eq i64 %.fr3279.scalar, 0
  %op.rdx3159 = select i1 %i.es, i1 %or.cond355, i1 false
  %i.et = select i1 %op.rdx3159, i1 %or.cond359, i1 false
  %op.rdx3163 = select i1 %i.et, i1 %or.cond363, i1 false
  %i.eu = select i1 %op.rdx3163, i1 %or.cond367, i1 false
  %i.ev = select i1 %i.eu, i1 %or.cond371, i1 false
  %i.ew = select i1 %i.ev, i1 %or.cond375, i1 false
  %op.rdx3165 = select i1 %i.ew, i1 %or.cond379, i1 false
  br i1 %op.rdx3165, label %bb.aa, label %bb.d

bb.y:                                             ; preds = %bb.u
  %i.ex = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ey = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ez = or <8 x i8> %i.ex, %i.ey
  %.fr3278 = freeze <8 x i8> %i.ez
  %i.fa = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond415 = icmp eq i8 %i.fa, 0
  %i.fb = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond419 = icmp eq i8 %i.fb, 0
  %i.fc = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond423 = icmp eq i8 %i.fc, 0
  %i.fd = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond427 = icmp eq i8 %i.fd, 0
  %i.fe = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond431 = icmp eq i8 %i.fe, 0
  %i.ff = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond435 = icmp eq i8 %i.ff, 0
  %i.fg = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond439 = icmp eq i8 %i.fg, 0
  %.fr3278.scalar = bitcast <8 x i8> %.fr3278 to i64
  %i.fh = icmp eq i64 %.fr3278.scalar, 0
  %op.rdx3166 = select i1 %i.fh, i1 %or.cond415, i1 false
  %i.fi = select i1 %op.rdx3166, i1 %or.cond419, i1 false
  %op.rdx3170 = select i1 %i.fi, i1 %or.cond423, i1 false
  %i.fj = select i1 %op.rdx3170, i1 %or.cond427, i1 false
  %i.fk = select i1 %i.fj, i1 %or.cond431, i1 false
  %i.fl = select i1 %i.fk, i1 %or.cond435, i1 false
  %op.rdx3172 = select i1 %i.fl, i1 %or.cond439, i1 false
  br i1 %op.rdx3172, label %bb.ab, label %bb.d

bb.z:                                             ; preds = %bb.w
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @632, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.fn, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.aa:                                            ; preds = %bb.x
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @633, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.fp, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ab:                                            ; preds = %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @634, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.fr, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ac:                                            ; preds = %bb.v
  %i.fs = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ft = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.fu = or <8 x i8> %i.fs, %i.ft
  %.fr3277 = freeze <8 x i8> %i.fu
  %i.fv = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond475 = icmp eq i8 %i.fv, 0
  %i.fw = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond479 = icmp eq i8 %i.fw, 0
  %i.fx = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond483 = icmp eq i8 %i.fx, 0
  %i.fy = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond487 = icmp eq i8 %i.fy, 0
  %i.fz = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond491 = icmp eq i8 %i.fz, 0
  %i.ga = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond495 = icmp eq i8 %i.ga, 0
  %i.gb = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond499 = icmp eq i8 %i.gb, 0
  %.fr3277.scalar = bitcast <8 x i8> %.fr3277 to i64
  %i.gc = icmp eq i64 %.fr3277.scalar, 0
  %op.rdx3173 = select i1 %i.gc, i1 %or.cond475, i1 false
  %i.gd = select i1 %op.rdx3173, i1 %or.cond479, i1 false
  %op.rdx3177 = select i1 %i.gd, i1 %or.cond483, i1 false
  %i.ge = select i1 %op.rdx3177, i1 %or.cond487, i1 false
  %i.gf = select i1 %i.ge, i1 %or.cond491, i1 false
  %i.gg = select i1 %i.gf, i1 %or.cond495, i1 false
  %op.rdx3179 = select i1 %i.gg, i1 %or.cond499, i1 false
  br i1 %op.rdx3179, label %bb.ae, label %bb.d

bb.ad:                                            ; preds = %bb.v
  %i.gh = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gi = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gj = or <8 x i8> %i.gh, %i.gi
  %.fr3276 = freeze <8 x i8> %i.gj
  %i.gk = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond535 = icmp eq i8 %i.gk, 0
  %i.gl = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond539 = icmp eq i8 %i.gl, 0
  %i.gm = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond543 = icmp eq i8 %i.gm, 0
  %i.gn = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond547 = icmp eq i8 %i.gn, 0
  %i.go = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond551 = icmp eq i8 %i.go, 0
  %i.gp = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond555 = icmp eq i8 %i.gp, 0
  %i.gq = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond559 = icmp eq i8 %i.gq, 0
  %.fr3276.scalar = bitcast <8 x i8> %.fr3276 to i64
  %i.gr = icmp eq i64 %.fr3276.scalar, 0
  %op.rdx3180 = select i1 %i.gr, i1 %or.cond535, i1 false
  %i.gs = select i1 %op.rdx3180, i1 %or.cond539, i1 false
  %op.rdx3184 = select i1 %i.gs, i1 %or.cond543, i1 false
  %i.gt = select i1 %op.rdx3184, i1 %or.cond547, i1 false
  %i.gu = select i1 %i.gt, i1 %or.cond551, i1 false
  %i.gv = select i1 %i.gu, i1 %or.cond555, i1 false
  %op.rdx3186 = select i1 %i.gv, i1 %or.cond559, i1 false
  br i1 %op.rdx3186, label %bb.af, label %bb.d

bb.ae:                                            ; preds = %bb.ac
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @635, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %i.gx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.af:                                            ; preds = %bb.ad
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @636, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %i.gz, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ag:                                            ; preds = %bb.s
  %i.ha = icmp eq <8 x i8> %.fr, <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 1> ; 2 uses
  %shift = shufflevector <8 x i1> %i.ha, <8 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 poison>
  %i.hb = and <8 x i1> %i.ha, %shift
  %or.cond579 = extractelement <8 x i1> %i.hb, i64 6
  br i1 %or.cond579, label %bb.ah, label %bb.d

bb.ah:                                            ; preds = %bb.ag
  switch i8 %.sroa.110.0.copyload, label %bb.d [
    i8 4, label %bb.ai
    i8 5, label %bb.aj
    i8 11, label %bb.ak
    i8 12, label %bb.al
    i8 13, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.hc = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hd = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.he = or <8 x i8> %i.hc, %i.hd
  %.fr3275 = freeze <8 x i8> %i.he
  %i.hf = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond615 = icmp eq i8 %i.hf, 0
  %i.hg = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond619 = icmp eq i8 %i.hg, 0
  %i.hh = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond623 = icmp eq i8 %i.hh, 0
  %i.hi = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond627 = icmp eq i8 %i.hi, 0
  %i.hj = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond631 = icmp eq i8 %i.hj, 0
  %i.hk = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond635 = icmp eq i8 %i.hk, 0
  %i.hl = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond639 = icmp eq i8 %i.hl, 0
  %.fr3275.scalar = bitcast <8 x i8> %.fr3275 to i64
  %i.hm = icmp eq i64 %.fr3275.scalar, 0
  %op.rdx3187 = select i1 %i.hm, i1 %or.cond615, i1 false
  %i.hn = select i1 %op.rdx3187, i1 %or.cond619, i1 false
  %op.rdx3191 = select i1 %i.hn, i1 %or.cond623, i1 false
  %i.ho = select i1 %op.rdx3191, i1 %or.cond627, i1 false
  %i.hp = select i1 %i.ho, i1 %or.cond631, i1 false
  %i.hq = select i1 %i.hp, i1 %or.cond635, i1 false
  %op.rdx3193 = select i1 %i.hq, i1 %or.cond639, i1 false
  br i1 %op.rdx3193, label %bb.an, label %bb.d

bb.aj:                                            ; preds = %bb.ah
  %i.hr = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hs = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ht = or <8 x i8> %i.hr, %i.hs
  %.fr3274 = freeze <8 x i8> %i.ht
  %i.hu = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond675 = icmp eq i8 %i.hu, 0
  %i.hv = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond679 = icmp eq i8 %i.hv, 0
  %i.hw = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond683 = icmp eq i8 %i.hw, 0
  %i.hx = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond687 = icmp eq i8 %i.hx, 0
  %i.hy = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond691 = icmp eq i8 %i.hy, 0
  %i.hz = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond695 = icmp eq i8 %i.hz, 0
  %i.ia = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond699 = icmp eq i8 %i.ia, 0
  %.fr3274.scalar = bitcast <8 x i8> %.fr3274 to i64
  %i.ib = icmp eq i64 %.fr3274.scalar, 0
  %op.rdx3194 = select i1 %i.ib, i1 %or.cond675, i1 false
  %i.ic = select i1 %op.rdx3194, i1 %or.cond679, i1 false
  %op.rdx3198 = select i1 %i.ic, i1 %or.cond683, i1 false
  %i.id = select i1 %op.rdx3198, i1 %or.cond687, i1 false
  %i.ie = select i1 %i.id, i1 %or.cond691, i1 false
  %i.if = select i1 %i.ie, i1 %or.cond695, i1 false
  %op.rdx3200 = select i1 %i.if, i1 %or.cond699, i1 false
  br i1 %op.rdx3200, label %bb.q, label %bb.d

bb.ak:                                            ; preds = %bb.ah
  %i.ig = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ih = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ii = or <8 x i8> %i.ig, %i.ih
  %.fr3273 = freeze <8 x i8> %i.ii
  %i.ij = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond735 = icmp eq i8 %i.ij, 0
  %i.ik = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond739 = icmp eq i8 %i.ik, 0
  %i.il = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond743 = icmp eq i8 %i.il, 0
  %i.im = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond747 = icmp eq i8 %i.im, 0
  %i.in = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond751 = icmp eq i8 %i.in, 0
  %i.io = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond755 = icmp eq i8 %i.io, 0
  %i.ip = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond759 = icmp eq i8 %i.ip, 0
  %.fr3273.scalar = bitcast <8 x i8> %.fr3273 to i64
  %i.iq = icmp eq i64 %.fr3273.scalar, 0
  %op.rdx3201 = select i1 %i.iq, i1 %or.cond735, i1 false
  %i.ir = select i1 %op.rdx3201, i1 %or.cond739, i1 false
  %op.rdx3205 = select i1 %i.ir, i1 %or.cond743, i1 false
  %i.is = select i1 %op.rdx3205, i1 %or.cond747, i1 false
  %i.it = select i1 %i.is, i1 %or.cond751, i1 false
  %i.iu = select i1 %i.it, i1 %or.cond755, i1 false
  %op.rdx3207 = select i1 %i.iu, i1 %or.cond759, i1 false
  br i1 %op.rdx3207, label %bb.ao, label %bb.d

bb.al:                                            ; preds = %bb.ah
  %i.iv = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.iw = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ix = or <8 x i8> %i.iv, %i.iw
  %.fr3272 = freeze <8 x i8> %i.ix
  %i.iy = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond795 = icmp eq i8 %i.iy, 0
  %i.iz = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond799 = icmp eq i8 %i.iz, 0
  %i.ja = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond803 = icmp eq i8 %i.ja, 0
  %i.jb = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond807 = icmp eq i8 %i.jb, 0
  %i.jc = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond811 = icmp eq i8 %i.jc, 0
  %i.jd = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond815 = icmp eq i8 %i.jd, 0
  %i.je = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond819 = icmp eq i8 %i.je, 0
  %.fr3272.scalar = bitcast <8 x i8> %.fr3272 to i64
  %i.jf = icmp eq i64 %.fr3272.scalar, 0
  %op.rdx3208 = select i1 %i.jf, i1 %or.cond795, i1 false
  %i.jg = select i1 %op.rdx3208, i1 %or.cond799, i1 false
  %op.rdx3212 = select i1 %i.jg, i1 %or.cond803, i1 false
  %i.jh = select i1 %op.rdx3212, i1 %or.cond807, i1 false
  %i.ji = select i1 %i.jh, i1 %or.cond811, i1 false
  %i.jj = select i1 %i.ji, i1 %or.cond815, i1 false
  %op.rdx3214 = select i1 %i.jj, i1 %or.cond819, i1 false
  br i1 %op.rdx3214, label %bb.ap, label %bb.d

bb.am:                                            ; preds = %bb.ah
  %i.jk = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.jl = shufflevector <16 x i8> %i.l, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.jm = or <8 x i8> %i.jk, %i.jl
  %.fr3271 = freeze <8 x i8> %i.jm
  %i.jn = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %or.cond855 = icmp eq i8 %i.jn, 0
  %i.jo = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %or.cond859 = icmp eq i8 %i.jo, 0
  %i.jp = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %or.cond863 = icmp eq i8 %i.jp, 0
  %i.jq = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %or.cond867 = icmp eq i8 %i.jq, 0
  %i.jr = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %or.cond871 = icmp eq i8 %i.jr, 0
  %i.js = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond875 = icmp eq i8 %i.js, 0
  %i.jt = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond879 = icmp eq i8 %i.jt, 0
  %.fr3271.scalar = bitcast <8 x i8> %.fr3271 to i64
  %i.ju = icmp eq i64 %.fr3271.scalar, 0
  %op.rdx3215 = select i1 %i.ju, i1 %or.cond855, i1 false
  %i.jv = select i1 %op.rdx3215, i1 %or.cond859, i1 false
  %op.rdx3219 = select i1 %i.jv, i1 %or.cond863, i1 false
  %i.jw = select i1 %op.rdx3219, i1 %or.cond867, i1 false
  %i.jx = select i1 %i.jw, i1 %or.cond871, i1 false
  %i.jy = select i1 %i.jx, i1 %or.cond875, i1 false
  %op.rdx3221 = select i1 %i.jy, i1 %or.cond879, i1 false
  br i1 %op.rdx3221, label %bb.aq, label %bb.d

bb.an:                                            ; preds = %bb.ai
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @637, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %i.ka, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ao:                                            ; preds = %bb.ak
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @639, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.kc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ap:                                            ; preds = %bb.al
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @640, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.ke, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.aq:                                            ; preds = %bb.am
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @641, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.kg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ar:                                            ; preds = %bb.h
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @642, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 11, ptr %i.ki, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.as:                                            ; preds = %bb.i
  %i.kj = extractelement <8 x i8> %.fr, i64 2
  switch i8 %i.kj, label %bb.d [
    i8 6, label %bb.at
    i8 3, label %bb.au
    i8 10, label %bb.av
    i8 11, label %bb.aw
    i8 8, label %bb.ax
    i8 9, label %bb.ay
  ]

bb.at:                                            ; preds = %bb.as
  %i.kk = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.kl = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.km = or <16 x i8> %i.kk, %i.kl
  %.fr3269 = freeze <16 x i8> %i.km
  %i.kn = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1039 = icmp eq i8 %i.kn, 0
  %i.ko = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1043 = icmp eq i8 %i.ko, 0
  %i.kp = icmp ne <16 x i8> %.fr3269, zeroinitializer
  %i.kq = bitcast <16 x i1> %i.kp to i16
  %i.kr = icmp eq i16 %i.kq, 0
  %op.rdx3229 = select i1 %i.kr, i1 %or.cond1039, i1 false
  %op.rdx3230 = select i1 %op.rdx3229, i1 %or.cond1043, i1 false
  br i1 %op.rdx3230, label %bb.az, label %bb.d

bb.au:                                            ; preds = %bb.as
  %i.ks = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.kt = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ku = or <16 x i8> %i.ks, %i.kt
  %.fr3268 = freeze <16 x i8> %i.ku
  %i.kv = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1111 = icmp eq i8 %i.kv, 0
  %i.kw = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1115 = icmp eq i8 %i.kw, 0
  %i.kx = icmp ne <16 x i8> %.fr3268, zeroinitializer
  %i.ky = bitcast <16 x i1> %i.kx to i16
  %i.kz = icmp eq i16 %i.ky, 0
  %op.rdx3231 = select i1 %i.kz, i1 %or.cond1111, i1 false
  %op.rdx3232 = select i1 %op.rdx3231, i1 %or.cond1115, i1 false
  br i1 %op.rdx3232, label %bb.ba, label %bb.d

bb.av:                                            ; preds = %bb.as
  %i.la = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.lb = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.lc = or <16 x i8> %i.la, %i.lb
  %.fr3267 = freeze <16 x i8> %i.lc
  %i.ld = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1183 = icmp eq i8 %i.ld, 0
  %i.le = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1187 = icmp eq i8 %i.le, 0
  %i.lf = icmp ne <16 x i8> %.fr3267, zeroinitializer
  %i.lg = bitcast <16 x i1> %i.lf to i16
  %i.lh = icmp eq i16 %i.lg, 0
  %op.rdx3233 = select i1 %i.lh, i1 %or.cond1183, i1 false
  %op.rdx3234 = select i1 %op.rdx3233, i1 %or.cond1187, i1 false
  br i1 %op.rdx3234, label %bb.bb, label %bb.d

bb.aw:                                            ; preds = %bb.as
  %i.li = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.lj = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.lk = or <16 x i8> %i.li, %i.lj
  %.fr3266 = freeze <16 x i8> %i.lk
  %i.ll = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1255 = icmp eq i8 %i.ll, 0
  %i.lm = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1259 = icmp eq i8 %i.lm, 0
  %i.ln = icmp ne <16 x i8> %.fr3266, zeroinitializer
  %i.lo = bitcast <16 x i1> %i.ln to i16
  %i.lp = icmp eq i16 %i.lo, 0
  %op.rdx3235 = select i1 %i.lp, i1 %or.cond1255, i1 false
  %op.rdx3236 = select i1 %op.rdx3235, i1 %or.cond1259, i1 false
  br i1 %op.rdx3236, label %bb.bc, label %bb.d

bb.ax:                                            ; preds = %bb.as
  %i.lq = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.lr = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ls = or <16 x i8> %i.lq, %i.lr
  %.fr3265 = freeze <16 x i8> %i.ls
  %i.lt = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1327 = icmp eq i8 %i.lt, 0
  %i.lu = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1331 = icmp eq i8 %i.lu, 0
  %i.lv = icmp ne <16 x i8> %.fr3265, zeroinitializer
  %i.lw = bitcast <16 x i1> %i.lv to i16
  %i.lx = icmp eq i16 %i.lw, 0
  %op.rdx3237 = select i1 %i.lx, i1 %or.cond1327, i1 false
  %op.rdx3238 = select i1 %op.rdx3237, i1 %or.cond1331, i1 false
  br i1 %op.rdx3238, label %bb.bd, label %bb.d

bb.ay:                                            ; preds = %bb.as
  %i.ly = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.lz = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ma = or <16 x i8> %i.ly, %i.lz
  %.fr3264 = freeze <16 x i8> %i.ma
  %i.mb = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %or.cond1399 = icmp eq i8 %i.mb, 0
  %i.mc = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1403 = icmp eq i8 %i.mc, 0
  %i.md = icmp ne <16 x i8> %.fr3264, zeroinitializer
  %i.me = bitcast <16 x i1> %i.md to i16
  %i.mf = icmp eq i16 %i.me, 0
  %op.rdx3239 = select i1 %i.mf, i1 %or.cond1399, i1 false
  %op.rdx3240 = select i1 %op.rdx3239, i1 %or.cond1403, i1 false
  br i1 %op.rdx3240, label %bb.be, label %bb.d

bb.az:                                            ; preds = %bb.at
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @643, ptr %i.mg, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.mh, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ba:                                            ; preds = %bb.au
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @644, ptr %i.mi, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.mj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bb:                                            ; preds = %bb.av
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @645, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.ml, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bc:                                            ; preds = %bb.aw
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
