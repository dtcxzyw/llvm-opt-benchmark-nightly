inline.NumInlined: 5206
inline.NumDeleted: 1999
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB5_9Evaluator21exec_clone_for_fieldsINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtB1t_5slice4iter4IterNtNtNtB9_11next_solver2ty2TyEEEB9_:bb.a
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.l) #46
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82.sink.split, %bb.z, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.i, align 8, !range !430, !noundef !5 ; 2 uses
  %.not65 = icmp eq i32 %i.ac, -1
  br i1 %.not65, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.440.0.copyload = load i32, ptr %.sroa.440.0..sroa_idx, align 4
  %.sroa.541.0.copyload = load ptr, ptr %i.m, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.646.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.642.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i32 %i.ac, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.440.0.copyload, ptr %.sroa.444.0..sroa_idx, align 4
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.541.0.copyload, ptr %.sroa.545.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.ad, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 336
  %i.af = load i64, ptr %i.ae, align 16, !noundef !5
  %i.ag = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !431
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j) #46
          to label %bb.k unwind label %bb.d

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val75 = load i64, ptr %i.n, align 16, !noundef !5 ; 2 uses
  invoke void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator13heap_allocate(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i64 noundef %.val75, i64 noundef %.val75)
          to label %bb.l unwind label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.ai = load i32, ptr %i.h, align 8, !range !430, !noundef !5 ; 2 uses
  %.not66 = icmp eq i32 %i.ai, -1
  br i1 %.not66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.453.0.copyload = load i32, ptr %.sroa.453.0..sroa_idx, align 4
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.761.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.756.0..sroa_idx, i64 24, i1 false)
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load <2 x i64>, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 %i.ai, ptr %0, align 8
  store i32 %.sroa.453.0.copyload, ptr %.sroa.458.0..sroa_idx, align 4
  store <2 x i64> %i.aj, ptr %.sroa.559.0..sroa_idx, align 8
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.ak = load i64, ptr %i.o, align 8, !range !438, !noundef !5 ; 2 uses
  %i.al = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val73 = load i64, ptr %i.n, align 16, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.am = invoke noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB2_6Region5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f)
          to label %bb.o unwind label %bb.d

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.an = invoke noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent2TyNtNtB7_8interner10DbInternerE7new_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull %i.am, ptr noundef nonnull %i.u, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.d

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ao = invoke fastcc noundef i64 @_RNvMsr_CskVLyBV5N46_15ra_ap_rustc_abiINtB5_11FieldsShapeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxE6offsetBW_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, i64 noundef %i.y)
          to label %bb.q unwind label %bb.d       ; 4 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.4.0.i.i = add i64 %i.ao, %6              ; 3 uses
  switch i64 %5, label %default.unreachable19 [
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit
  ]

default.unreachable19:                            ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ap = add i64 %.sroa.4.0.i.i, 1152921504606846976
  br label %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit

bb.s:                                             ; preds = %bb.q
  %i.aq = add i64 %.sroa.4.0.i.i, 576460752303423488
  br label %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit

_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit: ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01.0.i = phi i64 [ %i.ap, %bb.r ], [ %i.aq, %bb.s ], [ %.sroa.4.0.i.i, %bb.q ]
  store i64 %.sroa.01.0.i, ptr %i.d, align 8
  invoke void @_RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator12write_memory(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, i64 noundef %i.ak, i64 noundef %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8)
          to label %bb.t unwind label %bb.d

bb.t:                                             ; preds = %_RNvMs4_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_7Address8to_bytes.exit
  %i.ar = load i32, ptr %i.e, align 8, !range !430, !noundef !5
  %.not67 = icmp eq i32 %i.ar, -1
  br i1 %.not67, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ak, ptr %i.b, align 8
  store i64 %i.al, ptr %.sroa.030.sroa.5.0..sroa_idx, align 8
  store i64 %.val73, ptr %.sroa.030.sroa.6.0..sroa_idx, align 8
  store ptr %i.an, ptr %.sroa.531.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.as = add i64 %i.ao, %i.af
  %.sroa.4.0.i.i.i = add i64 %i.ao, %.8.val
  %.sroa.0.0.i87 = call i64 @llvm.usub.sat.i64(i64 %i.as, i64 %i.ao)
  store i64 %.0.val, ptr %i.a, align 8, !alias.scope !439
  store i64 %.sroa.4.0.i.i.i, ptr %i.s, align 8, !alias.scope !439
  store i64 %.sroa.0.0.i87, ptr %i.t, align 8, !alias.scope !439
  invoke fastcc void @_RNvMNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval4shimNtB4_9Evaluator10exec_clone(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 16 dereferenceable(1120) %1, i32 noundef %7, i32 noundef %8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 1, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %9, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %10, i32 %11)
          to label %bb.w unwind label %bb.d

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = load i32, ptr %i.c, align 8, !range !430, !noundef !5
  %.not69 = icmp eq i32 %i.at, -1
  br i1 %.not69, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.z:                                             ; preds = %bb.u, %bb.x, %bb.m, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.au = atomicrmw sub ptr %4, i64 1 release, align 8, !noalias !442
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit82

bb.aa:                                            ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1W_19RustcEnumVariantIdxEEEB1Y_.exit: ; preds = %bb.d, %bb.b
  resume { ptr, i32 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE10array_likeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1K_19RustcEnumVariantIdxuEB1M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 16 captures(none) dereferenceable(352) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(352) %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %.sroa.018 = alloca [40 x i8], align 16         ; 2 uses
  %.sroa.6 = alloca [7 x i8], align 1             ; 2 uses
  %i.c = trunc nuw i64 %3 to i1
  %. = select i1 %i.c, i64 %4, i64 0              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.e = load i64, ptr %i.d, align 16, !noundef !5 ; 2 uses
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 %.) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.h, label %_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size11checked_mulRNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.thread, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !449, !noundef !5
  %i.i = getelementptr i8, ptr %.val, i64 48
  %.val5.i = load i64, ptr %i.i, align 8, !noundef !5 ; 4 uses
  %i.j = icmp ugt i64 %.val5.i, 2305843009213693951
  br i1 %i.j, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  switch i64 %.val5.i, label %bb.e [
    i64 2, label %_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size11checked_mulRNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit
    i64 4, label %bb.f
    i64 8, label %bb.g
  ], !prof !450

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.val5.i) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  %5 = shl nuw i64 %.val5.i, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %5, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @400, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #43
  unreachable

bb.f:                                             ; preds = %bb.c
  br label %_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size11checked_mulRNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit

bb.g:                                             ; preds = %bb.c
  br label %_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size11checked_mulRNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit

_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size11checked_mulRNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.c, %bb.f, %bb.g
  %.sroa.0.0.i.i = phi i64 [ 2305843009213693952, %bb.g ], [ 2147483648, %bb.f ], [ 32768, %bb.c ]
  %i.k = icmp ult i64 %i.g, %.sroa.0.0.i.i
  br i1 %i.k, label %bb.h, label %_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size11checked_mulRNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.thread

bb.h:                                             ; preds = %_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size11checked_mulRNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit
  %i.l = trunc nuw nsw i64 %3 to i8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.421.0.copyload = load i8, ptr %.sroa.421.0..sroa_idx, align 8 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.421.0.copyload, -1
  %.not1.i = icmp eq i64 %., 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6filterNCINvMs0_NtBK_6layoutINtB1B_16LayoutCalculatorRNtBK_16TargetDataLayoutE10array_likeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2P_19RustcEnumVariantIdxuE0EB2R_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 137
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.018, ptr noundef nonnull align 16 dereferenceable(40) %i.m, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.622.0..sroa_idx, i64 7, i1 false)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6filterNCINvMs0_NtBK_6layoutINtB1B_16LayoutCalculatorRNtBK_16TargetDataLayoutE10array_likeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2P_19RustcEnumVariantIdxuE0EB2R_.exit

_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size11checked_mulRNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.thread: ; preds = %bb.a, %_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size11checked_mulRNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit
  store i64 1, ptr %0, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 -1, ptr %i.n, align 16
  br label %bb.j

bb.j:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6filterNCINvMs0_NtBK_6layoutINtB1B_16LayoutCalculatorRNtBK_16TargetDataLayoutE10array_likeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2P_19RustcEnumVariantIdxuE0EB2R_.exit, %_RINvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_4Size11checked_mulRNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit.thread
  ret void

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6filterNCINvMs0_NtBK_6layoutINtB1B_16LayoutCalculatorRNtBK_16TargetDataLayoutE10array_likeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2P_19RustcEnumVariantIdxuE0EB2R_.exit: ; preds = %bb.i, %bb.h
  %.sroa.4.0 = phi i8 [ %.sroa.421.0.copyload, %bb.i ], [ -1, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 340
  %i.p = load i8, ptr %i.o, align 4, !range !451, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = icmp ne i64 %., 0
  %narrow = select i1 %i.q, i1 %i.r, i1 false
  %.sroa.013.0 = zext i1 %narrow to i8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 338
  %i.t = load i8, ptr %i.s, align 2, !noundef !5  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.v = load i64, ptr %i.u, align 8, !noundef !5
  %i.w = add i64 %i.v, %.
  store i32 6, ptr %0, align 16
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.l, ptr %.sroa.010.sroa.4.0..sroa_idx, align 4
  %.sroa.010.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.010.sroa.6.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.018, i64 40, i1 false)
  %.sroa.010.sroa.6.sroa.4.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %.sroa.4.0, ptr %.sroa.010.sroa.6.sroa.4.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.010.sroa.6.sroa.5.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.010.sroa.6.sroa.5.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  %.sroa.010.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -9223372036854775806, ptr %.sroa.010.sroa.7.0..sroa_idx, align 16
  %.sroa.010.sroa.7.sroa.4.0..sroa.010.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.e, ptr %.sroa.010.sroa.7.sroa.4.0..sroa.010.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.010.sroa.7.sroa.5.0..sroa.010.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %., ptr %.sroa.010.sroa.7.sroa.5.0..sroa.010.sroa.7.0..sroa_idx.sroa_idx, align 16
  %.sroa.010.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %.sroa.010.sroa.8.0..sroa_idx, align 16
  %.sroa.010.sroa.8.sroa.5.0..sroa.010.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 -9223372036854775807, ptr %.sroa.010.sroa.8.sroa.5.0..sroa.010.sroa.8.0..sroa_idx.sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.w, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 338
  store i8 %i.t, ptr %.sroa.11.0..sroa_idx, align 2
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 339
  store i8 %i.t, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 340
  store i8 %.sroa.013.0, ptr %.sroa.13.0..sroa_idx, align 4
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE10univariantNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1K_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1I_B2t_EEB1M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 16 captures(none) dereferenceable(352) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [176 x i8], align 8               ; 25 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [1 x i8], align 1                 ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [352 x i8], align 16              ; 7 uses
  %i.s = alloca [352 x i8], align 16              ; 14 uses
  %i.t = alloca [8 x i8], align 8                 ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [352 x i8], align 16              ; 15 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !449, !noundef !5 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call fastcc void @_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1R_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1P_B2A_EEB1T_(ptr noalias nofree noundef align 16 captures(none) dereferenceable(352) %i.w, ptr nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %5, i1 noundef zeroext false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.y = load i64, ptr %i.x, align 16, !range !452, !noundef !5
  %i.z = icmp eq i64 %i.y, -1
  %i.aa = load i8, ptr %5, align 8, !range !453
  %i.ab = icmp eq i8 %i.aa, 1
  %or.cond5 = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.l, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %0, ptr noundef nonnull align 16 dereferenceable(352) %i.w, i64 352, i1 false)
  br label %bb.bf

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 136 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !454, !noundef !5
  %.not = icmp eq i8 %i.ad, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.af = load i64, ptr %i.ae, align 16, !noundef !5 ; 4 uses
  %.sroa.064.0.copyload = load i64, ptr %i.ac, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %i.af, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %.sroa.44.0.extract.shift.i = lshr i64 %.sroa.064.0.copyload, 8 ; 2 uses
  %trunc.i = trunc i64 %.sroa.064.0.copyload to i8
  switch i8 %trunc.i, label %bb.e [
    i8 0, label %switch.lookup
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.44.0.extract.trunc.i = trunc i64 %.sroa.44.0.extract.shift.i to i8
  %i.ag = invoke noundef i64 @_RNvMsm_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_5Float4size(i8 noundef %.sroa.44.0.extract.trunc.i)
          to label %_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.064.0.copyload, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !455
  store i32 %.sroa.6.0.extract.trunc.i, ptr %i.e, align 4, !noalias !461
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !alias.scope !461, !noundef !5
  %i.aj = icmp eq i32 %i.ai, %.sroa.6.0.extract.trunc.i
  br i1 %i.aj, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !461, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !461, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.an, 5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ao
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %i.as = phi ptr [ %i.aq, %bb.i ], [ %i.al, %bb.h ] ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !noalias !462, !noundef !5
  %i.au = icmp eq i32 %i.at, %.sroa.6.0.extract.trunc.i
  br i1 %i.au, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %bb.i

bb.j:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 48
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout15pointer_size_in.exit.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtCskVLyBV5N46_15ra_ap_rustc_abi12AddressSpaceNtBT_11PointerSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs2_BT_NtBT_16TargetDataLayout15pointer_size_in0ECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1R_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1P_B2A_EEB1T_:bb.a
  %i.ga = load ptr, ptr %.val240, align 8, !nonnull !5, !align !492, !noundef !5 ; 4 uses
  %i.gb = load i32, ptr %i.ga, align 16, !range !493, !noundef !5 ; 2 uses
  %i.gc = icmp ne i32 %i.gb, 3
  call void @llvm.assume(i1 %i.gc)
  %i.gd = icmp eq i32 %i.gb, 6
  br i1 %i.gd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gf = load i8, ptr %i.ge, align 4, !range !451, !noundef !5
  %i.gg = trunc nuw i8 %i.gf to i1                ; 2 uses
  %brmerge = or i1 %i.bf, %i.gg
  %.sroa.037.0.mux = select i1 %i.gg, ptr null, ptr %i.ft
  br i1 %brmerge, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.037.1 = phi ptr [ %.sroa.037.0.mux, %bb.ai ], [ null, %bb.ah ] ; 2 uses
  br i1 %i.as, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ai
  store i64 0, ptr %0, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val240, ptr %i.gh, align 8
  br label %bb.ag

bb.al:                                            ; preds = %bb.aj
  %i.gi = load i8, ptr %i.ar, align 1, !noundef !5
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 338
  %i.gk = load i8, ptr %i.gj, align 2, !noundef !5
  %..i257 = call noundef i8 @llvm.umin.i8(i8 %i.gi, i8 %i.gk)
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 338
  %i.gm = load i8, ptr %i.gl, align 2, !noundef !5
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.sroa.0131.0 = phi i8 [ %i.gm, %bb.am ], [ %..i257, %bb.al ] ; 2 uses
  %i.gn = and i8 %.sroa.0131.0, 63
  %i.go = zext nneg i8 %i.gn to i64
  %notmask208 = shl nsw i64 -1, %i.go             ; 2 uses
  %i.gp = xor i64 %notmask208, -1
  %i.gq = add i64 %i.fo, %i.gp
  %i.gr = and i64 %i.gq, %notmask208
  store i64 %i.gr, ptr %i.ab, align 8
  %..i258 = call noundef i8 @llvm.umax.i8(i8 %.sroa.0131.0, i8 %.sroa.0.2133) ; 2 uses
  %i.gs = load ptr, ptr %.val240, align 8, !nonnull !5, !align !492, !noundef !5 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 336
  %i.gu = load i8, ptr %i.gt, align 16, !range !451, !noundef !5 ; 2 uses
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 337
  %i.gx = load i8, ptr %i.gw, align 1             ; 2 uses
  %i.gy = trunc nuw i8 %.sroa.017.0132 to i1      ; 2 uses
  %i.gz = icmp ult i8 %i.gx, %.sroa.4.0131
  %spec.select.i.i = select i1 %i.gy, i1 %i.gz, i1 false
  %.sroa.0.0.i.i.i = select i1 %i.gv, i1 %spec.select.i.i, i1 %i.gy ; 2 uses
  %..i259 = select i1 %.sroa.0.0.i.i.i, i8 %.sroa.4.0131, i8 %i.gx ; 2 uses
  %.2.i = select i1 %.sroa.0.0.i.i.i, i8 %.sroa.017.0132, i8 %i.gu ; 2 uses
  %i.ha = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.hb = icmp ult i64 %i.ha, 2
  br i1 %i.hb, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.hc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE17univariant_biased10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.hc, label %bb.ap [
    i8 0, label %bb.av
    i8 1, label %bb.aq
    i8 2, label %bb.aq
  ], !prof !450

bb.ap:                                            ; preds = %bb.ao
  %i.hd = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE17univariant_biased10___CALLSITE)
          to label %bb.ar unwind label %.loopexit39 ; 2 uses

bb.aq:                                            ; preds = %bb.ao, %bb.ao, %bb.ar
  %.sroa.046.0 = phi i8 [ %i.hd, %bb.ar ], [ %i.hc, %bb.ao ], [ %i.hc, %bb.ao ]
  %i.he = load ptr, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE17univariant_biased10___CALLSITE, align 8, !nonnull !5, !align !449, !noundef !5
  %i.hf = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.he, i8 noundef %.sroa.046.0)
          to label %bb.as unwind label %.loopexit39

bb.ar:                                            ; preds = %bb.ap
  %i.hg = icmp eq i8 %i.hd, 0
  br i1 %i.hg, label %bb.av, label %bb.aq

bb.as:                                            ; preds = %bb.aq
  br i1 %i.hf, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.hh = load ptr, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE17univariant_biased10___CALLSITE, align 8, !nonnull !5, !align !449, !noundef !5 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.ab, ptr %i.x, align 8
  store ptr @_RNvXs8_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_4SizeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4137.0..sroa_idx, align 8
  store ptr %i.aa, ptr %i.fb, align 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1j_19RustcEnumVariantIdxENtB6_5Debug3fmtB1l_, ptr %.sroa.4141.0..sroa_idx, align 8
  store ptr @30, ptr %i.y, align 8
  store ptr %i.x, ptr %i.fc, align 8
  store ptr %i.y, ptr %i.z, align 8
  store ptr @8, ptr %i.fd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 1, ptr %i.o, align 8
  store ptr %i.z, ptr %.sroa.048.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.048.sroa.5.0..sroa_idx, align 8
  store ptr %i.hi, ptr %.sroa.449.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %bb.au unwind label %.loopexit39

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.au, %bb.an, %bb.ao, %bb.ar
  %i.hj = load i64, ptr %i.fe, align 8, !noundef !5 ; 2 uses
  %i.hk = icmp ugt i64 %i.hj, %i.fr
  br i1 %i.hk, label %bb.aw, label %.invoke385

bb.aw:                                            ; preds = %bb.av
  %i.hl = load ptr, ptr %i.ff, align 8, !nonnull !5, !noundef !5
  %i.hm = load i64, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.fr
  store i64 %i.hm, ptr %i.hn, align 8
  %i.ho = load ptr, ptr %.val240, align 8, !nonnull !5, !align !492, !noundef !5 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 136
  %i.hq = load i8, ptr %i.hp, align 8, !range !454, !noundef !5
  %.not209 = icmp eq i8 %i.hq, -1
  br i1 %.not209, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, ptr noundef nonnull align 16 dereferenceable(48) %i.hr, i64 48, i1 false)
  %i.hs = invoke noundef i128 @_RINvMsv_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_5Niche9availableNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.0.val)
          to label %bb.ay unwind label %.loopexit39 ; 3 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ht = load i8, ptr %i.al, align 1, !range !451, !noundef !5
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = icmp uge i128 %i.hs, %.sroa.032.0130
  %i.hw = icmp ugt i128 %i.hs, %.sroa.032.0130
  %.sroa.050.0.in = select i1 %i.hu, i1 %i.hv, i1 %i.hw
  %.pre.pre = load i64, ptr %i.ab, align 8        ; 3 uses
  br i1 %.sroa.050.0.in, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_RNvXsa_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_4SizeNtNtNtCshzWfHUSfYae_4core3ops5arith3Add3add.exit, %bb.ay
  %.sroa.2.1 = phi i8 [ %.sroa.456.0.copyload, %_RNvXsa_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_4SizeNtNtNtCshzWfHUSfYae_4core3ops5arith3Add3add.exit ], [ %.sroa.2.0128, %bb.ay ]
  %.sroa.032.1 = phi i128 [ %i.hs, %_RNvXsa_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_4SizeNtNtNtCshzWfHUSfYae_4core3ops5arith3Add3add.exit ], [ %.sroa.032.0130, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.pre222 = load ptr, ptr %.val240, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.hx = load i64, ptr %i.fg, align 16, !noundef !5 ; 3 uses
  %i.hy = add i64 %i.hx, %.pre.pre                ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.hx
  br i1 %i.hz, label %bb.bb, label %_RNvXsa_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_4SizeNtNtNtCshzWfHUSfYae_4core3ops5arith3Add3add.exit, !prof !7

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.hx, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.pre.pre, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.ia, align 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8
  br label %.invoke387

.invoke387:                                       ; preds = %bb.bu, %bb.bf, %bb.bb
  %i.ib = phi ptr [ @942, %bb.bb ], [ @400, %bb.bf ], [ @400, %bb.bu ]
  %i.ic = phi ptr [ %i.e, %bb.bb ], [ %i.c, %bb.bf ], [ %i.a, %bb.bu ]
  %i.id = phi ptr [ @943, %bb.bb ], [ @401, %bb.bf ], [ @401, %bb.bu ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull %i.ib, ptr noundef nonnull %i.ic, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.id) #43
          to label %.cont388 unwind label %.loopexit.split-lp

.cont388:                                         ; preds = %.invoke387
  unreachable

_RNvXsa_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_4SizeNtNtNtCshzWfHUSfYae_4core3ops5arith3Add3add.exit: ; preds = %bb.ba
  store i64 %i.hy, ptr %i.fg, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.051, ptr noundef nonnull align 16 dereferenceable(40) %i.w, i64 40, i1 false)
  %.sroa.456.0.copyload = load i8, ptr %.sroa.456.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  br label %bb.az

