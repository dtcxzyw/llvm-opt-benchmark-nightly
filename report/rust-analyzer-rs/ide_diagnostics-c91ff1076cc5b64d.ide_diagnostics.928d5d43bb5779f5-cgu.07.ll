Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_diagnostics-c91ff1076cc5b64d.ide_diagnostics.928d5d43bb5779f5-cgu.07?download=true
inline.NumInlined: 1144
inline.NumDeleted: 495
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXNvXNtNtCs8yjYO7b73r2_10serde_json5value2deNtB8_5ValueNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECscA5P7HRgTCP_15ide_diagnostics:bb.a
  br label %.loopexit69

bb.n:                                             ; preds = %.noexc16
  %i.ak = load ptr, ptr %i.ah, align 8, !noalias !535, !nonnull !4, !align !322, !noundef !4
  br label %.thread55

bb.o:                                             ; preds = %.noexc16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !535
  store i64 %i.aj, ptr %i.b, align 8, !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !535
  invoke void @_RINvXs9_NtCs8yjYO7b73r2_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsjQbM3MYDIrM_10serde_core2de9MapAccess15next_value_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDataNtNtB8_5value5ValueEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.q unwind label %bb.p, !noalias !539

bb.p:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #34
          to label %.body unwind label %bb.u, !noalias !539

bb.q:                                             ; preds = %bb.o
  %i.am = load i64, ptr %i.a, align 8, !range !527, !noalias !535, !noundef !4
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !535, !nonnull !4, !align !322, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !535
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.s, !noalias !539

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.t, !noalias !539

bb.t:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !539
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !535
  br label %.thread55

bb.u:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !539
  unreachable

.thread55:                                        ; preds = %.noexc19, %bb.n
  %.sroa.9.0.ph = phi ptr [ %i.ak, %bb.n ], [ %i.ap, %.noexc19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !531
  br label %.loopexit68

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.13.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !535
  %.sroa.044.0.copyload = load i64, ptr %i.b, align 8, !noalias !535 ; 2 uses
  %.sroa.445.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i, align 8, !noalias !535 ; 2 uses
  %i.at = load i64, ptr %.sroa.546.0..sroa_idx, align 8, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !531
  switch i64 %.sroa.044.0.copyload, label %bb.w [
    i64 -2, label %.loopexit68
    i64 -1, label %.loopexit69
  ]

.loopexit68:                                      ; preds = %bb.v, %.thread55
  %.sroa.9.058 = phi ptr [ %.sroa.9.0.ph, %.thread55 ], [ %.sroa.445.0.copyload, %bb.v ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.058, ptr %i.au, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.044.0.copyload, ptr %i.g, align 8
  store ptr %.sroa.445.0.copyload, ptr %.sroa.35.0..sroa_idx6, align 8
  store i64 %i.at, ptr %.sroa.35.sroa.2.0..sroa.35.0..sroa_idx6.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueE11insert_fullCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.d, ptr noalias nofree noundef align 8 dereferenceable(72) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %.sroa.13.sroa.7)
          to label %bb.x unwind label %.loopexit

.loopexit69:                                      ; preds = %bb.v, %.thread64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.av = load i64, ptr %i.f, align 8, !range !527, !alias.scope !540, !noundef !4
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECscA5P7HRgTCP_15ide_diagnostics.exit21, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECscA5P7HRgTCP_15ide_diagnostics.exit21 unwind label %.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECscA5P7HRgTCP_15ide_diagnostics.exit21: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.z:                                             ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECscA5P7HRgTCP_15ide_diagnostics.exit.i, %bb.d, %.loopexit69
  ret void

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit, %.loopexit68
  invoke void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.641.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.742.0..sroa_idx, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtBG_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j) #34
          to label %.thread unwind label %bb.ae

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %bb.aa
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.thread unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs3gqD4ldeioo_8indexmap3map8IndexMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTablejEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtB7_6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.z

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscA5P7HRgTCP_15ide_diagnostics.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aa

bb.af:                                            ; preds = %bb.ag, %.body, %bb.f
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %bb.ac, %bb.ab, %.body, %bb.ag
  %.pn1149 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bc, %bb.ag ], [ %i.ax, %bb.ab ], [ %i.ay, %bb.ac ]
  resume { ptr, i32 } %.pn1149

