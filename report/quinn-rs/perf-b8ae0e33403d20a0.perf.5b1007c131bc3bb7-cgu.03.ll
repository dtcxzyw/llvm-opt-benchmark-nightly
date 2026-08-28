Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/perf-b8ae0e33403d20a0.perf.5b1007c131bc3bb7-cgu.03?download=true
inline.NumInlined: 368
inline.NumDeleted: 248
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs_NtNtCs7OITKvp9Irj_4perf5stats4jsonNtB5_8IntervalNtNtCsbwMSWOJol8F_10serde_core3ser9Serialize9serializeQINtNtCscFTfv2TGtgR_10serde_json3ser10SerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEEB9_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.a, align 8, !dbg !10785, !nonnull !39, !align !2280, !noundef !39
    #dbg_value(ptr %i.n, !5345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10786)
    #dbg_value(ptr %i.n, !5352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10788)
    #dbg_value(ptr %i.n, !5355, !DIExpression(), !10792)
    #dbg_value(ptr poison, !5372, !DIExpression(), !10794)
    #dbg_value(ptr %i.n, !5375, !DIExpression(), !10794)
  %i.o = call noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 1), !dbg !10796 ; 2 uses
    #dbg_value(ptr %i.o, !5363, !DIExpression(), !10797)
  %.not.i.i33 = icmp eq ptr %i.o, null, !dbg !10798
  br i1 %.not.i.i33, label %_RNvXs7_NtCscFTfv2TGtgR_10serde_json3serINtB5_8CompoundNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB5_16CompactFormatterENtNtCsbwMSWOJol8F_10serde_core3ser15SerializeStruct3endCs7OITKvp9Irj_4perf.exit, label %bb.h, !dbg !10799, !prof !4748

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.o, !5366, !DIExpression(), !10800)
  %i.p = call noundef nonnull align 8 ptr @_RNvMs0_NtCscFTfv2TGtgR_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.o), !dbg !10801
  br label %_RNvXs7_NtCscFTfv2TGtgR_10serde_json3serINtB5_8CompoundNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB5_16CompactFormatterENtNtCsbwMSWOJol8F_10serde_core3ser15SerializeStruct3endCs7OITKvp9Irj_4perf.exit, !dbg !10803

