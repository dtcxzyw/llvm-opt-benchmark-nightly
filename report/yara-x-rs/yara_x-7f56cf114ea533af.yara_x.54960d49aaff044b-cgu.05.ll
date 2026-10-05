Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser18parse_certificates:bb.a
  %.sroa.641.sroa.7.0.copyload.i = load i64, ptr %.sroa.641.sroa.7.0..sroa.641.0..sroa_idx.sroa_idx.i, align 8, !noalias !11366
  %.sroa.641.sroa.8.0..sroa.641.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.641.sroa.8.0.copyload.i = load ptr, ptr %.sroa.641.sroa.8.0..sroa.641.0..sroa_idx.sroa_idx.i, align 8, !noalias !11366
  %.sroa.641.sroa.9.0..sroa.641.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.641.sroa.9.0.copyload.i = load i64, ptr %.sroa.641.sroa.9.0..sroa.641.0..sroa_idx.sroa_idx.i, align 8, !noalias !11366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !11366
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.039.0.copyload.i, ptr %i.ir, align 8, !alias.scope !11365, !noalias !11367
  %.sroa.4120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.641.sroa.0.0.copyload.i, ptr %.sroa.4120.0..sroa_idx.i, align 8, !alias.scope !11365, !noalias !11367
  %.sroa.5121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.641.sroa.7.0.copyload.i, ptr %.sroa.5121.0..sroa_idx.i, align 8, !alias.scope !11365, !noalias !11367
  %.sroa.6122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.641.sroa.8.0.copyload.i, ptr %.sroa.6122.0..sroa_idx.i, align 8, !alias.scope !11365, !noalias !11367
  %.sroa.7123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.641.sroa.9.0.copyload.i, ptr %.sroa.7123.0..sroa_idx.i, align 8, !alias.scope !11365, !noalias !11367
  br label %bb.ff

bb.fp:                                            ; preds = %bb.fk, %bb.g, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs92Y28wVgKBa_7asn1_rs6header6HeaderECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj) #28
          to label %common.resume.i unwind label %bb.fq, !noalias !11365

bb.fq:                                            ; preds = %bb.fp
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11365
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
  %.sroa.370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 18 ; 2 uses
  %.sroa.394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  %.sroa.508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.601.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 27
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 29
  %2 = load <16 x i8>, ptr %.sroa.16.0..sroa_idx, align 4 ; 2 uses
  %3 = load <16 x i8>, ptr %.sroa.439.0..sroa_idx, align 4 ; 2 uses
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
  %4 = load <16 x i8>, ptr %.sroa.125.0..sroa_idx, align 1 ; 20 uses
  %i.l = load <16 x i8>, ptr %.sroa.370.0..sroa_idx, align 2 ; 2 uses
  %5 = load <16 x i8>, ptr %.sroa.3.0..sroa_idx, align 2 ; 2 uses
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
  %.sroa.110.0.copyload = load i8, ptr %.sroa.110.0..sroa_idx, align 2
  %.sroa.110.0.copyload.fr = freeze i8 %.sroa.110.0.copyload ; 5 uses
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
  store i8 %.sroa.110.0.copyload.fr, ptr %.sroa.110.0..sroa_idx1724, align 1
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
  %i.ad = shufflevector <16 x i8> %2, <16 x i8> %3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25>
  %i.ae = shufflevector <16 x i8> %2, <16 x i8> %3, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24>
  %i.af = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ag = or <16 x i8> %i.ad, %i.af
  %.fr3371 = freeze <16 x i8> %i.ag
  %i.ah = or i8 %.sroa.808.0.copyload, %.sroa.784.0.copyload
  %.fr3374 = freeze i8 %i.ah
  %i.ai = or i8 %.sroa.877.0.copyload, %.sroa.853.0.copyload
  %.fr3372 = freeze i8 %i.ai
  %i.aj = or i8 %.sroa.946.0.copyload, %.sroa.922.0.copyload
  %.fr3373 = freeze i8 %i.aj
  %i.ak = or i8 %.sroa.1015.0.copyload, %.sroa.991.0.copyload
  %or.cond83 = icmp eq i8 %i.ak, 0
  %i.al = icmp ne <16 x i8> %.fr3371, <i8 72, i8 -122, i8 -9, i8 13, i8 2, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  %op.rdx = and i1 %i.an, %i.aa
  %i.ao = or i8 %.fr3372, %.fr3373
  %i.ap = and i1 %op.rdx, %i.ac
  %i.aq = or i8 %i.ao, %.fr3374
  %i.ar = icmp eq i8 %i.aq, 0
  %i.as = and i1 %i.ap, %i.ar
  %op.rdx3149 = select i1 %i.as, i1 %or.cond83, i1 false
  br i1 %op.rdx3149, label %bb.k, label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.at = extractelement <8 x i8> %.fr, i64 0
  %i.au = icmp eq i8 %i.at, 43
  %i.av = extractelement <8 x i8> %.fr, i64 1
  %i.aw = icmp eq i8 %i.av, 14
  %or.cond95 = and i1 %i.au, %i.aw
  %i.ax = extractelement <8 x i8> %.fr, i64 2
  %i.ay = icmp eq i8 %i.ax, 3
  %or.cond99 = and i1 %or.cond95, %i.ay
  %i.az = extractelement <8 x i8> %.fr, i64 3
  %i.ba = icmp eq i8 %i.az, 2
  %or.cond103 = and i1 %or.cond99, %i.ba
  br i1 %or.cond103, label %bb.m, label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.bb = extractelement <8 x i8> %.fr, i64 0
  switch i8 %i.bb, label %bb.d [
    i8 96, label %bb.r
    i8 42, label %bb.s
  ]

