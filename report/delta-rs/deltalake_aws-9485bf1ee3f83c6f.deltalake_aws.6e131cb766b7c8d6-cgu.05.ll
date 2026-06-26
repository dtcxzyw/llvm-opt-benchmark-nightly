inline.NumInlined: 1053
inline.NumDeleted: 445
begin_hunk_0_@_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue26validate_and_return_originNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueNvB2c_9parse_urlECs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.h:                                             ; preds = %_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment9parse_urlINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  store ptr %i.e, ptr %i.a, align 8, !noalias !52
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_15EnvConfigSourceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !52
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
          to label %bb.m unwind label %bb.i, !noalias !57

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.body unwind label %bb.j, !noalias !58

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !58
  unreachable

bb.k:                                             ; preds = %_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment9parse_urlINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.26, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %., ptr %.sroa.513.0..sroa_idx, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %storemerge = phi i64 [ -9223372036854775808, %bb.k ], [ %.sroa.0.0.copyload, %bb.m ]
  store i64 %storemerge, ptr %0, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  %.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !noalias !59
  %.sroa.4.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx29, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  br label %bb.l

bb.n:                                             ; preds = %bb.o, %.body
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #30
          to label %.body27 unwind label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ac = load i64, ptr %i.f, align 8, !range !21, !alias.scope !60, !noundef !12
  %i.ad = icmp eq i64 %i.ac, -9223372036854775808
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body27 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.t:                                             ; preds = %.body27, %bb.n, %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

.body27:                                          ; preds = %bb.r, %bb.b, %bb.n
  %.pn24 = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.h, %bb.b ], [ %i.ae, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1) #30
          to label %bb.u unwind label %bb.t

bb.u:                                             ; preds = %.body27
  resume { ptr, i32 } %.pn24
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26RequestChecksumCalculationNtB1h_38UnknownRequestChecksumCalculationErrorNvYB1f_NtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.515 = alloca [39 x i8], align 1          ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue4load(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.p, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.x, %bb.p ], [ %.pn.i, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1) #30
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !range !51, !noundef !12
  %.not = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !63
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !63, !nonnull !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !63
  invoke void @_RNvXs_NtCs2DiVQAxFeQE_16aws_smithy_types15checksum_configNtB4_26RequestChecksumCalculationNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %_RNvYNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26RequestChecksumCalculationNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1u_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e, !noalias !63

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.q, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e) #30
          to label %bb.l unwind label %bb.r, !noalias !63

_RNvYNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26RequestChecksumCalculationNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1u_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8, !range !21, !noalias !63, !noundef !12
  %.not2.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not2.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26RequestChecksumCalculationNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1u_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !67
  store ptr %i.e, ptr %i.a, align 8, !noalias !67
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_15EnvConfigSourceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !67
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.g, !noalias !72

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config38UnknownRequestChecksumCalculationErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.body.i unwind label %bb.h, !noalias !73

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !73
  unreachable

bb.i:                                             ; preds = %_RNvYNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26RequestChecksumCalculationNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1u_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !17, !noalias !63, !noundef !12
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.5.0 = phi i8 [ %i.t, %bb.i ], [ %.sroa.4.0.copyload, %bb.k ] ; 2 uses
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %bb.i ], [ %.sroa.014.0.copyload, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !63
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.n unwind label %bb.m, !noalias !63

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !67
  %.sroa.515.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.515, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.515.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.014.0.copyload = load i64, ptr %i.b, align 8, !noalias !74
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !74
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !63
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.m ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #30
          to label %.body unwind label %bb.r, !noalias !63

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63
  %i.v = load i64, ptr %i.f, align 8, !range !21, !alias.scope !75, !noalias !63, !noundef !12
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  br i1 %i.w, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.p, !noalias !63

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.q, !noalias !63

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !63
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.b

bb.r:                                             ; preds = %bb.l, %.body.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !63
  unreachable

bb.s:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.aa, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.v, %bb.s
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1)
  ret void

bb.u:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !63
  %.not10 = icmp eq i64 %.sroa.0.0, -9223372036854775808
  br i1 %.not10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.515, i64 39, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.t

bb.w:                                             ; preds = %bb.u
  %4 = and i8 %.sroa.5.0, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %4, ptr %i.ab, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.x:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26ResponseChecksumValidationNtB1h_38UnknownResponseChecksumValidationErrorNvYB1f_NtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.515 = alloca [39 x i8], align 1          ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue4load(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.p, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.x, %bb.p ], [ %.pn.i, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1) #30
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !range !51, !noundef !12
  %.not = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !78
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !78
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !78, !nonnull !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !78
  invoke void @_RNvXs1_NtCs2DiVQAxFeQE_16aws_smithy_types15checksum_configNtB5_26ResponseChecksumValidationNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %_RNvYNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26ResponseChecksumValidationNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1u_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e, !noalias !78

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.q, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e) #30
          to label %bb.l unwind label %bb.r, !noalias !78

_RNvYNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26ResponseChecksumValidationNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1u_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8, !range !21, !noalias !78, !noundef !12
  %.not2.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not2.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26ResponseChecksumValidationNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1u_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  store ptr %i.e, ptr %i.a, align 8, !noalias !82
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_15EnvConfigSourceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !82
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.g, !noalias !87

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config38UnknownResponseChecksumValidationErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.body.i unwind label %bb.h, !noalias !88

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !88
  unreachable

bb.i:                                             ; preds = %_RNvYNvYNtNtCs2DiVQAxFeQE_16aws_smithy_types15checksum_config26ResponseChecksumValidationNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1u_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !17, !noalias !78, !noundef !12
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.5.0 = phi i8 [ %i.t, %bb.i ], [ %.sroa.4.0.copyload, %bb.k ] ; 2 uses
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %bb.i ], [ %.sroa.014.0.copyload, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !78
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.n unwind label %bb.m, !noalias !78

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  %.sroa.515.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.515, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.515.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.014.0.copyload = load i64, ptr %i.b, align 8, !noalias !89
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !89
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !78
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.m ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #30
          to label %.body unwind label %bb.r, !noalias !78

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !78
  %i.v = load i64, ptr %i.f, align 8, !range !21, !alias.scope !90, !noalias !78, !noundef !12
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  br i1 %i.w, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.p, !noalias !78

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.q, !noalias !78

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !78
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.b

bb.r:                                             ; preds = %bb.l, %.body.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !78
  unreachable

bb.s:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.aa, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.v, %bb.s
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1)
  ret void

bb.u:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !78
  %.not10 = icmp eq i64 %.sroa.0.0, -9223372036854775808
  br i1 %.not10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.515, i64 39, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.t

bb.w:                                             ; preds = %bb.u
  %4 = and i8 %.sroa.5.0, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %4, ptr %i.ab, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.x:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtCs2DiVQAxFeQE_16aws_smithy_types5retry9RetryModeNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorNCNCNvMNtNtB2b_16default_provider12retry_configNtB3c_7Builder16try_retry_config00ECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.515 = alloca [39 x i8], align 1          ; 3 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue4load(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.p, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.x, %bb.p ], [ %.pn.i, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1) #30
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !range !51, !noundef !12
  %.not = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !93
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !93, !nonnull !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  invoke void @_RNvXs_NtCs2DiVQAxFeQE_16aws_smithy_types5retryNtB4_9RetryModeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %.noexc.i unwind label %bb.e, !noalias !93

.noexc.i:                                         ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !range !21, !noalias !97, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, -9223372036854775808
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i8, ptr %i.p, align 8, !noalias !101 ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.s, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e) #30
          to label %bb.l unwind label %bb.r, !noalias !93

bb.f:                                             ; preds = %.noexc.i
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.8.0..sroa_idx4.i, i64 15, i1 false), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  store i64 %i.o, ptr %i.d, align 8, !noalias !93
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  store ptr %i.e, ptr %i.a, align 8, !noalias !102
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_15EnvConfigSourceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !102
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.g, !noalias !107

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config5retry5error16RetryConfigErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #30
          to label %.body.i unwind label %bb.h, !noalias !108

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !108
  unreachable

bb.i:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.5.0 = phi i8 [ %i.q, %bb.i ], [ %.sroa.4.0.copyload, %bb.k ] ; 2 uses
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %bb.i ], [ %.sroa.014.0.copyload, %bb.k ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.n unwind label %bb.m, !noalias !93

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  %.sroa.515.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.515, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.515.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.014.0.copyload = load i64, ptr %i.b, align 8, !noalias !109
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !109
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !93
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.m ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #30
          to label %.body unwind label %bb.r, !noalias !93

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !93
  %i.v = load i64, ptr %i.f, align 8, !range !21, !alias.scope !110, !noalias !93, !noundef !12
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  br i1 %i.w, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.p, !noalias !93

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.q, !noalias !93

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !93
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.b

bb.r:                                             ; preds = %bb.l, %.body.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !93
  unreachable

bb.s:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.aa, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.v, %bb.s
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1)
  ret void

bb.u:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !93
  %.not10 = icmp eq i64 %.sroa.0.0, -9223372036854775808
  br i1 %.not10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.515, i64 39, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.t