_RNvXs7_NtCscFTfv2TGtgR_10serde_json3serINtB5_8CompoundNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB5_16CompactFormatterENtNtCsbwMSWOJol8F_10serde_core3ser15SerializeStruct3endCs7OITKvp9Irj_4perf.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.b, %_RNvXs1_NtCscFTfv2TGtgR_10serde_json3serQINtB5_10SerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtCsbwMSWOJol8F_10serde_core3ser10Serializer16serialize_structCs7OITKvp9Irj_4perf.exit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.k, %bb.e ], [ %i.c, %bb.b ], [ %i.e, %_RNvXs1_NtCscFTfv2TGtgR_10serde_json3serQINtB5_10SerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutENtNtCsbwMSWOJol8F_10serde_core3ser10Serializer16serialize_structCs7OITKvp9Irj_4perf.exit ], [ %i.i, %bb.d ], [ null, %bb.f ], [ %i.p, %bb.h ], [ null, %bb.g ], !dbg !10688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10804
  ret ptr %.sroa.0.0, !dbg !10805
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsdIYt8sV98we_5bytes5bytes5BytesENCNCNvNtCs7OITKvp9Irj_4perf6client12drain_stream00ENtNtNtBa_6traits8iterator8Iterator3sumjEB20_(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 !dbg !10806 {
bb.a:
    #dbg_value(ptr %0, !10810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10813)
    #dbg_value(ptr %1, !10810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10813)
  %i.a = tail call noundef i64 @_RINvXsK_NtNtNtCskKLDkoKarTP_4core4iter6traits5accumjNtB6_3Sum3sumINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCsdIYt8sV98we_5bytes5bytes5BytesENCNCNvNtCs7OITKvp9Irj_4perf6client12drain_stream00EEB2B_(ptr noundef nonnull %0, ptr noundef %1), !dbg !10814
  ret i64 %i.a, !dbg !10815
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10816 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !10821, !DIExpression(), !10829)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10830 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !dbg !10830, !nonnull !39, !noundef !39 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10830 ; 2 uses
  %.val3 = load ptr, ptr %i.c, align 8, !dbg !10830, !nonnull !39, !noundef !39 ; 2 uses
    #dbg_value(ptr poison, !10831, !DIExpression(), !10838)
    #dbg_value(ptr poison, !10840, !DIExpression(), !10861)
    #dbg_value(ptr poison, !10869, !DIExpression(), !10872)
    #dbg_value(ptr poison, !10873, !DIExpression(), !10880)
    #dbg_value(i64 32, !10882, !DIExpression(), !10890)
    #dbg_value(ptr %.val3, !10905, !DIExpression(), !10908)
    #dbg_value(ptr %.val, !10906, !DIExpression(), !10908)
    #dbg_value(ptr %.val3, !10897, !DIExpression(), !10909)
    #dbg_value(ptr %.val, !10898, !DIExpression(), !10909)
    #dbg_value(ptr %.val, !10889, !DIExpression(), !10910)
    #dbg_value(ptr %.val3, !10888, !DIExpression(), !10910)
  %i.d = ptrtoint ptr %.val3 to i64, !dbg !10911
  %i.e = ptrtoint ptr %.val to i64, !dbg !10911
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !10911
  %i.g = lshr exact i64 %i.f, 5, !dbg !10911      ; 3 uses
    #dbg_value(ptr %.val, !10822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10912)
    #dbg_value(ptr %.val, !10913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10921)
    #dbg_value(i64 %i.g, !10822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10912)
    #dbg_value(i64 %i.g, !10913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10921)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10923
  store i64 0, ptr %i.h, align 8, !dbg !10923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10924
  store i64 0, ptr %i.a, align 8, !dbg !10925
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10925
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !dbg !10925
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !dbg !10939
    #dbg_value(ptr %i.a, !10940, !DIExpression(), !10948)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !10950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10951
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !dbg !10952
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !dbg !10953
    #dbg_value(ptr %.val, !10954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10963)
    #dbg_value(i64 %i.g, !10954, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10963)
  %i.j = icmp eq ptr %.val3, %.val, !dbg !10965
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf.exit, label %.lr.ph, !dbg !10965

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i
  %i.k = icmp eq i64 %i.m, %i.g, !dbg !10965
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf.exit, label %.lr.ph, !dbg !10965

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.0.i16, !dbg !10965
  %i.m = add nuw nsw i64 %.sroa.0.0.i16, 1, !dbg !10965 ; 4 uses
    #dbg_value(ptr %i.l, !4241, !DIExpression(), !10966)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !10968 ; 3 uses
    #dbg_value(ptr %i.n, !3669, !DIExpression(), !10969)
    #dbg_value(ptr %i.n, !3230, !DIExpression(), !10971)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i unwind label %bb.b, !dbg !10973

bb.b:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.n, !3239, !DIExpression(), !10974)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.c, !dbg !10976

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !10973
  unreachable, !dbg !10973

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i: ; preds = %.lr.ph
    #dbg_value(ptr %i.n, !3239, !DIExpression(), !10977)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf.exit.i unwind label %bb.e, !dbg !10979

bb.d:                                             ; preds = %.lr.ph18
  %i.q = add i64 %.sroa.0.1.i17, 1, !dbg !10965   ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.g, !dbg !10965
  br i1 %i.r, label %._crit_edge, label %.lr.ph18, !dbg !10965

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.o, %bb.b ]
  %i.t = icmp eq i64 %i.m, %i.g, !dbg !10965
  br i1 %i.t, label %._crit_edge, label %.lr.ph18, !dbg !10965

