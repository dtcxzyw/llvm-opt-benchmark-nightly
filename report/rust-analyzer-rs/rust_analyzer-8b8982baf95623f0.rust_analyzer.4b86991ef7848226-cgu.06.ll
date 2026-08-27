Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.06?download=true
inline.NumInlined: 5464
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXNtNtNtCshzWfHUSfYae_4core3ops8function5implsRNCNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3cli9run_testsNtNtBS_5flags8RunTests3runs2_0INtB4_2FnTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCsuAhG64lL82_9text_size5range9TextRangeEE4callBU_:bb.a
  store ptr %i.c, ptr %i.b, align 8, !noalias !12519
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @182, ptr %i.ao, align 8, !noalias !12519
  %i.ap = invoke noundef zeroext i1 @_RNvXs0_NtCs4sl5YdnrCxp_3vfs8vfs_pathNtB5_7VfsPathNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.o unwind label %bb.n, !noalias !12523

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #44
          to label %.body.i unwind label %bb.q, !noalias !12523

bb.o:                                             ; preds = %bb.m
  br i1 %i.ap, label %bb.p, label %bb.r, !prof !288

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @269, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #48
          to label %.noexc.i.i unwind label %bb.n, !noalias !12523

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !12523
  unreachable

.thread.i:                                        ; preds = %bb.l
  store i64 -1, ptr %i.f, align 8, !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12513
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !12513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12519
  %.pr.i = load i64, ptr %i.f, align 8, !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12513
  %.not27.i = icmp eq i64 %.pr.i, -1
  br i1 %.not27.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !12513, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !12513, !noundef !4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.thread.i
  %.sink13.i = phi ptr [ %i.at, %bb.s ], [ @86, %.thread.i ], [ @86, %bb.r ]
  %.sink.i = phi i64 [ %i.av, %bb.s ], [ 14, %.thread.i ], [ 14, %bb.r ]
  %i.aw = phi i1 [ false, %bb.s ], [ true, %.thread.i ], [ true, %bb.r ]
  store ptr %.sink13.i, ptr %i.e, align 8, !noalias !12513, !captures !9704
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink.i, ptr %i.ax, align 8, !noalias !12513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12513
  store ptr %i.e, ptr %i.d, align 8, !noalias !12513
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !12513
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.l, ptr %i.ay, align 8, !noalias !12513
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !12513
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @87, ptr noundef nonnull %i.d)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #44
          to label %.body.i unwind label %bb.ae, !noalias !12513

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12513
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.y unwind label %bb.w, !noalias !12513

bb.w:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !12524, !noalias !12513 ; 2 uses
  %i.bb = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.bb, label %.body.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !12533, !noalias !12513, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !12534
  br label %.body.i

bb.y:                                             ; preds = %bb.v
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !12524, !noalias !12513 ; 2 uses
  %i.bd = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !12533, !noalias !12513, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !12537
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.z, %bb.y, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12513
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit36.i unwind label %bb.f, !noalias !12513

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit36.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12513
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ac unwind label %bb.aa, !noalias !12513

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit36.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !12540, !noalias !12513 ; 2 uses
  %i.bg = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bg, label %common.resume.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val3.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !12547, !noalias !12513, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !12548
  br label %common.resume.i

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit36.i
  %.val.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !12540, !noalias !12513 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bi, label %_RNCNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3cli9run_testsNtNtB6_5flags8RunTests3runs2_0B8_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !12547, !noalias !12513, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !12551
  br label %_RNCNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3cli9run_testsNtNtB6_5flags8RunTests3runs2_0B8_.exit

common.resume.i:                                  ; preds = %bb.ab, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bf, %bb.aa ], [ %i.bf, %bb.ab ], [ %.pn29.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ae:                                            ; preds = %bb.u, %.body.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !12513
  unreachable

_RNCNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3cli9run_testsNtNtB6_5flags8RunTests3runs2_0B8_.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14false_or_never11deserializeNtB2_1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs3smBju6uAx0_7ide_ssr6errorsNtB5_8SsrErrorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @194)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCscFGNKo4Sl5v_9itertools12permutationsINtB5_12PermutationsINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.5.i = alloca [12 x i8], align 4          ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = load i64, ptr %1, align 8, !range !12554, !noundef !4
  switch i64 %i.i, label %default.unreachable156 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

