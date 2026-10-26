Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.01?download=true
inline.NumInlined: 739
inline.NumDeleted: 400
begin_hunk_0_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtB3c_13ErrorResponseNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.k) #17
          to label %.body184.i.i unwind label %bb.cm, !noalias !454

bb.cx:                                            ; preds = %.body184.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.l) #17
          to label %common.resume unwind label %bb.cm, !noalias !454

_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtBb_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.thread.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit190.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit187.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !444
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtB1f_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit

_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtBb_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.i: ; preds = %bb.ch, %bb.ca
  %.sroa.492.0.i.i = phi i64 [ %.sroa.492.0.copyload.i.i, %bb.ca ], [ %.sroa.6128.0.copyload.i.i, %bb.ch ]
  %.sroa.389.0.i.i = phi ptr [ %.sroa.389.0.copyload.i.i, %bb.ca ], [ %i.hg, %bb.ch ]
  %.sroa.087.0.i.i = phi i64 [ %i.hb, %bb.ca ], [ %i.hd, %bb.ch ]
  %i.id = load i64, ptr %i.j, align 8, !range !3, !noalias !444, !noundef !4 ; 2 uses
  %.not132.i.i = icmp eq i64 %i.id, -9223372036854775808 ; 3 uses
  %.sroa.397.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.397.0.copyload.i.i = load ptr, ptr %.sroa.397.0..sroa_idx.i.i, align 8, !noalias !444
  %.sroa.4100.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4100.0.copyload.i.i = load i64, ptr %.sroa.4100.0..sroa_idx.i.i, align 8, !noalias !444
  %.sroa.4100.0.i.i = select i1 %.not132.i.i, i64 0, i64 %.sroa.4100.0.copyload.i.i
  %.sroa.397.0.i.i = select i1 %.not132.i.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.397.0.copyload.i.i
  %.sroa.095.0.i.i = select i1 %.not132.i.i, i64 0, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !469
  %.sroa.4104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.087.0.i.i, ptr %.sroa.4104.0..sroa_idx.i.i, align 8, !alias.scope !464
  %.sroa.5105.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.389.0.i.i, ptr %.sroa.5105.0..sroa_idx.i.i, align 8, !alias.scope !464
  %.sroa.6106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.492.0.i.i, ptr %.sroa.6106.0..sroa_idx.i.i, align 8, !alias.scope !464
  %.sroa.7107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.095.0.i.i, ptr %.sroa.7107.0..sroa_idx.i.i, align 8, !alias.scope !464
  %.sroa.8108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.397.0.i.i, ptr %.sroa.8108.0..sroa_idx.i.i, align 8, !alias.scope !464
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.4100.0.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !444
  %.pre.i = load i64, ptr %0, align 8, !range !3, !alias.scope !440
  %i.ie = icmp eq i64 %.pre.i, -9223372036854775808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !444
  br i1 %i.ie, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtB1f_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit, label %bb.cy

bb.cy:                                            ; preds = %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtBb_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !noalias !441
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1.i) ]
  %i.if = icmp eq ptr %i.bv, %.sroa.0.1.i
  br i1 %i.if, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtB1f_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit, label %bb.cz, !prof !8

bb.cz:                                            ; preds = %bb.cy
  %i.ig = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ih = ptrtoint ptr %i.bv to i64
  %i.ii = sub nuw i64 %i.ih, %i.ig
  %i.ij = lshr exact i64 %i.ii, 6
  %i.ik = add nuw nsw i64 %i.ij, %.sroa.15.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !470
  store i64 %.sroa.15.1.i, ptr %i.b, align 8, !noalias !470
  %i.il = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.ik, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94)
          to label %bb.db unwind label %bb.da, !noalias !440

bb.da:                                            ; preds = %bb.cz
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13ErrorResponseEBK_(ptr noalias noundef align 8 dereferenceable(72) %i.m) #17
          to label %common.resume unwind label %bb.dc, !noalias !440

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !470
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.il, ptr %i.in, align 8, !alias.scope !440
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !440
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13ErrorResponseEBK_(ptr noalias noundef align 8 dereferenceable(72) %i.m), !noalias !440
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtB1f_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit

bb.dc:                                            ; preds = %bb.da
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !440
  unreachable

_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtB1f_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit: ; preds = %bb.cy, %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtBb_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.thread.i, %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtBb_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1m_7Visitor9visit_mapQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !442
  br label %bb.dd

