Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.10?download=true
inline.NumInlined: 1070
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvXs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7UnigramNtNtBb_9tokenizer5Model4save:bb.a
bb.p:                                             ; preds = %.noexc6.i, %.noexc5.i, %.noexc4.i, %.noexc3.i
  %.sroa.0.0.i.i.ph.i = phi ptr [ %i.ak, %.noexc3.i ], [ %i.al, %.noexc4.i ], [ %i.an, %.noexc5.i ], [ %i.aq, %.noexc6.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1433
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.q, !noalias !1432

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.r, !noalias !1432

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1432
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.f

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1432
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1432
  unreachable

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1433
  %.sroa.072.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %i.ag, align 8 ; 2 uses
  %.sroa.9.0.copyload = load i64, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1432
  %i.ax = icmp eq i64 %.sroa.072.0.copyload, -1
  br i1 %i.ax, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.thread, %bb.t
  %.sroa.6.076 = phi ptr [ %.sroa.0.0.i.i.ph.i, %.thread ], [ %.sroa.6.0.copyload, %bb.t ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.076) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sroa.6.076, ptr %i.g, align 8, !noalias !1438
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.ay = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 8, i64 noundef range(i64 1, 9) 8) #27 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.v, label %bb.al, !prof !11

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #25
          to label %.noexc64 unwind label %bb.w

.noexc64:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #28
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.y:                                             ; preds = %bb.t
  store i64 %.sroa.072.0.copyload, ptr %i.i, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx5, align 8
  %.sroa.8.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.8.0..sroa_idx7, align 8
  %i.bc = invoke noundef ptr @_RINvNtCs2AWtUsOyxgP_3std2fs5writeRNtNtB4_4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.z unwind label %bb.f       ; 3 uses

bb.z:                                             ; preds = %bb.y
  %.not53 = icmp eq ptr %i.bc, null
  br i1 %.not53, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.bc, ptr %i.f, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.bd = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 8, i64 noundef range(i64 1, 9) 8) #27 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.ab, label %bb.ah, !prof !11

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #25
          to label %.noexc65 unwind label %bb.ac

.noexc65:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #28
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ae:                                            ; preds = %bb.z
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.bh = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 24, i64 noundef range(i64 1, 9) 8) #27 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.af, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit68, !prof !11

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #25
          to label %.noexc67 unwind label %bb.f

.noexc67:                                         ; preds = %bb.af
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit68: ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.ah:                                            ; preds = %bb.aa
  store ptr %i.bc, ptr %i.bd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %bb.ah
  %.sink90 = phi ptr [ %i.ay, %bb.al ], [ %i.bd, %bb.ah ]
  %.sink = phi ptr [ @173, %bb.al ], [ @171, %bb.ah ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink90, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.bk, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread77 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.ai
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.ag

bb.al:                                            ; preds = %bb.u
  store ptr %.sroa.6.076, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ai

bb.am:                                            ; preds = %.body
  br i1 %.sroa.021.1.lpad-body, label %bb.ao, label %.thread77

bb.an:                                            ; preds = %bb.ao, %.body
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

.thread77:                                        ; preds = %bb.aj, %bb.ao, %bb.am
  %.pn80 = phi { ptr, i32 } [ %eh.lpad-body, %bb.am ], [ %eh.lpad-body, %bb.ao ], [ %i.bl, %bb.aj ]
  resume { ptr, i32 } %.pn80

bb.ao:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.n) #28
          to label %.thread77 unwind label %bb.an
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7UnigramNtNtBb_9tokenizer5Model8tokenize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 15 uses
  %i.k = alloca [8 x i8], align 8                 ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram6encode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.o = load i64, ptr %i.l, align 8, !range !12, !noundef !5 ; 3 uses
  %i.p = icmp eq i64 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  store i64 %i.o, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.t, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.cast = ptrtoint ptr %i.t to i64               ; 3 uses
  %i.w = icmp ult ptr %i.t, inttoptr (i64 384307168202282326 to ptr)
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.cast, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
          to label %bb.d unwind label %bb.ao

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !21, !noundef !5 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.ab, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #25
          to label %bb.an unwind label %bb.ao

