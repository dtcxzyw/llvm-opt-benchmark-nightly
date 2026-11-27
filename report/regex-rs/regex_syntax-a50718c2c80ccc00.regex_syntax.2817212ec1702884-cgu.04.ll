Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.04?download=true
inline.NumInlined: 224
inline.NumDeleted: 82
begin_hunk_0_@_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorI14case_fold_char:bb.a
    #dbg_value(i64 8, !1179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3463)
    #dbg_value(i64 8, !1185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3465)
    #dbg_value(i64 8, !1188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3467)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef 8, i64 noundef 4) #17, !dbg !3922
  br label %common.resume, !dbg !3923

bb.v:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit104
  %i.ag = extractvalue { i32, i32 } %i.ae, 0, !dbg !3921
  %i.ah = extractvalue { i32, i32 } %i.ae, 1, !dbg !3921
  store i32 %i.ag, ptr %i.ac, align 4, !dbg !3812
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 4, !dbg !3812
  store i32 %i.ah, ptr %i.ai, align 4, !dbg !3812
    #dbg_value(ptr %i.ac, !3833, !DIExpression(), !3839)
    #dbg_value(ptr %i.ac, !3840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3855)
    #dbg_value(i64 1, !3840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3855)
    #dbg_value(i64 1, !3847, !DIExpression(), !3856)
    #dbg_value(i64 1, !3857, !DIExpression(), !3867)
    #dbg_value(i64 1, !3863, !DIExpression(), !3867)
    #dbg_value(ptr %i.ac, !3848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3868)
    #dbg_value(i64 1, !3848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3868)
    #dbg_value(ptr %i.ac, !3862, !DIExpression(), !3867)
  store i64 1, ptr %i.g, align 8, !dbg !3924
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !3924
  store ptr %i.ac, ptr %i.aj, align 8, !dbg !3924
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !3924
  store i64 1, ptr %i.ak, align 8, !dbg !3924
  call void @_RINvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_17ClassUnicodeRangeE3newINtNtCs4wP2HXfJTCR_5alloc3vec3VecB18_EEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !3925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3926
  %i.al = invoke noundef zeroext i1 @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode20try_case_fold_simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.w unwind label %bb.af, !dbg !3927

bb.w:                                             ; preds = %bb.v
    #dbg_value(i1 %i.al, !3585, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3590)
    #dbg_value(ptr %2, !3575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3869)
    #dbg_value(ptr %2, !3594, !DIExpression(), !3870)
  br i1 %i.al, label %bb.x, label %bb.ab, !dbg !3928

bb.x:                                             ; preds = %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3929
  %.val = load ptr, ptr %i.am, align 8, !dbg !3929, !nonnull !780, !noundef !780
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3929
  %.val101 = load i64, ptr %i.an, align 8, !dbg !3929, !noundef !780 ; 5 uses
    #dbg_value(ptr poison, !1947, !DIExpression(), !3476)
    #dbg_declare(ptr %2, !1952, !DIExpression(), !3477)
    #dbg_value(i8 6, !1953, !DIExpression(), !3476)
    #dbg_value(i64 0, !1956, !DIExpression(), !3490)
    #dbg_value(ptr %.val, !2032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3491)
    #dbg_value(ptr %.val, !2028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3492)
    #dbg_value(ptr %.val, !2029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3493)
    #dbg_value(ptr %.val, !2025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3494)
    #dbg_value(ptr %.val, !2021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3495)
    #dbg_value(i64 %.val101, !2032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3491)
    #dbg_value(i64 %.val101, !2028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3492)
    #dbg_value(i64 %.val101, !2029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3493)
    #dbg_value(i64 %.val101, !2025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3494)
    #dbg_value(i64 %.val101, !2021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3495)
    #dbg_value(ptr %.val, !2014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3496)
    #dbg_value(ptr %.val, !2011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3497)
    #dbg_value(ptr %.val, !2006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3498)
    #dbg_value(ptr %.val, !2001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3499)
    #dbg_value(i64 %.val101, !2014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3496)
    #dbg_value(i64 %.val101, !2011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3497)
    #dbg_value(i64 %.val101, !2006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3498)
    #dbg_value(i64 %.val101, !2001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3499)
    #dbg_value(i64 %.val101, !2003, !DIExpression(), !3500)
    #dbg_value(i64 %.val101, !1994, !DIExpression(), !3501)
    #dbg_value(i64 %.val101, !1988, !DIExpression(), !3502)
    #dbg_value(i64 %.val101, !2035, !DIExpression(), !3504)
    #dbg_value(i64 %.val101, !2043, !DIExpression(), !3506)
    #dbg_value(i64 %.val101, !1968, !DIExpression(), !3507)
    #dbg_value(i64 %.val101, !1962, !DIExpression(), !3490)
    #dbg_value(i64 1, !1970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3507)
    #dbg_value(i64 1, !1963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3490)
    #dbg_value(i64 1, !1970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3507)
    #dbg_value(i64 1, !1963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3930, !noalias !3871
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val101, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.af, !dbg !3930, !noalias !3871