bb.dd:                                            ; preds = %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtB1f_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit, %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_map_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6models1__NtB1f_13ErrorResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 13 uses
  %i.g = alloca [168 x i8], align 8               ; 9 uses
  %i.h = alloca [168 x i8], align 8               ; 18 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.784.i.i = alloca [32 x i8], align 8      ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 21 uses
  %i.p = alloca [24 x i8], align 8                ; 21 uses
  %i.q = alloca [48 x i8], align 8                ; 17 uses
  %i.r = alloca [24 x i8], align 8                ; 21 uses
  %i.s = alloca [24 x i8], align 8                ; 21 uses
  %i.t = alloca [24 x i8], align 8                ; 21 uses
  %i.u = alloca [168 x i8], align 8               ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [48 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.078.i.i = alloca [96 x i8], align 8      ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 13 uses
  %i.ag = alloca [48 x i8], align 8               ; 10 uses
  %i.ah = alloca [24 x i8], align 8               ; 13 uses
  %i.ai = alloca [24 x i8], align 8               ; 12 uses
  %i.aj = alloca [24 x i8], align 8               ; 13 uses
  %i.ak = alloca [168 x i8], align 8              ; 28 uses
  %i.al = alloca [168 x i8], align 8              ; 5 uses
  %i.am = load i8, ptr %1, align 8, !range !5, !noundef !4
  switch i8 %i.am, label %bb.b [
    i8 20, label %bb.c
    i8 21, label %bb.cr
  ], !prof !17

bb.b:                                             ; preds = %bb.a
  %i.an = call fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.hp

bb.c:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %.idx.i = shl nuw nsw i64 %i.as, 5
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !593
  store i64 0, ptr %i.ae, align 8, !noalias !593
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !593
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !593
  store i64 0, ptr %i.ad, align 8, !noalias !593
  %.sroa.5.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx4.i.i.i, align 8, !noalias !593
  %.sroa.6.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx10.i.i.i, align 8, !noalias !593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !593
  store i64 0, ptr %i.ac, align 8, !noalias !593
  %.sroa.5.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx6.i.i.i, align 8, !noalias !593
  %.sroa.6.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx12.i.i.i, align 8, !noalias !593
  %i.au = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @95)
          to label %_RNvXs9_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB5_12ErrorDetailsNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i unwind label %bb.d, !noalias !593 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #17
          to label %bb.f unwind label %bb.e, !noalias !594

bb.e:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !594
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #17
          to label %bb.g unwind label %bb.e, !noalias !594

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #17
          to label %common.resume unwind label %bb.e, !noalias !594

common.resume:                                    ; preds = %.body316.i.i, %bb.hc, %bb.hj, %bb.hm, %bb.g, %.body.i, %bb.bd, %bb.bk, %bb.cc, %.body226.i.i, %bb.cl, %bb.co
  %common.resume.op = phi { ptr, i32 } [ %i.ff, %bb.co ], [ %i.dv, %bb.bd ], [ %i.ep, %bb.cc ], [ %.pn135.i.i, %.body.i ], [ %i.av, %bb.g ], [ %.pn135.i.i, %bb.bk ], [ %.pn153.i.i, %.body226.i.i ], [ %.pn145.i.i, %bb.cl ], [ %.pn191.i.i, %.body316.i.i ], [ %i.ml, %bb.hc ], [ %.pn191.i.i, %bb.hj ], [ %i.mv, %bb.hm ]
  resume { ptr, i32 } %common.resume.op

_RNvXs9_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB5_12ErrorDetailsNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i: ; preds = %bb.c
  %i.ax = extractvalue { i64, i64 } %i.au, 0
  %i.ay = extractvalue { i64, i64 } %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !591
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !591
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !591
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 120 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) @97, i64 32, i1 false), !noalias !591
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  store i64 %i.ax, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !alias.scope !592, !noalias !591
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  store i64 %i.ay, ptr %.sroa.527.0..sroa_idx.i.i.i, align 8, !alias.scope !592, !noalias !591
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 11 uses
  store i64 0, ptr %i.bc, align 8, !alias.scope !592, !noalias !591
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !592, !noalias !591
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %.sroa.3.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !592, !noalias !591
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx18.i.i.i, align 8, !alias.scope !592, !noalias !591
  %.sroa.4.0..sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx20.i.i.i, align 8, !alias.scope !592, !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !591
  %i.bd = icmp eq i64 %i.as, 0
  br i1 %i.bd, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_RNvXs9_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB5_12ErrorDetailsNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !595
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %.noexc.i.i unwind label %bb.i, !noalias !596

.noexc.i.i:                                       ; preds = %bb.h
  %i.bf = load i64, ptr %i.ab, align 8, !range !3, !noalias !595, !noundef !4 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -9223372036854775808
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !597 ; 2 uses
  br i1 %i.bg, label %bb.j, label %bb.m

.body193.i.i:                                     ; preds = %bb.bp, %.body187.i.i, %bb.i
  %.sroa.0104.0.i.i = phi i8 [ %.sroa.0104.2.i.i, %.body187.i.i ], [ %.sroa.0104.1.i.i, %bb.i ], [ %.sroa.0104.2.i.i, %bb.bp ]
  %.pn145.i.i = phi { ptr, i32 } [ %.pn143.i.i, %.body187.i.i ], [ %i.bj, %bb.i ], [ %i.ec, %bb.bp ]
  %6 = trunc nuw i8 %.sroa.0104.0.i.i to i1
  br i1 %6, label %bb.ch, label %bb.ci

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i192.i.i, %bb.h
  %.sroa.0104.1.i.i = phi i8 [ %.sroa.0104.2.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i192.i.i ], [ 1, %bb.h ]
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body193.i.i

bb.j:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !595
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bk, align 8, !alias.scope !598
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !591
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.k, !noalias !596

bb.k:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body.thread.i.i unwind label %bb.l, !noalias !596

