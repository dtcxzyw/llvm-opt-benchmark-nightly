Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.10?download=true
inline.NumInlined: 3041
inline.NumDeleted: 1673
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvYQINtNtCs8yjYO7b73r2_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content14ContentVisitorECs6u1mgJOKDyY_13rust_analyzer:bb.a
; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNCINvXNvXsf_Cs2vT3jxLudSK_3urlNtBb_3UrlNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB5_10UrlVisitorNtBE_7Visitor9visit_strNtNtCs8yjYO7b73r2_10serde_json5error5ErrorE0Cs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtCs2vT3jxLudSK_3url6parserNtB5_10ParseErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtReNtB6_5Debug3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @859, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = call noundef nonnull align 8 ptr @_RINvXs6_NtCs8yjYO7b73r2_10serde_json5errorNtB6_5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error6customNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret ptr %i.e
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp10from_proto6offsets_0B7_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.e = load i32, ptr %i.d, align 8, !noundef !5
  store i32 %i.e, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1_Cs9HU4uknhSfY_10line_indexNtB5_7LineColNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtCsuAhG64lL82_9text_size4sizeNtB2_8TextSizeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @863, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = call noundef nonnull ptr @_RINvMNtCsdRkQxkTxnTp_6anyhow5errorNtB5_5Error3msgNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11test_runnerNtB5_15CargoTestHandle3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) %1, i64 %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(208) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef readonly captures(address, read_provenance) %6, i64 %7, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %8, i64 noundef range(i64 0, 3) %9, ptr noundef %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i = alloca [48 x i8], align 8          ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [200 x i8], align 8               ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 5 uses
  %i.i = alloca [200 x i8], align 8               ; 5 uses
  %i.j = alloca [128 x i8], align 8               ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [200 x i8], align 8               ; 23 uses
  %i.w = alloca [16 x i8], align 8                ; 3 uses
  store i64 %9, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %10, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMCslqCZk5GUYvi_9toolchainNtB2_4Tool4path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, i8 noundef 0)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.bc
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsM5evIHPibA_17crossbeam_channel7channel6SenderNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner16CargoTestMessageEEB1v_.exit

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6663
  invoke void @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3newNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  %i.ab = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command11current_dirRNtCs9R0CJ7nmiec_5paths7AbsPathECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
          to label %bb.f unwind label %.loopexit.split-lp.i, !noalias !6664 ; 0 uses

.loopexit.i:                                      ; preds = %bb.m, %bb.l, %bb.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.i:                             ; preds = %bb.g, %bb.f, %.noexc
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process7CommandECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(200) %i.e) #30
          to label %.thread unwind label %bb.n, !noalias !6665