.noexc:                                           ; preds = %bb.x
  %i.ao = load i64, ptr %i.a, align 8, !dbg !3930, !range !1229, !noalias !3871, !noundef !780
  %i.ap = trunc nuw i64 %i.ao to i1, !dbg !3931
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3932
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !3932, !range !2049, !noalias !3871, !noundef !780 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3932 ; 2 uses
  br i1 %i.ap, label %bb.y, label %bb.z, !dbg !3931, !prof !1941

bb.y:                                             ; preds = %.noexc
  %i.at = load i64, ptr %i.as, align 8, !dbg !3933, !noalias !3871
    #dbg_value(i64 %i.ar, !1972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3511)
    #dbg_value(i64 %i.at, !1972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3511)
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #18
          to label %.noexc105 unwind label %bb.af, !dbg !3934, !noalias !3871

.noexc105:                                        ; preds = %bb.y
  unreachable, !dbg !3934

bb.z:                                             ; preds = %.noexc
  %i.au = load ptr, ptr %i.as, align 8, !dbg !3935, !noalias !3871, !nonnull !780, !noundef !780 ; 2 uses
    #dbg_value(i64 %i.ar, !1971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3512)
    #dbg_value(ptr %i.au, !1971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3512)
    #dbg_value(ptr poison, !1961, !DIExpression(), !3513)
  %i.av = icmp ule i64 %.val101, %i.ar, !dbg !3936
    #dbg_value(i1 true, !2052, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3515)
  call void @llvm.assume(i1 %i.av), !dbg !3937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3938, !noalias !3871
    #dbg_value(i64 %i.ar, !2004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3516)
    #dbg_value(ptr %i.au, !2004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3516)
    #dbg_value(i64 0, !2004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3516)
  %.not.i = icmp eq i64 %.val101, 0, !dbg !3939
  br i1 %.not.i, label %bb.ac, label %bb.aa, !dbg !3939

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr %.val, !2040, !DIExpression(), !3504)
    #dbg_value(ptr %.val, !2046, !DIExpression(), !3506)
    #dbg_value(ptr %i.au, !2041, !DIExpression(), !3504)
    #dbg_value(ptr %i.au, !2047, !DIExpression(), !3506)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull readonly align 1 %.val, i64 %.val101, i1 false), !dbg !3940, !noalias !3871
    #dbg_value(i64 %.val101, !2004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3516)
  br label %bb.ac, !dbg !3941

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3942
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !3943
  store i64 0, ptr %i.f, align 8, !dbg !3942
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3944
  call fastcc void @_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3Hir5class(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ax, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.f), !dbg !3945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3946
  store i64 -1, ptr %0, align 8, !dbg !3944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !3947
  br label %bb.d, !dbg !3911

bb.ac:                                            ; preds = %bb.aa, %bb.z
    #dbg_value(i64 %.val101, !2004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3516)
    #dbg_value(i64 %i.ar, !3537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3872)
    #dbg_value(i64 %i.ar, !3544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3873)
    #dbg_value(ptr %i.au, !3544, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3873)
    #dbg_value(ptr %i.au, !3537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3872)
    #dbg_value(i64 %.val101, !3544, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3873)
    #dbg_value(i64 %.val101, !3537, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3872)
  %.sroa.463.sroa.5.0..sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.463.sroa.5.0..sroa.463.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !3949
    #dbg_value(i8 6, !3544, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !3873)
    #dbg_value(i8 6, !3537, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !3872)
    #dbg_value(i64 %i.ar, !3541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3874)
    #dbg_value(ptr %i.au, !3541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3874)
    #dbg_value(i64 %.val101, !3541, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3874)
    #dbg_value(i8 6, !3541, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !3874)
  store i64 %i.ar, ptr %0, align 8, !dbg !3948
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3948
  store ptr %i.au, ptr %.sroa.463.0..sroa_idx, align 8, !dbg !3948
  %.sroa.463.sroa.4.0..sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3948
  store i64 %.val101, ptr %.sroa.463.sroa.4.0..sroa.463.0..sroa_idx.sroa_idx, align 8, !dbg !3948
  %.sroa.463.sroa.6.0..sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !3948
  store i8 6, ptr %.sroa.463.sroa.6.0..sroa.463.0..sroa_idx.sroa_idx, align 8, !dbg !3948
    #dbg_value(ptr %i.h, !1064, !DIExpression(), !3518)
    #dbg_value(ptr %i.h, !1070, !DIExpression(), !3520)
    #dbg_value(ptr %i.h, !1077, !DIExpression(), !3522)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeEBF_.exit unwind label %bb.ad, !dbg !3950