bb.l:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.bu, !noalias !596

bb.m:                                             ; preds = %.noexc.i.i
  %.sroa.10236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.10236.0.copyload.i.i = load i64, ptr %.sroa.10236.0..sroa_idx.i.i, align 8, !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !595
  store i64 %i.bf, ptr %i.aj, align 8, !noalias !591
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.bi, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !591
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.10236.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !591
  br label %bb.o

bb.n:                                             ; preds = %_RNvXs9_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB5_12ErrorDetailsNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !591
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.14.0.i = phi i64 [ 0, %bb.n ], [ 1, %bb.m ] ; 6 uses
  %.sroa.0.0.i = phi ptr [ %i.aq, %bb.n ], [ %i.be, %bb.m ] ; 7 uses
  %.sroa.0104.2.i.i = phi i8 [ 0, %bb.n ], [ 1, %bb.m ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !591
  %.not = icmp eq ptr %.sroa.0.0.i, %i.at         ; 3 uses
  br i1 %.not, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 32 ; 3 uses
  %i.bo = add nuw nsw i64 %.sroa.14.0.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !599
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i)
          to label %.noexc163.i.i unwind label %bb.q, !noalias !596

.noexc163.i.i:                                    ; preds = %bb.p
  %i.bp = load i64, ptr %i.aa, align 8, !range !3, !noalias !599, !noundef !4 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, -9223372036854775808
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !600 ; 2 uses
  br i1 %i.bq, label %bb.r, label %bb.s

.body187.i.i:                                     ; preds = %bb.bn, %.body181.i.i, %bb.q
  %.pn143.i.i = phi { ptr, i32 } [ %.pn141.i.i, %.body181.i.i ], [ %i.bt, %bb.q ], [ %i.ea, %bb.bn ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #17
          to label %.body193.i.i unwind label %bb.bg, !noalias !596

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i186.i.i, %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body187.i.i

bb.r:                                             ; preds = %.noexc163.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !599
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bu, align 8, !alias.scope !598
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !598
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit190.i.i

.thread.i:                                        ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !591
  br label %.thread65.i

bb.s:                                             ; preds = %.noexc163.i.i
  %.sroa.10239.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.10239.0.copyload.i.i = load i64, ptr %.sroa.10239.0..sroa_idx.i.i, align 8, !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !599
  store i64 %i.bp, ptr %i.ai, align 8, !noalias !591
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.bs, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !591
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.10239.0.copyload.i.i, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !591
  %i.bv = icmp eq ptr %i.bn, %i.at
  br i1 %i.bv, label %.thread65.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 64 ; 3 uses
  %i.bx = or disjoint i64 %.sroa.14.0.i, 2        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !601
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn)
          to label %.noexc165.i.i unwind label %bb.u, !noalias !596

.noexc165.i.i:                                    ; preds = %bb.t
  %i.by = load i64, ptr %i.z, align 8, !range !3, !noalias !601, !noundef !4 ; 2 uses
  %i.bz = icmp eq i64 %i.by, -9223372036854775808
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !602 ; 2 uses
  br i1 %i.bz, label %bb.v, label %bb.w

.body181.i.i:                                     ; preds = %bb.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.u
  %.pn141.i.i = phi { ptr, i32 } [ %.pn139.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.cc, %bb.u ], [ %i.dy, %bb.bl ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #17
          to label %.body187.i.i unwind label %bb.bg, !noalias !596

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i180.i.i, %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body181.i.i

bb.v:                                             ; preds = %.noexc165.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !601
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cd, align 8, !alias.scope !598
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !598
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit184.i.i

.thread65.i:                                      ; preds = %bb.s, %.thread.i
  %.sroa.14.156.i = phi i64 [ %.sroa.14.0.i, %.thread.i ], [ %i.bo, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !591
  br label %.thread81.i

bb.w:                                             ; preds = %.noexc165.i.i
  %.sroa.10242.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.10242.0.copyload.i.i = load i64, ptr %.sroa.10242.0..sroa_idx.i.i, align 8, !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !601
  store i64 %i.by, ptr %i.ah, align 8, !noalias !591
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.cb, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !591
  %.sroa.536.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.10242.0.copyload.i.i, ptr %.sroa.536.0..sroa_idx.i.i, align 8, !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !591
  %i.ce = icmp eq ptr %i.bw, %i.at
  br i1 %i.ce, label %.thread81.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 96 ; 3 uses
  %i.cg = add nuw nsw i64 %.sroa.14.0.i, 3        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !603
  invoke void @_RINvXs3g_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_ENtB9_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bw)
          to label %.noexc167.i.i unwind label %bb.y, !noalias !596

.noexc167.i.i:                                    ; preds = %bb.x
  %i.ch = load ptr, ptr %i.y, align 8, !noalias !603, !noundef !4 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.ci, label %bb.z, label %bb.aa

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %.body26.i, %bb.y
  %.pn139.i.i = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %.pn137.i.i, %.body26.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #17
          to label %.body181.i.i unwind label %bb.bg, !noalias !596

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit29.i, %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.z:                                             ; preds = %.noexc167.i.i
  %i.cl = load ptr, ptr %i.cj, align 8, !noalias !603, !nonnull !4, !align !11, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !603
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !alias.scope !598
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !598
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit178.i.i

.thread81.i:                                      ; preds = %bb.w, %.thread65.i
  %.sroa.094.6.i75.i = phi i1 [ false, %.thread65.i ], [ true, %bb.w ]
  %.sroa.14.273.i = phi i64 [ %.sroa.14.156.i, %.thread65.i ], [ %i.bx, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 48, i1 false), !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !591
  br label %.thread103.i

bb.aa:                                            ; preds = %.noexc167.i.i
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.444.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cj, i64 40, i1 false), !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !603
  store ptr %i.ch, ptr %i.ag, align 8, !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !591
  %i.cn = icmp eq ptr %i.cf, %i.at
  br i1 %i.cn, label %.thread103.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 128 ; 3 uses
  %i.cp = or disjoint i64 %.sroa.14.0.i, 4        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !604
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cf)
          to label %.noexc168.i.i unwind label %bb.ac, !noalias !596