bb.ag:                                            ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #34
          to label %.thread unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1B_13source_change11SnippetEditEEINtNtB2k_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherB15_EEEINtNtNtNtB2k_4iter6traits7collect12FromIteratorTB15_B1w_EE9from_iterINtNtNtB4Z_7sources4once4OnceB5D_EECscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.val.i = load i64, ptr %i.f, align 8, !noalias !546 ; 6 uses
  %.sroa.0.1.in.i = icmp ne i64 %.val.i, -1
  %.sroa.0.1.i = zext i1 %.sroa.0.1.in.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  invoke void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1m_13source_change11SnippetEditEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1h_INtNtB25_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBQ_EEE0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %.sroa.0.1.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g)
          to label %bb.b unwind label %bb.n, !noalias !548

bb.b:                                             ; preds = %bb.a
  %.sroa.08.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !546
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %.not23.i.i.i = icmp eq i64 %.val.i, -1
  br i1 %.not23.i.i.i, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.8.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.011.0.extract.trunc.i.i.i = trunc i64 %.sroa.08.0.copyload.i to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !555
  store i64 %.val.i, ptr %i.c, align 8, !noalias !562
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !555
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !555
  store i32 %.sroa.011.0.extract.trunc.i.i.i, ptr %i.a, align 4, !noalias !566
  %i.k = invoke noundef i64 @_RINvYINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherNtCs4sl5YdnrCxp_3vfs6FileIdEENtB6_11BuildHasher8hash_oneRB1A_ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.k, !noalias !569 ; 2 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1m_13source_change11SnippetEditEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1h_INtNtB25_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBQ_EEE0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !noalias !569

.noexc.i.i.i.i.i.i:                               ; preds = %bb.d
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !570, !noalias !573, !nonnull !4, !noundef !4 ; 8 uses
  %.val5.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !570, !noalias !573, !noundef !4 ; 4 uses
  %i.l = lshr i64 %i.k, 57
  %i.m = trunc nuw nsw i64 %i.l to i8             ; 3 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.noexc.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i = phi i64 [ %i.k, %.noexc.i.i.i.i.i.i ], [ %i.an, %bb.h ]
  %.sroa.4.0.i.i.i.i.i.i.i.i = phi i64 [ undef, %.noexc.i.i.i.i.i.i ], [ %.sroa.4.120.i.i.i.i.i.i.i.i, %bb.h ]
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i.i.i.i.i ], [ %.sroa.04.122.i.i.i.i.i.i.i.i, %bb.h ]
  %i.p = phi i64 [ 0, %.noexc.i.i.i.i.i.i ], [ %i.am, %bb.h ]
  %.sroa.0.017.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.q, align 1, !noalias !576 ; 3 uses
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i, %i.o
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not28.i.i.i.i.i.i.i.i = icmp eq i16 %i.s, 0
  br i1 %.not28.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e, %bb.f
  %.sroa.01.029.i.i.i.i.i.i.i.i = phi i16 [ %i.ac, %bb.f ], [ %i.s, %bb.e ] ; 3 uses
  %i.t = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i.i.i.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i, %i.u
  %i.w = and i64 %i.v, %.val5.i.i.i.i.i.i.i
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [64 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -64
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.z, align 4, !noalias !579, !noundef !4
  %i.aa = icmp eq i32 %.val2.i.i.i.i.i.i.i.i, %.sroa.011.0.extract.trunc.i.i.i
  br i1 %i.aa, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1j_13source_change11SnippetEditEEINtNtB22_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBN_EEE6insertCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i, label %bb.f, !prof !85

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.f, %bb.e
  %.not12.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i, 1
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.g, !prof !86

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ab = add i16 %.sroa.01.029.i.i.i.i.i.i.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.01.029.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ad = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %.thread24.i.i.i.i.i.i.i.i, !prof !86

.thread24.i.i.i.i.i.i.i.i:                        ; preds = %bb.g
  %i.af = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ae, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %.val5.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %.thread24.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %.thread24.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.i, !prof !86

bb.h:                                             ; preds = %.thread.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.04.122.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.4.120.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ undef, %bb.g ]
  %i.am = add i64 %i.p, 16                        ; 2 uses
  %i.an = add i64 %i.am, %.sroa.0.017.i.i.i.i.i.i.i.i
  br label %bb.e