bb.ad:                                            ; preds = %bb.ac
  %i.ay = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !1084, !DIExpression(), !3524)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %common.resume unwind label %bb.ae, !dbg !3951

bb.ae:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !dbg !3950
  unreachable, !dbg !3950

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeEBF_.exit: ; preds = %bb.ac
    #dbg_value(ptr %i.h, !1084, !DIExpression(), !3526)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h), !dbg !3952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !3947
  br label %bb.d, !dbg !3914

bb.af:                                            ; preds = %bb.y, %bb.v, %bb.x
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #16
          to label %common.resume unwind label %bb.q, !dbg !3947
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorI17hir_unicode_class(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3966 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !4119, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !4124)
    #dbg_declare(ptr poison, !4125, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !4130)
    #dbg_declare(ptr poison, !4120, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !4131)
    #dbg_declare(ptr poison, !4103, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !4132)
    #dbg_declare(ptr poison, !4126, !DIExpression(DW_OP_LLVM_fragment, 192, 384), !4133)
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !4134, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4137)
    #dbg_value(ptr poison, !4134, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4137)
    #dbg_value(ptr poison, !4134, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4137)
    #dbg_value(ptr %1, !4093, !DIExpression(), !4138)
    #dbg_value(ptr %1, !4139, !DIExpression(), !4142)
    #dbg_value(ptr %1, !4143, !DIExpression(), !4146)
    #dbg_value(ptr %2, !4094, !DIExpression(), !4138)
    #dbg_value(ptr %2, !4147, !DIExpression(), !4153)
    #dbg_declare(ptr %i.e, !4095, !DIExpression(), !4154)
    #dbg_declare(ptr %i.d, !4101, !DIExpression(), !4155)
    #dbg_value(i8 1, !4156, !DIExpression(), !4161)
  %i.f = load ptr, ptr %1, align 8, !dbg !4237, !nonnull !780, !align !1847, !noundef !780 ; 2 uses
    #dbg_value(ptr %i.f, !4162, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4165)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 36, !dbg !4238
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !4238
    #dbg_value(ptr undef, !4134, !DIExpression(), !4137)
    #dbg_value(i8 %.sroa.4.0.copyload, !4157, !DIExpression(), !4161)
  %cond = icmp eq i8 %.sroa.4.0.copyload, 0, !dbg !4239
  br i1 %cond, label %bb.c, label %bb.b, !dbg !4239

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %2, align 8, !dbg !4240, !range !4166, !noundef !780 ; 3 uses
  %i.h = xor i64 %i.g, -9223372036854775808, !dbg !4240
  %i.i = icmp slt i64 %i.g, 0, !dbg !4240
  %i.j = select i1 %i.i, i64 %i.h, i64 2, !dbg !4240
  switch i64 %i.j, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.k
  ], !dbg !4241

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !4242
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4243
  %.val = load ptr, ptr %i.l, align 8, !dbg !4243, !nonnull !780, !noundef !780
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4243
  %.val17 = load i64, ptr %i.m, align 8, !dbg !4243, !noundef !780 ; 5 uses
    #dbg_value(ptr poison, !1947, !DIExpression(), !3980)
    #dbg_declare(ptr poison, !1952, !DIExpression(), !3981)
    #dbg_value(i8 0, !1953, !DIExpression(), !3980)
    #dbg_value(i64 0, !1956, !DIExpression(), !3994)
    #dbg_value(ptr %.val, !2032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(ptr %.val, !2028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %.val, !2029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3997)
    #dbg_value(ptr %.val, !2025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3998)
    #dbg_value(ptr %.val, !2021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3999)
    #dbg_value(i64 %.val17, !2032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i64 %.val17, !2028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 %.val17, !2029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3997)
    #dbg_value(i64 %.val17, !2025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3998)
    #dbg_value(i64 %.val17, !2021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3999)
    #dbg_value(ptr %.val, !2014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4000)
    #dbg_value(ptr %.val, !2011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4001)
    #dbg_value(ptr %.val, !2006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4002)
    #dbg_value(ptr %.val, !2001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4003)
    #dbg_value(i64 %.val17, !2014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4000)
    #dbg_value(i64 %.val17, !2011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4001)
    #dbg_value(i64 %.val17, !2006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4002)
    #dbg_value(i64 %.val17, !2001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4003)
    #dbg_value(i64 %.val17, !2003, !DIExpression(), !4004)
    #dbg_value(i64 %.val17, !1994, !DIExpression(), !4005)
    #dbg_value(i64 %.val17, !1988, !DIExpression(), !4006)
    #dbg_value(i64 %.val17, !2035, !DIExpression(), !4008)
    #dbg_value(i64 %.val17, !2043, !DIExpression(), !4010)
    #dbg_value(i64 %.val17, !1968, !DIExpression(), !4011)
    #dbg_value(i64 %.val17, !1962, !DIExpression(), !3994)
    #dbg_value(i64 1, !1970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4011)
    #dbg_value(i64 1, !1963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3994)
    #dbg_value(i64 1, !1970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4011)
    #dbg_value(i64 1, !1963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4244, !noalias !4167
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !4244, !noalias !4167
  %i.n = load i64, ptr %i.b, align 8, !dbg !4244, !range !1229, !noalias !4167, !noundef !780
  %i.o = trunc nuw i64 %i.n to i1, !dbg !4245
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4246
  %i.q = load i64, ptr %i.p, align 8, !dbg !4246, !range !2049, !noalias !4167, !noundef !780 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4246 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !4245, !prof !1941

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.r, align 8, !dbg !4247, !noalias !4167
    #dbg_value(i64 %i.q, !1972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4015)
    #dbg_value(i64 %i.s, !1972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4015)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #18, !dbg !4248, !noalias !4167
  unreachable, !dbg !4248

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !dbg !4249, !noalias !4167, !nonnull !780, !noundef !780 ; 2 uses
    #dbg_value(i64 %i.q, !1971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4016)
    #dbg_value(ptr %i.t, !1971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4016)
    #dbg_value(ptr poison, !1961, !DIExpression(), !4017)
  %i.u = icmp ule i64 %.val17, %i.q, !dbg !4250
    #dbg_value(i1 true, !2052, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4019)
  tail call void @llvm.assume(i1 %i.u), !dbg !4251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4252, !noalias !4167
    #dbg_value(i64 %i.q, !2004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4020)
    #dbg_value(ptr %i.t, !2004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4020)
    #dbg_value(i64 0, !2004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4020)
  %.not.i = icmp eq i64 %.val17, 0, !dbg !4253
  br i1 %.not.i, label %_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorI5error.exit, label %bb.f, !dbg !4253

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %.val, !2040, !DIExpression(), !4008)
    #dbg_value(ptr %.val, !2046, !DIExpression(), !4010)
    #dbg_value(ptr %i.t, !2041, !DIExpression(), !4008)
    #dbg_value(ptr %i.t, !2047, !DIExpression(), !4010)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %.val, i64 %.val17, i1 false), !dbg !4254, !noalias !4167
    #dbg_value(i64 %.val17, !2004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4020)
  br label %_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorI5error.exit, !dbg !4255