bb.bc:                                            ; preds = %bb.az, %bb.aw
  %i.ie = phi ptr [ %.pre222, %bb.az ], [ %i.ho, %bb.aw ]
  %i.if = phi i64 [ %.pre.pre, %bb.az ], [ %i.hm, %bb.aw ] ; 2 uses
  %.sroa.2.2 = phi i8 [ %.sroa.2.1, %bb.az ], [ %.sroa.2.0128, %bb.aw ] ; 2 uses
  %.sroa.032.2 = phi i128 [ %.sroa.032.1, %bb.az ], [ %.sroa.032.0130, %bb.aw ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 320
  %6 = load i64, ptr %i.ig, align 16, !noundef !5
  %i.ih = load i64, ptr %i.fh, align 8            ; 4 uses
  %i.ii = add i64 %6, %i.if                       ; 4 uses
  %i.ij = icmp ult i64 %i.ii, %i.if
  br i1 %i.ij, label %.thread26, label %bb.bd, !prof !7

bb.bd:                                            ; preds = %bb.bc
  %i.ik = icmp ugt i64 %i.ih, 2305843009213693951
  br i1 %i.ik, label %.invoke389, label %bb.be, !prof !7

bb.be:                                            ; preds = %bb.bd
  switch i64 %i.ih, label %bb.bf [
    i64 2, label %bb.bi
    i64 4, label %bb.bg
    i64 8, label %bb.bh
  ], !prof !450

.invoke389:                                       ; preds = %bb.bd, %bb.bs
  %i.il = phi i64 [ %.val229, %bb.bs ], [ %i.ih, %bb.bd ]
  invoke void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %i.il) #45
          to label %.cont390 unwind label %.loopexit.split-lp

.cont390:                                         ; preds = %.invoke389
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.im = shl nuw i64 %i.ih, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.im, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8
  br label %.invoke387

bb.bg:                                            ; preds = %bb.be
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  br label %bb.bi

bb.bi:                                            ; preds = %bb.be, %bb.bg, %bb.bh
  %.sroa.0.0.i.i = phi i64 [ 2305843009213693952, %bb.bh ], [ 2147483648, %bb.bg ], [ 32768, %bb.be ]
  %i.in = icmp ult i64 %i.ii, %.sroa.0.0.i.i
  br i1 %i.in, label %bb.bj, label %.thread26

bb.bj:                                            ; preds = %bb.bi
  store i64 %i.ii, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.io = icmp eq ptr %i.fp, %i.ez
  br i1 %i.io, label %._crit_edge.loopexit, label %bb.ac

.thread26:                                        ; preds = %bb.bc, %bb.bi
  store i64 1, ptr %0, align 16
  br label %bb.ag

bb.bk:                                            ; preds = %bb.ca, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEECs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.bk
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEEB1u_.exit unwind label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.bj
  %i.ir = icmp eq ptr %.sroa.037.1, null
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %.sroa.2.0.lcssa = phi i8 [ -1, %bb.y ], [ %.sroa.2.2, %._crit_edge.loopexit ]
  %.sroa.037.0.lcssa = phi i1 [ true, %bb.y ], [ %i.ir, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.4.0.lcssa = phi i8 [ %i.aw, %bb.y ], [ %..i259, %._crit_edge.loopexit ]
  %.sroa.017.0.lcssa = phi i8 [ %i.au, %bb.y ], [ %.2.i, %._crit_edge.loopexit ]
  %.sroa.0.2.lcssa = phi i8 [ %.sroa.0.1, %bb.y ], [ %..i258, %._crit_edge.loopexit ] ; 3 uses
  %i.is = trunc nuw i8 %i.au to i1
  %..i269 = call i8 @llvm.umax.i8(i8 %i.aw, i8 %.sroa.0.2.lcssa)
  %.sroa.0.3 = select i1 %i.is, i8 %..i269, i8 %.sroa.0.2.lcssa ; 5 uses
  %i.it = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.iu = icmp ult i64 %i.it, 2
  br i1 %i.iu, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %._crit_edge
  %i.iv = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE17univariant_biaseds_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.iv, label %bb.bo [
    i8 0, label %bb.bs
    i8 1, label %bb.bp
    i8 2, label %bb.bp
  ], !prof !450

bb.bo:                                            ; preds = %bb.bn
  %i.iw = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE17univariant_biaseds_10___CALLSITE)
          to label %bb.bq unwind label %.loopexit.split-lp ; 2 uses

bb.bp:                                            ; preds = %bb.bn, %bb.bn, %bb.bq
  %.sroa.070.0 = phi i8 [ %i.iw, %bb.bq ], [ %i.iv, %bb.bn ], [ %i.iv, %bb.bn ]
  %i.ix = load ptr, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE17univariant_biaseds_10___CALLSITE, align 8, !nonnull !5, !align !449, !noundef !5
  %i.iy = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ix, i8 noundef %.sroa.070.0)
          to label %bb.br unwind label %.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bo
  %i.iz = icmp eq i8 %i.iw, 0
  br i1 %i.iz, label %bb.bs, label %bb.bp

bb.br:                                            ; preds = %bb.bp
  br i1 %i.iy, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.bn, %._crit_edge, %bb.by, %bb.br
  %i.ja = load i64, ptr %i.ab, align 8, !noundef !5
  %i.jb = and i8 %.sroa.0.3, 63
  %i.jc = zext nneg i8 %i.jb to i64
  %notmask210 = shl nsw i64 -1, %i.jc             ; 2 uses
  %i.jd = xor i64 %notmask210, -1
  %i.je = add i64 %i.ja, %i.jd
  %i.jf = and i64 %i.je, %notmask210              ; 5 uses
  %i.jg = getelementptr i8, ptr %.0.val, i64 48
  %.val229 = load i64, ptr %i.jg, align 8, !noundef !5 ; 4 uses
  %i.jh = icmp ugt i64 %.val229, 2305843009213693951
  br i1 %i.jh, label %.invoke389, label %bb.bt, !prof !7

bb.bt:                                            ; preds = %bb.bs
  switch i64 %.val229, label %bb.bu [
    i64 2, label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit
    i64 4, label %bb.bv
    i64 8, label %bb.bw
  ], !prof !450

bb.bu:                                            ; preds = %bb.bt
  %7 = shl nuw i64 %.val229, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %7, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i272 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i272, align 8
  br label %.invoke387

bb.bv:                                            ; preds = %bb.bt
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit

bb.bw:                                            ; preds = %bb.bt
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit

bb.bx:                                            ; preds = %bb.br
  %i.ji = load ptr, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE17univariant_biaseds_10___CALLSITE, align 8, !nonnull !5, !align !449, !noundef !5 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ab, ptr %i.t, align 8
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs8_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_4SizeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4149.0..sroa_idx, align 8
  store ptr @32, ptr %i.u, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %i.jk, align 8
  store ptr %i.u, ptr %i.v, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @8, ptr %i.jl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 1, ptr %i.n, align 8
  %.sroa.072.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.v, ptr %.sroa.072.sroa.4.0..sroa_idx, align 8
  %.sroa.072.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %.sroa.072.sroa.5.0..sroa_idx, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.jj, ptr %.sroa.473.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ji, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.by unwind label %.loopexit.split-lp

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bs

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit: ; preds = %bb.bw, %bb.bv, %bb.bt
  %.sroa.0.0.i271 = phi i64 [ 2305843009213693952, %bb.bw ], [ 2147483648, %bb.bv ], [ 32768, %bb.bt ]
  %.not211 = icmp ult i64 %i.jf, %.sroa.0.0.i271
  br i1 %.not211, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit
  %i.jm = zext i1 %.sroa.037.0.lcssa to i8        ; 17 uses
  %i.jn = and i8 %i.ay, 3
  %.not213 = icmp eq i8 %i.jn, 0                  ; 2 uses
  %i.jo = icmp ne i64 %i.jf, 0
  %or.cond = select i1 %.sroa.037.0.lcssa, i1 %i.jo, i1 false
  br i1 %or.cond, label %bb.cc, label %.thread28

bb.ca:                                            ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit
  store i64 1, ptr %0, align 16
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 -1, ptr %i.jp, align 16
  br label %bb.bk

.thread28:                                        ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i297, %bb.cg, %.lr.ph.i292, %.loopexit37.thread, %bb.ci, %bb.ch, %bb.cj, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.dl, %bb.cq, %bb.cp, %.loopexit, %bb.bz
  %.sroa.0102.0 = phi i32 [ 6, %bb.bz ], [ 6, %.loopexit ], [ 6, %bb.ch ], [ %.sroa.0102.2, %bb.dl ], [ 6, %bb.cq ], [ 6, %bb.cp ], [ 6, %bb.ck ], [ %i.mi, %bb.co ], [ 6, %bb.cl ], [ %i.mi, %bb.cn ], [ 6, %bb.cm ], [ 6, %bb.cj ], [ 6, %bb.ci ], [ 6, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i297 ], [ 6, %.loopexit37.thread ], [ 6, %.lr.ph.i292 ], [ 6, %bb.cg ], [ 6, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i ]
  %.sroa.5106.0 = phi i8 [ %i.jm, %bb.bz ], [ %i.jm, %.loopexit ], [ %i.jm, %bb.ch ], [ %.sroa.5106.2, %bb.dl ], [ %i.jm, %bb.cq ], [ %i.jm, %bb.cp ], [ %i.jm, %bb.ck ], [ %.sroa.5106.0.copyload108, %bb.co ], [ %i.jm, %bb.cl ], [ %.sroa.5106.0.copyload, %bb.cn ], [ %i.jm, %bb.cm ], [ %i.jm, %bb.cj ], [ %i.jm, %bb.ci ], [ %i.jm, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i297 ], [ %i.jm, %.loopexit37.thread ], [ %i.jm, %.lr.ph.i292 ], [ %i.jm, %bb.cg ], [ %i.jm, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i ]
  %.sroa.091.0 = phi ptr [ null, %bb.bz ], [ null, %.loopexit ], [ %.sroa.3.0.i277, %bb.ch ], [ null, %bb.dl ], [ null, %bb.cq ], [ null, %bb.cp ], [ %.sroa.3.0.i277, %bb.ck ], [ %.sroa.3.0.i277, %bb.co ], [ %.sroa.3.0.i277, %bb.cl ], [ %.sroa.3.0.i277, %bb.cn ], [ %.sroa.3.0.i277, %bb.cm ], [ %.sroa.3.0.i277, %bb.cj ], [ %.sroa.3.0.i277, %bb.ci ], [ null, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i297 ], [ null, %.loopexit37.thread ], [ null, %.lr.ph.i292 ], [ null, %bb.cg ], [ null, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i ] ; 2 uses
  %.idx466 = shl nuw nsw i64 %2, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 %.idx466
  %.not.not.not.i.not.not.not461.not = icmp eq i64 %2, 0
  br i1 %.not.not.not.i.not.not.not461.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1D_19RustcEnumVariantIdxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvMs0_NtBV_6layoutINtB3H_16LayoutCalculatorRNtBV_16TargetDataLayoutE17univariant_biasedB1B_B2m_BQ_Es6_0EB1F_.exit, label %.lr.ph463

bb.cb:                                            ; preds = %.lr.ph463
  %i.jr = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.jr, %i.jq
  br i1 %.not.not.not.i.not.not.not.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1D_19RustcEnumVariantIdxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvMs0_NtBV_6layoutINtB3H_16LayoutCalculatorRNtBV_16TargetDataLayoutE17univariant_biasedB1B_B2m_BQ_Es6_0EB1F_.exit, label %.lr.ph463

.lr.ph463:                                        ; preds = %.thread28, %bb.cb
  %i.js = phi ptr [ %i.jr, %bb.cb ], [ %1, %.thread28 ] ; 2 uses
  %.val.i275 = load ptr, ptr %i.js, align 8, !noalias !558, !nonnull !5, !align !449, !noundef !5
  %i.jt = load ptr, ptr %.val.i275, align 8, !noalias !558, !nonnull !5, !align !492, !noundef !5
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 340
  %i.jv = load i8, ptr %i.ju, align 4, !range !451, !noalias !558, !noundef !5
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1D_19RustcEnumVariantIdxEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvMs0_NtBV_6layoutINtB3H_16LayoutCalculatorRNtBV_16TargetDataLayoutE17univariant_biasedB1B_B2m_BQ_Es6_0EB1F_.exit, label %bb.cb

bb.cc:                                            ; preds = %bb.bz
  %.idx34 = shl i64 %2, 3
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 %.idx34 ; 5 uses
  %i.jy = icmp eq i64 %2, 0
  br i1 %i.jy, label %.loopexit38, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cc, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i
  %i.jz = phi i64 [ %i.kl, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i ], [ 0, %bb.cc ] ; 3 uses
  %i.ka = phi ptr [ %i.kb, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i ], [ %1, %bb.cc ] ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ka, align 8, !alias.scope !570, !noalias !571, !nonnull !5, !align !449, !noundef !5
  %i.kc = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !noalias !574, !nonnull !5, !align !492, !noundef !5 ; 3 uses
  %i.kd = load i32, ptr %i.kc, align 16, !range !493, !noalias !574, !noundef !5 ; 2 uses
  %i.ke = icmp ne i32 %i.kd, 3
  call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp eq i32 %i.kd, 6
  br i1 %i.kf, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kh = load i8, ptr %i.kg, align 4, !range !451, !noalias !574, !noundef !5
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i, label %bb.ce

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i: ; preds = %bb.cd
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 320
  %i.kk = load i64, ptr %i.kj, align 16, !noalias !574, !noundef !5
  %.not.i.i.i.i279 = icmp eq i64 %i.kk, 0
  br i1 %.not.i.i.i.i279, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i, label %bb.ce

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i
  %i.kl = add nuw nsw i64 %i.jz, 1
  %i.km = icmp eq ptr %i.kb, %i.jx
  br i1 %i.km, label %.thread28, label %.lr.ph.i

bb.ce:                                            ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i, %bb.cd, %.lr.ph.i
  %i.kn = trunc i64 %i.jz to i32
  %i.ko = add nuw i64 %i.jz, 1
  br label %.loopexit38

.loopexit38:                                      ; preds = %bb.ce, %bb.cc
  %.sroa.16.0 = phi i64 [ 0, %bb.cc ], [ %i.ko, %bb.ce ]
  %.sroa.0.017 = phi ptr [ %1, %bb.cc ], [ %i.kb, %bb.ce ] ; 2 uses
  %.sroa.3.0.i277 = phi ptr [ null, %bb.cc ], [ %i.ka, %bb.ce ] ; 11 uses
  %.sroa.0.0.i278 = phi i32 [ undef, %bb.cc ], [ %i.kn, %bb.ce ] ; 4 uses
  %.not214 = icmp eq ptr %.sroa.3.0.i277, null    ; 2 uses
  %i.kp = icmp eq ptr %.sroa.0.017, %i.jx
  br i1 %i.kp, label %.loopexit37.thread, label %.lr.ph.i281

.lr.ph.i281:                                      ; preds = %.loopexit38, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i288
  %i.kq = phi i64 [ %i.lc, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i288 ], [ %.sroa.16.0, %.loopexit38 ] ; 3 uses
  %i.kr = phi ptr [ %i.ks, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i288 ], [ %.sroa.0.017, %.loopexit38 ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %.val.i.i.i.i.i.i283 = load ptr, ptr %i.kr, align 8, !alias.scope !584, !noalias !585, !nonnull !5, !align !449, !noundef !5
  %i.kt = load ptr, ptr %.val.i.i.i.i.i.i283, align 8, !noalias !588, !nonnull !5, !align !492, !noundef !5 ; 3 uses
  %i.ku = load i32, ptr %i.kt, align 16, !range !493, !noalias !588, !noundef !5 ; 2 uses
  %i.kv = icmp ne i32 %i.ku, 3
  call void @llvm.assume(i1 %i.kv)
  %i.kw = icmp eq i32 %i.ku, 6
  br i1 %i.kw, label %bb.cf, label %.loopexit37

bb.cf:                                            ; preds = %.lr.ph.i281
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.ky = load i8, ptr %i.kx, align 4, !range !451, !noalias !588, !noundef !5
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i286, label %.loopexit37

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i286: ; preds = %bb.cf
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 320
  %i.lb = load i64, ptr %i.la, align 16, !noalias !588, !noundef !5
  %.not.i.i.i.i287 = icmp eq i64 %i.lb, 0
  br i1 %.not.i.i.i.i287, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i288, label %.loopexit37

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i288: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i286
  %i.lc = add i64 %i.kq, 1
  %i.ld = icmp eq ptr %i.ks, %i.jx
  br i1 %i.ld, label %.loopexit37.thread, label %.lr.ph.i281

.loopexit37.thread:                               ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i288, %.loopexit38
  br i1 %.not214, label %.thread28, label %.thread293

.loopexit37:                                      ; preds = %.lr.ph.i281, %bb.cf, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i286
  %i.le = trunc i64 %i.kq to i32                  ; 2 uses
  %i.lf = icmp eq ptr %i.ks, %i.jx
  br i1 %i.lf, label %.loopexit, label %.lr.ph.i292

.lr.ph.i292:                                      ; preds = %.loopexit37, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i299
  %i.lg = phi ptr [ %i.lh, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2T_19RustcEnumVariantIdxEuINtNtNtBf_3ops12control_flow11ControlFlowTB2R_B25_EENCINvNtBb_3map12map_try_foldTjB25_EB4K_uB45_NCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB5I_10IndexSliceB2R_B26_E15iter_enumerated0NCINvNvB1e_4find5checkB4K_QNCINvMs0_NtB2b_6layoutINtB7H_16LayoutCalculatorRNtB2b_16TargetDataLayoutE17univariant_biasedB2R_B3C_B26_Es5_0E0E0E0B2V_.exit.i299 ], [ %i.ks, %.loopexit37 ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %.val.i.i.i.i.i.i294 = load ptr, ptr %i.lg, align 8, !alias.scope !598, !noalias !599, !nonnull !5, !align !449, !noundef !5
  %i.li = load ptr, ptr %.val.i.i.i.i.i.i294, align 8, !noalias !602, !nonnull !5, !align !492, !noundef !5 ; 3 uses
  %i.lj = load i32, ptr %i.li, align 16, !range !493, !noalias !602, !noundef !5 ; 2 uses
  %i.lk = icmp ne i32 %i.lj, 3
  call void @llvm.assume(i1 %i.lk)
  %i.ll = icmp eq i32 %i.lj, 6
  br i1 %i.ll, label %bb.cg, label %.thread28

bb.cg:                                            ; preds = %.lr.ph.i292
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.ln = load i8, ptr %i.lm, align 4, !range !451, !noalias !602, !noundef !5
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i297, label %.thread28

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtBX_16LayoutCalculatorRNtBZ_16TargetDataLayoutE17univariant_biasedNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2I_19RustcEnumVariantIdxRRINtBZ_10LayoutDataB2G_B3r_EEs5_0INtB7_5FnMutTRTB2G_RB3S_EEE8call_mutB2K_.exit.i.i.i.i297: ; preds = %bb.cg
end_hunk_1
begin_hunk_2_@_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE24layout_of_struct_or_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Y_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1W_B2H_ENCNvNvXs0_NvNtB1Y_3adt1__NtB3L_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5Q_3map3MapINtNtB5Q_9enumerate9EnumerateINtNtNtB5U_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1W_B38_EEENCNvMNtB83_5sliceINtB93_10IndexSliceB2H_B7Y_E15iter_enumerated0ENCB3D_s3_0EEB20_:bb.a

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.dy
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %bb.dy ], [ %i.tk, %.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ %i.sw, %bb.dy ], [ %i.tj, %.unr-lcssa ]
  %lcmp.mod886 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod886)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.epil.preheader
  %.sroa.04.0.i.i.i.epil = phi i64 [ %.sroa.04.0.i.i.i.epil.init, %.epil.preheader ], [ %i.tv, %bb.ef ] ; 2 uses
  %.sroa.02.0.i.i.i.epil = phi i64 [ %.sroa.02.0.i.i.i.epil.init, %.epil.preheader ], [ %i.tu, %bb.ef ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ef ]
  %i.ts = getelementptr inbounds nuw [352 x i8], ptr %i.rw, i64 %.sroa.04.0.i.i.i.epil
  %i.tt = getelementptr i8, ptr %i.ts, i64 328
  %.val.i246.i.i.epil = load i64, ptr %i.tt, align 8, !noalias !748, !noundef !5
  %i.tu = add i64 %.val.i246.i.i.epil, %.sroa.02.0.i.i.i.epil ; 2 uses
  %i.tv = add nuw i64 %.sroa.04.0.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ef, !llvm.loop !845