bb.w:                                             ; preds = %bb.u
  %4 = and i8 %.sroa.5.0, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %4, ptr %i.ab, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.x:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtCsjPG5xYjJYir_9aws_types15endpoint_config21AccountIdEndpointModeNtB1h_31AccountIdEndpointModeParseErrorNvYB1f_NtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.515 = alloca [39 x i8], align 1          ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue4load(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.p, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.x, %bb.p ], [ %.pn.i, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1) #30
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !range !51, !noundef !12
  %.not = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !113
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !113, !nonnull !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !113
  invoke void @_RNvXs4_NtCsjPG5xYjJYir_9aws_types15endpoint_configNtB5_21AccountIdEndpointModeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %_RNvYNvYNtNtCsjPG5xYjJYir_9aws_types15endpoint_config21AccountIdEndpointModeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1h_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e, !noalias !113

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.q, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e) #30
          to label %bb.l unwind label %bb.r, !noalias !113

_RNvYNvYNtNtCsjPG5xYjJYir_9aws_types15endpoint_config21AccountIdEndpointModeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1h_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8, !range !21, !noalias !113, !noundef !12
  %.not2.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not2.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNvYNtNtCsjPG5xYjJYir_9aws_types15endpoint_config21AccountIdEndpointModeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1h_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !117
  store ptr %i.e, ptr %i.a, align 8, !noalias !117
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_15EnvConfigSourceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !117
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.g, !noalias !122

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types15endpoint_config31AccountIdEndpointModeParseErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.body.i unwind label %bb.h, !noalias !123

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !123
  unreachable

bb.i:                                             ; preds = %_RNvYNvYNtNtCsjPG5xYjJYir_9aws_types15endpoint_config21AccountIdEndpointModeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_strINtNtNtB1h_3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !124, !noalias !113, !noundef !12
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.5.0 = phi i8 [ %i.t, %bb.i ], [ %.sroa.4.0.copyload, %bb.k ] ; 3 uses
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %bb.i ], [ %.sroa.014.0.copyload, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !113
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.n unwind label %bb.m, !noalias !113

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !117
  %.sroa.515.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.515, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.515.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.014.0.copyload = load i64, ptr %i.b, align 8, !noalias !125
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !125
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.m ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #30
          to label %.body unwind label %bb.r, !noalias !113

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !113
  %i.v = load i64, ptr %i.f, align 8, !range !21, !alias.scope !126, !noalias !113, !noundef !12
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  br i1 %i.w, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.p, !noalias !113

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.q, !noalias !113

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !113
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.b

bb.r:                                             ; preds = %bb.l, %.body.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !113
  unreachable

bb.s:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.aa, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.v, %bb.s
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1)
  ret void

bb.u:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !113
  %.not10 = icmp eq i64 %.sroa.0.0, -9223372036854775808
  br i1 %.not10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.515, i64 39, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.ab = icmp ult i8 %.sroa.5.0, 3
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0, ptr %i.ac, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.x:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validateNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvNvB2w_23parse_auth_scheme_namesECs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference25InvalidAuthSchemeNamesCsvECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.body.i unwind label %bb.h, !noalias !173

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !173
  unreachable

bb.i:                                             ; preds = %_RNvYNvNtNtCsaB04DkjCm5a_10aws_config16default_provider22auth_scheme_preference23parse_auth_scheme_namesINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.0.0 = phi i64 [ %.sroa.014.0.copyload, %bb.k ], [ -9223372036854775808, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !163
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.n unwind label %bb.m, !noalias !163

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167
  %.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %.sroa.014.0.copyload = load i64, ptr %i.b, align 8, !noalias !174
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !163
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.v, %bb.m ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #30
          to label %.body unwind label %bb.r, !noalias !163

bb.m:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !163
  %i.w = load i64, ptr %i.f, align 8, !range !21, !alias.scope !175, !noalias !163, !noundef !12
  %i.x = icmp eq i64 %i.w, -9223372036854775808
  br i1 %i.x, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.p, !noalias !163

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.q, !noalias !163

bb.q:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !163
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.b

bb.r:                                             ; preds = %bb.l, %.body.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !163
  unreachable

bb.s:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ab, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.v, %bb.s
  %.sink = phi i64 [ -9223372036854775808, %bb.s ], [ %.sroa.0.0, %bb.v ], [ -9223372036854775808, %bb.u ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1)
  ret void

bb.u:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.not11 = icmp eq i64 %.sroa.0.0, -9223372036854775808
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  br i1 %.not11, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.66.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.t

bb.w:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.x:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validatebNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueNvB1i_10parse_boolECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.515 = alloca [39 x i8], align 1          ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue4load(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.p, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.x, %bb.p ], [ %.pn.i, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1) #30
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !range !51, !noundef !12
  %.not = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !178
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !178
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !178, !nonnull !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !178
  invoke void @_RNvNtCsaB04DkjCm5a_10aws_config11environment10parse_bool(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment10parse_boolINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e, !noalias !178

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.q, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e) #30
          to label %bb.l unwind label %bb.r, !noalias !178

_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment10parse_boolINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8, !range !21, !noalias !178, !noundef !12
  %.not2.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not2.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment10parse_boolINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  store ptr %i.e, ptr %i.a, align 8, !noalias !182
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_15EnvConfigSourceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !182
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.g, !noalias !187

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.body.i unwind label %bb.h, !noalias !188

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !188
  unreachable

bb.i:                                             ; preds = %_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment10parse_boolINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !17, !noalias !178, !noundef !12
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.5.0 = phi i8 [ %i.t, %bb.i ], [ %.sroa.4.0.copyload, %bb.k ] ; 2 uses
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %bb.i ], [ %.sroa.014.0.copyload, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !178
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.n unwind label %bb.m, !noalias !178

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  %.sroa.515.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.515, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.515.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.014.0.copyload = load i64, ptr %i.b, align 8, !noalias !189
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !189
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.515.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !178
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.m ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #30
          to label %.body unwind label %bb.r, !noalias !178

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !178
  %i.v = load i64, ptr %i.f, align 8, !range !21, !alias.scope !190, !noalias !178, !noundef !12
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  br i1 %i.w, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.p, !noalias !178

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.q, !noalias !178

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !178
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.b

bb.r:                                             ; preds = %bb.l, %.body.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !178
  unreachable

bb.s:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.aa, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.v, %bb.s
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1)
  ret void

