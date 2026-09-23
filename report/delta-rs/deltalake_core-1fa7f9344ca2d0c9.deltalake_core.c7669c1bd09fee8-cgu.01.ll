Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.01?download=true
inline.NumInlined: 11461
inline.NumDeleted: 4051
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts1_1__NtB2v_13FileSelectionNtB1l_11Deserialize11deserialize9___VisitorEB2B_:bb.a

bb.ce:                                            ; preds = %.loopexit81.i
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r), !noalias !16733
  br label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts1_1__NtBb_13FileSelectionNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3u_4read9SliceReadEEBh_.exit

bb.cf:                                            ; preds = %.loopexit.i44
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %common.resume unwind label %bb.cd, !noalias !16733

_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts1_1__NtBb_13FileSelectionNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3u_4read9SliceReadEEBh_.exit: ; preds = %.loopexit81.i, %bb.cc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit58.i, %bb.ce
  %.sroa.058.1 = phi ptr [ %.sroa.058.0, %.loopexit81.i ], [ %.sroa.058.0, %bb.ce ], [ %i.gq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit58.i ], [ %.sroa.058.0.copyload59, %bb.cc ]
  %.sroa.1361.1 = phi i8 [ 2, %.loopexit81.i ], [ 2, %bb.ce ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit58.i ], [ %.sroa.019.0.i, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.gu = load i8, ptr %i.ax, align 8, !noundef !24
  %i.gv = add i8 %i.gu, 1
  store i8 %i.gv, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sroa.058.1, ptr %i.z, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, i64 40, i1 false)
  %.sroa.1361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i8 %.sroa.1361.1, ptr %.sroa.1361.0..sroa_idx, align 8
  %i.gw = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.ch unwind label %bb.cg     ; 10 uses

bb.cg:                                            ; preds = %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts1_1__NtBb_13FileSelectionNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3u_4read9SliceReadEEBh_.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1a_(ptr noalias noundef align 8 dereferenceable(56) %i.z) #42
          to label %common.resume unwind label %bb.ac

bb.ch:                                            ; preds = %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts1_1__NtBb_13FileSelectionNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1Q_7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB3u_4read9SliceReadEEBh_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr %i.gw, ptr %i.gy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ha = load i8, ptr %i.gz, align 8, !range !38, !noundef !24 ; 4 uses
  %i.hb = icmp eq i8 %i.ha, 2
  br i1 %i.hb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not = icmp eq ptr %i.gw, null
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47.thread196, label %bb.cj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47.thread196: ; preds = %bb.ci
  %.sroa.024.0.copyload = load ptr, ptr %i.aa, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.225.0..sroa_idx, i64 40, i1 false)
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.427.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47: ; preds = %bb.ch
  %i.hc = load ptr, ptr %i.aa, align 8, !nonnull !24, !align !33, !noundef !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %.not84 = icmp eq ptr %i.gw, null
  br i1 %.not84, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47.thread, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aa)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47.thread196, %bb.cj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit51, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47
  %.sroa.09.283 = phi ptr [ %i.hc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47 ], [ %i.hc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit51 ], [ %i.gw, %bb.cj ], [ %.sroa.024.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47.thread196 ]
  %.sroa.1014.282 = phi i8 [ %i.ha, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47 ], [ %i.ha, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit51 ], [ 2, %bb.cj ], [ %i.ha, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47.thread196 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ai

bb.ck:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47
  call void @llvm.experimental.noalias.scope.decl(metadata !16773)
  call void @llvm.experimental.noalias.scope.decl(metadata !16774)
  %i.hd = load i64, ptr %i.gw, align 8, !range !64, !alias.scope !16775, !noalias !16776, !noundef !24
  switch i64 %i.hd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit51 [
    i64 0, label %bb.cl
    i64 1, label %bb.cn
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %.val1.i.i.i.i49 = load i64, ptr %i.he, align 8, !alias.scope !16775, !noalias !16776, !noundef !24 ; 2 uses
  %i.hf = icmp eq i64 %.val1.i.i.i.i49, 0
  br i1 %i.hf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit51, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %.val.i.i.i.i50 = load ptr, ptr %i.hg, align 8, !alias.scope !16775, !noalias !16776, !nonnull !24, !noundef !24
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i50, i64 noundef range(i64 1, 0) %.val1.i.i.i.i49, i64 noundef 1) #46, !noalias !16777
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit51

bb.cn:                                            ; preds = %bb.ck
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.hh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit51 unwind label %bb.co, !noalias !16776

bb.co:                                            ; preds = %bb.cn
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit51: ; preds = %bb.ck, %bb.cl, %bb.cm, %bb.cn
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef 40, i64 noundef 8) #46, !noalias !16776
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionEBO_.exit47.thread