bb.i:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !582, !noundef !4 ; 2 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %bb.j, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1j_13source_change11SnippetEditEEINtNtB22_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBN_EEE6insertCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i.i, !prof !86

bb.j:                                             ; preds = %bb.i
  %.val62.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i, align 16, !noalias !582
  %i.ar = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.i23.i.i.i.i.i.i.i.i = icmp ne i16 %i.as, 0
  %i.at = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.au
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 1, !noalias !583
  br label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1j_13source_change11SnippetEditEEINtNtB22_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBN_EEE6insertCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1j_13source_change11SnippetEditEEINtNtB22_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBN_EEE6insertCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.av = phi i8 [ %.pre.i.i.i.i.i.i, %bb.j ], [ %i.ap, %bb.i ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i = phi i64 [ %i.au, %bb.j ], [ %.sroa.4.121.i.i.i.i.i.i.i.i, %bb.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i
  %i.ax = and i8 %i.av, 1
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i, -16
  %i.ba = and i64 %i.az, %.val5.i.i.i.i.i.i.i
  store i8 %i.m, ptr %i.aw, align 1, !noalias !583
  %i.bb = getelementptr i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store i8 %i.m, ptr %i.bc, align 1, !noalias !583
  %i.bd = load <2 x i64>, ptr %i.i, align 8, !alias.scope !588, !noalias !589
  %i.be = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ay, i64 0
  %i.bf = sub <2 x i64> %i.bd, %i.be
  store <2 x i64> %i.bf, ptr %i.i, align 8, !alias.scope !588, !noalias !589
  %i.bg = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds [64 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -64
  store i32 %.sroa.011.0.extract.trunc.i.i.i, ptr %i.bi, align 8, !noalias !590
  %.sroa.4.i.i.i.sroa.3.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.bh, i64 -56
  store i64 %.val.i, ptr %.sroa.4.i.i.i.sroa.3.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx.i.i.i, align 8, !noalias !590
  %.sroa.4.i.i.i.sroa.4.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.bh, i64 -48
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.i.i.i.sroa.4.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !555
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtB1H_13source_change11SnippetEditEEEEECscA5P7HRgTCP_15ide_diagnostics.exit3.loopexit.i.i.i

bb.k:                                             ; preds = %bb.d, %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtBG_13source_change11SnippetEditEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #34
          to label %.body unwind label %bb.l, !noalias !591

bb.l:                                             ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !591
  unreachable

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1j_13source_change11SnippetEditEEINtNtB22_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBN_EEE6insertCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.y, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.bm, i64 56, i1 false), !noalias !592
  store i64 %.val.i, ptr %i.bm, align 8, !noalias !593
  %.sroa.8.8..sroa_idx15.i.i.i = getelementptr inbounds i8, ptr %i.y, i64 -48
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.8..sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.bn, i64 48, i1 false)
  %.pr.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !594, !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !555
  %i.bo = icmp eq i64 %.pr.i.i.i.i.i, -1
  br i1 %i.bo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtB1H_13source_change11SnippetEditEEEEECscA5P7HRgTCP_15ide_diagnostics.exit3.loopexit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1j_13source_change11SnippetEditEEINtNtB22_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBN_EEE6insertCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtBG_13source_change11SnippetEditEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtB1H_13source_change11SnippetEditEEEEECscA5P7HRgTCP_15ide_diagnostics.exit3.loopexit.i.i.i unwind label %bb.q

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtB1H_13source_change11SnippetEditEEEEECscA5P7HRgTCP_15ide_diagnostics.exit3.loopexit.i.i.i: ; preds = %bb.m, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1j_13source_change11SnippetEditEEINtNtB22_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBN_EEE6insertCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i.i, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1j_13source_change11SnippetEditEEINtNtB22_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBN_EEE6insertCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !555
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = icmp eq i64 %.val.i, -1
  br i1 %i.bq, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtBG_13source_change11SnippetEditEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f)
          to label %.body unwind label %bb.p, !noalias !548

bb.p:                                             ; preds = %bb.o
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !548
  unreachable

