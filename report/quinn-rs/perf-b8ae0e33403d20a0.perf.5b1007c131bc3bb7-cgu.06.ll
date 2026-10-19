Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/perf-b8ae0e33403d20a0.perf.5b1007c131bc3bb7-cgu.06?download=true
inline.NumInlined: 222
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs172jLVBUT4Z_12clap_builder7builder14possible_value13PossibleValueECs7OITKvp9Irj_4perf:bb.a

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs172jLVBUT4Z_12clap_builder7builder10styled_str9StyledStrEECs7OITKvp9Irj_4perf.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !1395, !DIExpression(), !3566)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs172jLVBUT4Z_12clap_builder7builder3str3StrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.g, !dbg !3594

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !3593
  unreachable, !dbg !3593

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !3588

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs172jLVBUT4Z_12clap_builder7builder3str3StrEECs7OITKvp9Irj_4perf.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs172jLVBUT4Z_12clap_builder7builder10styled_str9StyledStrEECs7OITKvp9Irj_4perf.exit
    #dbg_value(ptr %0, !1395, !DIExpression(), !3568)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs172jLVBUT4Z_12clap_builder7builder3str3StrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !3595
  ret void, !dbg !3588

bb.h:                                             ; preds = %.body
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !3588
  unreachable, !dbg !3588
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3596 {
bb.a:
    #dbg_value(ptr %0, !3608, !DIExpression(), !3610)
    #dbg_value(ptr %0, !1420, !DIExpression(), !3598)
    #dbg_value(ptr %0, !1423, !DIExpression(), !3600)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit unwind label %bb.b, !dbg !3611

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !1430, !DIExpression(), !3602)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7OITKvp9Irj_4perf.exit.i.i unwind label %bb.c, !dbg !3612

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !3611
  unreachable, !dbg !3611

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7OITKvp9Irj_4perf.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !3611

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit: ; preds = %bb.a
    #dbg_value(ptr %0, !1430, !DIExpression(), !3604)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !3613
  ret void, !dbg !3614
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3615 {
bb.a:
    #dbg_value(ptr %0, !3626, !DIExpression(), !3628)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3629 ; 3 uses
    #dbg_value(ptr %i.a, !1420, !DIExpression(), !3617)
    #dbg_value(ptr %i.a, !1423, !DIExpression(), !3619)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit unwind label %bb.b, !dbg !3630

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !1430, !DIExpression(), !3621)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7OITKvp9Irj_4perf.exit.i.i unwind label %bb.c, !dbg !3631

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !3630
  unreachable, !dbg !3630

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7OITKvp9Irj_4perf.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !3630

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !1430, !DIExpression(), !3623)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !3632
  ret void, !dbg !3629
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs172jLVBUT4Z_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtCskKLDkoKarTP_4core5slice4iter4IterB1i_EECs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(address) %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3641 {
bb.a:
    #dbg_value(ptr poison, !3852, !DIExpression(), !3862)
    #dbg_value(ptr poison, !3904, !DIExpression(), !3906)
    #dbg_value(ptr poison, !3908, !DIExpression(), !3914)
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !3915, !DIExpression(), !3673)
    #dbg_value(ptr poison, !3949, !DIExpression(), !3683)
  %i.d = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr %1, !3841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3963)
    #dbg_value(i64 %2, !3841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3963)
    #dbg_value(ptr %3, !3842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3963)
    #dbg_value(ptr %4, !3842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3963)
    #dbg_declare(ptr %i.d, !3843, !DIExpression(), !3964)
    #dbg_declare(ptr %i.c, !3965, !DIExpression(), !3973)
    #dbg_declare(ptr %i.b, !3974, !DIExpression(), !3992)
    #dbg_declare(ptr %i.b, !3993, !DIExpression(), !3998)
    #dbg_declare(ptr poison, !3999, !DIExpression(), !4006)
    #dbg_declare(ptr poison, !4013, !DIExpression(), !4019)
    #dbg_declare(ptr poison, !4020, !DIExpression(), !4024)
    #dbg_declare(ptr poison, !4025, !DIExpression(), !4029)
    #dbg_value(i64 1, !3856, !DIExpression(), !4034)
    #dbg_declare(ptr poison, !4046, !DIExpression(), !4053)
    #dbg_value(i64 0, !4054, !DIExpression(), !4060)
    #dbg_value(i64 1, !3856, !DIExpression(), !4062)
    #dbg_declare(ptr poison, !3887, !DIExpression(), !4063)
    #dbg_value(i64 32, !3856, !DIExpression(), !4064)
    #dbg_declare(ptr poison, !4065, !DIExpression(), !4074)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4292
  store i64 0, ptr %i.d, align 8, !dbg !4293
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4293 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !dbg !4293
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !4293 ; 4 uses
  store i64 0, ptr %i.f, align 8, !dbg !4293
    #dbg_value(ptr %3, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4079)
    #dbg_value(ptr %4, !3844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4079)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
    #dbg_value(ptr %3, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4079)
    #dbg_value(ptr undef, !3949, !DIExpression(), !3683)
    #dbg_value(i64 1, !4080, !DIExpression(), !3712)
    #dbg_value(ptr %3, !3959, !DIExpression(), !3713)
    #dbg_value(ptr %3, !4084, !DIExpression(), !3712)
    #dbg_value(ptr %4, !3960, !DIExpression(), !3714)
    #dbg_value(ptr poison, !4087, !DIExpression(), !3717)
    #dbg_value(ptr poison, !4090, !DIExpression(), !3718)
  %i.g = icmp eq ptr %3, %4, !dbg !4294
  br i1 %i.g, label %._crit_edge, label %.lr.ph, !dbg !4295

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.b, !dbg !4295

