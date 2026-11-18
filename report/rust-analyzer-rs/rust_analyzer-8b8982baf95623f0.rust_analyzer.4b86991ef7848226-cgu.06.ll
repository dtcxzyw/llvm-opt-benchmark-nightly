Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.06?download=true
inline.NumInlined: 5466
inline.NumDeleted: 2792
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXNtNtNtCshzWfHUSfYae_4core3ops8function5implsRNCNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3cli9run_testsNtNtBS_5flags8RunTests3runs2_0INtB4_2FnTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCsuAhG64lL82_9text_size5range9TextRangeEE4callBU_:bb.a
  store ptr %i.c, ptr %i.b, align 8, !noalias !13006
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @182, ptr %i.ao, align 8, !noalias !13006
  %i.ap = invoke noundef zeroext i1 @_RNvXs0_NtCs4sl5YdnrCxp_3vfs8vfs_pathNtB5_7VfsPathNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.o unwind label %bb.n, !noalias !13007

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #44
          to label %.body.i unwind label %bb.q, !noalias !13007

bb.o:                                             ; preds = %bb.m
  br i1 %i.ap, label %bb.p, label %bb.r, !prof !13

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @269, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #48
          to label %.noexc.i.i unwind label %bb.n, !noalias !13007

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !13007
  unreachable

.thread.i:                                        ; preds = %bb.l
  store i64 -1, ptr %i.f, align 8, !noalias !13004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13004
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !13004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13006
  %.pr.i = load i64, ptr %i.f, align 8, !noalias !13004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13004
  %.not27.i = icmp eq i64 %.pr.i, -1
  br i1 %.not27.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !13004, !nonnull !8, !noundef !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !13004, !noundef !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.thread.i
  %.sink13.i = phi ptr [ %i.at, %bb.s ], [ @86, %.thread.i ], [ @86, %bb.r ]
  %.sink.i = phi i64 [ %i.av, %bb.s ], [ 14, %.thread.i ], [ 14, %bb.r ]
  %i.aw = phi i1 [ false, %bb.s ], [ true, %.thread.i ], [ true, %bb.r ]
  store ptr %.sink13.i, ptr %i.e, align 8, !noalias !13004, !captures !54
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sink.i, ptr %i.ax, align 8, !noalias !13004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13004
  store ptr %i.e, ptr %i.d, align 8, !noalias !13004
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !13004
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.l, ptr %i.ay, align 8, !noalias !13004
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !13004
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @87, ptr noundef nonnull %i.d)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #44
          to label %.body.i unwind label %bb.ae, !noalias !13004

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13004
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.y unwind label %bb.w, !noalias !13004

bb.w:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !13008, !noalias !13004 ; 2 uses
  %i.bb = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.bb, label %.body.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !13009, !noalias !13004, !nonnull !8, !noundef !8
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !13010
  br label %.body.i

bb.y:                                             ; preds = %bb.v
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !13008, !noalias !13004 ; 2 uses
  %i.bd = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !13009, !noalias !13004, !nonnull !8, !noundef !8
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !13011
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.z, %bb.y, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13004
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootE10drop_innerCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit36.i unwind label %bb.f, !noalias !13004

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit36.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13004
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ac unwind label %bb.aa, !noalias !13004

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit36.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !13012, !noalias !13004 ; 2 uses
  %i.bg = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bg, label %common.resume.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val3.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !13013, !noalias !13004, !nonnull !8, !noundef !8
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !13014
  br label %common.resume.i

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit36.i
  %.val.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !13012, !noalias !13004 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bi, label %_RNCNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3cli9run_testsNtNtB6_5flags8RunTests3runs2_0B8_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !13013, !noalias !13004, !nonnull !8, !noundef !8
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !13015
  br label %_RNCNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3cli9run_testsNtNtB6_5flags8RunTests3runs2_0B8_.exit

