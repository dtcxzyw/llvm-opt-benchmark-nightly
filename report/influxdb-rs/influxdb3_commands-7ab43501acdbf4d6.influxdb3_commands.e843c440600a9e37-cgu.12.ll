Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_commands-7ab43501acdbf4d6.influxdb3_commands.e843c440600a9e37-cgu.12?download=true
inline.NumInlined: 403
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjWl3uGiVprL_18influxdb3_commands:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !83, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #20
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !83, !invariant.load !5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #20
  resume { ptr, i32 } %i.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #20
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsjWl3uGiVprL_18influxdb3_commands.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder14possible_value13PossibleValueECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !92, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.c, align 8, !alias.scope !92, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !92, !nonnull !5, !noundef !5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #20, !noalias !92
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrECsjWl3uGiVprL_18influxdb3_commands.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !4, !alias.scope !93, !noundef !5
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder7builder10styled_str9StyledStrEECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrECsjWl3uGiVprL_18influxdb3_commands.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder10styled_str9StyledStrECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder10styled_str9StyledStrECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder7builder10styled_str9StyledStrEECsjWl3uGiVprL_18influxdb3_commands.exit unwind label %bb.g

.body:                                            ; preds = %bb.g, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.l, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %i.k) #19
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder10styled_str9StyledStrECsjWl3uGiVprL_18influxdb3_commands.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder7builder10styled_str9StyledStrEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrECsjWl3uGiVprL_18influxdb3_commands.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder10styled_str9StyledStrECsjWl3uGiVprL_18influxdb3_commands.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrEECsjWl3uGiVprL_18influxdb3_commands.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder7builder10styled_str9StyledStrEECsjWl3uGiVprL_18influxdb3_commands.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder7builder10styled_str9StyledStrEECsjWl3uGiVprL_18influxdb3_commands.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbyItyepKEh3_12clap_builder7builder3str3StrENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  ret void

bb.j:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsjWl3uGiVprL_18influxdb3_commands(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %0, %1
  br i1 %i.a, label %bb.b, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #21, !noalias !96
  unreachable

_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit: ; preds = %bb.a
  %i.b = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsjWl3uGiVprL_18influxdb3_commands(i64 noundef %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded7channelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEB27_(i64 noundef %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCseCDlJsl44RV_5tokio4sync15batch_semaphoreNtB2_9Semaphore3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, i64 noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %0, ptr %i.b, align 8
  %i.c = call { ptr, ptr } @_RINvNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan7channelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB4_7bounded9SemaphoreEB24_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !align !7, !noundef !5 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !116, !noalias !117, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !115, !noalias !118 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i, %i.h
  br i1 %i.i, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !116, !noalias !117, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !120, !noundef !5 ; 2 uses
  switch i8 %i.n, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !121, !noalias !118
  %exitcond.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 2, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.r, align 1
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !11, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i8 %i.n, 44
  br i1 %i.v, label %bb.h, label %bb.j, !prof !3

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.w, align 1
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.y = icmp ult i64 %i.x, %i.h
  br i1 %i.y, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.z = phi i64 [ %i.ac, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !124, !noundef !5
  switch i8 %i.ab, label %bb.l [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 93, label %bb.k
  ], !prof !125

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ac = add nuw i64 %i.z, 1                     ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !alias.scope !126, !noalias !127
  %exitcond.not.i8 = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 7, ptr %i.a, align 8
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.m

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aj, align 1
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.g, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 0, %bb.g ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9MapAccesspENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !7, !noundef !5 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !147, !noalias !148, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !146, !noalias !149 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !147, !noalias !148, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !151, !noundef !5 ; 3 uses
  switch i8 %i.p, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add nuw i64 %i.n, 1                      ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !152, !noalias !149
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 3, ptr %i.f, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !11, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 44
  br i1 %i.x, label %bb.h, label %bb.j, !prof !3

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !3

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !153
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !155, !noundef !5
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !12

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add nuw i64 %i.ab, 1                    ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !156, !noalias !157
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph.i7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ao, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtNtCsaIKnL9StOw_6anyhow7context3extNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB3_8StdError11ext_contextReECsjWl3uGiVprL_18influxdb3_commands(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs2AWtUsOyxgP_3std9backtraceNtB5_9Backtrace7capture(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error22construct_from_contextReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjWl3uGiVprL_18influxdb3_commands(ptr nonnull %0) #19
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2X_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !192, !noalias !193, !noundef !5 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !194, !noalias !195 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !192, !noalias !193, !nonnull !5, !noundef !5 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !197, !noundef !5
  switch i8 %i.l, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !198, !noalias !195
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i, label %bb.b

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !200
  call void @_RINvXs6_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1V_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !201
  %i.n = load i64, ptr %i.c, align 8, !range !4, !noalias !200, !noundef !5
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !200, !nonnull !5, !align !7, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !201, !noalias !202
  store i64 -2, ptr %0, align 8, !alias.scope !201, !noalias !202
  br label %_RINvXsd_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2b_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i

bb.e:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !202
  br label %_RINvXsd_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2b_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i

_RINvXsd_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2b_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !200
  br label %_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2y_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.f:                                             ; preds = %bb.b
  %i.s = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !203, !noalias !204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !207, !noundef !5
  %i.v = add nuw i64 %i.j, 2                      ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !208, !noalias !209
  %.not.i.i.i = icmp eq i8 %i.u, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !13

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %i.f
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !211, !noundef !5
  %i.y = add nuw i64 %i.j, 3                      ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !212, !noalias !209
  %.not.i.1.i.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !13

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %i.f
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !214, !noundef !5
  %i.ab = add nuw i64 %i.j, 4
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !215, !noalias !209
  %.not.i.2.i.i = icmp eq i8 %i.aa, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i, label %bb.l, !prof !13

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !216
  store i64 5, ptr %i.b, align 8, !noalias !216
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !216
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !216
  store i64 9, ptr %i.a, align 8, !noalias !216
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !216
  br label %bb.m

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i: ; preds = %bb.k
  store i64 -1, ptr %0, align 8, !alias.scope !218, !noalias !219
  br label %_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2y_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.m:                                             ; preds = %bb.l, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ac, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i ], [ %i.ad, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ae, align 8, !alias.scope !204, !noalias !219
  store i64 -2, ptr %0, align 8, !alias.scope !204, !noalias !219
  br label %_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2y_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

_RINvXse_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2y_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %_RINvXsd_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtB6_13OptionVisitorNtNtCscdodAO9FK5_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2b_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_mapINtNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtB2z_3map7HashMapppppENtB1l_11Deserialize11deserialize10MapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB4F_3vec3VecB4B_EINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.48.sroa.2.i = alloca [24 x i8], align 8  ; 6 uses
  %.sroa.13.sroa.5.i = alloca [24 x i8], align 8  ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 14 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !303, !noalias !304, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.s, align 8, !alias.scope !302, !noalias !305 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i, %i.u
  br i1 %i.v, label %.lr.ph.i, label %.loopexit49

.lr.ph.i:                                         ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !303, !noalias !304, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.y = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ab, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !307, !noundef !5
  switch i8 %i.aa, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !14

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add nuw i64 %i.y, 1                     ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !308, !noalias !305
  %exitcond.not.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i, label %.loopexit49, label %bb.b

.loopexit49:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 5, ptr %i.r, align 8
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  br label %bb.bh

bb.d:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 8, !noundef !5
  %i.ag = add i8 %i.af, -1                        ; 2 uses
  store i8 %i.ag, ptr %i.ae, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !10

bb.e:                                             ; preds = %bb.b
  %i.ai = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  br label %bb.bf

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 24, ptr %i.q, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  store ptr null, ptr %0, align 8
  br label %bb.bh

bb.g:                                             ; preds = %bb.d
  %i.al = add i64 %i.y, 1
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !309
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %1, ptr %i.n, align 8, !noalias !310
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 1, ptr %i.am, align 8, !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !310
  call void @_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EEE16with_capacity_inCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, i64 noundef 0), !noalias !311
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.h

common.resume:                                    ; preds = %bb.aw, %.body.i, %bb.be
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.io, %bb.be ], [ %i.ic, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.5.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !315
  invoke fastcc void @_RINvNvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9MapAccesspENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc.i unwind label %.loopexit.i23, !noalias !311

.noexc.i:                                         ; preds = %bb.h
  %i.aw = load i8, ptr %i.g, align 8, !range !11, !noalias !315, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !315, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !315
  br label %.loopexit43.i

bb.j:                                             ; preds = %.noexc.i
  %i.ba = load i8, ptr %i.an, align 1, !range !11, !noalias !315, !noundef !5
  %i.bb = trunc nuw i8 %i.ba to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !315
  br i1 %i.bb, label %bb.k, label %.thread30.i.thread

.thread30.i.thread:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.5.i)
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !315
  %i.bc = load ptr, ptr %i.n, align 8, !alias.scope !316, !noalias !317, !nonnull !5, !align !7, !noundef !5 ; 7 uses
  invoke void @_RINvXs6_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB1U_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bc)
          to label %.noexc15.i unwind label %.loopexit.i23, !noalias !311

.noexc15.i:                                       ; preds = %bb.k
  %i.bd = load i64, ptr %i.f, align 8, !range !4, !noalias !315, !noundef !5 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -1
  %i.bf = load ptr, ptr %i.ao, align 8, !noalias !318 ; 2 uses
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !315
  br label %.loopexit43.i

bb.m:                                             ; preds = %.noexc15.i
  %.sroa.14.0.copyload.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !319
  store i64 %i.bd, ptr %i.i, align 8, !noalias !319
  store ptr %i.bf, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !319
  store i64 %.sroa.14.0.copyload.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !319
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !322, !noalias !323, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !324, !noalias !325 ; 2 uses
  %i.bj = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !322, !noalias !323, !nonnull !5, !noundef !5
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i
  %i.bm = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bp, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !327, !noundef !5
  switch i8 %i.bo, label %bb.p [
    i8 32, label %bb.o
    i8 10, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
    i8 58, label %bb.q
  ], !prof !14

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.bp = add nuw i64 %i.bm, 1                    ; 3 uses
  store i64 %i.bp, ptr %i.bg, align 8, !alias.scope !328, !noalias !325
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bp, %i.bi
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.n

.loopexit.i.i.i.i.i:                              ; preds = %bb.m, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !329
  store i64 3, ptr %i.d, align 8, !noalias !329
  %i.bq = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bc, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp39.i, !noalias !330

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !329
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !329
  store i64 6, ptr %i.e, align 8, !noalias !329
  %i.br = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bc, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp39.i, !noalias !330

.noexc7.i.i.i:                                    ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !329
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.bs = add nuw i64 %i.bm, 1
  store i64 %i.bs, ptr %i.bg, align 8, !alias.scope !331, !noalias !332
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2c_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bc)
          to label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i unwind label %.loopexit38.i, !noalias !330

.loopexit38.i:                                    ; preds = %bb.q
  %lpad.loopexit40.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp39.i:                           ; preds = %bb.p, %.loopexit.i.i.i.i.i
  %lpad.loopexit.split-lp41.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp39.i, %.loopexit38.i
  %lpad.phi42.i = phi { ptr, i32 } [ %lpad.loopexit40.i, %.loopexit38.i ], [ %lpad.loopexit.split-lp41.i, %.loopexit.split-lp39.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %i.i) #19
          to label %.body.i unwind label %bb.u, !noalias !330

_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i: ; preds = %bb.q
  %.pr.i.i.i = load i64, ptr %i.h, align 8, !noalias !319
  %i.bt = icmp eq i64 %.pr.i.i.i, -1
  br i1 %i.bt, label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit._crit_edge.i.i.i, label %bb.v

_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit._crit_edge.i.i.i: ; preds = %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !319
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i.i

_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i.i: ; preds = %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit._crit_edge.i.i.i, %.noexc7.i.i.i, %.noexc.i.i.i
  %i.bu = phi ptr [ %.pre.i.i.i, %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit._crit_edge.i.i.i ], [ %i.bq, %.noexc.i.i.i ], [ %i.br, %.noexc7.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !319
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i unwind label %bb.s, !noalias !330

bb.s:                                             ; preds = %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.t, !noalias !330

bb.t:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !330
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i: ; preds = %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc16.i unwind label %.loopexit.split-lp.i, !noalias !311

.noexc16.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !319
  br label %.loopexit43.i

bb.u:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !330
  unreachable

.loopexit.i23:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i, %bb.k, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.at, %bb.ar, %bb.an, %.loopexit.split-lp.i, %.loopexit.i23, %bb.s, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi42.i, %bb.r ], [ %i.bv, %bb.s ], [ %lpad.phi.i.i, %bb.ar ], [ %i.hw, %bb.at ], [ %i.hc, %bb.an ], [ %lpad.loopexit.i, %.loopexit.i23 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1p_3vec3VecB1l_EENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef 48, i64 noundef 16)
          to label %common.resume unwind label %bb.av, !noalias !311

bb.v:                                             ; preds = %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB2Z_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !319
  %.sroa.025.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !319 ; 3 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !319 ; 11 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !319 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !319
  %i.by = icmp eq i64 %.sroa.025.0.copyload.i, -2
  br i1 %i.by, label %.loopexit43.i, label %.thread30.i

.loopexit43.i:                                    ; preds = %bb.v, %bb.i, %bb.l, %.noexc16.i
  %.sroa.924.029.i = phi ptr [ %i.az, %bb.i ], [ %i.bf, %bb.l ], [ %i.bu, %.noexc16.i ], [ %.sroa.4.0.copyload.i, %bb.v ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.924.029.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.5.i)
  call void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1p_3vec3VecB1l_EENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef 48, i64 noundef 16), !noalias !311
  br label %_RINvXNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtBe_3map7HashMapppppENtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeINtB3_10MapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2Q_3vec3VecB2M_EINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalENtB1z_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB6P_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

.thread30.i:                                      ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.sroa.5.i, i64 24, i1 false), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.5.i)
  %.not.i = icmp eq i64 %.sroa.025.0.copyload.i, -1
  br i1 %.not.i, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.thread30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !310
  store i64 %.sroa.025.0.copyload.i, ptr %i.l, align 8, !noalias !310
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !310
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.sroa.2.i, i64 24, i1 false), !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !310
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !335
  invoke void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !336

.noexc.i.i:                                       ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.bz = load i64, ptr %i.aq, align 8, !alias.scope !342, !noalias !343, !noundef !5
  %i.ca = add i64 %i.bz, %.sroa.5.0.copyload.i
  %i.cb = mul i64 %i.ca, 6364136223846793005      ; 3 uses
  %i.cc = icmp samesign ugt i64 %.sroa.5.0.copyload.i, 8
  br i1 %i.cc, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.noexc.i.i
  %i.cd = icmp samesign ugt i64 %.sroa.5.0.copyload.i, 1
  br i1 %i.cd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = icmp eq i64 %.sroa.5.0.copyload.i, 1
  br i1 %i.ce, label %bb.aa, label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cf = icmp samesign ugt i64 %.sroa.5.0.copyload.i, 3
  %i.cg = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i ; 2 uses
  br i1 %i.cf, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ch = load i8, ptr %.sroa.4.0.copyload.i, align 1, !alias.scope !344, !noalias !345, !noundef !5
  %i.ci = zext i8 %i.ch to i64                    ; 2 uses
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i.i: ; preds = %bb.z
  %.sroa.0.0.copyload.i29.i.i.i.i.i.i = load i16, ptr %.sroa.4.0.copyload.i, align 1, !alias.scope !346, !noalias !347
  %i.cj = zext i16 %.sroa.0.0.copyload.i29.i.i.i.i.i.i to i64
  %i.ck = getelementptr i8, ptr %i.cg, i64 -1
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !344, !noalias !345, !noundef !5
  %i.cm = zext i8 %i.cl to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i.i: ; preds = %bb.z
  %.sroa.0.0.copyload.i31.i.i.i.i.i.i = load i32, ptr %.sroa.4.0.copyload.i, align 1, !alias.scope !346, !noalias !348
  %i.cn = zext i32 %.sroa.0.0.copyload.i31.i.i.i.i.i.i to i64
  %i.co = getelementptr i8, ptr %i.cg, i64 -4
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.co, align 1, !alias.scope !346, !noalias !345
  %i.cp = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i.i

_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i.i, %bb.aa, %bb.y
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %i.cp, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i.i ], [ %i.cm, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i.i ], [ %i.ci, %bb.aa ], [ 0, %bb.y ]
  %.sroa.068.0.i.i.i.i.i.i = phi i64 [ %i.cn, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i.i ], [ %i.cj, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i.i ], [ %i.ci, %bb.aa ], [ 0, %bb.y ]
  %i.cq = load i64, ptr %i.b, align 8, !alias.scope !342, !noalias !343, !noundef !5
  %i.cr = xor i64 %i.cq, %.sroa.068.0.i.i.i.i.i.i
  %i.cs = load i64, ptr %i.ar, align 8, !alias.scope !342, !noalias !343, !noundef !5
  %i.ct = xor i64 %i.cs, %.sroa.7.0.i.i.i.i.i.i
  %i.cu = zext i64 %i.cr to i128
  %i.cv = zext i64 %i.ct to i128
  %i.cw = mul nuw i128 %i.cv, %i.cu               ; 2 uses
  %i.cx = lshr i128 %i.cw, 64
  %i.cy = xor i128 %i.cx, %i.cw
  %i.cz = trunc i128 %i.cy to i64
  %i.da = load i64, ptr %i.as, align 8, !alias.scope !342, !noalias !343, !noundef !5 ; 2 uses
  %i.db = add i64 %i.da, %i.cb
  %i.dc = xor i64 %i.db, %i.cz                    ; 2 uses
  %i.dd = call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 23)
  br label %.loopexit12.i.i