.noexc168.i.i:                                    ; preds = %bb.ab
  %i.cq = load i64, ptr %i.x, align 8, !range !3, !noalias !604, !noundef !4 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, -9223372036854775808
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !605 ; 2 uses
  br i1 %i.cr, label %bb.ad, label %bb.ae

.body26.i:                                        ; preds = %bb.ai, %bb.ag, %bb.ac
  %.pn137.i.i = phi { ptr, i32 } [ %i.dd, %bb.ag ], [ %i.cu, %bb.ac ], [ %i.df, %bb.ai ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.bg, !noalias !596

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i25.i, %bb.ab
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body26.i

bb.ad:                                            ; preds = %.noexc168.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !604
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cv, align 8, !alias.scope !598
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !598
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit29.i

.thread103.i:                                     ; preds = %bb.aa, %.thread81.i
  %.sroa.089.8.i97.i = phi i1 [ false, %.thread81.i ], [ true, %bb.aa ]
  %.sroa.14.34095.i = phi i64 [ %.sroa.14.273.i, %.thread81.i ], [ %i.cg, %bb.aa ]
  %.sroa.094.6.i7488.i = phi i1 [ %.sroa.094.6.i75.i, %.thread81.i ], [ true, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !591
  br label %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.thread.i.i

bb.ae:                                            ; preds = %.noexc168.i.i
  %.sroa.10247.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.10247.0.copyload.i.i = load i64, ptr %.sroa.10247.0..sroa_idx.i.i, align 8, !noalias !605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !604
  store i64 %i.cq, ptr %i.af, align 8, !noalias !591
  %.sroa.457.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ct, ptr %.sroa.457.0..sroa_idx.i.i, align 8, !noalias !591
  %.sroa.558.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.10247.0.copyload.i.i, ptr %.sroa.558.0..sroa_idx.i.i, align 8, !noalias !591
  %i.cw = icmp eq ptr %i.co, %i.at
  br i1 %i.cw, label %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.thread.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 160 ; 2 uses
  %i.cy = add nuw nsw i64 %.sroa.14.0.i, 5        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !606
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.co)
          to label %.noexc171.i.i unwind label %bb.ag, !noalias !596

.noexc171.i.i:                                    ; preds = %bb.af
  %i.cz = load i64, ptr %i.w, align 8, !range !3, !noalias !606, !noundef !4 ; 2 uses
  %i.da = icmp eq i64 %i.cz, -9223372036854775808
  %i.db = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !607 ; 2 uses
  br i1 %i.da, label %bb.ah, label %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i

bb.ag:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.af) #17
          to label %.body26.i unwind label %bb.bg, !noalias !596

_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i: ; preds = %.noexc171.i.i
  %.sroa.10250.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.10250.0.copyload.i.i = load i64, ptr %.sroa.10250.0..sroa_idx.i.i, align 8, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !606
  br label %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.thread.i.i

bb.ah:                                            ; preds = %.noexc171.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !606
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %i.de, align 8, !alias.scope !598
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !598
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i25.i unwind label %bb.ai, !noalias !596

bb.ai:                                            ; preds = %bb.ah
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body26.i unwind label %bb.aj, !noalias !596

bb.aj:                                            ; preds = %bb.ai
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i25.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit29.i unwind label %bb.ac, !noalias !588