bb.cp:                                            ; preds = %bb.d, %bb.ai
  %.sroa.09.3 = phi ptr [ %.sroa.09.1, %bb.ai ], [ %i.as, %bb.d ]
  %i.hj = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.09.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br label %bb.cr

bb.cq:                                            ; preds = %bb.ai
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.230.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10, i64 40, i1 false)
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.432.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14, i64 7, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %.sink253 = phi ptr [ %i.hj, %bb.cp ], [ %.sroa.09.1, %bb.cq ]
  %.sink251 = phi i8 [ 2, %bb.cp ], [ %.sroa.1014.1, %bb.cq ]
  store ptr %.sink253, ptr %0, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sink251, ptr %i.hk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.loopexit, %bb.x
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtB2v_9DeltaScanNtB1l_11Deserialize11deserialize9___VisitorEB2B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 12 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.0141.i = alloca [48 x i8], align 8       ; 4 uses
  %.sroa.4144.i = alloca [7 x i8], align 1        ; 2 uses
  %i.x = alloca [8 x i8], align 8                 ; 9 uses
  %i.y = alloca [40 x i8], align 8                ; 7 uses
  %i.z = alloca [40 x i8], align 8                ; 10 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 8 uses
  %i.ac = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.667.i = alloca [40 x i8], align 8        ; 6 uses
  %.sroa.872.i = alloca [7 x i8], align 1         ; 6 uses
  %i.ad = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [56 x i8], align 8               ; 12 uses
  %i.ag = alloca [8 x i8], align 8                ; 14 uses
  %i.ah = alloca [8 x i8], align 8                ; 14 uses
  %i.ai = alloca [40 x i8], align 8               ; 17 uses
  %i.aj = alloca [16 x i8], align 8               ; 12 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [56 x i8], align 8               ; 8 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [40 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [16 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 16              ; 9 uses
  %i.au = alloca [24 x i8], align 8               ; 10 uses
  %i.av = alloca [8 x i8], align 8                ; 9 uses
  %i.aw = alloca [8 x i8], align 8                ; 9 uses
  %i.ax = alloca [40 x i8], align 8               ; 9 uses
  %i.ay = alloca [16 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 14 uses
  %i.ba = alloca [168 x i8], align 8              ; 14 uses
  %i.bb = alloca [176 x i8], align 8              ; 9 uses
  %.sroa.38 = alloca [40 x i8], align 8           ; 6 uses
  %.sroa.40 = alloca [64 x i8], align 8           ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 4 uses
  %i.bd = alloca [168 x i8], align 8              ; 13 uses
  %i.be = alloca [176 x i8], align 8              ; 9 uses
  %.sroa.16 = alloca [40 x i8], align 8           ; 6 uses
  %.sroa.17 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.19 = alloca [40 x i8], align 8           ; 6 uses
  %.sroa.21 = alloca [7 x i8], align 1            ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14 = alloca [152 x i8], align 8          ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17048)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !17049, !noalias !17050, !noundef !24 ; 2 uses
  %.promoted.i = load i64, ptr %i.bh, align 8, !alias.scope !17048, !noalias !17051 ; 2 uses
  %i.bk = icmp ult i64 %.promoted.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i, label %.loopexit93

.lr.ph.i:                                         ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !17049, !noalias !17050, !nonnull !24, !noundef !24
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.bn = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.bq, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17052)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !17053, !noundef !24 ; 2 uses
  switch i8 %i.bp, label %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bq = add i64 %i.bn, 1                        ; 3 uses
  store i64 %i.bq, ptr %i.bh, align 8, !alias.scope !17054, !noalias !17051
  %exitcond.not.i = icmp eq i64 %i.bq, %i.bj
  br i1 %exitcond.not.i, label %.loopexit93, label %bb.b

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  switch i8 %i.bp, label %bb.d [
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !prof !126

.loopexit93:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i64 5, ptr %i.bg, align 8
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.bs, align 8
  store i64 2, ptr %0, align 8
  br label %bb.hm

bb.d:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit
  %i.bt = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @292)
  br label %bb.hj

bb.e:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bv = load i8, ptr %i.bu, align 8, !noundef !24
  %i.bw = add i8 %i.bv, -1                        ; 2 uses
  store i8 %i.bw, ptr %i.bu, align 8
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.g, label %bb.h, !prof !22

bb.f:                                             ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs14kWLkQVSKO_14deltalake_core.exit
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bz = load i8, ptr %i.by, align 8, !noundef !24
  %i.ca = add i8 %i.bz, -1                        ; 2 uses
  store i8 %i.ca, ptr %i.by, align 8
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.bv, label %bb.bw, !prof !22

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 24, ptr %i.bf, align 8
  %i.cc = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.bi

bb.h:                                             ; preds = %bb.e
  %i.cd = add i64 %i.bn, 1
  store i64 %i.cd, ptr %i.bh, align 8, !alias.scope !17055
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store ptr %1, ptr %i.az, align 8, !noalias !17056
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i8 1, ptr %i.ce, align 8, !noalias !17056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !17056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17058)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !17059
  call fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az), !noalias !17060
  %i.cf = load i8, ptr %i.as, align 8, !range !31, !noalias !17059, !noundef !24
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !17059, !nonnull !24, !align !33, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !17059
  br label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit

bb.j:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !range !31, !noalias !17059, !noundef !24
  %i.cl = trunc nuw i8 %i.ck to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !17059
  br i1 %i.cl, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !17059
  %i.cm = load ptr, ptr %i.az, align 8, !alias.scope !17061, !noalias !17062, !nonnull !24, !align !33, !noundef !24
  call void @_RINvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts3_1__NtB5_15SnapshotWrapperNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2N_4read9SliceReadEEBb_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cm), !noalias !17063
  %i.cn = load i64, ptr %i.ar, align 8, !range !45, !noalias !17059, !noundef !24 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !17059, !noundef !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !17059
  br i1 %i.co, label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit, label %bb.l

common.resume.sink.split:                         ; preds = %bb.bt, %bb.hi
  %.sink = phi ptr [ %i.rj, %bb.hi ], [ %i.gn, %bb.bt ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.rv, %bb.hi ], [ %i.hb, %bb.bt ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 40, i64 noundef 8) #46, !noalias !24
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.gz, %bb.bj, %bb.gk, %bb.gy, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %.pn172.i, %bb.gk ], [ %i.rk, %bb.gz ], [ %.pn73.i, %bb.r ], [ %i.gp, %bb.bj ], [ %.pn172.i, %bb.gy ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  store i64 %i.cn, ptr %i.ay, align 8, !noalias !17056
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 6 uses
  store ptr %i.cq, ptr %i.cr, align 8, !noalias !17056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !17056
  call void @llvm.experimental.noalias.scope.decl(metadata !17064)
  call void @llvm.experimental.noalias.scope.decl(metadata !17065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !17066
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc.i unwind label %bb.s, !noalias !17067

.noexc.i:                                         ; preds = %bb.l
  %i.cs = load i8, ptr %i.aq, align 8, !range !31, !noalias !17066, !noundef !24
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !17066, !nonnull !24, !align !33, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !17066
  br label %bb.bd

bb.n:                                             ; preds = %.noexc.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !range !31, !noalias !17066, !noundef !24
  %i.cy = trunc nuw i8 %i.cx to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !17066
  br i1 %i.cy, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !17066
  %i.cz = load ptr, ptr %i.az, align 8, !alias.scope !17068, !noalias !17069, !nonnull !24, !align !33, !noundef !24
  invoke void @_RINvXNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providers_1__NtB5_15DeltaScanConfigNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2F_4read9SliceReadEEB9_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cz)
          to label %.noexc77.i unwind label %bb.s, !noalias !17067

.noexc77.i:                                       ; preds = %bb.o
  %i.da = load i64, ptr %i.ap, align 8, !range !30, !noalias !17066, !noundef !24 ; 2 uses
  %i.db = icmp eq i64 %i.da, -9223372036854775807
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !17070 ; 2 uses
  br i1 %i.db, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.noexc77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !17066
  br label %bb.bd

bb.q:                                             ; preds = %bb.j
  %i.de = tail call noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 0, ptr noundef nonnull @197, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166), !noalias !17067
  br label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s
  %.pn73.i = phi { ptr, i32 } [ %i.df, %bb.s ], [ %.pn71.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next15SnapshotWrapperEBO_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #42
          to label %common.resume unwind label %bb.bc, !noalias !17067

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit97.i, %bb.w, %bb.o, %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %.noexc77.i
  %.sroa.12.0..sroa_idx102.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtB2v_9DeltaScanNtB1l_11Deserialize11deserialize9___VisitorEB2B_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !17056
  call void @llvm.experimental.noalias.scope.decl(metadata !17071)
  call void @llvm.experimental.noalias.scope.decl(metadata !17072)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !17073
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc78.i unwind label %bb.x, !noalias !17067

.noexc78.i:                                       ; preds = %bb.t
  %i.dg = load i8, ptr %i.ao, align 8, !range !31, !noalias !17073, !noundef !24
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %.noexc78.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !17073, !nonnull !24, !align !33, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !17073
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit97.i

bb.u:                                             ; preds = %.noexc78.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !range !31, !noalias !17073, !noundef !24
  %i.dm = trunc nuw i8 %i.dl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !17073
  br i1 %i.dm, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.dn = load ptr, ptr %i.az, align 8, !alias.scope !17074, !noalias !17056, !nonnull !24, !align !33, !noundef !24
  %i.do = invoke { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2E_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.dn)
          to label %bb.y unwind label %bb.x, !noalias !17067 ; 2 uses

bb.w:                                             ; preds = %bb.n
  %i.dp = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 1, ptr noundef nonnull @197, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.bd unwind label %bb.s, !noalias !17067

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit93.i, %bb.x
  %.pn71.i = phi { ptr, i32 } [ %i.dq, %bb.x ], [ %.pn69.i, %bb.ad ], [ %.pn69.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit93.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ax) #42
          to label %bb.r unwind label %bb.bc, !noalias !17067

bb.x:                                             ; preds = %bb.bb, %bb.ac, %bb.v, %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.y:                                             ; preds = %bb.v
  %i.dr = extractvalue { i64, ptr } %i.do, 0
  %i.ds = extractvalue { i64, ptr } %i.do, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  %i.dt = trunc nuw i64 %i.dr to i1
  br i1 %i.dt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit97.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.ds, ptr %i.aw, align 8, !noalias !17056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !17056
  call void @llvm.experimental.noalias.scope.decl(metadata !17075)
  call void @llvm.experimental.noalias.scope.decl(metadata !17076)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !17077
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc82.i unwind label %bb.ae, !noalias !17067

.noexc82.i:                                       ; preds = %bb.z
  %i.du = load i8, ptr %i.an, align 8, !range !31, !noalias !17077, !noundef !24
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %.thread126.i, label %bb.aa

.thread126.i:                                     ; preds = %.noexc82.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !17077, !nonnull !24, !align !33, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !17077
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit95.i

bb.aa:                                            ; preds = %.noexc82.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !range !31, !noalias !17077, !noundef !24
  %i.ea = trunc nuw i8 %i.dz to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !17077
  br i1 %i.ea, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load ptr, ptr %i.az, align 8, !alias.scope !17078, !noalias !17056, !nonnull !24, !align !33, !noundef !24
  %i.ec = invoke { i64, ptr } @_RINvXs3s_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtB9_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2E_4read9SliceReadEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.eb)
          to label %bb.af unwind label %bb.ae, !noalias !17067 ; 2 uses