bb.ab:                                            ; preds = %.noexc.i.i
  %i.de = icmp samesign ugt i64 %.sroa.5.0.copyload.i, 16
  br i1 %i.de, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i.i: ; preds = %bb.ab
  %.sroa.0.0.copyload.i33.i.i.i.i.i.i = load i64, ptr %.sroa.4.0.copyload.i, align 1, !alias.scope !346, !noalias !349
  %i.df = getelementptr i8, ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  %i.dg = getelementptr i8, ptr %i.df, i64 -8
  %.sroa.0.0.copyload.i25.i.i.i.i.i.i = load i64, ptr %i.dg, align 1, !alias.scope !346, !noalias !350
  %i.dh = load i64, ptr %i.b, align 8, !alias.scope !342, !noalias !343, !noundef !5
  %i.di = xor i64 %i.dh, %.sroa.0.0.copyload.i33.i.i.i.i.i.i
  %i.dj = load i64, ptr %i.ar, align 8, !alias.scope !342, !noalias !343, !noundef !5
  %i.dk = xor i64 %i.dj, %.sroa.0.0.copyload.i25.i.i.i.i.i.i
  %i.dl = zext i64 %i.di to i128
  %i.dm = zext i64 %i.dk to i128
  %i.dn = mul nuw i128 %i.dm, %i.dl               ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = xor i128 %i.do, %i.dn
  %i.dq = trunc i128 %i.dp to i64
  %i.dr = load i64, ptr %i.as, align 8, !alias.scope !342, !noalias !343, !noundef !5 ; 2 uses
  %i.ds = add i64 %i.dr, %i.cb
  %i.dt = xor i64 %i.ds, %i.dq                    ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_mapINtNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtB2z_3map7HashMapppppENtB1l_11Deserialize11deserialize10MapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB4F_3vec3VecB4B_EINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEECsjWl3uGiVprL_18influxdb3_commands:bb.a
  %.sroa.025.0.copyload26 = load ptr, ptr %i.m, align 8, !noalias !367
  %.sroa.627.0.copyload29 = load ptr, ptr %i.au, align 8, !noalias !367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !noalias !367
  br label %_RINvXNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtBe_3map7HashMapppppENtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeINtB3_10MapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2Q_3vec3VecB2M_EINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalENtB1z_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB6P_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

_RNvMs3_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE6insertCsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i
  %.pr.i = load i64, ptr %i.j, align 8, !alias.scope !368, !noalias !310
  %i.hv = icmp eq i64 %.pr.i, -1
  br i1 %i.hv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i, label %bb.as

bb.as:                                            ; preds = %_RNvMs3_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE6insertCsjWl3uGiVprL_18influxdb3_commands.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i unwind label %bb.at, !noalias !311

bb.at:                                            ; preds = %bb.as
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.au, !noalias !311

bb.au:                                            ; preds = %bb.at
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !311
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i: ; preds = %bb.as
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %.loopexit.i23, !noalias !311

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i, %_RNvMs3_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE6insertCsjWl3uGiVprL_18influxdb3_commands.exit.i, %_RNvMs3_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE6insertCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !310
  br label %bb.h

bb.av:                                            ; preds = %.body.i
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !311
  unreachable

_RINvXNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtBe_3map7HashMapppppENtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeINtB3_10MapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2Q_3vec3VecB2M_EINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalENtB1z_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB6P_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %.loopexit43.i, %.loopexit
  %.sroa.025.0 = phi ptr [ null, %.loopexit43.i ], [ %.sroa.025.0.copyload26, %.loopexit ]
  %.sroa.627.0 = phi ptr [ %.sroa.924.029.i, %.loopexit43.i ], [ %.sroa.627.0.copyload29, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.hz = load i8, ptr %i.ae, align 8, !noundef !5
  %i.ia = add i8 %i.hz, 1
  store i8 %i.ia, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %.sroa.025.0, ptr %i.o, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.627.0, ptr %.sroa.627.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %i.ib = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.ax unwind label %bb.aw     ; 10 uses

bb.aw:                                            ; preds = %_RINvXNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtBe_3map7HashMapppppENtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeINtB3_10MapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2Q_3vec3VecB2M_EINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalENtB1z_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB6P_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1G_3vec3VecB1C_EENtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(32) %i.o) #19
          to label %common.resume unwind label %bb.az

bb.ax:                                            ; preds = %_RINvXNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtBe_3map7HashMapppppENtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeINtB3_10MapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2Q_3vec3VecB2M_EINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalENtB1z_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB6P_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  store ptr %i.ib, ptr %i.id, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ie = load ptr, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not = icmp eq ptr %i.ib, null
  br i1 %.not, label %bb.bg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.ax
  %i.ig = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.not47 = icmp eq ptr %i.ib, null
  br i1 %.not47, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.thread134, label %bb.ba

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.thread: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1p_3vec3VecB1l_EENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.id, i64 noundef 48, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bf

bb.az:                                            ; preds = %bb.aw
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.thread134: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bf

bb.ba:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.ij = load i64, ptr %i.ib, align 8, !range !6, !alias.scope !371, !noundef !5
  switch i64 %i.ij, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit [
    i64 0, label %bb.bb
    i64 1, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.ik, align 8, !alias.scope !371, !noundef !5 ; 2 uses
  %i.il = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.il, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.im = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.im, align 8, !alias.scope !371, !nonnull !5, !noundef !5
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #20, !noalias !371
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit

bb.bd:                                            ; preds = %bb.ba
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.in, align 8, !alias.scope !371, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjWl3uGiVprL_18influxdb3_commands(ptr nonnull %.val2.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ib, i64 noundef 40, i64 noundef 8) #20
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.ba, %bb.bb, %bb.bc, %bb.bd
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ib, i64 noundef 40, i64 noundef 8) #20
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.thread134

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.thread134, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.thread, %bb.e
  %.sroa.8.1 = phi ptr [ %i.ih, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.thread134 ], [ %i.ai, %bb.e ], [ %i.ib, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.thread.thread ]
  %i.ip = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 %.sroa.8.1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ip, ptr %i.iq, align 8
  store ptr null, ptr %0, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ay
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store ptr %i.ie, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.loopexit49, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1l_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB1l_11Deserialize11deserialize10VecVisitorNtNtB2L_6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !387, !noalias !388, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !386, !noalias !389 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i, %i.h
  br i1 %i.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !387, !noalias !388, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !391, !noundef !5
  switch i8 %i.n, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !14

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !392, !noalias !389
  %exitcond.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 5, ptr %i.e, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.s = load i8, ptr %i.r, align 8, !noundef !5
  %i.t = add i8 %i.s, -1                          ; 2 uses
  store i8 %i.t, ptr %i.r, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g, !prof !10

bb.e:                                             ; preds = %bb.b
  %i.v = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22)
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 24, ptr %i.d, align 8
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.g:                                             ; preds = %bb.d
  %i.y = add i64 %i.l, 1
  store i64 %i.y, ptr %i.f, align 8, !alias.scope !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXNvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtBR_6string6StringENtBb_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB2V_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true)
  %i.z = load i8, ptr %i.r, align 8, !noundef !5
  %i.aa = add i8 %i.z, 1
  store i8 %i.aa, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.i unwind label %bb.h       ; 10 uses

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringENtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %i.b) #19
          to label %common.resume unwind label %bb.n

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ab, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = load i64, ptr %i.c, align 8, !range !4, !noundef !5 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.u, label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !align !7, !noundef !5
  %.not52 = icmp eq ptr %i.ab, null
  br i1 %.not52, label %.thread, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread46 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.m

.thread46:                                        ; preds = %bb.k
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.t

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.al = load i64, ptr %i.ab, align 8, !range !6, !alias.scope !396, !noundef !5
  switch i64 %i.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit [
    i64 0, label %bb.p
    i64 1, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !396, !noundef !5 ; 2 uses
  %i.an = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !396, !nonnull !5, !noundef !5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #20, !noalias !396
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit

bb.r:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !396, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjWl3uGiVprL_18influxdb3_commands(ptr nonnull %.val2.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit unwind label %bb.s

common.resume:                                    ; preds = %bb.h, %bb.l, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %i.ac, %bb.h ], [ %i.ai, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 40, i64 noundef 8) #20
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 40, i64 noundef 8) #20
  br label %.thread

bb.t:                                             ; preds = %.thread46, %.thread, %bb.e
  %.sroa.8.1 = phi ptr [ %i.ab, %.thread46 ], [ %i.v, %bb.e ], [ %i.ah, %.thread ]
  %i.ar = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 %.sroa.8.1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ae, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.loopexit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_stringNtNtB1l_5impls13StringVisitorECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !413, !noalias !414, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !415, !noalias !416 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !413, !noalias !414, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !418, !noundef !5 ; 2 uses
  switch i8 %i.m, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add nuw i64 %i.k, 1                      ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !419, !noalias !416
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !420
  %i.o = icmp eq i8 %i.m, 34
  br i1 %i.o, label %bb.d, label %bb.e, !prof !3

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !420
  store i64 5, ptr %i.d, align 8, !noalias !420
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !420
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !410, !noalias !411
  store i64 -1, ptr %0, align 8, !alias.scope !410, !noalias !411
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_strNtNtB1l_5impls13StringVisitorECsjWl3uGiVprL_18influxdb3_commands.exit

bb.d:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit.i
  %i.r = add nuw i64 %i.k, 1
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !421, !noalias !410
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8, !alias.scope !411, !noalias !410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !420
  call void @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !410
  %i.t = load i64, ptr %i.b, align 8, !range !15, !noalias !420, !noundef !5
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !420, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit.i
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !410
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.y, align 8, !alias.scope !410, !noalias !411
  store i64 -1, ptr %0, align 8, !alias.scope !410, !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !420
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_strNtNtB1l_5impls13StringVisitorECsjWl3uGiVprL_18influxdb3_commands.exit

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !420
  call void @_RINvXs4_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %.sroa.4.0.copyload.i), !noalias !410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !420
  %i.z = load i64, ptr %i.c, align 8, !range !4, !noalias !420, !noundef !5
  %i.aa = icmp eq i64 %i.z, -1
  br i1 %i.aa, label %._crit_edge.i, label %bb.i, !prof !10

._crit_edge.i:                                    ; preds = %bb.g
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !420
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.e
  %i.ab = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.x, %bb.e ]
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !410
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !410, !noalias !411
  store i64 -1, ptr %0, align 8, !alias.scope !410, !noalias !411
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !411
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !420
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_strNtNtB1l_5impls13StringVisitorECsjWl3uGiVprL_18influxdb3_commands.exit

_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_strNtNtB1l_5impls13StringVisitorECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %.loopexit.i, %bb.f, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsA_1__NtB2v_26SchedulePluginTestResponseNtB1l_11Deserialize11deserialize9___VisitorECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 14 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.769.i = alloca [16 x i8], align 8        ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 20 uses
  %i.w = alloca [32 x i8], align 8                ; 18 uses
  %i.x = alloca [24 x i8], align 8                ; 21 uses
  %i.y = alloca [24 x i8], align 8                ; 20 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 10 uses
  %i.aj = alloca [24 x i8], align 8               ; 11 uses
  %i.ak = alloca [24 x i8], align 8               ; 11 uses
  %i.al = alloca [16 x i8], align 8               ; 12 uses
  %i.am = alloca [104 x i8], align 8              ; 12 uses
  %i.an = alloca [112 x i8], align 8              ; 9 uses
  %.sroa.34 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.35 = alloca [32 x i8], align 8           ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [104 x i8], align 8              ; 12 uses
  %i.aq = alloca [112 x i8], align 8              ; 9 uses
  %.sroa.16 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.17 = alloca [32 x i8], align 8           ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14 = alloca [88 x i8], align 8           ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !569, !noalias !570, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.at, align 8, !alias.scope !568, !noalias !571 ; 2 uses
  %i.aw = icmp ult i64 %.promoted.i, %i.av
  br i1 %i.aw, label %.lr.ph.i, label %.loopexit101

.lr.ph.i:                                         ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !569, !noalias !570, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.az = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.bc, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !573, !noundef !5 ; 2 uses
  switch i8 %i.bb, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bc = add nuw i64 %i.az, 1                    ; 3 uses
  store i64 %i.bc, ptr %i.at, align 8, !alias.scope !574, !noalias !571
  %exitcond.not.i = icmp eq i64 %i.bc, %i.av
  br i1 %exitcond.not.i, label %.loopexit101, label %bb.b

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  switch i8 %i.bb, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !16

.loopexit101:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 5, ptr %i.as, align 8
  %i.bd = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.fu

bb.d:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit
  %i.bf = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  br label %bb.fr

bb.e:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bh = load i8, ptr %i.bg, align 8, !noundef !5
  %i.bi = add i8 %i.bh, -1                        ; 2 uses
  store i8 %i.bi, ptr %i.bg, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %bb.h, !prof !10

bb.f:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bl = load i8, ptr %i.bk, align 8, !noundef !5
  %i.bm = add i8 %i.bl, -1                        ; 2 uses
  store i8 %i.bm, ptr %i.bk, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.be, label %bb.bf, !prof !10

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 24, ptr %i.ar, align 8
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.ar

bb.h:                                             ; preds = %bb.e
  %i.bp = add i64 %i.az, 1
  store i64 %i.bp, ptr %i.at, align 8, !alias.scope !575
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %1, ptr %i.al, align 8, !noalias !576
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i8 1, ptr %i.bq, align 8, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !576
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !579
  call fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al), !noalias !580
  %i.br = load i8, ptr %i.ah, align 8, !range !11, !noalias !579, !noundef !5
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !579, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !579
  br label %_RINvXs0_NvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsA_1__NtBb_26SchedulePluginTestResponseNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB36_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.j:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !range !11, !noalias !579, !noundef !5
  %i.bx = trunc nuw i8 %i.bw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !579
  br i1 %i.bx, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !579
  %i.by = load ptr, ptr %i.al, align 8, !alias.scope !581, !noalias !582, !nonnull !5, !align !7, !noundef !5
  call fastcc void @_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2X_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef align 8 dereferenceable(64) %i.by), !noalias !583
  %i.bz = load i64, ptr %i.ag, align 8, !range !584, !noalias !579, !noundef !5 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, -2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !585 ; 2 uses
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !579
  br label %_RINvXs0_NvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsA_1__NtBb_26SchedulePluginTestResponseNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB36_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

common.resume.sink.split:                         ; preds = %bb.bc, %bb.fq
  %.sink = phi ptr [ %i.mh, %bb.fq ], [ %i.ef, %bb.bc ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.mt, %bb.fq ], [ %i.et, %bb.bc ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 40, i64 noundef 8) #20
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.fh, %bb.as, %.body256.i, %bb.fb, %bb.fg, %.body.i, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %.pn190.i, %.body256.i ], [ %i.mi, %bb.fh ], [ %i.eb, %bb.ap ], [ %i.eh, %bb.as ], [ %.pn65.i, %.body.i ], [ %i.md, %bb.fb ], [ %.pn190.i, %bb.fg ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !579
  store i64 %i.bz, ptr %i.ak, align 8, !noalias !576
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.cc, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !576
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.12.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !576
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !588
  invoke fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %.noexc.i unwind label %bb.s, !noalias !589

.noexc.i:                                         ; preds = %bb.m
  %i.cd = load i8, ptr %i.af, align 8, !range !11, !noalias !588, !noundef !5
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !588, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !588
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i

bb.o:                                             ; preds = %.noexc.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !range !11, !noalias !588, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !588
  br i1 %i.cj, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !588
  %i.ck = load ptr, ptr %i.al, align 8, !alias.scope !590, !noalias !591, !nonnull !5, !align !7, !noundef !5
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2c_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ck)
          to label %.noexc69.i unwind label %bb.s, !noalias !589

.noexc69.i:                                       ; preds = %bb.p
  %i.cl = load i64, ptr %i.ae, align 8, !range !4, !noalias !588, !noundef !5 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !592 ; 2 uses
  br i1 %i.cm, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.noexc69.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !588
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i

bb.r:                                             ; preds = %bb.j
  %i.cp = tail call noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error14invalid_lengthCsjWl3uGiVprL_18influxdb3_commands(i64 noundef 0, ptr noundef nonnull @17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18), !noalias !589
  br label %_RINvXs0_NvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsA_1__NtBb_26SchedulePluginTestResponseNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB36_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

.body.i:                                          ; preds = %bb.ak, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %bb.s
  %.pn65.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i ], [ %i.cq, %bb.s ], [ %i.dw, %bb.ak ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #19
          to label %common.resume unwind label %bb.an, !noalias !589

bb.s:                                             ; preds = %bb.al, %bb.y, %bb.p, %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.t:                                             ; preds = %.noexc69.i
  %.sroa.1281.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.1281.0.copyload.i = load i64, ptr %.sroa.1281.0..sroa_idx.i, align 8, !noalias !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !588
  store i64 %i.cl, ptr %i.aj, align 8, !noalias !576
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.co, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !576
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  store i64 %.sroa.1281.0.copyload.i, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !576
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !595
  invoke fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %.noexc70.i unwind label %bb.z, !noalias !589

.noexc70.i:                                       ; preds = %bb.t
  %i.cr = load i8, ptr %i.ad, align 8, !range !11, !noalias !595, !noundef !5
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc70.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !595, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !595
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit77.i

bb.v:                                             ; preds = %.noexc70.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !range !11, !noalias !595, !noundef !5
  %i.cx = trunc nuw i8 %i.cw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !595
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsA_1__NtB2v_26SchedulePluginTestResponseNtB1l_11Deserialize11deserialize9___VisitorECsjWl3uGiVprL_18influxdb3_commands:bb.a
  %.sroa.630.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.backedge, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !613
  invoke fastcc void @_RINvNvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9MapAccesspENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %.noexc.i44 unwind label %.loopexit.i41, !noalias !614

.noexc.i44:                                       ; preds = %bb.bg
  %i.fb = load i8, ptr %i.k, align 8, !range !11, !noalias !613, !noundef !5
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.noexc.i44
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !613, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !613
  br label %.loopexit

bb.bi:                                            ; preds = %.noexc.i44
  %i.ff = load i8, ptr %i.ey, align 1, !range !11, !noalias !613, !noundef !5
  %i.fg = trunc nuw i8 %i.ff to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !613
  br i1 %i.fg, label %bb.bj, label %bb.bq

bb.bj:                                            ; preds = %bb.bi
  %i.fh = load ptr, ptr %i.z, align 8, !alias.scope !615, !noalias !616, !nonnull !5, !align !7, !noundef !5 ; 21 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 40 ; 14 uses
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !621, !noalias !622, !noundef !5
  %i.fl = add i64 %i.fk, 1
  store i64 %i.fl, ptr %i.fj, align 8, !alias.scope !621, !noalias !622
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i64 0, ptr %i.fm, align 8, !alias.scope !623, !noalias !622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !624
  invoke void @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fi, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fh)
          to label %.noexc198.i unwind label %.loopexit.i41, !noalias !614

