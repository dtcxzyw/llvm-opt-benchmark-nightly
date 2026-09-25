Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.11?download=true
inline.NumInlined: 1583
inline.NumDeleted: 557
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs4_NtCsbbTh99npV2h_10serde_json6numberNtB6_6NumberNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1N_15PrettyFormatterEECskIqAKC4t9Ft_2yr:bb.a
  br i1 %i.av, label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_i64CskIqAKC4t9Ft_2yr.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = add i64 %.sroa.09.2.i.i.i, -1           ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ch
  store i8 45, ptr %i.ci, align 1, !alias.scope !1926
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_i64CskIqAKC4t9Ft_2yr.exit

_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_i64CskIqAKC4t9Ft_2yr.exit: ; preds = %bb.l, %bb.m
  %.sroa.09.3.i.i.i = phi i64 [ %.sroa.09.2.i.i.i, %bb.l ], [ %i.ch, %bb.m ] ; 2 uses
  %i.cj = sub i64 20, %.sroa.09.3.i.i.i           ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.09.3.i.i.i
  %i.cl = icmp ult i64 %i.cj, 21
  tail call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef range(i64 0, -9223372036854775808) %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_f64CskIqAKC4t9Ft_2yr.exit

bb.n:                                             ; preds = %bb.a
  %i.cm = load double, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.cn = tail call double @llvm.fabs.f64(double %i.cm)
  %cond.i = fcmp ueq double %i.cn, +inf
  br i1 %cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_f64CskIqAKC4t9Ft_2yr.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.co = call { ptr, i64 } @_RINvMs2_CseBPHeqXjUJW_4zmijNtB6_6Buffer13format_finitedECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, double noundef %i.cm) ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0
  %i.cq = extractvalue { ptr, i64 } %i.co, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef range(i64 0, -9223372036854775808) %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_f64CskIqAKC4t9Ft_2yr.exit

_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_f64CskIqAKC4t9Ft_2yr.exit: ; preds = %bb.p, %bb.o, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_i64CskIqAKC4t9Ft_2yr.exit, %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer13serialize_u64CskIqAKC4t9Ft_2yr.exit
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs1zfV5xdjBAP_9toml_edit2de5ErrorECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !19, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !20, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.j, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsbbTh99npV2h_10serde_json5error5ErrorECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !19, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !20, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.e, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsgTIQnf6SZNZ_7figment5error5ErrorECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !19, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !20, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.j, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -3, ptr %0, align 16
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCsgTIQnf6SZNZ_7figment5value3tagNtB6_3TagNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtBR_5value17UsizeDeserializerNtNtCs1zfV5xdjBAP_9toml_edit2de5ErrorEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2G_NtNtCsaeRQ2XwCvzm_10serde_core2de5valueINtB7_17UsizeDeserializerNtNtCs1zfV5xdjBAP_9toml_edit2de5ErrorENtB9_12Deserializer15deserialize_anyNtNvXs6_NtNtCsgTIQnf6SZNZ_7figment5value3tagNtB2t_3TagNtB9_11Deserialize11deserialize7VisitorECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCsgTIQnf6SZNZ_7figment5value3tagNtB6_3TagNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtBR_5value18StringDeserializerNtNtCs1zfV5xdjBAP_9toml_edit2de5ErrorEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXss_NtNtCsaeRQ2XwCvzm_10serde_core2de5valueINtB6_18StringDeserializerNtNtCs1zfV5xdjBAP_9toml_edit2de5ErrorENtB8_12Deserializer15deserialize_anyNtNvXs6_NtNtCsgTIQnf6SZNZ_7figment5value3tagNtB2t_3TagNtB8_11Deserialize11deserialize7VisitorECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCsgTIQnf6SZNZ_7figment5value3tagNtB6_3TagNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtNtNtCs1zfV5xdjBAP_9toml_edit2de5value17ValueDeserializerECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(184) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtCs1zfV5xdjBAP_9toml_edit2de5valueNtB5_17ValueDeserializerNtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_anyNtNvXs6_NtNtCsgTIQnf6SZNZ_7figment5value3tagNtB2e_3TagNtB16_11Deserialize11deserialize7VisitorECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsReNtB8_11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB1p_2de7decoder11DecoderImplNtNtB2w_4read11SliceReaderNtNtB1p_6config13ConfigurationuEEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_strNtNtB2Q_5impls10StrVisitorECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_11AhoCorasickNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowed12SerdeDecoderINtNtNtB27_2de7decoder11DecoderImplNtNtB3e_4read11SliceReaderNtNtB27_6config13ConfigurationuEEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [144 x i8], align 8               ; 30 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 14 uses
  %i.p = alloca [24 x i8], align 8                ; 17 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.12 = alloca i64, align 8                 ; 10 uses
  %.sroa.29 = alloca i64, align 8                 ; 5 uses
  %.sroa.30 = alloca [88 x i8], align 8           ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RINvXs0_NtNtNtCslcwApyVHiOd_7bincode8features5serde11de_borrowedINtB6_12SerdeDecoderINtNtNtBc_2de7decoder11DecoderImplNtNtB1p_4read11SliceReaderNtNtBc_6config13ConfigurationuEENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer17deserialize_bytesNtNtB2Q_5impls12BytesVisitorECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.u = load i8, ptr %i.t, align 8, !range !24, !noundef !6 ; 2 uses
  %.not = icmp eq i8 %i.u, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.441.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.436.0..sroa_idx, i64 7, i1 false)
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.537.0.copyload = load ptr, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load <2 x i64>, ptr %.sroa.638.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i8 %i.u, ptr %i.v, align 8
  store ptr %.sroa.537.0.copyload, ptr %.sroa.542.0..sroa_idx, align 8
  store <2 x i64> %i.w, ptr %.sroa.643.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cr

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ab = icmp samesign ugt i64 %i.aa, 3
  br i1 %i.ab, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i369.i, label %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i369.i: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = add nsw i64 %i.aa, -4                   ; 3 uses
  %.sroa.0.0.copyload.i461.i = load i32, ptr %i.y, align 1, !alias.scope !2015, !noalias !2016 ; 2 uses
  %i.ae = zext i32 %.sroa.0.0.copyload.i461.i to i64 ; 5 uses
  %i.af = mul nuw nsw i64 %i.ae, 12
  %i.ag = icmp samesign ugt i64 %i.af, %i.ad
  br i1 %i.ag, label %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i370.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i370.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i369.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2017
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.ae, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12), !noalias !2018
  %i.ah = load i64, ptr %i.f, align 8, !range !19, !noalias !2017, !noundef !6
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !20, !noalias !2017, !noundef !6 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i370.i
  %i.am = load i64, ptr %i.al, align 8, !noalias !2017
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.am) #30, !noalias !2018
  unreachable