._crit_edge.loopexit:                             ; preds = %bb.d
  %.sroa.053.0.copyload.pre = load i64, ptr %i.d, align 8, !dbg !4296
  %.sroa.454.0.copyload.pre = load ptr, ptr %i.e, align 8, !dbg !4296
  %.sroa.555.0.copyload.pre = load i64, ptr %i.f, align 8, !dbg !4296
  br label %._crit_edge, !dbg !4296

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.555.0.copyload = phi i64 [ %.sroa.555.0.copyload.pre, %._crit_edge.loopexit ], [ 0, %bb.a ], !dbg !4296 ; 2 uses
  %.sroa.454.0.copyload = phi ptr [ %.sroa.454.0.copyload.pre, %._crit_edge.loopexit ], [ inttoptr (i64 8 to ptr), %bb.a ], !dbg !4296 ; 3 uses
  %.sroa.053.0.copyload = phi i64 [ %.sroa.053.0.copyload.pre, %._crit_edge.loopexit ], [ 0, %bb.a ], !dbg !4296 ; 2 uses
    #dbg_value(ptr poison, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4296
    #dbg_value(i64 %.sroa.053.0.copyload, !3885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4092)
    #dbg_value(ptr %.sroa.454.0.copyload, !3885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4092)
    #dbg_value(i64 %.sroa.555.0.copyload, !3885, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4092)
    #dbg_value(i64 %.sroa.053.0.copyload, !3886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4093)
    #dbg_value(ptr %.sroa.454.0.copyload, !3886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4093)
    #dbg_value(i64 %.sroa.555.0.copyload, !3886, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4093)
    #dbg_value(ptr %.sroa.454.0.copyload, !3888, !DIExpression(), !4094)
    #dbg_value(ptr %.sroa.454.0.copyload, !3890, !DIExpression(), !4095)
    #dbg_value(ptr %.sroa.454.0.copyload, !4096, !DIExpression(), !4102)
    #dbg_value(ptr undef, !3908, !DIExpression(), !3914)
    #dbg_value(i64 %.sroa.555.0.copyload, !4099, !DIExpression(), !4102)
  %i.j = icmp ult i64 %.sroa.555.0.copyload, 288230376151711744, !dbg !4297
  call void @llvm.assume(i1 %i.j), !dbg !4298
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.454.0.copyload, i64 %.sroa.555.0.copyload, !dbg !4299
    #dbg_value(ptr %i.k, !3891, !DIExpression(), !4103)
    #dbg_value(ptr undef, !3904, !DIExpression(), !3906)
    #dbg_value(ptr undef, !3852, !DIExpression(), !3862)
    #dbg_value(i64 %.sroa.053.0.copyload, !4105, !DIExpression(), !4112)
  %i.l = icmp sgt i64 %.sroa.053.0.copyload, -1, !dbg !4300
  call void @llvm.assume(i1 %i.l), !dbg !4300
    #dbg_value(ptr %.sroa.454.0.copyload, !4068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4113)
    #dbg_value(i64 %.sroa.053.0.copyload, !4068, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4113)
    #dbg_value(ptr %.sroa.454.0.copyload, !4068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4113)
    #dbg_value(ptr %i.k, !4068, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4113)
  store ptr %.sroa.454.0.copyload, ptr %i.b, align 8, !dbg !4301
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4301
  store ptr %.sroa.454.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !4301
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4301
  store i64 %.sroa.053.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4301
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !4301
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !4301
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTdBY_EENCINvNtNtNtCs172jLVBUT4Z_12clap_builder6parser8features11suggestions12did_you_meanRBY_INtNtNtB28_5slice4iter4IterBY_EEs0_0EE9from_iterCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !4302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4304
  ret void, !dbg !4305

.loopexit.split-lp:                               ; preds = %bb.e, %bb.b, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.071 = phi ptr [ %3, %.lr.ph ], [ %i.m, %bb.d ] ; 3 uses
    #dbg_value(ptr %.sroa.0.071, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4079)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.071, i64 24, !dbg !4306 ; 2 uses
    #dbg_value(ptr %i.m, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4079)
    #dbg_value(ptr %.sroa.0.071, !3845, !DIExpression(), !4117)
    #dbg_value(ptr poison, !4119, !DIExpression(), !3724)
  %i.n = getelementptr i8, ptr %.sroa.0.071, i64 8, !dbg !4307 ; 2 uses
  %.val.i = load ptr, ptr %i.n, align 8, !dbg !4307, !nonnull !989, !noundef !989
  %i.o = getelementptr i8, ptr %.sroa.0.071, i64 16, !dbg !4307 ; 2 uses
  %.val1.i = load i64, ptr %i.o, align 8, !dbg !4307, !noundef !989
  %i.p = invoke noundef double @_RNvCskBLNexOrPOX_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.c unwind label %.loopexit.split-lp, !dbg !4308 ; 4 uses

bb.c:                                             ; preds = %bb.b
    #dbg_value(double %i.p, !3846, !DIExpression(), !4126)
  %i.q = fcmp ogt double %i.p, f0x3FE6666666666666, !dbg !4309
  br i1 %i.q, label %bb.e, label %bb.d, !dbg !4309

bb.d:                                             ; preds = %bb.q, %bb.c
    #dbg_value(ptr %i.m, !3844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4079)
    #dbg_value(ptr undef, !3949, !DIExpression(), !3683)
    #dbg_value(i64 1, !4080, !DIExpression(), !3712)
    #dbg_value(ptr %i.m, !3959, !DIExpression(), !3713)
    #dbg_value(ptr %i.m, !4084, !DIExpression(), !3712)
    #dbg_value(ptr %4, !3960, !DIExpression(), !3714)
    #dbg_value(ptr poison, !4087, !DIExpression(), !3717)
    #dbg_value(ptr poison, !4090, !DIExpression(), !3718)
  %i.r = icmp eq ptr %i.m, %4, !dbg !4294
  br i1 %i.r, label %._crit_edge.loopexit, label %bb.b, !dbg !4295

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr poison, !4119, !DIExpression(), !3726)
  %.val.i60 = load ptr, ptr %i.n, align 8, !dbg !4310, !nonnull !989, !noundef !989
  %.val1.i61 = load i64, ptr %i.o, align 8, !dbg !4310, !noundef !989 ; 5 uses
    #dbg_value(ptr %.val.i60, !4007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4127)
    #dbg_value(i64 %.val1.i61, !4007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4127)
    #dbg_value(ptr %.val.i60, !4009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4128)
    #dbg_value(ptr %.val.i60, !4011, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4129)
    #dbg_value(ptr %.val.i60, !4000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4130)
    #dbg_value(ptr %.val.i60, !4014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4131)
    #dbg_value(i64 %.val1.i61, !4009, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4128)
    #dbg_value(i64 %.val1.i61, !4011, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4129)
    #dbg_value(i64 %.val1.i61, !4000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4130)
    #dbg_value(i64 %.val1.i61, !4014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4131)
    #dbg_value(i64 %.val1.i61, !4015, !DIExpression(), !4132)
    #dbg_value(i64 %.val1.i61, !4021, !DIExpression(), !4133)
    #dbg_value(i64 %.val1.i61, !4026, !DIExpression(), !4134)
    #dbg_value(i64 %.val1.i61, !4135, !DIExpression(), !4140)
    #dbg_value(i64 %.val1.i61, !4141, !DIExpression(), !4146)
    #dbg_value(i64 %.val1.i61, !4047, !DIExpression(), !4147)
    #dbg_value(i64 %.val1.i61, !4056, !DIExpression(), !4060)
    #dbg_value(i64 1, !4048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4147)
    #dbg_value(i64 1, !4057, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4060)
    #dbg_value(i64 1, !4048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4147)
    #dbg_value(i64 1, !4057, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4311
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val1.i61, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.f unwind label %.loopexit.split-lp, !dbg !4311

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.a, align 8, !dbg !4311, !range !1645, !noundef !989
  %i.t = trunc nuw i64 %i.s to i1, !dbg !4312
  %i.u = load i64, ptr %i.h, align 8, !dbg !4147, !range !1646, !noundef !989 ; 3 uses
  br i1 %i.t, label %bb.g, label %bb.h, !dbg !4312, !prof !1647

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.i, align 8, !dbg !4313
    #dbg_value(i64 %i.u, !4050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4148)
    #dbg_value(i64 %i.v, !4050, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4148)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.v) #24
          to label %bb.s unwind label %.loopexit.split-lp, !dbg !4314