.noexc198.i:                                      ; preds = %bb.bj
  %i.fn = load i64, ptr %i.j, align 8, !range !15, !noalias !624, !noundef !5
  %i.fo = icmp eq i64 %i.fn, 2
  %i.fp = load ptr, ptr %i.ez, align 8, !noalias !624, !nonnull !5, !noundef !5 ; 9 uses
  br i1 %i.fo, label %bb.bp, label %bb.bk

bb.bk:                                            ; preds = %.noexc198.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !624 ; 2 uses
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bv [
    i64 12, label %bb.bl
    i64 9, label %bb.bm
    i64 15, label %bb.bn
    i64 6, label %bb.bo
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.fq = load i64, ptr %i.fp, align 1
  %i.fr = xor i64 %i.fq, 6877671075739169396
  %i.fs = getelementptr i8, ptr %i.fp, i64 8
  %i.ft = load i32, ptr %i.fs, align 1
  %i.fu = zext i32 %i.ft to i64
  %i.fv = xor i64 %i.fu, 1701669236
  %i.fw = or i64 %i.fr, %i.fv
  %i.fx = icmp ne i64 %i.fw, 0
  %i.fy = zext i1 %i.fx to i32
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.br, label %bb.bv

bb.bm:                                            ; preds = %bb.bk
  %i.ga = load i64, ptr %i.fp, align 1
  %i.gb = xor i64 %i.ga, 7308895159446892396
  %i.gc = getelementptr i8, ptr %i.fp, i64 8
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i64
  %i.gf = xor i64 %i.ge, 115
  %i.gg = or i64 %i.gb, %i.gf
  %i.gh = icmp ne i64 %i.gg, 0
  %i.gi = zext i1 %i.gh to i32
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.bs, label %bb.bv

bb.bn:                                            ; preds = %bb.bk
  %i.gk = load i64, ptr %i.fp, align 1
  %i.gl = xor i64 %i.gk, 7310293695322153316
  %i.gm = getelementptr i8, ptr %i.fp, i64 7
  %i.gn = load i64, ptr %i.gm, align 1
  %i.go = xor i64 %i.gn, 8315180283250302821
  %i.gp = or i64 %i.gl, %i.go
  %i.gq = icmp ne i64 %i.gp, 0
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.bt, label %bb.bv

bb.bo:                                            ; preds = %bb.bk
  %i.gt = load i32, ptr %i.fp, align 1
  %i.gu = xor i32 %i.gt, 1869771365
  %i.gv = getelementptr i8, ptr %i.fp, i64 4
  %i.gw = load i16, ptr %i.gv, align 1
  %i.gx = zext i16 %i.gw to i32
  %i.gy = xor i32 %i.gx, 29554
  %i.gz = or i32 %i.gu, %i.gy
  %i.ha = icmp ne i32 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.bu, label %bb.bv

bb.bp:                                            ; preds = %.noexc198.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !624
  br label %.loopexit

.body238.i:                                       ; preds = %bb.du, %.body242.i, %bb.cx, %.body211.i, %.body.i50, %.loopexit.split-lp.i, %.loopexit.i41
  %.sroa.0136.1.ph.i = phi i8 [ %.sroa.0136.4.i, %.body242.i ], [ 1, %bb.cx ], [ 1, %.body211.i ], [ 1, %.body.i50 ], [ %.sroa.0136.6.i, %bb.du ], [ 1, %.loopexit.i41 ], [ %.sroa.0136.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.0138.1.ph.i = phi i8 [ %.sroa.0138.4.i, %.body242.i ], [ 1, %bb.cx ], [ 1, %.body211.i ], [ 1, %.body.i50 ], [ %.sroa.0138.7.i, %bb.du ], [ 1, %.loopexit.i41 ], [ %.sroa.0138.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.0140.1.ph.i = phi i8 [ %.sroa.0140.4.i, %.body242.i ], [ 1, %bb.cx ], [ 1, %.body211.i ], [ 1, %.body.i50 ], [ %.sroa.0140.4.i, %bb.du ], [ 1, %.loopexit.i41 ], [ %.sroa.0140.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pn182.ph.i = phi { ptr, i32 } [ %.pn175.i, %.body242.i ], [ %i.jh, %bb.cx ], [ %eh.lpad-body212.i, %.body211.i ], [ %eh.lpad-body.i, %.body.i50 ], [ %i.kl, %bb.du ], [ %lpad.loopexit.i, %.loopexit.i41 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.v, align 8, !noalias !610
  %.not184.i = icmp eq i64 %.pr.i, -1
  br i1 %.not184.i, label %.body249.i, label %bb.fd

.loopexit.i41:                                    ; preds = %bb.dc, %bb.cu, %bb.ck, %bb.ca, %bb.bv, %bb.bj, %bb.bg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body238.i

.loopexit.split-lp.i:                             ; preds = %.invoke, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i48, %bb.db, %.loopexit.i.i.i224.i, %bb.ct, %.loopexit.i.i.i215.i, %bb.cj, %.loopexit.i.i.i204.i, %bb.bz, %.loopexit.i.i.i.i
  %.sroa.0136.2.ph.i = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 1, %bb.db ], [ 1, %.loopexit.i.i.i224.i ], [ %.sroa.0136.6.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i48 ], [ 1, %bb.ct ], [ 1, %.loopexit.i.i.i215.i ], [ 1, %.invoke ], [ 1, %bb.cj ], [ 1, %bb.bz ], [ 1, %.loopexit.i.i.i204.i ]
  %.sroa.0138.2.ph.i = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 1, %bb.db ], [ 1, %.loopexit.i.i.i224.i ], [ %.sroa.0138.7.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i48 ], [ 1, %bb.ct ], [ 1, %.loopexit.i.i.i215.i ], [ 1, %.invoke ], [ 1, %bb.cj ], [ 1, %bb.bz ], [ 1, %.loopexit.i.i.i204.i ]
  %.sroa.0140.2.ph.i = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 1, %bb.db ], [ 1, %.loopexit.i.i.i224.i ], [ %.sroa.0140.4.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i48 ], [ 1, %bb.ct ], [ 1, %.loopexit.i.i.i215.i ], [ 1, %.invoke ], [ 1, %bb.cj ], [ 1, %bb.bz ], [ 1, %.loopexit.i.i.i204.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body238.i

bb.bq:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !610
  %i.hd = load i64, ptr %i.y, align 8, !range !584, !noalias !610, !noundef !5
  %.not170.i = icmp eq i64 %i.hd, -2
  br i1 %.not170.i, label %bb.dk, label %bb.dj

bb.br:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !624
  %i.he = load i64, ptr %i.y, align 8, !range !584, !noalias !610, !noundef !5
  %.not181.i = icmp eq i64 %i.he, -2
  br i1 %.not181.i, label %bb.bw, label %.invoke, !prof !3

bb.bs:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !624
  %i.hf = load i64, ptr %i.x, align 8, !range !4, !noalias !610, !noundef !5
  %.not180.i = icmp eq i64 %i.hf, -1
  br i1 %.not180.i, label %bb.cg, label %.invoke, !prof !3

bb.bt:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !624
  %i.hg = load ptr, ptr %i.w, align 8, !noalias !610, !noundef !5
  %.not179.i = icmp eq ptr %i.hg, null
  br i1 %.not179.i, label %bb.cq, label %.invoke, !prof !3

bb.bu:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !624
  %i.hh = load i64, ptr %i.v, align 8, !range !4, !noalias !610, !noundef !5
  %.not178.i = icmp eq i64 %i.hh, -1
  br i1 %.not178.i, label %bb.cy, label %.invoke, !prof !3

bb.bv:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !624
  %i.hi = invoke fastcc noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsjWl3uGiVprL_18influxdb3_commands(ptr nonnull %i.fh)
          to label %bb.di unwind label %.loopexit.i41, !noalias !614 ; 2 uses

bb.bw:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !610
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !627, !noalias !628, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.fj, align 8, !alias.scope !629, !noalias !630 ; 2 uses
  %i.hl = icmp ult i64 %.promoted.i.i.i.i.i, %i.hk
  br i1 %i.hl, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bw
  %i.hm = load ptr, ptr %i.fi, align 8, !alias.scope !627, !noalias !628, !nonnull !5, !noundef !5
  br label %bb.bx

bb.bx:                                            ; preds = %bb.by, %.lr.ph.i.i.i.i.i
  %i.hn = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.hq, %bb.by ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !noalias !632, !noundef !5
  switch i8 %i.hp, label %bb.bz [
    i8 32, label %bb.by
    i8 10, label %bb.by
    i8 9, label %bb.by
    i8 13, label %bb.by
    i8 58, label %bb.ca
  ], !prof !14

bb.by:                                            ; preds = %bb.bx, %bb.bx, %bb.bx, %bb.bx
  %i.hq = add nuw i64 %i.hn, 1                    ; 3 uses
  store i64 %i.hq, ptr %i.fj, align 8, !alias.scope !633, !noalias !630
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.hq, %i.hk
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bx

.loopexit.i.i.i.i:                                ; preds = %bb.bw, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !634
  store i64 3, ptr %i.h, align 8, !noalias !634
  %i.hr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc199.i unwind label %.loopexit.split-lp.i, !noalias !614

.noexc199.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !634
  br label %.loopexit301.i

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !634
  store i64 6, ptr %i.i, align 8, !noalias !634
  %i.hs = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc200.i unwind label %.loopexit.split-lp.i, !noalias !614

.noexc200.i:                                      ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !634
  br label %.loopexit301.i

bb.ca:                                            ; preds = %bb.bx
  %i.ht = add nuw i64 %i.hn, 1
  store i64 %i.ht, ptr %i.fj, align 8, !alias.scope !635, !noalias !636
  invoke fastcc void @_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2X_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef align 8 dereferenceable(64) %i.fh)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %.loopexit.i41, !noalias !614

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.ca
  %.pr290.i = load i64, ptr %i.u, align 8, !noalias !610 ; 3 uses
  %i.hu = icmp eq i64 %.pr290.i, -2
  %.pre472.i = load ptr, ptr %.sroa.4143.0..sroa_idx.i, align 8, !noalias !610 ; 3 uses
  br i1 %i.hu, label %.loopexit301.i, label %bb.cb

.loopexit301.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %.noexc200.i, %.noexc199.i
  %i.hv = phi ptr [ %i.hs, %.noexc200.i ], [ %i.hr, %.noexc199.i ], [ %.pre472.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !610
  br label %.loopexit

bb.cb:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  %.sroa.5144.0.copyload.i = load i64, ptr %.sroa.5144.0..sroa_idx.i, align 8, !noalias !610 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !610
  %i.hw = load i64, ptr %i.y, align 8, !range !584, !alias.scope !637, !noalias !610, !noundef !5
  %switch.i.i = icmp ugt i64 %i.hw, -3
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i unwind label %bb.cd, !noalias !614

bb.cd:                                            ; preds = %bb.cc
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i50 unwind label %bb.ce, !noalias !614

bb.ce:                                            ; preds = %bb.cd
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !614
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i: ; preds = %bb.cc
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %bb.cf, !noalias !614

bb.cf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i50

.body.i50:                                        ; preds = %bb.cf, %bb.cd
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hz, %bb.cf ], [ %i.hx, %bb.cd ]
  store i64 %.pr290.i, ptr %i.y, align 8, !noalias !610
  store ptr %.pre472.i, ptr %.sroa.630.0..sroa_idx31.i, align 8, !noalias !610
  store i64 %.sroa.5144.0.copyload.i, ptr %.sroa.7.0..sroa_idx33.i, align 8, !noalias !610
  br label %.body238.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i, %bb.cb
  store i64 %.pr290.i, ptr %i.y, align 8, !noalias !610
  store ptr %.pre472.i, ptr %.sroa.630.0..sroa_idx31.i, align 8, !noalias !610
  store i64 %.sroa.5144.0.copyload.i, ptr %.sroa.7.0..sroa_idx33.i, align 8, !noalias !610
  br label %.backedge

bb.cg:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !610
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !640, !noalias !641, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i203.i = load i64, ptr %i.fj, align 8, !alias.scope !642, !noalias !643 ; 2 uses
  %i.ic = icmp ult i64 %.promoted.i.i.i.i203.i, %i.ib
  br i1 %i.ic, label %.lr.ph.i.i.i.i206.i, label %.loopexit.i.i.i204.i

.lr.ph.i.i.i.i206.i:                              ; preds = %bb.cg
  %i.id = load ptr, ptr %i.fi, align 8, !alias.scope !640, !noalias !641, !nonnull !5, !noundef !5
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %.lr.ph.i.i.i.i206.i
  %i.ie = phi i64 [ %.promoted.i.i.i.i203.i, %.lr.ph.i.i.i.i206.i ], [ %i.ih, %bb.ci ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !noalias !645, !noundef !5
  switch i8 %i.ig, label %bb.cj [
    i8 32, label %bb.ci
    i8 10, label %bb.ci
    i8 9, label %bb.ci
    i8 13, label %bb.ci
    i8 58, label %bb.ck
  ], !prof !14

bb.ci:                                            ; preds = %bb.ch, %bb.ch, %bb.ch, %bb.ch
  %i.ih = add nuw i64 %i.ie, 1                    ; 3 uses
  store i64 %i.ih, ptr %i.fj, align 8, !alias.scope !646, !noalias !643
  %exitcond.not.i.i.i.i207.i = icmp eq i64 %i.ih, %i.ib
  br i1 %exitcond.not.i.i.i.i207.i, label %.loopexit.i.i.i204.i, label %bb.ch

.loopexit.i.i.i204.i:                             ; preds = %bb.cg, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !647
  store i64 3, ptr %i.f, align 8, !noalias !647
  %i.ii = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc208.i unwind label %.loopexit.split-lp.i, !noalias !614

.noexc208.i:                                      ; preds = %.loopexit.i.i.i204.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !647
  br label %.loopexit299.i

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !647
  store i64 6, ptr %i.g, align 8, !noalias !647
  %i.ij = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc209.i unwind label %.loopexit.split-lp.i, !noalias !614

.noexc209.i:                                      ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !647
  br label %.loopexit299.i

bb.ck:                                            ; preds = %bb.ch
  %i.ik = add nuw i64 %i.ie, 1
  store i64 %i.ik, ptr %i.fj, align 8, !alias.scope !648, !noalias !649
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2c_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fh)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %.loopexit.i41, !noalias !614

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.ck
  %.pr291.i = load i64, ptr %i.t, align 8, !noalias !610 ; 3 uses
  %i.il = icmp eq i64 %.pr291.i, -1
  %.pre471.i = load ptr, ptr %.sroa.4146.0..sroa_idx.i, align 8, !noalias !610 ; 3 uses
  br i1 %i.il, label %.loopexit299.i, label %bb.cl

.loopexit299.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %.noexc209.i, %.noexc208.i
  %i.im = phi ptr [ %i.ij, %.noexc209.i ], [ %i.ii, %.noexc208.i ], [ %.pre471.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !610
  br label %.loopexit

bb.cl:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  %.sroa.5147.0.copyload.i = load i64, ptr %.sroa.5147.0..sroa_idx.i, align 8, !noalias !610 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !610
  %i.in = load i64, ptr %i.x, align 8, !range !4, !alias.scope !650, !noalias !610, !noundef !5
  %i.io = icmp eq i64 %i.in, -1
  br i1 %i.io, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i unwind label %bb.cn, !noalias !614

bb.cn:                                            ; preds = %bb.cm
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body211.i unwind label %bb.co, !noalias !614

bb.co:                                            ; preds = %bb.cn
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !614
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i: ; preds = %bb.cm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %bb.cp, !noalias !614

bb.cp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body211.i

.body211.i:                                       ; preds = %bb.cp, %bb.cn
  %eh.lpad-body212.i = phi { ptr, i32 } [ %i.ir, %bb.cp ], [ %i.ip, %bb.cn ]
  store i64 %.pr291.i, ptr %i.x, align 8, !noalias !610
  store ptr %.pre471.i, ptr %.sroa.648.0..sroa_idx49.i, align 8, !noalias !610
  store i64 %.sroa.5147.0.copyload.i, ptr %.sroa.751.0..sroa_idx52.i, align 8, !noalias !610
  br label %.body238.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i, %bb.cl
  store i64 %.pr291.i, ptr %i.x, align 8, !noalias !610
  store ptr %.pre471.i, ptr %.sroa.648.0..sroa_idx49.i, align 8, !noalias !610
  store i64 %.sroa.5147.0.copyload.i, ptr %.sroa.751.0..sroa_idx52.i, align 8, !noalias !610
  br label %.backedge

bb.cq:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.769.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !610
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.is = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !653, !noalias !654, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i214.i = load i64, ptr %i.fj, align 8, !alias.scope !655, !noalias !656 ; 2 uses
  %i.iu = icmp ult i64 %.promoted.i.i.i.i214.i, %i.it
  br i1 %i.iu, label %.lr.ph.i.i.i.i217.i, label %.loopexit.i.i.i215.i

.lr.ph.i.i.i.i217.i:                              ; preds = %bb.cq
  %i.iv = load ptr, ptr %i.fi, align 8, !alias.scope !653, !noalias !654, !nonnull !5, !noundef !5
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cs, %.lr.ph.i.i.i.i217.i
  %i.iw = phi i64 [ %.promoted.i.i.i.i214.i, %.lr.ph.i.i.i.i217.i ], [ %i.iz, %bb.cs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !658, !noundef !5
  switch i8 %i.iy, label %bb.ct [
    i8 32, label %bb.cs
    i8 10, label %bb.cs
    i8 9, label %bb.cs
    i8 13, label %bb.cs
    i8 58, label %bb.cu
  ], !prof !14

bb.cs:                                            ; preds = %bb.cr, %bb.cr, %bb.cr, %bb.cr
  %i.iz = add nuw i64 %i.iw, 1                    ; 3 uses
  store i64 %i.iz, ptr %i.fj, align 8, !alias.scope !659, !noalias !656
  %exitcond.not.i.i.i.i218.i = icmp eq i64 %i.iz, %i.it
  br i1 %exitcond.not.i.i.i.i218.i, label %.loopexit.i.i.i215.i, label %bb.cr

.loopexit.i.i.i215.i:                             ; preds = %bb.cq, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !660
  store i64 3, ptr %i.d, align 8, !noalias !660
  %i.ja = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc219.i unwind label %.loopexit.split-lp.i, !noalias !614

.noexc219.i:                                      ; preds = %.loopexit.i.i.i215.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !660
  br label %.loopexit297.i

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !660
  store i64 6, ptr %i.e, align 8, !noalias !660
  %i.jb = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc220.i unwind label %.loopexit.split-lp.i, !noalias !614

.noexc220.i:                                      ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !660
  br label %.loopexit297.i

bb.cu:                                            ; preds = %bb.cr
  %i.jc = add nuw i64 %i.iw, 1
  store i64 %i.jc, ptr %i.fj, align 8, !alias.scope !661, !noalias !662
  invoke void @_RINvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtBb_3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1t_3vec3VecB1p_EENtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB3q_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fh)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %.loopexit.i41, !noalias !614

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.cu
  %.pr292.i = load ptr, ptr %i.s, align 8, !noalias !610 ; 3 uses
  %i.jd = icmp eq ptr %.pr292.i, null
  %.pre470.i = load ptr, ptr %.sroa.4149.0..sroa_idx.i, align 8, !noalias !610 ; 3 uses
  br i1 %i.jd, label %.loopexit297.i, label %bb.cv

.loopexit297.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %.noexc220.i, %.noexc219.i
  %i.je = phi ptr [ %i.jb, %.noexc220.i ], [ %i.ja, %.noexc219.i ], [ %.pre470.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.i)
  br label %.loopexit

bb.cv:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5150.0..sroa_idx.i, i64 16, i1 false), !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !610
  %i.jf = load ptr, ptr %i.w, align 8, !alias.scope !663, !noalias !610, !noundef !5
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1G_3vec3VecB1C_EEEECsjWl3uGiVprL_18influxdb3_commands.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1p_3vec3VecB1l_EENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fa, i64 noundef 48, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1G_3vec3VecB1C_EEEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %bb.cx, !noalias !614

bb.cx:                                            ; preds = %bb.cw
  %i.jh = landingpad { ptr, i32 }
          cleanup
  store ptr %.pr292.i, ptr %i.w, align 8, !noalias !610
  store ptr %.pre470.i, ptr %.sroa.666.0..sroa_idx67.i, align 8, !noalias !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.0..sroa_idx70.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.i, i64 16, i1 false), !noalias !610
  br label %.body238.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1G_3vec3VecB1C_EEEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.cw, %bb.cv
  store ptr %.pr292.i, ptr %i.w, align 8, !noalias !610
  store ptr %.pre470.i, ptr %.sroa.666.0..sroa_idx67.i, align 8, !noalias !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.0..sroa_idx70.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.i, i64 16, i1 false), !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.769.i)
  br label %.backedge