bb.f:                                             ; preds = %.noexc
  %i.ac = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3envReBP_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 19, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp.i, !noalias !6664 ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6663
  invoke void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBN_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
          to label %bb.h unwind label %.loopexit.split-lp.i, !noalias !6665

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !6663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6663
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %bb.h
  %i.ad = invoke { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCshzWfHUSfYae_4core6option6OptionBK_EENtNtNtNtB1r_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.j unwind label %.loopexit.i, !noalias !6665 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0      ; 3 uses
  %i.af = extractvalue { ptr, ptr } %i.ad, 1      ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ag = load i64, ptr %i.af, align 8, !range !4, !noalias !6665, !noundef !5
  %.not9.i = icmp eq i64 %i.ag, -1
  br i1 %.not9.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3envRNtNtCsbSS6DM8SDEO_5alloc6string6StringBP_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %.backedge unwind label %.loopexit.i, !noalias !6665 ; 0 uses

bb.m:                                             ; preds = %bb.k
  %i.ai = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %.backedge unwind label %.loopexit.i, !noalias !6665 ; 0 uses

.backedge:                                        ; preds = %bb.m, %bb.l
  br label %bb.i

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !6665
  unreachable

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.v, ptr noundef nonnull align 8 dereferenceable(200) %i.e, i64 200, i1 false), !noalias !6666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ak = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3envReBP_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @867, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @868, i64 noundef 1)
          to label %bb.q unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread, %bb.ad, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.aj, %bb.ai, %bb.ae, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.x, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o
  %.sroa.031.2 = phi i1 [ false, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread ], [ true, %bb.aw ], [ true, %bb.av ], [ true, %bb.au ], [ true, %bb.as ], [ true, %bb.ar ], [ true, %bb.aq ], [ true, %bb.ap ], [ true, %bb.ao ], [ true, %bb.x ], [ true, %bb.v ], [ true, %bb.ae ], [ true, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit ], [ true, %bb.ad ], [ true, %bb.am ], [ true, %bb.aj ], [ true, %bb.ai ], [ true, %bb.q ], [ true, %bb.o ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ]
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.q:                                             ; preds = %bb.o
  %i.am = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @869, i64 noundef 14)
          to label %bb.r unwind label %bb.p       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.an = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %bb.s unwind label %bb.p       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ao = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @870, i64 noundef 9)
          to label %bb.t unwind label %bb.p       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ap = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %8)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 8, !range !61, !noundef !5 ; 3 uses
  %i.as = icmp ne i8 %i.ar, 3
  call void @llvm.assume(i1 %i.as)
  %11 = add nsw i8 %i.ar, -2                      ; 2 uses
  %i.at = icmp samesign ult i8 %i.ar, 2
  %12 = icmp eq i8 %11, 1
  %13 = select i1 %i.at, i1 true, i1 %12
  br i1 %13, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.au = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @871, i64 noundef 5)
          to label %bb.x unwind label %bb.p       ; 0 uses

bb.w:                                             ; preds = %bb.u
  switch i8 %11, label %bb.y [
    i8 0, label %bb.ad
    i8 1, label %14
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ab
    i8 5, label %bb.ac
    i8 6, label %bb.ag
  ]

bb.x:                                             ; preds = %bb.ak, %bb.ah, %bb.ag, %bb.al, %bb.an, %bb.v, %bb.af
  %i.av = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @880, i64 noundef 14)
          to label %bb.ao unwind label %bb.p      ; 0 uses

bb.y:                                             ; preds = %bb.w
  unreachable

14:                                               ; preds = %bb.w
  br label %bb.ad

bb.z:                                             ; preds = %bb.w
  br label %bb.ad

bb.aa:                                            ; preds = %bb.w
  br label %bb.ad

bb.ab:                                            ; preds = %bb.w
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w
  br label %bb.ad

bb.ad:                                            ; preds = %14, %bb.w, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sroa.11.0 = phi i64 [ 12, %bb.ac ], [ 3, %bb.w ], [ 10, %14 ], [ 7, %bb.z ], [ 4, %bb.aa ], [ 5, %bb.ab ]
  %.sroa.03.0 = phi ptr [ @876, %bb.ac ], [ @872, %bb.w ], [ @873, %14 ], [ @874, %bb.z ], [ @803, %bb.aa ], [ @875, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %.sroa.03.0, ptr %i.t, align 8, !captures !6667
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.11.0, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.435.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @877, ptr noundef nonnull %i.r)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.p

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ax = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.ae unwind label %bb.p      ; 0 uses

bb.ae:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.az = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.af unwind label %bb.p      ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.x

bb.ag:                                            ; preds = %bb.w
  %i.ba = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bb = icmp ult i64 %i.ba, 4
  br i1 %i.bb, label %bb.ah, label %bb.x

bb.ah:                                            ; preds = %bb.ag
  %i.bc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11test_runnerNtB7_15CargoTestHandle3new10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bc, label %bb.ai [
    i8 0, label %bb.x
    i8 1, label %bb.aj
    i8 2, label %bb.aj
  ], !prof !6668

bb.ai:                                            ; preds = %bb.ah
  %i.bd = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11test_runnerNtB7_15CargoTestHandle3new10___CALLSITE)
          to label %bb.ak unwind label %bb.p      ; 2 uses