bb.h:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.i, align 8, !dbg !4315, !nonnull !989, !noundef !989 ; 2 uses
    #dbg_value(i64 %i.u, !4049, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4149)
    #dbg_value(ptr %i.w, !4049, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4149)
    #dbg_value(ptr poison, !4055, !DIExpression(), !4150)
    #dbg_value(ptr poison, !3852, !DIExpression(), !4151)
    #dbg_value(i64 %i.u, !4105, !DIExpression(), !4154)
  %i.x = icmp ule i64 %.val1.i61, %i.u, !dbg !4316
    #dbg_value(i1 true, !4155, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4158)
  call void @llvm.assume(i1 %i.x), !dbg !4317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4318
    #dbg_value(i64 %i.u, !4016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4159)
    #dbg_value(ptr %i.w, !4016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4159)
    #dbg_value(i64 0, !4016, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4159)
  %.not57 = icmp eq i64 %.val1.i61, 0, !dbg !4319
  br i1 %.not57, label %bb.i, label %bb.j, !dbg !4319

bb.i:                                             ; preds = %bb.j, %bb.h
    #dbg_value(i64 %.val1.i61, !4016, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4159)
    #dbg_value(double %i.p, !3847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4160)
    #dbg_value(i64 %i.u, !3847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4160)
    #dbg_value(ptr %i.w, !3847, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4160)
    #dbg_value(i64 %.val1.i61, !3847, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4160)
    #dbg_value(ptr %i.d, !4161, !DIExpression(), !4166)
    #dbg_value(ptr %i.d, !4167, !DIExpression(), !4171)
    #dbg_value(ptr %i.d, !4172, !DIExpression(), !4178)
  %i.y = load ptr, ptr %i.e, align 8, !dbg !4320, !nonnull !989, !noundef !989 ; 3 uses
  %i.z = load i64, ptr %i.f, align 8, !dbg !4321, !noundef !989 ; 10 uses
    #dbg_value(ptr undef, !3915, !DIExpression(), !3673)
    #dbg_value(ptr %i.y, !3937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3673)
    #dbg_value(ptr %i.y, !4194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3738)
    #dbg_value(ptr %i.y, !4201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3742)
    #dbg_value(ptr %i.y, !4194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3744)
    #dbg_value(ptr %i.y, !4201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3746)
    #dbg_value(i64 %i.z, !3937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3673)
    #dbg_value(i64 %i.z, !4194, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3738)
    #dbg_value(i64 %i.z, !4201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3742)
    #dbg_value(i64 %i.z, !4194, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3744)
    #dbg_value(i64 %i.z, !4201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3746)
    #dbg_value(i64 %i.z, !3938, !DIExpression(), !3747)
  switch i64 %i.z, label %.lr.ph.i [
    i64 0, label %bb.k
    i64 1, label %._crit_edge.i
  ], !dbg !4322

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.sroa.01.029.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %i.z, %bb.i ] ; 2 uses
  %.sroa.05.028.i = phi i64 [ %i.af, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
    #dbg_value(i64 %.sroa.01.029.i, !3938, !DIExpression(), !3747)
    #dbg_value(i64 %.sroa.05.028.i, !3939, !DIExpression(), !3748)
  %i.aa = lshr i64 %.sroa.01.029.i, 1, !dbg !4323 ; 2 uses
    #dbg_value(i64 %i.aa, !3940, !DIExpression(), !3749)
  %i.ab = add nuw nsw i64 %i.aa, %.sroa.05.028.i, !dbg !4324 ; 3 uses
    #dbg_value(i64 %i.ab, !3941, !DIExpression(), !3750)
    #dbg_value(i64 %i.ab, !4198, !DIExpression(), !3738)
    #dbg_value(i64 %i.ab, !4207, !DIExpression(), !3742)
  %i.ac = icmp ult i64 %i.ab, %i.z, !dbg !4325
  call void @llvm.assume(i1 %i.ac), !dbg !4326
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.ab, !dbg !4327
  %.val24.i = load double, ptr %i.ad, align 8, !dbg !4328, !alias.scope !4210, !noundef !989
    #dbg_value(ptr poison, !4211, !DIExpression(DW_OP_deref, DW_OP_deref), !3755)
    #dbg_value(ptr poison, !4215, !DIExpression(), !3755)
  %i.ae = fcmp ogt double %.val24.i, %i.p, !dbg !4329
    #dbg_value(i8 poison, !3942, !DIExpression(), !3756)
    #dbg_value(i1 %i.ae, !4217, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3770)
    #dbg_value(i64 %.sroa.05.028.i, !4220, !DIExpression(), !3770)
    #dbg_value(i64 %i.ab, !4221, !DIExpression(), !3770)
    #dbg_value(i64 %.sroa.05.028.i, !4222, !DIExpression(), !3771)
    #dbg_value(i64 %i.ab, !4223, !DIExpression(), !3772)
    #dbg_value(ptr undef, !4225, !DIExpression(), !3773)
    #dbg_value(ptr undef, !4226, !DIExpression(), !3774)
    #dbg_value(ptr poison, !4227, !DIExpression(), !3775)
    #dbg_value(ptr poison, !4228, !DIExpression(), !3776)
    #dbg_value(ptr poison, !4229, !DIExpression(), !3777)
  %i.af = select i1 %i.ae, i64 %.sroa.05.028.i, i64 %i.ab, !dbg !4330, !unpredictable !989 ; 2 uses
    #dbg_value(i64 %i.af, !3939, !DIExpression(), !3748)
  %i.ag = sub nuw nsw i64 %.sroa.01.029.i, %i.aa, !dbg !4331 ; 2 uses
    #dbg_value(i64 %i.ag, !3938, !DIExpression(), !3747)
  %i.ah = icmp ugt i64 %i.ag, 1, !dbg !4332
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !dbg !4332

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.af, %.lr.ph.i ], !dbg !4333 ; 2 uses
    #dbg_value(i64 %.sroa.05.0.lcssa.i, !4198, !DIExpression(), !3744)
    #dbg_value(i64 %.sroa.05.0.lcssa.i, !4207, !DIExpression(), !3746)
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.05.0.lcssa.i, !dbg !4334
  %.val26.i = load double, ptr %i.ai, align 8, !dbg !4335, !alias.scope !4210, !noundef !989
    #dbg_value(ptr poison, !4211, !DIExpression(DW_OP_deref, DW_OP_deref), !3779)
    #dbg_value(ptr poison, !4215, !DIExpression(), !3779)
  %i.aj = fcmp ule double %.val26.i, %i.p, !dbg !4336
    #dbg_value(i8 poison, !3943, !DIExpression(), !3780)
  %i.ak = zext i1 %i.aj to i64, !dbg !4337
  %i.al = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.ak, !dbg !4338 ; 2 uses
    #dbg_value(i64 %i.al, !3944, !DIExpression(), !3781)
  %i.am = icmp samesign ule i64 %i.al, %i.z, !dbg !4339
    #dbg_value(i1 true, !4243, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3784)
  call void @llvm.assume(i1 %i.am), !dbg !4340
  br label %bb.k, !dbg !4341

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %.val.i60, !4136, !DIExpression(), !4140)
    #dbg_value(ptr %.val.i60, !4142, !DIExpression(), !4146)
    #dbg_value(ptr %i.w, !4137, !DIExpression(), !4140)
    #dbg_value(ptr %i.w, !4143, !DIExpression(), !4146)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %.val.i60, i64 %.val1.i61, i1 false), !dbg !4342
    #dbg_value(i64 %.val1.i61, !4016, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4159)
  br label %bb.i, !dbg !4343

