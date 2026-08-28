Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.07?download=true
inline.NumInlined: 324
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone4tzif:bb.a
  %i.f = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %1, i64 noundef 1) #23, !noalias !572 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_RNCNvMs2_NtCsb09rMIQFAXO_9jiff_core4utilINtB7_8SmallStrKj1e_E11new_or_heap0Csa9sSWSfjDbm_4jiff.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %1) #26, !noalias !577
  unreachable

_RNCNvMs2_NtCsb09rMIQFAXO_9jiff_core4utilINtB7_8SmallStrKj1e_E11new_or_heap0Csa9sSWSfjDbm_4jiff.exit: ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %0, i64 %1, i1 false), !noalias !577
  br label %bb.f

bb.f:                                             ; preds = %_RNCNvMs2_NtCsb09rMIQFAXO_9jiff_core4utilINtB7_8SmallStrKj1e_E11new_or_heap0Csa9sSWSfjDbm_4jiff.exit, %bb.c
  %.sroa.15.0 = phi i64 [ %.sroa.220.sroa.4.30.insert.insert, %bb.c ], [ undef, %_RNCNvMs2_NtCsb09rMIQFAXO_9jiff_core4utilINtB7_8SmallStrKj1e_E11new_or_heap0Csa9sSWSfjDbm_4jiff.exit ]
  %.sroa.12.0 = phi i64 [ %.15..15..sroa.551.sroa.6.0.copyload, %bb.c ], [ %1, %_RNCNvMs2_NtCsb09rMIQFAXO_9jiff_core4utilINtB7_8SmallStrKj1e_E11new_or_heap0Csa9sSWSfjDbm_4jiff.exit ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %.7..7..sroa.551.sroa.5.0.copyload, %bb.c ], [ %i.f, %_RNCNvMs2_NtCsb09rMIQFAXO_9jiff_core4utilINtB7_8SmallStrKj1e_E11new_or_heap0Csa9sSWSfjDbm_4jiff.exit ] ; 5 uses
  %.sroa.0.059 = phi i8 [ 0, %bb.c ], [ 2, %_RNCNvMs2_NtCsb09rMIQFAXO_9jiff_core4utilINtB7_8SmallStrKj1e_E11new_or_heap0Csa9sSWSfjDbm_4jiff.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB4_8TimeZone5parse(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(address) dereferenceable(232) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.h = load i64, ptr %i.c, align 8, !range !11, !noundef !8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.i, label %bb.h, label %bb.i, !prof !270

bb.h:                                             ; preds = %bb.g
  %.sroa.024.0.copyload = load i64, ptr %i.j, align 8
  %i.k = invoke noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error16jcore_tzif_parse(i64 %.sroa.024.0.copyload)
          to label %bb.m unwind label %bb.o       ; 2 uses

bb.i:                                             ; preds = %bb.g
  %.sroa.422.0.copyload = load ptr, ptr %i.j, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.616.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.523.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.a, i64 7, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.h, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.422.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i8 %.sroa.0.059, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr %.sroa.9.0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store i64 %.sroa.12.0, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store i64 %.sroa.15.0, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !578
  %i.n = call noundef align 8 dereferenceable_or_null(280) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 280, i64 noundef 8) #23, !noalias !578 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.l, !prof !270

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 280) #26
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.b) #22
  br label %.body.thread

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.n, ptr noundef nonnull align 8 dereferenceable(280) %i.b, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr i8, ptr %i.n, i64 20
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EECsa9sSWSfjDbm_4jiff.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.3.0 = phi ptr [ %i.q, %bb.l ], [ %i.k, %bb.m ], [ %i.k, %bb.n ]
  %.sroa.0.0 = phi i64 [ 0, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ]
  %i.r = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, ptr } %i.r, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.s

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = icmp eq i64 %.sroa.12.0, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.t
  br i1 %or.cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EECsa9sSWSfjDbm_4jiff.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef range(i64 1, 0) %.sroa.12.0, i64 noundef 1) #23, !noalias !581
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EECsa9sSWSfjDbm_4jiff.exit

.body.thread:                                     ; preds = %bb.k, %bb.p, %bb.o
  %eh.lpad-body71 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.p ], [ %i.p, %bb.k ], [ %lpad.thr_comm, %bb.o ]
  resume { ptr, i32 } %eh.lpad-body71