common.resume.i:                                  ; preds = %bb.ab, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bf, %bb.aa ], [ %i.bf, %bb.ab ], [ %.pn29.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ae:                                            ; preds = %bb.u, %.body.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !13004
  unreachable

_RNCNvMNtNtCs6u1mgJOKDyY_13rust_analyzer3cli9run_testsNtNtB6_5flags8RunTests3runs2_0B8_.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvNtNtCs6u1mgJOKDyY_13rust_analyzer6config14false_or_never11deserializeNtB2_1VNtNtCsjQbM3MYDIrM_10serde_core2de7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !13016 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs3smBju6uAx0_7ide_ssr6errorsNtB5_8SsrErrorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !13017 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @194)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCscFGNKo4Sl5v_9itertools12permutationsINtB5_12PermutationsINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !13052 {
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
  %i.i = load i64, ptr %1, align 8, !range !13053, !noundef !8
  switch i64 %i.i, label %default.unreachable157 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

default.unreachable157:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !8 ; 15 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13054)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13055)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !13056, !noundef !8
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13057)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !13058, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !13058, !nonnull !8, !noundef !8 ; 5 uses
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.s, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.t, ptr %i.q, align 8, !alias.scope !13058
  %.sroa.0.0.copyload1.i = load i64, ptr %i.r, align 8, !noalias !13058
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload3.i = load i32, ptr %.sroa.4.0..sroa_idx2.i, align 8, !noalias !13058 ; 2 uses
  %.not.not.i = icmp eq i32 %.sroa.4.0.copyload3.i, -1
  br i1 %.not.not.i, label %bb.s, label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4TypeEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx4.i, i64 12, i1 false), !noalias !13054
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !13059, !noundef !8 ; 3 uses
  %i.w = load i64, ptr %i.h, align 8, !range !37, !alias.scope !13059, !noundef !8
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir4TypeE8grow_oneCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #47, !noalias !13060
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !8, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !8
  %i.ag = tail call noundef zeroext i1 @_RNvNtCscFGNKo4Sl5v_9itertools12permutations7advance(ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef %i.ab, ptr noalias nofree noundef nonnull align 8 %i.ad, i64 noundef %i.af)
  br i1 %i.ag, label %bb.ah, label %bb.ag

bb.h:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit101

bb.i:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !8 ; 4 uses
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

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit101: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i100, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.t, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit91, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit113, %bb.aj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit82, %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.j, %bb.h
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit105: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i104, %bb.af
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13061)
  %i.aq = load i64, ptr %1, align 8, !range !13053, !alias.scope !13061, !noundef !8
  %i.ar = icmp eq i64 %i.aq, 2
  br i1 %i.ar, label %bb.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i67 = load i64, ptr %i.as, align 8, !alias.scope !13061, !noundef !8 ; 2 uses
  %i.at = icmp eq i64 %.val5.i67, 0
  br i1 %i.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i70, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i68

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i68: ; preds = %bb.n
  %.val4.i69 = load ptr, ptr %i.j, align 8, !alias.scope !13061, !nonnull !8, !noundef !8
  %i.au = shl nuw nsw i64 %.val5.i67, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i69, i64 noundef %i.au, i64 noundef 8) #42, !noalias !13061
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i70

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i70: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i68, %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i71 = load i64, ptr %i.av, align 8, !alias.scope !13061, !noundef !8 ; 2 uses
  %i.aw = icmp eq i64 %.val1.i71, 0
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i72

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i72: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i70
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i73 = load ptr, ptr %i.ax, align 8, !alias.scope !13061, !nonnull !8, !noundef !8
  %i.ay = shl nuw nsw i64 %.val1.i71, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i73, i64 noundef %i.ay, i64 noundef 8) #42, !noalias !13061
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74