bb.k:                                             ; preds = %bb.i, %._crit_edge.i
  %.sroa.4.0.i = phi i64 [ %i.z, %bb.i ], [ %i.al, %._crit_edge.i ], !dbg !4333 ; 3 uses
    #dbg_value(i64 %.sroa.4.0.i, !3970, !DIExpression(), !4245)
    #dbg_value(i64 %.sroa.4.0.i, !3848, !DIExpression(), !4246)
    #dbg_value(ptr %i.d, !3969, !DIExpression(), !4245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4344
  store double %i.p, ptr %i.c, align 8, !dbg !4344
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4344
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx72, align 8, !dbg !4344
  store i64 %.val1.i61, ptr %.sroa.6.0..sroa_idx73, align 8, !dbg !4344
    #dbg_value(ptr %i.d, !4247, !DIExpression(), !3789)
    #dbg_value(ptr %i.d, !4257, !DIExpression(), !3792)
    #dbg_value(ptr %i.d, !4259, !DIExpression(), !3795)
    #dbg_value(ptr %i.d, !4264, !DIExpression(), !3798)
    #dbg_value(i64 %.sroa.4.0.i, !4252, !DIExpression(), !3789)
    #dbg_value(i64 %.sroa.4.0.i, !4270, !DIExpression(), !3801)
    #dbg_declare(ptr %i.c, !4253, !DIExpression(), !3802)
    #dbg_value(i64 32, !4274, !DIExpression(), !3807)
    #dbg_value(i64 1, !4272, !DIExpression(), !3809)
    #dbg_value(i64 32, !4274, !DIExpression(), !3814)
    #dbg_value(i64 %i.z, !4254, !DIExpression(), !3815)
  %i.an = icmp ult i64 %i.z, 288230376151711744, !dbg !4345
  call void @llvm.assume(i1 %i.an), !dbg !4346
    #dbg_value(ptr %i.d, !4277, !DIExpression(), !3816)
  %i.ao = load i64, ptr %i.d, align 8, !dbg !4347, !range !4283, !alias.scope !4284, !noundef !989
  %i.ap = icmp eq i64 %i.z, %i.ao, !dbg !4348
  br i1 %i.ap, label %bb.l, label %bb.m, !dbg !4348

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCs172jLVBUT4Z_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %._crit_edge74 unwind label %bb.n, !dbg !4349, !noalias !4285

._crit_edge74:                                    ; preds = %bb.l
  %.pre = load ptr, ptr %i.e, align 8, !dbg !4350, !alias.scope !4284
  br label %bb.m, !dbg !4349

bb.m:                                             ; preds = %._crit_edge74, %bb.k
  %i.aq = phi ptr [ %.pre, %._crit_edge74 ], [ %i.y, %bb.k ], !dbg !4350
    #dbg_value(ptr %i.aq, !4271, !DIExpression(), !3801)
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.4.0.i, !dbg !4351 ; 3 uses
    #dbg_value(ptr %i.ar, !4255, !DIExpression(), !3826)
    #dbg_value(ptr %i.ar, !4271, !DIExpression(), !3809)
  %i.as = icmp samesign ult i64 %.sroa.4.0.i, %i.z, !dbg !4352
  br i1 %i.as, label %bb.o, label %bb.q, !dbg !4352

bb.n:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #23
          to label %.thread unwind label %bb.p, !dbg !4353

bb.o:                                             ; preds = %bb.m
    #dbg_value(ptr %i.ar, !4286, !DIExpression(), !3829)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32, !dbg !4354
    #dbg_value(ptr %i.au, !4289, !DIExpression(), !3829)
  %i.av = sub nuw nsw i64 %i.z, %.sroa.4.0.i, !dbg !4355
    #dbg_value(i64 %i.av, !4290, !DIExpression(), !3829)
  %i.aw = shl nuw nsw i64 %i.av, 5, !dbg !4356
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.ar, i64 %i.aw, i1 false), !dbg !4356, !noalias !4285
  br label %bb.q, !dbg !4357

bb.p:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !4358
  unreachable, !dbg !4358

bb.q:                                             ; preds = %bb.o, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !4359
  %i.ay = add nuw nsw i64 %i.z, 1, !dbg !4360
    #dbg_value(i64 %i.ay, !4268, !DIExpression(), !3798)
  store i64 %i.ay, ptr %i.f, align 8, !dbg !4361, !alias.scope !4284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4362
  br label %bb.d, !dbg !4363

bb.r:                                             ; preds = %.thread
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !4364
  unreachable, !dbg !4364

bb.s:                                             ; preds = %bb.g
  unreachable

bb.t:                                             ; preds = %.thread
  resume { ptr, i32 } %.pn.ph, !dbg !4364

