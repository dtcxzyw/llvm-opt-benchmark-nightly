Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.000?download=true
inline.NumInlined: 13187
inline.NumDeleted: 6664
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2U_18StructPayloadIndexNtNtB2W_18payload_index_base12PayloadIndex15immutable_files000ETNtNtB2Y_9json_path8JsonPathB2a_ENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2Y_:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5292, !nonnull !14, !noundef !14 ; 4 uses
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2r_18StructPayloadIndexNtNtB2t_18payload_index_base12PayloadIndex15immutable_files000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2v_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.m, ptr %i.j, align 8, !alias.scope !5292
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.k, align 8, !noalias !5293 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i, -1
  br i1 %.not.i.i, label %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2r_18StructPayloadIndexNtNtB2t_18payload_index_base12PayloadIndex15immutable_files000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2v_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i.i
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !5294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0.copyload1.i.i, ptr %i.d, align 8, !noalias !5294
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !5295, !nonnull !14, !align !22, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5298
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i.i)
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !5299

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5298
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2r_18StructPayloadIndexNtNtB2t_18payload_index_base12PayloadIndex15immutable_files000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2v_.exit unwind label %bb.d, !noalias !5300

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i.i.i unwind label %bb.e, !noalias !5300

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !5300
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.p, %bb.d ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.g, !noalias !5301

bb.g:                                             ; preds = %.body.i.i.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !5301
  unreachable

common.resume:                                    ; preds = %bb.l, %.body.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.v, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2r_18StructPayloadIndexNtNtB2t_18payload_index_base12PayloadIndex15immutable_files000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2v_.exit.thread: ; preds = %bb.b, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i.i
  store i64 -1, ptr %i.f, align 8, !alias.scope !5302
  br label %bb.k