bb.o:                                             ; preds = %bb.h, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = icmp eq i64 %.sroa.12.0, 0
  %or.cond76 = select i1 %i.d, i1 true, i1 %i.u
  br i1 %or.cond76, label %.body.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef range(i64 1, 0) %.sroa.12.0, i64 noundef 1) #23, !noalias !586
  br label %.body.thread
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone5posix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 10 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone5parseReECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %i.c = load i8, ptr %i.b, align 8, !range !21, !noundef !8 ; 2 uses
  %i.d = icmp eq i8 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !270

bb.b:                                             ; preds = %bb.a
  %.sroa.019.0.copyload = load i32, ptr %i.e, align 1
  %i.f = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error17jcore_posix_parse(i32 %.sroa.019.0.copyload) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.e, i64 7, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.618.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8, !noalias !591
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !591
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.c, ptr %i.h, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.5.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !594
  %i.i = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 96, i64 noundef 8) #23, !noalias !594 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone13from_posix_tz.exit, !prof !270

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #26
          to label %.noexc.i unwind label %bb.e, !noalias !591

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #22, !noalias !591
  resume { ptr, i32 } %i.k

_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone13from_posix_tz.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !591
  %i.l = getelementptr i8, ptr %i.i, i64 21
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone13from_posix_tz.exit, %bb.b
  %.sroa.3.0 = phi ptr [ %i.f, %bb.b ], [ %i.l, %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone13from_posix_tz.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone13from_posix_tz.exit ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB2_8Database9from_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [6 x i8], align 8                 ; 6 uses
  %.sroa.05.i = alloca [48 x i8], align 8         ; 6 uses
  %.sroa.99.i = alloca [10 x i8], align 4         ; 2 uses
  %.sroa.529.sroa.0.i = alloca [55 x i8], align 1 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [6 x i8], align 1                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [240 x i8], align 8               ; 6 uses
  %i.m = alloca [104 x i8], align 8               ; 15 uses
  %i.n = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !597
  call void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !597
  store i64 0, ptr %i.i, align 8, !noalias !597
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8, !noalias !597
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.p, align 8, !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !597
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !597, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !597, !noundef !8 ; 2 uses
  invoke fastcc void @_RNvNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner22read_names_and_version(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t, ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %bb.d unwind label %bb.c, !noalias !601

bb.b:                                             ; preds = %bb.i, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.u, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #22
          to label %.body.i unwind label %bb.q, !noalias !601

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.f, align 8, !range !178, !noalias !597, !noundef !8 ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !597 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !597
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.g unwind label %bb.f, !noalias !601

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.h, !noalias !601

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i unwind label %bb.r, !noalias !601

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !601
  unreachable

bb.i:                                             ; preds = %bb.l, %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArceEEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #22
          to label %bb.b unwind label %bb.q, !noalias !601

bb.j:                                             ; preds = %bb.d
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.511.sroa.0.0.copyload.i = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !597 ; 3 uses
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 8 dereferenceable(6) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i, i64 6, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !597
  store i64 %i.v, ptr %i.h, align 8, !noalias !597
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.y, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !597
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.511.sroa.0.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, ptr noundef nonnull align 8 dereferenceable(6) %i.a, i64 6, i1 false), !noalias !597
  %i.ac = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !597 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 6
  call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %i.ac, 4
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !597
  store ptr %i.r, ptr %i.e, align 8, !noalias !597
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.t, ptr %i.af, align 8, !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !597
  store i64 %.sroa.511.sroa.0.0.copyload.i, ptr %i.d, align 8, !noalias !597
  %i.ag = icmp ult i64 %.sroa.511.sroa.0.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !597
  store ptr %i.e, ptr %i.c, align 8, !noalias !597
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !597
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.ah, align 8, !noalias !597
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsq_NtCsb09rMIQFAXO_9jiff_core4utilINtB5_8ArrayStrKj5_ENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !597
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.d, ptr %i.ai, align 8, !noalias !597
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !597
  store ptr @21, ptr %i.b, align 8, !noalias !597
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 33, ptr %i.aj, align 8, !noalias !597
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @21, ptr %i.ak, align 8, !noalias !597
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 33, ptr %i.al, align 8, !noalias !597
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @52, ptr %i.am, align 8, !noalias !597
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @51, ptr noundef nonnull %i.c, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.m unwind label %bb.i, !noalias !601

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.an = invoke { i64, i32 } @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5cacheNtB2_10Expiration5after(i64 noundef 300, i32 noundef 0)
          to label %bb.n unwind label %bb.i, !noalias !601 ; 2 uses

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !597
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !597
  %.sroa.05.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.05.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !597
  %.sroa.99.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.99.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.99.80..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(6) %i.a, i64 6, i1 false)
  %.sroa.529.sroa.0.7..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.529.sroa.0.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.529.sroa.0.7..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !597
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.v unwind label %bb.o, !noalias !601

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.p, !noalias !601

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !601
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.o, %.body.i, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %.pn48.i, %.body.i ], [ %i.as, %bb.s ], [ %i.ao, %bb.o ], [ %i.ba, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %.body.i, %bb.i, %bb.b
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !601
  unreachable

.body.i:                                          ; preds = %bb.r, %bb.f, %bb.b
  %.pn48.i = phi { ptr, i32 } [ %.pn.i, %bb.b ], [ %i.ar, %bb.r ], [ %i.z, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #22
          to label %common.resume unwind label %bb.q, !noalias !601

bb.r:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !597
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.u unwind label %bb.s, !noalias !601

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.t, !noalias !601

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !601
  unreachable

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.au, align 8
  store i64 2, ptr %0, align 8
  br label %bb.y

bb.v:                                             ; preds = %bb.n
  %i.av = extractvalue { i64, i32 } %i.an, 1
  %i.aw = extractvalue { i64, i32 } %i.an, 0
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.529.sroa.0.i, i64 55, i1 false)
  %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.sroa.2.sroa.8.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(10) %.sroa.99.i, i64 10, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 300, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 0, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i64 %i.aw, ptr %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i32 %i.av, ptr %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.az, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.723.0..sroa_idx, align 8
  %.sroa.824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.824.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store i64 0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i64 300, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store i32 0, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock6RwLockNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner11CachedZonesEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.m) #22
          to label %bb.aa unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.l, ptr noundef nonnull align 8 dereferenceable(112) %i.n, i64 112, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bc, ptr noundef nonnull align 8 dereferenceable(104) %i.m, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(240) %i.l, i64 240, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.z:                                             ; preds = %bb.aa, %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.aa:                                            ; preds = %bb.w
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner5NamesEEB17_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.n) #22
          to label %common.resume unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB5_11CachedZones14get_zone_index(ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  switch i64 %.16.val, label %.lr.ph.i [
    i64 0, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZone16binary_search_byNCNvMs0_Bx_NtBx_11CachedZones14get_zone_index0EBF_.exit
    i64 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.thread.i, %bb.a
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aq, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.thread.i ] ; 3 uses
  %i.a = getelementptr inbounds nuw [48 x i8], ptr %.8.val, i64 %.sroa.05.0.lcssa.i
  %i.b = getelementptr i8, ptr %i.a, i64 40
  %.val16.i = load ptr, ptr %i.b, align 8, !alias.scope !602, !noalias !605, !noundef !8
  %i.c = tail call fastcc { ptr, i64 } @_RNvMs1_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB5_14CachedTimeZone4name(ptr %.val16.i), !noalias !607 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %._crit_edge.i
  %.sroa.01.0.i.i.i = phi i64 [ 0, %._crit_edge.i ], [ %i.r, %bb.g ] ; 6 uses
  %i.f = icmp samesign ult i64 %.sroa.01.0.i.i.i, %i.e ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.01.0.i.i.i
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !608, !noalias !613, !noundef !8 ; 2 uses
  %i.i = add i8 %i.h, -65
  %i.j = icmp ult i8 %i.i, 26
  %i.k = select i1 %i.j, i8 32, i8 0
  %.sroa.016.0.i.i.i = or i8 %i.k, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.i.i.i = phi i8 [ %.sroa.016.0.i.i.i, %bb.c ], [ undef, %bb.b ] ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, %1
  br i1 %exitcond.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %..i.i.i = zext i1 %i.f to i8
  br label %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.i

bb.f:                                             ; preds = %bb.d
  %exitcond29.not.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, %i.e
  br i1 %exitcond29.not.i.i.i, label %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !614, !noalias !615, !noundef !8 ; 2 uses
  %i.n = add i8 %i.m, -65
  %i.o = icmp ult i8 %i.n, 26
  %i.p = select i1 %i.o, i8 32, i8 0
  %.sroa.017.0.i.i.i = or i8 %i.p, %i.m           ; 2 uses
  %i.q = icmp eq i8 %.sroa.4.0.i.i.i, %.sroa.017.0.i.i.i
  %i.r = add nuw i64 %.sroa.01.0.i.i.i, 1
  br i1 %i.q, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i8 @llvm.ucmp.i8.i8(i8 %.sroa.4.0.i.i.i, i8 %.sroa.017.0.i.i.i)
  br label %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.i

_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.i: ; preds = %bb.h, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ %i.s, %bb.h ], [ %..i.i.i, %bb.e ] ; 2 uses
  %i.t = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.t, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZone16binary_search_byNCNvMs0_Bx_NtBx_11CachedZones14get_zone_index0EBF_.exit, label %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.thread.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.thread.i
  %.sroa.01.041.i = phi i64 [ %i.ar, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.thread.i ], [ %.16.val, %bb.a ] ; 2 uses
  %.sroa.05.040.i = phi i64 [ %i.aq, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.thread.i ], [ 0, %bb.a ] ; 2 uses
  %i.u = lshr i64 %.sroa.01.041.i, 1              ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %.sroa.05.040.i    ; 4 uses
  %i.w = icmp ult i64 %i.v, %.16.val
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %.8.val, i64 %i.v
  %i.y = getelementptr i8, ptr %i.x, i64 40
  %.val13.i = load ptr, ptr %i.y, align 8, !alias.scope !602, !noalias !605, !noundef !8
  %i.z = tail call fastcc { ptr, i64 } @_RNvMs1_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB5_14CachedTimeZone4name(ptr %.val13.i), !noalias !607 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.01.0.i.i17.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %bb.m ] ; 6 uses
  %i.ac = icmp samesign ult i64 %.sroa.01.0.i.i17.i, %i.ab ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.01.0.i.i17.i
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !616, !noalias !621, !noundef !8 ; 2 uses
  %i.af = add i8 %i.ae, -65
  %i.ag = icmp ult i8 %i.af, 26
  %i.ah = select i1 %i.ag, i8 32, i8 0
  %.sroa.016.0.i.i24.i = or i8 %i.ah, %i.ae
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.i18.i = phi i8 [ %.sroa.016.0.i.i24.i, %bb.j ], [ undef, %bb.i ]
  %.sroa.4.0.i.i18.fr.i = freeze i8 %.sroa.4.0.i.i18.i ; 2 uses
  %exitcond.not.i.i19.i = icmp eq i64 %.sroa.01.0.i.i17.i, %1
  br i1 %exitcond.not.i.i19.i, label %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond29.not.i.i20.i = icmp eq i64 %.sroa.01.0.i.i17.i, %i.ab
  br i1 %exitcond29.not.i.i20.i, label %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.i17.i
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !622, !noalias !623, !noundef !8 ; 2 uses
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = select i1 %i.al, i8 32, i8 0
  %.sroa.017.0.i.i21.i = or i8 %i.am, %i.aj       ; 2 uses
  %i.an = icmp eq i8 %.sroa.4.0.i.i18.fr.i, %.sroa.017.0.i.i21.i
  %i.ao = add nuw i64 %.sroa.01.0.i.i17.i, 1
  br i1 %i.an, label %bb.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp ugt i8 %.sroa.4.0.i.i18.fr.i, %.sroa.017.0.i.i21.i
  br label %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.i