_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorI5error.exit: ; preds = %bb.e, %bb.f
    #dbg_value(i64 %.val17, !2004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4020)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !dbg !4257
  store i64 %i.q, ptr %0, align 8, !dbg !4256
  %.sroa.4.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4256
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx23, align 8, !dbg !4256
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4256
  store i64 %.val17, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4256
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4256
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !4256
  br label %bb.g, !dbg !4258

bb.g:                                             ; preds = %bb.w, %bb.m, %_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorI5error.exit
  ret void, !dbg !4259

bb.h:                                             ; preds = %bb.b
  unreachable, !dbg !4258

bb.i:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !4260
  %i.w = load i32, ptr %i.v, align 8, !dbg !4260, !range !2080, !noundef !780
    #dbg_value(i32 %i.w, !4096, !DIExpression(), !4169)
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !4261
  store i32 %i.w, ptr %3, align 4, !dbg !4261
  br label %bb.l, !dbg !4262

bb.j:                                             ; preds = %bb.b
    #dbg_value(ptr %2, !4098, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4170)
    #dbg_value(ptr %2, !4171, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4177)
    #dbg_value(ptr %2, !4178, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4183)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !4263
  %i.y = load ptr, ptr %i.x, align 8, !dbg !4263, !nonnull !780, !noundef !780
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !4264
  %i.aa = load i64, ptr %i.z, align 8, !dbg !4264, !noundef !780
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4265
  store ptr %i.y, ptr %i.ab, align 8, !dbg !4265
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !4265
  store i64 %i.aa, ptr %i.ac, align 8, !dbg !4265
  br label %bb.l, !dbg !4266

