Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.06?download=true
inline.NumInlined: 1216
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs4_NtNtCsJJoyqXSI9P_5regex5regex6stringNtB5_5Regex7find_at:_RINvMNtNtCsdMFwaIVqAhb_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers.exit

bb.j:                                             ; preds = %bb.h
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.68.0.copyload.i = load i8, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !1202
  %i.bs = trunc nuw i8 %.sroa.68.0.copyload.i to i1
  br i1 %i.bs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i) ]
  call fastcc void @_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE9put_valueCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %.sroa.57.0.copyload.i, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload.i), !noalias !1201
  br label %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.46.0.copyload.i)
          to label %.noexc8.i unwind label %.body.thread.i, !noalias !1201

.body.thread.i:                                   ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i, i64 noundef 1400, i64 noundef 8) #28, !noalias !1201
  br label %bb.m

.noexc8.i:                                        ; preds = %bb.l
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i, i64 noundef 1400, i64 noundef 8) #28, !noalias !1201
  br label %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit

.noexc9.i:                                        ; preds = %bb.i
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #29, !noalias !1201
  unreachable

.noexc10.i:                                       ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i) ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload.i, i64 40
  store atomic i64 %i.bq, ptr %i.bu release, align 8, !noalias !1201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1206
  br label %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit

bb.m:                                             ; preds = %bb.n, %.body.thread.i
  %eh.lpad-body17.i = phi { ptr, i32 } [ %i.bt, %.body.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body17.i

bb.n:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3u_10UnwindSafeNtB3b_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.b) #30
          to label %bb.m unwind label %bb.o, !noalias !1201

bb.o:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1201
  unreachable