.invoke:                                          ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %i.ji = phi ptr [ @14, %bb.bt ], [ @13, %bb.bs ], [ @12, %bb.br ], [ @15, %bb.bu ]
  %i.jj = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error15duplicate_fieldCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ji, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !noalias !614

bb.cy:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !610
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.jl = load i64, ptr %i.jk, align 8, !alias.scope !666, !noalias !667, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i223.i = load i64, ptr %i.fj, align 8, !alias.scope !668, !noalias !669 ; 2 uses
  %i.jm = icmp ult i64 %.promoted.i.i.i.i223.i, %i.jl
  br i1 %i.jm, label %.lr.ph.i.i.i.i226.i, label %.loopexit.i.i.i224.i

.lr.ph.i.i.i.i226.i:                              ; preds = %bb.cy
  %i.jn = load ptr, ptr %i.fi, align 8, !alias.scope !666, !noalias !667, !nonnull !5, !noundef !5
  br label %bb.cz

bb.cz:                                            ; preds = %bb.da, %.lr.ph.i.i.i.i226.i
  %i.jo = phi i64 [ %.promoted.i.i.i.i223.i, %.lr.ph.i.i.i.i226.i ], [ %i.jr, %bb.da ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !noalias !671, !noundef !5
  switch i8 %i.jq, label %bb.db [
    i8 32, label %bb.da
    i8 10, label %bb.da
    i8 9, label %bb.da
    i8 13, label %bb.da
    i8 58, label %bb.dc
  ], !prof !14

bb.da:                                            ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz
  %i.jr = add nuw i64 %i.jo, 1                    ; 3 uses
  store i64 %i.jr, ptr %i.fj, align 8, !alias.scope !672, !noalias !669
  %exitcond.not.i.i.i.i227.i = icmp eq i64 %i.jr, %i.jl
  br i1 %exitcond.not.i.i.i.i227.i, label %.loopexit.i.i.i224.i, label %bb.cz

.loopexit.i.i.i224.i:                             ; preds = %bb.cy, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !673
  store i64 3, ptr %i.b, align 8, !noalias !673
  %i.js = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc228.i unwind label %.loopexit.split-lp.i, !noalias !614

.noexc228.i:                                      ; preds = %.loopexit.i.i.i224.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !673
  br label %.loopexit295.i

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !673
  store i64 6, ptr %i.c, align 8, !noalias !673
  %i.jt = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc229.i unwind label %.loopexit.split-lp.i, !noalias !614

.noexc229.i:                                      ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !673
  br label %.loopexit295.i

bb.dc:                                            ; preds = %bb.cz
  %i.ju = add nuw i64 %i.jo, 1
  store i64 %i.ju, ptr %i.fj, align 8, !alias.scope !674, !noalias !675
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2c_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.fh)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit231.i unwind label %.loopexit.i41, !noalias !614

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit231.i: ; preds = %bb.dc
  %.pr293.i = load i64, ptr %i.r, align 8, !noalias !610 ; 3 uses
  %i.jv = icmp eq i64 %.pr293.i, -1
  %.pre.i = load ptr, ptr %.sroa.4152.0..sroa_idx.i, align 8, !noalias !610 ; 3 uses
  br i1 %i.jv, label %.loopexit295.i, label %bb.dd

.loopexit295.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit231.i, %.noexc229.i, %.noexc228.i
  %i.jw = phi ptr [ %i.jt, %.noexc229.i ], [ %i.js, %.noexc228.i ], [ %.pre.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit231.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !610
  br label %.loopexit

bb.dd:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit231.i
  %.sroa.5153.0.copyload.i = load i64, ptr %.sroa.5153.0..sroa_idx.i, align 8, !noalias !610 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !610
  %i.jx = load i64, ptr %i.v, align 8, !range !4, !alias.scope !676, !noalias !610, !noundef !5
  %i.jy = icmp eq i64 %i.jx, -1
  br i1 %i.jy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit237.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i233.i unwind label %bb.df, !noalias !614

bb.df:                                            ; preds = %bb.de
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.thread.i unwind label %bb.dg, !noalias !614

bb.dg:                                            ; preds = %bb.df
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !614
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i233.i: ; preds = %bb.de
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit237.i unwind label %bb.dh, !noalias !614

bb.dh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i233.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread.i:                                        ; preds = %bb.dh, %bb.df
  %eh.lpad-body235.i = phi { ptr, i32 } [ %i.kb, %bb.dh ], [ %i.jz, %bb.df ]
  store i64 %.pr293.i, ptr %i.v, align 8, !noalias !610
  store ptr %.pre.i, ptr %.sroa.684.0..sroa_idx85.i, align 8, !noalias !610
  store i64 %.sroa.5153.0.copyload.i, ptr %.sroa.787.0..sroa_idx88.i, align 8, !noalias !610
  br label %bb.fd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit237.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i233.i, %bb.dd
  store i64 %.pr293.i, ptr %i.v, align 8, !noalias !610
  store ptr %.pre.i, ptr %.sroa.684.0..sroa_idx85.i, align 8, !noalias !610
  store i64 %.sroa.5153.0.copyload.i, ptr %.sroa.787.0..sroa_idx88.i, align 8, !noalias !610
  br label %.backedge

bb.di:                                            ; preds = %bb.bv
  %.not177.i = icmp eq ptr %i.hi, null
  br i1 %.not177.i, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.di, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit237.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1G_3vec3VecB1C_EEEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCscdodAO9FK5_5alloc6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  br label %bb.bg

bb.dj:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !610
  br label %bb.dl

bb.dk:                                            ; preds = %bb.bq
  store i64 -1, ptr %i.q, align 8, !noalias !610
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sroa.0140.4.i = phi i8 [ 0, %bb.dj ], [ 1, %bb.dk ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !610
  %i.kc = load i64, ptr %i.x, align 8, !range !4, !noalias !610, !noundef !5
  %.not171.i = icmp eq i64 %i.kc, -1
  br i1 %.not171.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !610
  br label %bb.ds

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !610
  invoke void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtB3y_6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 9)
          to label %bb.dp unwind label %bb.do, !noalias !614

.body242.i:                                       ; preds = %bb.ed, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45, %bb.do
  %.sroa.0136.4.i = phi i8 [ %.sroa.0136.7.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45 ], [ %.sroa.0136.5.i, %bb.do ], [ %.sroa.0136.10.i, %bb.ed ]
  %.sroa.0138.4.i = phi i8 [ %.sroa.0138.6.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45 ], [ %.sroa.0138.5.i, %bb.do ], [ %.sroa.0138.6.i, %bb.ed ]
  %.pn175.i = phi { ptr, i32 } [ %.pn.i46, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45 ], [ %i.kd, %bb.do ], [ %i.kt, %bb.ed ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %i.q) #19
          to label %.body238.i unwind label %bb.en, !noalias !614

bb.do:                                            ; preds = %bb.ee, %bb.dn
  %.sroa.0136.5.i = phi i8 [ %.sroa.0136.10.i, %bb.ee ], [ 1, %bb.dn ]
  %.sroa.0138.5.i = phi i8 [ %.sroa.0138.6.i, %bb.ee ], [ 1, %bb.dn ]
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body242.i

bb.dp:                                            ; preds = %bb.dn
  %i.ke = load i64, ptr %i.o, align 8, !range !4, !noalias !610, !noundef !5 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, -1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !610 ; 2 uses
  br i1 %i.kf, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !610
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i47

bb.dr:                                            ; preds = %bb.dp
  %.sroa.5162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5162.0.copyload.i = load i64, ptr %.sroa.5162.0..sroa_idx.i, align 8, !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !610
  store i64 %i.ke, ptr %i.p, align 8, !noalias !610
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !610
  %.sroa.5.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.5162.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i49, align 8, !noalias !610
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dm
  %.sroa.0138.6.i = phi i8 [ 0, %bb.dm ], [ 1, %bb.dr ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !610
  %i.ki = load ptr, ptr %i.w, align 8, !noalias !610, !noundef !5
  %.not172.i = icmp eq ptr %i.ki, null
  br i1 %.not172.i, label %bb.dx, label %bb.dw

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i47: ; preds = %bb.ee, %bb.dq
  %.sroa.18.1 = phi ptr [ %i.kh, %bb.dq ], [ %.sroa.18.0, %bb.ee ]
  %.sroa.0136.6.i = phi i8 [ 1, %bb.dq ], [ %.sroa.0136.10.i, %bb.ee ] ; 3 uses
  %.sroa.0138.7.i = phi i8 [ 1, %bb.dq ], [ %.sroa.0138.6.i, %bb.ee ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !610
  %i.kj = load i64, ptr %i.q, align 8, !range !4, !alias.scope !677, !noalias !610, !noundef !5
  %i.kk = icmp eq i64 %i.kj, -1
  br i1 %i.kk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i, label %bb.dt

bb.dt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i47
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i48 unwind label %bb.du, !noalias !614

bb.du:                                            ; preds = %bb.dt
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body238.i unwind label %bb.dv, !noalias !614

bb.dv:                                            ; preds = %bb.du
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !614
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i48: ; preds = %bb.dt
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %.loopexit.split-lp.i, !noalias !614

bb.dw:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !610
  br label %bb.ec

bb.dx:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !610
  invoke void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyINtNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtB3m_3map7HashMapppppENtB28_11Deserialize11deserialize10MapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB5s_3vec3VecB5o_EINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 15)
          to label %bb.dz unwind label %bb.dy, !noalias !614

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45: ; preds = %bb.ei, %bb.dy
  %.sroa.0136.7.i = phi i8 [ %.sroa.0136.8.i, %bb.dy ], [ %.sroa.0136.9.i, %bb.ei ]
  %.pn.i46 = phi { ptr, i32 } [ %i.kn, %bb.dy ], [ %i.kv, %bb.ei ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %i.p) #19
          to label %.body242.i unwind label %bb.en, !noalias !614

bb.dy:                                            ; preds = %bb.ek, %bb.dx
  %.sroa.0136.8.i = phi i8 [ %.sroa.0136.9.i, %bb.ek ], [ 1, %bb.dx ]
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45

bb.dz:                                            ; preds = %bb.dx
  %i.ko = load ptr, ptr %i.m, align 8, !noalias !610, !noundef !5 ; 2 uses
  %i.kp = icmp eq ptr %i.ko, null
  %i.kq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !610 ; 2 uses
  br i1 %i.kp, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !610
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit246.i

bb.eb:                                            ; preds = %bb.dz
  %.sroa.5165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5111.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5165.0..sroa_idx.i, i64 16, i1 false), !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !610
end_hunk_2
begin_hunk_3_@_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsA_1__NtB2v_26SchedulePluginTestResponseNtB1l_11Deserialize11deserialize9___VisitorECsjWl3uGiVprL_18influxdb3_commands:bb.a
  %i.mg = add i8 %i.mf, 1
  store i8 %i.mg, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 %.sroa.065.3, ptr %i.am, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.18.3, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.31.0, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.3171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %.sroa.3171.0, ptr %.sroa.3171.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %.sroa.32.0, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %.sroa.33.0, ptr %.sroa.33.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.34, i64 24, i1 false)
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.35.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.35, i64 32, i1 false)
  %i.mh = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.fi unwind label %bb.fh     ; 10 uses

bb.fh:                                            ; preds = %_RINvXs0_NvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsA_1__NtBb_26SchedulePluginTestResponseNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB36_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit
  %i.mi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(104) %i.am) #19
          to label %common.resume unwind label %bb.ax

bb.fi:                                            ; preds = %_RINvXs0_NvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsA_1__NtBb_26SchedulePluginTestResponseNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1s_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB36_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.an, ptr noundef nonnull align 8 dereferenceable(104) %i.am, i64 104, i1 false)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  store ptr %i.mh, ptr %i.mj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.mk = load i64, ptr %i.an, align 8, !range !4, !noundef !5 ; 4 uses
  %i.ml = icmp eq i64 %i.mk, -1
  br i1 %i.ml, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %.not = icmp eq ptr %i.mh, null
  br i1 %.not, label %.thread316, label %bb.fl

.thread316:                                       ; preds = %bb.fj
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.522.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  br label %.thread88

bb.fk:                                            ; preds = %bb.fi
  %i.mm = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  %.not95 = icmp eq ptr %i.mh, null
  br i1 %.not95, label %.thread88, label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types4http26SchedulePluginTestResponseECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(104) %i.an)
  br label %.thread88

.thread88:                                        ; preds = %.thread316, %bb.fl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit54, %bb.fk
  %.sroa.09.294 = phi i64 [ %i.mk, %bb.fk ], [ %i.mk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit54 ], [ -1, %bb.fl ], [ %i.mk, %.thread316 ]
  %.sroa.10.293 = phi ptr [ %i.mn, %bb.fk ], [ %i.mn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit54 ], [ %i.mh, %bb.fl ], [ %.sroa.421.0.copyload, %.thread316 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.bd

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.mo = load i64, ptr %i.mh, align 8, !range !6, !alias.scope !681, !noundef !5
  switch i64 %i.mo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit54 [
    i64 0, label %bb.fn
    i64 1, label %bb.fp
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %.val1.i.i.i.i52 = load i64, ptr %i.mp, align 8, !alias.scope !681, !noundef !5 ; 2 uses
  %i.mq = icmp eq i64 %.val1.i.i.i.i52, 0
  br i1 %i.mq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit54, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %.val.i.i.i.i53 = load ptr, ptr %i.mr, align 8, !alias.scope !681, !nonnull !5, !noundef !5
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i53, i64 noundef range(i64 1, 0) %.val1.i.i.i.i52, i64 noundef 1) #20, !noalias !681
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit54

bb.fp:                                            ; preds = %bb.fm
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %.val2.i.i.i.i51 = load ptr, ptr %i.ms, align 8, !alias.scope !681, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjWl3uGiVprL_18influxdb3_commands(ptr nonnull %.val2.i.i.i.i51)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit54 unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit54: ; preds = %bb.fm, %bb.fn, %bb.fo, %bb.fp
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mh, i64 noundef 40, i64 noundef 8) #20
  br label %.thread88

bb.fr:                                            ; preds = %bb.d, %bb.bd
  %.sroa.10.3 = phi ptr [ %.sroa.10.1, %bb.bd ], [ %i.bf, %bb.d ]
  %i.mu = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mu, ptr %i.mv, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ft

bb.fs:                                            ; preds = %bb.bd
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, i64 88, i1 false)
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.loopexit101, %bb.ar
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsw_1__NtB2v_21WalPluginTestResponseNtB1l_11Deserialize11deserialize9___VisitorECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 12 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 14 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.746.i = alloca [16 x i8], align 8        ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 20 uses
  %i.s = alloca [32 x i8], align 8                ; 18 uses
  %i.t = alloca [24 x i8], align 8                ; 20 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 10 uses
  %i.ad = alloca [16 x i8], align 8               ; 10 uses
  %i.ae = alloca [80 x i8], align 8               ; 11 uses
  %i.af = alloca [88 x i8], align 8               ; 9 uses
  %.sroa.30 = alloca [32 x i8], align 8           ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [80 x i8], align 8               ; 11 uses
  %i.ai = alloca [88 x i8], align 8               ; 9 uses
  %.sroa.1462 = alloca [32 x i8], align 8         ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14 = alloca [64 x i8], align 8           ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !801, !noalias !802, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.al, align 8, !alias.scope !800, !noalias !803 ; 2 uses
  %i.ao = icmp ult i64 %.promoted.i, %i.an
  br i1 %i.ao, label %.lr.ph.i, label %.loopexit98