bb.u:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !178
  %.not10 = icmp eq i64 %.sroa.0.0, -9223372036854775808
  br i1 %.not10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.515, i64 39, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.t

bb.w:                                             ; preds = %bb.u
  %4 = and i8 %.sroa.5.0, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %4, ptr %i.ab, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.x:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB6_14EnvConfigValue8validatemNtNtCsaB04DkjCm5a_10aws_config11environment16InvalidUintValueNvB1i_10parse_uintECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.515 = alloca [36 x i8], align 4          ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  invoke void @_RNvMs6_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_14EnvConfigValue4load(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(168) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.p, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.x, %bb.p ], [ %.pn.i, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1) #30
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !range !51, !noundef !12
  %.not = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !193
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !193
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !193, !nonnull !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !193
  invoke void @_RNvNtCsaB04DkjCm5a_10aws_config11environment10parse_uint(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment10parse_uintINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.e, !noalias !193

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.q, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e) #30
          to label %bb.l unwind label %bb.r, !noalias !193

_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment10parse_uintINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8, !range !21, !noalias !193, !noundef !12
  %.not2.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not2.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment10parse_uintINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !197
  store ptr %i.e, ptr %i.a, align 8, !noalias !197
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsat9blWvDIpa_11aws_runtime10env_configNtB5_15EnvConfigSourceNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !197
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.g, !noalias !202

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsaB04DkjCm5a_10aws_config11environment16InvalidUintValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.body.i unwind label %bb.h, !noalias !203

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !203
  unreachable

bb.i:                                             ; preds = %_RNvYNvNtCsaB04DkjCm5a_10aws_config11environment10parse_uintINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTReEE4callCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i32, ptr %i.s, align 8, !noalias !193, !noundef !12
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.5.0 = phi i32 [ %i.t, %bb.i ], [ %.sroa.4.0.copyload, %bb.k ] ; 2 uses
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %bb.i ], [ %.sroa.014.0.copyload, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !193
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config15EnvConfigSourceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.n unwind label %bb.m, !noalias !193

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !197
  %.sroa.515.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.515, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.515.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %.sroa.014.0.copyload = load i64, ptr %i.b, align 8, !noalias !204
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !204
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.515, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.515.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !193
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.m ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #30
          to label %.body unwind label %bb.r, !noalias !193

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !193
  %i.v = load i64, ptr %i.f, align 8, !range !21, !alias.scope !205, !noalias !193, !noundef !12
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  br i1 %i.w, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.p, !noalias !193

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.q, !noalias !193

bb.q:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !193
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.u unwind label %bb.b

bb.r:                                             ; preds = %bb.l, %.body.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !193
  unreachable

bb.s:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aa, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.v, %bb.s
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsat9blWvDIpa_11aws_runtime10env_config14EnvConfigValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %1)
  ret void

bb.u:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !193
  %.not10 = icmp eq i64 %.sroa.0.0, -9223372036854775808
  br i1 %.not10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.515, i64 36, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.5.0, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.5.0, ptr %i.ac, align 4
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.t

bb.x:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
end_hunk_1