bb.h:                                             ; preds = %bb.c
  %i.bc = shufflevector <16 x i8> %5, <16 x i8> %i.l, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24>
  %i.bd = shufflevector <16 x i8> %5, <16 x i8> %i.l, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23>
  %i.be = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bf = or <16 x i8> %i.bc, %i.be
  %.fr3292 = freeze <16 x i8> %i.bf
  %i.bg = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3296 = freeze i8 %i.bg
  %i.bh = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3293 = freeze i8 %i.bh
  %i.bi = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3298 = freeze i8 %i.bi
  %i.bj = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3294 = freeze i8 %i.bj
  %i.bk = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3297 = freeze i8 %i.bk
  %i.bl = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3295 = freeze i8 %i.bl
  %i.bm = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond967 = icmp eq i8 %i.bm, 0
  %i.bn = icmp ne <16 x i8> %.fr3292, <i8 42, i8 -122, i8 72, i8 -50, i8 56, i8 4, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = icmp eq i16 %i.bo, 0
  %i.bq = or i8 %.fr3294, %.fr3297
  %i.br = or i8 %.fr3293, %.fr3296
  %i.bs = or i8 %.fr3298, %i.br
  %i.bt = or i8 %i.bq, %.fr3295
  %i.bu = or i8 %i.bt, %i.bs
  %i.bv = icmp eq i8 %i.bu, 0
  %i.bw = and i1 %i.bp, %i.bv
  %op.rdx3228 = select i1 %i.bw, i1 %or.cond967, i1 false
  br i1 %op.rdx3228, label %bb.ar, label %bb.d

bb.i:                                             ; preds = %bb.c
  %i.bx = extractelement <8 x i8> %.fr, i64 0
  %i.by = icmp eq i8 %i.bx, 85
  %i.bz = extractelement <8 x i8> %.fr, i64 1
  %i.ca = icmp eq i8 %i.bz, 4
  %or.cond971 = and i1 %i.by, %i.ca
  br i1 %or.cond971, label %bb.as, label %bb.d

bb.j:                                             ; preds = %bb.c
  %i.cb = icmp eq i8 %.sroa.110.0.copyload.fr, 2
  %i.cc = icmp eq i8 %.sroa.125.0.copyload, 1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.cd = icmp eq i64 %.fr.scalar, 4339079706868516395
  %op.rdx3259 = and i1 %i.cd, %i.cb
  %op.rdx3260 = select i1 %op.rdx3259, i1 %i.cc, i1 false
  br i1 %op.rdx3260, label %bb.bf, label %bb.d