bb.ac:                                            ; preds = %bb.u
  %i.ed = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 2, ptr noundef nonnull @197, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit97.i unwind label %bb.x, !noalias !17067

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit93.i: ; preds = %bb.ay, %.body.i, %bb.ae
  %.pn69.i = phi { ptr, i32 } [ %i.eh, %bb.ae ], [ %.pn67.i, %bb.ay ], [ %.pn67.i, %.body.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17079)
  call void @llvm.experimental.noalias.scope.decl(metadata !17080)
  %i.ee = load ptr, ptr %i.aw, align 8, !alias.scope !17081, !noalias !17056, !nonnull !24, !noundef !24
  %i.ef = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !17082
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit93.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bc, !noalias !17067

bb.ae:                                            ; preds = %bb.ba, %bb.al, %bb.ab, %bb.z
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit93.i

bb.af:                                            ; preds = %bb.ab
  %i.ei = extractvalue { i64, ptr } %i.ec, 0
  %i.ej = extractvalue { i64, ptr } %i.ec, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  %i.ek = trunc nuw i64 %i.ei to i1
  br i1 %i.ek, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit95.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.ej, ptr %i.av, align 8, !noalias !17056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !17056
  store i64 -9223372036854775808, ptr %i.au, align 8, !noalias !17056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !17056
  store ptr null, ptr %i.at, align 16, !noalias !17056
  call void @llvm.experimental.noalias.scope.decl(metadata !17083)
  call void @llvm.experimental.noalias.scope.decl(metadata !17084)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !17085
  invoke fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc86.i unwind label %bb.am, !noalias !17067

