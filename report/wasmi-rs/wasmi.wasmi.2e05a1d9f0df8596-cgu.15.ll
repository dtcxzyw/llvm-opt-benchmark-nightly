Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi.wasmi.2e05a1d9f0df8596-cgu.15?download=true
inline.NumInlined: 184
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_16TypedValueParser9parse_refCs3WYoaQ2jqaU_5wasmi:bb.a
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noundef nonnull @36, ptr noundef nonnull %i.ag)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3WYoaQ2jqaU_5wasmi.exit unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #26
          to label %.thread92 unwind label %bb.do

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3WYoaQ2jqaU_5wasmi.exit.i unwind label %bb.dh

bb.dh:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3WYoaQ2jqaU_5wasmi.exit
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.thread92 unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3WYoaQ2jqaU_5wasmi.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit unwind label %.thread106

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3WYoaQ2jqaU_5wasmi.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !240
  %i.jg = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 49) 24, i64 noundef range(i64 1, 9) 8) #27, !noalias !240 ; 3 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.dj, label %bb.dm, !prof !15

bb.dj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
          to label %.noexc63 unwind label %bb.dk

.noexc63:                                         ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %bb.dj
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #26
          to label %.thread92 unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.dm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.jk = call noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error16value_validationCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ak, ptr noundef nonnull %i.jg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %_RNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_refs1_0Cs3WYoaQ2jqaU_5wasmi.exit
  %.sink = phi ptr [ %i.jk, %bb.dm ], [ %i.da, %_RNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_refs1_0Cs3WYoaQ2jqaU_5wasmi.exit ]
  %i.jl = call noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error8with_cmdCs3WYoaQ2jqaU_5wasmi(ptr noalias noundef nonnull align 8 %.sink, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.dq

bb.do:                                            ; preds = %bb.dp, %.thread92, %bb.dg
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread92:                                        ; preds = %.body.i, %bb.dk, %bb.dh, %bb.dg, %.thread106
  %.pn95 = phi { ptr, i32 } [ %i.jd, %bb.dg ], [ %lpad.thr_comm, %.thread106 ], [ %i.je, %bb.dh ], [ %i.ji, %bb.dk ], [ %.pn.i, %.body.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #26
          to label %bb.dp unwind label %bb.do

bb.dp:                                            ; preds = %.thread92, %bb.aq
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ea, %bb.aq ], [ %.pn95, %.thread92 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #26
          to label %common.resume unwind label %bb.do

bb.dq:                                            ; preds = %_RINvYTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECs3WYoaQ2jqaU_5wasmi.exit.thread86, %bb.dn, %bb.b
  %.sroa.5.1 = phi ptr [ %i.ap, %bb.b ], [ %i.jl, %bb.dn ], [ %i.dm, %_RINvYTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECs3WYoaQ2jqaU_5wasmi.exit.thread86 ]
  %.sroa.0.1 = phi i64 [ 1, %bb.b ], [ 1, %bb.dn ], [ 0, %_RINvYTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB4_EINtB7_11RangeBoundsyE8containsyECs3WYoaQ2jqaU_5wasmi.exit.thread86 ]
  %i.jn = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.jo = insertvalue { i64, ptr } %i.jn, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.jo
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtCscK5W4trzgIe_6anyhow7context6QuotedQNtNtCskKLDkoKarTP_4core3fmt9FormatterENtBK_5Write10write_charCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !243
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !243
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !243
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !243
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !243
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !243
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !243
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !243
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !243
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !243
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvXs5_NtCscK5W4trzgIe_6anyhow7contextINtB5_6QuotedQNtNtCskKLDkoKarTP_4core3fmt9FormatterENtBQ_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtCscK5W4trzgIe_6anyhow7context6QuotedQNtNtCskKLDkoKarTP_4core3fmt9FormatterENtBK_5Write9write_fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtQINtNtCscK5W4trzgIe_6anyhow7context6QuotedQNtB8_9FormatterENtB4_12SpecWriteFmt14spec_write_fmtCs3WYoaQ2jqaU_5wasmi.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !244
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error5causeCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorReENtNtCskKLDkoKarTP_4core5error5Error5causeCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !256, !nonnull !6, !noundef !6
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !256
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.promoted.i.i.i, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %2, %switch.lookup ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !256
  %.val.i.i.i = load i8, ptr %i.e, align 1, !range !5, !noalias !257, !noundef !6 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.49, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.50, i64 %i.i
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext = zext i8 %switch.load4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !257
  store i64 %.sroa.01.0.i.i.i, ptr %i.a, align 8, !noalias !257
  store i64 0, ptr %i.d, align 8, !noalias !257
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !257
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !257
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !257
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 8, !noalias !257
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !noalias !257
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i, align 8, !noalias !257
  %2 = add i64 %.sroa.01.0.i.i.i, -1              ; 2 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder14possible_value13PossibleValueECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !257
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit, label %bb.c

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB3l_15EnumValueParserB2i_ENtB3l_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2o_.exit: ; preds = %bb.c, %switch.lookup, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %switch.lookup ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !282
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !285, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.g, %switch.lookup ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %3, %switch.lookup ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !285
  %.val.i.i.i.i = load i8, ptr %i.e, align 1, !range !5, !noalias !286, !noundef !6 ; 2 uses
  %i.h = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.49, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.i = zext nneg i8 %.val.i.i.i.i to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.50, i64 %i.i
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext = zext i8 %switch.load12 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !286
  store i64 %.sroa.01.0.i.i.i.i, ptr %i.a, align 8, !noalias !286
  store i64 0, ptr %i.d, align 8, !noalias !286
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !286
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !286
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i, align 8, !noalias !286
  store ptr %switch.load, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i, align 8, !noalias !286
  store i64 %switch.ext, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i, align 8, !noalias !286
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i.i.i, align 8, !noalias !286
  %3 = add i64 %.sroa.01.0.i.i.i.i, -1            ; 2 uses
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder14possible_value13PossibleValueECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !286
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %.loopexit, label %bb.c

_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_.exit: ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserB1A_ENtB2D_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

.loopexit:                                        ; preds = %switch.lookup, %..loopexit_crit_edge
  %i.j = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %switch.lookup ]
  %i.k = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.g, %switch.lookup ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.l = icmp eq ptr %i.k, %i.j
  br i1 %i.l, label %bb.d, label %switch.lookup13

switch.lookup13:                                  ; preds = %.loopexit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.m, ptr %1, align 8, !alias.scope !282
  %.val.i.i = load i8, ptr %i.k, align 1, !range !5, !noalias !291, !noundef !6 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !292
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !292
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !292
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !292
  %i.n = zext nneg i8 %.val.i.i to i64
  %switch.gep14 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.49, i64 %i.n
  %switch.load15 = load ptr, ptr %switch.gep14, align 8
  %i.o = zext nneg i8 %.val.i.i to i64
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB1A_.50, i64 %i.o
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %switch.ext18 = zext i8 %switch.load17 to i64
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %switch.load15, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !292
  store i64 %switch.ext18, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !292
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !292
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserB1A_ENtB2D_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

bb.d:                                             ; preds = %.loopexit
  store i64 -1, ptr %0, align 8, !alias.scope !293
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserB1A_ENtB2D_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserB1A_ENtB2D_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit: ; preds = %bb.d, %switch.lookup13, %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2x_15EnumValueParserB1u_ENtB2x_16TypedValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1A_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtQNtNtCsexYYUdYSQU6_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs3WYoaQ2jqaU_5wasmi.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @17, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !294
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @39, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @40, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @39, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @41, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENtNtNtBa_6traits8iterator8Iterator5eq_byINtNtB8_3map3MapIBY_NtNtCsefoF4u9kbII_5wasmi5value3ValENvYB35_NtNtNtB39_4func2ty16DynamicallyTyped2tyENCINvYB3_B27_2eqB2L_E0ECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej0_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB4_13FuncTypeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej1_AB11_j0_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej1_B10_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej2_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i16 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej3_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i24, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej4_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej5_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i40, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej6_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i48, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej7_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i56, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej9_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(9), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2C93r1qUspC_12clap_builder7builder3str3StrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2C93r1qUspC_12clap_builder7builder3str3StrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTdBY_EENCINvNtNtNtCs2C93r1qUspC_12clap_builder6parser8features11suggestions12did_you_meanRBY_INtNtNtB28_5slice4iter4IterBY_EEs0_0EE9from_iterCs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

end_hunk_0