bb.e:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i370.i
  %i.an = load ptr, ptr %i.al, align 8, !noalias !2017, !nonnull !6, !noundef !6 ; 2 uses
  %i.ao = icmp samesign uge i64 %i.ak, %i.ae
  call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2017
  store i64 %i.ak, ptr %i.g, align 8, !noalias !2017
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.an, ptr %i.ap, align 8, !noalias !2017
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !noalias !2019
  %.not1378.i = icmp eq i32 %.sroa.0.0.copyload.i461.i, 0
  %2 = trunc i64 %i.ak to i32
  %3 = lshr i64 %i.ak, 32
  %4 = trunc nuw nsw i64 %3 to i32
  br i1 %.not1378.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEE8push_mutCskIqAKC4t9Ft_2yr.exit.i
  %i.ar = phi i64 [ %i.as, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ 0, %bb.e ] ; 3 uses
  %.sroa.584.0.i3731350.i = phi i64 [ %i.bc, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ %i.ad, %bb.e ] ; 4 uses
  %.sroa.081.0.i3721349.i = phi ptr [ %i.bb, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 3 uses
  %i.at = icmp samesign ugt i64 %.sroa.584.0.i3731350.i, 3
  br i1 %i.at, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i
  %.sroa.0.0.copyload.i436.i = load i32, ptr %.sroa.081.0.i3721349.i, align 1, !alias.scope !2020, !noalias !2021
  %i.au = icmp sgt i64 %.sroa.584.0.i3731350.i, 7
  br i1 %i.au, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i3721349.i, i64 4
  %.sroa.0.0.copyload.i431.i = load i32, ptr %i.av, align 1, !alias.scope !2022, !noalias !2023
  %i.aw = icmp samesign ugt i64 %.sroa.584.0.i3731350.i, 11
  br i1 %i.aw, label %bb.l, label %bb.i

bb.h:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #25
          to label %common.resume.i unwind label %bb.n, !noalias !2018

bb.i:                                             ; preds = %bb.g, %bb.f, %.lr.ph.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.j, !noalias !2018

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.k, !noalias !2018

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2018
  unreachable

common.resume.i:                                  ; preds = %bb.co, %bb.ck, %bb.j, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.iw, %bb.ck ], [ %i.ay, %bb.j ], [ %i.ax, %bb.h ], [ %.pn297.ph.i, %bb.co ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2017
  br label %_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE11deserializeCskIqAKC4t9Ft_2yr.exit.thread

bb.l:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i3721349.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i3721349.i, i64 12 ; 2 uses
  %i.bc = add nsw i64 %.sroa.584.0.i3731350.i, -12 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ba, align 1, !alias.scope !2024, !noalias !2025
  %i.bd = load i64, ptr %i.g, align 8, !range !5, !alias.scope !2026, !noalias !2027, !noundef !6
  %i.be = icmp eq i64 %i.ar, %i.bd
  br i1 %i.be, label %bb.m, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEE8push_mutCskIqAKC4t9Ft_2yr.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEE8grow_oneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #27
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEE8push_mutCskIqAKC4t9Ft_2yr.exit.i unwind label %bb.h, !noalias !2013

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEE8push_mutCskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.m, %bb.l
  %i.bf = load ptr, ptr %i.ap, align 8, !alias.scope !2026, !noalias !2027, !nonnull !6, !noundef !6
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.ar ; 3 uses
  store i32 %.sroa.0.0.copyload.i436.i, ptr %i.bg, align 4, !noalias !2018
  %.sroa.4907.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %.sroa.0.0.copyload.i431.i, ptr %.sroa.4907.0..sroa_idx.i, align 4, !noalias !2018
  %.sroa.5908.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.5908.0..sroa_idx.i, align 4, !noalias !2018
  store i64 %i.as, ptr %i.aq, align 8, !noalias !2019
  %exitcond = icmp eq i64 %i.as, %i.ae
  br i1 %exitcond, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2018
  unreachable

._crit_edge.loopexit.i:                           ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StatemEE8push_mutCskIqAKC4t9Ft_2yr.exit.i
  %.sroa.0893.0.copyload.pre.i = load i32, ptr %i.g, align 8, !noalias !2017
  %.sroa.4894.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.4894.0.copyload.pre.i = load i32, ptr %.sroa.4894.0..sroa_idx.phi.trans.insert.i, align 4, !noalias !2017
  %.sroa.5895.0.copyload.pre.i = load ptr, ptr %i.ap, align 8, !noalias !2017
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.e
  %.sroa.5895.0.copyload.i = phi ptr [ %i.an, %bb.e ], [ %.sroa.5895.0.copyload.pre.i, %._crit_edge.loopexit.i ]
  %.sroa.4894.0.copyload.i = phi i32 [ %4, %bb.e ], [ %.sroa.4894.0.copyload.pre.i, %._crit_edge.loopexit.i ]
  %.sroa.0893.0.copyload.i = phi i32 [ %2, %bb.e ], [ %.sroa.0893.0.copyload.pre.i, %._crit_edge.loopexit.i ]
  %.sroa.081.0.i372.lcssa.i = phi ptr [ %i.ac, %bb.e ], [ %i.bb, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.584.0.i373.lcssa.i = phi i64 [ %i.ad, %bb.e ], [ %i.bc, %._crit_edge.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2028
  store i32 %.sroa.0893.0.copyload.i, ptr %i.q, align 8, !noalias !2028
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.sroa.4894.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i, align 4, !noalias !2028
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %.sroa.5895.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2028
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2028
  %i.bi = icmp samesign ugt i64 %.sroa.584.0.i373.lcssa.i, 3
  br i1 %i.bi, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit98.i.i, label %bb.y

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit98.i.i: ; preds = %._crit_edge.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i372.lcssa.i, i64 4 ; 2 uses
  %i.bk = add nsw i64 %.sroa.584.0.i373.lcssa.i, -4 ; 3 uses
  %.sroa.0.0.copyload.i466.i = load i32, ptr %.sroa.081.0.i372.lcssa.i, align 1, !alias.scope !2029, !noalias !2030 ; 2 uses
  %i.bl = zext i32 %.sroa.0.0.copyload.i466.i to i64 ; 5 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = icmp samesign ugt i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.y, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i322.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i322.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit98.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2031
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.bl, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %.noexc331.i unwind label %bb.x, !noalias !2013

.noexc331.i:                                      ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i322.i
  %i.bo = load i64, ptr %i.h, align 8, !range !19, !noalias !2031, !noundef !6
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !20, !noalias !2031, !noundef !6 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.o, label %bb.p, !prof !21

bb.o:                                             ; preds = %.noexc331.i
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !2031
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bt) #30
          to label %.noexc332.i unwind label %bb.x, !noalias !2013

.noexc332.i:                                      ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %.noexc331.i
  %i.bu = load ptr, ptr %i.bs, align 8, !noalias !2031, !nonnull !6, !noundef !6 ; 2 uses
  %i.bv = icmp samesign uge i64 %i.br, %i.bl
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2031
  store i64 %i.br, ptr %i.i, align 8, !noalias !2031
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.bu, ptr %i.bw, align 8, !noalias !2031
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %i.bx, align 8, !noalias !2032
  %.not1379.i = icmp eq i32 %.sroa.0.0.copyload.i466.i, 0
  %5 = trunc i64 %i.br to i32
  %6 = lshr i64 %i.br, 32
  %7 = trunc nuw nsw i64 %6 to i32
  br i1 %.not1379.i, label %._crit_edge1357.i, label %.lr.ph1356.i

.lr.ph1356.i:                                     ; preds = %bb.p, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEE8push_mutCskIqAKC4t9Ft_2yr.exit.i
  %i.by = phi i64 [ %i.bz, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ 0, %bb.p ] ; 3 uses
  %.sroa.591.0.i1354.i = phi i64 [ %i.cf, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ %i.bk, %bb.p ] ; 2 uses
  %.sroa.088.0.i1353.i = phi ptr [ %i.ce, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ %i.bj, %bb.p ] ; 2 uses
  %i.bz = add nuw nsw i64 %i.by, 1                ; 3 uses
  %i.ca = icmp sgt i64 %.sroa.591.0.i1354.i, 7
  br i1 %i.ca, label %bb.u, label %.noexc408.i

bb.q:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtB1d_5EmptyEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %bb.co unwind label %bb.w, !noalias !2033

.noexc408.i:                                      ; preds = %.lr.ph1356.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.s unwind label %bb.r, !noalias !2013

bb.r:                                             ; preds = %.noexc408.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBR_5EmptyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.co unwind label %bb.t, !noalias !2013

bb.s:                                             ; preds = %.noexc408.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBR_5EmptyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc333.i unwind label %bb.x, !noalias !2013

bb.t:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2013
  unreachable

.noexc333.i:                                      ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2031
  br label %bb.y

bb.u:                                             ; preds = %.lr.ph1356.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.088.0.i1353.i, i64 8 ; 2 uses
  %i.cf = add nsw i64 %.sroa.591.0.i1354.i, -8    ; 2 uses
  %i.cg = load <2 x i32>, ptr %.sroa.088.0.i1353.i, align 1, !alias.scope !2014, !noalias !2013
  %i.ch = load i64, ptr %i.i, align 8, !range !5, !alias.scope !2034, !noalias !2032, !noundef !6
  %i.ci = icmp eq i64 %i.by, %i.ch
  br i1 %i.ci, label %bb.v, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEE8push_mutCskIqAKC4t9Ft_2yr.exit.i

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBR_5EmptyEE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #27
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEE8push_mutCskIqAKC4t9Ft_2yr.exit.i unwind label %bb.q, !noalias !2013

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEE8push_mutCskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.v, %bb.u
  %i.cj = load ptr, ptr %i.bw, align 8, !alias.scope !2034, !noalias !2032, !nonnull !6, !noundef !6
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.by
  store <2 x i32> %i.cg, ptr %i.ck, align 4, !noalias !2033
  store i64 %i.bz, ptr %i.bx, align 8, !noalias !2032
  %exitcond155 = icmp eq i64 %i.bz, %i.bl
  br i1 %exitcond155, label %._crit_edge1357.loopexit.i, label %.lr.ph1356.i

bb.w:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2033
  unreachable

bb.x:                                             ; preds = %bb.cf, %bb.ai, %bb.s, %bb.o, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i322.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.y:                                             ; preds = %.noexc333.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit98.i.i, %._crit_edge.i
  store i64 3, ptr %.sroa.12, align 8, !alias.scope !2013, !noalias !2014
  br label %bb.cj

._crit_edge1357.loopexit.i:                       ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEE8push_mutCskIqAKC4t9Ft_2yr.exit.i
  %.sroa.0853.0.copyload.pre.i = load i32, ptr %i.i, align 8, !noalias !2031
  %.sroa.4854.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.4854.0.copyload.pre.i = load i32, ptr %.sroa.4854.0..sroa_idx.phi.trans.insert.i, align 4, !noalias !2031
  %.sroa.5855.0.copyload.pre.i = load ptr, ptr %i.bw, align 8, !noalias !2031
  br label %._crit_edge1357.i

._crit_edge1357.i:                                ; preds = %._crit_edge1357.loopexit.i, %bb.p
  %.sroa.5855.0.copyload.i = phi ptr [ %i.bu, %bb.p ], [ %.sroa.5855.0.copyload.pre.i, %._crit_edge1357.loopexit.i ]
  %.sroa.4854.0.copyload.i = phi i32 [ %7, %bb.p ], [ %.sroa.4854.0.copyload.pre.i, %._crit_edge1357.loopexit.i ]
  %.sroa.0853.0.copyload.i = phi i32 [ %5, %bb.p ], [ %.sroa.0853.0.copyload.pre.i, %._crit_edge1357.loopexit.i ]
  %.sroa.088.0.i.lcssa.i = phi ptr [ %i.bj, %bb.p ], [ %i.ce, %._crit_edge1357.loopexit.i ] ; 3 uses
  %.sroa.591.0.i.lcssa.i = phi i64 [ %i.bk, %bb.p ], [ %i.cf, %._crit_edge1357.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2028
  store i32 %.sroa.0853.0.copyload.i, ptr %i.p, align 8, !noalias !2028
  %.sroa.2733.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %.sroa.4854.0.copyload.i, ptr %.sroa.2733.0..sroa_idx.i, align 4, !noalias !2028
  %.sroa.3734.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.5855.0.copyload.i, ptr %.sroa.3734.0..sroa_idx.i, align 8, !noalias !2028
  %.sroa.4735.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.bl, ptr %.sroa.4735.0..sroa_idx.i, align 8, !noalias !2028
  %i.cn = icmp samesign ugt i64 %.sroa.591.0.i.lcssa.i, 3
  br i1 %i.cn, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit99.i.i, label %bb.ag

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit99.i.i: ; preds = %._crit_edge1357.i
  %i.co = add nsw i64 %.sroa.591.0.i.lcssa.i, -4  ; 4 uses
  %.sroa.0.0.copyload.i451.i = load i32, ptr %.sroa.088.0.i.lcssa.i, align 1, !alias.scope !2035, !noalias !2036 ; 2 uses
  %i.cp = zext i32 %.sroa.0.0.copyload.i451.i to i64 ; 5 uses
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = icmp samesign ugt i64 %i.cq, %i.co
  br i1 %i.cr, label %bb.ag, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i396.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i396.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit99.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2037
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.cp, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc400.i unwind label %bb.af, !noalias !2013

.noexc400.i:                                      ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i396.i
  %i.cs = load i64, ptr %i.d, align 8, !range !19, !noalias !2037, !noundef !6
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !range !20, !noalias !2037, !noundef !6 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ct, label %bb.z, label %bb.aa, !prof !21

bb.z:                                             ; preds = %.noexc400.i
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !2037
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cv, i64 %i.cx) #30
          to label %.noexc401.i unwind label %bb.af, !noalias !2013

.noexc401.i:                                      ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.noexc400.i
  %i.cy = load ptr, ptr %i.cw, align 8, !noalias !2037, !nonnull !6, !noundef !6 ; 2 uses
  %i.cz = icmp samesign uge i64 %i.cv, %i.cp
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2037
  store i64 %i.cv, ptr %i.e, align 8, !noalias !2037
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.cy, ptr %i.da, align 8, !noalias !2037
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.089.0.i1360.i = getelementptr inbounds nuw i8, ptr %.sroa.088.0.i.lcssa.i, i64 4 ; 2 uses
  store i64 0, ptr %i.db, align 8, !noalias !2038
  %.not1380.i = icmp eq i32 %.sroa.0.0.copyload.i451.i, 0
  %8 = trunc i64 %i.cv to i32
  %9 = lshr i64 %i.cv, 32
  %10 = trunc nuw nsw i64 %9 to i32
  br i1 %.not1380.i, label %._crit_edge1366.i, label %.lr.ph1365.i.preheader

.lr.ph1365.i.preheader:                           ; preds = %bb.aa
  %i.dc = lshr i64 %i.co, 2
  br label %.lr.ph1365.i

.lr.ph1365.i:                                     ; preds = %.lr.ph1365.i.preheader, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCskIqAKC4t9Ft_2yr.exit.i
  %i.dd = phi i64 [ %i.de, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ 0, %.lr.ph1365.i.preheader ] ; 4 uses
  %.sroa.089.0.i1363.i = phi ptr [ %.sroa.089.0.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ %.sroa.089.0.i1360.i, %.lr.ph1365.i.preheader ] ; 3 uses
  %.sroa.592.0.i1362.i = phi i64 [ %i.dg, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ %i.co, %.lr.ph1365.i.preheader ]
  %i.de = add nuw nsw i64 %i.dd, 1                ; 3 uses
  %exitcond157.not = icmp eq i64 %i.dd, %i.dc
  br i1 %exitcond157.not, label %_RNvXs5_NtCsc2ZV4bV5Srq_9daachorse10serializermNtB5_12Serializable22deserialize_from_slice.exit459.i, label %bb.ac

bb.ab:                                            ; preds = %bb.ad
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #25
          to label %bb.cn unwind label %bb.ae, !noalias !2039

_RNvXs5_NtCsc2ZV4bV5Srq_9daachorse10serializermNtB5_12Serializable22deserialize_from_slice.exit459.i: ; preds = %.lr.ph1365.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %.noexc402.i unwind label %bb.af, !noalias !2013

.noexc402.i:                                      ; preds = %_RNvXs5_NtCsc2ZV4bV5Srq_9daachorse10serializermNtB5_12Serializable22deserialize_from_slice.exit459.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2037
  br label %bb.ag

bb.ac:                                            ; preds = %.lr.ph1365.i
  %i.dg = add nsw i64 %.sroa.592.0.i1362.i, -4    ; 2 uses
  %.sroa.0.0.copyload.i456.i = load i32, ptr %.sroa.089.0.i1363.i, align 1, !alias.scope !2040, !noalias !2041
  %i.dh = load i64, ptr %i.e, align 8, !range !5, !alias.scope !2042, !noalias !2038, !noundef !6
  %i.di = icmp eq i64 %i.dd, %i.dh
  br i1 %i.di, label %bb.ad, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCskIqAKC4t9Ft_2yr.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCsakcyNsrEG6e_17cranelift_codegen(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #27
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCskIqAKC4t9Ft_2yr.exit.i unwind label %bb.ab, !noalias !2013

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.ad, %bb.ac
  %i.dj = load ptr, ptr %i.da, align 8, !alias.scope !2042, !noalias !2038, !nonnull !6, !noundef !6
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dd
  store i32 %.sroa.0.0.copyload.i456.i, ptr %i.dk, align 4, !noalias !2039
  %.sroa.089.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.089.0.i1363.i, i64 4 ; 2 uses
  store i64 %i.de, ptr %i.db, align 8, !noalias !2038
  %exitcond159 = icmp eq i64 %i.de, %i.cp
  br i1 %exitcond159, label %._crit_edge1366.loopexit.i, label %.lr.ph1365.i

bb.ae:                                            ; preds = %bb.ab
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2039
  unreachable

bb.af:                                            ; preds = %bb.cd, %bb.aw, %_RNvXs5_NtCsc2ZV4bV5Srq_9daachorse10serializermNtB5_12Serializable22deserialize_from_slice.exit459.i, %bb.z, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i396.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ag:                                            ; preds = %.noexc402.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit99.i.i, %._crit_edge1357.i
  store i64 3, ptr %.sroa.12, align 8, !alias.scope !2013, !noalias !2014
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBK_5EmptyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ai unwind label %bb.ah, !noalias !2013

bb.ah:                                            ; preds = %bb.ag
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBR_5EmptyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.co unwind label %bb.aj, !noalias !2013

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtBR_5EmptyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsc2ZV4bV5Srq_9daachorse8bytewise5StateNtB1d_5EmptyEEECskIqAKC4t9Ft_2yr.exit549.i unwind label %bb.x, !noalias !2013

bb.aj:                                            ; preds = %bb.ah
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2013
  unreachable

._crit_edge1366.loopexit.i:                       ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCskIqAKC4t9Ft_2yr.exit.i
  %.sroa.0931.0.copyload.pre.i = load i32, ptr %i.e, align 8, !noalias !2037
  %.sroa.4932.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4932.0.copyload.pre.i = load i32, ptr %.sroa.4932.0..sroa_idx.phi.trans.insert.i, align 4, !noalias !2037
  %.sroa.5933.0.copyload.pre.i = load ptr, ptr %i.da, align 8, !noalias !2037
  br label %._crit_edge1366.i

._crit_edge1366.i:                                ; preds = %._crit_edge1366.loopexit.i, %bb.aa
  %.sroa.5933.0.copyload.i = phi ptr [ %i.cy, %bb.aa ], [ %.sroa.5933.0.copyload.pre.i, %._crit_edge1366.loopexit.i ]
  %.sroa.4932.0.copyload.i = phi i32 [ %10, %bb.aa ], [ %.sroa.4932.0.copyload.pre.i, %._crit_edge1366.loopexit.i ]
  %.sroa.0931.0.copyload.i = phi i32 [ %8, %bb.aa ], [ %.sroa.0931.0.copyload.pre.i, %._crit_edge1366.loopexit.i ]
  %.sroa.088.0.i.pn.lcssa.i = phi ptr [ %.sroa.088.0.i.lcssa.i, %bb.aa ], [ %.sroa.089.0.i1363.i, %._crit_edge1366.loopexit.i ]
  %.sroa.592.0.i.lcssa.i = phi i64 [ %i.co, %bb.aa ], [ %i.dg, %._crit_edge1366.loopexit.i ] ; 2 uses
  %.sroa.089.0.i.lcssa.i = phi ptr [ %.sroa.089.0.i1360.i, %bb.aa ], [ %.sroa.089.0.i.i, %._crit_edge1366.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2028
  store i32 %.sroa.0931.0.copyload.i, ptr %i.o, align 8, !noalias !2028
  %.sroa.2737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %.sroa.4932.0.copyload.i, ptr %.sroa.2737.0..sroa_idx.i, align 4, !noalias !2028
  %.sroa.3738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5933.0.copyload.i, ptr %.sroa.3738.0..sroa_idx.i, align 8, !noalias !2028
  %.sroa.4739.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.cp, ptr %.sroa.4739.0..sroa_idx.i, align 8, !noalias !2028
  %i.dp = icmp samesign ugt i64 %.sroa.592.0.i.lcssa.i, 3
  br i1 %i.dp, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i.i, label %bb.au

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i.i: ; preds = %._crit_edge1366.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.088.0.i.pn.lcssa.i, i64 8 ; 2 uses
  %i.dr = add nsw i64 %.sroa.592.0.i.lcssa.i, -4  ; 3 uses
  %.sroa.0.0.copyload.i471.i = load i32, ptr %.sroa.089.0.i.lcssa.i, align 1, !alias.scope !2043, !noalias !2044 ; 2 uses
  %i.ds = zext i32 %.sroa.0.0.copyload.i471.i to i64 ; 5 uses
  %i.dt = mul nuw nsw i64 %i.ds, 12
  %i.du = icmp ugt i64 %i.dt, %i.dr
  br i1 %i.du, label %bb.au, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i.i

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2045
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.ds, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12)
          to label %.noexc316.i unwind label %bb.at, !noalias !2013

.noexc316.i:                                      ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i.i
  %i.dv = load i64, ptr %i.j, align 8, !range !19, !noalias !2045, !noundef !6
  %i.dw = trunc nuw i64 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !20, !noalias !2045, !noundef !6 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.dw, label %bb.ak, label %bb.al, !prof !21

bb.ak:                                            ; preds = %.noexc316.i
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !2045
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dy, i64 %i.ea) #30
          to label %.noexc317.i unwind label %bb.at, !noalias !2013

.noexc317.i:                                      ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %.noexc316.i
  %i.eb = load ptr, ptr %i.dz, align 8, !noalias !2045, !nonnull !6, !noundef !6 ; 2 uses
  %i.ec = icmp samesign uge i64 %i.dy, %i.ds
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2045
  store i64 %i.dy, ptr %i.k, align 8, !noalias !2045
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.eb, ptr %i.ed, align 8, !noalias !2045
  %i.ee = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.ee, align 8, !noalias !2046
  %.not1381.i = icmp eq i32 %.sroa.0.0.copyload.i471.i, 0
  %11 = trunc i64 %i.dy to i32
  %12 = lshr i64 %i.dy, 32
  %13 = trunc nuw nsw i64 %12 to i32
  br i1 %.not1381.i, label %._crit_edge1375.i, label %.lr.ph1374.i

.lr.ph1374.i:                                     ; preds = %bb.al, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i
  %i.ef = phi i64 [ %i.eg, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ 0, %bb.al ] ; 3 uses
  %.sroa.584.0.i1372.i = phi i64 [ %i.eo, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ %i.dr, %bb.al ] ; 4 uses
  %.sroa.081.0.i1371.i = phi ptr [ %i.en, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i ], [ %i.dq, %bb.al ] ; 4 uses
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 3 uses
  %i.eh = icmp samesign ugt i64 %.sroa.584.0.i1372.i, 3
  br i1 %i.eh, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.lr.ph1374.i
  %.sroa.0.0.copyload.i200.i.i = load i32, ptr %.sroa.081.0.i1371.i, align 1, !alias.scope !2047, !noalias !2048
  %i.ei = icmp sgt i64 %.sroa.584.0.i1372.i, 7
  br i1 %i.ei, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i1371.i, i64 4
  %.sroa.0.0.copyload.i195.i.i = load i32, ptr %i.ej, align 1, !alias.scope !2049, !noalias !2050
  %i.ek = icmp samesign ugt i64 %.sroa.584.0.i1372.i, 11
  br i1 %i.ek, label %bb.aq, label %bb.ap

bb.ao:                                            ; preds = %bb.ar
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #25
          to label %bb.cm unwind label %bb.as, !noalias !2051

bb.ap:                                            ; preds = %bb.an, %bb.am, %.lr.ph1374.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %.noexc318.i unwind label %bb.at, !noalias !2013

.noexc318.i:                                      ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2045
  br label %bb.au

bb.aq:                                            ; preds = %bb.an
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i1371.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i1371.i, i64 12 ; 2 uses
  %i.eo = add nsw i64 %.sroa.584.0.i1372.i, -12   ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.em, align 1, !alias.scope !2052, !noalias !2053
  %i.ep = load i64, ptr %i.k, align 8, !range !5, !alias.scope !2054, !noalias !2055, !noundef !6
  %i.eq = icmp eq i64 %i.ef, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #27
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i unwind label %bb.ao, !noalias !2013

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.ar, %bb.aq
  %i.er = load ptr, ptr %i.ed, align 8, !alias.scope !2054, !noalias !2055, !nonnull !6, !noundef !6
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.er, i64 %i.ef ; 3 uses
  store i32 %.sroa.0.0.copyload.i200.i.i, ptr %i.es, align 4, !noalias !2051
  %.sroa.4811.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 %.sroa.0.0.copyload.i195.i.i, ptr %.sroa.4811.0..sroa_idx.i, align 4, !noalias !2051
  %.sroa.5812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.5812.0..sroa_idx.i, align 4, !noalias !2051
  store i64 %i.eg, ptr %i.ee, align 8, !noalias !2046
  %exitcond162 = icmp eq i64 %i.eg, %i.ds
  br i1 %exitcond162, label %._crit_edge1375.loopexit.i, label %.lr.ph1374.i

bb.as:                                            ; preds = %bb.ao
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2051
  unreachable

bb.at:                                            ; preds = %_RNvXs4_Csc2ZV4bV5Srq_9daachorseNtB5_9MatchKindNtNtB5_10serializer12Serializable22deserialize_from_slice.exit.i, %bb.ap, %bb.ak, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.au:                                            ; preds = %.noexc318.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCskIqAKC4t9Ft_2yr.exit91.i.i, %._crit_edge1366.i
  store i64 3, ptr %.sroa.12, align 8, !alias.scope !2013, !noalias !2014
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.aw unwind label %bb.av, !noalias !2013

bb.av:                                            ; preds = %bb.au
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.cn unwind label %bb.ax, !noalias !2013

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.af, !noalias !2013

bb.ax:                                            ; preds = %bb.av
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !2013
  unreachable

._crit_edge1375.loopexit.i:                       ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsc2ZV4bV5Srq_9daachorse6OutputmEE8push_mutCskIqAKC4t9Ft_2yr.exit.i
  %.sroa.0797.0.copyload.pre.i = load i32, ptr %i.k, align 8, !noalias !2045
  %.sroa.4798.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.4798.0.copyload.pre.i = load i32, ptr %.sroa.4798.0..sroa_idx.phi.trans.insert.i, align 4, !noalias !2045
  %.sroa.5799.0.copyload.pre.i = load ptr, ptr %i.ed, align 8, !noalias !2045
  br label %._crit_edge1375.i

._crit_edge1375.i:                                ; preds = %._crit_edge1375.loopexit.i, %bb.al
  %.sroa.5799.0.copyload.i = phi ptr [ %i.eb, %bb.al ], [ %.sroa.5799.0.copyload.pre.i, %._crit_edge1375.loopexit.i ]
  %.sroa.4798.0.copyload.i = phi i32 [ %13, %bb.al ], [ %.sroa.4798.0.copyload.pre.i, %._crit_edge1375.loopexit.i ]
  %.sroa.0797.0.copyload.i = phi i32 [ %11, %bb.al ], [ %.sroa.0797.0.copyload.pre.i, %._crit_edge1375.loopexit.i ]
  %.sroa.081.0.i.lcssa.i = phi ptr [ %i.dq, %bb.al ], [ %i.en, %._crit_edge1375.loopexit.i ] ; 4 uses
  %.sroa.584.0.i.lcssa.i = phi i64 [ %i.dr, %bb.al ], [ %i.eo, %._crit_edge1375.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2028
  store i32 %.sroa.0797.0.copyload.i, ptr %i.n, align 8, !noalias !2028
  %.sroa.2741.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %.sroa.4798.0.copyload.i, ptr %.sroa.2741.0..sroa_idx.i, align 4, !noalias !2028
  %.sroa.3742.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.5799.0.copyload.i, ptr %.sroa.3742.0..sroa_idx.i, align 8, !noalias !2028
  %.sroa.4743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.ds, ptr %.sroa.4743.0..sroa_idx.i, align 8, !noalias !2028
  %.not.i428.i = icmp eq i64 %.sroa.584.0.i.lcssa.i, 0
  br i1 %.not.i428.i, label %_RNvXs4_Csc2ZV4bV5Srq_9daachorseNtB5_9MatchKindNtNtB5_10serializer12Serializable22deserialize_from_slice.exit.i, label %bb.az

bb.ay:                                            ; preds = %bb.bc
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.az:                                            ; preds = %._crit_edge1375.i
  %i.ey = load i8, ptr %.sroa.081.0.i.lcssa.i, align 1, !alias.scope !2056, !noalias !2057, !noundef !6 ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.ey, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i8 2, i8 0
  %switch.selectcmp58.i.i = icmp eq i8 %i.ey, 1
  %switch.select59.i.i = select i1 %switch.selectcmp58.i.i, i8 1, i8 %switch.select.i.i ; 2 uses
  %i.ez = icmp sgt i64 %.sroa.584.0.i.lcssa.i, 4
  br i1 %i.ez, label %bb.ba, label %_RNvXs4_Csc2ZV4bV5Srq_9daachorseNtB5_9MatchKindNtNtB5_10serializer12Serializable22deserialize_from_slice.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i.lcssa.i, i64 1
  %.sroa.0.0.copyload.i476.i = load i32, ptr %i.fa, align 1, !alias.scope !2058, !noalias !2059
  call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  %.not.i.i.i = icmp eq i64 %.sroa.584.0.i.lcssa.i, 5
  br i1 %.not.i.i.i, label %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i.lcssa.i, i64 5
  %.sroa.0.0.copyload.i.i508.i = load i8, ptr %i.fb, align 1, !alias.scope !2061, !noalias !2062
  switch i8 %.sroa.0.0.copyload.i.i508.i, label %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i [
    i8 0, label %bb.bf
    i8 1, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.081.0.i.lcssa.i, i64 6
  %i.fd = add nsw i64 %.sroa.584.0.i.lcssa.i, -6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2063
  invoke void @_RNvXs0_NtCsc2ZV4bV5Srq_9daachorse9prefilterNtB5_9PrefilterNtNtB7_10serializer12Serializable22deserialize_from_slice(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef %i.fd)
          to label %.noexc536.i unwind label %bb.ay, !noalias !2013

.noexc536.i:                                      ; preds = %bb.bc
  %i.fe = load i64, ptr %i.c, align 8, !range !2064, !noalias !2063, !noundef !6 ; 2 uses
  %.not82.i.i = icmp eq i64 %i.fe, -1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.064.i.sroa.0.0.copyload.i = load ptr, ptr %i.ff, align 8, !noalias !2063 ; 2 uses
  %.sroa.064.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.064.i.sroa.4.0.copyload.i = load ptr, ptr %.sroa.064.i.sroa.4.0..sroa_idx.i, align 8, !noalias !2063 ; 2 uses
  br i1 %.not82.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.noexc536.i
  %.sroa.465.0..sroa_idx.i532.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.465.0.copyload.i533.i = load ptr, ptr %.sroa.465.0..sroa_idx.i532.i, align 8, !noalias !2063
  %.sroa.566.0..sroa_idx.i534.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.566.0.copyload.i535.i = load i64, ptr %.sroa.566.0..sroa_idx.i534.i, align 8, !noalias !2063
  %.sroa.776.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.776.0.copyload.i.i = load i64, ptr %.sroa.776.0..sroa_idx.i.i, align 8, !noalias !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2063
  br label %_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i

bb.be:                                            ; preds = %.noexc536.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2063
  %i.fg = ptrtoint ptr %.sroa.064.i.sroa.4.0.copyload.i to i64
  br label %bb.bf

_RNvXs3_NtCsc2ZV4bV5Srq_9daachorse10serializerhNtB5_12Serializable22deserialize_from_slice.exit.i.i: ; preds = %bb.bd, %bb.bb, %bb.ba
  %.sroa.10652.0.ph.i = phi ptr [ undef, %bb.bb ], [ %.sroa.064.i.sroa.0.0.copyload.i, %bb.bd ], [ null, %bb.ba ]
  %.sroa.30.0.ph.i = phi i64 [ undef, %bb.bb ], [ %.sroa.776.0.copyload.i.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.24.0.ph.i = phi i64 [ undef, %bb.bb ], [ %.sroa.566.0.copyload.i535.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.18660.0.ph.i = phi ptr [ undef, %bb.bb ], [ %.sroa.465.0.copyload.i533.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.17656.0.ph.i = phi ptr [ undef, %bb.bb ], [ %.sroa.064.i.sroa.4.0.copyload.i, %bb.bd ], [ undef, %bb.ba ]
  %.sroa.0650.0.ph.i = phi i64 [ 3, %bb.bb ], [ %i.fe, %bb.bd ], [ 3, %bb.ba ]
  store i64 %.sroa.0650.0.ph.i, ptr %.sroa.12, align 8, !alias.scope !2013, !noalias !2014
  br label %_RNvXs4_Csc2ZV4bV5Srq_9daachorseNtB5_9MatchKindNtNtB5_10serializer12Serializable22deserialize_from_slice.exit.i

bb.bf:                                            ; preds = %bb.be, %bb.bb
  %.sroa.10652.0.i = phi ptr [ %.sroa.064.i.sroa.0.0.copyload.i, %bb.be ], [ null, %bb.bb ] ; 3 uses
  %.sroa.17656.0.i = phi i64 [ %i.fg, %bb.be ], [ undef, %bb.bb ]
  %.not.i = icmp eq i8 %switch.select59.i.i, 0    ; 2 uses
  br i1 %.not.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fh = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2028, !nonnull !6, !noundef !6
  %i.fi = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2028, !noundef !6
  invoke fastcc void @_RNvMNtCsc2ZV4bV5Srq_9daachorse8bytewiseINtB2_22DoubleArrayAhoCorasickmE16build_root_tableCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fh, i64 noundef %i.fi)
          to label %bb.bi unwind label %bb.cb, !noalias !2013

bb.bh:                                            ; preds = %bb.bf
  store i64 0, ptr %i.m, align 8, !noalias !2028
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.fj, align 8, !noalias !2028
  %i.fk = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.fk, align 8, !noalias !2028
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !2028
  %i.fl = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !2028
  %i.fm = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !2028
  %i.fn = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !2028
  %i.fo = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !2028
  %i.fp = getelementptr inbounds nuw i8, ptr %i.l, i64 140
  store i8 %switch.select59.i.i, ptr %i.fp, align 4, !noalias !2028
  %i.fq = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store i32 %.sroa.0.0.copyload.i476.i, ptr %i.fq, align 8, !noalias !2028
  %i.fr = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store ptr %.sroa.10652.0.i, ptr %i.fr, align 8, !noalias !2028
  %.sroa.4662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i64 %.sroa.17656.0.i, ptr %.sroa.4662.0..sroa_idx.i, align 8, !noalias !2028
  %i.fs = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !2028, !noundef !6 ; 5 uses
  %i.fu = icmp ult i64 %i.ft, 768614336404564651
  call void @llvm.assume(i1 %i.fu)
  br i1 %.not.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fv = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !2028, !noundef !6 ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 1152921504606846976
  call void @llvm.assume(i1 %i.fx)
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %bb.bl, label %.loopexit

bb.bk:                                            ; preds = %bb.bi
  %i.fz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !2028, !noundef !6 ; 3 uses
  %i.gb = icmp ult i64 %i.ga, 768614336404564651
  call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp eq i64 %i.ga, 0
  br i1 %i.gc, label %bb.bs, label %.loopexit

bb.bl:                                            ; preds = %bb.bj
  %i.gd = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.ge = load i64, ptr %i.gd, align 8, !noalias !2028, !noundef !6 ; 2 uses
  %i.gf = icmp ult i64 %i.ge, 2305843009213693952
  call void @llvm.assume(i1 %i.gf)
  %i.gg = icmp eq i64 %i.ge, 0
  br i1 %i.gg, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %i.gh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !2028, !noundef !6 ; 7 uses
  %i.gj = icmp ult i64 %i.gi, 768614336404564651
  call void @llvm.assume(i1 %i.gj)
  %i.gk = icmp ne i64 %i.gi, 0
  %i.gl = and i64 %i.gi, 255
  %i.gm = icmp eq i64 %i.gl, 0
  %or.cond1448.i = and i1 %i.gk, %i.gm
  br i1 %or.cond1448.i, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.gn = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !noalias !2028, !noundef !6 ; 2 uses
  %i.gp = icmp ult i64 %i.go, 2305843009213693952
  call void @llvm.assume(i1 %i.gp)
  %.not276.i = icmp eq i64 %i.go, 256
  br i1 %.not276.i, label %.lr.ph225, label %.loopexit

.lr.ph225:                                        ; preds = %bb.bn
  %i.gq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !2028, !nonnull !6, !noundef !6 ; 2 uses
  %.idx230 = mul nuw nsw i64 %i.gi, 12
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx230
  br label %bb.bp

bb.bo:                                            ; preds = %bb.br
  %i.gt = icmp eq ptr %i.gu, %i.gs
  br i1 %i.gt, label %.loopexit.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph225, %bb.bo
  %.sroa.0119.0.i223 = phi ptr [ %i.gr, %.lr.ph225 ], [ %i.gu, %bb.bo ] ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0119.0.i223, i64 12 ; 2 uses
  %i.gv = load i32, ptr %.sroa.0119.0.i223, align 4, !alias.scope !2065, !noalias !2013, !noundef !6 ; 2 uses
  %.not277.i = icmp eq i32 %i.gv, 0
  %i.gw = zext i32 %i.gv to i64
  %.not278.i = icmp samesign ugt i64 %i.gi, %i.gw
  %or.cond.i = select i1 %.not277.i, i1 true, i1 %.not278.i
  br i1 %or.cond.i, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0119.0.i223, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !alias.scope !2066, !noalias !2013, !noundef !6
  %i.gz = zext i32 %i.gy to i64
  %.not279.i = icmp samesign ugt i64 %i.gi, %i.gz
  br i1 %.not279.i, label %bb.br, label %.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0119.0.i223, i64 8
  %i.hb = load i32, ptr %i.ha, align 4, !alias.scope !2067, !noalias !2013, !noundef !6
  %i.hc = lshr i32 %i.hb, 8                       ; 2 uses
  %.not280.i = icmp eq i32 %i.hc, 0
  %i.hd = add nsw i32 %i.hc, -1
  %i.he = zext nneg i32 %i.hd to i64
end_hunk_0