.thread:                                          ; preds = %.loopexit.split-lp, %bb.n
  %.pn.ph = phi { ptr, i32 } [ %i.at, %bb.n ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTdNtNtBG_6string6StringEEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %bb.t unwind label %bb.r, !dbg !4304
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE14count_at_indexCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #1 !dbg !4365 {
bb.a:
    #dbg_value(ptr %0, !4391, !DIExpression(), !4394)
    #dbg_value(i64 %1, !4392, !DIExpression(), !4394)
    #dbg_value(i64 %1, !4395, !DIExpression(), !4408)
    #dbg_value(i64 %1, !4409, !DIExpression(), !4415)
    #dbg_declare(ptr poison, !4419, !DIExpression(), !4430)
    #dbg_value(ptr %0, !4436, !DIExpression(), !4441)
    #dbg_value(ptr %0, !4442, !DIExpression(), !4446)
    #dbg_value(ptr %0, !4447, !DIExpression(), !4453)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4473
  %i.b = load i64, ptr %i.a, align 8, !dbg !4473, !noundef !989
    #dbg_value(ptr poison, !4405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4408)
    #dbg_value(ptr poison, !4412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4415)
    #dbg_value(i64 %i.b, !4405, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4408)
    #dbg_value(i64 %i.b, !4412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4415)
  %i.c = icmp ult i64 %1, %i.b, !dbg !4474
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !4474

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4475
  %i.e = load ptr, ptr %i.d, align 8, !dbg !4475, !nonnull !989, !noundef !989
    #dbg_value(ptr %i.e, !4405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4408)
    #dbg_value(ptr %i.e, !4412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4415)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1, !dbg !4476
    #dbg_value(ptr %i.f, !4434, !DIExpression(), !4457)
    #dbg_value(ptr %i.f, !4425, !DIExpression(), !4458)
    #dbg_value(ptr %i.f, !4426, !DIExpression(), !4459)
    #dbg_value(ptr %i.f, !4460, !DIExpression(), !4385)
  %i.g = load i64, ptr %i.f, align 8, !dbg !4477, !alias.scope !4472, !noundef !989
  br label %bb.c, !dbg !4478

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.g, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !4458
  %i.h = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !4479
  %i.i = insertvalue { i64, i64 } %i.h, i64 %.sroa.3.0, 1, !dbg !4479
  ret { i64, i64 } %i.i, !dbg !4479
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE14record_n_innerCs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 !dbg !4494 {
bb.a:
    #dbg_value(i64 %1, !4765, !DIExpression(), !4785)
    #dbg_value(i64 %2, !4766, !DIExpression(), !4785)
    #dbg_value(ptr %0, !4764, !DIExpression(), !4785)
    #dbg_value(ptr %0, !4786, !DIExpression(), !4792)
    #dbg_value(ptr %0, !4793, !DIExpression(), !4797)
    #dbg_value(ptr %0, !4798, !DIExpression(), !4802)
    #dbg_value(i1 %3, !4767, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4785)
    #dbg_value(ptr @4, !4803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4821)
    #dbg_value(i64 63, !4803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4821)
    #dbg_value(i64 1, !4822, !DIExpression(), !4828)
    #dbg_value(ptr @5, !4829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4837)
    #dbg_value(i64 19, !4829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4837)
    #dbg_value(ptr @6, !4803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4839)
    #dbg_value(i64 29, !4803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4839)
    #dbg_value(ptr @7, !4840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4845)
    #dbg_value(i64 27, !4840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4845)
    #dbg_value(ptr %0, !4846, !DIExpression(), !4512)
    #dbg_value(ptr %0, !4852, !DIExpression(), !4520)
    #dbg_value(ptr %0, !4863, !DIExpression(), !4523)
    #dbg_value(ptr %0, !4866, !DIExpression(), !4526)
    #dbg_value(ptr %0, !4870, !DIExpression(), !4533)
    #dbg_value(i64 %1, !4850, !DIExpression(), !4512)
    #dbg_value(i64 %1, !4856, !DIExpression(), !4520)
    #dbg_value(i64 %1, !4864, !DIExpression(), !4523)
    #dbg_value(i64 %1, !4867, !DIExpression(), !4526)
    #dbg_value(i32 -1, !4888, !DIExpression(), !4537)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92, !dbg !4993 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !dbg !4993, !alias.scope !4895, !noundef !989 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !4994 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !4994, !alias.scope !4895, !noundef !989 ; 2 uses
  %i.e = or i64 %i.d, %1, !dbg !4995
    #dbg_value(i64 %i.e, !4896, !DIExpression(), !4542)
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 false), !dbg !4996
  %i.g = trunc nuw nsw i64 %i.f to i8, !dbg !4995
  %i.h = sub i8 %i.b, %i.g, !dbg !4993            ; 2 uses
    #dbg_value(i8 %i.h, !4857, !DIExpression(), !4543)
    #dbg_value(i8 %i.h, !4868, !DIExpression(), !4526)
    #dbg_value(i8 %i.h, !4898, !DIExpression(), !4546)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 93, !dbg !4997 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !dbg !4997, !alias.scope !4895, !noundef !989 ; 3 uses
  %i.k = add i8 %i.h, %i.j, !dbg !4998
  %i.l = and i8 %i.k, 63, !dbg !4999
  %i.m = zext nneg i8 %i.l to i64, !dbg !4999
  %i.n = lshr i64 %1, %i.m, !dbg !4999
  %i.o = trunc i64 %i.n to i32, !dbg !4999
    #dbg_value(i32 %i.o, !4858, !DIExpression(), !4547)
  %i.p = zext i8 %i.h to i32, !dbg !5000
  %i.q = add nuw nsw i32 %i.p, 1, !dbg !5001
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 91, !dbg !5002 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !dbg !5002, !alias.scope !4895, !noundef !989
  %i.t = and i8 %i.s, 31, !dbg !5001
  %i.u = zext nneg i8 %i.t to i32, !dbg !5001     ; 2 uses
  %i.v = shl i32 %i.q, %i.u, !dbg !5001
    #dbg_value(i32 %i.v, !4859, !DIExpression(), !4548)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !5003 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !dbg !5003, !alias.scope !4895, !noundef !989 ; 3 uses
  %i.y = sub i32 %i.o, %i.x, !dbg !5004
    #dbg_value(i32 %i.y, !4860, !DIExpression(), !4549)
  %i.z = add i32 %i.y, %i.v, !dbg !5005           ; 2 uses
    #dbg_value(i32 %i.z, !4861, !DIExpression(), !4550)
    #dbg_value(ptr poison, !4893, !DIExpression(), !4551)
  %i.aa = icmp sgt i32 %i.z, -1, !dbg !5006
  br i1 %i.aa, label %bb.b, label %bb.d, !dbg !5006

bb.b:                                             ; preds = %bb.a
  %i.ab = zext nneg i32 %i.z to i64, !dbg !5007   ; 2 uses
    #dbg_value(i64 %i.ab, !4884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4552)
    #dbg_value(i64 1, !4884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4552)
    #dbg_value(ptr %0, !4885, !DIExpression(), !4552)
    #dbg_value(i64 %i.ab, !4886, !DIExpression(), !4553)
    #dbg_value(i64 %i.ab, !4876, !DIExpression(), !4533)
    #dbg_value(i64 %i.ab, !4903, !DIExpression(), !4558)
    #dbg_value(i64 %i.ab, !4914, !DIExpression(), !4561)
    #dbg_value(ptr %0, !4919, !DIExpression(), !4564)
    #dbg_value(ptr %0, !4924, !DIExpression(), !4567)
    #dbg_value(ptr %0, !4927, !DIExpression(), !4570)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5008
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !5008, !alias.scope !4895, !noundef !989
    #dbg_value(ptr poison, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4558)
    #dbg_value(ptr poison, !4917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4561)
    #dbg_value(i64 %i.ad, !4909, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4558)
    #dbg_value(i64 %i.ad, !4917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4561)
  %i.ae = icmp ugt i64 %i.ad, %i.ab, !dbg !5009
  br i1 %i.ae, label %bb.c, label %bb.d, !dbg !5009

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5010
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !5010, !alias.scope !4895, !nonnull !989, !noundef !989
    #dbg_value(ptr %i.ag, !4909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4558)
    #dbg_value(ptr %i.ag, !4917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4561)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ab, !dbg !5011 ; 2 uses
    #dbg_value(ptr %i.ah, !4770, !DIExpression(), !4932)
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !5012, !noundef !989
    #dbg_value(i64 %i.ai, !4934, !DIExpression(), !4579)
    #dbg_value(i64 %i.ai, !4940, !DIExpression(), !4582)
    #dbg_value(i64 %2, !4938, !DIExpression(), !4579)
    #dbg_value(i64 %2, !4941, !DIExpression(), !4582)
  %i.aj = tail call noundef i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 %2), !dbg !5013
  store i64 %i.aj, ptr %i.ah, align 8, !dbg !5014
    #dbg_value(i8 1, !4768, !DIExpression(), !4943)
  br label %bb.e, !dbg !5015

bb.d:                                             ; preds = %bb.a, %bb.b
    #dbg_value(i8 0, !4768, !DIExpression(), !4943)
  br i1 %3, label %bb.i, label %bb.h, !dbg !5016