bb.o:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13062)
  %i.az = load i64, ptr %1, align 8, !range !13053, !alias.scope !13062, !noundef !8
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit82

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i75 = load i64, ptr %i.bb, align 8, !alias.scope !13062, !noundef !8 ; 2 uses
  %i.bc = icmp eq i64 %.val5.i75, 0
  br i1 %i.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i78, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i76

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i76: ; preds = %bb.p
  %.val4.i77 = load ptr, ptr %i.j, align 8, !alias.scope !13062, !nonnull !8, !noundef !8
  %i.bd = shl nuw nsw i64 %.val5.i75, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i77, i64 noundef %i.bd, i64 noundef 8) #42, !noalias !13062
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i78

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i78: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i76, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i79 = load i64, ptr %i.be, align 8, !alias.scope !13062, !noundef !8 ; 2 uses
  %i.bf = icmp eq i64 %.val1.i79, 0
  br i1 %i.bf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit82, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i80

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i80: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i78
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i81 = load ptr, ptr %i.bg, align 8, !alias.scope !13062, !nonnull !8, !noundef !8
  %i.bh = shl nuw nsw i64 %.val1.i79, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i81, i64 noundef %i.bh, i64 noundef 8) #42, !noalias !13062
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit82

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i72, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i70, %bb.m
  store i64 1, ptr %1, align 8
  store i64 %i.k, ptr %i.j, align 8
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %.sroa.6.0..sroa_idx16, align 8
  %i.bi = load i64, ptr %i.am, align 8, !noundef !8 ; 2 uses
  %.not57 = icmp ugt i64 %i.k, %i.bi
  br i1 %.not57, label %bb.q, label %bb.r, !prof !13063

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #48
  unreachable

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit74
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !8, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13064)
  %i.bl = mul nuw nsw i64 %i.k, 24                ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !13065
  %i.bm = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bl, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !13065 ; 5 uses
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
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bl) #43, !noalias !13066
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader.new
  %.sroa.012.033.i = phi ptr [ %i.bk, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader.new ], [ %9, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i ] ; 5 uses
  %.sroa.7.032.i = phi i64 [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader.new ], [ %8, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i ] ; 3 uses
  %niter = phi i64 [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader.new ], [ %niter.next.1, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.012.033.i, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.012.033.i, i64 8
  %6 = load ptr, ptr %.sroa.012.033.i, align 8, !alias.scope !13067, !nonnull !8, !noundef !8
  %7 = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.7.032.i ; 2 uses
  store ptr %6, ptr %7, align 8, !noalias !13066
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.423.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !noalias !13068
  %8 = add nuw nsw i64 %.sroa.7.032.i, 2          ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.012.033.i, i64 48 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.sroa.012.033.i, i64 32
  %11 = load ptr, ptr %4, align 8, !alias.scope !13067, !nonnull !8, !noundef !8
  %12 = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.7.032.i ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %13, align 8, !noalias !13066
  %.sroa.423.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %12, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.423.0..sroa_idx.i.1, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false), !noalias !13068
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa: ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.epil.preheader

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.epil.preheader: ; preds = %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader
  %.sroa.012.033.i.epil.init = phi ptr [ %i.bk, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader ], [ %9, %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa ] ; 2 uses
  %.sroa.7.032.i.epil.init = phi i64 [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.i.preheader ], [ %8, %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCs8Xq8PKFYOms_3hir4TypeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit.unr-lcssa ]
  %lcmp.mod161 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.012.033.i.epil.init, i64 8
  %i.bp = load ptr, ptr %.sroa.012.033.i.epil.init, align 8, !alias.scope !13067, !nonnull !8, !noundef !8
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.7.032.i.epil.init ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !noalias !13066
  %.sroa.423.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.423.0..sroa_idx.i.epil, ptr noundef nonnull align 8 dereferenceable(12) %i.bo, i64 12, i1 false), !noalias !13068
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
  %i.bs = load i64, ptr %i.br, align 8, !noundef !8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !8 ; 2 uses
  %i.bv = add i64 %i.bs, 1                        ; 2 uses
  %i.bw = sub i64 %i.bv, %i.bu
  %i.bx = tail call { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSjEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtB11_3ops5range5RangejEECs6u1mgJOKDyY_13rust_analyzer(i64 noundef 0, i64 noundef %i.bs) ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 0      ; 9 uses
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1      ; 8 uses
  %i.ca = load i64, ptr %i.bt, align 8, !noundef !8
  %i.cb = sub i64 %i.bs, %i.ca
  %i.cc = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSjEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBZ_8adapters3rev3RevINtNtNtB11_3ops5range5RangejEEECs6u1mgJOKDyY_13rust_analyzer(i64 noundef %i.cb, i64 noundef %i.bs)
          to label %bb.v unwind label %bb.u       ; 2 uses

bb.t:                                             ; preds = %bb.f, %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !13059, !nonnull !8, !noundef !8
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.v ; 3 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.cf, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %.sroa.4.0.copyload3.i, ptr %.sroa.46.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, i64 12, i1 false)
  %i.cg = add i64 %i.v, 1
  store i64 %i.cg, ptr %i.u, align 8, !alias.scope !13059
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !8
  %i.cj = add i64 %i.ci, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !8
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
  %i.cn = load i64, ptr %i.ck, align 8, !noundef !8
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.ck, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit101