.lr.ph18:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i17 = phi i64 [ %i.q, %bb.d ], [ %i.m, %.body.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.1.i17, !dbg !10965
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #17
          to label %bb.d unwind label %bb.f, !dbg !10965

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !10965

bb.f:                                             ; preds = %.lr.ph18
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !10965
  unreachable, !dbg !10965

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTdNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7OITKvp9Irj_4perf.exit.i, %bb.a
  ret void, !dbg !10980
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCseEeXhZwqjpo_16rustls_pki_types3pemNtB4_14CertificateDerNtB2_9PemObject8from_pemCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i8 noundef range(i8 0, 8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10981 {
bb.a:
    #dbg_value(i8 %1, !10999, !DIExpression(), !11001)
    #dbg_declare(ptr %2, !11000, !DIExpression(), !11002)
    #dbg_value(ptr poison, !11003, !DIExpression(), !11015)
    #dbg_value(ptr poison, !11010, !DIExpression(), !11017)
    #dbg_value(i64 0, !11011, !DIExpression(), !11018)
    #dbg_value(i8 %1, !11013, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !11019)
  %i.a = icmp eq i8 %1, 0, !dbg !11020
  br i1 %i.a, label %bb.e, label %bb.b, !dbg !11021

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !dbg !11022
    #dbg_value(ptr %2, !3230, !DIExpression(), !11023)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7OITKvp9Irj_4perf.exit unwind label %bb.c, !dbg !11025

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %2, !3239, !DIExpression(), !11026)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7OITKvp9Irj_4perf.exit.i unwind label %bb.d, !dbg !11028

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !11025
  unreachable, !dbg !11025

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7OITKvp9Irj_4perf.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b, !dbg !11025

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7OITKvp9Irj_4perf.exit: ; preds = %bb.b
    #dbg_value(ptr %2, !3239, !DIExpression(), !11029)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !11031
  br label %bb.f, !dbg !11032

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !11033
    #dbg_declare(ptr poison, !11034, !DIExpression(), !11041)
  br label %bb.f, !dbg !11032

bb.f:                                             ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7OITKvp9Irj_4perf.exit
  ret void, !dbg !11043
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1k_6string6StringENCINvMs1_NtCscbFFjjIlwRm_5rcgen11certificateNtB2x_17CertificateParams3newINtB1i_3VecB21_EE0EINtNtB6_6result6ResultzNtNtB2z_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11044 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [17 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i.i.i = alloca i64, align 8            ; 4 uses
  %.sroa.712.i.i.i = alloca i64, align 8          ; 4 uses
  %.sroa.8.i.i.i = alloca i64, align 8            ; 4 uses
    #dbg_value(ptr %1, !11061, !DIExpression(), !11062)
    #dbg_value(ptr %1, !11063, !DIExpression(), !11090)
    #dbg_declare(ptr poison, !11086, !DIExpression(), !11092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11093), !dbg !11096
    #dbg_value(ptr %1, !11097, !DIExpression(), !11112)
    #dbg_declare(ptr poison, !11107, !DIExpression(), !11114)
    #dbg_declare(ptr poison, !11108, !DIExpression(), !11115)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !11116
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11116, !alias.scope !11093, !noalias !11117, !nonnull !39, !align !2280, !noundef !39 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11119), !dbg !11122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11123), !dbg !11122
    #dbg_value(ptr %1, !11125, !DIExpression(), !11172)
    #dbg_declare(ptr poison, !11152, !DIExpression(), !11174)
    #dbg_value(ptr poison, !11153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11172)
    #dbg_value(ptr %i.g, !11153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11175), !dbg !11178
    #dbg_declare(ptr %.sroa.5.i.i.i, !11179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11219)
    #dbg_declare(ptr %.sroa.712.i.i.i, !11179, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11219)
    #dbg_declare(ptr %.sroa.8.i.i.i, !11179, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11219)
    #dbg_declare(ptr %.sroa.5.i.i.i, !11216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11249)
    #dbg_declare(ptr %.sroa.712.i.i.i, !11216, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11249)
    #dbg_declare(ptr %.sroa.8.i.i.i, !11216, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11249)
    #dbg_value(ptr %1, !11232, !DIExpression(), !11250)
    #dbg_declare(ptr poison, !11233, !DIExpression(), !11251)
    #dbg_declare(ptr poison, !11234, !DIExpression(), !11252)
    #dbg_declare(ptr poison, !11241, !DIExpression(), !11253)
    #dbg_value(i64 1, !11254, !DIExpression(), !11258)
  %.sink35.i.sroa.gep3.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !11260 ; 2 uses
  %.sink35.i.sroa.gep6.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !11260 ; 2 uses
  %.sink35.i.sroa.gep9.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !11260 ; 2 uses
    #dbg_value(ptr %1, !11261, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11268)
    #dbg_value(ptr %1, !11270, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11274)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11276
  %i.i = load ptr, ptr %i.h, align 8, !dbg !11277, !alias.scope !11278, !noalias !11279, !nonnull !39, !noundef !39
    #dbg_value(ptr poison, !11264, !DIExpression(), !11282)
    #dbg_value(ptr poison, !11273, !DIExpression(), !11283)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11284 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !11284, !alias.scope !11278, !noalias !11279, !nonnull !39, !noundef !39 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.i, !dbg !11284
  br i1 %.not.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtCscbFFjjIlwRm_5rcgen7SanTypeEECs7OITKvp9Irj_4perf.exit, label %bb.b, !dbg !11285

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.k, !11286, !DIExpression(), !11292)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !11295, !noalias !11301
    #dbg_value(ptr %i.k, !11257, !DIExpression(), !11258)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !11302
  store ptr %i.l, ptr %i.j, align 8, !dbg !11303, !alias.scope !11278, !noalias !11279
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !11294
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.712.i.i.i), !dbg !11294
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i), !dbg !11294
    #dbg_value(ptr poison, !11304, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11316)
    #dbg_value(ptr poison, !11312, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !11316)
    #dbg_declare(ptr poison, !11310, !DIExpression(), !11318)
    #dbg_declare(ptr %i.e, !11311, !DIExpression(), !11319)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11320, !noalias !11321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !11320, !noalias !11301
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11325), !dbg !11320
    #dbg_value(ptr poison, !11328, !DIExpression(), !11340)
    #dbg_declare(ptr %i.d, !11333, !DIExpression(), !11342)
    #dbg_declare(ptr %i.b, !11343, !DIExpression(), !11382)
    #dbg_declare(ptr %i.a, !11384, !DIExpression(), !11392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11394, !noalias !11395
    #dbg_value(ptr %i.d, !11397, !DIExpression(), !11404)
    #dbg_value(ptr %i.d, !11406, !DIExpression(), !11410)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11412
  %i.n = load ptr, ptr %i.m, align 8, !dbg !11412, !alias.scope !11325, !noalias !11429, !nonnull !39, !noundef !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !11430
  %i.p = load i64, ptr %i.o, align 8, !dbg !11430, !alias.scope !11325, !noalias !11429, !noundef !39
  invoke void @_RNvXs0_NtNtCskKLDkoKarTP_4core3net6parserNtNtB7_7ip_addr6IpAddrNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(address) dereferenceable(17) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p)
          to label %bb.c unwind label %bb.h, !dbg !11394, !noalias !11395

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.c, align 8, !dbg !11394, !range !4818, !noalias !11395, !noundef !39
  %i.r = icmp eq i8 %i.q, 2, !dbg !11394
  br i1 %i.r, label %bb.d, label %bb.e, !dbg !11431

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11432, !noalias !11395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11432, !noalias !11395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !11432, !noalias !11433
  call void @_RNvXsa_NtCscbFFjjIlwRm_5rcgen6stringNtB5_9Ia5StringINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtCsexYYUdYSQU6_5alloc6string6StringE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !11434, !noalias !11395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11435, !noalias !11395
  %i.s = load i64, ptr %i.b, align 8, !dbg !11436, !range !2041, !noalias !11395, !noundef !39 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.s, -1, !dbg !11436
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11437
  %.sroa.6.i.sroa.0.0.copyload7.i.i.i.i = load i64, ptr %i.t, align 8, !dbg !11437, !noalias !11395 ; 3 uses
  %.sroa.6.i.sroa.7.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11437
  %.sroa.6.i.sroa.7.sroa.0.0.copyload15.i.i.i.i = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx9.i.i.i.i, align 8, !dbg !11437, !noalias !11395 ; 3 uses
  %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx9.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !11437
  %.sroa.6.i.sroa.7.sroa.7.0.copyload16.i.i.i.i = load i64, ptr %.sroa.6.i.sroa.7.sroa.7.0..sroa.6.i.sroa.7.0..sroa_idx9.sroa_idx.i.i.i.i, align 8, !dbg !11437, !noalias !11395 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11438, !noalias !11395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11439, !noalias !11395
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.j, !dbg !11440