bb.e:                                             ; preds = %bb.aa, %bb.x, %bb.c
  %.sroa.0.0 = phi i64 [ %1, %bb.c ], [ %.sroa.0.1, %bb.aa ], [ %1, %bb.x ] ; 6 uses
    #dbg_value(i64 %.sroa.0.0, !4765, !DIExpression(), !4785)
    #dbg_value(ptr %0, !4944, !DIExpression(), !4585)
    #dbg_value(ptr %0, !4950, !DIExpression(), !4589)
    #dbg_value(ptr %0, !4955, !DIExpression(), !4593)
    #dbg_value(i64 %.sroa.0.0, !4948, !DIExpression(), !4585)
    #dbg_value(i64 %.sroa.0.0, !4952, !DIExpression(), !4589)
    #dbg_value(i64 %.sroa.0.0, !4957, !DIExpression(), !4593)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !5017 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !dbg !5017, !alias.scope !4960, !noundef !989
  %i.am = icmp ugt i64 %.sroa.0.0, %i.al, !dbg !5018
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !4960 ; 3 uses
  br i1 %i.am, label %bb.f, label %._crit_edge.i, !dbg !5018

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !5019 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !5019, !alias.scope !4960, !noundef !989
  %i.ar = icmp uge i64 %.sroa.0.0, %i.aq, !dbg !5020
  %i.as = icmp eq i64 %.sroa.0.0, 0
  %or.cond.i = or i1 %i.as, %i.ar, !dbg !5020
  %i.at = icmp ule i64 %.sroa.0.0, %i.ao
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.at, !dbg !5020
  br i1 %or.cond3.i, label %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE14update_min_maxCs7OITKvp9Irj_4perf.exit, label %bb.g, !dbg !5020

bb.f:                                             ; preds = %bb.e
    #dbg_value(!DIArgList(i64 %.sroa.0.0, i64 %i.ao), !4953, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !4596)
  %i.au = or i64 %i.ao, %.sroa.0.0, !dbg !5021
    #dbg_value(i64 %i.au, !4953, !DIExpression(), !4596)
  store i64 %i.au, ptr %i.ak, align 8, !dbg !5022, !alias.scope !4960
  br label %._crit_edge.i, !dbg !5023

bb.g:                                             ; preds = %._crit_edge.i
    #dbg_value(!DIArgList(i64 %.sroa.0.0, i64 %i.ao), !4958, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_stack_value), !4597)
  %i.av = xor i64 %i.ao, -1, !dbg !5024
    #dbg_value(!DIArgList(i64 %.sroa.0.0, i64 %i.av), !4958, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !4597)
  %i.aw = and i64 %.sroa.0.0, %i.av, !dbg !5025
    #dbg_value(i64 %i.aw, !4958, !DIExpression(), !4597)
  store i64 %i.aw, ptr %i.ap, align 8, !dbg !5026, !alias.scope !4960
  br label %_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE14update_min_maxCs7OITKvp9Irj_4perf.exit, !dbg !5027

_RNvMCsgR93kpVnVos_12hdrhistogramINtB2_9HistogramyE14update_min_maxCs7OITKvp9Irj_4perf.exit: ; preds = %._crit_edge.i, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !5028 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !5028, !noundef !989
    #dbg_value(i64 %i.ay, !4964, !DIExpression(), !4968)
end_hunk_0
begin_hunk_1_@_RNvXsc_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1b_3net7ip_addr6IpAddrNtNtB1M_6parser14AddrParseErrorENtB5_14AnyValueParser9parse_refCs7OITKvp9Irj_4perf:bb.a
  call fastcc void @_RNvXsd_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1b_3net7ip_addr6IpAddrNtNtB1M_6parser14AddrParseErrorENtB5_16TypedValueParser9parse_refCs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !dbg !7053
  %i.b = load i8, ptr %i.a, align 8, !dbg !7053, !range !1732, !noundef !989
  %i.c = trunc nuw i8 %i.b to i1, !dbg !7053
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !7054

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7055
  %i.e = load ptr, ptr %i.d, align 8, !dbg !7055, !nonnull !989, !align !2805, !noundef !989
    #dbg_value(ptr %i.e, !7033, !DIExpression(), !7050)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7056
  store ptr %i.e, ptr %i.f, align 8, !dbg !7056
  store ptr null, ptr %0, align 8, !dbg !7056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7057
  br label %bb.e, !dbg !7058

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !7059
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !7060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(17) %i.g, i64 17, i1 false), !dbg !7059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7057
    #dbg_value(i64 1, !2886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7051)
    #dbg_value(i64 1, !2886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7051)
    #dbg_value(i64 8, !2806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7012)
    #dbg_value(i64 8, !2814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7014)
    #dbg_value(i64 8, !2833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7016)
    #dbg_value(i64 40, !2806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7012)
    #dbg_value(i64 40, !2814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7014)
    #dbg_value(i64 40, !2833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7016)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2831, !DIExpression(), !7014)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2837, !DIExpression(), !7016)
    #dbg_value(i8 0, !2838, !DIExpression(), !7016)
    #dbg_value(i64 8, !2840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7018)
    #dbg_value(i64 8, !2860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7020)
    #dbg_value(i64 40, !2840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7018)
    #dbg_value(i64 40, !2860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7020)
    #dbg_value(i1 false, !2844, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7018)
    #dbg_value(i64 40, !2845, !DIExpression(), !7021)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !7061, !noalias !7052
  %i.h = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 49) 40, i64 noundef range(i64 1, 9) 8) #26, !dbg !7062, !noalias !7052 ; 5 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !7063
  br i1 %i.i, label %bb.d, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !7064, !prof !2862

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #24, !dbg !7065, !noalias !7052
  unreachable, !dbg !7065

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
    #dbg_value(ptr %i.h, !2895, !DIExpression(), !7024)
  store i64 1, ptr %i.h, align 8, !dbg !7066
  %.sroa.4.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !7066
  store i64 1, ptr %.sroa.4.0..sroa_idx15, align 8, !dbg !7066
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !7066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5, i64 17, i1 false), !dbg !7066
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !7067
  store ptr %i.h, ptr %0, align 8, !dbg !7068
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7068
  store ptr @45, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7068
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7068
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @22, i64 16, i1 false), !dbg !7068
  br label %bb.e, !dbg !7058