.epilog-lcssa:                                    ; preds = %bb.ef, %.unr-lcssa
  %.lcssa867 = phi i64 [ %i.tj, %.unr-lcssa ], [ %i.tu, %bb.ef ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !747
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.tw, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !747
  store i32 0, ptr %i.ar, align 16, !noalias !747
  %.sroa.6138.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i64 %.sroa.5104.41.insert.insert.i.i, ptr %.sroa.6138.0..sroa_idx.i.i, align 4, !noalias !747
  %.sroa.12145.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i128 %.sroa.29.0.ph.i.i, ptr %.sroa.12145.0..sroa_idx.i.i, align 16, !noalias !747
  %.sroa.13149.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i128 %.sroa.37.0.ph.i.i, ptr %.sroa.13149.0..sroa_idx.i.i, align 16, !noalias !747
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i128 %.sroa.0264.0.ph.i.i, ptr %i.tx, align 16, !noalias !747
  %.sroa.478.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i64 %.val1.i.i.i.i.i.i.i, ptr %.sroa.478.0..sroa_idx.i.i, align 16, !noalias !747
  %.sroa.579.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store i64 %i.lp, ptr %.sroa.579.0..sroa_idx.i.i, align 8, !noalias !747
  %.sroa.680.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  store i64 %i.mu, ptr %.sroa.680.0..sroa_idx.i.i, align 16, !noalias !747
  %.sroa.781.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  store i8 0, ptr %.sroa.781.0..sroa_idx.i.i, align 8, !noalias !747
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store i32 0, ptr %i.ty, align 8, !noalias !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !747
  %i.tz = load i64, ptr %i.av, align 8, !noalias !747, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !747
  invoke void @_RNvXsA_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEINtNtCshzWfHUSfYae_4core7convert4FromABF_j1_E4fromCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, i64 noundef %i.tz)
          to label %bb.ej unwind label %bb.eh, !noalias !748

bb.eg:                                            ; preds = %bb.ei, %bb.eh
  %.pn.i.i = phi { ptr, i32 } [ %i.ub, %bb.ei ], [ %i.ua, %bb.eh ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi8VariantsNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1j_19RustcEnumVariantIdxEEB1l_(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %i.ar) #42
          to label %common.resume unwind label %bb.el, !noalias !748

bb.eh:                                            ; preds = %.epilog-lcssa
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ei:                                            ; preds = %bb.ej
  %i.ub = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEEB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap) #42
          to label %bb.eg unwind label %bb.el, !noalias !748

bb.ej:                                            ; preds = %.epilog-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !747
  invoke void @_RNvXsA_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEINtNtCshzWfHUSfYae_4core7convert4FromABF_j1_E4fromBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, i32 noundef 0)
          to label %bb.ek unwind label %bb.ei, !noalias !748

bb.ek:                                            ; preds = %bb.ej
  %i.uc = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uc, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !747
  %i.ud = load i8, ptr %i.bc, align 1, !noalias !747, !noundef !5
  %i.ue = load i8, ptr %i.bb, align 1, !range !451, !noalias !747, !noundef !5
  %i.uf = load i8, ptr %i.ky, align 1, !noalias !747
  %i.ug = load i8, ptr %i.ba, align 1, !noalias !747, !noundef !5
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.13.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(128) %i.ar, i64 128, i1 false), !noalias !745
  %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.5.0.insert.ext.i.i = zext i32 %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.5.0.i.i to i128
  %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.5.0.insert.shift.i.i = shl nuw i128 %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.5.0.insert.ext.i.i, 96
  %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.4.0.insert.ext.i.i = zext i64 %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.4.0.i.i to i128
  %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.4.0.insert.shift.i.i = shl nuw nsw i128 %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.4.0.insert.ext.i.i, 32
  %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.4.0.insert.insert.i.i = or disjoint i128 %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.5.0.insert.shift.i.i, %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.4.0.insert.shift.i.i
  %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.0.0.i.i to i128
  %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.0.0.insert.insert.i.i = or disjoint i128 %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.4.0.insert.insert.i.i, %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.0.0.insert.ext.i.i
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.040.i.i, i64 40, i1 false), !noalias !745
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.444.i.i, i64 7, i1 false), !noalias !745
  %i.uh = load i64, ptr %i.at, align 8, !noalias !747, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !747
  store i32 %.sroa.046.0.i.i, ptr %i.cs, align 16, !alias.scope !742, !noalias !745
  %.sroa.472.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i8 %.sroa.649.0.i.i, ptr %.sroa.472.0..sroa_idx.i.i, align 4, !alias.scope !742, !noalias !745
  %.sroa.573.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 5
  store i56 %.sroa.8.sroa.0.sroa.0.0.i.i, ptr %.sroa.573.0..sroa_idx.i.i, align 1, !alias.scope !742, !noalias !745
  %.sroa.573.sroa.4.sroa.4.0..sroa.573.sroa.4.0..sroa.573.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i128 %.sroa.8.sroa.0.sroa.3.sroa.3.sroa.0.0.insert.insert.i.i, ptr %.sroa.573.sroa.4.sroa.4.0..sroa.573.sroa.4.0..sroa.573.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 16, !alias.scope !742, !noalias !745
  %.sroa.573.sroa.4.sroa.5.0..sroa.573.sroa.4.0..sroa.573.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store i128 %.sroa.8.sroa.0.sroa.3.sroa.7.0.i.i, ptr %.sroa.573.sroa.4.sroa.5.0..sroa.573.sroa.4.0..sroa.573.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 16, !alias.scope !742, !noalias !745
  %.sroa.674.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store i32 %.sroa.8.sroa.4.0.i.i, ptr %.sroa.674.0..sroa_idx.i.i, align 16, !alias.scope !742, !noalias !745
  %.sroa.775.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 52
  store i64 %.sroa.8.sroa.6.0.i.i, ptr %.sroa.775.0..sroa_idx.i.i, align 4, !alias.scope !742, !noalias !745
  %.sroa.8.0..sroa_idx76.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 60
  store i32 %.sroa.8.sroa.7.sroa.0.0.i.i, ptr %.sroa.8.0..sroa_idx76.i.i, align 4, !alias.scope !742, !noalias !745
  %.sroa.8.sroa.4156.0..sroa.8.0..sroa_idx76.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  store i128 %.sroa.8.sroa.7.sroa.4.0.i.i, ptr %.sroa.8.sroa.4156.0..sroa.8.0..sroa_idx76.sroa_idx.i.i, align 16, !alias.scope !742, !noalias !745
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx76.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  store i128 %.sroa.8.sroa.7.sroa.5.0.i.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx76.sroa_idx.i.i, align 16, !alias.scope !742, !noalias !745
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  store i8 %.sroa.241.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !742, !noalias !745
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.aq, i64 48, i1 false), !noalias !745
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 320
  store i64 %i.uh, ptr %.sroa.14.0..sroa_idx.i.i, align 16, !alias.scope !742, !noalias !745
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 328
  store i64 %.lcssa867, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !742, !noalias !745
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 336
  store i8 %i.ue, ptr %.sroa.16.0..sroa_idx.i.i, align 16, !alias.scope !742, !noalias !745
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 337
  store i8 %i.uf, ptr %.sroa.17.0..sroa_idx.i.i, align 1, !alias.scope !742, !noalias !745
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 338
  store i8 %i.ud, ptr %.sroa.18.0..sroa_idx.i.i, align 2, !alias.scope !742, !noalias !745
  %.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 339
  store i8 %i.ug, ptr %.sroa.19.0..sroa_idx.i.i, align 1, !alias.scope !742, !noalias !745
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 340
  store i8 %.lcssa560, ptr %.sroa.20.0..sroa_idx.i.i, align 4, !alias.scope !742, !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !747
  br label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Q_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1O_B2z_ENCNvNvXs0_NvNtB1Q_3adt1__NtB3D_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5I_3map3MapINtNtB5I_9enumerate9EnumerateINtNtNtB5M_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1O_B30_EEENCNvMNtB7V_5sliceINtB8V_10IndexSliceB2z_B7Q_E15iter_enumerated0ENCB3v_s3_0EE0B1S_.exit.i

bb.el:                                            ; preds = %bb.em, %bb.ei, %bb.eg
  %i.ui = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !748
  unreachable

bb.em:                                            ; preds = %.invoke356.i.i, %bb.ds, %bb.dp, %bb.dn, %.invoke.i.i, %bb.cy, %._crit_edge, %bb.cs, %.invoke358.i.i, %bb.cn, %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB4_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2y_19RustcEnumVariantIdxEEENCNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index5sliceINtB3Q_10IndexSliceB3h_B1N_E15iter_enumerated0ENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTB3h_RB1N_EyNCNCINvMs0_NtB1Q_6layoutINtB6y_16LayoutCalculatorRNtB1Q_16TargetDataLayoutE14layout_of_enumB2w_B3h_RB6g_NCNvNvXs0_NvNtB2y_3adt1__NtB8d_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtB8_10filter_map9FilterMapIB4_IBW_IB1o_INtNtB3S_3vec8IndexVecB2w_B7Y_EEENCNvMB3Q_IB4w_B3h_BaU_E15iter_enumerated0ENCB85_s3_0EE0s_0E0EB5n_6reduceNCINvNvB5n_6max_by4foldTyB6b_EINvB5l_7compareB6b_yEE0EB2A_.exit.i.i.i
  %i.uj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.az) #42
          to label %common.resume unwind label %bb.el, !noalias !748

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Q_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1O_B2z_ENCNvNvXs0_NvNtB1Q_3adt1__NtB3D_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5I_3map3MapINtNtB5I_9enumerate9EnumerateINtNtNtB5M_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1O_B30_EEENCNvMNtB7V_5sliceINtB8V_10IndexSliceB2z_B7Q_E15iter_enumerated0ENCB3v_s3_0EE0B1S_.exit.i: ; preds = %bb.ek, %bb.bx, %bb.bv, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.040.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.444.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !741
  %.sroa.0431.0.copyload.i = load i16, ptr %i.dm, align 8, !alias.scope !732, !noalias !740 ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 1, ptr %i.uk, align 1, !noalias !741
  store i8 2, ptr %i.cr, align 2, !noalias !741
  %i.ul = and i16 %.sroa.0431.0.copyload.i, 255
  %i.um = icmp ne i16 %i.ul, 255                  ; 3 uses
  br i1 %i.um, label %bb.eo, label %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Q_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1O_B2z_ENCNvNvXs0_NvNtB1Q_3adt1__NtB3D_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5I_3map3MapINtNtB5I_9enumerate9EnumerateINtNtNtB5M_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1O_B30_EEENCNvMNtB7V_5sliceINtB8V_10IndexSliceB2z_B7Q_E15iter_enumerated0ENCB3v_s3_0EE0B1S_.exit.i._crit_edge

_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Q_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1O_B2z_ENCNvNvXs0_NvNtB1Q_3adt1__NtB3D_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5I_3map3MapINtNtB5I_9enumerate9EnumerateINtNtNtB5M_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1O_B30_EEENCNvMNtB7V_5sliceINtB8V_10IndexSliceB2z_B7Q_E15iter_enumerated0ENCB3v_s3_0EE0B1S_.exit.i._crit_edge: ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Q_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1O_B2z_ENCNvNvXs0_NvNtB1Q_3adt1__NtB3D_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5I_3map3MapINtNtB5I_9enumerate9EnumerateINtNtNtB5M_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1O_B30_EEENCNvMNtB7V_5sliceINtB8V_10IndexSliceB2z_B7Q_E15iter_enumerated0ENCB3v_s3_0EE0B1S_.exit.i
  %.sroa.0.0.copyload.i.pre = load i16, ptr %i.cr, align 2, !noalias !741
  br label %bb.ep

bb.en:                                            ; preds = %.thread375
  store i64 3, ptr %0, align 16, !alias.scope !727, !noalias !846
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 -1, ptr %i.un, align 16, !alias.scope !727, !noalias !846
  br label %_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1O_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1M_B2x_ENCNvNvXs0_NvNtB1O_3adt1__NtB3B_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5G_3map3MapINtNtB5G_9enumerate9EnumerateINtNtNtB5K_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1M_B2Y_EEENCNvMNtB7T_5sliceINtB8T_10IndexSliceB2x_B7O_E15iter_enumerated0ENCB3t_s3_0EEB1Q_.exit

bb.eo:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Q_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1O_B2z_ENCNvNvXs0_NvNtB1Q_3adt1__NtB3D_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5I_3map3MapINtNtB5I_9enumerate9EnumerateINtNtNtB5M_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1O_B30_EEENCNvMNtB7V_5sliceINtB8V_10IndexSliceB2z_B7Q_E15iter_enumerated0ENCB3v_s3_0EE0B1S_.exit.i
  store i16 %.sroa.0431.0.copyload.i, ptr %i.cr, align 2, !noalias !741
  br label %bb.ep

bb.ep:                                            ; preds = %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Q_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1O_B2z_ENCNvNvXs0_NvNtB1Q_3adt1__NtB3D_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5I_3map3MapINtNtB5I_9enumerate9EnumerateINtNtNtB5M_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1O_B30_EEENCNvMNtB7V_5sliceINtB8V_10IndexSliceB2z_B7Q_E15iter_enumerated0ENCB3v_s3_0EE0B1S_.exit.i._crit_edge, %bb.eo
  %.sroa.0.0.copyload.i = phi i16 [ %.sroa.0.0.copyload.i.pre, %_RNCINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB8_16LayoutCalculatorRNtBa_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Q_19RustcEnumVariantIdxRRINtBa_10LayoutDataB1O_B2z_ENCNvNvXs0_NvNtB1Q_3adt1__NtB3D_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5I_3map3MapINtNtB5I_9enumerate9EnumerateINtNtNtB5M_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1O_B30_EEENCNvMNtB7V_5sliceINtB8V_10IndexSliceB2z_B7Q_E15iter_enumerated0ENCB3v_s3_0EE0B1S_.exit.i._crit_edge ], [ %.sroa.0431.0.copyload.i, %bb.eo ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !741
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.uo = and i16 %.sroa.0.0.copyload.i, 255
  %.not.i594.i = icmp eq i16 %i.uo, 2
  br i1 %.not.i594.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %.sroa.4.0.extract.shift.i.i = lshr i16 %.sroa.0.0.copyload.i, 8
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i16 %.sroa.4.0.extract.shift.i.i to i8
  br label %bb.ex

bb.er:                                            ; preds = %bb.ep
  %i.up = getelementptr inbounds nuw i8, ptr %.val.i52, i64 56
  %.val.i.i = load i64, ptr %i.up, align 8, !alias.scope !847, !noalias !850, !noundef !5 ; 4 uses
  %i.uq = icmp ugt i64 %.val.i.i, 2305843009213693951
  br i1 %i.uq, label %bb.et, label %bb.es, !prof !7

bb.es:                                            ; preds = %bb.er
  switch i64 %.val.i.i, label %bb.eu [
    i64 2, label %bb.ex
    i64 4, label %bb.ev
    i64 8, label %bb.ew
  ], !prof !450

bb.et:                                            ; preds = %bb.er
  invoke void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.val.i.i) #45
          to label %.noexc595.i unwind label %.split.thread.i, !noalias !850

.noexc595.i:                                      ; preds = %bb.et
  unreachable

bb.eu:                                            ; preds = %bb.es
  %11 = shl nuw i64 %.val.i.i, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !851
  store i64 %11, ptr %i.af, align 8, !noalias !851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !851
  store ptr %i.af, ptr %i.ae, align 8, !noalias !851
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !851
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @405, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #43
          to label %.noexc596.i unwind label %.split.thread.i, !noalias !850

.noexc596.i:                                      ; preds = %bb.eu
  unreachable

bb.ev:                                            ; preds = %bb.es
  br label %bb.ex

bb.ew:                                            ; preds = %bb.es
  br label %bb.ex

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set8BTreeSetnEECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %.body.i54
  br i1 %.sroa.0430.2.i, label %bb.lr, label %common.resume

.split.thread.i:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i, %bb.ex, %bb.eu, %bb.et
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.es, %bb.eq
  %.sroa.02.0.i.i = phi i8 [ %.sroa.4.0.extract.trunc.i.i, %bb.eq ], [ 3, %bb.ew ], [ 2, %bb.ev ], [ 1, %bb.es ]
  store i8 %.sroa.02.0.i.i, ptr %i.cq, align 1, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(48) %9, i64 48, i1 false), !noalias !852
  %.sroa.4838.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store ptr %2, ptr %.sroa.4838.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.5839.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store ptr %3, ptr %.sroa.5839.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.6.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  store i64 %4, ptr %.sroa.6.0..sroa_idx.i53, align 8, !noalias !741
  %i.ur = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  store ptr %i.cr, ptr %i.ur, align 8, !noalias !741
  %i.us = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  store ptr %i.cq, ptr %i.us, align 8, !noalias !741
  invoke void @_RINvXsd_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3setINtB6_8BTreeSetnEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratornE9from_iterINtNtNtB1h_8adapters3map3MapINtNtB2r_6filter6FilterINtNtB2r_10filter_map9FilterMapIB2n_INtNtB2r_9enumerate9EnumerateINtNtNtB1j_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataB5u_NtB5w_19RustcEnumVariantIdxEEEENCNvMNtB4K_5sliceINtB7E_10IndexSliceB74_B4F_E15iter_enumerated0ENCNvNvXs0_NvNtB5w_3adt1__NtB8L_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s3_0ENCINvMs0_NtB6k_6layoutINtBaV_16LayoutCalculatorRNtB6k_16TargetDataLayoutE14layout_of_enumB5u_B74_B6f_NCB8D_s2_0B3b_Es_0ENCBaO_s0_0EEB5y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.co)
          to label %bb.ez unwind label %.split.thread.i, !noalias !850

.body.i54:                                        ; preds = %.thread957.i, %bb.lq, %bb.lp, %bb.lm, %bb.lj, %bb.lf, %bb.lc, %bb.kr, %bb.hr, %bb.hi, %bb.ey
  %.sroa.0430.2.i = phi i1 [ false, %bb.hi ], [ true, %.thread957.i ], [ true, %bb.hr ], [ true, %bb.ey ], [ false, %bb.lm ], [ false, %bb.lj ], [ true, %bb.kr ], [ false, %bb.lq ], [ false, %bb.lp ], [ false, %bb.lf ], [ false, %bb.lc ]
  %.pn584.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.hi ], [ %.pn582962.i, %.thread957.i ], [ %i.abf, %bb.hr ], [ %i.ut, %bb.ey ], [ %i.ank, %bb.lm ], [ %i.anh, %bb.lj ], [ %.pn.i59, %bb.kr ], [ %i.ams, %bb.lq ], [ %i.ano, %bb.lp ], [ %i.and, %bb.lf ], [ %i.ana, %bb.lc ] ; 2 uses
  invoke void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapnNtNtB4_7set_val9SetValZSTENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set8BTreeSetnEECs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.jn, !noalias !850

bb.ey:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxEEEB1V_.exit.i.i, %.loopexit1051.i, %bb.gt, %bb.gs, %bb.gp, %bb.go, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.fv, %bb.ft, %bb.fs, %.split.i.i.i.i.i.i, %bb.fm, %bb.fj, %bb.ff, %_RNvXsp_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_4IternNtNtB7_7set_val9SetValZSTENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i, %bb.fc, %bb.fb
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %.body.i54

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !741
  %i.uu = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !741
  %i.uv = icmp eq i64 %i.uu, 0
  br i1 %i.uv, label %bb.fa, label %_RNvXsp_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_4IternNtNtB7_7set_val9SetValZSTENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i

.loopexit1043.i:                                  ; preds = %_RNvXs2a_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9PrimitiveNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread.thread.i, %_RNvXs2a_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9PrimitiveNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread.i, %bb.kl, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCskVLyBV5N46_15ra_ap_rustc_abi5NicheE6map_oroNCNCINvMs0_NtBK_6layoutINtB1E_16LayoutCalculatorRNtBK_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB2W_19RustcEnumVariantIdxRRINtBK_10LayoutDataB2U_B3F_ENCNvNvXs0_NvNtB2W_3adt1__NtB4J_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtB5_4iter8adapters10filter_map9FilterMapINtNtB6O_3map3MapINtNtB6O_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB2U_B46_EEENCNvMNtB8K_5sliceINtB9K_10IndexSliceB3F_B8F_E15iter_enumerated0ENCB4B_s3_0EEs7_00EB2Y_.exit817.i
  unreachable