bb.e:                                             ; preds = %bb.c
  %.sroa.6.8.copyload3.i.i.i.i = load i64, ptr %i.c, align 8, !dbg !11441, !noalias !11442
  %.sroa.10.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11441
  %.sroa.10.sroa.0.0.copyload11.i.i.i.i = load i64, ptr %.sroa.10.8..sroa_idx.i.i.i.i, align 8, !dbg !11441, !noalias !11442
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11441
  %.sroa.10.sroa.6.sroa.0.0.copyload14.i.i.i.i = load i8, ptr %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx.sroa_idx.i.i.i.i, align 8, !dbg !11441, !noalias !11442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11439, !noalias !11395
    #dbg_value(ptr %i.d, !3669, !DIExpression(), !11443)
    #dbg_value(ptr %i.d, !3230, !DIExpression(), !11445)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i.i.i.i unwind label %bb.f, !dbg !11447, !noalias !11429

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !3239, !DIExpression(), !11448)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i.i.i.i unwind label %bb.g, !dbg !11450, !noalias !11429

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !11447, !noalias !11429
  unreachable, !dbg !11447

common.resume.i.i.i.i:                            ; preds = %bb.m, %bb.h, %bb.f
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.u, %bb.f ], [ %i.w, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i, !dbg !11451

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i.i.i.i: ; preds = %bb.e
  %.sroa.10.sroa.6.sroa.0.0.insert.ext.i.i.i.i = zext i8 %.sroa.10.sroa.6.sroa.0.0.copyload14.i.i.i.i to i64, !dbg !11441
    #dbg_value(ptr %i.d, !3239, !DIExpression(), !11452)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !11454, !noalias !11429
  br label %bb.l, !dbg !11439

bb.h:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #17
          to label %common.resume.i.i.i.i unwind label %bb.i, !dbg !11439, !noalias !11429

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !dbg !11455, !noalias !11429
  unreachable, !dbg !11455

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11456, !noalias !11321
    #dbg_value(i64 -1, !11457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11470)
    #dbg_value(i64 %i.s, !11457, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11470)
    #dbg_value(i64 %.sroa.6.i.sroa.0.0.copyload7.i.i.i.i, !11457, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11470)
    #dbg_value(i64 %.sroa.6.i.sroa.7.sroa.0.0.copyload15.i.i.i.i, !11457, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11470)
    #dbg_value(i64 %.sroa.6.i.sroa.7.sroa.7.0.copyload16.i.i.i.i, !11457, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !11470)
    #dbg_value(ptr poison, !11465, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11470)
    #dbg_declare(ptr poison, !11463, !DIExpression(), !11472)
    #dbg_declare(ptr poison, !11468, !DIExpression(), !11473)
    #dbg_value(ptr %i.g, !11474, !DIExpression(), !11481)
  %i.y = load i64, ptr %i.g, align 8, !dbg !11483, !range !2041, !alias.scope !11484, !noalias !11487, !noundef !39
  %i.z = icmp eq i64 %i.y, -1, !dbg !11483
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i, label %bb.k, !dbg !11483

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i unwind label %bb.m, !dbg !11483, !noalias !11487

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i.i.i.i, %bb.d
  %.sroa.10.sroa.6.sroa.0.0.ph.i.i.i.i = phi i64 [ %.sroa.10.sroa.6.sroa.0.0.insert.ext.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ], [ %.sroa.6.i.sroa.7.sroa.7.0.copyload16.i.i.i.i, %bb.d ]
  %.sroa.10.sroa.0.0.ph.i.i.i.i = phi i64 [ %.sroa.10.sroa.0.0.copyload11.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ], [ %.sroa.6.i.sroa.7.sroa.0.0.copyload15.i.i.i.i, %bb.d ]
  %.sroa.6.0.ph.i.i.i.i = phi i64 [ %.sroa.6.8.copyload3.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ], [ %.sroa.6.i.sroa.0.0.copyload7.i.i.i.i, %bb.d ]
  %.sroa.01.0.ph.i.i.i.i = phi i64 [ -9223372036854775805, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ], [ -9223372036854775807, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11456, !noalias !11321
    #dbg_value(i64 %.sroa.01.0.ph.i.i.i.i, !11457, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11470)
    #dbg_value(i64 %.sroa.6.0.ph.i.i.i.i, !11457, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11470)
    #dbg_value(i64 %.sroa.10.sroa.0.0.ph.i.i.i.i, !11457, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11470)
    #dbg_value(i64 %.sroa.10.sroa.6.sroa.0.0.ph.i.i.i.i, !11457, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11470)
    #dbg_value(i64 undef, !11457, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !11470)
    #dbg_value(ptr poison, !11465, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11470)
    #dbg_declare(ptr poison, !11463, !DIExpression(), !11472)
    #dbg_declare(ptr poison, !11468, !DIExpression(), !11473)
  br label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1l_6string6StringENCINvMs1_NtCscbFFjjIlwRm_5rcgen11certificateNtB2y_17CertificateParams3newINtB1j_3VecB22_EE0EINtNtB7_6result6ResultzNtNtB2A_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4C_12try_for_each4callNtB2A_7SanTypeINtNtNtB7_3ops12control_flow11ControlFlowB5O_ENcNtB62_5Break0E0B62_ECs7OITKvp9Irj_4perf.exit, !dbg !11491

bb.m:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i64 %i.s, ptr %i.g, align 8, !dbg !11492, !alias.scope !11123, !noalias !11493
  store i64 %.sroa.6.i.sroa.0.0.copyload7.i.i.i.i, ptr %.sink35.i.sroa.gep3.i.i.i, align 8, !dbg !11492, !alias.scope !11123, !noalias !11493
  store i64 %.sroa.6.i.sroa.7.sroa.0.0.copyload15.i.i.i.i, ptr %.sink35.i.sroa.gep6.i.i.i, align 8, !dbg !11492, !alias.scope !11123, !noalias !11493
  store i64 %.sroa.6.i.sroa.7.sroa.7.0.copyload16.i.i.i.i, ptr %.sink35.i.sroa.gep9.i.i.i, align 8, !dbg !11492, !alias.scope !11123, !noalias !11493
  br label %common.resume.i.i.i.i, !dbg !11494

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  store i64 %i.s, ptr %i.g, align 8, !dbg !11492, !alias.scope !11123, !noalias !11493
  br label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1l_6string6StringENCINvMs1_NtCscbFFjjIlwRm_5rcgen11certificateNtB2y_17CertificateParams3newINtB1j_3VecB22_EE0EINtNtB7_6result6ResultzNtNtB2A_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4C_12try_for_each4callNtB2A_7SanTypeINtNtNtB7_3ops12control_flow11ControlFlowB5O_ENcNtB62_5Break0E0B62_ECs7OITKvp9Irj_4perf.exit, !dbg !11495

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1l_6string6StringENCINvMs1_NtCscbFFjjIlwRm_5rcgen11certificateNtB2y_17CertificateParams3newINtB1j_3VecB22_EE0EINtNtB7_6result6ResultzNtNtB2A_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4C_12try_for_each4callNtB2A_7SanTypeINtNtNtB7_3ops12control_flow11ControlFlowB5O_ENcNtB62_5Break0E0B62_ECs7OITKvp9Irj_4perf.exit: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i
  %.sink35.i.sroa.phi.i.i.i = phi ptr [ %.sroa.5.i.i.i, %bb.l ], [ %.sink35.i.sroa.gep3.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ]
  %.sink35.i.sroa.phi4.i.i.i = phi ptr [ %.sroa.712.i.i.i, %bb.l ], [ %.sink35.i.sroa.gep6.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ]
  %.sink35.i.sroa.phi7.i.i.i = phi ptr [ %.sroa.8.i.i.i, %bb.l ], [ %.sink35.i.sroa.gep9.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ]
  %.sroa.6.0.ph.sink.i.i.i.i = phi i64 [ %.sroa.6.0.ph.i.i.i.i, %bb.l ], [ %.sroa.6.i.sroa.0.0.copyload7.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ]
  %.sroa.10.sroa.0.0.ph.sink.i.i.i.i = phi i64 [ %.sroa.10.sroa.0.0.ph.i.i.i.i, %bb.l ], [ %.sroa.6.i.sroa.7.sroa.0.0.copyload15.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ]
  %.sroa.10.sroa.6.sroa.0.0.ph.sink.i.i.i.i = phi i64 [ %.sroa.10.sroa.6.sroa.0.0.ph.i.i.i.i, %bb.l ], [ %.sroa.6.i.sroa.7.sroa.7.0.copyload16.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ]
  %storemerge.i.i.i.i = phi i64 [ %.sroa.01.0.ph.i.i.i.i, %bb.l ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtCscbFFjjIlwRm_5rcgen5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ], !dbg !11470 ; 2 uses
  store i64 %.sroa.6.0.ph.sink.i.i.i.i, ptr %.sink35.i.sroa.phi.i.i.i, align 8, !dbg !11470, !noalias !11496
  store i64 %.sroa.10.sroa.0.0.ph.sink.i.i.i.i, ptr %.sink35.i.sroa.phi4.i.i.i, align 8, !dbg !11470, !noalias !11496
end_hunk_0