bb.aj:                                            ; preds = %bb.ah, %bb.ah, %bb.ak
  %.sroa.012.0 = phi i8 [ %i.bd, %bb.ak ], [ %i.bc, %bb.ah ], [ %i.bc, %bb.ah ]
  %i.be = load ptr, ptr @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11test_runnerNtB7_15CargoTestHandle3new10___CALLSITE, align 8, !nonnull !5, !align !20, !noundef !5
  %i.bf = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.be, i8 noundef %.sroa.012.0)
          to label %bb.al unwind label %bb.p

bb.ak:                                            ; preds = %bb.ai
  %i.bg = icmp eq i8 %i.bd, 0
  br i1 %i.bg, label %bb.x, label %bb.aj

bb.al:                                            ; preds = %bb.aj
  br i1 %i.bf, label %bb.am, label %bb.x

bb.am:                                            ; preds = %bb.al
  %i.bh = load ptr, ptr @_RNvNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11test_runnerNtB7_15CargoTestHandle3new10___CALLSITE, align 8, !nonnull !5, !align !20, !noundef !5 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.aq, ptr %i.o, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsZ_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_10TargetKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  store ptr @878, ptr %i.p, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.bj, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @879, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %.sroa.014.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.q, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8
  %.sroa.014.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %.sroa.014.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.an unwind label %bb.p

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.x

bb.ao:                                            ; preds = %bb.x
  %i.bl = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @881, i64 noundef 15)
          to label %bb.ap unwind label %bb.p      ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMsh_Cs9R0CJ7nmiec_5pathsNtB6_7AbsPath4joinReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @882, i64 noundef 10)
          to label %bb.aq unwind label %bb.p

bb.aq:                                            ; preds = %bb.ap
  %i.bm = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.ar unwind label %bb.p      ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !5
  invoke void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB2_12CargoOptions16apply_on_command(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef readonly captures(address, read_provenance) %6, i64 %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 %i.bq)
          to label %bb.as unwind label %bb.p

bb.as:                                            ; preds = %bb.ar
  %i.br = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @883, i64 noundef 2)
          to label %bb.at unwind label %bb.p      ; 0 uses

bb.at:                                            ; preds = %bb.as
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bs = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.av unwind label %bb.p      ; 0 uses

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @884, ptr %i.m, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 2, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @885, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 16, ptr %i.bv, align 8
  %i.bw = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command4argsARej2_BR_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.aw unwind label %bb.p      ; 0 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bx = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 13)
          to label %bb.ax unwind label %bb.p      ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cb = load i64, ptr %i.by, align 8, !range !21, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !5 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 384307168202282326
  call void @llvm.assume(i1 %i.ce)
  %.idx = mul nuw nsw i64 %i.cd, 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.ca, ptr %i.l, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.ca, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.cb, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.cf, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph: ; preds = %bb.ax
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit

bb.ay:                                            ; preds = %bb.az
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.dg unwind label %bb.cg

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph, %bb.df
  %i.ci = phi ptr [ %i.ca, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.lr.ph ], [ %i.fi, %bb.df ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6669)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr %i.cj, ptr %.sroa.416.0..sroa_idx, align 8, !alias.scope !6669, !noalias !6670
  %.sroa.0145.0.copyload146 = load i64, ptr %i.ci, align 8, !noalias !6669 ; 2 uses
  %.not51 = icmp eq i64 %.sroa.0145.0.copyload146, -1
  br i1 %.not51, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread, label %bb.az

bb.az:                                            ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit
  %.sroa.7.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.0145.0.copyload146, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx147, i64 16, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.df unwind label %bb.ay     ; 0 uses

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit, %bb.df, %bb.ax
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit81 unwind label %bb.p

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit81: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.i, ptr noundef nonnull align 8 dereferenceable(200) %i.v, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !6671)
  call void @llvm.experimental.noalias.scope.decl(metadata !6672)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6674
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %8)
          to label %.noexc82 unwind label %.body83.thread169

.body83.thread169:                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit81
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body83.thread

end_hunk_0