bb.u:                                             ; preds = %bb.s
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.v:                                             ; preds = %bb.s
  %i.cq = extractvalue { ptr, i64 } %i.cc, 0      ; 7 uses
  %i.cr = extractvalue { ptr, i64 } %i.cc, 1      ; 6 uses
  %exitcond.not158 = icmp eq i64 %i.bv, %i.bu
  br i1 %exitcond.not158, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by), "nonnull"(ptr %i.cq) ]
  br label %.lr.ph

bb.w:                                             ; preds = %bb.ac
  %i.cs = add i64 %.sroa.042.0159, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.bw
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ct = load i64, ptr %i.bt, align 8, !noundef !8 ; 3 uses
  %.not52 = icmp ugt i64 %i.ct, %i.bz
  br i1 %.not52, label %bb.y, label %bb.x, !prof !13063

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.sroa.042.0159 = phi i64 [ %i.cs, %bb.w ], [ 0, %.lr.ph.preheader ]
  %i.cu = invoke noundef zeroext i1 @_RNvNtCscFGNKo4Sl5v_9itertools12permutations7advance(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef %i.bz, ptr noalias nofree noundef nonnull align 8 %i.cq, i64 noundef %i.cr)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8, !noalias !13069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13069
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ct
  store ptr %i.by, ptr %i.c, align 8, !noalias !13069
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.cv, ptr %i.cw, align 8, !noalias !13069
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.cx, align 8, !noalias !13069
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecNtCs8Xq8PKFYOms_3hir4TypeEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1Q_5slice4iter4IterjENCNvMs_NtCscFGNKo4Sl5v_9itertools11lazy_bufferINtB35_10LazyBufferINtNtB4_9into_iter8IntoIterBU_EE6get_at0EE9from_iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ct, i64 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #43
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.x, %bb.y
  %lpad.loopexit.split-lp160 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = icmp eq i64 %i.cr, 0
  br i1 %i.cy, label %bb.af, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i102

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13070)
  %i.cz = load i64, ptr %1, align 8, !range !13053, !alias.scope !13070, !noundef !8
  %i.da = icmp eq i64 %i.cz, 2
  br i1 %i.da, label %bb.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit91

bb.aa:                                            ; preds = %bb.z
  %.val5.i84 = load i64, ptr %i.br, align 8, !alias.scope !13070, !noundef !8 ; 2 uses
  %i.db = icmp eq i64 %.val5.i84, 0
  br i1 %i.db, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i87, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i85

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i85: ; preds = %bb.aa
  %.val4.i86 = load ptr, ptr %i.bt, align 8, !alias.scope !13070, !nonnull !8, !noundef !8
  %i.dc = shl nuw nsw i64 %.val5.i84, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i86, i64 noundef %i.dc, i64 noundef 8) #42, !noalias !13070
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i87

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i87: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i85, %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i88 = load i64, ptr %i.dd, align 8, !alias.scope !13070, !noundef !8 ; 2 uses
  %i.de = icmp eq i64 %.val1.i88, 0
  br i1 %i.de, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit91, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i89

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i89: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i87
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i90 = load ptr, ptr %i.df, align 8, !alias.scope !13070, !nonnull !8, !noundef !8
  %i.dg = shl nuw nsw i64 %.val1.i88, 3
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i90, i64 noundef %i.dg, i64 noundef 8) #42, !noalias !13070
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit91

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit91: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i89, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i87, %bb.z
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

bb.ab:                                            ; preds = %bb.y
  unreachable

bb.ac:                                            ; preds = %.lr.ph
  br i1 %i.cu, label %bb.ad, label %bb.w

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13071)
  %i.dh = load i64, ptr %1, align 8, !range !13053, !alias.scope !13071, !noundef !8
  %i.di = icmp eq i64 %i.dh, 2
  br i1 %i.di, label %bb.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit99