.noexc86.i:                                       ; preds = %bb.ag
  %i.el = load i8, ptr %i.am, align 8, !range !31, !noalias !17085, !noundef !24
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.noexc86.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !17085, !nonnull !24, !align !33, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !17085
  br label %bb.ar

bb.ai:                                            ; preds = %.noexc86.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !range !31, !noalias !17085, !noundef !24
  %i.er = trunc nuw i8 %i.eq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !17085
  br i1 %i.er, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !17085
  %i.es = load ptr, ptr %i.az, align 8, !alias.scope !17086, !noalias !17087, !nonnull !24, !align !33, !noundef !24
  invoke void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next13FileSelectionENtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3r_4read9SliceReadEEB1t_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.es)
          to label %.noexc87.i unwind label %bb.am, !noalias !17067

.noexc87.i:                                       ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.eu = load i8, ptr %i.et, align 8, !range !67, !noalias !17085, !noundef !24 ; 2 uses
  %i.ev = icmp eq i8 %i.eu, 3
  %i.ew = load ptr, ptr %i.al, align 8, !noalias !17088 ; 2 uses
  br i1 %i.ev, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.noexc87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !17085
  br label %bb.ar

bb.al:                                            ; preds = %bb.aa
  %i.ex = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 3, ptr noundef nonnull @197, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit95.i unwind label %bb.ae, !noalias !17067

bb.am:                                            ; preds = %bb.aq, %bb.aj, %bb.ag
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17089)
  %i.ez = load ptr, ptr %i.at, align 16, !alias.scope !17089, !noalias !17056, !noundef !24 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = atomicrmw sub ptr %i.ez, i64 1 release, align 8, !noalias !17090
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i unwind label %bb.bc, !noalias !17067

bb.ap:                                            ; preds = %.noexc87.i
  %.sroa.8104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8104.0..sroa_idx.i, i64 40, i1 false), !noalias !17091
  %.sroa.14.0..sroa_idx106.i = getelementptr inbounds nuw i8, ptr %i.al, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.0..sroa_idx106.i, i64 7, i1 false), !noalias !17091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !17085
  %i.fd = load i64, ptr %i.ay, align 8, !range !28, !noalias !17056, !noundef !24
  %i.fe = load ptr, ptr %i.cr, align 8, !noalias !17056, !noundef !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false), !noalias !17091
  %i.ff = load ptr, ptr %i.aw, align 8, !noalias !17056, !nonnull !24, !noundef !24
  %i.fg = load ptr, ptr %i.av, align 8, !noalias !17056, !nonnull !24, !noundef !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !17091
  %i.fh = load <2 x ptr>, ptr %i.at, align 16, !noalias !17056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !17056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !17056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !17056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !17056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !17056
  %6 = insertelement <4 x ptr> poison, ptr %i.ff, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %i.fg, i64 1
  %8 = shufflevector <2 x ptr> %i.fh, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = shufflevector <4 x ptr> %7, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit

bb.aq:                                            ; preds = %bb.ai
  %i.fi = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCs14kWLkQVSKO_14deltalake_core(i64 noundef 4, ptr noundef nonnull @197, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166)
          to label %bb.ar unwind label %bb.am, !noalias !17067

bb.ar:                                            ; preds = %bb.aq, %bb.ak, %bb.ah
  %.sink151.i = phi ptr [ %i.eo, %bb.ah ], [ %i.ew, %bb.ak ], [ %i.fi, %bb.aq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17092)
  %i.fj = load ptr, ptr %i.at, align 16, !alias.scope !17092, !noalias !17056, !noundef !24 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit90.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !17093
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit90.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit90.i unwind label %bb.au, !noalias !17067

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i: ; preds = %bb.au, %bb.ao, %bb.an, %bb.am
  %.pn.i = phi { ptr, i32 } [ %i.fn, %bb.au ], [ %i.ey, %bb.ao ], [ %i.ey, %bb.am ], [ %i.ey, %bb.an ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au) #42
          to label %.body.i unwind label %bb.bc, !noalias !17067