_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.thread.i.i: ; preds = %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i, %bb.ae, %.thread103.i
  %.sroa.084.10.i113.i = phi i1 [ true, %bb.ae ], [ true, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ false, %.thread103.i ] ; 2 uses
  %.sroa.094.6.i7487112.i = phi i1 [ true, %bb.ae ], [ true, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ %.sroa.094.6.i7488.i, %.thread103.i ] ; 2 uses
  %.sroa.089.8.i96110.i = phi i1 [ true, %bb.ae ], [ true, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ %.sroa.089.8.i97.i, %.thread103.i ] ; 2 uses
  %.sroa.14.5.i = phi i64 [ %i.cp, %bb.ae ], [ %i.cy, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ %.sroa.14.34095.i, %.thread103.i ] ; 2 uses
  %.sroa.0.5.i = phi ptr [ %i.at, %bb.ae ], [ %i.cx, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ %i.at, %.thread103.i ] ; 2 uses
  %.sroa.10250.1326.i.i = phi i64 [ undef, %bb.ae ], [ %.sroa.10250.0.copyload.i.i, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ undef, %.thread103.i ]
  %.sroa.0248.1325.i.i = phi i64 [ -9223372036854775808, %bb.ae ], [ %i.cz, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ -9223372036854775808, %.thread103.i ] ; 2 uses
  %.sroa.7249.1324.i.i = phi ptr [ undef, %bb.ae ], [ %i.dc, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ undef, %.thread103.i ]
  %.not129.not.i.i = icmp eq i64 %.sroa.0248.1325.i.i, -9223372036854775808 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ak, i64 96 ; 5 uses
  %.sroa.070.0.copyload.i.i = load i64, ptr %i.dh, align 8, !noalias !591
  %.sroa.372.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx18.i.i.i, align 8, !noalias !591
  %.sroa.475.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx20.i.i.i, align 8, !noalias !591
  %.sroa.070.0.i.i = select i1 %.not129.not.i.i, i64 %.sroa.070.0.copyload.i.i, i64 %.sroa.0248.1325.i.i
  %.sroa.372.0.i.i = select i1 %.not129.not.i.i, ptr %.sroa.372.0.copyload.i.i, ptr %.sroa.7249.1324.i.i
  %.sroa.475.0.i.i = select i1 %.not129.not.i.i, i64 %.sroa.475.0.copyload.i.i, i64 %.sroa.10250.1326.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.078.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.078.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !591
  %.sroa.078.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.078.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.078.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !591
  %.sroa.078.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.078.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.078.48..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !591
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false), !noalias !608
  %.sroa.078.72..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.078.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.078.72..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.078.i.i, i64 96, i1 false), !noalias !608
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.070.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !598
  %.sroa.879.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.372.0.i.i, ptr %.sroa.879.0..sroa_idx.i.i, align 8, !alias.scope !598
  %.sroa.980.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.475.0.i.i, ptr %.sroa.980.0..sroa_idx.i.i, align 8, !alias.scope !598
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.078.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !591
  %7 = trunc nuw i8 %.sroa.0104.2.i.i to i1
  br i1 %7, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i19.i, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.thread.i.i
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i, label %bb.ao

bb.ak:                                            ; preds = %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.thread.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i19.i unwind label %bb.al, !noalias !596

bb.al:                                            ; preds = %bb.ak
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body20.i unwind label %bb.am, !noalias !596

bb.am:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i19.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23.i unwind label %bb.an, !noalias !588

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i19.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i

.body20.i:                                        ; preds = %bb.an, %bb.al
  %eh.lpad-body21.i = phi { ptr, i32 } [ %i.dk, %bb.an ], [ %i.di, %bb.al ] ; 2 uses
  br i1 %.not, label %.body14.i, label %bb.bf

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i13.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23.i
  br i1 %.sroa.094.6.i7487112.i, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11.i

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i13.i unwind label %bb.ap, !noalias !596

bb.ap:                                            ; preds = %bb.ao
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body14.i unwind label %bb.aq, !noalias !596

bb.aq:                                            ; preds = %bb.ap
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i13.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i unwind label %bb.ar, !noalias !588

.body14.i:                                        ; preds = %bb.bf, %bb.ar, %bb.ap, %.body20.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body21.i, %.body20.i ], [ %eh.lpad-body21.i, %bb.bf ], [ %i.dn, %bb.ar ], [ %i.dl, %bb.ap ] ; 2 uses
  br i1 %.sroa.094.6.i7487112.i, label %bb.bh, label %.body8.i.a

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i13.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i
  br i1 %.sroa.089.8.i96110.i, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit174.i.i

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i7.i unwind label %bb.at, !noalias !596

bb.at:                                            ; preds = %bb.as
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body8.i.a unwind label %bb.au, !noalias !596

bb.au:                                            ; preds = %bb.at
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i7.i: ; preds = %bb.as
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11.i unwind label %bb.av, !noalias !588

.body8.i.a:                                       ; preds = %bb.bh, %bb.av, %bb.at, %.body14.i
  %.pn131.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body14.i ], [ %.pn.i.i, %bb.bh ], [ %i.dq, %bb.av ], [ %i.do, %bb.at ] ; 2 uses
  br i1 %.sroa.089.8.i96110.i, label %bb.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i7.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit174.i.i: ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11.i
  br i1 %.sroa.084.10.i113.i, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit174.i.i unwind label %bb.ax, !noalias !596

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i: ; preds = %bb.bi, %bb.ax, %.body8.i.a
  %.pn133.i.i = phi { ptr, i32 } [ %i.dr, %bb.ax ], [ %.pn131.i.i, %.body8.i.a ], [ %.pn131.i.i, %bb.bi ] ; 2 uses
  br i1 %.sroa.084.10.i113.i, label %bb.bj, label %.body.i

bb.ax:                                            ; preds = %bb.aw
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit174.i.i
  br i1 %.not129.not.i.i, label %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.i, label %bb.bc

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit174.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.az, !noalias !596