bb.e:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void, !dbg !7058
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsc_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB5_14AnyValueParser10parse_ref_B1m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7072 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !7098, !DIExpression(), !7107)
    #dbg_value(ptr %2, !7099, !DIExpression(), !7107)
    #dbg_value(ptr %3, !7100, !DIExpression(), !7107)
    #dbg_value(ptr %4, !7101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7107)
    #dbg_value(i64 %5, !7101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7107)
    #dbg_value(i8 poison, !7102, !DIExpression(), !7107)
    #dbg_declare(ptr @20, !7108, !DIExpression(), !7113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7135
    #dbg_value(ptr poison, !7114, !DIExpression(), !7078)
    #dbg_value(ptr %2, !7117, !DIExpression(), !7078)
    #dbg_value(ptr %3, !7118, !DIExpression(), !7078)
    #dbg_value(ptr %4, !7119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7078)
    #dbg_value(i64 %5, !7119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7078)
    #dbg_value(i8 poison, !7120, !DIExpression(), !7078)
  call fastcc void @_RNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB5_16TypedValueParser9parse_refB1m_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !dbg !7136
  %i.b = load i8, ptr %i.a, align 8, !dbg !7135, !range !1732, !noundef !989
  %i.c = trunc nuw i8 %i.b to i1, !dbg !7135
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !7137

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7138
  %i.e = load ptr, ptr %i.d, align 8, !dbg !7138, !nonnull !989, !align !2805, !noundef !989
    #dbg_value(ptr %i.e, !7105, !DIExpression(), !7125)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7139
  store ptr %i.e, ptr %i.f, align 8, !dbg !7139
  store ptr null, ptr %0, align 8, !dbg !7139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7140
  br label %bb.e, !dbg !7141

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !7142
  %i.h = load i8, ptr %i.g, align 1, !dbg !7142, !range !1993, !noundef !989
    #dbg_value(i8 %i.h, !7103, !DIExpression(), !7126)
    #dbg_value(i8 %i.h, !7109, !DIExpression(), !7127)
    #dbg_value(i8 %i.h, !7128, !DIExpression(), !7132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7140
    #dbg_value(i64 1, !2962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7133)
    #dbg_value(i64 1, !2962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7133)
    #dbg_value(i8 %i.h, !2962, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7133)
    #dbg_value(i64 8, !2806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7083)
    #dbg_value(i64 8, !2814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7085)
    #dbg_value(i64 8, !2833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7087)
    #dbg_value(i64 24, !2806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7083)
    #dbg_value(i64 24, !2814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7085)
    #dbg_value(i64 24, !2833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7087)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2831, !DIExpression(), !7085)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2837, !DIExpression(), !7087)
    #dbg_value(i8 0, !2838, !DIExpression(), !7087)
    #dbg_value(i64 8, !2840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7089)
    #dbg_value(i64 8, !2860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7091)
    #dbg_value(i64 24, !2840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7089)
    #dbg_value(i64 24, !2860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7091)
    #dbg_value(i1 false, !2844, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7089)
    #dbg_value(i64 24, !2845, !DIExpression(), !7092)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !7143, !noalias !7134
  %i.i = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 49) 24, i64 noundef range(i64 1, 9) 8) #26, !dbg !7144, !noalias !7134 ; 5 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !7145
  br i1 %i.j, label %bb.d, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !7146, !prof !2862

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24, !dbg !7147, !noalias !7134
  unreachable, !dbg !7147

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
    #dbg_value(ptr %i.i, !2966, !DIExpression(), !7095)
  store i64 1, ptr %i.i, align 8, !dbg !7148
  %.sroa.4.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !7148
  store i64 1, ptr %.sroa.4.0..sroa_idx17, align 8, !dbg !7148
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !7148
  store i8 %i.h, ptr %.sroa.5.0..sroa_idx18, align 8, !dbg !7148
  store ptr %i.i, ptr %0, align 8, !dbg !7149
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7149
  store ptr @47, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7149
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7149
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @20, i64 16, i1 false), !dbg !7149
  br label %bb.e, !dbg !7141

bb.e:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void, !dbg !7141
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB5_14AnyValueParser15possible_valuesB1m_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7150 {
bb.a:
    #dbg_value(ptr poison, !7172, !DIExpression(), !7174)
    #dbg_value(ptr poison, !7175, !DIExpression(), !7153)
    #dbg_value(ptr @31, !7178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7157)
    #dbg_value(ptr getelementptr inbounds nuw (i8, ptr @31, i64 3), !7178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7157)
    #dbg_value(i64 8, !2806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7159)
    #dbg_value(i64 8, !2814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7161)
    #dbg_value(i64 8, !2833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7163)
    #dbg_value(i64 16, !2806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7159)
    #dbg_value(i64 16, !2814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7161)
    #dbg_value(i64 16, !2833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7163)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2831, !DIExpression(), !7161)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2837, !DIExpression(), !7163)
    #dbg_value(i8 0, !2838, !DIExpression(), !7163)
    #dbg_value(i64 8, !2840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7165)
    #dbg_value(i64 8, !2860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7167)
    #dbg_value(i64 16, !2840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7165)
    #dbg_value(i64 16, !2860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7167)
    #dbg_value(i1 false, !2844, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7165)
    #dbg_value(i64 16, !2845, !DIExpression(), !7168)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !7187
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 49) 16, i64 noundef range(i64 1, 9) 8) #26, !dbg !7188 ; 4 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !7189
  br i1 %i.b, label %bb.b, label %_RNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB5_16TypedValueParser15possible_valuesB1m_.exit, !dbg !7190, !prof !2862

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #24, !dbg !7191
  unreachable, !dbg !7191

_RNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB5_16TypedValueParser15possible_valuesB1m_.exit: ; preds = %bb.a
    #dbg_value(ptr %i.a, !7183, !DIExpression(), !7169)
  store ptr @31, ptr %i.a, align 8, !dbg !7192
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7192
  store ptr getelementptr inbounds nuw (i8, ptr @31, i64 3), ptr %i.c, align 8, !dbg !7192
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0, !dbg !7193
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @52, 1, !dbg !7193
  ret { ptr, ptr } %i.e, !dbg !7194
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB5_14AnyValueParser7type_idB1m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #2 !dbg !7195 {
bb.a:
    #dbg_value(ptr poison, !7199, !DIExpression(), !7201)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @20, i64 16, i1 false), !dbg !7206
  ret void, !dbg !7207
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, ptr } @_RNvXsc_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB5_14AnyValueParser9clone_anyB1m_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !7208 {
bb.a:
    #dbg_value(ptr poison, !7211, !DIExpression(), !7213)
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @25 }, !dbg !7214
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsc_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB5_14AnyValueParser9parse_refB1m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7218 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !7241, !DIExpression(), !7249)
    #dbg_value(ptr %2, !7242, !DIExpression(), !7249)
    #dbg_value(ptr %3, !7243, !DIExpression(), !7249)
    #dbg_value(ptr %4, !7244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7249)
    #dbg_value(i64 %5, !7244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7249)
    #dbg_declare(ptr @20, !7250, !DIExpression(), !7255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7267
  call fastcc void @_RNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENtB5_16TypedValueParser9parse_refB1m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !dbg !7267
  %i.b = load i8, ptr %i.a, align 8, !dbg !7267, !range !1732, !noundef !989
  %i.c = trunc nuw i8 %i.b to i1, !dbg !7267
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !7268

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7269
  %i.e = load ptr, ptr %i.d, align 8, !dbg !7269, !nonnull !989, !align !2805, !noundef !989
    #dbg_value(ptr %i.e, !7247, !DIExpression(), !7257)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7270
  store ptr %i.e, ptr %i.f, align 8, !dbg !7270
  store ptr null, ptr %0, align 8, !dbg !7270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7271
  br label %bb.e, !dbg !7272

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !7273
  %i.h = load i8, ptr %i.g, align 1, !dbg !7273, !range !1993, !noundef !989
    #dbg_value(i8 %i.h, !7245, !DIExpression(), !7258)
    #dbg_value(i8 %i.h, !7251, !DIExpression(), !7259)
    #dbg_value(i8 %i.h, !7260, !DIExpression(), !7264)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7271
    #dbg_value(i64 1, !2962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7265)
    #dbg_value(i64 1, !2962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7265)
    #dbg_value(i8 %i.h, !2962, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7265)
    #dbg_value(i64 8, !2806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7226)
    #dbg_value(i64 8, !2814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7228)
    #dbg_value(i64 8, !2833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7230)
    #dbg_value(i64 24, !2806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7226)
    #dbg_value(i64 24, !2814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7228)
    #dbg_value(i64 24, !2833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7230)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2831, !DIExpression(), !7228)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2837, !DIExpression(), !7230)
    #dbg_value(i8 0, !2838, !DIExpression(), !7230)
    #dbg_value(i64 8, !2840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7232)
    #dbg_value(i64 8, !2860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7234)
    #dbg_value(i64 24, !2840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7232)
    #dbg_value(i64 24, !2860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7234)
    #dbg_value(i1 false, !2844, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7232)
    #dbg_value(i64 24, !2845, !DIExpression(), !7235)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !7274, !noalias !7266
  %i.i = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 49) 24, i64 noundef range(i64 1, 9) 8) #26, !dbg !7275, !noalias !7266 ; 5 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !7276
  br i1 %i.j, label %bb.d, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !7277, !prof !2862

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24, !dbg !7278, !noalias !7266
  unreachable, !dbg !7278

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
    #dbg_value(ptr %i.i, !2966, !DIExpression(), !7238)
  store i64 1, ptr %i.i, align 8, !dbg !7279
  %.sroa.4.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !7279
  store i64 1, ptr %.sroa.4.0..sroa_idx16, align 8, !dbg !7279
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !7279
  store i8 %i.h, ptr %.sroa.5.0..sroa_idx17, align 8, !dbg !7279
  store ptr %i.i, ptr %0, align 8, !dbg !7280
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7280
  store ptr @47, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7280
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @20, i64 16, i1 false), !dbg !7280
  br label %bb.e, !dbg !7272