bb.ae:                                            ; preds = %bb.ad
  %.val5.i92 = load i64, ptr %i.br, align 8, !alias.scope !13071, !noundef !8 ; 2 uses
  %i.dj = icmp eq i64 %.val5.i92, 0
  br i1 %i.dj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i95, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i93

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i93: ; preds = %bb.ae
  %.val4.i94 = load ptr, ptr %i.bt, align 8, !alias.scope !13071, !nonnull !8, !noundef !8
  %i.dk = shl nuw nsw i64 %.val5.i92, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i94, i64 noundef %i.dk, i64 noundef 8) #42, !noalias !13071
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i95

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i95: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i93, %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i96 = load i64, ptr %i.dl, align 8, !alias.scope !13071, !noundef !8 ; 2 uses
  %i.dm = icmp eq i64 %.val1.i96, 0
  br i1 %i.dm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit99, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i97

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i97: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i95
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i98 = load ptr, ptr %i.dn, align 8, !alias.scope !13071, !nonnull !8, !noundef !8
  %i.do = shl nuw nsw i64 %.val1.i96, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i98, i64 noundef %i.do, i64 noundef 8) #42, !noalias !13071
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit99

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscFGNKo4Sl5v_9itertools12permutations16PermutationStateECs6u1mgJOKDyY_13rust_analyzer.exit99: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i8.i97, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSjEECs6u1mgJOKDyY_13rust_analyzer.exit.i95, %bb.ad
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs6u1mgJOKDyY_13rust_analyzer:bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !14317
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i8 %i.fg, ptr %i.fn, align 8, !alias.scope !14316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !14318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !14318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !14318
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 !guid !14379 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 7                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !14380
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !14380
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !14380
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext30SnippetDocumentChangeOperationEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 !guid !14383 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 208                 ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !14384
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !14384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !14384
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEENtNtNtB8_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 !guid !14387 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !14388, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !14388, !nonnull !8, !noundef !8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.e, ptr %1, align 8, !alias.scope !14388
  tail call fastcc void @_RNvXs0_NtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB5_4ExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a) #46
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 !guid !14391 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 72                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !14392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !14392
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !14392
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTReB1s_RSB1s_NtNtCsbSS6DM8SDEO_5alloc6string6StringEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 !guid !14395 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 72                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !14396
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !14396
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !14396
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4KeysNtCs8Xq8PKFYOms_3hir4TypeNtNtB1V_11term_search16AlternativeExprsEENtNtNtB8_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((8, 12)) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 !guid !14399 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtCs8Xq8PKFYOms_3hir4TypeNtNtBM_11term_search16AlternativeExprsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !14400, !nonnull !8, !noundef !8
  store ptr %i.d, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4KeysNtCs8Xq8PKFYOms_3hir4TypeNtNtB1V_11term_search16AlternativeExprsEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #4 !guid !14403 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !14404
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !14404
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !14404
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4KeysNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB1X_3vec3VecB1T_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #4 !guid !14407 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !14408
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !14408
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !14408
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceNtNtCsuAhG64lL82_9text_size4size8TextSizeENtB4_13SpecAdvanceBy15spec_advance_byCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 4 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !14413 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.promoted.i = load i32, ptr %0, align 4, !alias.scope !14414
  %i.a = and i32 %.promoted.i, 1
  %i.b = zext nneg i32 %i.a to i64
  %.sroa.0.0.i = sub nuw i64 %1, %i.b
  store i32 0, ptr %0, align 4, !alias.scope !14414
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #25 !guid !14415 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load i64, ptr %i.d, align 8, !range !14416, !noundef !8
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.e, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14424 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !14425, !nonnull !8, !noundef !8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load ptr, ptr %i.e, align 8, !alias.scope !14425, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = ptrtoint ptr %.val3.i to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub nuw i64 %i.f, %i.g                   ; 5 uses
  %i.i = udiv exact i64 %i.h, 72                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14426
  %i.j = icmp eq ptr %.val3.i, %i.d
  br i1 %i.j, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i, label %bb.b

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !14427
  %i.l = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !14427 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.h) #43, !noalias !14426
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %i.i, ptr %i.b, align 8, !noalias !14426
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !14426
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.sroa.012.023.i = phi ptr [ %i.q, %bb.d ], [ %i.d, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.p, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %2, %bb.d ], [ %i.i, %.lr.ph.preheader.i ]
  %2 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %3 = icmp eq ptr %.sroa.012.023.i, %.val3.i
  br i1 %3, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit, label %4