.lr.ph.i:                                         ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !801, !noalias !802, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ar = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.au, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !805, !noundef !5 ; 2 uses
  switch i8 %i.at, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.au = add nuw i64 %i.ar, 1                    ; 3 uses
  store i64 %i.au, ptr %i.al, align 8, !alias.scope !806, !noalias !803
  %exitcond.not.i = icmp eq i64 %i.au, %i.an
  br i1 %exitcond.not.i, label %.loopexit98, label %bb.b

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  switch i8 %i.at, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !16

.loopexit98:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 5, ptr %i.ak, align 8
  %i.av = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ep

bb.d:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit
  %i.ax = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  br label %bb.em

bb.e:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.az = load i8, ptr %i.ay, align 8, !noundef !5
  %i.ba = add i8 %i.az, -1                        ; 2 uses
  store i8 %i.ba, ptr %i.ay, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %bb.h, !prof !10

bb.f:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bd = load i8, ptr %i.bc, align 8, !noundef !5
  %i.be = add i8 %i.bd, -1                        ; 2 uses
  store i8 %i.be, ptr %i.bc, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.at, label %bb.au, !prof !10

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 24, ptr %i.aj, align 8
  %i.bg = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ag

bb.h:                                             ; preds = %bb.e
  %i.bh = add i64 %i.ar, 1
  store i64 %i.bh, ptr %i.al, align 8, !alias.scope !807
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1462)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %1, ptr %i.ad, align 8, !noalias !808
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i8 1, ptr %i.bi, align 8, !noalias !808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !811
  call fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad), !noalias !812
  %i.bj = load i8, ptr %i.aa, align 8, !range !11, !noalias !811, !noundef !5
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !811, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !811
  br label %_RINvXs0_NvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsw_1__NtBb_21WalPluginTestResponseNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB31_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !range !11, !noalias !811, !noundef !5
  %i.bp = trunc nuw i8 %i.bo to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !811
  br i1 %i.bp, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !811
  %i.bq = load ptr, ptr %i.ad, align 8, !alias.scope !813, !noalias !814, !nonnull !5, !align !7, !noundef !5
  call void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2c_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bq), !noalias !815
  %i.br = load i64, ptr %i.z, align 8, !range !4, !noalias !811, !noundef !5 ; 2 uses
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !816 ; 2 uses
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !811
  br label %_RINvXs0_NvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsw_1__NtBb_21WalPluginTestResponseNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB31_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

common.resume.sink.split:                         ; preds = %bb.ar, %bb.el
  %.sink = phi ptr [ %i.kv, %bb.el ], [ %i.df, %bb.ar ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.lh, %bb.el ], [ %i.dt, %bb.ar ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 40, i64 noundef 8) #20
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.ec, %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit201.i, %bb.dx, %bb.eb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %.pn149.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit201.i ], [ %i.kw, %bb.ec ], [ %i.da, %bb.ad ], [ %i.dh, %bb.ah ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i ], [ %i.kr, %bb.dx ], [ %.pn149.i, %bb.eb ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !811
  store i64 %i.br, ptr %i.ac, align 8, !noalias !808
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.bu, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !808
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  store i64 %.sroa.12.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !808
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !819
  invoke fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %.noexc.i unwind label %bb.s, !noalias !820

.noexc.i:                                         ; preds = %bb.m
  %i.bv = load i8, ptr %i.y, align 8, !range !11, !noalias !819, !noundef !5
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !819, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !819
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit55.i

bb.o:                                             ; preds = %.noexc.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !range !11, !noalias !819, !noundef !5
  %i.cb = trunc nuw i8 %i.ca to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !819
  br i1 %i.cb, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !819
  %i.cc = load ptr, ptr %i.ad, align 8, !alias.scope !821, !noalias !822, !nonnull !5, !align !7, !noundef !5
  invoke void @_RINvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtBb_3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1t_3vec3VecB1p_EENtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB3q_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cc)
          to label %.noexc49.i unwind label %bb.s, !noalias !820

.noexc49.i:                                       ; preds = %bb.p
  %i.cd = load ptr, ptr %i.x, align 8, !noalias !819, !noundef !5 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  br i1 %i.ce, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.noexc49.i
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !819, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !819
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit55.i

bb.r:                                             ; preds = %bb.j
  %i.ch = tail call noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error14invalid_lengthCsjWl3uGiVprL_18influxdb3_commands(i64 noundef 0, ptr noundef nonnull @20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18), !noalias !820
  br label %_RINvXs0_NvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsw_1__NtBb_21WalPluginTestResponseNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1n_7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB31_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.z, %bb.s
  %.pn.i = phi { ptr, i32 } [ %i.ci, %bb.s ], [ %i.cw, %bb.z ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #19
          to label %common.resume unwind label %bb.af, !noalias !820

bb.s:                                             ; preds = %bb.ac, %bb.y, %bb.p, %bb.m
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i

bb.t:                                             ; preds = %.noexc49.i
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !noalias !808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !819
  store ptr %i.cd, ptr %i.ab, align 8, !noalias !808
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !825
  invoke fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %.noexc50.i unwind label %bb.z, !noalias !820

.noexc50.i:                                       ; preds = %bb.t
  %i.cj = load i8, ptr %i.w, align 8, !range !11, !noalias !825, !noundef !5
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc50.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !825, !nonnull !5, !align !7, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !825
  br label %bb.ac

bb.v:                                             ; preds = %.noexc50.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !range !11, !noalias !825, !noundef !5
  %i.cp = trunc nuw i8 %i.co to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !825
  br i1 %i.cp, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !825
  %i.cq = load ptr, ptr %i.ad, align 8, !alias.scope !826, !noalias !827, !nonnull !5, !align !7, !noundef !5
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2c_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cq)
end_hunk_3
begin_hunk_4_@_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsw_1__NtB2v_21WalPluginTestResponseNtB1l_11Deserialize11deserialize9___VisitorECsjWl3uGiVprL_18influxdb3_commands:bb.a
  %i.eh = load ptr, ptr %i.u, align 8, !alias.scope !839, !noalias !840, !nonnull !5, !align !7, !noundef !5 ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  call void @llvm.experimental.noalias.scope.decl(metadata !843)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 40 ; 11 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !845, !noalias !846, !noundef !5
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !alias.scope !845, !noalias !846
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 0, ptr %i.em, align 8, !alias.scope !847, !noalias !846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !848
  invoke void @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.eh)
          to label %.noexc156.i unwind label %.loopexit.i41, !noalias !838

.noexc156.i:                                      ; preds = %bb.ay
  %i.en = load i64, ptr %i.h, align 8, !range !15, !noalias !848, !noundef !5 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 2
  %i.ep = load ptr, ptr %i.dz, align 8, !noalias !848 ; 15 uses
  br i1 %i.eo, label %bb.bi, label %bb.az

bb.az:                                            ; preds = %.noexc156.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !848 ; 2 uses
  %i.eq = trunc nuw i64 %i.en to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  br i1 %i.eq, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bn [
    i64 9, label %bb.bb
    i64 15, label %bb.bc
    i64 6, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.er = load i64, ptr %i.ep, align 1
  %i.es = xor i64 %i.er, 7308895159446892396
  %i.et = getelementptr i8, ptr %i.ep, i64 8
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = xor i64 %i.ev, 115
  %i.ex = or i64 %i.es, %i.ew
  %i.ey = icmp ne i64 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.bk, label %bb.bn

bb.bc:                                            ; preds = %bb.ba
  %i.fb = load i64, ptr %i.ep, align 1
  %i.fc = xor i64 %i.fb, 7310293695322153316
  %i.fd = getelementptr i8, ptr %i.ep, i64 7
  %i.fe = load i64, ptr %i.fd, align 1
  %i.ff = xor i64 %i.fe, 8315180283250302821
  %i.fg = or i64 %i.fc, %i.ff
  %i.fh = icmp ne i64 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.bl, label %bb.bn

bb.bd:                                            ; preds = %bb.ba
  %i.fk = load i32, ptr %i.ep, align 1
  %i.fl = xor i32 %i.fk, 1869771365
  %i.fm = getelementptr i8, ptr %i.ep, i64 4
  %i.fn = load i16, ptr %i.fm, align 1
  %i.fo = zext i16 %i.fn to i32
  %i.fp = xor i32 %i.fo, 29554
  %i.fq = or i32 %i.fl, %i.fp
  %i.fr = icmp ne i32 %i.fq, 0
  %i.fs = zext i1 %i.fr to i32
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bm, label %bb.bn

bb.be:                                            ; preds = %bb.az
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bn [
    i64 9, label %bb.bf
    i64 15, label %bb.bg
    i64 6, label %bb.bh
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fu = load i64, ptr %i.ep, align 1
  %i.fv = xor i64 %i.fu, 7308895159446892396
  %i.fw = getelementptr i8, ptr %i.ep, i64 8
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = zext i8 %i.fx to i64
  %i.fz = xor i64 %i.fy, 115
  %i.ga = or i64 %i.fv, %i.fz
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = zext i1 %i.gb to i32
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.bk, label %bb.bn

bb.bg:                                            ; preds = %bb.be
  %i.ge = load i64, ptr %i.ep, align 1
  %i.gf = xor i64 %i.ge, 7310293695322153316
  %i.gg = getelementptr i8, ptr %i.ep, i64 7
  %i.gh = load i64, ptr %i.gg, align 1
  %i.gi = xor i64 %i.gh, 8315180283250302821
  %i.gj = or i64 %i.gf, %i.gi
  %i.gk = icmp ne i64 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.bl, label %bb.bn

bb.bh:                                            ; preds = %bb.be
  %i.gn = load i32, ptr %i.ep, align 1
  %i.go = xor i32 %i.gn, 1869771365
  %i.gp = getelementptr i8, ptr %i.ep, i64 4
  %i.gq = load i16, ptr %i.gp, align 1
  %i.gr = zext i16 %i.gq to i32
  %i.gs = xor i32 %i.gr, 29554
  %i.gt = or i32 %i.go, %i.gs
  %i.gu = icmp ne i32 %i.gt, 0
  %i.gv = zext i1 %i.gu to i32
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.bm, label %bb.bn

bb.bi:                                            ; preds = %.noexc156.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !848
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  br label %.loopexit

.body186.i:                                       ; preds = %bb.de, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45, %bb.cf, %.body.i, %.loopexit.split-lp.i, %.loopexit.i41
  %.sroa.0112.1.ph.i = phi i8 [ %.sroa.0112.5.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45 ], [ 1, %bb.cf ], [ 1, %.body.i ], [ %.sroa.0112.8.i, %bb.de ], [ 1, %.loopexit.i41 ], [ %.sroa.0112.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.0114.1.ph.i = phi i8 [ %.sroa.0114.4.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45 ], [ 1, %bb.cf ], [ 1, %.body.i ], [ %.sroa.0114.4.i, %bb.de ], [ 1, %.loopexit.i41 ], [ %.sroa.0114.2.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pn143.ph.i = phi { ptr, i32 } [ %.pn.i46, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45 ], [ %i.ij, %bb.cf ], [ %eh.lpad-body.i, %.body.i ], [ %i.jq, %bb.de ], [ %lpad.loopexit.i, %.loopexit.i41 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.r, align 8, !noalias !834
  %.not145.i = icmp eq i64 %.pr.i, -1
  br i1 %.not145.i, label %.body193.i, label %bb.dz

.loopexit.i41:                                    ; preds = %bb.ck, %bb.cc, %bb.bs, %bb.bn, %bb.ay, %bb.av
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body186.i

.loopexit.split-lp.i:                             ; preds = %.invoke, %bb.df, %bb.cs, %bb.cj, %.loopexit.i.i.i171.i, %bb.cb, %.loopexit.i.i.i162.i, %bb.br, %.loopexit.i.i.i.i
  %.sroa.0112.2.ph.i = phi i8 [ 1, %bb.cj ], [ 1, %.loopexit.i.i.i171.i ], [ 1, %bb.cs ], [ %.sroa.0112.8.i, %bb.df ], [ 1, %bb.cb ], [ 1, %.loopexit.i.i.i162.i ], [ 1, %.invoke ], [ 1, %bb.br ], [ 1, %.loopexit.i.i.i.i ]
  %.sroa.0114.2.ph.i = phi i8 [ 1, %bb.cj ], [ 1, %.loopexit.i.i.i171.i ], [ 1, %bb.cs ], [ %.sroa.0114.4.i, %bb.df ], [ 1, %bb.cb ], [ 1, %.loopexit.i.i.i162.i ], [ 1, %.invoke ], [ 1, %bb.br ], [ 1, %.loopexit.i.i.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body186.i

bb.bj:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !834
  %i.gx = load i64, ptr %i.t, align 8, !range !4, !noalias !834, !noundef !5
  %.not135.i = icmp eq i64 %i.gx, -1
  br i1 %.not135.i, label %bb.cs, label %bb.cr

bb.bk:                                            ; preds = %bb.bf, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !848
  %i.gy = load i64, ptr %i.t, align 8, !range !4, !noalias !834, !noundef !5
  %.not142.i = icmp eq i64 %i.gy, -1
  br i1 %.not142.i, label %bb.bo, label %.invoke, !prof !3

bb.bl:                                            ; preds = %bb.bg, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !848
  %i.gz = load ptr, ptr %i.s, align 8, !noalias !834, !noundef !5
  %.not141.i = icmp eq ptr %i.gz, null
  br i1 %.not141.i, label %bb.by, label %.invoke, !prof !3

bb.bm:                                            ; preds = %bb.bh, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !848
  %i.ha = load i64, ptr %i.r, align 8, !range !4, !noalias !834, !noundef !5
  %.not140.i = icmp eq i64 %i.ha, -1
  br i1 %.not140.i, label %bb.cg, label %.invoke, !prof !3

bb.bn:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !848
  %i.hb = invoke fastcc noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsjWl3uGiVprL_18influxdb3_commands(ptr nonnull %i.eh)
          to label %bb.cq unwind label %.loopexit.i41, !noalias !838 ; 2 uses

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !834
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !851, !noalias !852, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ej, align 8, !alias.scope !853, !noalias !854 ; 2 uses
  %i.he = icmp ult i64 %.promoted.i.i.i.i.i, %i.hd
  br i1 %i.he, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bo
  %i.hf = load ptr, ptr %i.ei, align 8, !alias.scope !851, !noalias !852, !nonnull !5, !noundef !5
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %.lr.ph.i.i.i.i.i
  %i.hg = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.hj, %bb.bq ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !noalias !856, !noundef !5
  switch i8 %i.hi, label %bb.br [
    i8 32, label %bb.bq
    i8 10, label %bb.bq
    i8 9, label %bb.bq
    i8 13, label %bb.bq
    i8 58, label %bb.bs
  ], !prof !14

bb.bq:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp
  %i.hj = add nuw i64 %i.hg, 1                    ; 3 uses
  store i64 %i.hj, ptr %i.ej, align 8, !alias.scope !857, !noalias !854
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.hj, %i.hd
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bp

.loopexit.i.i.i.i:                                ; preds = %bb.bo, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !858
  store i64 3, ptr %i.f, align 8, !noalias !858
  %i.hk = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.eh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc157.i unwind label %.loopexit.split-lp.i, !noalias !838

.noexc157.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !858
  br label %.loopexit235.i

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !858
  store i64 6, ptr %i.g, align 8, !noalias !858
  %i.hl = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.eh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc158.i unwind label %.loopexit.split-lp.i, !noalias !838

.noexc158.i:                                      ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !858
  br label %.loopexit235.i

bb.bs:                                            ; preds = %bb.bp
  %i.hm = add nuw i64 %i.hg, 1
  store i64 %i.hm, ptr %i.ej, align 8, !alias.scope !859, !noalias !860
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2c_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.eh)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %.loopexit.i41, !noalias !838

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.bs
  %.pr227.i = load i64, ptr %i.q, align 8, !noalias !834 ; 3 uses
  %i.hn = icmp eq i64 %.pr227.i, -1
  %.pre360.i = load ptr, ptr %.sroa.4117.0..sroa_idx.i, align 8, !noalias !834 ; 3 uses
  br i1 %i.hn, label %.loopexit235.i, label %bb.bt

.loopexit235.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %.noexc158.i, %.noexc157.i
  %i.ho = phi ptr [ %i.hl, %.noexc158.i ], [ %i.hk, %.noexc157.i ], [ %.pre360.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !834
  br label %.loopexit

bb.bt:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  %.sroa.5118.0.copyload.i = load i64, ptr %.sroa.5118.0..sroa_idx.i, align 8, !noalias !834 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !834
  %i.hp = load i64, ptr %i.t, align 8, !range !4, !alias.scope !861, !noalias !834, !noundef !5
  %i.hq = icmp eq i64 %i.hp, -1
  br i1 %i.hq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i unwind label %bb.bv, !noalias !838

bb.bv:                                            ; preds = %bb.bu
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body.i unwind label %bb.bw, !noalias !838

bb.bw:                                            ; preds = %bb.bv
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !838
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %bb.bx, !noalias !838

bb.bx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bx, %bb.bv
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ht, %bb.bx ], [ %i.hr, %bb.bv ]
  store i64 %.pr227.i, ptr %i.t, align 8, !noalias !834
  store ptr %.pre360.i, ptr %.sroa.626.0..sroa_idx27.i, align 8, !noalias !834
  store i64 %.sroa.5118.0.copyload.i, ptr %.sroa.7.0..sroa_idx29.i, align 8, !noalias !834
  br label %.body186.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i.i, %bb.bt
  store i64 %.pr227.i, ptr %i.t, align 8, !noalias !834
  store ptr %.pre360.i, ptr %.sroa.626.0..sroa_idx27.i, align 8, !noalias !834
  store i64 %.sroa.5118.0.copyload.i, ptr %.sroa.7.0..sroa_idx29.i, align 8, !noalias !834
  br label %.backedge

bb.by:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.746.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !834
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !864, !noalias !865, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i161.i = load i64, ptr %i.ej, align 8, !alias.scope !866, !noalias !867 ; 2 uses
  %i.hw = icmp ult i64 %.promoted.i.i.i.i161.i, %i.hv
  br i1 %i.hw, label %.lr.ph.i.i.i.i164.i, label %.loopexit.i.i.i162.i

.lr.ph.i.i.i.i164.i:                              ; preds = %bb.by
  %i.hx = load ptr, ptr %i.ei, align 8, !alias.scope !864, !noalias !865, !nonnull !5, !noundef !5
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %.lr.ph.i.i.i.i164.i
  %i.hy = phi i64 [ %.promoted.i.i.i.i161.i, %.lr.ph.i.i.i.i164.i ], [ %i.ib, %bb.ca ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !noalias !869, !noundef !5
  switch i8 %i.ia, label %bb.cb [
    i8 32, label %bb.ca
    i8 10, label %bb.ca
    i8 9, label %bb.ca
    i8 13, label %bb.ca
    i8 58, label %bb.cc
  ], !prof !14

bb.ca:                                            ; preds = %bb.bz, %bb.bz, %bb.bz, %bb.bz
  %i.ib = add nuw i64 %i.hy, 1                    ; 3 uses
  store i64 %i.ib, ptr %i.ej, align 8, !alias.scope !870, !noalias !867
  %exitcond.not.i.i.i.i165.i = icmp eq i64 %i.ib, %i.hv
  br i1 %exitcond.not.i.i.i.i165.i, label %.loopexit.i.i.i162.i, label %bb.bz

.loopexit.i.i.i162.i:                             ; preds = %bb.by, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !871
  store i64 3, ptr %i.d, align 8, !noalias !871
  %i.ic = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.eh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc166.i unwind label %.loopexit.split-lp.i, !noalias !838

.noexc166.i:                                      ; preds = %.loopexit.i.i.i162.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !871
  br label %.loopexit233.i

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !871
  store i64 6, ptr %i.e, align 8, !noalias !871
  %i.id = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.eh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc167.i unwind label %.loopexit.split-lp.i, !noalias !838

.noexc167.i:                                      ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !871
  br label %.loopexit233.i

bb.cc:                                            ; preds = %bb.bz
  %i.ie = add nuw i64 %i.hy, 1
  store i64 %i.ie, ptr %i.ej, align 8, !alias.scope !872, !noalias !873
  invoke void @_RINvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtBb_3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1t_3vec3VecB1p_EENtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB3q_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.eh)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %.loopexit.i41, !noalias !838

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.cc
  %.pr228.i = load ptr, ptr %i.p, align 8, !noalias !834 ; 3 uses
  %i.if = icmp eq ptr %.pr228.i, null
  %.pre359.i = load ptr, ptr %.sroa.4120.0..sroa_idx.i, align 8, !noalias !834 ; 3 uses
  br i1 %i.if, label %.loopexit233.i, label %bb.cd

.loopexit233.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %.noexc167.i, %.noexc166.i
  %i.ig = phi ptr [ %i.id, %.noexc167.i ], [ %i.ic, %.noexc166.i ], [ %.pre359.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.746.i)
  br label %.loopexit

bb.cd:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2K_3vec3VecB2G_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5121.0..sroa_idx.i, i64 16, i1 false), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !834
  %i.ih = load ptr, ptr %i.s, align 8, !alias.scope !874, !noalias !834, !noundef !5
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1G_3vec3VecB1C_EEEECsjWl3uGiVprL_18influxdb3_commands.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1p_3vec3VecB1l_EENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef 48, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1G_3vec3VecB1C_EEEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %bb.cf, !noalias !838

bb.cf:                                            ; preds = %bb.ce
  %i.ij = landingpad { ptr, i32 }
          cleanup
  store ptr %.pr228.i, ptr %i.s, align 8, !noalias !834
  store ptr %.pre359.i, ptr %.sroa.643.0..sroa_idx44.i, align 8, !noalias !834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746.0..sroa_idx47.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746.i, i64 16, i1 false), !noalias !834
  br label %.body186.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1G_3vec3VecB1C_EEEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.ce, %bb.cd
  store ptr %.pr228.i, ptr %i.s, align 8, !noalias !834
  store ptr %.pre359.i, ptr %.sroa.643.0..sroa_idx44.i, align 8, !noalias !834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746.0..sroa_idx47.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746.i, i64 16, i1 false), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.746.i)
  br label %.backedge

.invoke:                                          ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.ik = phi ptr [ @14, %bb.bl ], [ @13, %bb.bk ], [ @15, %bb.bm ]
  %i.il = phi i64 [ 15, %bb.bl ], [ 9, %bb.bk ], [ 6, %bb.bm ]
  %i.im = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error15duplicate_fieldCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ik, i64 noundef %i.il)
          to label %.loopexit unwind label %.loopexit.split-lp.i, !noalias !838