bb.fa:                                            ; preds = %bb.ez
  %i.uw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE14layout_of_enum10___CALLSITE, i64 16) monotonic, align 8, !noalias !741 ; 3 uses
  switch i8 %i.uw, label %bb.fb [
    i8 0, label %_RNvXsp_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_4IternNtNtB7_7set_val9SetValZSTENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i
    i8 1, label %bb.fc
    i8 2, label %bb.fc
  ], !prof !450

bb.fb:                                            ; preds = %bb.fa
  %i.ux = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE14layout_of_enum10___CALLSITE)
          to label %bb.fd unwind label %bb.ey, !noalias !850 ; 2 uses

bb.fc:                                            ; preds = %bb.fa, %bb.fd, %bb.fa
  %.sroa.08.0.i = phi i8 [ %i.ux, %bb.fd ], [ %i.uw, %bb.fa ], [ %i.uw, %bb.fa ]
  %i.uy = load ptr, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE14layout_of_enum10___CALLSITE, align 8, !noalias !741, !nonnull !5, !align !449, !noundef !5
  %i.uz = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.uy, i8 noundef %.sroa.08.0.i)
          to label %bb.fe unwind label %bb.ey, !noalias !850

bb.fd:                                            ; preds = %bb.fb
  %i.va = icmp eq i8 %i.ux, 0
  br i1 %i.va, label %_RNvXsp_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_4IternNtNtB7_7set_val9SetValZSTENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.fc

bb.fe:                                            ; preds = %bb.fc
  br i1 %i.uz, label %bb.ff, label %_RNvXsp_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_4IternNtNtB7_7set_val9SetValZSTENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i

_RNvXsp_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_4IternNtNtB7_7set_val9SetValZSTENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.fg, %bb.fe, %bb.fd, %bb.fa, %bb.ez
  %i.vb = load ptr, ptr %i.cp, align 8, !noalias !741, !noundef !5 ; 5 uses
  %.not.i = icmp ne ptr %i.vb, null               ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.vd = load i64, ptr %i.vc, align 8, !noalias !741
  %i.ve = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.vf = load i64, ptr %i.ve, align 8, !noalias !741
  %.sroa.5441.0.i = select i1 %.not.i, i64 %i.vf, i64 0 ; 2 uses
  %.sroa.0440.sroa.6.0.i = zext i1 %.not.i to i64 ; 4 uses
  %.sroa.0440.sroa.5.sroa.6.0.i = select i1 %.not.i, i64 %i.vd, i64 undef ; 4 uses
  %i.vg = invoke { ptr, ptr } @_RNvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8BTreeMapnNtNtB7_7set_val9SetValZSTE15first_key_valueCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp)
          to label %bb.fh unwind label %bb.ey, !noalias !850

bb.ff:                                            ; preds = %bb.fe
  %i.vh = load ptr, ptr @_RNvNvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB7_16LayoutCalculatorpE14layout_of_enum10___CALLSITE, align 8, !noalias !741, !nonnull !5, !align !449, !noundef !5 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !741
  store ptr %i.cp, ptr %i.cm, align 8, !noalias !741
  store ptr %i.cm, ptr %i.cn, align 8, !noalias !741
  %i.vj = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr @9, ptr %i.vj, align 8, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !741
  store i64 1, ptr %i.bl, align 8, !noalias !741
  %.sroa.010.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.cn, ptr %.sroa.010.sroa.4.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.010.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 1, ptr %.sroa.010.sroa.5.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.4.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %i.vi, ptr %.sroa.4.0..sroa_idx.i65, align 8, !noalias !741
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.vh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl)
          to label %bb.fg unwind label %bb.ey, !noalias !850

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !741
  br label %_RNvXsp_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_4IternNtNtB7_7set_val9SetValZSTENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i

bb.fh:                                            ; preds = %_RNvXsp_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_4IternNtNtB7_7set_val9SetValZSTENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs8K4cjrcxBsw_6hir_ty.exit.i
  %i.vk = extractvalue { ptr, ptr } %i.vg, 0      ; 2 uses
  %.not561.i = icmp eq ptr %i.vk, null
  br i1 %.not561.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.vl = load i128, ptr %i.vk, align 16, !noalias !850, !noundef !5
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.sroa.5.0.i = phi i128 [ %i.vl, %bb.fi ], [ undef, %bb.fh ]
  %.sroa.011.0.i = phi i128 [ 1, %bb.fi ], [ 0, %bb.fh ]
  %.sroa.11861.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !853
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11861.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !741
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !853
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  store i128 %.sroa.011.0.i, ptr %i.ac, align 16, !alias.scope !863, !noalias !865
  %.sroa.5855.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  store i128 %.sroa.5.0.i, ptr %.sroa.5855.0..sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.6856.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 4 uses
  store i64 %.sroa.0440.sroa.6.0.i, ptr %.sroa.6856.0..sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.6856.sroa.5.0..sroa.6856.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr null, ptr %.sroa.6856.sroa.5.0..sroa.6856.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !863, !noalias !865
  %.sroa.6856.sroa.6.0..sroa.6856.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %i.vb, ptr %.sroa.6856.sroa.6.0..sroa.6856.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.6856.sroa.7.0..sroa.6856.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i64 %.sroa.0440.sroa.5.sroa.6.0.i, ptr %.sroa.6856.sroa.7.0..sroa.6856.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !863, !noalias !865
  %.sroa.6856.sroa.8.0..sroa.6856.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store i64 %.sroa.0440.sroa.6.0.i, ptr %.sroa.6856.sroa.8.0..sroa.6856.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.6856.sroa.9.0..sroa.6856.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store ptr null, ptr %.sroa.6856.sroa.9.0..sroa.6856.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !863, !noalias !865
  %.sroa.6856.sroa.10.0..sroa.6856.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %i.vb, ptr %.sroa.6856.sroa.10.0..sroa.6856.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.6856.sroa.11.0..sroa.6856.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store i64 %.sroa.0440.sroa.5.sroa.6.0.i, ptr %.sroa.6856.sroa.11.0..sroa.6856.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !863, !noalias !865
  %.sroa.6856.sroa.12.0..sroa.6856.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store i64 %.sroa.5441.0.i, ptr %.sroa.6856.sroa.12.0..sroa.6856.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.8858.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 112 ; 3 uses
  store i64 1, ptr %.sroa.8858.0..sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.10860.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 2 uses
  store i64 %.sroa.0440.sroa.6.0.i, ptr %.sroa.10860.0..sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.10860.sroa.5.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store ptr null, ptr %.sroa.10860.sroa.5.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !863, !noalias !865
  %.sroa.10860.sroa.6.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  store ptr %i.vb, ptr %.sroa.10860.sroa.6.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.10860.sroa.7.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  store i64 %.sroa.0440.sroa.5.sroa.6.0.i, ptr %.sroa.10860.sroa.7.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !863, !noalias !865
  %.sroa.10860.sroa.8.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  store i64 %.sroa.0440.sroa.6.0.i, ptr %.sroa.10860.sroa.8.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.10860.sroa.9.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  store ptr null, ptr %.sroa.10860.sroa.9.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !863, !noalias !865
  %.sroa.10860.sroa.10.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  store ptr %i.vb, ptr %.sroa.10860.sroa.10.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %.sroa.10860.sroa.11.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 184
  store i64 %.sroa.0440.sroa.5.sroa.6.0.i, ptr %.sroa.10860.sroa.11.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !863, !noalias !865
  %.sroa.10860.sroa.12.0..sroa.10860.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  store i64 %.sroa.5441.0.i, ptr %.sroa.10860.sroa.12.0..sroa.10860.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !863, !noalias !865
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ac, i64 224 ; 2 uses
  store ptr %i.cr, ptr %i.vm, align 16, !alias.scope !868, !noalias !869
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ac, i64 232 ; 2 uses
  store ptr %i.cq, ptr %i.vn, align 8, !alias.scope !868, !noalias !869
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !853
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !882
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set4IternEENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.sroa.10860.0..sroa_idx.i)
end_hunk_2
begin_hunk_3_@_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE24layout_of_struct_or_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Y_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1W_B2H_ENCNvNvXs0_NvNtB1Y_3adt1__NtB3L_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5Q_3map3MapINtNtB5Q_9enumerate9EnumerateINtNtNtB5U_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1W_B38_EEENCNvMNtB83_5sliceINtB93_10IndexSliceB2H_B7Y_E15iter_enumerated0ENCB3D_s3_0EEB20_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !741
  %i.yj = getelementptr inbounds nuw i8, ptr %.val.i52, i64 92
  %i.yk = load i8, ptr %i.yj, align 4, !noalias !850, !noundef !5 ; 2 uses
  store i8 %i.yk, ptr %i.ch, align 1, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !741
  %i.yl = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ym = load i8, ptr %i.yl, align 4, !range !451, !alias.scope !732, !noalias !740, !noundef !5
  %i.yn = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.yo = load i8, ptr %i.yn, align 1, !alias.scope !732, !noalias !740
  store i8 %i.ym, ptr %i.cg, align 1, !noalias !741
  %i.yp = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 2 uses
  store i8 %i.yo, ptr %i.yp, align 1, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !741
  store i8 %i.yk, ptr %i.cf, align 1, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !741
  store i64 0, ptr %i.ce, align 8, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !741
  store i8 8, ptr %i.cd, align 1, !noalias !741
  %i.yq = getelementptr inbounds nuw i8, ptr %.val.i52, i64 83 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !741
  switch i8 %.sroa.0.0.i612.i, label %default.unreachable [
    i8 0, label %bb.ha
    i8 1, label %bb.gw
    i8 2, label %bb.gx
    i8 3, label %bb.gy
    i8 4, label %bb.gz
  ]

bb.gw:                                            ; preds = %bb.gv
  %i.yr = getelementptr inbounds nuw i8, ptr %.val.i52, i64 84
  br label %bb.ha

bb.gx:                                            ; preds = %bb.gv
  %i.ys = getelementptr inbounds nuw i8, ptr %.val.i52, i64 85
  br label %bb.ha

bb.gy:                                            ; preds = %bb.gv
  %i.yt = getelementptr inbounds nuw i8, ptr %.val.i52, i64 86
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gv
  %i.yu = getelementptr inbounds nuw i8, ptr %.val.i52, i64 87
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv
  %.sroa.0485.0.in.i = phi ptr [ %i.yu, %bb.gz ], [ %i.yr, %bb.gw ], [ %i.ys, %bb.gx ], [ %i.yt, %bb.gy ], [ %i.yq, %bb.gv ]
  %.sroa.0485.0.i = load i8, ptr %.sroa.0485.0.in.i, align 1, !noalias !850, !noundef !5 ; 2 uses
  store i8 %.sroa.0485.0.i, ptr %i.cc, align 1, !noalias !741
  %i.yv = trunc i8 %i.dk to i1                    ; 2 uses
  %i.yw = icmp ne i64 %4, 0
  %or.cond.not = and i1 %i.yw, %i.yv
  br i1 %or.cond.not, label %.lr.ph1230.i, label %.loopexit1051.i

..loopexit1050_crit_edge.i:                       ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %..i.i.lcssa = phi i8 [ %..i.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %..i.i.3, %.lr.ph.i ] ; 2 uses
  store i8 %..i.i.lcssa, ptr %i.cc, align 1, !noalias !741
  br label %.loopexit1050.i

.loopexit1050.i:                                  ; preds = %.lr.ph1230.i, %..loopexit1050_crit_edge.i
  %..i.lcssa1226.i = phi i8 [ %..i.i.lcssa, %..loopexit1050_crit_edge.i ], [ %..i.lcssa12271228.i, %.lr.ph1230.i ]
  %i.yx = icmp eq ptr %i.yy, %i.di
  br i1 %i.yx, label %.loopexit1051.i, label %.lr.ph1230.i

.lr.ph1230.i:                                     ; preds = %bb.ha, %.loopexit1050.i
  %.sroa.023.01229.i = phi ptr [ %i.yy, %.loopexit1050.i ], [ %3, %bb.ha ] ; 3 uses
  %..i.lcssa12271228.i = phi i8 [ %..i.lcssa1226.i, %.loopexit1050.i ], [ %.sroa.0485.0.i, %bb.ha ] ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.023.01229.i, i64 24 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.023.01229.i, i64 8
  %i.za = load ptr, ptr %i.yz, align 8, !alias.scope !734, !noalias !936, !nonnull !5, !noundef !5 ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.023.01229.i, i64 16
  %i.zc = load i64, ptr %i.zb, align 8, !alias.scope !734, !noalias !936, !noundef !5 ; 2 uses
  %.idx1241.i = shl i64 %i.zc, 3                  ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 %.idx1241.i
  %i.ze = icmp eq i64 %i.zc, 0
  br i1 %i.ze, label %.loopexit1050.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph1230.i
  %i.zf = add i64 %.idx1241.i, -8                 ; 2 uses
  %i.zg = lshr exact i64 %i.zf, 3
  %i.zh = add nuw nsw i64 %i.zg, 1
  %xtraiter887 = and i64 %i.zh, 3                 ; 2 uses
  %lcmp.mod888.not = icmp eq i64 %xtraiter887, 0
  br i1 %lcmp.mod888.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0487.01224.i.prol = phi ptr [ %i.zi, %.lr.ph.i.prol ], [ %i.za, %.lr.ph.i.preheader ] ; 2 uses
  %..i12221223.i.prol = phi i8 [ %..i.i.prol, %.lr.ph.i.prol ], [ %..i.lcssa12271228.i, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.0487.01224.i.prol, i64 8 ; 2 uses
  %.sroa.0487.0.val.i.prol = load ptr, ptr %.sroa.0487.01224.i.prol, align 8, !noalias !850, !nonnull !5, !align !449, !noundef !5
  %i.zj = load ptr, ptr %.sroa.0487.0.val.i.prol, align 8, !noalias !850, !nonnull !5, !align !492, !noundef !5
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 338
  %i.zl = load i8, ptr %i.zk, align 2, !noalias !850, !noundef !5
  %..i.i.prol = call noundef i8 @llvm.umax.i8(i8 %i.zl, i8 %..i12221223.i.prol) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter887
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !937

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %..i.i.lcssa.unr = phi i8 [ poison, %.lr.ph.i.preheader ], [ %..i.i.prol, %.lr.ph.i.prol ]
  %.sroa.0487.01224.i.unr = phi ptr [ %i.za, %.lr.ph.i.preheader ], [ %i.zi, %.lr.ph.i.prol ]
  %..i12221223.i.unr = phi i8 [ %..i.lcssa12271228.i, %.lr.ph.i.preheader ], [ %..i.i.prol, %.lr.ph.i.prol ]
  %i.zm = icmp ult i64 %i.zf, 24
  br i1 %i.zm, label %..loopexit1050_crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0487.01224.i = phi ptr [ %i.zz, %.lr.ph.i ], [ %.sroa.0487.01224.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %..i12221223.i = phi i8 [ %..i.i.3, %.lr.ph.i ], [ %..i12221223.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.0487.01224.i, i64 8
  %.sroa.0487.0.val.i = load ptr, ptr %.sroa.0487.01224.i, align 8, !noalias !850, !nonnull !5, !align !449, !noundef !5
  %i.zo = load ptr, ptr %.sroa.0487.0.val.i, align 8, !noalias !850, !nonnull !5, !align !492, !noundef !5
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 338
  %i.zq = load i8, ptr %i.zp, align 2, !noalias !850, !noundef !5
  %..i.i = call noundef i8 @llvm.umax.i8(i8 %i.zq, i8 %..i12221223.i)
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.0487.01224.i, i64 16
  %.sroa.0487.0.val.i.1 = load ptr, ptr %i.zn, align 8, !noalias !850, !nonnull !5, !align !449, !noundef !5
  %i.zs = load ptr, ptr %.sroa.0487.0.val.i.1, align 8, !noalias !850, !nonnull !5, !align !492, !noundef !5
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 338
  %i.zu = load i8, ptr %i.zt, align 2, !noalias !850, !noundef !5
  %..i.i.1 = call noundef i8 @llvm.umax.i8(i8 %i.zu, i8 %..i.i)
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.0487.01224.i, i64 24
  %.sroa.0487.0.val.i.2 = load ptr, ptr %i.zr, align 8, !noalias !850, !nonnull !5, !align !449, !noundef !5
  %i.zw = load ptr, ptr %.sroa.0487.0.val.i.2, align 8, !noalias !850, !nonnull !5, !align !492, !noundef !5
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 338
  %i.zy = load i8, ptr %i.zx, align 2, !noalias !850, !noundef !5
  %..i.i.2 = call noundef i8 @llvm.umax.i8(i8 %i.zy, i8 %..i.i.1)
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.0487.01224.i, i64 32 ; 2 uses
  %.sroa.0487.0.val.i.3 = load ptr, ptr %i.zv, align 8, !noalias !850, !nonnull !5, !align !449, !noundef !5
  %i.aaa = load ptr, ptr %.sroa.0487.0.val.i.3, align 8, !noalias !850, !nonnull !5, !align !492, !noundef !5
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 338
  %i.aac = load i8, ptr %i.aab, align 2, !noalias !850, !noundef !5
  %..i.i.3 = call noundef i8 @llvm.umax.i8(i8 %i.aac, i8 %..i.i.2) ; 2 uses
  %i.aad = icmp eq ptr %i.zz, %i.zd
  br i1 %i.aad, label %..loopexit1050_crit_edge.i, label %.lr.ph.i

.loopexit1051.i:                                  ; preds = %.loopexit1050.i, %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !741
  store ptr %3, ptr %i.bz, align 8, !noalias !741
  %.sroa.4493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.di, ptr %.sroa.4493.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.5494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 0, ptr %.sroa.5494.0..sroa_idx.i, align 8, !noalias !741
  %i.aae = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store ptr %1, ptr %i.aae, align 8, !noalias !741
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store ptr %2, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store ptr %i.ci, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store ptr %i.cc, ptr %.sroa.635.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store ptr %i.cd, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.836.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  store ptr %i.ce, ptr %.sroa.836.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  store ptr %i.ch, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  store ptr %i.cg, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  store ptr %i.cf, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !741
  invoke void @_RINvNtNtCshzWfHUSfYae_4core4iter8adapters11try_processINtNtB2_3map3MapIBR_INtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxRRINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataB2R_NtB2T_19RustcEnumVariantIdxEEEENCNvMNtB27_5sliceINtB51_10IndexSliceB4r_B22_E15iter_enumerated0ENCINvMs0_NtB3H_6layoutINtB67_16LayoutCalculatorRNtB3H_16TargetDataLayoutE14layout_of_enumB2R_B4r_B3C_NCNvNvXs0_NvNtB2T_3adt1__NtB7L_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtB2_10filter_map9FilterMapB16_NCB7D_s3_0EEs2_0EB3E_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtB67_21LayoutCalculatorErrorB3C_EENCINvXso_BaH_IBaF_IB23_B4r_B3E_EBbr_EINtNtNtB4_6traits7collect12FromIteratorIBaF_B3E_Bbr_EE9from_iterBQ_E0Bcj_EB2V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.bz)
          to label %bb.hb unwind label %bb.ey, !noalias !850

bb.hb:                                            ; preds = %.loopexit1051.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !741
  %i.aaf = load i64, ptr %i.ca, align 8, !range !750, !noalias !741, !noundef !5 ; 2 uses
  %i.aag = icmp eq i64 %i.aaf, -1
  %i.aah = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.aai = load i64, ptr %i.aah, align 8, !noalias !741 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.aak = load ptr, ptr %i.aaj, align 8, !noalias !741 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !741
  br i1 %i.aag, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  store i64 %i.aai, ptr %0, align 16, !alias.scope !727, !noalias !846
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aak, ptr %i.aal, align 8, !alias.scope !727, !noalias !846
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 -1, ptr %i.aam, align 16, !alias.scope !727, !noalias !846
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i

bb.hd:                                            ; preds = %bb.hb
  store i64 %i.aaf, ptr %i.cb, align 8, !noalias !741
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  store i64 %i.aai, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !741
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 4 uses
  store ptr %i.aak, ptr %.sroa.539.0..sroa_idx.i, align 8, !noalias !741
  %i.aan = load i64, ptr %i.ce, align 8, !noalias !741, !noundef !5
  %i.aao = load i8, ptr %i.ch, align 1, !noalias !741, !noundef !5
  %i.aap = and i8 %i.aao, 63
  %i.aaq = zext nneg i8 %i.aap to i64
  %notmask.i = shl nsw i64 -1, %i.aaq             ; 2 uses
  %i.aar = xor i64 %notmask.i, -1
  %i.aas = add i64 %i.aan, %i.aar
  %i.aat = and i64 %i.aas, %notmask.i             ; 2 uses
  store i64 %i.aat, ptr %i.ce, align 8, !noalias !741
  %i.aau = getelementptr i8, ptr %.val.i52, i64 48 ; 3 uses
  %.val589.i = load i64, ptr %i.aau, align 8, !noalias !850, !noundef !5 ; 4 uses
  %i.aav = icmp ugt i64 %.val589.i, 2305843009213693951
  %i.aaw = inttoptr i64 %i.aai to ptr             ; 2 uses
  %i.aax = ptrtoint ptr %i.aak to i64
  br i1 %i.aav, label %.invoke.i62, label %bb.he, !prof !7

bb.he:                                            ; preds = %bb.hd
  switch i64 %.val589.i, label %bb.hf [
    i64 2, label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit.i
    i64 4, label %bb.hg
    i64 8, label %bb.hh
  ], !prof !450

.invoke.i62:                                      ; preds = %bb.it, %bb.hl, %bb.hd
  %i.aay = phi i64 [ %i.aen, %bb.it ], [ %.val.i622.i, %bb.hl ], [ %.val589.i, %bb.hd ]
  invoke void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %i.aay) #45
          to label %.cont.i63 unwind label %.thread967.loopexit.split-lp.i, !noalias !850

.cont.i63:                                        ; preds = %.invoke.i62
  unreachable

bb.hf:                                            ; preds = %bb.he
  %12 = shl nuw i64 %.val589.i, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !741
  store i64 %12, ptr %i.l, align 8, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !741
  store ptr %i.l, ptr %i.k, align 8, !noalias !741
  br label %.invoke1587.i

bb.hg:                                            ; preds = %bb.he
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit.i

bb.hh:                                            ; preds = %bb.he
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit.i

.thread967.loopexit.loopexit.i:                   ; preds = %bb.jo
  %lpad.loopexit1047.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread957.i

.thread967.loopexit.split-lp.i:                   ; preds = %.thread1010.i, %.invoke1585.i, %bb.jh, %bb.iw, %bb.iv, %bb.is, %bb.ir, %bb.ij, %.loopexit, %.invoke1587.i, %.invoke.i62
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread957.i

bb.hi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i54

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit.i: ; preds = %bb.hh, %bb.hg, %bb.he
  %.sroa.0.0.i615.i = phi i64 [ 2305843009213693952, %bb.hh ], [ 2147483648, %bb.hg ], [ 32768, %bb.he ]
  %.not563.i = icmp ult i64 %i.aat, %.sroa.0.0.i615.i
  br i1 %.not563.i, label %bb.hj, label %bb.hq

bb.hj:                                            ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !741
  %.sroa.0527.0.insert.insert.i = select i1 %i.um, i16 %.sroa.0431.0.copyload.i, i16 258 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.aaz = and i16 %.sroa.0527.0.insert.insert.i, 255
  %.not.i618.i = icmp eq i16 %i.aaz, 2
  br i1 %.not.i618.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %.sroa.4.0.extract.shift.i619.i = lshr i16 %.sroa.0527.0.insert.insert.i, 8
  %.sroa.4.0.extract.trunc.i620.i = trunc nuw i16 %.sroa.4.0.extract.shift.i619.i to i8
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit626.i

bb.hl:                                            ; preds = %bb.hj
  %i.aba = getelementptr inbounds nuw i8, ptr %.val.i52, i64 56
  %.val.i622.i = load i64, ptr %i.aba, align 8, !alias.scope !938, !noalias !850, !noundef !5 ; 4 uses
  %i.abb = icmp ugt i64 %.val.i622.i, 2305843009213693951
  br i1 %i.abb, label %.invoke.i62, label %bb.hm, !prof !7

bb.hm:                                            ; preds = %bb.hl
  switch i64 %.val.i622.i, label %bb.hn [
    i64 2, label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit626.i
    i64 4, label %bb.ho
    i64 8, label %bb.hp
  ], !prof !450

bb.hn:                                            ; preds = %bb.hm
  %13 = shl nuw i64 %.val.i622.i, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !941
  store i64 %13, ptr %i.j, align 8, !noalias !941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !941
  store ptr %i.j, ptr %i.i, align 8, !noalias !941
  br label %.invoke1587.i

.invoke1587.i:                                    ; preds = %._crit_edge660, %._crit_edge656, %._crit_edge668, %._crit_edge664, %bb.hn, %bb.hf
  %.sink.i60.sroa.phi = phi ptr [ %.sink.i60.sroa.gep, %bb.hf ], [ %.sink.i60.sroa.gep77, %._crit_edge668 ], [ %.sink.i60.sroa.gep78, %._crit_edge664 ], [ %.sink.i60.sroa.gep79, %._crit_edge660 ], [ %.sink.i60.sroa.gep80, %._crit_edge656 ], [ %.sink.i60.sroa.gep81, %bb.hn ]
  %.sink.i60 = phi ptr [ %i.k, %bb.hf ], [ %i.e, %._crit_edge668 ], [ %i.g, %._crit_edge664 ], [ %i.a, %._crit_edge660 ], [ %i.c, %._crit_edge656 ], [ %i.i, %bb.hn ]
  %_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt.sink.i = phi ptr [ @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, %bb.hf ], [ @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, %._crit_edge668 ], [ @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, %._crit_edge664 ], [ @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, %._crit_edge660 ], [ @_RNvXs2C_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_12AddressSpaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, %._crit_edge656 ], [ @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, %bb.hn ]
  %i.abc = phi ptr [ @400, %bb.hf ], [ @402, %._crit_edge668 ], [ @402, %._crit_edge664 ], [ @402, %._crit_edge660 ], [ @402, %._crit_edge656 ], [ @405, %bb.hn ]
  %i.abd = phi ptr [ @401, %bb.hf ], [ @404, %._crit_edge668 ], [ @403, %._crit_edge664 ], [ @404, %._crit_edge660 ], [ @403, %._crit_edge656 ], [ @406, %bb.hn ]
  store ptr %_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt.sink.i, ptr %.sink.i60.sroa.phi, align 8, !noalias !741
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull %i.abc, ptr noundef nonnull %.sink.i60, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abd) #43
          to label %.cont1588.i unwind label %.thread967.loopexit.split-lp.i, !noalias !850