_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2r_18StructPayloadIndexNtNtB2t_18payload_index_base12PayloadIndex15immutable_files000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2v_.exit: ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5303
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5298
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !alias.scope !5304, !noalias !5294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !5305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !5295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pr = load i64, ptr %i.f, align 8
  %.not6 = icmp eq i64 %.pr, -1
  br i1 %.not6, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB33_18StructPayloadIndexNtNtB35_18payload_index_base12PayloadIndex15immutable_files000EEEB37_.exit, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2r_18StructPayloadIndexNtNtB2t_18payload_index_base12PayloadIndex15immutable_files000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2v_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2r_18StructPayloadIndexNtNtB2t_18payload_index_base12PayloadIndex15immutable_files000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2v_.exit, %_RNvYNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2r_18StructPayloadIndexNtNtB2t_18payload_index_base12PayloadIndex15immutable_files000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2v_.exit.thread
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB33_18StructPayloadIndexNtNtB35_18payload_index_base12PayloadIndex15immutable_files000EEEB37_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %1, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEEEB12_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f) #30
          to label %common.resume unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB33_18StructPayloadIndexNtNtB35_18payload_index_base12PayloadIndex15immutable_files000EEEB37_.exit: ; preds = %bb.k
  store ptr null, ptr %1, align 8
  br label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !24, !noundef !14
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !56, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE7reserveBM_.exit.i, !prof !16

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #37
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE7reserveBM_.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5316)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE7reserveBM_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !5317, !nonnull !14, !noundef !14
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !5317, !noundef !14 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = shl nuw nsw i64 %i.u, 4
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us
  %.sroa.0.030.i.us = phi ptr [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i.us = phi i64 [ %i.aa, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
  %storemerge28.i.us = phi i64 [ %i.ac, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5318)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5319
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc14.i.us unwind label %.loopexit.split-lp.i.loopexit.split.us, !noalias !5316

.noexc14.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.w = load i64, ptr %i.a, align 8, !range !24, !noalias !5319, !noundef !14
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = load i64, ptr %i.r, align 8, !range !56, !noalias !5319, !noundef !14 ; 2 uses
  br i1 %i.x, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us, !prof !16

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us: ; preds = %.noexc14.i.us
  %i.z = load ptr, ptr %i.s, align 8, !noalias !5319, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5319
  %i.aa = add nuw i64 %.sroa.03.029.i.us, 1       ; 2 uses
  store i64 %i.y, ptr %.sroa.0.030.i.us, align 8, !noalias !5316
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !5316
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !5316
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 24 ; 2 uses
  %i.ac = add nuw i64 %storemerge28.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.split-lp.i.loopexit.split.us:           ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE7reserveBM_.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i
  %.sroa.0.030.i = phi ptr [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i = phi i64 [ %i.aj, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge28.i = phi i64 [ %i.al, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5318)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5319
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.u, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc14.i unwind label %.loopexit.split-lp.i.loopexit.split, !noalias !5316

.noexc14.i:                                       ; preds = %.lr.ph.i.split
  %i.ad = load i64, ptr %i.a, align 8, !range !24, !noalias !5319, !noundef !14
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = load i64, ptr %i.r, align 8, !range !56, !noalias !5319, !noundef !14 ; 3 uses
  br i1 %i.ae, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i, !prof !16

.split.us:                                        ; preds = %.noexc14.i, %.noexc14.i.us
  %.us-phi16 = phi i64 [ %i.y, %.noexc14.i.us ], [ %i.af, %.noexc14.i ]
  %.us-phi17 = phi i64 [ %storemerge28.i.us, %.noexc14.i.us ], [ %storemerge28.i, %.noexc14.i ]
  %i.ag = load i64, ptr %i.s, align 8, !noalias !5319
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16, i64 %i.ag) #37
          to label %.noexc15.i unwind label %.loopexit.split-lp.i.loopexit.split-lp, !noalias !5316

.noexc15.i:                                       ; preds = %.split.us
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i: ; preds = %.noexc14.i
  %i.ah = load ptr, ptr %i.s, align 8, !noalias !5319, !nonnull !14, !noundef !14 ; 2 uses
  %i.ai = icmp ule i64 %i.u, %i.af
  tail call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5319
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %i.t, i64 %i.v, i1 false), !noalias !5320
  %i.aj = add nuw i64 %.sroa.03.029.i, 1          ; 2 uses
  store i64 %i.af, ptr %.sroa.0.030.i, align 8, !noalias !5316
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !5316
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !5316
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 24 ; 2 uses
  %i.al = add nuw i64 %storemerge28.i, 1
  %exitcond.not.i = icmp eq i64 %i.aj, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.split

bb.c:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !5315
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE11extend_withBN_.exit unwind label %bb.e

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us, %._crit_edge.i
  %.sroa.0.0.lcssa44.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa44.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !5315
  br label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE11extend_withBN_.exit

.loopexit.split-lp.i.loopexit.split:              ; preds = %.lr.ph.i.split
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit.split, %.loopexit.split-lp.i.loopexit.split.us, %.loopexit.split-lp.i.loopexit.split-lp
  %storemerge28.i12 = phi i64 [ %.us-phi17, %.loopexit.split-lp.i.loopexit.split-lp ], [ %storemerge28.i, %.loopexit.split-lp.i.loopexit.split ], [ %storemerge28.i.us, %.loopexit.split-lp.i.loopexit.split.us ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split-lp.i.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split-lp.i.loopexit.split.us ]
  store i64 %storemerge28.i12, ptr %i.n, align 8, !alias.scope !5315
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.e ], [ %lpad.phi, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types8GeoPointEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointEEB1c_.exit unwind label %bb.f

_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCs607s0NAIaWN_7segment5types8GeoPointEE11extend_withBN_.exit: ; preds = %._crit_edge.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointEEB1c_.exit: ; preds = %bb.g, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ap, %bb.g ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointEEB1c_.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !24, !noundef !14
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !56, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !16

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #37
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5330)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEE7reserveCs607s0NAIaWN_7segment.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !5330, !nonnull !14, !noundef !14
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !5330, !noundef !14 ; 5 uses
  %.not.i.i.i = icmp eq i64 %.val15.i, 0
  %i.t = shl nuw nsw i64 %.val15.i, 3
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us
  %.sroa.0.032.i.us = phi ptr [ %i.z, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.031.i.us = phi i64 [ %i.y, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
  %storemerge30.i.us = phi i64 [ %i.aa, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5331
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) 0, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %.noexc16.i.us unwind label %.loopexit.split-lp.i.loopexit.split.us, !noalias !5330

.noexc16.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.u = load i64, ptr %i.a, align 8, !range !24, !noalias !5331, !noundef !14
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = load i64, ptr %i.r, align 8, !range !56, !noalias !5331, !noundef !14 ; 2 uses
  br i1 %i.v, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us, !prof !16

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us: ; preds = %.noexc16.i.us
  %i.x = load ptr, ptr %i.s, align 8, !noalias !5331, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5331
  %i.y = add nuw i64 %.sroa.03.031.i.us, 1        ; 2 uses
  store i64 %i.w, ptr %.sroa.0.032.i.us, align 8, !noalias !5330
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !5330
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !5330
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 24 ; 2 uses
  %i.aa = add nuw i64 %storemerge30.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.y, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.split-lp.i.loopexit.split.us:           ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_NtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEE7reserveCs607s0NAIaWN_7segment.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i
  %.sroa.0.032.i = phi ptr [ %i.ai, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.031.i = phi i64 [ %i.ah, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge30.i = phi i64 [ %i.aj, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5331
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val15.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %.noexc16.i unwind label %.loopexit.split-lp.i.loopexit.split, !noalias !5330

.noexc16.i:                                       ; preds = %.lr.ph.i.split
  %i.ab = load i64, ptr %i.a, align 8, !range !24, !noalias !5331, !noundef !14
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load i64, ptr %i.r, align 8, !range !56, !noalias !5331, !noundef !14 ; 3 uses
  br i1 %i.ac, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i, !prof !16

.split.us:                                        ; preds = %.noexc16.i, %.noexc16.i.us
  %.us-phi16 = phi i64 [ %i.w, %.noexc16.i.us ], [ %i.ad, %.noexc16.i ]
  %.us-phi17 = phi i64 [ %storemerge30.i.us, %.noexc16.i.us ], [ %storemerge30.i, %.noexc16.i ]
  %i.ae = load i64, ptr %i.s, align 8, !noalias !5331
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16, i64 %i.ae) #37
          to label %.noexc17.i unwind label %.loopexit.split-lp.i.loopexit.split-lp, !noalias !5330

.noexc17.i:                                       ; preds = %.split.us
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i: ; preds = %.noexc16.i
  %i.af = load ptr, ptr %i.s, align 8, !noalias !5331, !nonnull !14, !noundef !14 ; 2 uses
  %i.ag = icmp ule i64 %.val15.i, %i.ad
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5331
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull readonly align 4 %.val14.i, i64 %i.t, i1 false), !noalias !5332
  %i.ah = add nuw i64 %.sroa.03.031.i, 1          ; 2 uses
  store i64 %i.ad, ptr %.sroa.0.032.i, align 8, !noalias !5330
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !5330
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 16
  store i64 %.val15.i, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !5330
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 24 ; 2 uses
  %i.aj = add nuw i64 %storemerge30.i, 1
  %exitcond.not.i = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.split

bb.c:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !5329
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEE11extend_withCs607s0NAIaWN_7segment.exit unwind label %bb.e

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us, %._crit_edge.i
  %.sroa.0.0.lcssa46.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.z, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ %i.ai, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa46.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !5329
  br label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEE11extend_withCs607s0NAIaWN_7segment.exit

.loopexit.split-lp.i.loopexit.split:              ; preds = %.lr.ph.i.split
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit.split, %.loopexit.split-lp.i.loopexit.split.us, %.loopexit.split-lp.i.loopexit.split-lp
  %storemerge30.i12 = phi i64 [ %.us-phi17, %.loopexit.split-lp.i.loopexit.split-lp ], [ %storemerge30.i, %.loopexit.split-lp.i.loopexit.split ], [ %storemerge30.i.us, %.loopexit.split-lp.i.loopexit.split.us ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split-lp.i.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split-lp.i.loopexit.split.us ]
  store i64 %storemerge30.i12, ptr %i.n, align 8, !alias.scope !5329
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.e ], [ %lpad.phi, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEECs607s0NAIaWN_7segment.exit unwind label %bb.f

_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEE11extend_withCs607s0NAIaWN_7segment.exit: ; preds = %._crit_edge.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEECs607s0NAIaWN_7segment.exit: ; preds = %bb.g, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.an, %bb.g ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEECs607s0NAIaWN_7segment.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtB5_3VecfENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !24, !noundef !14
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !56, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !16

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #37
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5343)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCs607s0NAIaWN_7segment.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !5344, !nonnull !14, !noundef !14
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !5344, !noundef !14 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  %i.v = shl nuw nsw i64 %i.u, 2
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us
  %.sroa.0.030.i.us = phi ptr [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i.us = phi i64 [ %i.aa, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
  %storemerge28.i.us = phi i64 [ %i.ac, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5345)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5346
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) 0, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc14.i.us unwind label %.loopexit.split-lp.i.loopexit.split.us, !noalias !5343

.noexc14.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.w = load i64, ptr %i.a, align 8, !range !24, !noalias !5346, !noundef !14
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = load i64, ptr %i.r, align 8, !range !56, !noalias !5346, !noundef !14 ; 2 uses
  br i1 %i.x, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us, !prof !16

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us: ; preds = %.noexc14.i.us
  %i.z = load ptr, ptr %i.s, align 8, !noalias !5346, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5346
  %i.aa = add nuw i64 %.sroa.03.029.i.us, 1       ; 2 uses
  store i64 %i.y, ptr %.sroa.0.030.i.us, align 8, !noalias !5343
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !5343
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !5343
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.us, i64 24 ; 2 uses
  %i.ac = add nuw i64 %storemerge28.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.split-lp.i.loopexit.split.us:           ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecIBv_fEE7reserveCs607s0NAIaWN_7segment.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i
  %.sroa.0.030.i = phi ptr [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.029.i = phi i64 [ %i.aj, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge28.i = phi i64 [ %i.al, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5345)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5346
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.u, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc14.i unwind label %.loopexit.split-lp.i.loopexit.split, !noalias !5343

.noexc14.i:                                       ; preds = %.lr.ph.i.split
  %i.ad = load i64, ptr %i.a, align 8, !range !24, !noalias !5346, !noundef !14
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = load i64, ptr %i.r, align 8, !range !56, !noalias !5346, !noundef !14 ; 3 uses
  br i1 %i.ae, label %.split.us, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i, !prof !16

.split.us:                                        ; preds = %.noexc14.i, %.noexc14.i.us
  %.us-phi16 = phi i64 [ %i.y, %.noexc14.i.us ], [ %i.af, %.noexc14.i ]
  %.us-phi17 = phi i64 [ %storemerge28.i.us, %.noexc14.i.us ], [ %storemerge28.i, %.noexc14.i ]
  %i.ag = load i64, ptr %i.s, align 8, !noalias !5346
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16, i64 %i.ag) #37
          to label %.noexc15.i unwind label %.loopexit.split-lp.i.loopexit.split-lp, !noalias !5343

.noexc15.i:                                       ; preds = %.split.us
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i: ; preds = %.noexc14.i
  %i.ah = load ptr, ptr %i.s, align 8, !noalias !5346, !nonnull !14, !noundef !14 ; 2 uses
  %i.ai = icmp ule i64 %i.u, %i.af
  tail call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5346
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr nonnull readonly align 4 %i.t, i64 %i.v, i1 false), !noalias !5347
  %i.aj = add nuw i64 %.sroa.03.029.i, 1          ; 2 uses
  store i64 %i.af, ptr %.sroa.0.030.i, align 8, !noalias !5343
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !5343
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !5343
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 24 ; 2 uses
  %i.al = add nuw i64 %storemerge28.i, 1
  %exitcond.not.i = icmp eq i64 %i.aj, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.split

bb.c:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !5342
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEE11extend_withCs607s0NAIaWN_7segment.exit unwind label %bb.e

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us, %._crit_edge.i
  %.sroa.0.0.lcssa44.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.us ], [ %i.ak, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa44.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !5342
  br label %_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEE11extend_withCs607s0NAIaWN_7segment.exit

.loopexit.split-lp.i.loopexit.split:              ; preds = %.lr.ph.i.split
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit.split, %.loopexit.split-lp.i.loopexit.split.us, %.loopexit.split-lp.i.loopexit.split-lp
  %storemerge28.i12 = phi i64 [ %.us-phi17, %.loopexit.split-lp.i.loopexit.split-lp ], [ %storemerge28.i, %.loopexit.split-lp.i.loopexit.split ], [ %storemerge28.i.us, %.loopexit.split-lp.i.loopexit.split.us ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split-lp.i.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split-lp.i.loopexit.split.us ]
  store i64 %storemerge28.i12, ptr %i.n, align 8, !alias.scope !5342
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.e ], [ %lpad.phi, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_fEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs607s0NAIaWN_7segment.exit unwind label %bb.f

_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEE11extend_withCs607s0NAIaWN_7segment.exit: ; preds = %._crit_edge.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs607s0NAIaWN_7segment.exit: ; preds = %bb.g, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ap, %bb.g ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs607s0NAIaWN_7segment.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetINtNtCsexYYUdYSQU6_5alloc3vec3VecReEINtB3_6KeySetB17_E28par_retain_keys_with_indicesNCINvMs1_NtB5_8functionINtB25_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB17_uBA_Es0_0NCB1Y_s1_0NCB1Y_s2_0NCB1Y_s3_0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i = alloca ptr, align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !14 ; 2 uses
  %i.j = icmp ult i64 %i.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.j)
  %i.k = tail call noundef i64 @_RNvXs8_NtCs7coRFmVf0D6_4bitm6bitvecSyNtB5_9BitAccess14count_bit_ones(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5)
  %i.l = sub i64 %i.i, %i.k                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.m = load i64, ptr %i.f, align 8, !range !24, !noundef !14
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !56, !noundef !14 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !14, !noundef !14
  %i.t = icmp ule i64 %i.l, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.p, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.v, align 8
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 3)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5361)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5360
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5361
  call void @_RINvXs0_NtNtCseW0emhgbqwB_5rayon4iter10filter_mapINtB6_9FilterMapINtNtB8_9enumerate9EnumerateINtNtBa_3vec8IntoIterReEENCINvXNtNtCsl6yn9iTqhmQ_2ph4fmph6keysetINtNtCsexYYUdYSQU6_5alloc3vec3VecB1O_EINtB1Y_6KeySetB1O_E28par_retain_keys_with_indicesNCINvMs1_NtB20_8functionINtB43_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1O_uB2v_Es0_0NCB3W_s1_0NCB3W_s2_0NCB3W_s3_0E0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !noalias !5360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5360
  %i.x = load ptr, ptr %i.e, align 8, !noalias !5360, !noundef !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !5360, !noundef !14 ; 4 uses
  store ptr %i.x, ptr %.sroa.0.i, align 8, !noalias !5360
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs607s0NAIaWN_7segment.exit
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ab = icmp ult i64 %i.z, 4
  br i1 %i.ab, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.z, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.av, %.lr.ph.i.i ]
  %.in.i.i = phi ptr [ %.sroa.0.i, %.lr.ph.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ac = load ptr, ptr %.in.i.i, align 1, !noalias !5360 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val.i.i = load i64, ptr %i.ae, align 8, !noalias !5362, !noundef !14 ; 2 uses
  %i.af = icmp ult i64 %.val.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %.val.i.i, %.sroa.0.08.i.i
  %i.ah = load ptr, ptr %i.ad, align 8, !noalias !5360 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val.i.i.1 = load i64, ptr %i.aj, align 8, !noalias !5362, !noundef !14 ; 2 uses
  %i.ak = icmp ult i64 %.val.i.i.1, 576460752303423488
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %.val.i.i.1, %i.ag
  %i.am = load ptr, ptr %i.ai, align 8, !noalias !5360 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val.i.i.2 = load i64, ptr %i.ao, align 8, !noalias !5362, !noundef !14 ; 2 uses
  %i.ap = icmp ult i64 %.val.i.i.2, 576460752303423488
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add i64 %.val.i.i.2, %i.al
  %i.ar = load ptr, ptr %i.an, align 8, !noalias !5360 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %.val.i.i.3 = load i64, ptr %i.at, align 8, !noalias !5362, !noundef !14 ; 2 uses
  %i.au = icmp ult i64 %.val.i.i.3, 576460752303423488
  call void @llvm.assume(i1 %i.au)
  %i.av = add i64 %.val.i.i.3, %i.aq              ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa, label %.lr.ph.i.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.av, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ]
  %.in.i.i.epil.init = phi ptr [ %.sroa.0.i, %.lr.ph.i.i.preheader ], [ %i.as, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4IterINtNtBa_3vec3VecReEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1p_8adapters3map8map_foldRBZ_jjNvMs_B12_BZ_3lenNCINvXsK_NtB1n_5accumjNtB3o_3Sum3sumINtB2p_3MapB3_B2Z_EE0E0ECs607s0NAIaWN_7segment.exit.i.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.08.i.i.epil = phi i64 [ %i.ba, %.lr.ph.i.i.epil ], [ %.sroa.0.08.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.in.i.i.epil = phi ptr [ %i.ax, %.lr.ph.i.i.epil ], [ %.in.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aw = load ptr, ptr %.in.i.i.epil, align 1, !noalias !5360 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
end_hunk_0