bb.cg:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !834
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.in = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.io = load i64, ptr %i.in, align 8, !alias.scope !877, !noalias !878, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i170.i = load i64, ptr %i.ej, align 8, !alias.scope !879, !noalias !880 ; 2 uses
  %i.ip = icmp ult i64 %.promoted.i.i.i.i170.i, %i.io
  br i1 %i.ip, label %.lr.ph.i.i.i.i173.i, label %.loopexit.i.i.i171.i

.lr.ph.i.i.i.i173.i:                              ; preds = %bb.cg
  %i.iq = load ptr, ptr %i.ei, align 8, !alias.scope !877, !noalias !878, !nonnull !5, !noundef !5
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %.lr.ph.i.i.i.i173.i
  %i.ir = phi i64 [ %.promoted.i.i.i.i170.i, %.lr.ph.i.i.i.i173.i ], [ %i.iu, %bb.ci ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !noalias !882, !noundef !5
  switch i8 %i.it, label %bb.cj [
    i8 32, label %bb.ci
    i8 10, label %bb.ci
    i8 9, label %bb.ci
    i8 13, label %bb.ci
    i8 58, label %bb.ck
  ], !prof !14

bb.ci:                                            ; preds = %bb.ch, %bb.ch, %bb.ch, %bb.ch
  %i.iu = add nuw i64 %i.ir, 1                    ; 3 uses
  store i64 %i.iu, ptr %i.ej, align 8, !alias.scope !883, !noalias !880
  %exitcond.not.i.i.i.i174.i = icmp eq i64 %i.iu, %i.io
  br i1 %exitcond.not.i.i.i.i174.i, label %.loopexit.i.i.i171.i, label %bb.ch

.loopexit.i.i.i171.i:                             ; preds = %bb.cg, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !884
  store i64 3, ptr %i.b, align 8, !noalias !884
  %i.iv = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.eh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc175.i unwind label %.loopexit.split-lp.i, !noalias !838

.noexc175.i:                                      ; preds = %.loopexit.i.i.i171.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !884
  br label %.loopexit231.i

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !884
  store i64 6, ptr %i.c, align 8, !noalias !884
  %i.iw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.eh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc176.i unwind label %.loopexit.split-lp.i, !noalias !838

.noexc176.i:                                      ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !884
  br label %.loopexit231.i

bb.ck:                                            ; preds = %bb.ch
  %i.ix = add nuw i64 %i.ir, 1
  store i64 %i.ix, ptr %i.ej, align 8, !alias.scope !885, !noalias !886
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2c_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.eh)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit178.i unwind label %.loopexit.i41, !noalias !838

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit178.i: ; preds = %bb.ck
  %.pr229.i = load i64, ptr %i.o, align 8, !noalias !834 ; 3 uses
  %i.iy = icmp eq i64 %.pr229.i, -1
  %.pre.i = load ptr, ptr %.sroa.4123.0..sroa_idx.i, align 8, !noalias !834 ; 3 uses
  br i1 %i.iy, label %.loopexit231.i, label %bb.cl

.loopexit231.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit178.i, %.noexc176.i, %.noexc175.i
  %i.iz = phi ptr [ %i.iw, %.noexc176.i ], [ %i.iv, %.noexc175.i ], [ %.pre.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit178.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !834
  br label %.loopexit

bb.cl:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB26_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit178.i
  %.sroa.5124.0.copyload.i = load i64, ptr %.sroa.5124.0..sroa_idx.i, align 8, !noalias !834 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !834
  %i.ja = load i64, ptr %i.r, align 8, !range !4, !alias.scope !887, !noalias !834, !noundef !5
  %i.jb = icmp eq i64 %i.ja, -1
  br i1 %i.jb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit184.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i180.i unwind label %bb.cn, !noalias !838

bb.cn:                                            ; preds = %bb.cm
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread.i unwind label %bb.co, !noalias !838

bb.co:                                            ; preds = %bb.cn
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !838
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i180.i: ; preds = %bb.cm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit184.i unwind label %bb.cp, !noalias !838

bb.cp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i180.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread.i:                                        ; preds = %bb.cp, %bb.cn
  %eh.lpad-body182.i = phi { ptr, i32 } [ %i.je, %bb.cp ], [ %i.jc, %bb.cn ]
  store i64 %.pr229.i, ptr %i.r, align 8, !noalias !834
  store ptr %.pre.i, ptr %.sroa.661.0..sroa_idx62.i, align 8, !noalias !834
  store i64 %.sroa.5124.0.copyload.i, ptr %.sroa.764.0..sroa_idx65.i, align 8, !noalias !834
  br label %bb.dz

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit184.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i180.i, %bb.cl
  store i64 %.pr229.i, ptr %i.r, align 8, !noalias !834
  store ptr %.pre.i, ptr %.sroa.661.0..sroa_idx62.i, align 8, !noalias !834
  store i64 %.sroa.5124.0.copyload.i, ptr %.sroa.764.0..sroa_idx65.i, align 8, !noalias !834
  br label %.backedge

bb.cq:                                            ; preds = %bb.bn
  %.not139.i = icmp eq ptr %i.hb, null
  br i1 %.not139.i, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.cq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit184.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1G_3vec3VecB1C_EEEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  br label %bb.av

bb.cr:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !834
  br label %bb.cw

bb.cs:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !834
  invoke void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtB3y_6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 9)
          to label %bb.ct unwind label %.loopexit.split-lp.i, !noalias !838

bb.ct:                                            ; preds = %bb.cs
  %i.jf = load i64, ptr %i.m, align 8, !range !4, !noalias !834, !noundef !5 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, -1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !834 ; 2 uses
  br i1 %i.jg, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !834
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i47

bb.cv:                                            ; preds = %bb.ct
  %.sroa.5127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5127.0.copyload.i = load i64, ptr %.sroa.5127.0..sroa_idx.i, align 8, !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !834
  store i64 %i.jf, ptr %i.n, align 8, !noalias !834
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ji, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !834
  %.sroa.5.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.5127.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i48, align 8, !noalias !834
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cr
  %.sroa.0114.4.i = phi i8 [ 0, %bb.cr ], [ 1, %bb.cv ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !834
  %i.jj = load ptr, ptr %i.s, align 8, !noalias !834, !noundef !5
  %.not136.i = icmp eq ptr %i.jj, null
  br i1 %.not136.i, label %bb.cy, label %bb.cx

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i47: ; preds = %bb.df, %bb.cu
  %.sroa.16.1 = phi ptr [ %i.ji, %bb.cu ], [ %.sroa.16.0, %bb.df ]
  %.sroa.0112.4.i = phi i8 [ 1, %bb.cu ], [ %.sroa.0112.8.i, %bb.df ]
  %.sroa.0114.5.i = phi i8 [ 1, %bb.cu ], [ %.sroa.0114.4.i, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !834
  br label %.loopexit

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !834
  br label %bb.dd

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !834
  invoke void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyINtNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3mapINtNtB3m_3map7HashMapppppENtB28_11Deserialize11deserialize10MapVisitorNtNtCscdodAO9FK5_5alloc6string6StringINtNtB5s_3vec3VecB5o_EINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 15)
          to label %bb.da unwind label %bb.cz, !noalias !838

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45: ; preds = %bb.dj, %bb.cz
  %.sroa.0112.5.i = phi i8 [ %.sroa.0112.6.i, %bb.cz ], [ %.sroa.0112.7.i, %bb.dj ]
  %.pn.i46 = phi { ptr, i32 } [ %i.jk, %bb.cz ], [ %i.js, %bb.dj ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %i.n) #19
          to label %.body186.i unwind label %bb.do, !noalias !838

bb.cz:                                            ; preds = %bb.dl, %bb.cy
  %.sroa.0112.6.i = phi i8 [ %.sroa.0112.7.i, %bb.dl ], [ 1, %bb.cy ]
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45

bb.da:                                            ; preds = %bb.cy
  %i.jl = load ptr, ptr %i.k, align 8, !noalias !834, !noundef !5 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, null
  %i.jn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !834 ; 2 uses
  br i1 %i.jm, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !834
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit190.i

bb.dc:                                            ; preds = %bb.da
  %.sroa.5130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.588.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5130.0..sroa_idx.i, i64 16, i1 false), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !834
  store ptr %i.jl, ptr %i.l, align 8, !noalias !834
  %.sroa.487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.jo, ptr %.sroa.487.0..sroa_idx.i, align 8, !noalias !834
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cx
  %.sroa.0112.7.i = phi i8 [ 0, %bb.cx ], [ 1, %bb.dc ] ; 3 uses
  %i.jp = load i64, ptr %i.r, align 8, !range !4, !noalias !834, !noundef !5 ; 2 uses
  %.not137.i = icmp eq i64 %i.jp, -1
  br i1 %.not137.i, label %bb.di, label %bb.dh

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit190.i: ; preds = %bb.dl, %bb.db
  %.sroa.16.0 = phi ptr [ %i.jo, %bb.db ], [ %i.jx, %bb.dl ]
  %.sroa.0112.8.i = phi i8 [ 1, %bb.db ], [ %.sroa.0112.7.i, %bb.dl ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !834
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.df unwind label %bb.de, !noalias !838

bb.de:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit190.i
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body186.i unwind label %bb.dg, !noalias !838

bb.df:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit190.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i47 unwind label %.loopexit.split-lp.i, !noalias !838

bb.dg:                                            ; preds = %bb.de
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !838
  unreachable

bb.dh:                                            ; preds = %bb.dd
  %.sroa.399.0.copyload.i = load ptr, ptr %.sroa.661.0..sroa_idx62.i, align 8, !noalias !834
  %.sroa.4102.0.copyload.i = load i64, ptr %.sroa.764.0..sroa_idx65.i, align 8, !noalias !834
  br label %bb.dn

bb.di:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !834
  invoke void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB28_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB28_11Deserialize11deserialize10VecVisitorNtNtB3y_6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 6)
          to label %bb.dk unwind label %bb.dj, !noalias !838

bb.dj:                                            ; preds = %bb.di
  %i.js = landingpad { ptr, i32 }
          cleanup
  %i.jt = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1p_3vec3VecB1l_EENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jt, i64 noundef 48, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsjWl3uGiVprL_18influxdb3_commands.exit.i45 unwind label %bb.do, !noalias !838

end_hunk_4
begin_hunk_5_@_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs9h7Hq22ZyhR_15influxdb3_types4httpsw_1__NtB2v_21WalPluginTestResponseNtB1l_11Deserialize11deserialize9___VisitorECsjWl3uGiVprL_18influxdb3_commands:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ky = load i64, ptr %i.af, align 8, !range !4, !noundef !5 ; 4 uses
  %i.kz = icmp eq i64 %i.ky, -1
  br i1 %i.kz, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.not = icmp eq ptr %i.kv, null
  br i1 %.not, label %.thread262, label %bb.eg

.thread262:                                       ; preds = %bb.ee
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.522.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  br label %.thread86

bb.ef:                                            ; preds = %bb.ed
  %i.la = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  %.not93 = icmp eq ptr %i.kv, null
  br i1 %.not93, label %.thread86, label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types4http21WalPluginTestResponseECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(80) %i.af)
  br label %.thread86

.thread86:                                        ; preds = %.thread262, %bb.eg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit52, %bb.ef
  %.sroa.09.292 = phi i64 [ %i.ky, %bb.ef ], [ %i.ky, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit52 ], [ -1, %bb.eg ], [ %i.ky, %.thread262 ]
  %.sroa.10.291 = phi ptr [ %i.lb, %bb.ef ], [ %i.lb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit52 ], [ %i.kv, %bb.eg ], [ %.sroa.421.0.copyload, %.thread262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.as

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.lc = load i64, ptr %i.kv, align 8, !range !6, !alias.scope !891, !noundef !5
  switch i64 %i.lc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit52 [
    i64 0, label %bb.ei
    i64 1, label %bb.ek
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %.val1.i.i.i.i50 = load i64, ptr %i.ld, align 8, !alias.scope !891, !noundef !5 ; 2 uses
  %i.le = icmp eq i64 %.val1.i.i.i.i50, 0
  br i1 %i.le, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit52, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %.val.i.i.i.i51 = load ptr, ptr %i.lf, align 8, !alias.scope !891, !nonnull !5, !noundef !5
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i51, i64 noundef range(i64 1, 0) %.val1.i.i.i.i50, i64 noundef 1) #20, !noalias !891
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit52

bb.ek:                                            ; preds = %bb.eh
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %.val2.i.i.i.i49 = load ptr, ptr %i.lg, align 8, !alias.scope !891, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjWl3uGiVprL_18influxdb3_commands(ptr nonnull %.val2.i.i.i.i49)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit52 unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsjWl3uGiVprL_18influxdb3_commands.exit52: ; preds = %bb.eh, %bb.ei, %bb.ej, %bb.ek
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kv, i64 noundef 40, i64 noundef 8) #20
  br label %.thread86

bb.em:                                            ; preds = %bb.d, %bb.as
  %.sroa.10.3 = phi ptr [ %.sroa.10.1, %bb.as ], [ %i.ax, %bb.d ]
  %i.li = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.li, ptr %i.lj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.eo

bb.en:                                            ; preds = %bb.as
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.14, i64 64, i1 false)
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8
  br label %bb.eo