_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.i: ; preds = %bb.k, %bb.n
  %.sroa.0.0.i.i22.i = phi i1 [ %i.ap, %bb.n ], [ %i.ac, %bb.k ]
  %spec.select.i = select i1 %.sroa.0.0.i.i22.i, i64 %.sroa.05.040.i, i64 %i.v
  br label %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.thread.i

_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.thread.i: ; preds = %bb.l, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.i
  %i.aq = phi i64 [ %spec.select.i, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit25.i ], [ %i.v, %bb.l ] ; 2 uses
  %i.ar = sub nuw nsw i64 %.sroa.01.041.i, %i.u   ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 1
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i

_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.thread.i: ; preds = %bb.f, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.i
  %.sroa.0.0.i.i28.i = phi i8 [ %.sroa.0.0.i.i.i, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.i ], [ -1, %bb.f ]
  %i.at = icmp eq i8 %.sroa.0.0.i.i28.i, -1
  %i.au = zext i1 %i.at to i64
  %i.av = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.au ; 2 uses
  %i.aw = icmp ule i64 %i.av, %.16.val
  tail call void @llvm.assume(i1 %i.aw)
  br label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZone16binary_search_byNCNvMs0_Bx_NtBx_11CachedZones14get_zone_index0EBF_.exit

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZone16binary_search_byNCNvMs0_Bx_NtBx_11CachedZones14get_zone_index0EBF_.exit: ; preds = %bb.a, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.i, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.thread.i
  %.sroa.4.0.i = phi i64 [ %.16.val, %bb.a ], [ %i.av, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.thread.i ], [ %.sroa.05.0.lcssa.i, %_RNCNvMs0_NtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5innerNtB7_11CachedZones14get_zone_index0Bf_.exit.i ]
end_hunk_0