bb.e:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void, !dbg !7272
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXsc_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsertENtB5_14AnyValueParser10parse_ref_Cs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7284 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !7310, !DIExpression(), !7319)
    #dbg_value(ptr %2, !7311, !DIExpression(), !7319)
    #dbg_value(ptr %3, !7312, !DIExpression(), !7319)
    #dbg_value(ptr %4, !7313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7319)
    #dbg_value(i64 %5, !7313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7319)
    #dbg_value(i8 poison, !7314, !DIExpression(), !7319)
    #dbg_declare(ptr @23, !7320, !DIExpression(), !7325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7347
    #dbg_value(ptr %1, !7326, !DIExpression(), !7290)
    #dbg_value(ptr %2, !7329, !DIExpression(), !7290)
    #dbg_value(ptr %3, !7330, !DIExpression(), !7290)
    #dbg_value(ptr %4, !7331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7290)
    #dbg_value(i64 %5, !7331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7290)
    #dbg_value(i8 poison, !7332, !DIExpression(), !7290)
  call fastcc void @_RNvXsu_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsertENtB5_16TypedValueParser9parse_refCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !dbg !7348
  %i.b = load i16, ptr %i.a, align 8, !dbg !7347, !range !3001, !noundef !989
  %i.c = trunc nuw i16 %i.b to i1, !dbg !7349
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !7349

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7350
  %i.e = load ptr, ptr %i.d, align 8, !dbg !7350, !nonnull !989, !align !2805, !noundef !989
    #dbg_value(ptr %i.e, !7317, !DIExpression(), !7337)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7351
  store ptr %i.e, ptr %i.f, align 8, !dbg !7351
  store ptr null, ptr %0, align 8, !dbg !7351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7352
  br label %bb.e, !dbg !7353

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !7354
  %i.h = load i16, ptr %i.g, align 2, !dbg !7354, !noundef !989
    #dbg_value(i16 %i.h, !7315, !DIExpression(), !7338)
    #dbg_value(i16 %i.h, !7321, !DIExpression(), !7339)
    #dbg_value(i16 %i.h, !7340, !DIExpression(), !7344)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7352
    #dbg_value(i64 1, !3006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7345)
    #dbg_value(i64 1, !3006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7345)
    #dbg_value(i16 %i.h, !3006, !DIExpression(DW_OP_LLVM_fragment, 128, 16), !7345)
    #dbg_value(i64 8, !2806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7295)
    #dbg_value(i64 8, !2814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7297)
    #dbg_value(i64 8, !2833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7299)
    #dbg_value(i64 24, !2806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7295)
    #dbg_value(i64 24, !2814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7297)
    #dbg_value(i64 24, !2833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7299)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2831, !DIExpression(), !7297)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2837, !DIExpression(), !7299)
    #dbg_value(i8 0, !2838, !DIExpression(), !7299)
    #dbg_value(i64 8, !2840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7301)
    #dbg_value(i64 8, !2860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7303)
    #dbg_value(i64 24, !2840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7301)
    #dbg_value(i64 24, !2860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7303)
    #dbg_value(i1 false, !2844, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7301)
    #dbg_value(i64 24, !2845, !DIExpression(), !7304)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !7355, !noalias !7346
  %i.i = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 49) 24, i64 noundef range(i64 1, 9) 8) #26, !dbg !7356, !noalias !7346 ; 5 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !7357
  br i1 %i.j, label %bb.d, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !7358, !prof !2862

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24, !dbg !7359, !noalias !7346
  unreachable, !dbg !7359

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
    #dbg_value(ptr %i.i, !3010, !DIExpression(), !7307)
  store i64 1, ptr %i.i, align 8, !dbg !7360
  %.sroa.4.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !7360
  store i64 1, ptr %.sroa.4.0..sroa_idx17, align 8, !dbg !7360
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !7360
  store i16 %i.h, ptr %.sroa.5.0..sroa_idx18, align 8, !dbg !7360
  store ptr %i.i, ptr %0, align 8, !dbg !7361
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7361
  store ptr @48, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !7361
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7361
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @23, i64 16, i1 false), !dbg !7361
  br label %bb.e, !dbg !7353

bb.e:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void, !dbg !7353
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsertENtB5_14AnyValueParser15possible_valuesCs7OITKvp9Irj_4perf(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 !dbg !7362 {
bb.a:
    #dbg_value(ptr poison, !7365, !DIExpression(), !7367)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !7368
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsertENtB5_14AnyValueParser7type_idCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #2 !dbg !7369 {
bb.a:
    #dbg_value(ptr poison, !7373, !DIExpression(), !7375)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @23, i64 16, i1 false), !dbg !7380
  ret void, !dbg !7381
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB5_20RangedI64ValueParsertENtB5_14AnyValueParser9clone_anyCs7OITKvp9Irj_4perf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7382 {
bb.a:
    #dbg_value(ptr %0, !7417, !DIExpression(), !7419)
    #dbg_value(ptr %0, !7420, !DIExpression(), !7385)
    #dbg_value(ptr %0, !7425, !DIExpression(), !7388)
  %.val2.i.i = load i64, ptr %0, align 8, !dbg !7440, !range !3016, !alias.scope !7430, !noundef !989 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7440
  %.val3.i.i = load i64, ptr %i.a, align 8, !dbg !7440, !alias.scope !7430
    #dbg_value(ptr poison, !7432, !DIExpression(), !7397)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7440
  %.val.i.i = load i64, ptr %i.b, align 8, !dbg !7440, !range !3016, !alias.scope !7430, !noundef !989 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7440
  %.val1.i.i = load i64, ptr %i.c, align 8, !dbg !7440, !alias.scope !7430
    #dbg_value(ptr poison, !7432, !DIExpression(), !7399)
    #dbg_value(i64 %.val2.i.i, !3019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7438)
    #dbg_value(i64 poison, !3019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7438)
end_hunk_1