bb.az:                                            ; preds = %bb.ay
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body.i unwind label %bb.ba, !noalias !596

bb.ba:                                            ; preds = %bb.az
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i unwind label %bb.bb, !noalias !588

.body.i:                                          ; preds = %bb.bj, %bb.bb, %bb.az, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i
  %.pn135.i.i = phi { ptr, i32 } [ %.pn133.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i ], [ %.pn133.i.i, %bb.bj ], [ %i.du, %bb.bb ], [ %i.ds, %bb.az ] ; 2 uses
  br i1 %.not129.not.i.i, label %common.resume, label %bb.bk

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.sink.split.i unwind label %bb.bd, !noalias !596

bb.bd:                                            ; preds = %bb.bc
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %common.resume unwind label %bb.be, !noalias !596

bb.be:                                            ; preds = %bb.bd
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

bb.bf:                                            ; preds = %.body20.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.az) #17
          to label %.body14.i unwind label %bb.bg, !noalias !596

bb.bg:                                            ; preds = %bb.cl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit233.i.i, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit231.i.i, %.body215.i.i, %.body209.i.i, %.body.thread.i.i, %.body226.i.i, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.ag, %.body26.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %.body181.i.i, %.body187.i.i
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

bb.bh:                                            ; preds = %.body14.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ba) #17
          to label %.body8.i.a unwind label %bb.bg, !noalias !596

bb.bi:                                            ; preds = %.body8.i.a
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i unwind label %bb.bg, !noalias !596

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #17
          to label %.body.i unwind label %bb.bg, !noalias !596