.cont1588.i:                                      ; preds = %.invoke1587.i
  unreachable

bb.ho:                                            ; preds = %bb.hm
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit626.i

bb.hp:                                            ; preds = %bb.hm
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit626.i

bb.hq:                                            ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout14obj_size_bound.exit.i
  store i64 1, ptr %0, align 16, !alias.scope !727, !noalias !846
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 -1, ptr %i.abe, align 16, !alias.scope !727, !noalias !846
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1q_19RustcEnumVariantIdxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxEEEB1V_.exit.i.i unwind label %bb.hr, !noalias !850

bb.hr:                                            ; preds = %bb.hq
  %i.abf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1x_19RustcEnumVariantIdxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %.body.i54 unwind label %bb.hs, !noalias !850

bb.hs:                                            ; preds = %bb.hr
  %i.abg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !850
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxEEEB1V_.exit.i.i: ; preds = %bb.hq
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1x_19RustcEnumVariantIdxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i unwind label %bb.ey, !noalias !850

_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit626.i: ; preds = %bb.hp, %bb.ho, %bb.hm, %bb.hk
  %.sroa.02.0.i621.i = phi i8 [ %.sroa.4.0.extract.trunc.i620.i, %bb.hk ], [ 3, %bb.hp ], [ 2, %bb.ho ], [ 1, %bb.hm ] ; 2 uses
  store i8 %.sroa.02.0.i621.i, ptr %i.by, align 1, !noalias !741
  %i.abh = icmp samesign ult i8 %.sroa.02.0.i621.i, %.sroa.0.0.i612.i
  br i1 %i.abh, label %bb.hu, label %bb.ht, !prof !7

bb.ht:                                            ; preds = %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit626.i
  %or.cond.i = or i1 %i.um, %i.yv
  br i1 %or.cond.i, label %bb.hv, label %bb.hw

bb.hu:                                            ; preds = %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit626.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !741
  store ptr %i.ci, ptr %i.bx, align 8, !noalias !741
  %.sroa.4501.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXs1V_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7IntegerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4501.0..sroa_idx.i, align 8, !noalias !741
  %i.abi = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.by, ptr %i.abi, align 8, !noalias !741
  %.sroa.4505.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr @_RNvXs1V_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7IntegerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.4505.0..sroa_idx.i, align 8, !noalias !741
  br label %.invoke1585.i

bb.hv:                                            ; preds = %bb.ht
  %i.abj = load i8, ptr %i.ci, align 1, !range !931, !noalias !741 ; 2 uses
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i

bb.hw:                                            ; preds = %bb.ht
  %i.abk = load i8, ptr %i.cd, align 1, !noalias !741, !noundef !5 ; 6 uses
  %i.abl = and i8 %i.abk, 63
  %i.abm = zext nneg i8 %i.abl to i64
  %i.abn = shl nuw i64 1, %i.abm
  %.fr.i.i.i.i629.i = freeze i64 %i.abn           ; 5 uses
  %.sroa.01.0.i.i.i.i.i630.i = load i8, ptr %i.yq, align 1, !alias.scope !942, !noalias !945, !noundef !5
  %i.abo = icmp eq i8 %i.abk, %.sroa.01.0.i.i.i.i.i630.i
  %i.abp = icmp eq i64 %.fr.i.i.i.i629.i, 1
  %or.cond.i631.i = and i1 %i.abo, %i.abp
  br i1 %or.cond.i631.i, label %._RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.thread_crit_edge.i, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.i632.i

._RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.thread_crit_edge.i: ; preds = %bb.hw
  %.pre.i = load i8, ptr %i.ci, align 1, !range !931, !noalias !741
  br label %switch.lookup734

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.i632.i: ; preds = %bb.hw
  %i.abq = getelementptr inbounds nuw i8, ptr %.val.i52, i64 84
  %.sroa.01.0.i.i.i.i.1.i633.i = load i8, ptr %i.abq, align 4, !alias.scope !942, !noalias !945, !noundef !5
  %i.abr = icmp eq i8 %i.abk, %.sroa.01.0.i.i.i.i.1.i633.i
  %i.abs = icmp eq i64 %.fr.i.i.i.i629.i, 2
  %or.cond33.i634.i = and i1 %i.abs, %i.abr
  br i1 %or.cond33.i634.i, label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1.i635.i

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1.i635.i: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.i632.i
  %i.abt = getelementptr inbounds nuw i8, ptr %.val.i52, i64 85
  %.sroa.01.0.i.i.i.i.2.i636.i = load i8, ptr %i.abt, align 1, !alias.scope !942, !noalias !945, !noundef !5
  %i.abu = icmp eq i8 %i.abk, %.sroa.01.0.i.i.i.i.2.i636.i
  %i.abv = icmp eq i64 %.fr.i.i.i.i629.i, 4
  %or.cond34.i637.i = and i1 %i.abv, %i.abu
  br i1 %or.cond34.i637.i, label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2.i638.i

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2.i638.i: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1.i635.i
  %i.abw = getelementptr inbounds nuw i8, ptr %.val.i52, i64 86
  %.sroa.01.0.i.i.i.i.3.i639.i = load i8, ptr %i.abw, align 2, !alias.scope !942, !noalias !945, !noundef !5
  %i.abx = icmp eq i8 %i.abk, %.sroa.01.0.i.i.i.i.3.i639.i
  %i.aby = icmp eq i64 %.fr.i.i.i.i629.i, 8
  %or.cond35.i640.i = and i1 %i.aby, %i.abx
  br i1 %or.cond35.i640.i, label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.3.i641.i

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.3.i641.i: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2.i638.i
  %i.abz = getelementptr inbounds nuw i8, ptr %.val.i52, i64 87
  %.sroa.01.0.i.i.i.i.4.i642.i = load i8, ptr %i.abz, align 1, !alias.scope !942, !noalias !945, !noundef !5
  %i.aca = icmp eq i8 %i.abk, %.sroa.01.0.i.i.i.i.4.i642.i
  %i.acb = icmp eq i64 %.fr.i.i.i.i629.i, 16
  %or.cond36.i643.i = and i1 %i.acb, %i.aca
  %i.acc = load i8, ptr %i.ci, align 1, !range !931, !noalias !741 ; 2 uses
  %spec.select.i55 = select i1 %or.cond36.i643.i, i8 4, i8 %i.acc
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i

_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i: ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2.i638.i, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1.i635.i, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.i632.i
  %.sroa.045.1.ph.i = phi i8 [ 1, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.i632.i ], [ 2, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.1.i635.i ], [ 3, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.2.i638.i ]
  %.pre1414.pr.i = load i8, ptr %i.ci, align 1, !noalias !741
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i

_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i: ; preds = %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.3.i641.i, %bb.hv
  %.pre1414.i = phi i8 [ %.pre1414.pr.i, %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i ], [ %i.acc, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.3.i641.i ], [ %i.abj, %bb.hv ] ; 2 uses
  %.sroa.045.1.i = phi i8 [ %.sroa.045.1.ph.i, %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.threadthread-pre-split.i ], [ %spec.select.i55, %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator4find5checkB1X_NCINvMsl_B1Z_B1X_9for_alignNtB1Z_16TargetDataLayoutE0E0INtNtNtBe_3ops12control_flow11ControlFlowB1X_EE0Cs8K4cjrcxBsw_6hir_ty.exit.i.3.i641.i ], [ %i.abj, %bb.hv ] ; 3 uses
  %.not565.i = icmp ugt i8 %.sroa.045.1.i, %.sroa.0.0.i612.i
  br i1 %.not565.i, label %switch.lookup730, label %switch.lookup734

switch.lookup730:                                 ; preds = %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9for_alignNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty.exit646.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !741
  %i.acd = zext nneg i8 %.pre1414.i to i64
  %switch.gep731 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator20compute_discriminant, i64 %i.acd
  %switch.load732 = load i8, ptr %switch.gep731, align 1
  %switch.ext733 = zext i8 %switch.load732 to i64 ; 8 uses
  store i64 %switch.ext733, ptr %i.bw, align 8, !noalias !741
  %i.ace = sext i8 %.sroa.045.1.i to i64
  %i.acf = getelementptr i8, ptr @switch.table._RNvMs9_NtNtCs8K4cjrcxBsw_6hir_ty3mir4evalNtB5_9Evaluator24allocate_valtree_in_heap, i64 %i.ace
  %switch.gep751 = getelementptr i8, ptr %i.acf, i64 -1
  %switch.load752 = load i8, ptr %switch.gep751, align 1
  %switch.ext753 = zext i8 %switch.load752 to i64 ; 4 uses
  %.idx1242.i = mul nuw nsw i64 %i.aax, 352
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %.idx1242.i
  %i.ach = icmp eq ptr %i.aak, null
  br i1 %i.ach, label %._crit_edge1235.i, label %.lr.ph1234.i

.lr.ph1234.i:                                     ; preds = %switch.lookup730, %bb.ig
  %.sroa.0507.01233.i = phi ptr [ %i.aci, %bb.ig ], [ %i.aaw, %switch.lookup730 ] ; 5 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.sroa.0507.01233.i, i64 352 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.0507.01233.i, i64 144
  %i.ack = load i64, ptr %i.acj, align 16, !range !484, !noalias !850, !noundef !5
  %i.acl = icmp sgt i64 %i.ack, -1
  br i1 %i.acl, label %bb.hx, label %.invoke1585.i, !prof !603

bb.hx:                                            ; preds = %.lr.ph1234.i
  %i.acm = getelementptr inbounds nuw i8, ptr %.sroa.0507.01233.i, i64 152
  %i.acn = load ptr, ptr %i.acm, align 8, !noalias !850, !nonnull !5, !noundef !5 ; 6 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.0507.01233.i, i64 160
  %i.acp = load i64, ptr %i.aco, align 16, !noalias !850, !noundef !5 ; 2 uses
  %.idx1243.i = shl i64 %i.acp, 3                 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 %.idx1243.i
  %i.acr = icmp eq i64 %i.acp, 0
  br i1 %i.acr, label %._crit_edge.i, label %.lr.ph1232.i.preheader

.lr.ph1232.i.preheader:                           ; preds = %bb.hx
  %i.acs = add i64 %.idx1243.i, -8                ; 2 uses
  %i.act = and i64 %i.acs, 8
  %lcmp.mod890.not.not = icmp eq i64 %i.act, 0
  br i1 %lcmp.mod890.not.not, label %.lr.ph1232.i.prol, label %.lr.ph1232.i.prol.loopexit

.lr.ph1232.i.prol:                                ; preds = %.lr.ph1232.i.preheader
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acn, i64 8 ; 2 uses
  %i.acv = load i64, ptr %i.acn, align 8, !noalias !850, !noundef !5 ; 2 uses
  %.not566.i.prol = icmp ugt i64 %i.acv, %switch.ext733
  br i1 %.not566.i.prol, label %.lr.ph1232.i.prol.loopexit, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph1232.i.prol
  %i.acw = icmp eq i64 %i.acv, %switch.ext733
  br i1 %i.acw, label %bb.hz, label %.loopexit, !prof !499

bb.hz:                                            ; preds = %bb.hy
  store i64 %switch.ext753, ptr %i.acn, align 8, !noalias !850
  br label %.lr.ph1232.i.prol.loopexit

.lr.ph1232.i.prol.loopexit:                       ; preds = %.lr.ph1232.i.prol, %bb.hz, %.lr.ph1232.i.preheader
  %.sroa.052.01231.i.unr = phi ptr [ %i.acn, %.lr.ph1232.i.preheader ], [ %i.acu, %bb.hz ], [ %i.acu, %.lr.ph1232.i.prol ]
  %i.acx = icmp eq i64 %i.acs, 0
  br i1 %i.acx, label %._crit_edge.i, label %.lr.ph1232.i

bb.ia:                                            ; preds = %bb.je, %bb.iz, %bb.iv, %.loopexit
  unreachable

.lr.ph1232.i:                                     ; preds = %.lr.ph1232.i.prol.loopexit, %bb.id
  %.sroa.052.01231.i = phi ptr [ %i.adc, %bb.id ], [ %.sroa.052.01231.i.unr, %.lr.ph1232.i.prol.loopexit ] ; 5 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.sroa.052.01231.i, i64 8 ; 3 uses
end_hunk_3
begin_hunk_4_@_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE24layout_of_struct_or_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1Y_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1W_B2H_ENCNvNvXs0_NvNtB1Y_3adt1__NtB3L_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5Q_3map3MapINtNtB5Q_9enumerate9EnumerateINtNtNtB5U_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1W_B38_EEENCNvMNtB83_5sliceINtB93_10IndexSliceB2H_B7Y_E15iter_enumerated0ENCB3D_s3_0EEB20_:bb.a
  %.sroa.16.0..sroa_idx347.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.0..sroa_idx347.i, i64 7, i1 false), !noalias !741
  %.sroa.17.0..sroa_idx351.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.17.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.17.0..sroa_idx351.i, i64 48, i1 false), !noalias !741
  %.sroa.18.0..sroa_idx355.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.18.i, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.18.0..sroa_idx355.i, i64 128, i1 false), !noalias !741
  %.sroa.19.0.copyload363.i = load i64, ptr %i.aml, align 16, !noalias !741 ; 2 uses
  %.sroa.20.0..sroa_idx370.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 328
  %.sroa.20.0.copyload371.i = load i64, ptr %.sroa.20.0..sroa_idx370.i, align 8, !noalias !741 ; 2 uses
  %.sroa.21.0..sroa_idx378.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 336
  %.sroa.21.0.copyload379.i = load i8, ptr %.sroa.21.0..sroa_idx378.i, align 16, !noalias !741 ; 2 uses
  %.sroa.22.0..sroa_idx386.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 337
  %i.ang = load <4 x i8>, ptr %.sroa.22.0..sroa_idx386.i, align 1, !noalias !741 ; 2 uses
  %.sroa.26.0..sroa_idx415.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.26.i, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.26.0..sroa_idx415.i, i64 11, i1 false), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !741
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi11FieldsShapeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEEB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.17.0..sroa_idx.i)
          to label %bb.lk unwind label %bb.lj, !noalias !850

bb.lj:                                            ; preds = %bb.li
  %i.anh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi8VariantsNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1j_19RustcEnumVariantIdxEEB1l_(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %.sroa.18.0..sroa_idx.i) #42
          to label %.body.i54 unwind label %bb.lo, !noalias !850

bb.lk:                                            ; preds = %bb.li
  %i.ani = getelementptr inbounds nuw i8, ptr %i.bn, i64 288 ; 4 uses
  %i.anj = load i64, ptr %i.ani, align 16, !range !486, !alias.scope !1044, !noalias !741, !noundef !5
  %switch1.i.i825.i = icmp slt i64 %i.anj, -9223372036854775806
  br i1 %switch1.i.i825.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit830.i, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1q_19RustcEnumVariantIdxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ani)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i unwind label %bb.lm, !noalias !850

bb.lm:                                            ; preds = %bb.ll
  %i.ank = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1x_19RustcEnumVariantIdxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ani)
          to label %.body.i54 unwind label %bb.ln, !noalias !850

bb.ln:                                            ; preds = %bb.lm
  %i.anl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !850
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i: ; preds = %bb.ll
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1x_19RustcEnumVariantIdxEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ani)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit830.i unwind label %bb.hi, !noalias !850