bb.eo:                                            ; preds = %bb.em, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %.loopexit98, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs7_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9SeqAccesspENtNtCs5CfTnloWo2c_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !7, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !11, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !align !7, !noundef !5
  call void @_RINvXs6_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1V_4read9SliceReadEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !7, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsjWl3uGiVprL_18influxdb3_commands(ptr %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !992, !noalias !993, !noundef !5 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !994, !noalias !995 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !992, !noalias !993, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !997, !noundef !5
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !14

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add nuw i64 %i.w, 1                      ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !998, !noalias !995
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !990
  store i64 3, ptr %i.o, align 8, !noalias !990
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !990
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !990
  store i64 6, ptr %i.p, align 8, !noalias !990
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !990
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add nuw i64 %i.w, 1                     ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !999
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !1004
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 11 uses
  %.promoted.i171.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eg, %bb.bf ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i171.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !1006, !noundef !5 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add nuw i64 %i.ai, 1                    ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !1007, !noalias !1008
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1004
  store i64 5, ptr %i.n, align 8, !noalias !1004
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1004
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !17

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !1009
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !1012, !noundef !5
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !1013, !noalias !1014
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit233.i.i.i.i.i, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !1016, !noundef !5
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !1017, !noalias !1014
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit233.i.i.i.i.i, !prof !13

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1019, !noundef !5
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !1020, !noalias !1014
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i, label %.loopexit233.i.i.i.i.i, !prof !13

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1021
  store i64 5, ptr %i.f, align 8, !noalias !1021
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1021
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

.loopexit233.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1021
  store i64 9, ptr %i.e, align 8, !noalias !1021
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1021
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !1023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !1026, !noundef !5
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !1027, !noalias !1028
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit226.i.i.i.i.i, !prof !13

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !1030, !noundef !5
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !1031, !noalias !1028
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit226.i.i.i.i.i, !prof !13

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !1033, !noundef !5
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !1034, !noalias !1028
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i, label %.loopexit226.i.i.i.i.i, !prof !13

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1035
  store i64 5, ptr %i.d, align 8, !noalias !1035
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1035
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

.loopexit226.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1035
  store i64 9, ptr %i.c, align 8, !noalias !1035
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !1036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1035
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !1037
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ah) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !1040, !noundef !5
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !1041, !noalias !1042
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit219.i.i.i.i.i, !prof !13

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !1044, !noundef !5
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !1045, !noalias !1042
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit219.i.i.i.i.i, !prof !13

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !1047, !noundef !5
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !1048, !noalias !1042
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit219.i.i.i.i.i, !prof !13

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !1050, !noundef !5
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !1051, !noalias !1042
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i, label %.loopexit219.i.i.i.i.i, !prof !13

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1052
  store i64 5, ptr %i.b, align 8, !noalias !1052
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1052
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

.loopexit219.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1052
  store i64 9, ptr %i.a, align 8, !noalias !1052
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1052
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !1054
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(64) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i, label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !1055
  %i.ce = tail call noundef align 8 ptr @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i, label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtCs4NRVxsYgnAr_4core6option8IntoIterhEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(64) %.0.val, i1 noundef zeroext %.sroa.039.0169.i.i.i.i.i, i8 %.sroa.7.0170.i.i.i.i.i)
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !1056, !noundef !5
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !1056
  br label %bb.ag

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0169.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !1004, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.aj

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.ct, %bb.aj ], [ %.sroa.7.0170.i.i.i.i.i, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i ]
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !1057, !noalias !1058, !noundef !5 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !1059, !noalias !1060 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ag
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !1057, !noalias !1058, !nonnull !5, !noundef !5 ; 3 uses
  br label %.lr.ph.i75.i.i.i.i.i

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1004
  store i64 10, ptr %i.m, align 8, !noalias !1004
  %i.cm = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1004
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.ai:                                            ; preds = %bb.h
  %i.cn = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(64) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i, label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.aj:                                            ; preds = %bb.af
  %i.co = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.co, ptr %i.ad, align 8, !alias.scope !1004
  %i.cp = load i64, ptr %.0.val, align 8, !range !8, !alias.scope !1004, !noundef !5
  %i.cq = icmp ult i64 %i.co, %i.cp
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = load ptr, ptr %i.af, align 8, !alias.scope !1004, !nonnull !5, !noundef !5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !5
  br label %bb.ag

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.au, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73165.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dd, %bb.au ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.au ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i75.i.i.i.i.i
  %i.cu = phi i64 [ %.promoted.i73165.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.cx, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !1063, !noundef !5
  switch i8 %i.cw, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 44, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.cx = add nuw i64 %i.cu, 1                    ; 3 uses
  store i64 %i.cx, ptr %i.q, align 8, !alias.scope !1064, !noalias !1060
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.cx, %i.cj
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.ak

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ag, %bb.au, %bb.al
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.dl, %bb.au ], [ %.sroa.027.2163.i.i.i.i.i, %bb.al ], [ %.sroa.027.0.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1004
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.am [
    i8 91, label %bb.ao
    i8 123, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #21
  unreachable

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit123.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.an ], [ 2, %.loopexit123.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !1004
  %i.cy = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1004
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

.loopexit.i.i.i.i.i:                              ; preds = %bb.ar, %bb.aq, %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.av, label %.critedge.i.i.i.i.i, !prof !10

bb.ap:                                            ; preds = %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.as, label %.critedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.cz = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 91
  br i1 %i.cz, label %bb.at, label %.loopexit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.da = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
  br i1 %i.da, label %bb.at, label %.loopexit.i.i.i.i.i

bb.as:                                            ; preds = %bb.ap
  %i.db = add i64 %i.cu, 1                        ; 2 uses
  store i64 %i.db, ptr %i.q, align 8, !alias.scope !1065
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.as, %bb.ap, %.loopexit.i.i.i.i.i
  %.promoted.i80.i.i.i.i.i = phi i64 [ %i.cu, %bb.ap ], [ %i.cu, %.loopexit.i.i.i.i.i ], [ %i.db, %bb.as ] ; 3 uses
  %i.dc = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
  br i1 %i.dc, label %bb.aw, label %bb.bf

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.dd = add i64 %i.cu, 1                        ; 3 uses
  store i64 %i.dd, ptr %i.q, align 8, !alias.scope !1066
  %i.de = load i64, ptr %i.ad, align 8, !alias.scope !1004, !noundef !5 ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dg = add i64 %i.de, -1                       ; 3 uses
  store i64 %i.dg, ptr %i.ad, align 8, !alias.scope !1004
  %i.dh = load i64, ptr %.0.val, align 8, !range !8, !alias.scope !1004, !noundef !5
  %i.di = icmp ult i64 %i.dg, %i.dh
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = load ptr, ptr %i.af, align 8, !alias.scope !1004, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !noundef !5 ; 2 uses
  %i.dm = icmp ult i64 %i.dd, %i.cj
  br i1 %i.dm, label %.lr.ph.i75.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

bb.av:                                            ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1004
  switch i8 %.sroa.027.2163.i.i.i.i.i, label %bb.bg [
    i8 91, label %bb.bi
    i8 123, label %bb.bh
  ]

bb.aw:                                            ; preds = %.critedge.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.dn = icmp ult i64 %.promoted.i80.i.i.i.i.i, %i.cj
  br i1 %i.dn, label %.lr.ph.i82.i.i.i.i.i, label %.loopexit125.i.i.i.i.i

.lr.ph.i82.i.i.i.i.i:                             ; preds = %bb.aw, %bb.ax
  %i.do = phi i64 [ %i.dr, %bb.ax ], [ %.promoted.i80.i.i.i.i.i, %bb.aw ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !noalias !1068, !noundef !5
  switch i8 %i.dq, label %bb.az [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 34, label %bb.ay
  ], !prof !14

bb.ax:                                            ; preds = %.lr.ph.i82.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i, %.lr.ph.i82.i.i.i.i.i
  %i.dr = add nuw i64 %i.do, 1                    ; 3 uses
  store i64 %i.dr, ptr %i.q, align 8, !alias.scope !1069, !noalias !1070
  %exitcond.not.i83.i.i.i.i.i = icmp eq i64 %i.dr, %i.cj
  br i1 %exitcond.not.i83.i.i.i.i.i, label %.loopexit125.i.i.i.i.i, label %.lr.ph.i82.i.i.i.i.i

.loopexit125.i.i.i.i.i:                           ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1004
  store i64 3, ptr %i.i, align 8, !noalias !1004
  %i.ds = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1004
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.ay:                                            ; preds = %.lr.ph.i82.i.i.i.i.i
  %i.dt = add nuw i64 %i.do, 1
  store i64 %i.dt, ptr %i.q, align 8, !alias.scope !1071
  %i.du = tail call noundef align 8 ptr @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u) ; 2 uses
  %.not50.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not50.i.i.i.i.i, label %bb.ba, label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.az:                                            ; preds = %.lr.ph.i82.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1004
  store i64 17, ptr %i.j, align 8, !noalias !1004
  %i.dv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1004
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.ba:                                            ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %i.dw = load i64, ptr %i.r, align 8, !alias.scope !1073, !noalias !1074, !noundef !5 ; 3 uses
  %.promoted.i87.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !1075, !noalias !1076 ; 2 uses
  %i.dx = icmp ult i64 %.promoted.i87.i.i.i.i.i, %i.dw
  br i1 %i.dx, label %.lr.ph.i89.i.i.i.i.i, label %.loopexit124.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i:                             ; preds = %bb.ba
  %i.dy = load ptr, ptr %i.u, align 8, !alias.scope !1073, !noalias !1074, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %.lr.ph.i89.i.i.i.i.i
  %i.dz = phi i64 [ %.promoted.i87.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i ], [ %i.ec, %bb.bc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !1078, !noundef !5
  switch i8 %i.eb, label %bb.be [
    i8 32, label %bb.bc
    i8 10, label %bb.bc
    i8 9, label %bb.bc
    i8 13, label %bb.bc
    i8 58, label %bb.bd
  ], !prof !14

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.ec = add nuw i64 %i.dz, 1                    ; 3 uses
  store i64 %i.ec, ptr %i.q, align 8, !alias.scope !1079, !noalias !1076
  %exitcond.not.i90.i.i.i.i.i = icmp eq i64 %i.ec, %i.dw
  br i1 %exitcond.not.i90.i.i.i.i.i, label %.loopexit124.i.i.i.i.i, label %bb.bb

.loopexit124.i.i.i.i.i:                           ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1004
  store i64 3, ptr %i.g, align 8, !noalias !1004
  %i.ed = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1004
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ee = add nuw i64 %i.dz, 1                    ; 2 uses
  store i64 %i.ee, ptr %i.q, align 8, !alias.scope !1080
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1004
  store i64 6, ptr %i.h, align 8, !noalias !1004
  %i.ef = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1004
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.bf:                                            ; preds = %bb.bd, %.critedge.i.i.i.i.i
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i80.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %i.ee, %bb.bd ] ; 2 uses
  %i.eg = phi i64 [ %i.cj, %.critedge.i.i.i.i.i ], [ %i.dw, %bb.bd ] ; 2 uses
  %i.eh = phi ptr [ %i.cl, %.critedge.i.i.i.i.i ], [ %i.dy, %bb.bd ]
  %i.ei = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.eg
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

bb.bg:                                            ; preds = %bb.av
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #21
  unreachable

bb.bh:                                            ; preds = %bb.av
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.av
  %storemerge51.i.i.i.i.i = phi i64 [ 8, %bb.bh ], [ 7, %bb.av ]
  store i64 %storemerge51.i.i.i.i.i, ptr %i.l, align 8, !noalias !1004
  %i.ej = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1004
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit

_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ai, %bb.ay, %bb.at, %.loopexit.i.i, %bb.d, %.loopexit130.i.i.i.i.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, %.loopexit233.i.i.i.i.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, %.loopexit226.i.i.i.i.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, %.loopexit219.i.i.i.i.i, %bb.ah, %bb.ao, %.loopexit125.i.i.i.i.i, %bb.az, %.loopexit124.i.i.i.i.i, %bb.be, %bb.bi
  %.sroa.0.0.i = phi ptr [ null, %bb.at ], [ %i.ca, %.loopexit219.i.i.i.i.i ], [ %i.am, %.loopexit130.i.i.i.i.i ], [ %i.ej, %bb.bi ], [ %i.ay, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i ], [ %i.ed, %.loopexit124.i.i.i.i.i ], [ %i.ab, %bb.d ], [ %i.ds, %.loopexit125.i.i.i.i.i ], [ %i.cy, %bb.ao ], [ %i.bl, %.loopexit226.i.i.i.i.i ], [ %i.az, %.loopexit233.i.i.i.i.i ], [ %i.ef, %bb.be ], [ %i.cm, %bb.ah ], [ %i.bz, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i ], [ %i.bk, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i ], [ %i.dv, %bb.az ], [ %i.aa, %.loopexit.i.i ], [ %i.cc, %bb.ac ], [ %i.cn, %bb.ai ], [ %i.du, %bb.ay ], [ %i.ce, %bb.ad ], [ null, %bb.af ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCscdodAO9FK5_5alloc3vec3VecReEE10initializeNCINvB1a_11get_or_initNCNvXs0_NtCsjWl3uGiVprL_18influxdb3_commands7helpersNtB2W_16DisableAuthzListNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_strs1_0E0zE0E0B2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store i64 -1, ptr %i.a, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.sroa.4.0.copyload, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCscdodAO9FK5_5alloc3vec3VecReEE10initializeNCINvB1a_11get_or_initNvMB1J_B1G_3newE0zE0E0CsjWl3uGiVprL_18influxdb3_commands(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !7, !noundef !5 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB1a_11get_or_initNCNvXs8_NtCsjWl3uGiVprL_18influxdb3_commands5queryNtB2Y_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args12augment_args0E0zE0E0B30_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !align !7, !noundef !5 ; 4 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.m, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1085
  store i8 0, ptr %i.d, align 1, !noalias !1085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1085
  call void @_RNvXsa_NtCsjWl3uGiVprL_18influxdb3_commands5queryNtB5_13QueryLanguageNtNtCsbyItyepKEh3_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d), !noalias !1085
  %i.g = load i64, ptr %i.b, align 8, !range !15, !noalias !1085, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.g, 2
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !1085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1085
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1085, !nonnull !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1085 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1085
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.f unwind label %bb.e, !noalias !1085

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #21, !noalias !1085
  unreachable

bb.e:                                             ; preds = %bb.g, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder14possible_value13PossibleValueECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(80) %i.c) #19
          to label %bb.l unwind label %bb.k, !noalias !1085

bb.f:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !9, !noalias !1085, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !18, !noalias !1085, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.q, align 8, !noalias !1085
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #21
          to label %bb.j unwind label %bb.e, !noalias !1085

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.q, align 8, !noalias !1085, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = icmp ule i64 %i.k, %i.p
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1085
  %.not5.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not5.i.i.i, label %_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB4_11get_or_initNCNvXs8_NtCsjWl3uGiVprL_18influxdb3_commands5queryNtB2c_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args12augment_args0E0zE0B2e_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.i, i64 %i.k, i1 false), !noalias !1085
  br label %_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB4_11get_or_initNCNvXs8_NtCsjWl3uGiVprL_18influxdb3_commands5queryNtB2c_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args12augment_args0E0zE0B2e_.exit

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !1085
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l

_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB4_11get_or_initNCNvXs8_NtCsjWl3uGiVprL_18influxdb3_commands5queryNtB2c_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args12augment_args0E0zE0B2e_.exit: ; preds = %bb.h, %bb.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder7builder14possible_value13PossibleValueECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(80) %i.c), !noalias !1085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1085
  store i64 %i.p, ptr %i.f, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.s, ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.k, ptr %.sroa.512.0..sroa_idx.i, align 8
  ret void

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB1a_11get_or_initNCNvXs8_NtCsjWl3uGiVprL_18influxdb3_commands5queryNtB2Y_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args23augment_args_for_update0E0zE0E0B30_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !align !7, !noundef !5 ; 4 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.m, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1090
  store i8 0, ptr %i.d, align 1, !noalias !1090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1090
end_hunk_5
begin_hunk_6_@_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands:bb.a
bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error9ErrorCodeECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %1) #19
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1195, !noalias !1196, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1195, !noalias !1196, !noundef !5 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1195, !noalias !1196, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !1197, !noundef !5
  switch i8 %i.o, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !1200, !noalias !1198
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !1201, !noundef !5 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1202
  store i64 13, ptr %i.d, align 8, !noalias !1202
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1202
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !1198, !noalias !1199
  store i64 1, ptr %i.f, align 8, !alias.scope !1198, !noalias !1199
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1202
  store i64 5, ptr %i.c, align 8, !noalias !1202
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1202
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !1198, !noalias !1199
  store i64 1, ptr %i.f, align 8, !alias.scope !1198, !noalias !1199
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsdLkRf3gRIi6_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !1204, !noundef !5 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1204
  store i64 14, ptr %i.a, align 8, !noalias !1204
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1204
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !1205, !noalias !1206
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsjWl3uGiVprL_18influxdb3_commands.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !1205, !noalias !1206
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsjWl3uGiVprL_18influxdb3_commands.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp oeq double %i.ay, +inf
  br i1 %i.az, label %bb.k, label %.loopexit.i.i, !prof !10

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1204
  store i64 14, ptr %i.b, align 8, !noalias !1204
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1204
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !1205, !noalias !1206
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsjWl3uGiVprL_18influxdb3_commands.exit.i

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.k, %.loopexit.i.i, %bb.h
  %storemerge.i.i = phi i64 [ 0, %.loopexit.i.i ], [ 1, %bb.k ], [ 1, %bb.h ]
  store i64 %storemerge.i.i, ptr %i.f, align 8, !alias.scope !1205, !noalias !1206
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

bb.l:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.i
  call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i)
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

bb.m:                                             ; preds = %bb.d
  %i.bc = icmp ne i64 %.sroa.0.061.i, 1844674407370955161
  %i.bd = icmp samesign ugt i8 %i.y, 5
  %or.cond1.i = or i1 %i.bc, %i.bd
  br i1 %or.cond1.i, label %bb.o, label %bb.n, !prof !19

bb.n:                                             ; preds = %bb.m, %bb.d
  %i.be = add nuw i64 %i.v, 1                     ; 3 uses
  store i64 %i.be, ptr %i.g, align 8, !alias.scope !1207, !noalias !1198
  %i.bf = mul nuw i64 %.sroa.0.061.i, 10
  %i.bg = add i64 %i.bf, %i.ab                    ; 2 uses
  %i.bh = add i32 %.sroa.07.060.i, -1
  %exitcond.not.i = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i, label %.thread.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i