bb.k:                                             ; preds = %bb.b
    #dbg_value(ptr %2, !4099, !DIExpression(), !4200)
    #dbg_value(ptr %2, !4171, !DIExpression(), !4202)
    #dbg_value(ptr %2, !4178, !DIExpression(), !4204)
    #dbg_value(ptr %2, !4100, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4206)
    #dbg_value(ptr %2, !4171, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4208)
    #dbg_value(ptr %2, !4178, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !4211)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !4267
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !4267, !nonnull !780, !noundef !780
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !4268
  %i.ag = load i64, ptr %i.af, align 8, !dbg !4268, !noundef !780
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !4269
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !4269, !nonnull !780, !noundef !780
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !4270
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !4270, !noundef !780
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4271
  store ptr %i.ae, ptr %i.al, align 8, !dbg !4271
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !4271
  store i64 %i.ag, ptr %i.am, align 8, !dbg !4271
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !4271
  store ptr %i.ai, ptr %i.an, align 8, !dbg !4271
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !4271
  store i64 %i.ak, ptr %i.ao, align 8, !dbg !4271
  br label %bb.l, !dbg !4272

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sink = phi i32 [ 2, %bb.k ], [ 1, %bb.j ], [ 0, %bb.i ]
  store i32 %.sink, ptr %i.e, align 8, !dbg !4138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4273
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !4274 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4275
  call void @_RNvNtCs3roNzt6HBWW_12regex_syntax7unicode5class(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e), !dbg !4275
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4276
  %.val18 = load ptr, ptr %i.aq, align 8, !dbg !4276 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !4276
  %.val19 = load i64, ptr %i.ar, align 8, !dbg !4276 ; 6 uses
  call fastcc void @_RNvMs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorI27convert_unicode_class_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.d, ptr %.val18, i64 %.val19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.c), !dbg !4276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4277
  %i.as = load i64, ptr %i.d, align 8, !dbg !4278, !range !1062, !noundef !780
  %.not15 = icmp eq i64 %i.as, -1, !dbg !4278
  br i1 %.not15, label %bb.n, label %bb.m, !dbg !4279

bb.m:                                             ; preds = %bb.u, %bb.p, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !dbg !4280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4281
  br label %bb.g, !dbg !4259