bb.k:                                             ; preds = %bb.e
  %i.ce = or i8 %.sroa.1084.0.copyload, %.sroa.1060.0.copyload
  %or.cond87 = icmp eq i8 %i.ce, 0
  %i.cf = icmp eq i8 %.sroa.1129.0.copyload, 0
  %or.cond91 = select i1 %or.cond87, i1 %i.cf, i1 false
  br i1 %or.cond91, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @630, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %i.ch, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.m:                                             ; preds = %bb.f
  %i.ci = extractelement <8 x i8> %.fr, i64 4
  switch i8 %i.ci, label %bb.d [
    i8 26, label %bb.n
    i8 29, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.cj = shufflevector <32 x i8> %i.k, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ck = shufflevector <32 x i8> %i.k, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.cl = or <16 x i8> %i.cj, %i.ck
  %.fr3370 = freeze <16 x i8> %i.cl
  %i.cm = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond171 = icmp eq i8 %i.cm, 0
  %i.cn = icmp ne <16 x i8> %.fr3370, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = icmp eq i16 %i.co, 0
  %op.rdx3150 = select i1 %i.cp, i1 %or.cond171, i1 false
  br i1 %op.rdx3150, label %bb.p, label %bb.d

bb.o:                                             ; preds = %bb.m
  %i.cq = shufflevector <32 x i8> %i.k, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.cr = shufflevector <32 x i8> %i.k, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.cs = or <16 x i8> %i.cq, %i.cr
  %.fr3369 = freeze <16 x i8> %i.cs
  %i.ct = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond239 = icmp eq i8 %i.ct, 0
  %i.cu = icmp ne <16 x i8> %.fr3369, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = icmp eq i16 %i.cv, 0
  %op.rdx3151 = select i1 %i.cw, i1 %or.cond239, i1 false
  br i1 %op.rdx3151, label %bb.q, label %bb.d

bb.p:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @631, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %i.cy, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.q:                                             ; preds = %bb.aj, %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @638, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %i.da, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.r:                                             ; preds = %bb.g
  %i.db = extractelement <8 x i8> %.fr, i64 1
  %i.dc = icmp eq i8 %i.db, -122
  %i.dd = extractelement <8 x i8> %.fr, i64 2
  %i.de = icmp eq i8 %i.dd, 72
  %or.cond243 = and i1 %i.dc, %i.de
  %i.df = extractelement <8 x i8> %.fr, i64 3
  %i.dg = icmp eq i8 %i.df, 1
  %or.cond247 = and i1 %or.cond243, %i.dg
  %i.dh = extractelement <8 x i8> %.fr, i64 4
  %i.di = icmp eq i8 %i.dh, 101
  %or.cond251 = and i1 %or.cond247, %i.di
  %i.dj = extractelement <8 x i8> %.fr, i64 5
  %i.dk = icmp eq i8 %i.dj, 3
  %or.cond255 = and i1 %or.cond251, %i.dk
  %i.dl = extractelement <8 x i8> %.fr, i64 6
  %i.dm = icmp eq i8 %i.dl, 4
  %or.cond259 = and i1 %or.cond255, %i.dm
  br i1 %or.cond259, label %bb.t, label %bb.d

bb.s:                                             ; preds = %bb.g
  %i.dn = extractelement <8 x i8> %.fr, i64 1
  %i.do = icmp eq i8 %i.dn, -122
  %i.dp = extractelement <8 x i8> %.fr, i64 2
  %i.dq = icmp eq i8 %i.dp, 72
  %or.cond563 = and i1 %i.do, %i.dq
  %i.dr = extractelement <8 x i8> %.fr, i64 3
  %i.ds = icmp eq i8 %i.dr, -122
  %or.cond567 = and i1 %or.cond563, %i.ds
  %i.dt = extractelement <8 x i8> %.fr, i64 4
  %i.du = icmp eq i8 %i.dt, -9
  %or.cond571 = and i1 %or.cond567, %i.du
  %i.dv = extractelement <8 x i8> %.fr, i64 5
  %i.dw = icmp eq i8 %i.dv, 13
  %or.cond575 = and i1 %or.cond571, %i.dw
  br i1 %or.cond575, label %bb.ag, label %bb.d

bb.t:                                             ; preds = %bb.r
  %i.dx = extractelement <8 x i8> %.fr, i64 7
  switch i8 %i.dx, label %bb.d [
    i8 2, label %bb.u
    i8 3, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  switch i8 %.sroa.110.0.copyload.fr, label %bb.d [
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
  ]

bb.v:                                             ; preds = %bb.t
  switch i8 %.sroa.110.0.copyload.fr, label %bb.d [
    i8 1, label %bb.ac
    i8 2, label %bb.ad
  ]

bb.w:                                             ; preds = %bb.u
  %i.dy = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.dz = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ea = or <8 x i8> %i.dy, %i.dz
  %.fr3362 = freeze <8 x i8> %i.ea
  %i.eb = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3366 = freeze i8 %i.eb
  %i.ec = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3363 = freeze i8 %i.ec
  %i.ed = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3368 = freeze i8 %i.ed
  %i.ee = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3364 = freeze i8 %i.ee
  %i.ef = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3367 = freeze i8 %i.ef
  %i.eg = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3365 = freeze i8 %i.eg
  %i.eh = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond319 = icmp eq i8 %i.eh, 0
  %.fr3362.scalar = bitcast <8 x i8> %.fr3362 to i64
  %i.ei = icmp eq i64 %.fr3362.scalar, 0
  %i.ej = or i8 %.fr3364, %.fr3367
  %i.ek = or i8 %.fr3363, %.fr3366
  %i.el = or i8 %.fr3368, %i.ek
  %i.em = or i8 %i.ej, %.fr3365
  %i.en = or i8 %i.em, %i.el
  %i.eo = icmp eq i8 %i.en, 0
  %i.ep = and i1 %i.ei, %i.eo
  %op.rdx3158 = select i1 %i.ep, i1 %or.cond319, i1 false
  br i1 %op.rdx3158, label %bb.z, label %bb.d

bb.x:                                             ; preds = %bb.u
  %i.eq = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.er = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.es = or <8 x i8> %i.eq, %i.er
  %.fr3355 = freeze <8 x i8> %i.es
  %i.et = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3359 = freeze i8 %i.et
  %i.eu = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3356 = freeze i8 %i.eu
  %i.ev = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3361 = freeze i8 %i.ev
  %i.ew = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3357 = freeze i8 %i.ew
  %i.ex = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3360 = freeze i8 %i.ex
  %i.ey = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3358 = freeze i8 %i.ey
  %i.ez = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond379 = icmp eq i8 %i.ez, 0
  %.fr3355.scalar = bitcast <8 x i8> %.fr3355 to i64
  %i.fa = icmp eq i64 %.fr3355.scalar, 0
  %i.fb = or i8 %.fr3357, %.fr3360
  %i.fc = or i8 %.fr3356, %.fr3359
  %i.fd = or i8 %.fr3361, %i.fc
  %i.fe = or i8 %i.fb, %.fr3358
  %i.ff = or i8 %i.fe, %i.fd
  %i.fg = icmp eq i8 %i.ff, 0
  %i.fh = and i1 %i.fa, %i.fg
  %op.rdx3165 = select i1 %i.fh, i1 %or.cond379, i1 false
  br i1 %op.rdx3165, label %bb.aa, label %bb.d

bb.y:                                             ; preds = %bb.u
  %i.fi = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.fj = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.fk = or <8 x i8> %i.fi, %i.fj
  %.fr3348 = freeze <8 x i8> %i.fk
  %i.fl = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3352 = freeze i8 %i.fl
  %i.fm = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3349 = freeze i8 %i.fm
  %i.fn = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3354 = freeze i8 %i.fn
  %i.fo = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3350 = freeze i8 %i.fo
  %i.fp = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3353 = freeze i8 %i.fp
  %i.fq = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3351 = freeze i8 %i.fq
  %i.fr = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond439 = icmp eq i8 %i.fr, 0
  %.fr3348.scalar = bitcast <8 x i8> %.fr3348 to i64
  %i.fs = icmp eq i64 %.fr3348.scalar, 0
  %i.ft = or i8 %.fr3350, %.fr3353
  %i.fu = or i8 %.fr3349, %.fr3352
  %i.fv = or i8 %.fr3354, %i.fu
  %i.fw = or i8 %i.ft, %.fr3351
  %i.fx = or i8 %i.fw, %i.fv
  %i.fy = icmp eq i8 %i.fx, 0
  %i.fz = and i1 %i.fs, %i.fy
  %op.rdx3172 = select i1 %i.fz, i1 %or.cond439, i1 false
  br i1 %op.rdx3172, label %bb.ab, label %bb.d

bb.z:                                             ; preds = %bb.w
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @632, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.gb, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.aa:                                            ; preds = %bb.x
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @633, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.gd, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ab:                                            ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @634, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %i.gf, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ac:                                            ; preds = %bb.v
  %i.gg = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gh = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.gi = or <8 x i8> %i.gg, %i.gh
  %.fr3341 = freeze <8 x i8> %i.gi
  %i.gj = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3345 = freeze i8 %i.gj
  %i.gk = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3342 = freeze i8 %i.gk
  %i.gl = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3347 = freeze i8 %i.gl
  %i.gm = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3343 = freeze i8 %i.gm
  %i.gn = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3346 = freeze i8 %i.gn
  %i.go = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3344 = freeze i8 %i.go
  %i.gp = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond499 = icmp eq i8 %i.gp, 0
  %.fr3341.scalar = bitcast <8 x i8> %.fr3341 to i64
  %i.gq = icmp eq i64 %.fr3341.scalar, 0
  %i.gr = or i8 %.fr3343, %.fr3346
  %i.gs = or i8 %.fr3342, %.fr3345
  %i.gt = or i8 %.fr3347, %i.gs
  %i.gu = or i8 %i.gr, %.fr3344
  %i.gv = or i8 %i.gu, %i.gt
  %i.gw = icmp eq i8 %i.gv, 0
  %i.gx = and i1 %i.gq, %i.gw
  %op.rdx3179 = select i1 %i.gx, i1 %or.cond499, i1 false
  br i1 %op.rdx3179, label %bb.ae, label %bb.d

bb.ad:                                            ; preds = %bb.v
  %i.gy = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.gz = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ha = or <8 x i8> %i.gy, %i.gz
  %.fr3334 = freeze <8 x i8> %i.ha
  %i.hb = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3338 = freeze i8 %i.hb
  %i.hc = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3335 = freeze i8 %i.hc
  %i.hd = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3340 = freeze i8 %i.hd
  %i.he = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3336 = freeze i8 %i.he
  %i.hf = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3339 = freeze i8 %i.hf
  %i.hg = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3337 = freeze i8 %i.hg
  %i.hh = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond559 = icmp eq i8 %i.hh, 0
  %.fr3334.scalar = bitcast <8 x i8> %.fr3334 to i64
  %i.hi = icmp eq i64 %.fr3334.scalar, 0
  %i.hj = or i8 %.fr3336, %.fr3339
  %i.hk = or i8 %.fr3335, %.fr3338
  %i.hl = or i8 %.fr3340, %i.hk
  %i.hm = or i8 %i.hj, %.fr3337
  %i.hn = or i8 %i.hm, %i.hl
  %i.ho = icmp eq i8 %i.hn, 0
  %i.hp = and i1 %i.hi, %i.ho
  %op.rdx3186 = select i1 %i.hp, i1 %or.cond559, i1 false
  br i1 %op.rdx3186, label %bb.af, label %bb.d

bb.ae:                                            ; preds = %bb.ac
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @635, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %i.hr, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.af:                                            ; preds = %bb.ad
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @636, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %i.ht, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ag:                                            ; preds = %bb.s
  %i.hu = icmp eq <8 x i8> %.fr, <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 1> ; 2 uses
  %shift = shufflevector <8 x i1> %i.hu, <8 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 poison>
  %i.hv = and <8 x i1> %i.hu, %shift
  %or.cond579 = extractelement <8 x i1> %i.hv, i64 6
  br i1 %or.cond579, label %bb.ah, label %bb.d

bb.ah:                                            ; preds = %bb.ag
  switch i8 %.sroa.110.0.copyload.fr, label %bb.d [
    i8 4, label %bb.ai
    i8 5, label %bb.aj
    i8 11, label %bb.ak
    i8 12, label %bb.al
    i8 13, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.hw = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.hx = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.hy = or <8 x i8> %i.hw, %i.hx
  %.fr3327 = freeze <8 x i8> %i.hy
  %i.hz = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3331 = freeze i8 %i.hz
  %i.ia = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3328 = freeze i8 %i.ia
  %i.ib = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3333 = freeze i8 %i.ib
  %i.ic = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3329 = freeze i8 %i.ic
  %i.id = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3332 = freeze i8 %i.id
  %i.ie = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3330 = freeze i8 %i.ie
  %i.if = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond639 = icmp eq i8 %i.if, 0
  %.fr3327.scalar = bitcast <8 x i8> %.fr3327 to i64
  %i.ig = icmp eq i64 %.fr3327.scalar, 0
  %i.ih = or i8 %.fr3329, %.fr3332
  %i.ii = or i8 %.fr3328, %.fr3331
  %i.ij = or i8 %.fr3333, %i.ii
  %i.ik = or i8 %i.ih, %.fr3330
  %i.il = or i8 %i.ik, %i.ij
  %i.im = icmp eq i8 %i.il, 0
  %i.in = and i1 %i.ig, %i.im
  %op.rdx3193 = select i1 %i.in, i1 %or.cond639, i1 false
  br i1 %op.rdx3193, label %bb.an, label %bb.d

bb.aj:                                            ; preds = %bb.ah
  %i.io = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ip = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.iq = or <8 x i8> %i.io, %i.ip
  %.fr3320 = freeze <8 x i8> %i.iq
  %i.ir = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3324 = freeze i8 %i.ir
  %i.is = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3321 = freeze i8 %i.is
  %i.it = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3326 = freeze i8 %i.it
  %i.iu = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3322 = freeze i8 %i.iu
  %i.iv = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3325 = freeze i8 %i.iv
  %i.iw = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3323 = freeze i8 %i.iw
  %i.ix = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond699 = icmp eq i8 %i.ix, 0
  %.fr3320.scalar = bitcast <8 x i8> %.fr3320 to i64
  %i.iy = icmp eq i64 %.fr3320.scalar, 0
  %i.iz = or i8 %.fr3322, %.fr3325
  %i.ja = or i8 %.fr3321, %.fr3324
  %i.jb = or i8 %.fr3326, %i.ja
  %i.jc = or i8 %i.iz, %.fr3323
  %i.jd = or i8 %i.jc, %i.jb
  %i.je = icmp eq i8 %i.jd, 0
  %i.jf = and i1 %i.iy, %i.je
  %op.rdx3200 = select i1 %i.jf, i1 %or.cond699, i1 false
  br i1 %op.rdx3200, label %bb.q, label %bb.d

bb.ak:                                            ; preds = %bb.ah
  %i.jg = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.jh = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ji = or <8 x i8> %i.jg, %i.jh
  %.fr3313 = freeze <8 x i8> %i.ji
  %i.jj = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3317 = freeze i8 %i.jj
  %i.jk = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3314 = freeze i8 %i.jk
  %i.jl = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3319 = freeze i8 %i.jl
  %i.jm = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3315 = freeze i8 %i.jm
  %i.jn = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3318 = freeze i8 %i.jn
  %i.jo = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3316 = freeze i8 %i.jo
  %i.jp = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond759 = icmp eq i8 %i.jp, 0
  %.fr3313.scalar = bitcast <8 x i8> %.fr3313 to i64
  %i.jq = icmp eq i64 %.fr3313.scalar, 0
  %i.jr = or i8 %.fr3315, %.fr3318
  %i.js = or i8 %.fr3314, %.fr3317
  %i.jt = or i8 %.fr3319, %i.js
  %i.ju = or i8 %i.jr, %.fr3316
  %i.jv = or i8 %i.ju, %i.jt
  %i.jw = icmp eq i8 %i.jv, 0
  %i.jx = and i1 %i.jq, %i.jw
  %op.rdx3207 = select i1 %i.jx, i1 %or.cond759, i1 false
  br i1 %op.rdx3207, label %bb.ao, label %bb.d

bb.al:                                            ; preds = %bb.ah
  %i.jy = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.jz = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ka = or <8 x i8> %i.jy, %i.jz
  %.fr3306 = freeze <8 x i8> %i.ka
  %i.kb = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3310 = freeze i8 %i.kb
  %i.kc = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3307 = freeze i8 %i.kc
  %i.kd = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3312 = freeze i8 %i.kd
  %i.ke = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3308 = freeze i8 %i.ke
  %i.kf = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3311 = freeze i8 %i.kf
  %i.kg = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3309 = freeze i8 %i.kg
  %i.kh = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond819 = icmp eq i8 %i.kh, 0
  %.fr3306.scalar = bitcast <8 x i8> %.fr3306 to i64
  %i.ki = icmp eq i64 %.fr3306.scalar, 0
  %i.kj = or i8 %.fr3308, %.fr3311
  %i.kk = or i8 %.fr3307, %.fr3310
  %i.kl = or i8 %.fr3312, %i.kk
  %i.km = or i8 %i.kj, %.fr3309
  %i.kn = or i8 %i.km, %i.kl
  %i.ko = icmp eq i8 %i.kn, 0
  %i.kp = and i1 %i.ki, %i.ko
  %op.rdx3214 = select i1 %i.kp, i1 %or.cond819, i1 false
  br i1 %op.rdx3214, label %bb.ap, label %bb.d

bb.am:                                            ; preds = %bb.ah
  %i.kq = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.kr = shufflevector <16 x i8> %4, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ks = or <8 x i8> %i.kq, %i.kr
  %.fr3299 = freeze <8 x i8> %i.ks
  %i.kt = or i8 %.sroa.715.0.copyload, %.sroa.670.0.copyload
  %.fr3303 = freeze i8 %i.kt
  %i.ku = or i8 %.sroa.784.0.copyload, %.sroa.739.0.copyload
  %.fr3300 = freeze i8 %i.ku
  %i.kv = or i8 %.sroa.853.0.copyload, %.sroa.808.0.copyload
  %.fr3305 = freeze i8 %i.kv
  %i.kw = or i8 %.sroa.922.0.copyload, %.sroa.877.0.copyload
  %.fr3301 = freeze i8 %i.kw
  %i.kx = or i8 %.sroa.991.0.copyload, %.sroa.946.0.copyload
  %.fr3304 = freeze i8 %i.kx
  %i.ky = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3302 = freeze i8 %i.ky
  %i.kz = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond879 = icmp eq i8 %i.kz, 0
  %.fr3299.scalar = bitcast <8 x i8> %.fr3299 to i64
  %i.la = icmp eq i64 %.fr3299.scalar, 0
  %i.lb = or i8 %.fr3301, %.fr3304
  %i.lc = or i8 %.fr3300, %.fr3303
  %i.ld = or i8 %.fr3305, %i.lc
  %i.le = or i8 %i.lb, %.fr3302
  %i.lf = or i8 %i.le, %i.ld
  %i.lg = icmp eq i8 %i.lf, 0
  %i.lh = and i1 %i.la, %i.lg
  %op.rdx3221 = select i1 %i.lh, i1 %or.cond879, i1 false
  br i1 %op.rdx3221, label %bb.aq, label %bb.d

bb.an:                                            ; preds = %bb.ai
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @637, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ao:                                            ; preds = %bb.ak
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @639, ptr %i.lk, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.ll, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ap:                                            ; preds = %bb.al
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @640, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.ln, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.aq:                                            ; preds = %bb.am
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @641, ptr %i.lo, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %i.lp, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ar:                                            ; preds = %bb.h
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @642, ptr %i.lq, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 11, ptr %i.lr, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.as:                                            ; preds = %bb.i
  %i.ls = extractelement <8 x i8> %.fr, i64 2
  switch i8 %i.ls, label %bb.d [
    i8 6, label %bb.at
    i8 3, label %bb.au
    i8 10, label %bb.av
    i8 11, label %bb.aw
    i8 8, label %bb.ax
    i8 9, label %bb.ay
  ]

bb.at:                                            ; preds = %bb.as
  %i.lt = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.lu = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.lv = or <16 x i8> %i.lt, %i.lu
  %.fr3290 = freeze <16 x i8> %i.lv
  %i.lw = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3291 = freeze i8 %i.lw
  %or.cond1039 = icmp eq i8 %.fr3291, 0
  %i.lx = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1043 = icmp eq i8 %i.lx, 0
  %i.ly = icmp ne <16 x i8> %.fr3290, zeroinitializer
  %i.lz = bitcast <16 x i1> %i.ly to i16
  %i.ma = icmp eq i16 %i.lz, 0
  %op.rdx3229 = and i1 %i.ma, %or.cond1039
  %op.rdx3230 = select i1 %op.rdx3229, i1 %or.cond1043, i1 false
  br i1 %op.rdx3230, label %bb.az, label %bb.d

bb.au:                                            ; preds = %bb.as
  %i.mb = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.mc = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.md = or <16 x i8> %i.mb, %i.mc
  %.fr3288 = freeze <16 x i8> %i.md
  %i.me = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3289 = freeze i8 %i.me
  %or.cond1111 = icmp eq i8 %.fr3289, 0
  %i.mf = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1115 = icmp eq i8 %i.mf, 0
  %i.mg = icmp ne <16 x i8> %.fr3288, zeroinitializer
  %i.mh = bitcast <16 x i1> %i.mg to i16
  %i.mi = icmp eq i16 %i.mh, 0
  %op.rdx3231 = and i1 %i.mi, %or.cond1111
  %op.rdx3232 = select i1 %op.rdx3231, i1 %or.cond1115, i1 false
  br i1 %op.rdx3232, label %bb.ba, label %bb.d

bb.av:                                            ; preds = %bb.as
  %i.mj = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.mk = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ml = or <16 x i8> %i.mj, %i.mk
  %.fr3286 = freeze <16 x i8> %i.ml
  %i.mm = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3287 = freeze i8 %i.mm
  %or.cond1183 = icmp eq i8 %.fr3287, 0
  %i.mn = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1187 = icmp eq i8 %i.mn, 0
  %i.mo = icmp ne <16 x i8> %.fr3286, zeroinitializer
  %i.mp = bitcast <16 x i1> %i.mo to i16
  %i.mq = icmp eq i16 %i.mp, 0
  %op.rdx3233 = and i1 %i.mq, %or.cond1183
  %op.rdx3234 = select i1 %op.rdx3233, i1 %or.cond1187, i1 false
  br i1 %op.rdx3234, label %bb.bb, label %bb.d

bb.aw:                                            ; preds = %bb.as
  %i.mr = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ms = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.mt = or <16 x i8> %i.mr, %i.ms
  %.fr3284 = freeze <16 x i8> %i.mt
  %i.mu = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3285 = freeze i8 %i.mu
  %or.cond1255 = icmp eq i8 %.fr3285, 0
  %i.mv = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1259 = icmp eq i8 %i.mv, 0
  %i.mw = icmp ne <16 x i8> %.fr3284, zeroinitializer
  %i.mx = bitcast <16 x i1> %i.mw to i16
  %i.my = icmp eq i16 %i.mx, 0
  %op.rdx3235 = and i1 %i.my, %or.cond1255
  %op.rdx3236 = select i1 %op.rdx3235, i1 %or.cond1259, i1 false
  br i1 %op.rdx3236, label %bb.bc, label %bb.d

bb.ax:                                            ; preds = %bb.as
  %i.mz = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.na = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.nb = or <16 x i8> %i.mz, %i.na
  %.fr3282 = freeze <16 x i8> %i.nb
  %i.nc = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3283 = freeze i8 %i.nc
  %or.cond1327 = icmp eq i8 %.fr3283, 0
  %i.nd = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1331 = icmp eq i8 %i.nd, 0
  %i.ne = icmp ne <16 x i8> %.fr3282, zeroinitializer
  %i.nf = bitcast <16 x i1> %i.ne to i16
  %i.ng = icmp eq i16 %i.nf, 0
  %op.rdx3237 = and i1 %i.ng, %or.cond1327
  %op.rdx3238 = select i1 %op.rdx3237, i1 %or.cond1331, i1 false
  br i1 %op.rdx3238, label %bb.bd, label %bb.d

bb.ay:                                            ; preds = %bb.as
  %i.nh = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.ni = shufflevector <32 x i8> %i.m, <32 x i8> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.nj = or <16 x i8> %i.nh, %i.ni
  %.fr3280 = freeze <16 x i8> %i.nj
  %i.nk = or i8 %.sroa.1060.0.copyload, %.sroa.1015.0.copyload
  %.fr3281 = freeze i8 %i.nk
  %or.cond1399 = icmp eq i8 %.fr3281, 0
  %i.nl = or i8 %.sroa.1129.0.copyload, %.sroa.1084.0.copyload
  %or.cond1403 = icmp eq i8 %i.nl, 0
  %i.nm = icmp ne <16 x i8> %.fr3280, zeroinitializer
  %i.nn = bitcast <16 x i1> %i.nm to i16
  %i.no = icmp eq i16 %i.nn, 0
  %op.rdx3239 = and i1 %i.no, %or.cond1399
  %op.rdx3240 = select i1 %op.rdx3239, i1 %or.cond1403, i1 false
  br i1 %op.rdx3240, label %bb.be, label %bb.d

bb.az:                                            ; preds = %bb.at
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @643, ptr %i.np, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.nq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.ba:                                            ; preds = %bb.au
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @644, ptr %i.nr, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.ns, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.bb:                                            ; preds = %bb.av
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @645, ptr %i.nt, align 8
end_hunk_0