bb.au:                                            ; preds = %bb.at
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit90.i: ; preds = %bb.at, %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !17056
  %i.fo = load i64, ptr %i.au, align 8, !range !29, !alias.scope !17094, !noalias !17056, !noundef !24
  %i.fp = icmp eq i64 %i.fo, -9223372036854775808
  br i1 %i.fp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.av

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit90.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.aw, !noalias !17067

bb.aw:                                            ; preds = %bb.av
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body.i unwind label %bb.ax, !noalias !17067

bb.ax:                                            ; preds = %bb.aw
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !17067
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.az, !noalias !17067

.body.i:                                          ; preds = %bb.az, %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i
  %.pn67.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i ], [ %i.fv, %bb.az ], [ %i.fq, %bb.aw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17095)
  call void @llvm.experimental.noalias.scope.decl(metadata !17096)
  %i.fs = load ptr, ptr %i.av, align 8, !alias.scope !17097, !noalias !17056, !nonnull !24, !noundef !24
  %i.ft = atomicrmw sub ptr %i.fs, i64 1 release, align 8, !noalias !17098
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit93.i

bb.ay:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit93.i unwind label %bb.bc, !noalias !17067

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !17056
  call void @llvm.experimental.noalias.scope.decl(metadata !17099)
  call void @llvm.experimental.noalias.scope.decl(metadata !17100)
  %i.fw = load ptr, ptr %i.av, align 8, !alias.scope !17101, !noalias !17056, !nonnull !24, !noundef !24
  %i.fx = atomicrmw sub ptr %i.fw, i64 1 release, align 8, !noalias !17102
  %i.fy = icmp eq i64 %i.fx, 1
  br i1 %i.fy, label %bb.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit95.i

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit95.i unwind label %bb.ae, !noalias !17067

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit95.i: ; preds = %.thread126.i, %bb.af, %bb.al, %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.257 = phi ptr [ %.sink151.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sink151.i, %bb.ba ], [ %i.ej, %bb.af ], [ %i.dx, %.thread126.i ], [ %i.ex, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !17056
  call void @llvm.experimental.noalias.scope.decl(metadata !17103)
  call void @llvm.experimental.noalias.scope.decl(metadata !17104)
  %i.fz = load ptr, ptr %i.aw, align 8, !alias.scope !17105, !noalias !17056, !nonnull !24, !noundef !24
  %i.ga = atomicrmw sub ptr %i.fz, i64 1 release, align 8, !noalias !17106
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit97.i

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit95.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit97.i unwind label %bb.x, !noalias !17067

bb.bc:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit.i, %bb.ao, %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.r
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !17067
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit97.i: ; preds = %.thread.i, %bb.y, %bb.ac, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit95.i
  %.sroa.10.055 = phi ptr [ %.sroa.10.257, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit95.i ], [ %.sroa.10.257, %bb.bb ], [ %i.ds, %bb.y ], [ %i.dj, %.thread.i ], [ %i.ed, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !17056
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ax)
          to label %bb.bd unwind label %bb.s, !noalias !17067

bb.bd:                                            ; preds = %bb.m, %bb.p, %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit97.i
  %.sroa.10.156 = phi ptr [ %.sroa.10.055, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit97.i ], [ %i.dp, %bb.w ], [ %i.dd, %bb.p ], [ %i.cv, %bb.m ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !17056
  call void @llvm.experimental.noalias.scope.decl(metadata !17107)
  %i.gd = load i64, ptr %i.ay, align 8, !range !28, !alias.scope !17107, !noalias !17056, !noundef !24
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !17108)
  call void @llvm.experimental.noalias.scope.decl(metadata !17109)
  %i.gf = load ptr, ptr %i.cr, align 8, !alias.scope !17110, !noalias !17056, !nonnull !24, !noundef !24
  %i.gg = atomicrmw sub ptr %i.gf, i64 1 release, align 8, !noalias !17111
  %i.gh = icmp eq i64 %i.gg, 1
  br i1 %i.gh, label %bb.bf, label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit

bb.bf:                                            ; preds = %bb.be
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cr) #45, !noalias !17067
  br label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !17112)
  call void @llvm.experimental.noalias.scope.decl(metadata !17113)
  %i.gi = load ptr, ptr %i.cr, align 8, !alias.scope !17114, !noalias !17056, !nonnull !24, !noundef !24
  %i.gj = atomicrmw sub ptr %i.gi, i64 1 release, align 8, !noalias !17115
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.bh, label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cr) #45, !noalias !17067
  br label %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit

_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit: ; preds = %bb.i, %bb.k, %bb.q, %bb.ap, %bb.be, %bb.bf, %bb.bg, %bb.bh
  %.sroa.20.0 = phi i8 [ %i.eu, %bb.ap ], [ undef, %bb.bf ], [ undef, %bb.be ], [ undef, %bb.bh ], [ undef, %bb.bg ], [ undef, %bb.q ], [ undef, %bb.k ], [ undef, %bb.i ]
  %.sroa.18.0 = phi ptr [ %i.ew, %bb.ap ], [ undef, %bb.bf ], [ undef, %bb.be ], [ undef, %bb.bh ], [ undef, %bb.bg ], [ undef, %bb.q ], [ undef, %bb.k ], [ undef, %bb.i ]
  %.sroa.10.358 = phi ptr [ %i.fe, %bb.ap ], [ %.sroa.10.156, %bb.bf ], [ %.sroa.10.156, %bb.be ], [ %.sroa.10.156, %bb.bh ], [ %.sroa.10.156, %bb.bg ], [ %i.de, %bb.q ], [ %i.cq, %bb.k ], [ %i.ci, %bb.i ]
  %.sroa.052.3 = phi i64 [ %i.fd, %bb.ap ], [ 2, %bb.bf ], [ 2, %bb.be ], [ 2, %bb.bh ], [ 2, %bb.bg ], [ 2, %bb.q ], [ 2, %bb.k ], [ 2, %bb.i ]
  %10 = phi <4 x ptr> [ %9, %bb.ap ], [ undef, %bb.bf ], [ undef, %bb.be ], [ undef, %bb.bh ], [ undef, %bb.bg ], [ undef, %bb.q ], [ undef, %bb.k ], [ undef, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !17056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.gl = load i8, ptr %i.bu, align 8, !noundef !24
  %i.gm = add i8 %i.gl, 1
  store i8 %i.gm, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 %.sroa.052.3, ptr %i.bd, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %.sroa.10.358, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.16, i64 40, i1 false)
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17, i64 24, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store ptr %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19, i64 40, i1 false)
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  store i8 %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.21.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.21, i64 7, i1 false)
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 136
  store <4 x ptr> %10, ptr %.sroa.22.0..sroa_idx, align 8
  %i.gn = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.bk unwind label %bb.bj     ; 10 uses

bb.bi:                                            ; preds = %bb.bv, %bb.g
  %.sink360 = phi ptr [ %i.hd, %bb.bv ], [ %i.cc, %bb.g ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink360, ptr %i.go, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.hm

bb.bj:                                            ; preds = %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1a_(ptr noalias noundef align 8 dereferenceable(168) %i.bd) #42
          to label %common.resume unwind label %bb.bo

bb.bk:                                            ; preds = %_RINvXs0_NvXNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nexts5_1__NtBb_9DeltaScanNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1L_7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB3p_4read9SliceReadEEBh_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.be, ptr noundef nonnull align 8 dereferenceable(168) %i.bd, i64 168, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.be, i64 168
  store ptr %i.gn, ptr %i.gq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.gr = load i64, ptr %i.be, align 8, !range !45, !noundef !24 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 2
  br i1 %i.gs, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not37 = icmp eq ptr %i.gn, null
  br i1 %.not37, label %.thread, label %bb.bn

.thread:                                          ; preds = %bb.bl
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.3.0..sroa_idx, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  br label %.thread74

bb.bm:                                            ; preds = %bb.bk
  %i.gt = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !nonnull !24, !align !33, !noundef !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  %.not89 = icmp eq ptr %i.gn, null
  br i1 %.not89, label %.thread74, label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanEBO_(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.be)
  br label %.thread74

bb.bo:                                            ; preds = %bb.gz, %bb.bj
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

.thread74:                                        ; preds = %.thread, %bb.bn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, %bb.bm
  %.sroa.09.080 = phi i64 [ 2, %bb.bm ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit ], [ 2, %bb.bn ], [ %i.gr, %.thread ]
  %.sroa.10.079 = phi ptr [ %i.gu, %bb.bm ], [ %i.gu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.gn, %bb.bn ], [ %.sroa.219.0.copyload, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !17116)
  call void @llvm.experimental.noalias.scope.decl(metadata !17117)
  %i.gw = load i64, ptr %i.gn, align 8, !range !64, !alias.scope !17118, !noalias !17119, !noundef !24
  switch i64 %i.gw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit [
    i64 0, label %bb.bq
    i64 1, label %bb.bs
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.gx, align 8, !alias.scope !17118, !noalias !17119, !noundef !24 ; 2 uses
  %i.gy = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.gy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.gz, align 8, !alias.scope !17118, !noalias !17119, !nonnull !24, !noundef !24
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #46, !noalias !17120
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit

bb.bs:                                            ; preds = %bb.bp
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ha)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bt, !noalias !17119

bb.bt:                                            ; preds = %bb.bs
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bs
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gn, i64 noundef 40, i64 noundef 8) #46, !noalias !17119
  br label %.thread74