bb.lo:                                            ; preds = %bb.lj
  %i.anm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44, !noalias !850
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit830.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i, %bb.lk
  %.sroa.0263.2.i = phi i32 [ %.sroa.0263.0.copyload266.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.0263.0.copyload267.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.0263.0.copyload267.i, %bb.lk ]
  %.sroa.6268.2.i = phi i8 [ %.sroa.6268.0.copyload274.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.6268.0.copyload276.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.6268.0.copyload276.i, %bb.lk ]
  %.sroa.8282.2.i = phi i32 [ %.sroa.8282.0.copyload288.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.8282.0.copyload290.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.8282.0.copyload290.i, %bb.lk ]
  %.sroa.9291.2.i = phi i64 [ %.sroa.9291.0.copyload297.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.9291.0.copyload299.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.9291.0.copyload299.i, %bb.lk ]
  %.sroa.10300.2.i = phi i32 [ %.sroa.10300.0.copyload306.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.10300.0.copyload308.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.10300.0.copyload308.i, %bb.lk ]
  %.sroa.11309.2.i = phi i128 [ %.sroa.11309.0.copyload315.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.11309.0.copyload317.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.11309.0.copyload317.i, %bb.lk ]
  %.sroa.12318.2.i = phi i128 [ %.sroa.12318.0.copyload324.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.12318.0.copyload326.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.12318.0.copyload326.i, %bb.lk ]
  %.sroa.15.2.i = phi i8 [ %.sroa.15.0.copyload341.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.15.0.copyload343.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.15.0.copyload343.i, %bb.lk ]
  %.sroa.19.2.i = phi i64 [ %.sroa.19.0.copyload361.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.19.0.copyload363.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.19.0.copyload363.i, %bb.lk ]
  %.sroa.20.2.i = phi i64 [ %.sroa.20.0.copyload369.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.20.0.copyload371.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.20.0.copyload371.i, %bb.lk ]
  %.sroa.21.2.i = phi i8 [ %.sroa.21.0.copyload377.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %.sroa.21.0.copyload379.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %.sroa.21.0.copyload379.i, %bb.lk ]
  %i.ann = phi <4 x i8> [ %i.amy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i ], [ %i.ang, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i826.i ], [ %i.ang, %bb.lk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !741
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set8BTreeSetnEECs8K4cjrcxBsw_6hir_ty.exit813.i

bb.lp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i.i
  %i.ano = landingpad { ptr, i32 }
          cleanup
  br label %.body.i54

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i.i.i, %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !741
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_.exit830.i

bb.lq:                                            ; preds = %bb.ky
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1m_19RustcEnumVariantIdxEEB1o_(ptr noalias nofree noundef align 16 dereferenceable(352) %i.bn) #42
          to label %.body.i54 unwind label %bb.jn, !noalias !850

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1T_19RustcEnumVariantIdxEEEB1V_.exit.i.i, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !741
  invoke void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapnNtNtB4_7set_val9SetValZSTENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cp)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set8BTreeSetnEECs8K4cjrcxBsw_6hir_ty.exit832.i unwind label %.split.thread.i, !noalias !850

.thread957.i:                                     ; preds = %bb.ja, %.thread967.loopexit.split-lp.i, %.thread967.loopexit.loopexit.i
  %.pn582962.i = phi { ptr, i32 } [ %i.aez, %bb.ja ], [ %lpad.loopexit.split-lp.i, %.thread967.loopexit.split-lp.i ], [ %lpad.loopexit1047.i, %.thread967.loopexit.loopexit.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cb) #42
          to label %.body.i54 unwind label %bb.jn, !noalias !850

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set8BTreeSetnEECs8K4cjrcxBsw_6hir_ty.exit832.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout19RustcEnumVariantIdxINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtB1s_13RustcFieldIdxB1q_EEEB1u_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !741
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1I_19RustcEnumVariantIdxEEEB1K_(ptr noalias nofree noundef align 16 dereferenceable(352) %i.cs), !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !741
  br label %_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1O_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1M_B2x_ENCNvNvXs0_NvNtB1O_3adt1__NtB3B_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5G_3map3MapINtNtB5G_9enumerate9EnumerateINtNtNtB5K_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1M_B2Y_EEENCNvMNtB7T_5sliceINtB8T_10IndexSliceB2x_B7O_E15iter_enumerated0ENCB3t_s3_0EEB1Q_.exit

bb.lr:                                            ; preds = %.split.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set8BTreeSetnEECs8K4cjrcxBsw_6hir_ty.exit.i
  %.pn584.pn1465.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.split.thread.i ], [ %.pn584.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set8BTreeSetnEECs8K4cjrcxBsw_6hir_ty.exit.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1I_19RustcEnumVariantIdxEEEB1K_(ptr noalias nofree noundef align 16 dereferenceable(352) %i.cs) #42
          to label %common.resume unwind label %bb.jn, !noalias !850

_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE14layout_of_enumNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1O_19RustcEnumVariantIdxRRINtB8_10LayoutDataB1M_B2x_ENCNvNvXs0_NvNtB1O_3adt1__NtB3B_34layout_of_adt_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s2_0INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB5G_3map3MapINtNtB5G_9enumerate9EnumerateINtNtNtB5K_5slice4iter4IterINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecB1M_B2Y_EEENCNvMNtB7T_5sliceINtB8T_10IndexSliceB2x_B7O_E15iter_enumerated0ENCB3t_s3_0EEB1Q_.exit: ; preds = %bb.en, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set8BTreeSetnEECs8K4cjrcxBsw_6hir_ty.exit813.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3set8BTreeSetnEECs8K4cjrcxBsw_6hir_ty.exit832.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7277.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13327.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0258.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3261.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7216.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12244.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.bp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCskVLyBV5N46_15ra_ap_rustc_abi6layoutINtB6_16LayoutCalculatorRNtB8_16TargetDataLayoutE9simd_typeNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1I_19RustcEnumVariantIdxINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtB8_10LayoutDataB1G_B2r_EEEB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 16 captures(none) dereferenceable(352) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 16               ; 5 uses
  %i.h = alloca [128 x i8], align 16              ; 6 uses
  %.sroa.58.i = alloca [59 x i8], align 1         ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !449, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %2, ptr %i.i, align 8, !noalias !1054
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = icmp eq i64 %3, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.b:                                             ; preds = %bb.ad, %bb.d
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.ad ], [ %i.n, %bb.d ]
  %i.l = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !1055
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %.body

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.i) #46
          to label %.body unwind label %bb.aj, !noalias !1054

bb.d:                                             ; preds = %bb.aa, %bb.m, %bb.l
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  store i64 4, ptr %0, align 16, !alias.scope !1049, !noalias !1052
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %3, 32768
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.j, align 16, !range !493, !noalias !1054, !noundef !5 ; 2 uses
  %i.q = icmp ne i32 %i.p, 3
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i32 %i.p, 2
  br i1 %i.r, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.f
  store i64 5, ptr %0, align 16, !alias.scope !1049, !noalias !1052
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 32768 to ptr), ptr %i.s, align 8, !alias.scope !1049, !noalias !1052
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.v = load i64, ptr %i.u, align 16, !noalias !1054, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.val29.i = load i64, ptr %i.w, align 8, !alias.scope !1052, !noalias !1049 ; 4 uses
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.v, i64 range(i64 1, 32769) %3) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 0         ; 6 uses
  %i.z = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.z, label %.thread.i, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp ugt i64 %.val29.i, 2305843009213693951
  br i1 %i.aa, label %bb.l, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  switch i64 %.val29.i, label %bb.m [
    i64 2, label %bb.q
    i64 4, label %bb.n
    i64 8, label %bb.o
  ], !prof !450

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.val29.i) #45
          to label %.noexc32.i unwind label %bb.d, !noalias !1054

.noexc32.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %5 = shl nuw i64 %.val29.i, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1054
  store i64 %5, ptr %i.c, align 8, !noalias !1054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1054
  store ptr %i.c, ptr %i.b, align 8, !noalias !1054
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !1054
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @400, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #43
          to label %.noexc33.i unwind label %bb.d, !noalias !1054

.noexc33.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.k
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  store i64 6, ptr %0, align 16, !alias.scope !1049, !noalias !1052
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ab, align 8, !alias.scope !1049, !noalias !1052
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 -1, ptr %i.ac, align 16, !alias.scope !1049, !noalias !1052
  br label %bb.ak

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.k
  %.sroa.0.0.i.i.i = phi i64 [ 2305843009213693952, %bb.o ], [ 2147483648, %bb.n ], [ 32768, %bb.k ]
  %i.ad = icmp ult i64 %i.y, %.sroa.0.0.i.i.i
  br i1 %i.ad, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.ae = tail call range(i64 1, 17) i64 @llvm.ctpop.i64(i64 %3)
  %i.af = icmp ne i64 %i.ae, 1
  %or.cond.i.not = select i1 %4, i1 %i.af, i1 false
  br i1 %or.cond.i.not, label %bb.ab, label %bb.u

.thread.i:                                        ; preds = %bb.q, %bb.i
  store i64 1, ptr %0, align 16, !alias.scope !1049, !noalias !1052
  br label %bb.s

bb.s:                                             ; preds = %.thread.i, %bb.h, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 -1, ptr %i.ag, align 16, !alias.scope !1049, !noalias !1052
  %i.ah = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !1062
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtCskVLyBV5N46_15ra_ap_rustc_abi10LayoutDataNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1t_19RustcEnumVariantIdxEE9drop_slowB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.i) #46
  br label %bb.ak

bb.u:                                             ; preds = %bb.r
  %.sroa.58.16..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.sroa.58.i, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.58.16..sroa_idx9.i, ptr noundef nonnull align 16 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !1054
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val30.i = load ptr, ptr %i.aj, align 8, !alias.scope !1052, !noalias !1049, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val31.i = load i64, ptr %i.ak, align 8, !alias.scope !1052, !noalias !1049, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %.val31.i, 4
  %i.al = getelementptr inbounds nuw i8, ptr %.val30.i, i64 %.idx
  %.not.not.not.i.not.i.i20 = icmp eq i64 %.val31.i, 0
  br i1 %.not.not.not.i.not.i.i20, label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17cabi_vector_align.exit.i.i, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.not.not.i.not.i.i, label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17cabi_vector_align.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %i.an = phi ptr [ %i.am, %bb.v ], [ %.val30.i, %bb.u ] ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !1069, !noundef !5
  %i.ap = icmp eq i64 %i.ao, %i.y
  br i1 %i.ap, label %bb.w, label %bb.v

bb.w:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !noalias !1054, !noundef !5
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17cabi_vector_align.exit.i.i

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17cabi_vector_align.exit.i.i: ; preds = %bb.v, %bb.u, %bb.w
  %.not.not.not.i.not.i.i18 = phi i1 [ false, %bb.w ], [ true, %bb.u ], [ true, %bb.v ]
  %.sroa.3.0.i.i.i = phi i8 [ %i.ar, %bb.w ], [ undef, %bb.u ], [ undef, %bb.v ]
  %i.as = icmp ult i64 %i.y, 2
  br i1 %i.as, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17cabi_vector_align.exit.i.i
  %i.at = add nsw i64 %i.y, -1
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = lshr i64 -1, %i.au
  %i.aw = add nuw nsw i64 %i.av, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17cabi_vector_align.exit.i.i
  %.sroa.03.0.i.i = phi i64 [ %i.aw, %bb.x ], [ 1, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17cabi_vector_align.exit.i.i ] ; 3 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 2305843009213693953) %.sroa.03.0.i.i, i1 true) ; 3 uses
  %i.ay = shl nuw nsw i64 1, %i.ax
  %.not.i5.i.i = icmp eq i64 %.sroa.03.0.i.i, %i.ay
  br i1 %.not.i5.i.i, label %bb.z, label %bb.aa, !prof !499

bb.z:                                             ; preds = %bb.y
  %i.az = icmp samesign ugt i64 %i.ax, 29
  br i1 %i.az, label %bb.aa, label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout21llvmlike_vector_align.exit.i, !prof !7

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.0.0.ph.i.i = phi i64 [ 1, %bb.z ], [ 0, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1073
  store i64 %.sroa.0.0.ph.i.i, ptr %i.a, align 8, !noalias !1073
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.03.0.i.i, ptr %i.ba, align 8, !noalias !1073
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #43
          to label %.noexc35.i unwind label %bb.d, !noalias !1054

.noexc35.i:                                       ; preds = %bb.aa
  unreachable

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout21llvmlike_vector_align.exit.i: ; preds = %bb.z
  %.sroa.7.8.extract.trunc.i.i = trunc nuw nsw i64 %i.ax to i8
  %spec.select.i.i = select i1 %.not.not.not.i.not.i.i18, i8 %.sroa.7.8.extract.trunc.i.i, i8 %.sroa.3.0.i.i.i
  br label %bb.ac

bb.ab:                                            ; preds = %bb.r
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.y, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout21llvmlike_vector_align.exit.i
  %.sroa.07.0.i = phi i32 [ 6, %bb.ab ], [ 5, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout21llvmlike_vector_align.exit.i ]
  %.sroa.010.0.i = phi i8 [ %i.bc, %bb.ab ], [ %spec.select.i.i, %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout21llvmlike_vector_align.exit.i ] ; 2 uses
  %i.bd = and i8 %.sroa.010.0.i, 63
  %i.be = zext nneg i8 %i.bd to i64
  %notmask.i = shl nsw i64 -1, %i.be              ; 2 uses
  %i.bf = xor i64 %notmask.i, -1
  %i.bg = add nuw i64 %i.y, %i.bf
  %i.bh = and i64 %i.bg, %notmask.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1054
  store i64 0, ptr %i.h, align 16, !noalias !1054
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i64 -9223372036854775807, ptr %i.bi, align 16, !noalias !1054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1054
  invoke void @_RNvXsA_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEINtNtCshzWfHUSfYae_4core7convert4FromABF_j1_E4fromCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 0)
          to label %bb.ag unwind label %bb.ae, !noalias !1054

bb.ad:                                            ; preds = %bb.af, %bb.ae
  %.pn.i = phi { ptr, i32 } [ %i.bk, %bb.af ], [ %i.bj, %bb.ae ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCskVLyBV5N46_15ra_ap_rustc_abi8VariantsNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtB1j_19RustcEnumVariantIdxEEB1l_(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %i.h) #42
          to label %bb.b unwind label %bb.aj, !noalias !1054

bb.ae:                                            ; preds = %bb.ac
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ag
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxNtCskVLyBV5N46_15ra_ap_rustc_abi4SizeEEB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #42
          to label %bb.ad unwind label %bb.aj, !noalias !1054

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1054
  invoke void @_RNvXsA_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8K4cjrcxBsw_6hir_ty6layout13RustcFieldIdxEINtNtCshzWfHUSfYae_4core7convert4FromABF_j1_E4fromBJ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i32 noundef 0)
          to label %bb.ah unwind label %bb.af, !noalias !1054

bb.ah:                                            ; preds = %bb.ag
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1054
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.917.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.917.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %i.bm, i64 48, i1 false), !noalias !1052
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 354
  %i.bo = load i8, ptr %i.bn, align 2, !noalias !1054, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !1054, !noundef !5
  %i.br = add i64 %i.bq, %3
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(128) %i.h, i64 128, i1 false), !noalias !1052
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %.sroa.514.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(59) %.sroa.58.i, i64 59, i1 false), !noalias !1052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1054
  store i32 %.sroa.07.0.i, ptr %0, align 16, !alias.scope !1049, !noalias !1052
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %.sroa.413.0..sroa_idx.i, align 4, !alias.scope !1049, !noalias !1052
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %3, ptr %.sroa.615.0..sroa_idx.i, align 16, !alias.scope !1049, !noalias !1052
  %.sroa.1018.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.1018.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !1052
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.bh, ptr %.sroa.12.0..sroa_idx.i, align 16, !alias.scope !1049, !noalias !1052
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.br, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !1049, !noalias !1052
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 0, ptr %.sroa.14.0..sroa_idx.i, align 16, !alias.scope !1049, !noalias !1052
end_hunk_4
begin_hunk_5_@_RINvMsi_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7MirBody11walk_placesNCNvNvXs0_NvNtB6_5lower1__NtB17_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0EB8_:bb.a
    i32 5, label %.loopexit.sink.split
    i32 6, label %bb.e
    i32 8, label %bb.c
    i32 10, label %bb.e
    i32 11, label %.loopexit.sink.split
    i32 12, label %bb.d
    i32 13, label %.loopexit.sink.split
  ]

.loopexit.sink.split:                             ; preds = %.lr.ph47, %.lr.ph47, %bb.e, %bb.f, %bb.b, %bb.b, %bb.b, %bb.b
  %.sink = phi i64 [ 48, %bb.f ], [ 16, %bb.b ], [ 24, %bb.e ], [ 16, %bb.b ], [ 16, %bb.b ], [ 16, %bb.b ], [ 16, %.lr.ph47 ], [ 16, %.lr.ph47 ]
  %.sroa.020.0 = getelementptr inbounds nuw i8, ptr %.sroa.02.046, i64 %.sink
  tail call fastcc void @_RNCNvNvXs0_NvNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower1__NtB9_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0Bf_(ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %.sroa.020.0) #47
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.sink.split, %bb.d, %bb.e, %bb.f, %.lr.ph47, %.lr.ph47, %.lr.ph47
  %i.ab = icmp eq ptr %i.n, %i.l
  br i1 %i.ab, label %._crit_edge, label %.lr.ph47

bb.c:                                             ; preds = %bb.b
  %switch = icmp samesign ult i32 %i.x, 2
  br i1 %switch, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.046, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.046, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %.idx54 = shl nuw nsw i64 %i.af, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx54
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %.sroa.04.0 = getelementptr inbounds nuw i8, ptr %.sroa.02.046, i64 16
  %i.ai = load i32, ptr %.sroa.04.0, align 8, !range !1953, !noundef !5
  %switch30 = icmp samesign ult i32 %i.ai, 2
  br i1 %switch30, label %.loopexit.sink.split, label %.loopexit

bb.f:                                             ; preds = %bb.c, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.046, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !range !1953, !noundef !5
  %switch31 = icmp samesign ult i32 %i.ak, 2
  br i1 %switch31, label %.loopexit.sink.split, label %.loopexit