default.unreachable156:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 15 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12555)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12558)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !12561, !noalias !12562, !noundef !4
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12564)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !12567, !noalias !12568, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !12567, !noalias !12568, !nonnull !4, !noundef !4 ; 5 uses
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.s, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.t, ptr %i.q, align 8, !alias.scope !12567, !noalias !12568
  %.sroa.0.0.copyload1.i = load i64, ptr %i.r, align 8, !noalias !12567
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload3.i = load i32, ptr %.sroa.4.0..sroa_idx2.i, align 8, !noalias !12567 ; 2 uses
  %.not.not.i = icmp eq i32 %.sroa.4.0.copyload3.i, -1
  br i1 %.not.not.i, label %bb.s, label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx4.i, i64 12, i1 false), !noalias !12555
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !12570, !noalias !12573, !noundef !4 ; 3 uses
  %i.w = load i64, ptr %i.h, align 8, !range !7427, !alias.scope !12570, !noalias !12573, !noundef !4
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir4TypeE8grow_oneCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #47, !noalias !12573
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  %i.ag = tail call noundef zeroext i1 @_RNvNtCscFGNKo4Sl5v_9itertools12permutations7advance(ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef %i.ab, ptr noalias nofree noundef nonnull align 8 %i.ad, i64 noundef %i.af)
  br i1 %i.ag, label %bb.ai, label %bb.ah

bb.h:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit101

bb.i:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 4 uses
  %i.aj = icmp ult i64 %i.ai, 384307168202282326
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp ugt i64 %i.k, %i.ai
  br i1 %i.ak, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.b
  store i64 3, ptr %1, align 8
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit101

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit101: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i100, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.t, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit91, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit113, %bb.ak, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit82, %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.j, %bb.h
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit105: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i104, %bb.ag
  resume { ptr, i32 } %.pn54.ph

bb.k:                                             ; preds = %bb.l, %bb.i
  %i.al = phi i64 [ %.pre, %bb.l ], [ %i.ai, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = icmp ult i64 %i.al, 384307168202282326
  tail call void @llvm.assume(i1 %i.an)
  %.not56 = icmp eq i64 %i.al, %i.k
  br i1 %.not56, label %bb.m, label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.ao = sub nuw i64 %i.k, %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB6_3VecNtCs8Xq8PKFYOms_3hir4TypeEINtB4_10SpecExtendBT_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters4take4TakeQINtNtB1J_4fuse4FuseINtNtB6_9into_iter8IntoIterBT_EEEE11spec_extendCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.ao)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12575)
  %i.aq = load i64, ptr %1, align 8, !range !12554, !alias.scope !12575, !noundef !4
  %i.ar = icmp eq i64 %i.aq, 2
  br i1 %i.ar, label %bb.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i67 = load i64, ptr %i.as, align 8, !alias.scope !12575, !noundef !4 ; 2 uses
  %i.at = icmp eq i64 %.val5.i67, 0
  br i1 %i.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i70, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i68

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i68: ; preds = %bb.n
  %.val4.i69 = load ptr, ptr %i.j, align 8, !alias.scope !12575, !nonnull !4, !noundef !4
  %i.au = shl nuw nsw i64 %.val5.i67, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i69, i64 noundef %i.au, i64 noundef 8) #42, !noalias !12575
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i70

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i70: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i68, %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i71 = load i64, ptr %i.av, align 8, !alias.scope !12575, !noundef !4 ; 2 uses
  %i.aw = icmp eq i64 %.val1.i71, 0
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i72

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i72: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i70
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i73 = load ptr, ptr %i.ax, align 8, !alias.scope !12575, !nonnull !4, !noundef !4
  %i.ay = shl nuw nsw i64 %.val1.i71, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i73, i64 noundef %i.ay, i64 noundef 8) #42, !noalias !12575
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74

bb.o:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12578)
  %i.az = load i64, ptr %1, align 8, !range !12554, !alias.scope !12578, !noundef !4
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit82

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i75 = load i64, ptr %i.bb, align 8, !alias.scope !12578, !noundef !4 ; 2 uses
  %i.bc = icmp eq i64 %.val5.i75, 0
  br i1 %i.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i78, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i76

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i76: ; preds = %bb.p
  %.val4.i77 = load ptr, ptr %i.j, align 8, !alias.scope !12578, !nonnull !4, !noundef !4
  %i.bd = shl nuw nsw i64 %.val5.i75, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i77, i64 noundef %i.bd, i64 noundef 8) #42, !noalias !12578
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i78

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i78: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i76, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i79 = load i64, ptr %i.be, align 8, !alias.scope !12578, !noundef !4 ; 2 uses
  %i.bf = icmp eq i64 %.val1.i79, 0
  br i1 %i.bf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit82, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i80

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i80: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i78
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i81 = load ptr, ptr %i.bg, align 8, !alias.scope !12578, !nonnull !4, !noundef !4
  %i.bh = shl nuw nsw i64 %.val1.i79, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i81, i64 noundef %i.bh, i64 noundef 8) #42, !noalias !12578
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit82

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i72, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i70, %bb.m
  store i64 1, ptr %1, align 8
  store i64 %i.k, ptr %i.j, align 8
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %.sroa.6.0..sroa_idx16, align 8
  %i.bi = load i64, ptr %i.am, align 8, !noundef !4 ; 2 uses
  %.not57 = icmp ugt i64 %i.k, %i.bi
  br i1 %.not57, label %bb.q, label %bb.r, !prof !12581

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #48
  unreachable

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12582)
  %i.bl = mul nuw nsw i64 %i.k, 24                ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !12585
  %i.bm = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bl, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !12585 ; 5 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %3, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader: ; preds = %bb.r
  %xtraiter = and i64 %i.k, 1
  %2 = icmp eq i64 %i.k, 1
  br i1 %2, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.epil.preheader, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader.new

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader.new: ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader
  %unroll_iter = and i64 %i.k, -2
  br label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i