bb.bk:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.dh) #17
          to label %common.resume unwind label %bb.bg, !noalias !596

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit29.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i25.i, %bb.ad
  %.sroa.14.6.i = phi i64 [ %i.cp, %bb.ad ], [ %i.cy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i25.i ]
  %.sroa.0.6.i = phi ptr [ %i.co, %bb.ad ], [ %i.cx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i25.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !591
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit178.i.i unwind label %bb.y, !noalias !596

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit178.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit29.i, %bb.z
  %.sroa.14.7.i = phi i64 [ %.sroa.14.6.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit29.i ], [ %i.cg, %bb.z ]
  %.sroa.0.7.i = phi ptr [ %.sroa.0.6.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit29.i ], [ %i.cf, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !591
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i180.i.i unwind label %bb.bl, !noalias !596

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit178.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body181.i.i unwind label %bb.bm, !noalias !596

bb.bm:                                            ; preds = %bb.bl
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i180.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit178.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit184.i.i unwind label %bb.u, !noalias !596

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit184.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i180.i.i, %bb.v
  %.sroa.14.8.i = phi i64 [ %.sroa.14.7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i180.i.i ], [ %i.bx, %bb.v ]
  %.sroa.0.8.i = phi ptr [ %.sroa.0.7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i180.i.i ], [ %i.bw, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !591
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i186.i.i unwind label %bb.bn, !noalias !596

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit184.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body187.i.i unwind label %bb.bo, !noalias !596

bb.bo:                                            ; preds = %bb.bn
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i186.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit184.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit190.i.i unwind label %bb.q, !noalias !596

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit190.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i186.i.i, %bb.r
  %.sroa.14.9.i = phi i64 [ %.sroa.14.8.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i186.i.i ], [ %i.bo, %bb.r ] ; 2 uses
  %.sroa.0.9.i = phi ptr [ %.sroa.0.8.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i186.i.i ], [ %i.bn, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !591
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i192.i.i unwind label %bb.bp, !noalias !596

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit190.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body193.i.i unwind label %bb.bq, !noalias !596

bb.bq:                                            ; preds = %bb.bp
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i192.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit190.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit196.i.i unwind label %bb.i, !noalias !596

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit196.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i192.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !591
  %8 = trunc nuw i8 %.sroa.0104.2.i.i to i1
  br i1 %8, label %bb.br, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit196.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i198.i.i unwind label %bb.bs, !noalias !596

bb.bs:                                            ; preds = %bb.br
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body.thread.i.i unwind label %bb.bt, !noalias !596

bb.bt:                                            ; preds = %bb.bs
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i198.i.i: ; preds = %bb.br
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.bu, !noalias !596

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i198.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i198.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit196.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %.sroa.14.11.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i ], [ %.sroa.14.9.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i198.i.i ], [ %.sroa.14.9.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit196.i.i ]
  %.sroa.0.11.i = phi ptr [ %i.be, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i ], [ %.sroa.0.9.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i198.i.i ], [ %.sroa.0.9.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit196.i.i ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i208.i.i unwind label %bb.bv, !noalias !596

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body209.i.i unwind label %bb.bw, !noalias !596

bb.bw:                                            ; preds = %bb.bv
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i208.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit212.i.i unwind label %bb.bx, !noalias !596

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i208.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body209.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit212.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i208.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i214.i.i unwind label %bb.by, !noalias !596

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit212.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body215.i.i unwind label %bb.bz, !noalias !596

bb.bz:                                            ; preds = %bb.by
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i214.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit212.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit218.i.i unwind label %bb.ca, !noalias !596

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i214.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body215.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit218.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i214.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit220.i.i unwind label %bb.cb, !noalias !596

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit218.i.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit231.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit229.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i225.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ak, i64 96 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.sink.split.i unwind label %bb.cc, !noalias !596

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit229.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %common.resume unwind label %bb.cd, !noalias !596

bb.cd:                                            ; preds = %bb.cc
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit220.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit218.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i225.i.i unwind label %bb.ce, !noalias !596

bb.ce:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit220.i.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body226.i.i unwind label %bb.cf, !noalias !596

bb.cf:                                            ; preds = %bb.ce
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !596
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i225.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit220.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit229.i.i unwind label %bb.cg, !noalias !596

.body226.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit231.i.i, %bb.cg, %bb.ce
  %.pn153.i.i = phi { ptr, i32 } [ %i.er, %bb.ce ], [ %.pn151.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit231.i.i ], [ %i.eu, %bb.cg ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.et) #17
          to label %common.resume unwind label %bb.bg, !noalias !596

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i225.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body226.i.i

.body.thread.i.i:                                 ; preds = %bb.bu, %bb.bs, %bb.k
  %eh.lpad-body340.i.i = phi { ptr, i32 } [ %i.bl, %bb.k ], [ %i.ee, %bb.bs ], [ %i.eg, %bb.bu ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.az) #17
          to label %.body209.i.i unwind label %bb.bg, !noalias !596

.body209.i.i:                                     ; preds = %.body.thread.i.i, %bb.bx, %bb.bv
  %.pn147.i.i = phi { ptr, i32 } [ %i.ej, %bb.bx ], [ %eh.lpad-body340.i.i, %.body.thread.i.i ], [ %i.eh, %bb.bv ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ba) #17
          to label %.body215.i.i unwind label %bb.bg, !noalias !596

.body215.i.i:                                     ; preds = %.body209.i.i, %bb.ca, %bb.by
  %.pn149.i.i = phi { ptr, i32 } [ %i.em, %bb.ca ], [ %.pn147.i.i, %.body209.i.i ], [ %i.ek, %bb.by ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit231.i.i unwind label %bb.bg, !noalias !596

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit231.i.i: ; preds = %.body215.i.i, %bb.cb
  %.pn151.i.i = phi { ptr, i32 } [ %i.en, %bb.cb ], [ %.pn149.i.i, %.body215.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #17
          to label %.body226.i.i unwind label %bb.bg, !noalias !596

bb.ch:                                            ; preds = %.body193.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #17
          to label %bb.ci unwind label %bb.bg, !noalias !596

bb.ci:                                            ; preds = %bb.ch, %.body193.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.az) #17
          to label %bb.cj unwind label %bb.bg, !noalias !596

bb.cj:                                            ; preds = %bb.ci
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ba) #17
          to label %bb.ck unwind label %bb.bg, !noalias !596

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit233.i.i unwind label %bb.bg, !noalias !596

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit233.i.i: ; preds = %bb.ck
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #17
          to label %bb.cl unwind label %bb.bg, !noalias !596

bb.cl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit233.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ev) #17
          to label %common.resume unwind label %bb.bg, !noalias !596

_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.sink.split.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit229.i.i, %bb.bc
  %.sink.i = phi ptr [ %i.dh, %bb.bc ], [ %i.eo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit229.i.i ]
  %.sroa.14.12.ph.i = phi i64 [ %.sroa.14.5.i, %bb.bc ], [ %.sroa.14.11.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit229.i.i ]
  %.sroa.0.12.ph.i = phi ptr [ %.sroa.0.5.i, %bb.bc ], [ %.sroa.0.11.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit229.i.i ]
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i), !noalias !596
  br label %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.i

_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.i: ; preds = %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.sink.split.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i
  %.sroa.14.12.i = phi i64 [ %.sroa.14.5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i ], [ %.sroa.14.12.ph.i, %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.sink.split.i ] ; 2 uses
  %.sroa.0.12.i = phi ptr [ %.sroa.0.5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i ], [ %.sroa.0.12.ph.i, %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.sink.split.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !591
  %i.ew = load i64, ptr %0, align 8, !range !3, !alias.scope !588, !noundef !4
  %i.ex = icmp eq i64 %i.ew, -9223372036854775808
  br i1 %i.ex, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB1f_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit, label %bb.cm

bb.cm:                                            ; preds = %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.al, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false), !noalias !609
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.12.i) ]
  %i.ey = icmp eq ptr %i.at, %.sroa.0.12.i
  br i1 %i.ey, label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB1f_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit, label %bb.cn, !prof !8

bb.cn:                                            ; preds = %bb.cm
  %i.ez = ptrtoint ptr %.sroa.0.12.i to i64
  %i.fa = ptrtoint ptr %i.at to i64
  %i.fb = sub nuw i64 %i.fa, %i.ez
  %i.fc = lshr exact i64 %i.fb, 5
  %i.fd = add nuw nsw i64 %i.fc, %.sroa.14.12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !610
  store i64 %.sroa.14.12.i, ptr %i.v, align 8, !noalias !610
  %i.fe = invoke noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.fd, ptr noundef nonnull %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93)
          to label %bb.cp unwind label %bb.co, !noalias !588