bb.g:                                             ; preds = %bb.c
  %.sroa.019.0 = getelementptr inbounds nuw i8, ptr %.sroa.02.046, i64 16
  tail call fastcc void @_RNCNvNvXs0_NvNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower1__NtB9_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0Bf_(ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %.sroa.019.0) #47
  br label %bb.f

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %.sroa.08.045 = phi ptr [ %i.al, %bb.h ], [ %i.ad, %bb.d ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.045, i64 32 ; 2 uses
  %i.am = load i32, ptr %.sroa.08.045, align 8, !range !1953, !noundef !5
  %switch32 = icmp samesign ult i32 %i.am, 2
  br i1 %switch32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %i.an = icmp eq ptr %i.al, %i.ag
  br i1 %i.an, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %.sroa.022.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.045, i64 8
  tail call fastcc void @_RNCNvNvXs0_NvNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower1__NtB9_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0Bf_(ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %.sroa.022.0) #47
  br label %bb.h

bb.j:                                             ; preds = %._crit_edge
  %i.ao = load i32, ptr %.sroa.0.048, align 16, !range !1896, !noundef !5 ; 4 uses
  %i.ap = icmp ne i32 %i.ao, 6
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nsw i32 %i.ao, -5
  %i.ar = icmp samesign ugt i32 %i.ao, 4
  %narrow29 = select i1 %i.ar, i32 %i.aq, i32 1
  switch i32 %narrow29, label %.loopexit43 [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 4, label %bb.k
    i32 5, label %bb.k
    i32 6, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.q
    i32 11, label %bb.k
    i32 12, label %bb.k
    i32 13, label %bb.k
  ]

.sink.split:                                      ; preds = %_RNCINvMsi_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7MirBody11walk_placesNCNvNvXs0_NvNtB8_5lower1__NtB19_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0E0Ba_.exit.i, %bb.x, %bb.q, %bb.t, %bb.m, %bb.r, %bb.s, %bb.w
  %.sroa.024.0.sink = phi ptr [ %.sroa.024.0, %bb.w ], [ %.sroa.027.0, %bb.s ], [ %.sroa.026.0, %bb.r ], [ %i.ax, %bb.t ], [ %i.at, %bb.m ], [ %i.bc, %bb.x ], [ %i.bc, %bb.q ], [ %i.ax, %_RNCINvMsi_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7MirBody11walk_placesNCNvNvXs0_NvNtB8_5lower1__NtB19_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0E0Ba_.exit.i ]
  tail call fastcc void @_RNCNvNvXs0_NvNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower1__NtB9_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0Bf_(ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %.sroa.024.0.sink) #47
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.p, %bb.n, %bb.l, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %._crit_edge
  %i.as = icmp eq ptr %i.g, %i.e
  br i1 %i.as, label %._crit_edge51, label %.lr.ph50

bb.l:                                             ; preds = %bb.j
  %switch33 = icmp samesign ult i32 %i.ao, 2
  br i1 %switch33, label %bb.r, label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 16
  br label %.sink.split

bb.n:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 48
  tail call fastcc void @_RNCNvNvXs0_NvNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower1__NtB9_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0Bf_(ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %i.au) #47
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 16
  %i.aw = load i32, ptr %i.av, align 16, !range !1953, !noundef !5
  %switch34 = icmp samesign ult i32 %i.aw, 2
  br i1 %switch34, label %bb.s, label %bb.k

bb.o:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !range !1953, !noundef !5
  %switch35 = icmp samesign ult i32 %i.az, 2
  br i1 %switch35, label %bb.v, label %bb.t

bb.p:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 16
  %i.bb = load i32, ptr %i.ba, align 16, !range !1953, !noundef !5
  %switch36 = icmp samesign ult i32 %i.bb, 2
  br i1 %switch36, label %bb.w, label %bb.k

bb.q:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 16
  %i.be = load i32, ptr %i.bd, align 16, !range !1953, !noundef !5
  %switch37 = icmp samesign ult i32 %i.be, 2
  br i1 %switch37, label %bb.x, label %.sink.split

bb.r:                                             ; preds = %bb.l
  %.sroa.026.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 8
  br label %.sink.split

bb.s:                                             ; preds = %bb.n
  %.sroa.027.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 24
  br label %.sink.split

bb.t:                                             ; preds = %bb.o, %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 64
  %i.bi = load i64, ptr %i.bh, align 16, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bi, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %_RNCINvMsi_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7MirBody11walk_placesNCNvNvXs0_NvNtB8_5lower1__NtB19_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0E0Ba_.exit.i
  %.sroa.0.02.i = phi ptr [ %i.bl, %_RNCINvMsi_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7MirBody11walk_placesNCNvNvXs0_NvNtB8_5lower1__NtB19_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0E0Ba_.exit.i ], [ %i.bg, %bb.t ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 32 ; 2 uses
  %i.bm = load i32, ptr %.sroa.0.02.i, align 8, !range !1953, !alias.scope !2917, !noalias !2920, !noundef !5
  %switch.i.i = icmp samesign ult i32 %i.bm, 2
  br i1 %switch.i.i, label %bb.u, label %_RNCINvMsi_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7MirBody11walk_placesNCNvNvXs0_NvNtB8_5lower1__NtB19_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0E0Ba_.exit.i

bb.u:                                             ; preds = %.lr.ph.i
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8
  tail call fastcc void @_RNCNvNvXs0_NvNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower1__NtB9_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0Bf_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %.sroa.0.0.i.i) #47
  br label %_RNCINvMsi_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7MirBody11walk_placesNCNvNvXs0_NvNtB8_5lower1__NtB19_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0E0Ba_.exit.i

_RNCINvMsi_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7MirBody11walk_placesNCNvNvXs0_NvNtB8_5lower1__NtB19_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0E0Ba_.exit.i: ; preds = %bb.u, %.lr.ph.i
  %i.bn = icmp eq ptr %i.bl, %i.bj
  br i1 %i.bn, label %.sink.split, label %.lr.ph.i

bb.v:                                             ; preds = %bb.o
  %.sroa.025.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 32
  tail call fastcc void @_RNCNvNvXs0_NvNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower1__NtB9_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0Bf_(ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %.sroa.025.0) #47
  br label %bb.t

bb.w:                                             ; preds = %bb.p
  %.sroa.024.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 24
  br label %.sink.split

bb.x:                                             ; preds = %bb.q
  %.sroa.023.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 24
  tail call fastcc void @_RNCNvNvXs0_NvNtNtCs8K4cjrcxBsw_6hir_ty3mir5lower1__NtB9_41mir_body_for_closure_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_s0_0Bf_(ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %.sroa.023.0) #47
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 5) i8 @_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, i16 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = and i16 %1, 255
  %.not = icmp eq i16 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i16 %1, 8
  %.sroa.4.0.extract.trunc = trunc nuw i16 %.sroa.4.0.extract.shift to i8
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp ugt i64 %.val, 2305843009213693951
  br i1 %i.e, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  switch i64 %.val, label %bb.f [
    i64 2, label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit
    i64 4, label %bb.g
    i64 8, label %bb.h
  ], !prof !450

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.val) #45
  unreachable

bb.f:                                             ; preds = %bb.d
  %2 = shl nuw i64 %.val, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @405, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #43
  unreachable

bb.g:                                             ; preds = %bb.d
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

bb.h:                                             ; preds = %bb.d
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit: ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  %.sroa.02.0 = phi i8 [ %.sroa.4.0.extract.trunc, %bb.b ], [ 3, %bb.h ], [ 2, %bb.g ], [ 1, %bb.d ]
  ret i8 %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTy13projection_tyINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %4, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !2926, !noalias !2930, !nonnull !5, !noundef !5 ; 7 uses
  %.sroa.012.0.copyload.i = load i32, ptr %i.g, align 8, !noalias !2933 ; 2 uses
  %i.h = icmp ne i32 %.sroa.012.0.copyload.i, 27
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i32 %.sroa.012.0.copyload.i, 30
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !range !2934, !alias.scope !2926, !noalias !2930, !noundef !5
  %i.l = icmp eq i32 %i.k, -1
  %i.m = load i8, ptr %3, align 8, !range !2935, !alias.scope !2928, !noalias !2936 ; 2 uses
  %i.n = icmp eq i8 %i.m, 1
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.n, !prof !2937
  br i1 %or.cond.i, label %bb.d, label %bb.e, !prof !2937

bb.c:                                             ; preds = %bb.a
  %i.o = call noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent2TyNtNtB7_8interner10DbInternerE9new_error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d), !noalias !2938
  store ptr %i.o, ptr %0, align 8, !alias.scope !2923, !noalias !2939
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.p, align 8, !alias.scope !2923, !noalias !2939
  br label %_RINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTy18projection_ty_coreINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalENCINvB2_13projection_tyB14_E0NCB1M_s_0EB8_.exit

bb.d:                                             ; preds = %bb.b
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @92, ptr noundef nonnull inttoptr (i64 103 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #43, !noalias !2933
  unreachable

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = call fastcc noundef nonnull ptr @_RNCINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7PlaceTy13projection_tyINtCsbq3eHDLgq0Z_8la_arena3IdxNtB8_5LocalEE0Ba_(ptr nonnull align 8 %2, ptr nonnull readonly align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.g) #47, !noalias !2940
  %i.r = tail call noundef ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty13builtin_deref(ptr noundef nonnull %i.q, i1 noundef zeroext true), !noalias !2933 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !7

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !2928, !noalias !2936, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2933
  %i.u = call fastcc noundef nonnull ptr @_RNCINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7PlaceTy13projection_tyINtCsbq3eHDLgq0Z_8la_arena3IdxNtB8_5LocalEE0Ba_(ptr nonnull align 8 %2, ptr nonnull readonly align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.g) #47, !noalias !2940 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.j, i64 12, i1 false), !noalias !2930
  store ptr %i.u, ptr %i.b, align 8, !noalias !2933
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.t, ptr %i.w, align 4, !noalias !2933
  %i.x = call noundef nonnull ptr @_RNvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB5_7PlaceTy8field_ty(ptr noundef nonnull readonly align 8 %2, ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.v, i32 noundef %i.t), !noalias !2933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2933
  store ptr %i.x, ptr %0, align 8, !alias.scope !2923, !noalias !2939
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.y, align 8, !alias.scope !2923, !noalias !2939
  br label %_RINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTy18projection_ty_coreINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalENCINvB2_13projection_tyB14_E0NCB1M_s_0EB8_.exit

bb.h:                                             ; preds = %bb.d, %bb.d
  %i.z = call fastcc noundef nonnull ptr @_RNCINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7PlaceTy13projection_tyINtCsbq3eHDLgq0Z_8la_arena3IdxNtB8_5LocalEE0Ba_(ptr nonnull align 8 %2, ptr nonnull readonly align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.g) #47, !noalias !2940 ; 2 uses
  %.sroa.022.0.copyload.i = load i32, ptr %i.z, align 8, !noalias !2933 ; 3 uses
  %i.aa = icmp ne i32 %.sroa.022.0.copyload.i, 27
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add i32 %.sroa.022.0.copyload.i, -2
  %i.ac = icmp ugt i32 %.sroa.022.0.copyload.i, 1
  %narrow38.i = select i1 %i.ac, i32 %i.ab, i32 25
  switch i32 %narrow38.i, label %bb.m [
    i32 8, label %bb.n
    i32 10, label %bb.n
  ], !prof !2941

bb.i:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2928, !noalias !2936, !noundef !5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !2928, !noalias !2936, !noundef !5 ; 2 uses
  %i.ah = call fastcc noundef nonnull ptr @_RNCINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_7PlaceTy13projection_tyINtCsbq3eHDLgq0Z_8la_arena3IdxNtB8_5LocalEE0Ba_(ptr nonnull align 8 %2, ptr nonnull readonly align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.g) #47, !noalias !2940 ; 2 uses
  %.sroa.05.0.copyload.i = load i32, ptr %i.ah, align 8, !noalias !2933 ; 3 uses
  %i.ai = icmp ne i32 %.sroa.05.0.copyload.i, 27
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add i32 %.sroa.05.0.copyload.i, -2
  %i.ak = icmp ugt i32 %.sroa.05.0.copyload.i, 1
  %narrow.i = select i1 %i.ak, i32 %i.aj, i32 25
  switch i32 %narrow.i, label %bb.o [
    i32 8, label %bb.p
    i32 10, label %bb.q
  ], !prof !2941

bb.j:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.al, i64 12, i1 false), !alias.scope !2942, !noalias !2943
  store ptr %i.g, ptr %0, align 8, !alias.scope !2923, !noalias !2939
  br label %_RINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTy18projection_ty_coreINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalENCINvB2_13projection_tyB14_E0NCB1M_s_0EB8_.exit

bb.k:                                             ; preds = %bb.f
  store ptr %i.r, ptr %0, align 8, !alias.scope !2923, !noalias !2939
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.an, align 8, !alias.scope !2923, !noalias !2939
  br label %_RINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTy18projection_ty_coreINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalENCINvB2_13projection_tyB14_E0NCB1M_s_0EB8_.exit

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2933
  store ptr %1, ptr %i.a, align 8, !noalias !2933
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2Z_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !2933
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @94, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #43, !noalias !2930
  unreachable

bb.m:                                             ; preds = %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #43, !noalias !2933
  unreachable

bb.n:                                             ; preds = %bb.h, %bb.h
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.524.0.copyload.i = load ptr, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !2933, !nonnull !5, !noundef !5
  store ptr %.sroa.524.0.copyload.i, ptr %0, align 8, !alias.scope !2923, !noalias !2939
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.ao, align 8, !alias.scope !2923, !noalias !2939
  br label %_RINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTy18projection_ty_coreINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalENCINvB2_13projection_tyB14_E0NCB1M_s_0EB8_.exit

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2933
  store ptr %1, ptr %i.c, align 8, !noalias !2933
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2Z_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !2933
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @97, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #43, !noalias !2930
  unreachable

bb.p:                                             ; preds = %bb.i
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.46.0.copyload.i = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !2933, !nonnull !5, !noundef !5
  %i.ap = icmp uge i64 %i.ag, %i.ae               ; 2 uses
  %i.aq = sub nuw i64 %i.ag, %i.ae
  %i.ar = zext i64 %i.aq to i128
  %.sroa.09.0.i = zext i1 %i.ap to i128
  %.sroa.510.0.i = select i1 %i.ap, i128 %i.ar, i128 undef
  %i.as = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty13new_array_opt(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d, ptr noundef nonnull %.sroa.46.0.copyload.i, i128 noundef %.sroa.09.0.i, i128 %.sroa.510.0.i), !noalias !2938
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.sroa.07.0.i = phi ptr [ %i.as, %bb.p ], [ %i.g, %bb.i ]
  store ptr %.sroa.07.0.i, ptr %0, align 8, !alias.scope !2923, !noalias !2939
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.at, align 8, !alias.scope !2923, !noalias !2939
  br label %_RINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTy18projection_ty_coreINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalENCINvB2_13projection_tyB14_E0NCB1M_s_0EB8_.exit

_RINvMsl_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTy18projection_ty_coreINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalENCINvB2_13projection_tyB14_E0NCB1M_s_0EB8_.exit: ; preds = %bb.c, %bb.g, %bb.j, %bb.k, %bb.n, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMsn_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_9Primitive4sizeNtB6_16TargetDataLayoutECs8K4cjrcxBsw_6hir_ty(i64 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.44.0.extract.shift = lshr i64 %0, 8      ; 2 uses
  %trunc = trunc i64 %0 to i8
  switch i8 %trunc, label %bb.b [
end_hunk_5
begin_hunk_6_@_RINvXNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8internerINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBQ_5LocalEEINtB3_15CollectAndApplyBN_NtBQ_10ProjectionE17collect_and_applyINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB3k_9enumerate9EnumerateINtNtNtB3o_5slice4iter4IterNtNtNtNtNtBS_5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtBQ_5lower35convert_closure_capture_projections0ENvMs4_BQ_B2E_14new_from_sliceEBS_:bb.a
  %i.ed = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceB12_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef range(i64 0, 384307168202282326) 7) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.av

bb.at:                                            ; preds = %bb.ar, %bb.ar, %bb.ap
  %.sroa.0485.0.ph = phi i8 [ 1, %bb.ar ], [ 0, %bb.ap ], [ 1, %bb.ar ]
  %.sroa.7487.0.ph = phi i32 [ %.val4.i100, %bb.ar ], [ undef, %bb.ap ], [ %.val4.i100, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6446)
  store i64 1, ptr %i.a, align 8, !alias.scope !6449, !noalias !6451
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.4494.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 9, ptr %.sroa.4494.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.sroa.0.0546.ph, ptr %.sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.5.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %.sroa.7109.0.ph, ptr %.sroa.5495.sroa.5.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.7.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 %.sroa.0153.0.ph, ptr %.sroa.5495.sroa.7.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.9.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %.sroa.7155.0.ph, ptr %.sroa.5495.sroa.9.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.11.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 %.sroa.0203.0.ph, ptr %.sroa.5495.sroa.11.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.13.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 %.sroa.7205.0.ph, ptr %.sroa.5495.sroa.13.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.15.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 %.sroa.0252.0.ph, ptr %.sroa.5495.sroa.15.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.17.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  store i32 %.sroa.7254.0.ph, ptr %.sroa.5495.sroa.17.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.19.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 %.sroa.0300.0.ph, ptr %.sroa.5495.sroa.19.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.21.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i32 %.sroa.7302.0.ph, ptr %.sroa.5495.sroa.21.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.23.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 %.sroa.0347.0.ph, ptr %.sroa.5495.sroa.23.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.25.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i32 %.sroa.7349.0.ph, ptr %.sroa.5495.sroa.25.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.27.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i8 %.sroa.0394.0.ph, ptr %.sroa.5495.sroa.27.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.29.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i32 %.sroa.7396.0.ph, ptr %.sroa.5495.sroa.29.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.31.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i8 %.sroa.0440.0.ph, ptr %.sroa.5495.sroa.31.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.33.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  store i32 %.sroa.7442.0.ph, ptr %.sroa.5495.sroa.33.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.35.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i8 %.sroa.0485.0.ph, ptr %.sroa.5495.sroa.35.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !6453, !noalias !6454
  %.sroa.5495.sroa.37.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  store i32 %.sroa.7487.0.ph, ptr %.sroa.5495.sroa.37.0..sroa.5495.0..sroa.4.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !alias.scope !6453, !noalias !6454
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBX_5LocalEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB2S_5array4iter8IntoIterBU_Kj9_EINtNtB2O_3map3MapINtNtB2O_9enumerate9EnumerateINtNtNtB2S_5slice4iter4IterNtNtNtNtNtBZ_5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtBX_5lower35convert_closure_capture_projections0EEE9from_iterBZ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !5, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !5
  %i.ej = invoke fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceB12_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.eg, i64 noundef range(i64 0, 384307168202282326) %i.ei) #47
          to label %_RNvYNvMs4_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_10Projection14new_from_sliceINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRSINtB8_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB8_5LocalEEEE9call_onceBa_.exit unwind label %bb.au

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit108: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.sroa.0.0546.ph, ptr %i.c, align 8
  %.sroa.5455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.7109.0.ph, ptr %.sroa.5455.0..sroa_idx, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 %.sroa.0153.0.ph, ptr %i.ek, align 8
  %.sroa.5459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %.sroa.7155.0.ph, ptr %.sroa.5459.0..sroa_idx, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 %.sroa.0203.0.ph, ptr %i.el, align 8
  %.sroa.5463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %.sroa.7205.0.ph, ptr %.sroa.5463.0..sroa_idx, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i8 %.sroa.0252.0.ph, ptr %i.em, align 8
  %.sroa.5467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 %.sroa.7254.0.ph, ptr %.sroa.5467.0..sroa_idx, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i8 %.sroa.0300.0.ph, ptr %i.en, align 8
  %.sroa.5471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store i32 %.sroa.7302.0.ph, ptr %.sroa.5471.0..sroa_idx, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i8 %.sroa.0347.0.ph, ptr %i.eo, align 8
  %.sroa.5475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %.sroa.7349.0.ph, ptr %.sroa.5475.0..sroa_idx, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 %.sroa.0394.0.ph, ptr %i.ep, align 8
  %.sroa.5479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store i32 %.sroa.7396.0.ph, ptr %.sroa.5479.0..sroa_idx, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i8 %.sroa.0440.0.ph, ptr %i.eq, align 8
  %.sroa.5483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  store i32 %.sroa.7442.0.ph, ptr %.sroa.5483.0..sroa_idx, align 4
  %i.er = call fastcc noundef nonnull ptr @_RNvMNtCs39E2wp1vf7X_6intern12intern_sliceINtB2_13InternedSliceNtNtCs8K4cjrcxBsw_6hir_ty3mir17ProjectionStorageE21from_header_and_sliceB12_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef range(i64 0, 384307168202282326) 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1b_5LocalEEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #42
          to label %bb.ax unwind label %bb.aw

_RNvYNvMs4_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_10Projection14new_from_sliceINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRSINtB8_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB8_5LocalEEEE9call_onceBa_.exit: ; preds = %bb.at
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1b_5LocalEEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.av

bb.av:                                            ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit38, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit58, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit78, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit108, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit98, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit88, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit68, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit48, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit, %_RNvYNvMs4_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_10Projection14new_from_sliceINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRSINtB8_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB8_5LocalEEEE9call_onceBa_.exit
  %.sroa.0.0 = phi ptr [ %i.ej, %_RNvYNvMs4_NtCs8K4cjrcxBsw_6hir_ty3mirNtB8_10Projection14new_from_sliceINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRSINtB8_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB8_5LocalEEEE9call_onceBa_.exit ], [ %i.aj, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit ], [ %i.au, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit38 ], [ %i.bg, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit48 ], [ %i.bt, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit58 ], [ %i.ch, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit68 ], [ %i.cw, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit78 ], [ %i.dm, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit88 ], [ %i.er, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit108 ], [ %i.ed, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEENCNvNtNtB1Y_3mir5lower35convert_closure_capture_projections0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit98 ]
  ret ptr %.sroa.0.0

bb.aw:                                            ; preds = %bb.au
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.ax:                                            ; preds = %bb.au
  resume { ptr, i32 } %i.es
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtNtCs8K4cjrcxBsw_6hir_ty3mir4eval13IntervalAndTyNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBQ_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 288230376151711744) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !6, !noundef !5 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #45
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %2
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit, %bb.c
  %.sroa.10.029 = phi i64 [ %i.m, %bb.c ], [ %i.e, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit ]
  %.sroa.012.028 = phi ptr [ %i.o, %bb.c ], [ %1, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit ] ; 4 uses
  %.sroa.7.027 = phi i64 [ %i.n, %bb.c ], [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit ] ; 2 uses
  %i.l = icmp eq ptr %.sroa.012.028, %i.j
  br i1 %i.l, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.c, %.lr.ph, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph
  %i.m = add i64 %.sroa.10.029, -1                ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.7.027, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.028, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.028, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !6455, !noalias !6458, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.7.027 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.028, i64 24, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.q, ptr %.sroa.420.0..sroa_idx, align 8
  %i.s = icmp eq i64 %i.m, 0
  br i1 %i.s, label %.thread, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 5) i8 @_RINvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4utilNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerNtB6_10IntegerExt11from_int_tyNtNtB8_8interner10DbInternerEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i8 noundef range(i8 0, 6) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  switch i8 %1, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit
    i8 2, label %bb.h
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.i
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RNvXs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4utilNtNtB7_8interner10DbInternerNtCskVLyBV5N46_15ra_ap_rustc_abi13HasDataLayout11data_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.d = getelementptr i8, ptr %i.c, i64 56
  %.val = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp ugt i64 %.val, 2305843009213693951
  br i1 %i.e, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  switch i64 %.val, label %bb.e [
    i64 2, label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit
    i64 4, label %bb.f
    i64 8, label %bb.g
  ], !prof !450

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.val) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  %2 = shl nuw i64 %.val, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @405, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #43
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