bb.f:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %i.ae = icmp uge i64 %i.aa, %.cast
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.aa, ptr %i.j, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  store i64 0, ptr %i.ag, align 8
  %.idx = mul nuw nsw i64 %.cast, 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.r, ptr %i.i, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.r, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.o, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.ah, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.ai = icmp eq ptr %i.t, null
  br i1 %i.ai, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph: ; preds = %bb.f
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit

.body51:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.ae, %bb.w, %bb.ak, %.thread87
  %.pn.pn = phi { ptr, i32 } [ %.pn90, %.thread87 ], [ %i.dh, %bb.w ], [ %i.ek, %bb.ak ], [ %i.ea, %bb.ae ], [ %lpad.loopexit102, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.z

.loopexit:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %lpad.loopexit102 = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.loopexit.split-lp:                               ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i56
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body51

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph, %.backedge
  %i.ar = phi ptr [ %i.r, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.lr.ph ], [ %i.dk, %.backedge ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.as, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !1464, !noalias !1465
  %.sroa.0.0.copyload69 = load i64, ptr %i.ar, align 8, !noalias !1464 ; 2 uses
  %.sroa.9.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx70, i64 16, i1 false), !noalias !1464
  %.not = icmp eq i64 %.sroa.0.0.copyload69, -1
  br i1 %.not, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.0.0.copyload69, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.at = load i64, ptr %i.aj, align 8, !noundef !5 ; 3 uses
  store i64 %i.at, ptr %i.g, align 8
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  %i.av = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.aw = add i64 %i.av, %i.at
  %i.ax = load ptr, ptr %i.n, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !1466, !noalias !1467, !noundef !5
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  %i.bd = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %.noexc unwind label %.thread91.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.be = lshr i64 %i.bd, 57
  %i.bf = trunc nuw nsw i64 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !1470, !noalias !1471, !noundef !5 ; 2 uses
  %i.bi = load ptr, ptr %i.ay, align 8, !alias.scope !1470, !noalias !1471, !nonnull !5, !noundef !5 ; 2 uses
  %i.bj = insertelement <16 x i8> poison, i8 %i.bf, i64 0
  %i.bk = shufflevector <16 x i8> %i.bj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.cb, %bb.k ]
  %.pn.i.i.i = phi i64 [ %i.bd, %.noexc ], [ %i.cc, %bb.k ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.bh   ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.bl, align 1, !noalias !1472 ; 2 uses
  %i.bm = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.bk
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ca, %bb.j ], [ %i.bn, %bb.i ] ; 3 uses
  %i.bo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.01.0.i.i.i, %i.bp
  %i.br = and i64 %i.bq, %i.bh
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -32
  %i.bv = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %.noexc45 unwind label %.thread91.loopexit

.noexc45:                                         ; preds = %.lr.ph.i.i
  br i1 %i.bv, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.j, !prof !30

._crit_edge.i.i:                                  ; preds = %bb.j, %bb.i
  %i.bw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = icmp eq i16 %i.bx, 0
  br i1 %i.by, label %bb.k, label %select.unfold.loopexit, !prof !11

bb.j:                                             ; preds = %.noexc45
  %i.bz = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ca = and i16 %i.bz, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.cb = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.cc = add i64 %.sroa.01.0.i.i.i, %i.cb
  br label %bb.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit, %.backedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit47 unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body51, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %.pn.pn, %.body51 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #28
          to label %.thread unwind label %bb.z

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit60, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit47: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

.thread91.loopexit:                               ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

.thread91.loopexit.split-lp.loopexit:             ; preds = %bb.o, %bb.h, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread
  %lpad.loopexit99 = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

.thread91.loopexit.split-lp.loopexit.split-lp:    ; preds = %bb.ac
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc45
  %i.ce = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.cf = load i32, ptr %i.ce, align 4, !noundef !5
  br label %bb.ai