bb.bu:                                            ; preds = %.thread81, %.thread74
  %.sroa.10.1 = phi ptr [ %.sroa.10.079, %.thread74 ], [ %.sroa.10.286, %.thread81 ] ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.080, %.thread74 ], [ %.sroa.09.287, %.thread81 ] ; 2 uses
  %i.hc = icmp eq i64 %.sroa.09.1, 2
  br i1 %i.hc, label %bb.hj, label %bb.hk, !prof !22

bb.bv:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 24, ptr %i.bc, align 8
  %i.hd = call noundef nonnull align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.bi

bb.bw:                                            ; preds = %bb.f
  %i.he = add i64 %i.bn, 1
  store i64 %i.he, ptr %i.bh, align 8, !alias.scope !17121
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.38)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.40)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0141.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %1, ptr %i.ak, align 8, !noalias !17122
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i8 1, ptr %i.hf, align 8, !noalias !17122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !17122
  store i64 2, ptr %i.aj, align 8, !noalias !17122
  %i.hg = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !17122
  store i64 -9223372036854775807, ptr %i.ai, align 8, !noalias !17122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !17122
  store ptr null, ptr %i.ah, align 8, !noalias !17122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !17122
  store ptr null, ptr %i.ag, align 8, !noalias !17122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !17122
  %i.hh = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 8 uses
  store i8 3, ptr %i.hh, align 8, !noalias !17122
  %i.hi = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.5130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.7132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 49
  %.sroa.667.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.sroa.872.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.af, i64 49 ; 3 uses
  %.sroa.5127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.6128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.636.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %bb.bx

bb.bx:                                            ; preds = %.backedge, %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !17123)
  call void @llvm.experimental.noalias.scope.decl(metadata !17124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !17125
  invoke fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %.noexc.i40 unwind label %.loopexit.loopexit.i, !noalias !17126

.noexc.i40:                                       ; preds = %bb.bx
  %i.hm = load i8, ptr %i.w, align 8, !range !31, !noalias !17125, !noundef !24
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.noexc.i40
  %i.ho = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !17125, !nonnull !24, !align !33, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !17125
  br label %.loopexit

bb.bz:                                            ; preds = %.noexc.i40
  %i.hq = load i8, ptr %i.hi, align 1, !range !31, !noalias !17125, !noundef !24
  %i.hr = trunc nuw i8 %i.hq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !17125
  br i1 %i.hr, label %bb.ca, label %bb.ci

bb.ca:                                            ; preds = %bb.bz
  %i.hs = load ptr, ptr %i.ak, align 8, !alias.scope !17127, !noalias !17128, !nonnull !24, !align !33, !noundef !24 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17129)
  call void @llvm.experimental.noalias.scope.decl(metadata !17130)
  call void @llvm.experimental.noalias.scope.decl(metadata !17131)
  call void @llvm.experimental.noalias.scope.decl(metadata !17132)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 40 ; 17 uses
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !17133, !noalias !17134, !noundef !24
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %i.hu, align 8, !alias.scope !17133, !noalias !17134
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 0, ptr %i.hx, align 8, !alias.scope !17135, !noalias !17134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !17136
  invoke void @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ht, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.hs)
          to label %.noexc181.i unwind label %.loopexit.loopexit.i, !noalias !17126

.noexc181.i:                                      ; preds = %bb.ca
  %i.hy = load i64, ptr %i.v, align 8, !range !45, !noalias !17136, !noundef !24
  %i.hz = icmp eq i64 %i.hy, 2
end_hunk_1