_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit: ; preds = %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, %bb.k, %.noexc8.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bw = load i64, ptr %i.c, align 8, !range !13, !noundef !4
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load <2 x i64>, ptr %i.by, align 8
  store <2 x i64> %i.bz, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit, %bb.p
  %.sink = phi ptr [ %1, %bb.p ], [ null, %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE10merge_word(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 37 uses
  %i.o = alloca [24 x i8], align 8                ; 14 uses
  %i.p = alloca [8 x i8], align 8                 ; 11 uses
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word13with_capacity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %3)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 5 uses
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit178, %bb.a
  %.sroa.26.0.ph = phi i64 [ %.sroa.26.3246668692, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit178 ], [ 0, %bb.a ]
  %.sroa.12.0.ph = phi ptr [ %.sroa.12.5249665694, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit178 ], [ %2, %bb.a ]
  %.sroa.9.0.ph = phi i64 [ %.sroa.3.0.i.i.i252662696, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit178 ], [ undef, %bb.a ]
  %.sroa.0.0.ph = phi i64 [ %.sroa.0.0.i.i.i255659698, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit178 ], [ 2, %bb.a ]
  %.sroa.15.0.ph = phi i64 [ %.sroa.15.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit178 ], [ undef, %bb.a ] ; 6 uses
  %.sroa.827.0.ph = phi i32 [ %.sroa.827.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit178 ], [ undef, %bb.a ] ; 6 uses
  %.sroa.024.0.ph = phi i64 [ %.sroa.024.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit178 ], [ 0, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit188
  %.sroa.26.0 = phi i64 [ %.sroa.26.3246668692, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit188 ], [ %.sroa.26.0.ph, %.outer ] ; 3 uses
  %.sroa.12.0 = phi ptr [ %.sroa.12.5249665694, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit188 ], [ %.sroa.12.0.ph, %.outer ] ; 8 uses
  %.sroa.9.0 = phi i64 [ %.sroa.3.0.i.i.i252662696, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit188 ], [ %.sroa.9.0.ph, %.outer ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i255659698, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit188 ], [ %.sroa.0.0.ph, %.outer ]
  switch i64 %.sroa.0.0, label %._crit_edge [
    i64 2, label %bb.c
    i64 0, label %.thread
  ]

._crit_edge:                                      ; preds = %bb.b
  %.pre629 = ptrtoint ptr %.sroa.12.0 to i64
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = ptrtoint ptr %.sroa.12.0 to i64
  %i.aa = icmp eq ptr %.sroa.12.0, %i.q
  br i1 %i.aa, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 1 ; 2 uses
  %i.ac = load i8, ptr %.sroa.12.0, align 1, !noalias !1275, !noundef !4 ; 3 uses
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i: ; preds = %bb.d
  %i.ae = icmp ne ptr %i.ab, %i.q
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 2 ; 2 uses
  %i.ag = icmp samesign ugt i8 %i.ac, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i
  %i.ah = icmp ne ptr %i.af, %i.q
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp samesign ugt i8 %i.ac, -17
  %spec.select.v = select i1 %i.ai, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 %spec.select.v
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i

.body175:                                         ; preds = %.loopexit.split-lp290, %.loopexit289.loopexit.split-lp, %.loopexit289.loopexit, %bb.bt, %bb.av, %bb.ak, %.body
  %.pn144 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.eq, %bb.av ], [ %i.du, %bb.ak ], [ %i.ht, %bb.bt ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp290 ], [ %lpad.loopexit299, %.loopexit289.loopexit ], [ %lpad.loopexit.split-lp300, %.loopexit289.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEBJ_(ptr noalias noundef align 8 dereferenceable(24) %i.o) #30
          to label %common.resume unwind label %bb.ax

.loopexit289.loopexit:                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i184
  %lpad.loopexit299 = landingpad { ptr, i32 }
          cleanup
  br label %.body175

.loopexit289.loopexit.split-lp:                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i174
  %lpad.loopexit.split-lp300 = landingpad { ptr, i32 }
          cleanup
  br label %.body175

.loopexit.split-lp290:                            ; preds = %.invoke, %bb.cd, %bb.ce, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i221
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body175

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i, %bb.d, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i
  %.sroa.12.2 = phi ptr [ %i.af, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i ], [ %i.ab, %bb.d ], [ %spec.select, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i ] ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.12.2 to i64         ; 2 uses
  %i.ak = sub i64 %.sroa.26.0, %i.z
  %i.al = add i64 %i.ak, %i.aj
  br label %bb.e

.thread:                                          ; preds = %bb.c, %bb.b
  %i.am = trunc nuw i64 %.sroa.024.0.ph to i1
  br i1 %i.am, label %bb.cd, label %bb.ce

bb.e:                                             ; preds = %._crit_edge, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i
  %.pre-phi = phi i64 [ %.pre629, %._crit_edge ], [ %i.aj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i ]
  %.sroa.26.1 = phi i64 [ %.sroa.26.0, %._crit_edge ], [ %i.al, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i ] ; 15 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %._crit_edge ], [ %.sroa.12.2, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i ] ; 5 uses
  %.sroa.8.0 = phi i64 [ %.sroa.9.0, %._crit_edge ], [ %.sroa.26.0, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i ] ; 17 uses
  %.not = icmp eq ptr %.sroa.12.1, %i.q           ; 2 uses
  br i1 %.not, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_3map3MapNtNtNtB5_3str4iter11CharIndicesNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2X_3BPE10merge_word0EE4peek0EB33_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.12.1, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.sroa.12.1, align 1, !noalias !1276, !noundef !4 ; 3 uses
  %i.ap = icmp sgt i8 %i.ao, -1
  br i1 %i.ap, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i: ; preds = %bb.f
  %i.aq = icmp ne ptr %i.an, %i.q
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.12.1, i64 2 ; 2 uses
  %i.as = icmp samesign ugt i8 %i.ao, -33
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i
  %i.at = icmp ne ptr %i.ar, %i.q
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp samesign ugt i8 %i.ao, -17
  %spec.select981.v = select i1 %i.au, i64 4, i64 3
  %spec.select981 = getelementptr inbounds nuw i8, ptr %.sroa.12.1, i64 %spec.select981.v
  br label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i, %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i
  %.sroa.12.4 = phi ptr [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i ], [ %i.an, %bb.f ], [ %spec.select981, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i ] ; 3 uses
  %i.av = ptrtoint ptr %.sroa.12.4 to i64
  %i.aw = sub i64 %.sroa.26.1, %.pre-phi
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.not.i152 = icmp ugt i64 %.sroa.8.0, %.sroa.26.1
  br i1 %.not.i152, label %.invoke, label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i
  %i.ay = icmp eq i64 %.sroa.8.0, 0
  br i1 %i.ay, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not5.i = icmp ult i64 %.sroa.8.0, %3
  br i1 %.not5.i, label %bb.j, label %.split.i

bb.i:                                             ; preds = %bb.j, %.split.i, %bb.g
  %i.az = icmp eq i64 %.sroa.26.1, 0
  br i1 %i.az, label %bb.o, label %bb.k

.split.i:                                         ; preds = %bb.h
  %i.ba = icmp eq i64 %.sroa.8.0, %3
  br i1 %i.ba, label %bb.i, label %.invoke

bb.j:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.8.0
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !1277, !noundef !4
  %i.bd = icmp sgt i8 %i.bc, -65
  br i1 %i.bd, label %bb.i, label %.invoke

bb.k:                                             ; preds = %bb.i
  %.not6.i = icmp ult i64 %.sroa.26.1, %3
  br i1 %.not6.i, label %bb.l, label %.split7.i

.split7.i:                                        ; preds = %bb.k
  %i.be = icmp eq i64 %.sroa.26.1, %3
  br i1 %i.be, label %bb.o, label %.invoke

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.26.1
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !1277, !noundef !4
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %bb.o, label %.invoke

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_3map3MapNtNtNtB5_3str4iter11CharIndicesNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2X_3BPE10merge_word0EE4peek0EB33_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bi = icmp eq i64 %.sroa.8.0, 0
  br i1 %i.bi, label %.thread683, label %bb.m

.thread683:                                       ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_3map3MapNtNtNtB5_3str4iter11CharIndicesNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2X_3BPE10merge_word0EE4peek0EB33_.exit
  %storemerge679 = sub nuw nsw i64 %3, %.sroa.8.0 ; 2 uses
  %storemerge647680 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.8.0
  store ptr %storemerge647680, ptr %i.r, align 8
  store i64 %storemerge679, ptr %i.s, align 8
  store i64 -1, ptr %i.n, align 8
  %.pre624.pre627682 = load ptr, ptr %i.p, align 8
  br label %bb.aa

bb.m:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_jEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtB1j_3map3MapNtNtNtB5_3str4iter11CharIndicesNCNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2X_3BPE10merge_word0EE4peek0EB33_.exit
  %.not.i155 = icmp ult i64 %.sroa.8.0, %3
  br i1 %.not.i155, label %bb.n, label %.split.i156

.split.i156:                                      ; preds = %bb.m
  %i.bj = icmp eq i64 %.sroa.8.0, %3
  br i1 %i.bj, label %.thread648, label %.invoke

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.8.0
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !1278, !noundef !4
  %i.bm = icmp sgt i8 %i.bl, -65
  br i1 %i.bm, label %.thread648, label %.invoke

.invoke:                                          ; preds = %.split.i156, %bb.n, %.split7.i, %.split.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i, %bb.j, %bb.l
  %i.bn = phi i64 [ %.sroa.26.1, %.split7.i ], [ %.sroa.26.1, %bb.l ], [ %.sroa.26.1, %bb.j ], [ %.sroa.26.1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i ], [ %.sroa.26.1, %.split.i ], [ %3, %bb.n ], [ %3, %.split.i156 ]
  %i.bo = phi ptr [ @111, %.split7.i ], [ @111, %bb.l ], [ @111, %bb.j ], [ @111, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i ], [ @111, %.split.i ], [ @112, %bb.n ], [ @112, %.split.i156 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %.sroa.8.0, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo) #29
          to label %.cont unwind label %.loopexit.split-lp290

.cont:                                            ; preds = %.invoke
  unreachable

.thread648:                                       ; preds = %.split.i156, %bb.n
  %storemerge654 = sub nuw i64 %3, %.sroa.8.0     ; 2 uses
  %storemerge647655 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.8.0
  store ptr %storemerge647655, ptr %i.r, align 8
  store i64 %storemerge654, ptr %i.s, align 8
  store i64 -1, ptr %i.n, align 8
  %.pre624.pre627657 = load ptr, ptr %i.p, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.i, %.split7.i, %bb.l
  %.sroa.26.1.pn = phi i64 [ 0, %bb.i ], [ %.sroa.26.1, %bb.l ], [ %.sroa.26.1, %.split7.i ] ; 3 uses
  %storemerge = sub nuw i64 %.sroa.26.1.pn, %.sroa.8.0 ; 3 uses
  %storemerge647 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.8.0
  store ptr %storemerge647, ptr %i.r, align 8
  store i64 %storemerge, ptr %i.s, align 8
  %.sroa.010.1.in = icmp eq i64 %.sroa.8.0, 0
  store i64 -1, ptr %i.n, align 8
  %.pre624.pre627 = load ptr, ptr %i.p, align 8   ; 2 uses
  br i1 %.sroa.010.1.in, label %.thread701, label %bb.p

bb.p:                                             ; preds = %.thread648, %bb.o
  %.pre624.pre627672 = phi ptr [ %.pre624.pre627657, %.thread648 ], [ %.pre624.pre627, %bb.o ] ; 2 uses
  %storemerge670 = phi i64 [ %storemerge654, %.thread648 ], [ %storemerge, %bb.o ] ; 2 uses
  %.sroa.26.3246667 = phi i64 [ %.sroa.26.1, %.thread648 ], [ %i.ax, %bb.o ] ; 2 uses
  %.sroa.12.5249664 = phi ptr [ %i.q, %.thread648 ], [ %.sroa.12.4, %bb.o ] ; 2 uses
  %.sroa.3.0.i.i.i252661 = phi i64 [ undef, %.thread648 ], [ %.sroa.26.1.pn, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i.i255658 = phi i64 [ 0, %.thread648 ], [ 1, %bb.o ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre624.pre627672, i64 48 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !15, !noundef !4
  %.not133 = icmp eq i64 %i.bq, -1
  br i1 %.not133, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit, %bb.p
  %.pre624 = phi ptr [ %.pre624.pre, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit ], [ %.pre624.pre627672, %bb.p ] ; 2 uses
  br i1 %.not, label %bb.aa, label %.thread701

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.bp, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.494.0..sroa_idx, align 8
  store ptr %i.n, ptr %i.t, align 8
  store ptr @_RNvXsb_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.498.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @113, ptr noundef nonnull %i.k)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bx, %bb.bo, %bb.ar, %.body169, %.body159
  %.pn = phi { ptr, i32 } [ %eh.lpad-body160, %.body159 ], [ %i.ek, %bb.ar ], [ %eh.lpad-body170, %.body169 ], [ %i.hn, %bb.bo ], [ %i.hz, %bb.bx ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit281, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit284, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp287, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit295, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp296, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.n) #30
          to label %.body175 unwind label %bb.ax

.loopexit:                                        ; preds = %.lr.ph.i.i208
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i194
  %lpad.loopexit281 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i.i
  %lpad.loopexit284 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit: ; preds = %bb.am, %bb.r, %bb.w, %bb.ab, %bb.at
  %lpad.loopexit295 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.ag, %bb.ah, %bb.bf, %bb.bb, %bb.bi
  %lpad.loopexit.split-lp296 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %select.unfold274, %select.unfold271
  %lpad.loopexit.split-lp287 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.br = load i64, ptr %i.n, align 8, !range !15, !alias.scope !1279, !noundef !4
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.s

bb.s:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body159 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body159

.body159:                                         ; preds = %bb.t, %bb.v
  %eh.lpad-body160 = phi { ptr, i32 } [ %i.bv, %bb.v ], [ %i.bt, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.pre624.pre = load ptr, ptr %i.p, align 8
  br label %bb.q

.thread701:                                       ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit172, %bb.aa, %bb.q
  %.sroa.0.0.i.i.i255659698 = phi i64 [ %.sroa.0.0.i.i.i255659699, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit172 ], [ %.sroa.0.0.i.i.i255659699, %bb.aa ], [ %.sroa.0.0.i.i.i255658, %bb.q ], [ 1, %bb.o ] ; 2 uses
  %.sroa.3.0.i.i.i252662696 = phi i64 [ %.sroa.3.0.i.i.i252662697, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit172 ], [ %.sroa.3.0.i.i.i252662697, %bb.aa ], [ %.sroa.3.0.i.i.i252661, %bb.q ], [ %.sroa.26.1.pn, %bb.o ] ; 2 uses
  %.sroa.12.5249665694 = phi ptr [ %.sroa.12.5249665695, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit172 ], [ %.sroa.12.5249665695, %bb.aa ], [ %.sroa.12.5249664, %bb.q ], [ %.sroa.12.4, %bb.o ] ; 2 uses
  %.sroa.26.3246668692 = phi i64 [ %.sroa.26.3246668693, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit172 ], [ %.sroa.26.3246668693, %bb.aa ], [ %.sroa.26.3246667, %bb.q ], [ %i.ax, %bb.o ] ; 2 uses
  %storemerge671690 = phi i64 [ %storemerge671691, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit172 ], [ %storemerge671691, %bb.aa ], [ %storemerge670, %bb.q ], [ %storemerge, %bb.o ] ; 4 uses
  %i.bw = phi ptr [ %.pre, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit172 ], [ %.pre624700, %bb.aa ], [ %.pre624, %bb.q ], [ %.pre624.pre627, %bb.o ] ; 5 uses
  %i.bx = load ptr, ptr %i.r, align 8, !nonnull !4 ; 2 uses
  %i.by = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1280, !noalias !1281, !noundef !4
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %select.unfold, label %bb.w

bb.w:                                             ; preds = %.thread701
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %i.ce = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef %i.by)
          to label %.noexc163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ; 2 uses

.noexc163:                                        ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.cf = lshr i64 %i.ce, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 112
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !1284, !noalias !1285, !noundef !4 ; 2 uses
  %i.cj = load ptr, ptr %i.bz, align 8, !alias.scope !1284, !noalias !1285, !nonnull !4, !noundef !4 ; 2 uses
  %i.ck = insertelement <16 x i8> poison, i8 %i.cg, i64 0
  %i.cl = shufflevector <16 x i8> %i.ck, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.noexc163
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc163 ], [ %i.dc, %bb.z ]
  %.pn.i.i.i = phi i64 [ %i.ce, %.noexc163 ], [ %i.dd, %bb.z ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.ci   ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.cm, align 1, !noalias !1286 ; 2 uses
  %i.cn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.cl
  %i.co = bitcast <16 x i1> %i.cn to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.co, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.y
  %.sroa.06.0.i33.i.i = phi i16 [ %i.db, %bb.y ], [ %i.co, %bb.x ] ; 3 uses
  %i.cp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = add i64 %.sroa.01.0.i.i.i, %i.cq
  %i.cs = and i64 %i.cr, %i.ci
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds [32 x i8], ptr %i.cj, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -32
  %i.cw = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cv)
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc164:                                        ; preds = %.lr.ph.i.i
  br i1 %i.cw, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit, label %bb.y, !prof !11

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.x
  %i.cx = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.cy = bitcast <16 x i1> %i.cx to i16
  %i.cz = icmp eq i16 %i.cy, 0
  br i1 %i.cz, label %bb.z, label %select.unfold.loopexit, !prof !5

bb.y:                                             ; preds = %.noexc164
  %i.da = add i16 %.sroa.06.0.i33.i.i, -1
  %i.db = and i16 %i.da, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.dc = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.dd = add i64 %.sroa.01.0.i.i.i, %i.dc
  br label %bb.x

bb.aa:                                            ; preds = %.thread683, %bb.q
  %.pre624700 = phi ptr [ %.pre624.pre627682, %.thread683 ], [ %.pre624, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i.i255659699 = phi i64 [ 0, %.thread683 ], [ %.sroa.0.0.i.i.i255658, %bb.q ] ; 2 uses
  %.sroa.3.0.i.i.i252662697 = phi i64 [ undef, %.thread683 ], [ %.sroa.3.0.i.i.i252661, %bb.q ] ; 2 uses
  %.sroa.12.5249665695 = phi ptr [ %i.q, %.thread683 ], [ %.sroa.12.5249664, %bb.q ] ; 2 uses
  %.sroa.26.3246668693 = phi i64 [ %.sroa.26.1, %.thread683 ], [ %.sroa.26.3246667, %bb.q ] ; 2 uses
  %storemerge671691 = phi i64 [ %storemerge679, %.thread683 ], [ %storemerge670, %bb.q ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.pre624700, i64 72 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !range !15, !noundef !4
  %.not134 = icmp eq i64 %i.df, -1
  br i1 %.not134, label %.thread701, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.de, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.n, ptr %i.h, align 8
  store ptr @_RNvXsb_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.4104.0..sroa_idx, align 8
  store ptr %i.j, ptr %i.u, align 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.4108.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @113, ptr noundef nonnull %i.h)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit166: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dg = load i64, ptr %i.n, align 8, !range !15, !alias.scope !1287, !noundef !4
  %i.dh = icmp eq i64 %i.dg, -1
  br i1 %i.dh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit172, label %bb.ac

bb.ac:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit166
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i168 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body169 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i168: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit172 unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i168
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body169

.body169:                                         ; preds = %bb.ad, %bb.af
  %eh.lpad-body170 = phi { ptr, i32 } [ %i.dk, %bb.af ], [ %i.di, %bb.ad ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit172: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2JiOgHzbbc7_10tokenizers.exit166, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre = load ptr, ptr %i.p, align 8
  br label %.thread701

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc164
  %i.dl = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.dm = trunc nuw i64 %.sroa.024.0.ph to i1
  br i1 %i.dm, label %bb.ag, label %bb.ah

select.unfold.loopexit:                           ; preds = %._crit_edge.i.i
  %.pre625 = load ptr, ptr %i.p, align 8
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.loopexit, %.thread701
  %i.dn = phi ptr [ %.pre625, %select.unfold.loopexit ], [ %i.bw, %.thread701 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 297
  %i.dp = load i8, ptr %i.do, align 1, !range !12, !noundef !4
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.am, label %.loopexit298

bb.ag:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word3add(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i32 noundef %.sroa.827.0.ph, i64 noundef %.sroa.15.0.ph)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit
  %i.dr = load i32, ptr %i.dl, align 4, !noundef !4
  invoke void @_RNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB5_4Word3add(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i32 noundef %i.dr, i64 noundef %storemerge671690)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ai:                                            ; preds = %bb.bg, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit218, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit, %bb.ah, %.loopexit298
  %.sroa.15.1 = phi i64 [ %.sroa.15.0.ph, %bb.ah ], [ %i.gc, %bb.bg ], [ %storemerge671690, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit218 ], [ %storemerge671690, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.15.0.ph, %.loopexit298 ]
  %.sroa.827.1 = phi i32 [ %.sroa.827.0.ph, %bb.ah ], [ %.sroa.827.0.ph, %bb.bg ], [ %i.hk, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit218 ], [ %i.hw, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.827.0.ph, %.loopexit298 ]
  %.sroa.024.2 = phi i64 [ 0, %bb.ah ], [ 1, %bb.bg ], [ 1, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit218 ], [ 1, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.024.0.ph, %.loopexit298 ]
  %i.ds = load i64, ptr %i.n, align 8, !range !15, !alias.scope !1288, !noundef !4
  %i.dt = icmp eq i64 %i.ds, -1
  br i1 %i.dt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit178, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i174 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body175 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i174: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs2JiOgHzbbc7_10tokenizers.exit178 unwind label %.loopexit289.loopexit.split-lp

.loopexit298:                                     ; preds = %select.unfold, %bb.ap
  %i.dw = phi ptr [ %.pre626, %bb.ap ], [ %i.dn, %select.unfold ] ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 7 uses
  %i.dy = load i64, ptr %i.dx, align 8, !range !15, !noundef !4
  %.not139 = icmp eq i64 %i.dy, -1
  br i1 %.not139, label %bb.ai, label %bb.ay

bb.am:                                            ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
end_hunk_0