bb.q:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.n, %bb.o, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bs, %bb.q ], [ %i.bp, %bb.n ], [ %i.bk, %bb.k ], [ %i.bp, %bb.o ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1l_13source_change11SnippetEditEEEENtNtNtB24_3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtB1H_13source_change11SnippetEditEEEEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtB1H_13source_change11SnippetEditEEEEECscA5P7HRgTCP_15ide_diagnostics.exit3.loopexit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.s:                                             ; preds = %.body
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtB1H_13source_change11SnippetEditEEEEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorTB15_B17_EE9from_iterINtNtNtB2D_8adapters3map3MapINtB7_8IntoIterB15_B17_ENCNvB19_15build_lints_maps0_0EEB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val.i = load i64, ptr %i.c, align 8, !noalias !597
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d)
          to label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintENCNvB1R_15build_lints_maps0_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB3S_7HashMapB1N_B1P_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB35_7collect6ExtendTB1N_B1P_EE6extendB3_E0EB1R_.exit.i unwind label %bb.b, !noalias !601

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintENCNvB1R_15build_lints_maps0_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB3S_7HashMapB1N_B1P_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB35_7collect6ExtendTB1N_B1P_EE6extendB3_E0EB1R_.exit.i: ; preds = %bb.a
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintENCNvB1X_15build_lints_maps0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB37_8for_each4callTB1T_B1V_ENCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4u_7HashMapB1T_B1V_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB3b_7collect6ExtendB4a_E6extendBN_E0E0EB1X_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.e unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.body unwind label %bb.c, !noalias !601

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !601
  unreachable

bb.d:                                             ; preds = %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintENCNvB1R_15build_lints_maps0_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB3S_7HashMapB1N_B1P_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB35_7collect6ExtendTB1N_B1P_EE6extendB3_E0EB1R_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.e, %bb.b ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintENCNvB29_15build_lints_maps0_0EEB29_.exit unwind label %bb.f

bb.e:                                             ; preds = %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintENCNvB1R_15build_lints_maps0_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB3S_7HashMapB1N_B1P_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB35_7collect6ExtendTB1N_B1P_EE6extendB3_E0EB1R_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintENCNvB29_15build_lints_maps0_0EEB29_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorTB15_B17_EE9from_iterINtNtNtB2D_8adapters3map3MapINtNtNtB2F_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints4LintENCNvB19_15build_lints_map0EEB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintEE7reserveNCINvNtB8_3map11make_hasherBQ_BS_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints4LintENCNvCscA5P7HRgTCP_15ide_diagnostics15build_lints_map0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB32_8for_each4callTReNtB2e_9BuiltLintENCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB4z_7HashMapB46_B48_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB36_7collect6ExtendB45_E6extendBN_E0E0EB2e_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_BR_EE6extendINtNtNtB2n_8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints4LintENCNvBT_15build_lints_map0EEBT_.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit unwind label %bb.c

_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_BR_EE6extendINtNtNtB2n_8adapters3map3MapINtNtNtB2p_5slice4iter4IterNtNtNtCs6oosyzwIepl_6ide_db9generated5lints4LintENCNvBT_15build_lints_map0EEBT_.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapReNtCscA5P7HRgTCP_15ide_diagnostics9BuiltLintNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapReuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB1H_8adapters3map3MapINtNtNtB1J_5array4iter8IntoIterBP_Kj0_ENCINvXs8_NtB9_3setINtB3V_7HashSetBP_BS_EIB1B_BP_E6extendABP_B3I_E0EECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtBc_5array4iter8IntoIterReKj0_ENCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB1B_7HashSetB1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtBa_6traits7collect6ExtendB1l_E6extendAB1l_B1o_E0ENtNtB3b_8iterator8Iterator8for_eachNCINvXs1i_NtB1D_3mapINtB4J_7HashMapB1l_uB2o_EIB37_TB1l_uEE6extendB3_E0ECscA5P7HRgTCP_15ide_diagnostics.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  %i.d = sub nuw i64 %2, %1                       ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %.sroa.0.0 = select i1 %i.c, i64 0, i64 %i.e
  %.sroa.0.1 = sub i64 %i.d, %.sroa.0.0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f)
  tail call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj0_ENCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB1H_7HashSetB1r_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtBa_6traits7collect6ExtendB1r_E6extendAB1r_B1u_E0ENtNtB3h_8iterator8Iterator4folduNCINvNvB46_8for_each4callTB1r_uENCINvXs1i_NtB1J_3mapINtB5i_7HashMapB1r_uB2u_EIB3d_B51_E6extendBN_E0E0ECscA5P7HRgTCP_15ide_diagnostics(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvXs1v_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB7_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