bb.n:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4282 ; 2 uses
    #dbg_value(ptr %i.at, !4102, !DIExpression(), !4227)
  %i.au = icmp sgt i64 %i.g, -1, !dbg !4283
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aw = load i8, ptr %i.av, align 8, !range !2092
  %i.ax = icmp eq i8 %i.aw, 2, !dbg !4284
  %or.cond = select i1 %i.au, i1 %i.ax, i1 false, !dbg !4284
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104, !dbg !4284
  %i.az = load i8, ptr %i.ay, align 8, !dbg !4284, !range !2093
  %i.ba = zext i1 %or.cond to i8, !dbg !4284
  %.not = icmp eq i8 %i.az, %i.ba, !dbg !4129
    #dbg_value(ptr poison, !2094, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4030)
    #dbg_value(ptr poison, !2094, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !4030)
    #dbg_value(ptr %1, !2099, !DIExpression(), !4031)
    #dbg_value(ptr %1, !2106, !DIExpression(), !4033)
    #dbg_value(ptr %1, !2108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4035)
    #dbg_value(ptr poison, !2122, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4037)
    #dbg_value(ptr %i.ap, !2100, !DIExpression(), !4031)
    #dbg_value(ptr %i.ap, !2108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4035)
    #dbg_value(ptr poison, !2125, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !4037)
    #dbg_value(i1 %.not, !2101, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4031)
    #dbg_value(ptr %i.at, !2102, !DIExpression(), !4031)
    #dbg_value(i8 0, !2127, !DIExpression(), !4039)
    #dbg_value(ptr %i.f, !2131, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !4041)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !4285
  %.sroa.01.0.copyload.i = load i8, ptr %i.bb, align 8, !dbg !4286, !noalias !4228
    #dbg_value(ptr undef, !2094, !DIExpression(), !4030)
    #dbg_value(i8 %.sroa.01.0.copyload.i, !2128, !DIExpression(), !4039)
  switch i8 %.sroa.01.0.copyload.i, label %bb.o [
    i8 2, label %bb.p
    i8 0, label %bb.p
  ], !dbg !4287

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noundef zeroext i1 @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode20try_case_fold_simple(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %.noexc unwind label %bb.v, !dbg !4288, !noalias !4229

.noexc:                                           ; preds = %bb.o
    #dbg_value(i1 %i.bc, !2118, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4035)
  br i1 %i.bc, label %bb.q, label %bb.p, !dbg !4289

bb.p:                                             ; preds = %.noexc, %bb.n, %bb.n
  br i1 %.not, label %bb.m, label %bb.u, !dbg !4290

bb.q:                                             ; preds = %.noexc
    #dbg_value(ptr poison, !1947, !DIExpression(), !4049)
    #dbg_declare(ptr %i.ap, !1952, !DIExpression(), !4050)
    #dbg_value(i8 6, !1953, !DIExpression(), !4049)
    #dbg_value(i64 0, !1956, !DIExpression(), !4063)
    #dbg_value(ptr %.val18, !2032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4064)
    #dbg_value(ptr %.val18, !2028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4065)
    #dbg_value(ptr %.val18, !2029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4066)
    #dbg_value(ptr %.val18, !2025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4067)
    #dbg_value(ptr %.val18, !2021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4068)
    #dbg_value(i64 %.val19, !2032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4064)
    #dbg_value(i64 %.val19, !2028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4065)
    #dbg_value(i64 %.val19, !2029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4066)
    #dbg_value(i64 %.val19, !2025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4067)
    #dbg_value(i64 %.val19, !2021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4068)
    #dbg_value(ptr %.val18, !2014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4069)
    #dbg_value(ptr %.val18, !2011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4070)
    #dbg_value(ptr %.val18, !2006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4071)
    #dbg_value(ptr %.val18, !2001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4072)
    #dbg_value(i64 %.val19, !2014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4069)
    #dbg_value(i64 %.val19, !2011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4070)
    #dbg_value(i64 %.val19, !2006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4071)
    #dbg_value(i64 %.val19, !2001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4072)
    #dbg_value(i64 %.val19, !2003, !DIExpression(), !4073)
    #dbg_value(i64 %.val19, !1994, !DIExpression(), !4074)
    #dbg_value(i64 %.val19, !1988, !DIExpression(), !4075)
    #dbg_value(i64 %.val19, !2035, !DIExpression(), !4077)
    #dbg_value(i64 %.val19, !2043, !DIExpression(), !4079)
    #dbg_value(i64 %.val19, !1968, !DIExpression(), !4080)
    #dbg_value(i64 %.val19, !1962, !DIExpression(), !4063)
    #dbg_value(i64 1, !1970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4080)
    #dbg_value(i64 1, !1963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4063)
    #dbg_value(i64 1, !1970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4080)
    #dbg_value(i64 1, !1963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4063)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4291, !noalias !4230
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc20 unwind label %bb.v, !dbg !4291, !noalias !4231

.noexc20:                                         ; preds = %bb.q
  %i.bd = load i64, ptr %i.a, align 8, !dbg !4291, !range !1229, !noalias !4230, !noundef !780
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !4292
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4293
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !4293, !range !2049, !noalias !4230, !noundef !780 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4293 ; 2 uses
  br i1 %i.be, label %bb.r, label %bb.s, !dbg !4292, !prof !1941

bb.r:                                             ; preds = %.noexc20
  %i.bi = load i64, ptr %i.bh, align 8, !dbg !4294, !noalias !4230
    #dbg_value(i64 %i.bg, !1972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4084)
    #dbg_value(i64 %i.bi, !1972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4084)
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #18
          to label %.noexc21 unwind label %bb.v, !dbg !4295, !noalias !4231

.noexc21:                                         ; preds = %bb.r
  unreachable, !dbg !4295

bb.s:                                             ; preds = %.noexc20
  %i.bj = load ptr, ptr %i.bh, align 8, !dbg !4296, !noalias !4230, !nonnull !780, !noundef !780 ; 2 uses
    #dbg_value(i64 %i.bg, !1971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4085)
    #dbg_value(ptr %i.bj, !1971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4085)
    #dbg_value(ptr poison, !1961, !DIExpression(), !4086)
  %i.bk = icmp ule i64 %.val19, %i.bg, !dbg !4297
    #dbg_value(i1 true, !2052, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4088)
  call void @llvm.assume(i1 %i.bk), !dbg !4298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4299, !noalias !4230
    #dbg_value(i64 %i.bg, !2004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4089)
    #dbg_value(ptr %i.bj, !2004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4089)
    #dbg_value(i64 0, !2004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4089)
  %.not.i.i = icmp eq i64 %.val19, 0, !dbg !4300
  br i1 %.not.i.i, label %bb.w, label %bb.t, !dbg !4300

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %.val18, !2040, !DIExpression(), !4077)
    #dbg_value(ptr %.val18, !2046, !DIExpression(), !4079)
    #dbg_value(ptr %i.bj, !2041, !DIExpression(), !4077)
    #dbg_value(ptr %i.bj, !2047, !DIExpression(), !4079)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull readonly align 1 %.val18, i64 %.val19, i1 false), !dbg !4301, !noalias !4231
    #dbg_value(i64 %.val19, !2004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4089)
  br label %bb.w, !dbg !4302