bb.co:                                            ; preds = %bb.cn
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsEBK_(ptr noalias noundef align 8 dereferenceable(168) %i.al) #17
          to label %common.resume unwind label %bb.cq, !noalias !588

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !610
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fe, ptr %i.fg, align 8, !alias.scope !588
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !588
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models12ErrorDetailsEBK_(ptr noalias noundef align 8 dereferenceable(168) %i.al), !noalias !588
  br label %_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB1f_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit

bb.cq:                                            ; preds = %bb.co
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !588
  unreachable

_RINvNtNtNtCs6sYutav3ODB_5serde7private2de7content21visit_content_seq_refNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB1f_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize9___VisitorNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEB1h_.exit: ; preds = %bb.cm, %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !589
  br label %bb.hp

bb.cr:                                            ; preds = %bb.a
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fl = load i64, ptr %i.fk, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %.idx.i2 = shl nuw nsw i64 %i.fl, 6             ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.idx.i2 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !613
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !615
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !615
  store i64 -9223372036854775808, ptr %i.s, align 8, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !615
  store i64 -9223372036854775808, ptr %i.r, align 8, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !615
  store ptr null, ptr %i.q, align 8, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !615
  store i64 -9223372036854775808, ptr %i.p, align 8, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !615
  store i64 -9223372036854775808, ptr %i.o, align 8, !noalias !615
  %.not.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i, label %.thread344.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cr
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.5159.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6160.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6118.0..sroa_idx119.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.7121.0..sroa_idx122.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.sroa.5156.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6157.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.699.0..sroa_idx100.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.7102.0..sroa_idx103.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.5153.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.6154.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.681.0..sroa_idx82.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.784.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %.sroa.5150.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6151.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.663.0..sroa_idx64.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.766.0..sroa_idx67.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.5147.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.644.0..sroa_idx45.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.747.0..sroa_idx48.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i3 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6145.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.626.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.fp = add nsw i64 %.idx.i2, -64
  %i.fq = lshr exact i64 %i.fp, 6
  %i.fr = add nuw nsw i64 %i.fq, 1
  br label %bb.cs

bb.cs:                                            ; preds = %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %.lr.ph.i.i
  %i.fs = phi ptr [ %i.fj, %.lr.ph.i.i ], [ %i.ft, %_RINvXs5_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18MapRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9MapAccess10next_valueNtNtB6_11ignored_any10IgnoredAnyECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 14 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 64 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !616
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.fv = load i8, ptr %i.fs, align 8, !range !5, !alias.scope !623, !noalias !624, !noundef !4
  switch i8 %i.fv, label %bb.ct [
    i8 1, label %bb.cu
    i8 4, label %bb.cv
    i8 12, label %bb.cw
    i8 13, label %bb.cx
    i8 14, label %bb.cy
    i8 15, label %bb.cz
  ], !prof !18

bb.ct:                                            ; preds = %bb.cs
  %i.fw = invoke fastcc noundef nonnull align 8 ptr @_RNvMs9_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB5_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE12invalid_typeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fs, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82)
          to label %.noexc.i.i23 unwind label %.loopexit.i.i, !noalias !625

.noexc.i.i23:                                     ; preds = %bb.ct
  store ptr %i.fw, ptr %i.fo, align 8, !alias.scope !626, !noalias !616
  store i8 1, ptr %i.f, align 8, !alias.scope !626, !noalias !616
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB1q_12ErrorDetailsNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1s_.exit.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !623, !noalias !624, !noundef !4
  invoke void @_RINvYNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBa_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1n_7Visitor8visit_u8NtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEBc_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, i8 noundef %i.fy)
          to label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB1q_12ErrorDetailsNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1s_.exit.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !625

bb.cv:                                            ; preds = %bb.cs
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !623, !noalias !624, !noundef !4
  %.sink1.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ga, i64 6)
  %.sink.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.fn, align 1, !alias.scope !627, !noalias !616
  store i8 0, ptr %i.f, align 8, !alias.scope !627, !noalias !616
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB1q_12ErrorDetailsNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1s_.exit.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cs
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !623, !noalias !624, !nonnull !4, !noundef !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !623, !noalias !624, !noundef !4
  call fastcc void @_RINvXNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB8_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEBa_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.ge), !noalias !628
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB1q_12ErrorDetailsNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1s_.exit.i.i.i.i.i

bb.cx:                                            ; preds = %bb.cs
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !623, !noalias !624, !nonnull !4, !noundef !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !623, !noalias !624, !noundef !4
  call fastcc void @_RINvXNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB8_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1l_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEBa_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef %i.gi), !alias.scope !629, !noalias !628
  br label %_RINvXs3_NtCs1gOyXocuPRE_10serde_core2deINtNtCsbvkFyIu7lgC_4core6marker11PhantomDataNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB1q_12ErrorDetailsNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1s_.exit.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cs
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !623, !noalias !624, !nonnull !4, !noundef !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !623, !noalias !624, !noundef !4
end_hunk_0