3:                                                ; preds = %bb.r
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bl) #43, !noalias !12589
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader.new
  %.sroa.012.033.i = phi ptr [ %i.bk, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader.new ], [ %9, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i ] ; 5 uses
  %.sroa.7.032.i = phi i64 [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader.new ], [ %8, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i ] ; 3 uses
  %niter = phi i64 [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader.new ], [ %niter.next.1, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.012.033.i, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.012.033.i, i64 8
  %6 = load ptr, ptr %.sroa.012.033.i, align 8, !alias.scope !12590, !noalias !12593, !nonnull !4, !noundef !4
  %7 = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.7.032.i ; 2 uses
  store ptr %6, ptr %7, align 8, !noalias !12589
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.423.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !noalias !12595
  %8 = add nuw nsw i64 %.sroa.7.032.i, 2          ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.012.033.i, i64 48 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.012.033.i, i64 32
  %11 = load ptr, ptr %4, align 8, !alias.scope !12590, !noalias !12593, !nonnull !4, !noundef !4
  %12 = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.7.032.i ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %13, align 8, !noalias !12589
  %.sroa.423.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %12, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.423.0..sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false), !noalias !12595
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa: ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.epil.preheader

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.epil.preheader: ; preds = %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader
  %.sroa.012.033.i.epil.init = phi ptr [ %i.bk, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader ], [ %9, %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa ] ; 2 uses
  %.sroa.7.032.i.epil.init = phi i64 [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader ], [ %8, %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa ]
  %lcmp.mod159 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod159)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.012.033.i.epil.init, i64 8
  %i.bp = load ptr, ptr %.sroa.012.033.i.epil.init, align 8, !alias.scope !12590, !noalias !12593, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.7.032.i.epil.init ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !noalias !12589
  %.sroa.423.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.423.0..sroa_idx.i.epil, ptr noundef nonnull align 8 dereferenceable(12) %i.bo, i64 12, i1 false), !noalias !12595
  br label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.epil.preheader
  store i64 %i.k, ptr %0, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.5133.0..sroa_idx, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit101

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit82: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i80, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i78, %bb.o
  store i64 3, ptr %1, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit101

bb.s:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.d, %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8, !noundef !4 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !4 ; 2 uses
  %i.bv = add i64 %i.bs, 1                        ; 2 uses
  %i.bw = sub i64 %i.bv, %i.bu
  %i.bx = tail call { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSjEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtB11_3ops5range5RangejEECs6u1mgJOKDyY_13rust_analyzer(i64 noundef 0, i64 noundef %i.bs) ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 0      ; 9 uses
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1      ; 8 uses
  %i.ca = load i64, ptr %i.bt, align 8, !noundef !4
  %i.cb = sub i64 %i.bs, %i.ca
  %i.cc = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSjEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBZ_8adapters3rev3RevINtNtNtB11_3ops5range5RangejEEECs6u1mgJOKDyY_13rust_analyzer(i64 noundef %i.cb, i64 noundef %i.bs)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.t:                                             ; preds = %bb.f, %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !12570, !noalias !12573, !nonnull !4, !noundef !4
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.v ; 3 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.cf, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %.sroa.4.0.copyload3.i, ptr %.sroa.46.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, i64 12, i1 false)
  %i.cg = add i64 %i.v, 1
  store i64 %i.cg, ptr %i.u, align 8, !alias.scope !12570, !noalias !12573
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !4
  %i.cj = add i64 %i.ci, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !4
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx114, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.cj, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx115, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.cl, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.g, ptr %i.cm, align 8
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtCs8Xq8PKFYOms_3hir4TypeEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1M_5chain5ChainINtNtNtB1Q_3ops5range5RangejEINtNtNtB1O_7sources4once4OncejEENCNvXs0_NtCscFGNKo4Sl5v_9itertools12permutationsINtB3X_12PermutationsINtNtB4_9into_iter8IntoIterBU_EENtNtNtB1O_6traits8iterator8Iterator4next0EE9from_iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cn = load i64, ptr %i.ck, align 8, !noundef !4
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.ck, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit101