bb.u:                                             ; preds = %bb.p
  invoke void @_RNvMsa_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_12ClassUnicode6negate(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %bb.m unwind label %bb.v, !dbg !4303, !noalias !4229

bb.v:                                             ; preds = %bb.u, %bb.r, %bb.q, %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeNtBZ_5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d) #16
          to label %bb.y unwind label %bb.x, !dbg !4281

bb.w:                                             ; preds = %bb.t, %bb.s
    #dbg_value(i64 %.val19, !2004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4089)
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.655.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false), !dbg !4305
    #dbg_value(i64 %i.bg, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4232)
    #dbg_value(ptr %i.bj, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4232)
    #dbg_value(i64 %.val19, !4126, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4232)
    #dbg_value(i8 6, !4126, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !4232)
    #dbg_value(i64 %i.bg, !4125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4233)
    #dbg_value(ptr %i.bj, !4125, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4233)
    #dbg_value(i64 %.val19, !4125, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4233)
    #dbg_value(i8 6, !4125, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !4233)
    #dbg_value(i64 %i.bg, !4103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4234)
    #dbg_value(i64 %i.bg, !4120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4235)
    #dbg_value(ptr %i.bj, !4103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4234)
    #dbg_value(ptr %i.bj, !4120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4235)
    #dbg_value(i64 %.val19, !4103, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4234)
    #dbg_value(i64 %.val19, !4120, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4235)
    #dbg_value(i8 6, !4103, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !4234)
    #dbg_value(i8 6, !4120, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !4235)
    #dbg_value(i64 %i.bg, !4119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4236)
    #dbg_value(ptr %i.bj, !4119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4236)
    #dbg_value(i64 %.val19, !4119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4236)
    #dbg_value(i8 6, !4119, !DIExpression(DW_OP_LLVM_fragment, 576, 8), !4236)
  store i64 %i.bg, ptr %0, align 8, !dbg !4304
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4304
  store ptr %i.bj, ptr %.sroa.453.0..sroa_idx, align 8, !dbg !4304
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4304
  store i64 %.val19, ptr %.sroa.554.0..sroa_idx, align 8, !dbg !4304
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !4304
  store i8 6, ptr %.sroa.756.0..sroa_idx, align 8, !dbg !4304
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeNtBZ_5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d), !dbg !4281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4281
  br label %bb.g, !dbg !4258

bb.x:                                             ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !dbg !4306
  unreachable, !dbg !4306

bb.y:                                             ; preds = %bb.v
  resume { ptr, i32 } %i.bl, !dbg !4306
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