4:                                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14426
  invoke fastcc void @_RNvXs0_NtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB5_4ExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !14428

bb.d:                                             ; preds = %4
  %i.p = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 72
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !14428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14426
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !14428
  unreachable

bb.f:                                             ; preds = %4
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.o, align 8, !noalias !14426
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.g unwind label %bb.e, !noalias !14428

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i
  %.sroa.4.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i ], [ %i.l, %bb.d ], [ %i.l, %.lr.ph.i ] ; 3 uses
  %.sroa.0.0.copyload = phi i64 [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i ], [ %i.i, %bb.d ], [ %i.i, %.lr.ph.i ]
  %5 = phi ptr [ %i.k, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i ], [ %i.o, %bb.d ], [ %i.o, %.lr.ph.i ]
  store i64 %i.i, ptr %5, align 8, !noalias !14426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14426
  %i.u = icmp ult i64 %i.h, -9223372036854775744
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %i.h
  store ptr %.sroa.4.0.copyload, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.y, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14433 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 %.val, i64 noundef %i.f)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.l = mul nuw i64 %i.i, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !14434
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.q = mul nuw i64 %i.n, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !14435
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit4

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtCs4sl5YdnrCxp_3vfs6FileIdENtB2q_11ChangedFileEENtNtNtB1A_3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14436 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 6
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtCs4sl5YdnrCxp_3vfs6FileIdENtB1Q_11ChangedFileEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 %.val, i64 noundef %i.f)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtCs4sl5YdnrCxp_3vfs6FileIdENtB3u_11ChangedFileENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.l = shl nuw i64 %i.i, 6
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtCs4sl5YdnrCxp_3vfs6FileIdENtB3u_11ChangedFileENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtCs4sl5YdnrCxp_3vfs6FileIdENtB3u_11ChangedFileENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.q = shl nuw i64 %i.n, 6
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtCs4sl5YdnrCxp_3vfs6FileIdENtB3u_11ChangedFileENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit4

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtCs4sl5YdnrCxp_3vfs6FileIdENtB3u_11ChangedFileENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtCs4sl5YdnrCxp_3vfs6FileIdENtB3u_11ChangedFileENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14455 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 104                 ; 3 uses
  %i.g = icmp eq ptr %.val1, %.val
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph

.body:                                            ; preds = %bb.h, %.body.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs3gqD4ldeioo_8indexmap6BucketNtNtBO_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %.body
  %i.k = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.l = mul nuw i64 %i.i, 104
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !14456
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtCs3gqD4ldeioo_8indexmap6BucketNtNtBO_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtBO_5alloc6GlobalEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.m = icmp eq i64 %i.o, %i.f
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %.sroa.0.0.i19 = phi i64 [ %i.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %.val, i64 %.sroa.0.0.i19 ; 7 uses
  %i.o = add nuw nsw i64 %.sroa.0.0.i19, 1        ; 4 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !14457 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.q, label %.body.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !14458, !nonnull !8, !noundef !8
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !14459
  br label %.body.i.i

bb.e:                                             ; preds = %.lr.ph
  %.val.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !14457 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !14458, !nonnull !8, !noundef !8
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !14460
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i

.body.i.i:                                        ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #44
          to label %.body.i unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.i

bb.g:                                             ; preds = %.body.i.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.h:                                             ; preds = %.lr.ph21
  %i.x = add nuw nsw i64 %.sroa.0.1.i20, 1        ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.f
  br i1 %i.y, label %.body, label %.lr.ph21

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.p, %.body.i.i ]
  %i.aa = icmp eq i64 %i.o, %i.f
  br i1 %i.aa, label %.body, label %.lr.ph21

end_hunk_1