bb.o:                                             ; preds = %bb.m
  call void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %.sroa.0.061.i, i32 noundef %.sroa.07.060.i)
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.e, %.thread.thread.i, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsjWl3uGiVprL_18influxdb3_commands.exit.i, %bb.l, %bb.o
  %i.bi = load i64, ptr %i.f, align 8, !range !9, !noundef !5
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef 0)
  %i.bl = load i64, ptr %i.e, align 8, !range !9, !noundef !5
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u

bb.q:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsjWl3uGiVprL_18influxdb3_commands.exit
  %i.bo = load ptr, ptr %i.bk, align 8, !nonnull !5, !align !7, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.r:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsjWl3uGiVprL_18influxdb3_commands.exit
  %i.bq = load i64, ptr %i.bk, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %bb.w, %bb.u, %bb.r
  %.sroa.9.0 = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ %3, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ %i.bq, %bb.r ], [ %i.bu, %bb.v ]
  %.sroa.0.0 = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ 0, %bb.r ], [ 2, %bb.v ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bn, align 8, !nonnull !5, !align !7, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.u:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.bn, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.v:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  %i.bu = sub i64 0, %3                           ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  br i1 %i.bv, label %bb.w, label %bb.s

bb.w:                                             ; preds = %bb.v
  %i.bw = uitofp i64 %3 to double
  %i.bx = fneg double %i.bw
  %i.by = bitcast double %i.bx to i64
  br label %bb.s

bb.x:                                             ; preds = %bb.q, %bb.t, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1219, !noalias !1220, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1219, !noalias !1220, !noundef !5 ; 4 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1219, !noalias !1220, !nonnull !5, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = load i8, ptr %i.l, align 1, !noalias !1221, !noundef !5 ; 3 uses
  %i.n = add nuw i64 %i.f, 1                      ; 5 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !1219, !noalias !1220
  %i.o = icmp eq i8 %i.m, 48
  br i1 %i.o, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %i.h
  br i1 %i.r, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.s = add i8 %i.m, -49
  %or.cond1 = icmp ult i8 %i.s, 9
  br i1 %or.cond1, label %bb.h, label %bb.g, !prof !17

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.u = load i8, ptr %i.t, align 1, !noalias !1222, !noundef !5
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.f, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !prof !13

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %bb.d, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  tail call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = add nsw i8 %i.m, -48
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = icmp ult i64 %i.n, %i.h
  br i1 %i.ad, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30.thread

bb.i:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30.thread, %bb.p, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %bb.f, %bb.c, %bb.g
  ret void

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30: ; preds = %bb.h, %bb.l
  %.sroa.07.053 = phi i64 [ %i.ao, %bb.l ], [ %i.ac, %bb.h ] ; 5 uses
  %i.ae = phi i64 [ %i.am, %bb.l ], [ %i.n, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !1223, !noundef !5
  %i.ah = add i8 %i.ag, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.ah, 10
  br i1 %or.cond2, label %bb.j, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30.thread

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30.thread: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30, %bb.l, %bb.h
  %.sroa.07.0.lcssa = phi i64 [ %i.ac, %bb.h ], [ %i.ao, %bb.l ], [ %.sroa.07.053, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30 ]
  tail call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.0.lcssa)
  br label %bb.i

bb.j:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp ugt i64 %.sroa.07.053, 1844674407370955160
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ne i64 %.sroa.07.053, 1844674407370955161
  %i.al = icmp samesign ugt i8 %i.ah, 5
  %or.cond3 = or i1 %i.ak, %i.al
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.am, ptr %i.e, align 8, !alias.scope !1224
  %i.an = mul nuw i64 %.sroa.07.053, 10
  %i.ao = add i64 %i.an, %i.ai                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.h
  br i1 %exitcond.not, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30.thread, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit30

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %.sroa.07.053)
  %i.ap = load i64, ptr %i.b, align 8, !range !9, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o

end_hunk_6
begin_hunk_7_@_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsjWl3uGiVprL_18influxdb3_commands:bb.a
  %i.au = load double, ptr %i.ar, align 8, !noundef !5
  store double %i.au, ptr %i.as, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ -1, %bb.n ], [ 0, %bb.o ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsjWl3uGiVprL_18influxdb3_commands(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1280, !noalias !1281, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1280, !noalias !1281, !noundef !5 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1280, !noalias !1281, !nonnull !5, !noundef !5 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !1282, !noundef !5 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !1280, !noalias !1281
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.c, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %bb.b
  %i.q = add i8 %i.n, -49
  %or.cond2 = icmp ult i8 %i.q, 9
  br i1 %or.cond2, label %.preheader, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread, !prof !13

.preheader:                                       ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit
  %i.r = icmp ult i64 %i.o, %i.i
  br i1 %i.r, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit43, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !1283, !noundef !5
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %bb.d, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !prof !13

bb.d:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.x = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit43, %.preheader, %bb.c, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.y = phi i64 [ %i.o, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ %i.o, %.preheader ], [ %i.o, %bb.c ], [ %i.ab, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit43 ] ; 5 uses
  %i.z = icmp ult i64 %i.y, %i.i
  br i1 %i.z, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit40, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread: ; preds = %bb.a, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit43: ; preds = %.preheader, %bb.e
  %i.ab = phi i64 [ %i.ag, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !1284, !noundef !5
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %bb.e, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

bb.e:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit43
  %i.ag = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !1285
  %exitcond.not = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit43

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit40: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !1286, !noundef !5
  switch i8 %i.ai, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %storemerge.peel.i = add nuw i64 %i.y, 1        ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !1287
  %i.aj = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.aj, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.peel.i, label %.thread.thread.i

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.peel.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !1288, !noundef !5
  %i.am = add i8 %i.al, -48
  %i.an = icmp ult i8 %i.am, 10
  br i1 %i.an, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.peel.i
  %i.ao = add i64 %i.i, -1                        ; 2 uses
  %exitcond80.not107 = icmp eq i64 %storemerge.peel.i, %i.ao
  br i1 %exitcond80.not107, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit.loopexit73, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i

.peel.next.i:                                     ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %exitcond80.not = icmp eq i64 %storemerge.i, %i.ao
  br i1 %exitcond80.not, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit.loopexit73, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i, !llvm.loop !1244

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i: ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in.i108 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in.i108, 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !1290, !noundef !5 ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %i.as = icmp ult i8 %i.ar, 10
  br i1 %i.as, label %.peel.next.i, label %.loopexit.i, !llvm.loop !1244

.loopexit.i:                                      ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !1287
  switch i8 %i.aq, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.peel.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1287
  store i64 13, ptr %i.c, align 8, !noalias !1287
  %i.at = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1287
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %i.au = add nuw i64 %storemerge.in.i108, 2      ; 5 uses
  store i64 %i.au, ptr %i.f, align 8, !alias.scope !1292
  %i.av = icmp ult i64 %i.au, %i.i
  br i1 %i.av, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i.i: ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !1293, !noundef !5
  switch i8 %i.ax, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i.i [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i.i: ; preds = %bb.h, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i.i, %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %i.az = icmp ult i64 %i.ay, %i.i
  br i1 %i.az, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i

bb.h:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i.i
  %i.ba = add nuw i64 %storemerge.in.i108, 3      ; 2 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !1295
  br label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i.i

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !1296, !noundef !5
  %i.bd = add nuw i64 %i.ay, 1                    ; 3 uses
  store i64 %i.bd, ptr %i.f, align 8, !alias.scope !1297, !noalias !1298
  %i.be = add i8 %i.bc, -48
  %i.bf = icmp ult i8 %i.be, 10
  br i1 %i.bf, label %.preheader.i.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i, !prof !13

.preheader.i.i:                                   ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i
  %i.bg = icmp ult i64 %i.bd, %i.i
  br i1 %i.bg, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1299
  store i64 13, ptr %i.b, align 8, !noalias !1299
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1299
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i.i: ; preds = %.preheader.i.i, %bb.i
  %i.bi = phi i64 [ %i.bn, %bb.i ], [ %i.bd, %.preheader.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !1300, !noundef !5
  %i.bl = add i8 %i.bk, -48
  %i.bm = icmp ult i8 %i.bl, 10
  br i1 %i.bm, label %bb.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

bb.i:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i.i
  %i.bn = add nuw i64 %i.bi, 1                    ; 3 uses
  store i64 %i.bn, ptr %i.f, align 8, !alias.scope !1301
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.i
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i.i

bb.j:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit40, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.bo = add nuw i64 %i.y, 1                     ; 5 uses
  store i64 %i.bo, ptr %i.f, align 8, !alias.scope !1303
  %i.bp = icmp ult i64 %i.bo, %i.i
  br i1 %i.bp, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i45, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i45: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !noalias !1304, !noundef !5
  switch i8 %i.br, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i: ; preds = %bb.k, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i45, %bb.j
  %i.bs = phi i64 [ %i.bo, %bb.j ], [ %i.bu, %bb.k ], [ %i.bo, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i45 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.bt = icmp ult i64 %i.bs, %i.i
  br i1 %i.bt, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i

bb.k:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i45, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i45
  %i.bu = add nuw i64 %i.y, 2                     ; 2 uses
  store i64 %i.bu, ptr %i.f, align 8, !alias.scope !1306
  br label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !1307, !noundef !5
  %i.bx = add nuw i64 %i.bs, 1                    ; 3 uses
  store i64 %i.bx, ptr %i.f, align 8, !alias.scope !1308, !noalias !1309
  %i.by = add i8 %i.bw, -48
  %i.bz = icmp ult i8 %i.by, 10
  br i1 %i.bz, label %.preheader.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i, !prof !13

.preheader.i:                                     ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i
  %i.ca = icmp ult i64 %i.bx, %i.i
  br i1 %i.ca, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1302
  store i64 13, ptr %i.a, align 8, !noalias !1302
  %i.cb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1302
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i: ; preds = %.preheader.i, %bb.l
  %i.cc = phi i64 [ %i.ch, %bb.l ], [ %i.bx, %.preheader.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !1310, !noundef !5
  %i.cf = add i8 %i.ce, -48
  %i.cg = icmp ult i8 %i.cf, 10
  br i1 %i.cg, label %bb.l, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

bb.l:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i
  %i.ch = add nuw i64 %i.cc, 1                    ; 3 uses
  store i64 %i.ch, ptr %i.f, align 8, !alias.scope !1311
  %exitcond.not.i = icmp eq i64 %i.ch, %i.i
  br i1 %exitcond.not.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit.loopexit73: ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !1287
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.e, %bb.l, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i, %bb.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i.i, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit.loopexit73, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i, %.preheader.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i, %.preheader.i.i, %.loopexit.i, %.thread.thread.i, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit40, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread, %bb.d
  %.sroa.0.3 = phi ptr [ %i.x, %bb.d ], [ null, %.preheader.i ], [ null, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit40 ], [ %i.aa, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread ], [ null, %bb.i ], [ null, %.loopexit.i ], [ null, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_decimalCsjWl3uGiVprL_18influxdb3_commands.exit.loopexit73 ], [ %i.at, %.thread.thread.i ], [ %i.bh, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i.i ], [ null, %.preheader.i.i ], [ null, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread ], [ %i.cb, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.thread.i ], [ null, %bb.l ], [ null, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i.i ], [ null, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit26.i ], [ null, %bb.e ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1328, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !1328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1329, !noalias !1330, !noundef !5 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !1329, !noalias !1330, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load i8, ptr %i.m, align 1, !noalias !1331, !noundef !5
  switch i8 %i.n, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 43, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  br label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, %bb.b
  %.sroa.0.0.ph = phi i1 [ false, %bb.b ], [ true, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ]
  %i.o = add i64 %i.g, 2                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8
  br label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split, %bb.a, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  %i.p = phi i64 [ %i.h, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ %i.h, %bb.a ], [ %i.o, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ] ; 3 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit ], [ true, %bb.a ], [ %.sroa.0.0.ph, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread.sink.split ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  %i.r = load ptr, ptr %i.e, align 8, !alias.scope !1332, !noalias !1333, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.t = load i8, ptr %i.s, align 1, !noalias !1334, !noundef !5
  %i.u = add nuw i64 %i.p, 1                      ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !alias.scope !1332, !noalias !1333
  %i.v = add i8 %i.t, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.f, label %bb.e, !prof !17

bb.d:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !1335, !noundef !5
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !1336
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsdLkRf3gRIi6_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !1338, !noundef !5 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1338
  store i64 14, ptr %i.a, align 8, !noalias !1338
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1338
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !1337, !noalias !1339
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsjWl3uGiVprL_18influxdb3_commands.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !1337, !noalias !1339
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsjWl3uGiVprL_18influxdb3_commands.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !10

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1338
  store i64 14, ptr %i.b, align 8, !noalias !1338
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1338
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !1337, !noalias !1339
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !1337, !noalias !1339
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsjWl3uGiVprL_18influxdb3_commands.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
end_hunk_7
begin_hunk_8_@_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsjWl3uGiVprL_18influxdb3_commands:bb.a
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !1425, !noalias !1416
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit38, label %bb.z, !prof !13

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1426
  store i64 5, ptr %i.b, align 8, !noalias !1426
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1426
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1426
  store i64 9, ptr %i.a, align 8, !noalias !1426
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1426
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !1427
  call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(64) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !1428, !noundef !5
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !3

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !1429
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !15, !noundef !5
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !3

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit38, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit30, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit ], [ %i.ce, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit30 ], [ %i.cg, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.thread

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !align !7, !noundef !5
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 dereferenceable(64) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !1428, !noundef !5
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !3

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !align !7, !noundef !5
  br label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsdLkRf3gRIi6_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsjWl3uGiVprL_18influxdb3_commands.exit.thread: ; preds = %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error9ErrorCodeECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %1) #19
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsjWl3uGiVprL_18influxdb3_commands(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1441, !noalias !1442, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !1440, !noalias !1443 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i, %i.f
  br i1 %i.g, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1441, !noalias !1442, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !1445, !noundef !5
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.e
    i8 44, label %bb.f
  ], !prof !12

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !1446, !noalias !1443
  %exitcond.not.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 3, ptr %i.a, align 8
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !1447
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.q = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsjWl3uGiVprL_18influxdb3_commands(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1469, !noalias !1470, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !1468, !noalias !1471 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1469, !noalias !1470, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !1473, !noundef !5
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !prof !12

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add nuw i64 %i.k, 1                      ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !1474, !noalias !1471
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 2, ptr %i.a, align 8
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.e:                                             ; preds = %bb.b
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !1475
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.r = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !1476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.s = icmp ult i64 %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i12, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit16.thread

.lr.ph.i12:                                       ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !1478, !noundef !5
  switch i8 %i.v, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit16.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12, %.lr.ph.i12
  %i.w = add nuw i64 %i.t, 1                      ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !alias.scope !1479, !noalias !1480
  %exitcond.not.i13 = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not.i13, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit16.thread, label %.lr.ph.i12

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit16.thread: ; preds = %.lr.ph.i12, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 22, ptr %i.c, align 8
  %i.x = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.l unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.y = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit16.thread
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEECsjWl3uGiVprL_18influxdb3_commands(i8 0, ptr undef) #19
          to label %bb.n unwind label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.0.1 = phi ptr [ %i.x, %bb.l ], [ %i.y, %bb.j ]
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEECsjWl3uGiVprL_18influxdb3_commands(i8 0, ptr undef)
  br label %bb.o

bb.l:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsjWl3uGiVprL_18influxdb3_commands.exit16.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.m:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.n:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.z

bb.o:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.k
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %.sroa.0.1, %bb.k ], [ %i.o, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7boundedINtB5_6PermitINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEE4sendB2f_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvMs6_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chanINtB5_2TxINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB7_7bounded9SemaphoreE4sendB28_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded6PermitINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEEB2s_(ptr nonnull %0) #19
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNCNvMs1_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7boundedINtBa_6SenderpE13reserve_inner0INtB2_18WakeReceiverOnDropINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEENtNtNtB1S_3ops4drop4Drop4dropB32_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_RNvXse_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore9is_closed(ptr noundef nonnull align 8 %i.c)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXse_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore7is_idle(ptr noundef nonnull align 8 %i.c)
  br i1 %i.e, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  tail call void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.g)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB6_5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.c = load i64, ptr %i.b, align 8, !range !4, !alias.scope !1484, !noalias !1485, !noundef !5
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1486
  store ptr %i.b, ptr %i.a, align 8, !noalias !1486
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1486
  br label %_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 4), !noalias !1484
  br label %_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %i.c = load i8, ptr %i.b, align 1, !range !11, !alias.scope !1490, !noalias !1491, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1492
  store ptr %i.e, ptr %i.a, align 8, !noalias !1492
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1492
  br label %_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 4), !noalias !1490
  br label %_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands.exit

_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_5Debug3fmtCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_7Display3fmtCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsiECD8s3SJSY_11comfy_table3rowNtB4_3RowINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtNtNtBP_4iter8adapters3map3MapINtNtNtBP_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringEINvMNtB6_4cellNtB2Z_4Cell3newRB2j_EEE4fromCsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs0_NtCsiECD8s3SJSY_11comfy_table4cellNtB5_5CellsINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtNtNtBT_4iter8adapters3map3MapINtNtNtBT_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringEINvMB5_NtB5_4Cell3newRB2n_EEE4fromCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noundef %2)
  store i64 0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCsiECD8s3SJSY_11comfy_table3rowNtB4_3RowINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtNtNtBP_4iter8adapters3map3MapINtNtNtBP_5slice4iter4IterReEINvMNtB6_4cellNtB2q_4Cell3newRB2j_EEE4fromCsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs0_NtCsiECD8s3SJSY_11comfy_table4cellNtB5_5CellsINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtNtNtBT_4iter8adapters3map3MapINtNtNtBT_5slice4iter4IterReEINvMB5_NtB5_4Cell3newRB2n_EEE4fromCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noundef %2)
  store i64 0, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXse_NtNtCsbyItyepKEh3_12clap_builder7builder10resettableINtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFromjEINtB5_14IntoResettableNtNtB7_5range10ValueRangeE15into_resettableCsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.b, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_8