bb.u:                                             ; preds = %bb.s
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.v:                                             ; preds = %bb.s
  %i.cq = extractvalue { ptr, i64 } %i.cc, 0      ; 7 uses
  %i.cr = extractvalue { ptr, i64 } %i.cc, 1      ; 6 uses
  %exitcond.not157 = icmp eq i64 %i.bv, %i.bu
  br i1 %exitcond.not157, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br label %.lr.ph

bb.w:                                             ; preds = %bb.ad
  %i.cs = add i64 %.sroa.042.0158, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.bw
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ct = load i64, ptr %i.bt, align 8, !noundef !4 ; 3 uses
  %.not52 = icmp ugt i64 %i.ct, %i.bz
  br i1 %.not52, label %bb.y, label %bb.x, !prof !12581

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.sroa.042.0158 = phi i64 [ %i.cs, %bb.w ], [ 0, %.lr.ph.preheader ]
  %i.cu = invoke noundef zeroext i1 @_RNvNtCscFGNKo4Sl5v_9itertools12permutations7advance(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef %i.bz, ptr noalias nofree noundef nonnull align 8 %i.cq, i64 noundef %i.cr)
          to label %bb.ad unwind label %.loopexit

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8, !noalias !12596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12596
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ct
  store ptr %i.by, ptr %i.c, align 8, !noalias !12596
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.cv, ptr %i.cw, align 8, !noalias !12596
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.cx, align 8, !noalias !12596
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtCs8Xq8PKFYOms_3hir4TypeEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1Q_5slice4iter4IterjENCNvMs_NtCscFGNKo4Sl5v_9itertools11lazy_bufferINtB35_10LazyBufferINtNtB4_9into_iter8IntoIterBU_EE6get_at0EE9from_iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ct, i64 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #43
          to label %bb.ac unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.y, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cy = icmp eq i64 %i.cr, 0
  br i1 %i.cy, label %bb.ag, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i102

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12601)
  %i.cz = load i64, ptr %1, align 8, !range !12554, !alias.scope !12601, !noundef !4
  %i.da = icmp eq i64 %i.cz, 2
  br i1 %i.da, label %bb.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit91

bb.ab:                                            ; preds = %bb.aa
  %.val5.i84 = load i64, ptr %i.br, align 8, !alias.scope !12601, !noundef !4 ; 2 uses
  %i.db = icmp eq i64 %.val5.i84, 0
  br i1 %i.db, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i87, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i85

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i85: ; preds = %bb.ab
  %.val4.i86 = load ptr, ptr %i.bt, align 8, !alias.scope !12601, !nonnull !4, !noundef !4
  %i.dc = shl nuw nsw i64 %.val5.i84, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i86, i64 noundef %i.dc, i64 noundef 8) #42, !noalias !12601
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i87

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i87: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i85, %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i88 = load i64, ptr %i.dd, align 8, !alias.scope !12601, !noundef !4 ; 2 uses
  %i.de = icmp eq i64 %.val1.i88, 0
  br i1 %i.de, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit91, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i89

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i89: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i87
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i90 = load ptr, ptr %i.df, align 8, !alias.scope !12601, !nonnull !4, !noundef !4
  %i.dg = shl nuw nsw i64 %.val1.i88, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i90, i64 noundef %i.dg, i64 noundef 8) #42, !noalias !12601
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit91

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit91: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i89, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i87, %bb.aa
  store i64 2, ptr %1, align 8
  store ptr %i.by, ptr %i.bt, align 8
  store i64 %i.bz, ptr %i.br, align 8
  %.sroa.731.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.cq, ptr %.sroa.731.0..sroa_idx32, align 8
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.cr, ptr %.sroa.8.0..sroa_idx34, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit101

bb.ac:                                            ; preds = %bb.y
  unreachable

bb.ad:                                            ; preds = %.lr.ph
  br i1 %i.cu, label %bb.ae, label %bb.w

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12604)
  %i.dh = load i64, ptr %1, align 8, !range !12554, !alias.scope !12604, !noundef !4
  %i.di = icmp eq i64 %i.dh, 2
  br i1 %i.di, label %bb.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit99

bb.af:                                            ; preds = %bb.ae
  %.val5.i92 = load i64, ptr %i.br, align 8, !alias.scope !12604, !noundef !4 ; 2 uses
  %i.dj = icmp eq i64 %.val5.i92, 0
  br i1 %i.dj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i95, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i93

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i93: ; preds = %bb.af
  %.val4.i94 = load ptr, ptr %i.bt, align 8, !alias.scope !12604, !nonnull !4, !noundef !4
  %i.dk = shl nuw nsw i64 %.val5.i92, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i94, i64 noundef %i.dk, i64 noundef 8) #42, !noalias !12604
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i95

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i95: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i93, %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i96 = load i64, ptr %i.dl, align 8, !alias.scope !12604, !noundef !4 ; 2 uses
  %i.dm = icmp eq i64 %.val1.i96, 0
end_hunk_0