bb.g:                                             ; preds = %bb.a, %bb.c
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

bb.h:                                             ; preds = %bb.a
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

bb.i:                                             ; preds = %bb.a
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a, %bb.i, %bb.h
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 4, %bb.i ], [ 1, %bb.h ], [ 1, %bb.c ], [ 2, %bb.f ], [ 3, %bb.g ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 5) i8 @_RINvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4utilNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerNtB6_10IntegerExt12from_uint_tyNtNtB8_8interner10DbInternerEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i8 noundef range(i8 0, 6) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  switch i8 %1, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit
    i8 2, label %bb.h
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.i
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RNvXs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4utilNtNtB7_8interner10DbInternerNtCskVLyBV5N46_15ra_ap_rustc_abi13HasDataLayout11data_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.d = getelementptr i8, ptr %i.c, i64 56
  %.val = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp ugt i64 %.val, 2305843009213693951
  br i1 %i.e, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  switch i64 %.val, label %bb.e [
    i64 2, label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit
    i64 4, label %bb.f
    i64 8, label %bb.g
  ], !prof !450

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.val) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  %2 = shl nuw i64 %.val, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @405, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #43
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

bb.g:                                             ; preds = %bb.a, %bb.c
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

bb.h:                                             ; preds = %bb.a
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

bb.i:                                             ; preds = %bb.a
  br label %_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit

_RNvMs2_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_16TargetDataLayout17ptr_sized_integer.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a, %bb.i, %bb.h
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 4, %bb.i ], [ 1, %bb.h ], [ 1, %bb.c ], [ 2, %bb.f ], [ 3, %bb.g ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1_NtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !6, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB25_8adapters6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterBQ_EEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 40, i1 false), !alias.scope !6467, !noalias !6471
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied6CopiedINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterBU_EEE9from_iterCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !6472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6460
  %i.c = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEE16into_boxed_sliceCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCs4gx7repjoPU_12sharded_slab4page6SharedNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBV_3cfg13DefaultConfigEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3d_8adapters3map3MapINtNtNtB3f_3ops5range5RangejENCNvMNtBV_5shardINtB5k_5ShardB1z_B2E_E3new0EECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !alias.scope !6480, !noalias !6484
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs4gx7repjoPU_12sharded_slab4page6SharedNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBZ_3cfg13DefaultConfigEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB3G_3ops5range5RangejENCNvMNtBZ_5shardINtB4T_5ShardB1D_B2I_E3new0EE9from_iterCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !6485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6473
  %i.c = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs4gx7repjoPU_12sharded_slab4page6SharedNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtBJ_3cfg13DefaultConfigEE16into_boxed_sliceCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution10TraitImplsEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2t_8adapters3map3MapINtNtNtB2v_5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENCNvXNvMsH_B1s_B1q_18for_crate_and_depsB1q_NtB5b_11InnerTrait_19for_crate_and_deps_0EEB1u_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false), !alias.scope !6493, !noalias !6497
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution10TraitImplsEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2W_5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENCNvXNvMsH_B1w_B1u_18for_crate_and_depsB1u_NtB4K_11InnerTrait_19for_crate_and_deps_0EE9from_iterB1y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !6498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6486
  %i.c = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution10TraitImplsEE16into_boxed_sliceB1i_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB4Y_8adapters3map3MapINtNtNtB50_3ops5range5RangejENCNvMs5_B3m_INtB3m_14IngredientImplB48_E3news_0EEB4c_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB5r_3ops5range5RangejENCNvMs5_B3q_INtB3q_14IngredientImplB4c_E3news_0EE9from_iterB4g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEEE16into_boxed_sliceB40_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db17InternedClosureIdEEEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB54_8adapters3map3MapINtNtNtB56_3ops5range5RangejENCNvMs5_B3m_INtB3m_14IngredientImplB48_E3news_0EEB4c_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db17InternedClosureIdEEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB5x_3ops5range5RangejENCNvMs5_B3q_INtB3q_14IngredientImplB4c_E3news_0EE9from_iterB4g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db17InternedClosureIdEEEE16into_boxed_sliceB40_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIdEEEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB55_8adapters3map3MapINtNtNtB57_3ops5range5RangejENCNvMs5_B3m_INtB3m_14IngredientImplB48_E3news_0EEB4c_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIdEEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB5y_3ops5range5RangejENCNvMs5_B3q_INtB3q_14IngredientImplB4c_E3news_0EE9from_iterB4g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db18InternedOpaqueTyIdEEEE16into_boxed_sliceB40_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db19InternedCoroutineIdEEEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB56_8adapters3map3MapINtNtNtB58_3ops5range5RangejENCNvMs5_B3m_INtB3m_14IngredientImplB48_E3news_0EEB4c_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db19InternedCoroutineIdEEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB5z_3ops5range5RangejENCNvMs5_B3q_INtB3q_14IngredientImplB4c_E3news_0EE9from_iterB4g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db19InternedCoroutineIdEEEE16into_boxed_sliceB40_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db26InternedCoroutineClosureIdEEEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB5d_8adapters3map3MapINtNtNtB5f_3ops5range5RangejENCNvMs5_B3m_INtB3m_14IngredientImplB48_E3news_0EEB4c_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db26InternedCoroutineClosureIdEEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB5G_3ops5range5RangejENCNvMs5_B3q_INtB3q_14IngredientImplB4c_E3news_0EE9from_iterB4g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNtCs8K4cjrcxBsw_6hir_ty2db26InternedCoroutineClosureIdEEEE16into_boxed_sliceB40_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB5B_8adapters3map3MapINtNtNtB5D_3ops5range5RangejENCNvMs5_B3m_INtB3m_14IngredientImplB48_E3news_0EEB4e_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB64_3ops5range5RangejENCNvMs5_B3q_INtB3q_14IngredientImplB4c_E3news_0EE9from_iterB4i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty14specialization1__32specializes_query_Configuration_EEEE16into_boxed_sliceB42_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_EEEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB5Q_8adapters3map3MapINtNtNtB5S_3ops5range5RangejENCNvMs5_B3m_INtB3m_14IngredientImplB48_E3news_0EEB4e_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_EEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB6j_3ops5range5RangejENCNvMs5_B3q_INtB3q_14IngredientImplB4c_E3news_0EE9from_iterB4i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__54resolve_type_param_assoc_type_shorthand_Configuration_EEEE16into_boxed_sliceB42_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty6layout1__33layout_of_ty_query_Configuration_EEEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB5t_8adapters3map3MapINtNtNtB5v_3ops5range5RangejENCNvMs5_B3m_INtB3m_14IngredientImplB48_E3news_0EEB4e_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty6layout1__33layout_of_ty_query_Configuration_EEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB5W_3ops5range5RangejENCNvMs5_B3q_INtB3q_14IngredientImplB4c_E3news_0EE9from_iterB4i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtCs8K4cjrcxBsw_6hir_ty6layout1__33layout_of_ty_query_Configuration_EEEE16into_boxed_sliceB42_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtNtCs8K4cjrcxBsw_6hir_ty3mir16monomorphization1__43monomorphized_mir_body_query_Configuration_EEEEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB5U_8adapters3map3MapINtNtNtB5W_3ops5range5RangejENCNvMs5_B3m_INtB3m_14IngredientImplB48_E3news_0EEB4g_(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtNtCs8K4cjrcxBsw_6hir_ty3mir16monomorphization1__43monomorphized_mir_body_query_Configuration_EEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB6n_3ops5range5RangejENCNvMs5_B3q_INtB3q_14IngredientImplB4c_E3news_0EE9from_iterB4k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api5mutex5MutexNtNtCsaWIbZW7RmAr_11parking_lot9raw_mutex8RawMutexINtNtCsd9Lm8bEdjjY_5salsa8interned15IngredientShardNtNvNtNtCs8K4cjrcxBsw_6hir_ty3mir16monomorphization1__43monomorphized_mir_body_query_Configuration_EEEE16into_boxed_sliceB44_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
end_hunk_6
begin_hunk_7_@_RNvXCsfjX3T6UU9IB_9hashbrownTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBt_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBt_5LocalEEEINtB2_10EquivalentBq_E10equivalentBv_:bb.a

bb.l:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !11677, !noalias !11678, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !11678, !noalias !11677, !noundef !5
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.m, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ax = load i8, ptr %i.aw, align 1, !range !451, !alias.scope !11677, !noalias !11678, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.az = load i8, ptr %i.ay, align 1, !range !451, !alias.scope !11678, !noalias !11677, !noundef !5
  %i.ba = icmp eq i8 %i.ax, %i.az
  br label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.n:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !11677, !noalias !11678, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !11678, !noalias !11677, !noundef !5
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !11677, !noalias !11678, !noundef !5
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !11678, !noalias !11677, !noundef !5
  %i.bk = icmp eq i64 %i.bh, %i.bj
  br label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.p:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11682)
  %i.bn = load i32, ptr %i.bl, align 4, !range !4376, !alias.scope !11684, !noalias !11685, !noundef !5 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !range !4376, !alias.scope !11685, !noalias !11684, !noundef !5
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.q, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !11684, !noalias !11685, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !11685, !noalias !11684, !noundef !5
  %i.bu = icmp eq i32 %i.br, %i.bt                ; 3 uses
  switch i32 %i.bn, label %default.unreachable [
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  br i1 %i.bu, label %bb.u, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.s:                                             ; preds = %bb.q
  br i1 %i.bu, label %bb.v, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.t:                                             ; preds = %bb.q
  br i1 %i.bu, label %bb.w, label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.u:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !range !8583, !alias.scope !11684, !noalias !11685, !noundef !5
  %i.by = load i32, ptr %i.bv, align 8, !range !8583, !alias.scope !11685, !noalias !11684, !noundef !5
  %i.bz = icmp eq i32 %i.bx, %i.by
  br label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.v:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !range !8583, !alias.scope !11684, !noalias !11685, !noundef !5
  %i.cd = load i32, ptr %i.ca, align 8, !range !8583, !alias.scope !11685, !noalias !11684, !noundef !5
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

bb.w:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !range !8583, !alias.scope !11684, !noalias !11685, !noundef !5
  %i.ci = load i32, ptr %i.cf, align 8, !range !8583, !alias.scope !11685, !noalias !11684, !noundef !5
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br label %_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit

_RNvXs8_NtCshzWfHUSfYae_4core5tupleTNtNtCs8K4cjrcxBsw_6hir_ty3mir7PlaceTyINtBz_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtBz_5LocalEEENtNtB7_3cmp9PartialEq2eqBB_.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g, %.split3.i, %.split4.i, %.split.i, %_RNvXs32_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTyNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.sroa.0.0.i = phi i1 [ false, %.split4.i ], [ false, %_RNvXs32_NtCs8K4cjrcxBsw_6hir_ty3mirNtB6_7PlaceTyNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.p ], [ false, %.split.i ], [ false, %.split3.i ], [ %i.an, %bb.j ], [ false, %bb.h ], [ %i.aq, %bb.k ], [ %i.ba, %bb.m ], [ true, %bb.i ], [ %i.bk, %bb.o ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.t ], [ false, %bb.s ], [ %i.cj, %bb.w ], [ false, %bb.r ], [ %i.ce, %bb.v ], [ %i.bz, %bb.u ], [ false, %bb.a ], [ false, %bb.g ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXNvMs1_NtCsbSS6DM8SDEO_5alloc5boxedINtB8_3BoxppE21try_clone_from_ref_inINtB2_16DeallocDropGuardNtNtBa_5alloc6GlobalENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = load i64, ptr %0, align 8, !range !11686, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %i.f) #48
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i8, i1 } @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4utilNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerNtB5_10IntegerExt10repr_discr(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, i128 noundef %3, i128 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  %..i = tail call noundef i128 @llvm.umax.i128(i128 %4, i128 %3) ; 4 uses
  %i.e = icmp ult i128 %..i, 256
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i128 %..i, 65536
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i128 %..i, 4294967296
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i128 %..i, 18446744073709551616
  %spec.select = select i1 %i.h, i8 3, i8 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.01.0 = phi i8 [ %spec.select, %bb.d ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ] ; 3 uses
  %i.i = add i128 %3, 128
  %or.cond.i = icmp ult i128 %i.i, 256
  br i1 %or.cond.i, label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add i128 %3, 32768
  %or.cond1.i = icmp ult i128 %i.j, 65536
  br i1 %or.cond1.i, label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = add i128 %3, 2147483648
  %or.cond2.i = icmp ult i128 %i.k, 4294967296
  br i1 %or.cond2.i, label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = add i128 %3, 9223372036854775808
  %or.cond3.i = icmp ult i128 %i.l, 18446744073709551616
  %..i38 = select i1 %or.cond3.i, i8 3, i8 4
  br label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit

_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi i8 [ 2, %bb.g ], [ 0, %bb.e ], [ %..i38, %bb.h ], [ 1, %bb.f ]
  %i.m = add i128 %4, 128
  %or.cond.i39 = icmp ult i128 %i.m, 256
  br i1 %or.cond.i39, label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit45, label %bb.i

bb.i:                                             ; preds = %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit
  %i.n = add i128 %4, 32768
  %or.cond1.i40 = icmp ult i128 %i.n, 65536
  br i1 %or.cond1.i40, label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit45, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = add i128 %4, 2147483648
  %or.cond2.i41 = icmp ult i128 %i.o, 4294967296
  br i1 %or.cond2.i41, label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit45, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = add i128 %4, 9223372036854775808
  %or.cond3.i42 = icmp ult i128 %i.p, 18446744073709551616
  %..i43 = select i1 %or.cond3.i42, i8 3, i8 4
  br label %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit45

_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit45: ; preds = %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i44 = phi i8 [ 2, %bb.j ], [ 0, %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit ], [ %..i43, %bb.k ], [ 1, %bb.i ]
  %..i46 = tail call noundef range(i8 0, 5) i8 @llvm.umax.i8(i8 range(i8 0, 5) %.sroa.0.0.i44, i8 range(i8 0, 5) %.sroa.0.0.i) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !454, !noundef !5 ; 3 uses
  %.not = icmp eq i8 %i.r, -1
  br i1 %.not, label %bb.s, label %bb.l

bb.l:                                             ; preds = %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit45
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 17
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1 ; 3 uses
  %i.s = tail call noundef nonnull align 8 ptr @_RNvXs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4utilNtNtB7_8interner10DbInternerNtCskVLyBV5N46_15ra_ap_rustc_abi13HasDataLayout11data_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  switch i8 %i.r, label %bb.v [
    i8 2, label %bb.m
    i8 0, label %bb.u
  ]

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr i8, ptr %i.s, i64 56
  %.val.i = load i64, ptr %i.t, align 8, !noundef !5 ; 4 uses
  %i.u = icmp ugt i64 %.val.i, 2305843009213693951
  br i1 %i.u, label %bb.o, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  switch i64 %.val.i, label %bb.p [
    i64 2, label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB13_.exit.thread
    i64 4, label %bb.q
    i64 8, label %bb.r
  ], !prof !450

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNvMs9_CskVLyBV5N46_15ra_ap_rustc_abiNtB7_4Size4bits8overflow(i64 noundef %.val.i) #45
  unreachable

bb.p:                                             ; preds = %bb.n
  %5 = shl nuw i64 %.val.i, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11687
  store i64 %5, ptr %i.b, align 8, !noalias !11687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11687
  store ptr %i.b, ptr %i.a, align 8, !noalias !11687
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !11687
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @405, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #43
  unreachable

bb.q:                                             ; preds = %bb.n
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB13_.exit.thread

bb.r:                                             ; preds = %bb.n
  br label %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB13_.exit.thread

bb.s:                                             ; preds = %_RNvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB5_7Integer10fit_signed.exit45
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.w = load i8, ptr %i.v, align 2, !noundef !5
  %i.x = and i8 %i.w, 1
  %.not35 = icmp eq i8 %i.x, 0
  br i1 %.not35, label %bb.y, label %bb.x

_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB13_.exit.thread: ; preds = %bb.r, %bb.q, %bb.n
  %.sroa.02.0.i50 = phi i8 [ 1, %bb.n ], [ 2, %bb.q ], [ 3, %bb.r ] ; 2 uses
  %i.y = trunc nuw i8 %.sroa.7.0.copyload to i1   ; 2 uses
  %spec.select37 = select i1 %i.y, i8 %..i46, i8 %.sroa.01.0
  %i.z = icmp samesign ult i8 %.sroa.02.0.i50, %spec.select37
  br i1 %i.z, label %bb.t, label %bb.w, !prof !7

bb.t:                                             ; preds = %bb.v, %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB13_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @576, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @578) #43
  unreachable

bb.u:                                             ; preds = %bb.l
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %bb.u
  %.sroa.04.1 = phi i8 [ %..i46, %bb.l ], [ %.sroa.01.0, %bb.u ]
  %i.aa = icmp ult i8 %.sroa.7.0.copyload, %.sroa.04.1
  br i1 %i.aa, label %bb.t, label %._crit_edge, !prof !7

._crit_edge:                                      ; preds = %bb.v
  %.pre = trunc nuw i8 %i.r to i1
  br label %bb.w

bb.w:                                             ; preds = %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB13_.exit.thread, %._crit_edge, %bb.z, %bb.aa
  %.sroa.4.0 = phi i1 [ true, %bb.z ], [ false, %bb.aa ], [ %.pre, %._crit_edge ], [ %i.y, %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB13_.exit.thread ]
  %.sroa.0.0 = phi i8 [ %..i47, %bb.z ], [ %..i48, %bb.aa ], [ %.sroa.7.0.copyload, %._crit_edge ], [ %.sroa.02.0.i50, %_RINvMsl_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7Integer9from_attrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEB13_.exit.thread ]
  %i.ab = insertvalue { i8, i1 } poison, i8 %.sroa.0.0, 0
  %i.ac = insertvalue { i8, i1 } %i.ab, i1 %.sroa.4.0, 1
  ret { i8, i1 } %i.ac

bb.x:                                             ; preds = %bb.s
  %i.ad = tail call noundef nonnull align 8 ptr @_RNvXs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4utilNtNtB7_8interner10DbInternerNtCskVLyBV5N46_15ra_ap_rustc_abi13HasDataLayout11data_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 81
  %i.af = load i8, ptr %i.ae, align 1, !range !931, !noundef !5
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.x
  %.sroa.019.0 = phi i8 [ %i.af, %bb.x ], [ 0, %bb.s ] ; 2 uses
  %i.ag = icmp sgt i128 %3, -1
  br i1 %i.ag, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i47 = tail call noundef range(i8 0, 5) i8 @llvm.umax.i8(i8 range(i8 0, 5) %.sroa.019.0, i8 range(i8 0, 5) %..i46)
  br label %bb.w

bb.aa:                                            ; preds = %bb.y
  %..i48 = tail call noundef range(i8 0, 5) i8 @llvm.umax.i8(i8 range(i8 0, 5) %.sroa.019.0, i8 range(i8 0, 5) %.sroa.01.0)
  br label %bb.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber19record_follows_from(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias nofree readonly align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber5event(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber6record(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias nofree readonly align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i64 1, 0) i64 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber8new_span(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = load i64, ptr %1, align 8, !range !438, !noundef !5 ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 0, label %bb.f
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12current_span(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %0)
  %i.d = load i64, ptr %i.a, align 8, !range !438, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = tail call noundef i64 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber10clone_span(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = call noundef i64 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber10clone_span(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.1 = phi i64 [ %i.i, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e
  %.sroa.0.2 = phi i64 [ %i.g, %bb.c ], [ %.sroa.0.1, %bb.e ], [ %i.c, %bb.a ]
  %i.j = call { i64, i64 } @_RINvMs_NtCs4gx7repjoPU_12sharded_slab4poolINtB5_4PoolNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE11create_withNCNvXs0_BR_NtBR_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber8new_spans0_0ECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef %.sroa.0.2) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !499

bb.g:                                             ; preds = %bb.f
  %i.m = extractvalue { i64, i64 } %i.j, 1
  %i.n = add i64 %i.m, 1
  %i.o = call noundef i64 @_RNvMNtCsaMQbKjKCVRW_12tracing_core4spanNtB2_2Id8from_u64(i64 noundef %i.n)
  ret i64 %i.o

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @579, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @581) #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1L_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_8AbiAlignNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @631, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @632, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @630)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1N_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i32, ptr %0, align 4, !range !29, !noundef !5
  %i.d = trunc nuw i32 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @636, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @635)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @634, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @633)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1V_CskVLyBV5N46_15ra_ap_rustc_abiNtB6_7IntegerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !931, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtCskVLyBV5N46_15ra_ap_rustc_abi7IntegerNtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty.866, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}
end_hunk_7