select.unfold.loopexit:                           ; preds = %._crit_edge.i.i
  %.pre = load ptr, ptr %i.n, align 8
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.loopexit, %bb.g
  %i.cg = phi ptr [ %.pre, %select.unfold.loopexit ], [ %i.ax, %bb.g ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 322
  %i.ci = load i8, ptr %i.ch, align 2, !range !4, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.r, %select.unfold
  %i.ck = phi ptr [ %.pre111, %bb.r ], [ %i.cg, %select.unfold ] ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !9, !noundef !5
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %bb.aa, label %bb.ab

bb.o:                                             ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cn = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.co = load i64, ptr %i.aj, align 8, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  store ptr %i.cn, ptr %i.e, align 8
  store ptr %i.cp, ptr %i.ak, align 8
  store ptr %i.n, ptr %i.al, align 8
  store ptr %i.k, ptr %.sroa.414.0..sroa_idx, align 8
  store ptr %i.g, ptr %.sroa.515.0..sroa_idx, align 8
  invoke void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapNtNtNtB6_3str4iter5BytesNCNvXs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB1C_7UnigramNtNtB1I_9tokenizer5Model8tokenize0ENtB2J_5TokenINtNtB6_6option6OptionNtNtB6_7convert10InfallibleENCINvXsI_B3v_IB3t_INtNtCscdodAO9FK5_5alloc3vec3VecB3g_EEINtNtNtB4_6traits7collect12FromIteratorIB3t_B3g_EE9from_iterBQ_E0B4y_EB1I_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.e)
          to label %bb.p unwind label %.thread91.loopexit.split-lp.loopexit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cq = load i64, ptr %i.f, align 8, !range !12, !noundef !5 ; 2 uses
  %.not38 = icmp eq i64 %i.cq, -1
  br i1 %.not38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cs = load i64, ptr %i.an, align 8, !noundef !5 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 192153584101141163
  call void @llvm.assume(i1 %i.ct)
  %.idx106 = mul nuw nsw i64 %i.cs, 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.cr, ptr %i.d, align 8
  store ptr %i.cr, ptr %.sroa.417.0..sroa_idx, align 8
  store i64 %i.cq, ptr %.sroa.518.0..sroa_idx, align 8
  store ptr %i.cu, ptr %.sroa.619.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.cv = icmp eq i64 %i.cs, 0
  br i1 %i.cv, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pre111 = load ptr, ptr %i.n, align 8
  br label %bb.n

.body:                                            ; preds = %bb.u
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.thread87 unwind label %bb.z

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit: ; preds = %bb.q, %bb.y
  %i.cw = phi ptr [ %i.dn, %bb.y ], [ %i.cu, %bb.q ]
  %i.cx = phi ptr [ %i.dm, %bb.y ], [ %i.cr, %bb.q ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 2 uses
  store ptr %i.cy, ptr %.sroa.417.0..sroa_idx, align 8, !alias.scope !1473, !noalias !1474
  %.sroa.071.0.copyload72 = load i64, ptr %i.cx, align 8, !noalias !1473 ; 2 uses
  %.sroa.7.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx74, i64 40, i1 false), !noalias !1473
  %.not39 = icmp eq i64 %.sroa.071.0.copyload72, -1
  br i1 %.not39, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, label %bb.s

bb.s:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.071.0.copyload72, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx73, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  %i.cz = load i64, ptr %i.ag, align 8, !alias.scope !1475, !noalias !1476, !noundef !5 ; 3 uses
  %i.da = load i64, ptr %i.j, align 8, !range !16, !alias.scope !1475, !noalias !1476, !noundef !5
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %._crit_edge unwind label %bb.u, !noalias !1476

._crit_edge:                                      ; preds = %bb.t
  %.pre109 = load ptr, ptr %.sroa.619.0..sroa_idx, align 8, !alias.scope !1477, !noalias !1474
  %.pre110 = load ptr, ptr %.sroa.417.0..sroa_idx, align 8, !alias.scope !1477, !noalias !1474
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #28
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit, %bb.y, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1s_.exit50 unwind label %.thread91.loopexit.split-lp.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1s_.exit50: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.de = load i64, ptr %i.k, align 8, !noundef !5
  %i.df = load i64, ptr %i.g, align 8, !noundef !5
  %i.dg = add i64 %i.df, %i.de
  store i64 %i.dg, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.w

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1s_.exit50
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body51 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1s_.exit50
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.backedge unwind label %.loopexit

.backedge:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.dj = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1478, !noalias !1465, !nonnull !5, !noundef !5
  %i.dk = load ptr, ptr %.sroa.58.0..sroa_idx, align 8, !alias.scope !1478, !noalias !1465, !nonnull !5, !noundef !5 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dj
  br i1 %i.dl, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit

bb.y:                                             ; preds = %._crit_edge, %bb.s
  %i.dm = phi ptr [ %.pre110, %._crit_edge ], [ %i.cy, %bb.s ] ; 2 uses
  %i.dn = phi ptr [ %.pre109, %._crit_edge ], [ %i.cw, %bb.s ] ; 2 uses
  %i.do = load ptr, ptr %i.af, align 8, !alias.scope !1475, !noalias !1476, !nonnull !5, !noundef !5
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.do, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.dq = add i64 %i.cz, 1
  store i64 %i.dq, ptr %i.ag, align 8, !alias.scope !1475, !noalias !1476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.dr = icmp eq ptr %i.dm, %i.dn
  br i1 %i.dr, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit

bb.z:                                             ; preds = %.body, %.body51, %bb.ao, %.thread87, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aa:                                            ; preds = %bb.n
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = trunc i64 %i.du to i32
  br label %bb.ai

bb.ab:                                            ; preds = %bb.n
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.dw = call noundef dereferenceable_or_null(1) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 1, i64 noundef range(i64 1, 9) 1) #27 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25
          to label %.noexc54 unwind label %.thread91.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i8 2, ptr %i.dw, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dw, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @120, ptr %i.dz, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i56 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body51 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i56: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit60 unwind label %.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit60: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit62 unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit62: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit62
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread unwind label %bb.ah

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit62
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.m

bb.ah:                                            ; preds = %bb.ag
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ai:                                            ; preds = %bb.aa, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.010.0 = phi i32 [ %i.cf, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.dv, %bb.aa ]
  %i.ee = load i64, ptr %i.k, align 8, !noundef !5
  %i.ef = load i64, ptr %i.g, align 8, !noundef !5
  %i.eg = add i64 %i.ef, %i.ee
  store i64 %i.eg, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i32 %.sroa.010.0, ptr %i.ao, align 8
  store i64 %i.av, ptr %i.ap, align 8
  store i64 %i.aw, ptr %i.aq, align 8
  %i.eh = load i64, ptr %i.ag, align 8, !alias.scope !1479, !noalias !1480, !noundef !5 ; 3 uses
  %i.ei = load i64, ptr %i.j, align 8, !range !16, !alias.scope !1479, !noalias !1480, !noundef !5
  %i.ej = icmp eq i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.am unwind label %bb.ak, !noalias !1480

bb.ak:                                            ; preds = %bb.aj
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #28
          to label %.body51 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %i.em = load ptr, ptr %i.af, align 8, !alias.scope !1479, !noalias !1480, !nonnull !5, !noundef !5
  %i.en = getelementptr inbounds nuw [48 x i8], ptr %i.em, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.en, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.eo = add i64 %i.eh, 1
  store i64 %i.eo, ptr %i.ag, align 8, !alias.scope !1479, !noalias !1480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.backedge

.thread87:                                        ; preds = %.thread91.loopexit, %.thread91.loopexit.split-lp.loopexit.split-lp, %.thread91.loopexit.split-lp.loopexit, %.body
  %.pn90 = phi { ptr, i32 } [ %i.dc, %.body ], [ %lpad.loopexit, %.thread91.loopexit ], [ %lpad.loopexit99, %.thread91.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp100, %.thread91.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %.body51 unwind label %bb.z

bb.an:                                            ; preds = %bb.e
  unreachable

.thread:                                          ; preds = %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, %bb.ao
  %.pn4377 = phi { ptr, i32 } [ %.pn.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit ], [ %lpad.thr_comm, %bb.ao ], [ %i.ec, %bb.ag ]
  resume { ptr, i32 } %.pn4377

bb.ao:                                            ; preds = %bb.e, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.m) #28
          to label %.thread unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7UnigramNtNtBb_9tokenizer5Model9get_vocab(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
  call void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @_RINvXs1c_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTB15_mEE9from_iterINtB7_8IntoIterB15_mEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5_8EncodingNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.e ], [ %i.k, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.i) #28
          to label %bb.z unwind label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.h ], [ %i.m, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %bb.b unwind label %bb.y

bb.f:                                             ; preds = %bb.d
end_hunk_0
