Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.03?download=true
inline.NumInlined: 645
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs3_NtCsgCecv3eZDcN_5alloc3stre7replaceReECs3v5ql5U6hxj_6fontir:bb.a
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !6, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.q, label %bb.e, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3v5ql5U6hxj_6fontir.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.t, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #22
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.d
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.w = icmp ule i64 %spec.select, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.s, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 13 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsu_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 1, 9) %4)
          to label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3v5ql5U6hxj_6fontir.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %.not, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split

_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us: ; preds = %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit, %bb.i
  %.sroa.04.0.us = phi i64 [ %i.ac, %bb.i ], [ 0, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.e)
          to label %bb.f unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us
  %i.z = load i64, ptr %i.b, align 8, !range !5, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.g, label %.split.us

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.us
  %gepdiff47.us = sub nuw nsw i64 %i.ab, %.sroa.04.0.us ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %gepdiff47.us)
          to label %.noexc27.us unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27.us:                                      ; preds = %bb.g
  %i.ae = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !26, !noundef !4 ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %.not.i25.us = icmp eq i64 %i.ab, %.sroa.04.0.us
  br i1 %.not.i25.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc27.us
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !26, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.ad, i64 %gepdiff47.us, i1 false)
  %.pre.i26.us = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc27.us
  %i.ai = phi i64 [ %.pre.i26.us, %bb.h ], [ %i.ae, %.noexc27.us ]
  %i.aj = add i64 %i.ai, %gepdiff47.us
  store i64 %i.aj, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !26
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split: ; preds = %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit, %.noexc31
  %.sroa.04.0 = phi i64 [ %i.au, %.noexc31 ], [ 0, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.e)
          to label %bb.j unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.g, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us, %bb.o, %bb.m, %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split, %.split.us, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3v5ql5U6hxj_6fontir.exit
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %bb.q unwind label %bb.p

bb.j:                                             ; preds = %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split
  %i.ak = load i64, ptr %i.b, align 8, !range !5, !noundef !4
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.m, label %.split.us

.split.us:                                        ; preds = %bb.j, %bb.f
  %.us-phi49 = phi i64 [ %.sroa.04.0.us, %bb.f ], [ %.sroa.04.0, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.us-phi49
  %gepdiff = sub nuw nsw i64 %2, %.us-phi49       ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %gepdiff)
          to label %.noexc unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.split.us
  %i.an = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !27, !noundef !4 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  %.not.i = icmp eq i64 %2, %.us-phi49
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.ap = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !27, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %i.am, i64 %gepdiff, i1 false)
  %.pre.i = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc
  %i.ar = phi i64 [ %.pre.i, %bb.k ], [ %i.an, %.noexc ]
  %i.as = add i64 %i.ar, %gepdiff
  store i64 %i.as, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.m:                                             ; preds = %bb.j
  %i.at = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  %i.au = load i64, ptr %i.y, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff47 = sub nuw nsw i64 %i.at, %.sroa.04.0 ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %gepdiff47)
          to label %.noexc27 unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %bb.m
  %i.aw = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !26, !noundef !4 ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  call void @llvm.assume(i1 %i.ax)
  %.not.i25 = icmp eq i64 %i.at, %.sroa.04.0
  br i1 %.not.i25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc27
  %i.ay = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !26, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %i.av, i64 %gepdiff47, i1 false)
  %.pre.i26 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !26
  br label %bb.o

bb.o:                                             ; preds = %.noexc27, %bb.n
  %i.ba = phi i64 [ %.pre.i26, %bb.n ], [ %i.aw, %.noexc27 ]
  %i.bb = add i64 %i.ba, %gepdiff47
  store i64 %i.bb, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !26
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.o
  %i.bc = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !28, !noundef !4 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  call void @llvm.assume(i1 %i.bd)
  %i.be = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !28, !nonnull !4, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  %i.bg = load i8, ptr %5, align 1
  store i8 %i.bg, ptr %i.bf, align 1
  %.pre.i30 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !28
  %i.bh = add i64 %.pre.i30, 1
  store i64 %i.bh, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !28
  br label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split

bb.p:                                             ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.q:                                             ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp67
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 noundef range(i8 26, 33) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37
  call void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2D_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtB1O_4hash6random11RandomStateE11rustc_entryB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 noundef range(i8 0, 33) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !8, !noalias !37, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.g, -1
  %i.h = load ptr, ptr %i.c, align 8, !noalias !37 ; 3 uses
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37
  br label %_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.44.0.copyload.i = load i64, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37
  %i.i = tail call { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @19), !noalias !38 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %4 = extractvalue { i64, i64 } %i.i, 0
  %5 = extractvalue { i64, i64 } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39
  store i8 %i.g, ptr %i.b, align 8, !noalias !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false), !noalias !39
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %4, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !39
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %5, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !39
  %i.k = call noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2t_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14insert_no_growBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %.sroa.44.0.copyload.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39
  br label %_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut.exit

_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut.exit: ; preds = %.thread.i, %bb.b
  %.pn.i.i = phi ptr [ %i.k, %bb.b ], [ %i.h, %.thread.i ]
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs0_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB5_8LocationNtB5_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromRBE_E4fromCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB12_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE11rustc_entryCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  %i.l = load i64, ptr %i.d, align 8, !range !9, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.c, label %.noexc

.noexc:                                           ; preds = %_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.616.0.copyload = load ptr, ptr %.sroa.616.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.717.0.copyload = load i64, ptr %.sroa.717.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load <2 x ptr>, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41
  store i64 %i.l, ptr %i.a, align 8
  store <2 x ptr> %i.n, ptr %.sroa.6.0..sroa_idx7, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %3, ptr %i.o, align 8, !noalias !41
  %i.p = call noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEE14insert_no_growCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.616.0.copyload, i64 noundef %.sroa.717.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41
  br label %bb.d

bb.c:                                             ; preds = %_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 noundef range(i8 0, 30) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50
  call void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2D_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtB1O_4hash6random11RandomStateE11rustc_entryB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 noundef range(i8 0, 33) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !8, !noalias !50, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.g, -1
  %i.h = load ptr, ptr %i.c, align 8, !noalias !50 ; 3 uses
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50
  br label %_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.44.0.copyload.i = load i64, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50
  %i.i = tail call { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @19), !noalias !51 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %4 = extractvalue { i64, i64 } %i.i, 0
  %5 = extractvalue { i64, i64 } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52
  store i8 %i.g, ptr %i.b, align 8, !noalias !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false), !noalias !52
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %4, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !52
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %5, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !52
  %i.k = call noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2t_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14insert_no_growBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %.sroa.44.0.copyload.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52
  br label %_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut.exit

_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut.exit: ; preds = %.thread.i, %bb.b
  %.pn.i.i = phi ptr [ %i.k, %bb.b ], [ %i.h, %.thread.i ]
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs0_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB5_8LocationNtB5_15NormalizedSpaceEINtNtCsf3Ta7LF998c_4core7convert4FromRBE_E4fromCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB12_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE11rustc_entryCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  %i.l = load i64, ptr %i.d, align 8, !range !9, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %.noexc

.noexc:                                           ; preds = %_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut.exit
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.515.0.copyload = load ptr, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.616.0.copyload = load ptr, ptr %.sroa.616.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.717.0.copyload = load i64, ptr %.sroa.717.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54
  store i64 %i.l, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.515.0.copyload, ptr %.sroa.8.0..sroa_idx9, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %3, ptr %i.o, align 8, !noalias !54
  %i.p = call noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEE14insert_no_growCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.616.0.copyload, i64 noundef %.sroa.717.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54
  br label %bb.d

bb.c:                                             ; preds = %_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %.pn.i = phi ptr [ %i.p, %.noexc ], [ %i.n, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.q = load double, ptr %.sroa.0.0.i, align 8, !noundef !4
  ret double %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCs3v5ql5U6hxj_6fontir2irNtB6_10AnchorKind3newRNtCs9NoVXegZYB5_8smol_str7SmolStrEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.434 = alloca [31 x i8], align 1          ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.430 = alloca [31 x i8], align 1          ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  %i.i = load i8, ptr %1, align 8, !range !10, !alias.scope !79, !noundef !4 ; 2 uses
  %i.j = icmp samesign ugt i8 %i.i, 23
  %i.k = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.l = add nsw i64 %i.k, -23
  %i.m = select i1 %i.j, i64 %i.l, i64 0
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_RNvXNtCsf3Ta7LF998c_4core7convertRNtCs9NoVXegZYB5_8smol_str7SmolStrINtB2_5AsRefeE6as_refCs3v5ql5U6hxj_6fontir.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !79, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !79, !noundef !4
  br label %_RNvXNtCsf3Ta7LF998c_4core7convertRNtCs9NoVXegZYB5_8smol_str7SmolStrINtB2_5AsRefeE6as_refCs3v5ql5U6hxj_6fontir.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !79, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !79, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %_RNvXNtCsf3Ta7LF998c_4core7convertRNtCs9NoVXegZYB5_8smol_str7SmolStrINtB2_5AsRefeE6as_refCs3v5ql5U6hxj_6fontir.exit

_RNvXNtCsf3Ta7LF998c_4core7convertRNtCs9NoVXegZYB5_8smol_str7SmolStrINtB2_5AsRefeE6as_refCs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.x = phi i64 [ %i.k, %bb.c ], [ %i.r, %bb.d ], [ %i.v, %bb.e ] ; 15 uses
  %i.y = phi ptr [ %i.n, %bb.c ], [ %i.p, %bb.d ], [ %i.w, %bb.e ] ; 17 uses
  store ptr %i.y, ptr %i.h, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.x, ptr %i.z, align 8
  switch i64 %i.x, label %bb.i [
    i64 5, label %bb.f
    i64 4, label %bb.h
  ]

bb.f:                                             ; preds = %_RNvXNtCsf3Ta7LF998c_4core7convertRNtCs9NoVXegZYB5_8smol_str7SmolStrINtB2_5AsRefeE6as_refCs3v5ql5U6hxj_6fontir.exit
  %i.aa = load i32, ptr %i.y, align 1
  %i.ab = xor i32 %i.aa, 1920233061
  %i.ac = getelementptr i8, ptr %i.y, i64 4
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = xor i32 %i.ae, 121
  %i.ag = or i32 %i.ab, %i.af
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i8 32, ptr %0, align 8
  br label %bb.al

bb.h:                                             ; preds = %_RNvXNtCsf3Ta7LF998c_4core7convertRNtCs9NoVXegZYB5_8smol_str7SmolStrINtB2_5AsRefeE6as_refCs3v5ql5U6hxj_6fontir.exit
  %i.ak = load i32, ptr %i.y, align 1
  %i.al = icmp ne i32 %i.ak, 1953069157
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.f, %_RNvXNtCsf3Ta7LF998c_4core7convertRNtCs9NoVXegZYB5_8smol_str7SmolStrINtB2_5AsRefeE6as_refCs3v5ql5U6hxj_6fontir.exit, %bb.h
  %i.ao = tail call noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 6)
  %i.ap = add i64 %i.x, -6
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  br i1 %i.ao, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 7), !noalias !80
  %i.as = add i64 %i.x, -7
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  br i1 %i.ar, label %select.unfold, label %bb.p

bb.k:                                             ; preds = %bb.h
  store i8 33, ptr %0, align 8
  br label %bb.al

select.unfold:                                    ; preds = %bb.j, %bb.i
  %.pn4.i.ph = phi ptr [ %i.aq, %bb.i ], [ %i.at, %bb.j ] ; 3 uses
  %.pn2.i.ph = phi i64 [ %i.ap, %bb.i ], [ %i.as, %bb.j ] ; 3 uses
  switch i64 %.pn2.i.ph, label %thread-pre-split.i [
    i64 0, label %.thread
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %select.unfold
  %i.au = load i8, ptr %.pn4.i.ph, align 1, !alias.scope !81, !noundef !4 ; 2 uses
  switch i8 %i.au, label %bb.m [
    i8 43, label %.thread163
    i8 45, label %.thread163
  ]

thread-pre-split.i:                               ; preds = %select.unfold
  %.pr.i = load i8, ptr %.pn4.i.ph, align 1, !alias.scope !81
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split.i, %bb.l
  %i.av = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.au, %bb.l ]
  %cond.i = icmp eq i8 %i.av, 43                  ; 2 uses
  %i.aw = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.pn2.i.ph, %i.aw   ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn4.i.ph, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.ax = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.ax, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.m
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit.thread164, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i291, i64 1
  %i.az = add nsw i64 %.sroa.15.1.i290, -1        ; 2 uses
  %.not52.i = icmp eq i64 %i.az, 0
  br i1 %.not52.i, label %_RNvMsv_NtCsf3Ta7LF998c_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.m, %.preheader56.i
  %.sroa.0.1.i291 = phi ptr [ %i.ay, %.preheader56.i ], [ %.sroa.0.0.i, %bb.m ] ; 2 uses
  %.sroa.15.1.i290 = phi i64 [ %i.az, %.preheader56.i ], [ %.sroa.15.0.i, %bb.m ]
  %.sroa.042.0.i289 = phi i64 [ %i.bi, %.preheader56.i ], [ 0, %bb.m ]
  %i.ba = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i289, i64 10) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
end_hunk_0
begin_hunk_1_@_RNCNvNtCs3v5ql5U6hxj_6fontir2ir24normalize_for_postscript0B5_:bb.a
  %i.as = phi i64 [ %i.av, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3v5ql5U6hxj_6fontir.exit.backedge.us.i.i.i.i ], [ 9, %.lr.ph.split.us.i.i.i.i ]
  %.pn.i.i.i13 = phi ptr [ %i.at, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3v5ql5U6hxj_6fontir.exit.backedge.us.i.i.i.i ], [ @12, %.lr.ph.split.us.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.pn.i.i.i13, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.at, ptr noundef nonnull readonly dereferenceable(1) %i.c, i64 range(i64 2, 5) %.sroa.0.05.i58.i), !alias.scope !178, !noalias !179
  %i.au = icmp eq i32 %bcmp.i.i.us.i.i.i.i, 0
  br i1 %i.au, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3v5ql5U6hxj_6fontir.exit.backedge.us.i.i.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3v5ql5U6hxj_6fontir.exit.backedge.us.i.i.i.i: ; preds = %.split.us.i.i.i.i
  %i.av = add nsw i64 %i.as, -1                   ; 2 uses
  %.not27.i.i.i.i = icmp samesign ugt i64 %.sroa.0.05.i58.i, %i.av
  br i1 %.not27.i.i.i.i, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread6, label %.split.us.i.i.i.i

_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread6: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs3v5ql5U6hxj_6fontir.exit.backedge.us.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !171
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2

.lr.ph.i.i3.i:                                    ; preds = %bb.c
  switch i32 %0, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2 [
    i32 91, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
    i32 93, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
    i32 40, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
    i32 41, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
    i32 123, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
    i32 125, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
    i32 60, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
    i32 62, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
    i32 47, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
    i32 37, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  ]

_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4: ; preds = %.split.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !171
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs3v5ql5U6hxj_6fontir.exit.i.i.i.i.3, %.preheader.i.i.2, %.preheader.i.i.1, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !180
  call void @_RNvMsu_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 1, 5) %.sroa.0.05.i.i)
  call fastcc void @_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #26
  %i.aw = load i64, ptr %i.b, align 8, !range !5, !noalias !180, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !180
  %i.ax = trunc nuw i64 %i.aw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !171
  br i1 %i.ax, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2

_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %bb.b, %.lr.ph.i.i3.i, %.lr.ph.i.i3.i, %.lr.ph.i.i3.i, %.lr.ph.i.i3.i, %.lr.ph.i.i3.i, %.lr.ph.i.i3.i, %.lr.ph.i.i3.i, %.lr.ph.i.i3.i, %.lr.ph.i.i3.i, %.lr.ph.i.i3.i, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4, %bb.i, %bb.h, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  %.sroa.0.0 = phi i1 [ false, %.lr.ph.i.i3.i ], [ false, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4 ], [ false, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ], [ false, %.lr.ph.i.i3.i ], [ false, %.lr.ph.i.i3.i ], [ false, %.lr.ph.i.i3.i ], [ false, %.lr.ph.i.i3.i ], [ false, %bb.h ], [ false, %bb.i ], [ true, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2 ], [ false, %.lr.ph.i.i3.i ], [ false, %.lr.ph.i.i3.i ], [ false, %.lr.ph.i.i3.i ], [ false, %.lr.ph.i.i3.i ], [ false, %.lr.ph.i.i3.i ], [ false, %bb.b ]
  ret i1 %.sroa.0.0

_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2: ; preds = %.lr.ph.i.i3.i, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread6, %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  %i.ay = add nsw i32 %0, -33
  %spec.select.i = icmp ult i32 %i.ay, 94
  br i1 %spec.select.i, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread2
  %i.az = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 6
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ugt i64 %i.az, 1
  br i1 %i.bb, label %bb.i, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @6, ptr %i.d, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 10, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @6, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 10, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @14, ptr %i.bf, align 8
  call void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECs3v5ql5U6hxj_6fontir(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 123 to ptr), i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB5_10GlyphOrder12set_glyph_id(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = tail call { i64, i64 } @_RINvMs3_NtCsbeZck1VjBmm_8indexmap3mapINtB6_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE12get_index_ofBO_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.d, %2
  br i1 %i.f, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %1, align 8, !range !10, !noundef !4
  %i.h = icmp eq i8 %i.g, 25
  br i1 %i.h, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = call { i64, i1 } @_RNvMs2_NtCsbeZck1VjBmm_8indexmap3mapINtB5_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE11insert_fullCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 0 uses
  call void @_RNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB5_10GlyphOrder12set_glyph_id(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.h, %bb.f
  ret void

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvMs_NtCsbeZck1VjBmm_8indexmap5innerINtB4_4CoreNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE10move_indexCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.d, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB5_10GlyphOrder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @19) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  store i64 0, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.64.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false)
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.b, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.c, ptr %.sroa.86.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB5_10GlyphOrder6insert(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @_RNvMs2_NtCsbeZck1VjBmm_8indexmap3mapINtB5_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE11insert_fullCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB5_10GlyphOrder6remove(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvMs3_NtCsbeZck1VjBmm_8indexmap3mapINtB6_8IndexMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE12shift_removeBO_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i40 0, -254) i40 @_RNvMsd_NtCs3v5ql5U6hxj_6fontir2irNtB5_12GlobalMetric8mvar_tag(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !14, !noundef !4
  %switch.tableidx = add nsw i8 %i.a, -5          ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx, 28
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvMsd_NtCs3v5ql5U6hxj_6fontir2irNtB5_12GlobalMetric8mvar_tag, i64 %i.c
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.30.0 = phi i32 [ undef, %bb.a ], [ %switch.load, %switch.lookup ]
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ 1, %switch.lookup ]
  %.sroa.30.0.insert.ext = zext i32 %.sroa.30.0 to i40
  %.sroa.30.0.insert.shift = shl nuw i40 %.sroa.30.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.30.0.insert.shift, %.sroa.0.0.insert.ext
  ret i40 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder10values_mut(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef range(i8 0, 33) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2D_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtB1O_4hash6random11RandomStateE11rustc_entryB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i8 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.d, -1
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs19_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_5EntryNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtB6_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1Z_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEE10or_defaultB16_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = tail call { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @19), !noalias !185 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %2 = extractvalue { i64, i64 } %i.f, 0
  %3 = extractvalue { i64, i64 } %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !186
  store i8 %i.d, ptr %i.a, align 8, !noalias !186
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @17, i64 32, i1 false), !noalias !186
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !186
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !186
  %i.h = call noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2t_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEE14insert_no_growBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %.sroa.44.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !186
  br label %_RNvMs19_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_5EntryNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtB6_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1Z_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEE10or_defaultB16_.exit

_RNvMs19_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_5EntryNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtB6_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1Z_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEE10or_defaultB16_.exit: ; preds = %.thread, %bb.b
  %.pn.i = phi ptr [ %i.h, %bb.b ], [ %i.e, %.thread ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -48
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder17populate_defaults(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i16 noundef %2, i64 noundef range(i64 0, 2) %3, double %4, i64 noundef range(i64 0, 2) %5, double %6, i64 noundef range(i64 0, 2) %7, double %8, i64 noundef range(i64 0, 2) %9, double %10) unnamed_addr #0 {
bb.a:
  %i.a = uitofp i16 %2 to double                  ; 14 uses
  %i.b = fmul nnan double %i.a, 8.000000e-01
  %i.c = trunc nuw i64 %5 to i1
  %.sroa.011.0 = select i1 %i.c, double %6, double %i.b ; 4 uses
  %i.d = fmul nnan double %i.a, -2.000000e-01
  %i.e = trunc nuw i64 %7 to i1
  %.sroa.016.0 = select i1 %i.e, double %8, double %i.d ; 5 uses
  %i.f = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.011.0) ; 0 uses
  %i.g = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.016.0) ; 0 uses
  %i.h = fmul nnan double %i.a, 1.200000e+00
  %i.i = fadd double %i.h, %.sroa.016.0
  %i.j = fsub double %i.i, %.sroa.011.0
  %i.k = tail call nsz double @llvm.maximumnum.f64(double %i.j, double 0.000000e+00)
  %i.l = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %i.k)
  %i.m = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.011.0) ; 0 uses
  %i.n = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.016.0) ; 0 uses
  %i.o = fadd double %.sroa.011.0, %i.l           ; 2 uses
  %i.p = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %i.o) ; 0 uses
  %i.q = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.016.0) ; 0 uses
  %i.r = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef 0.000000e+00) ; 0 uses
  %i.s = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %i.o) ; 0 uses
  %i.t = tail call double @llvm.fabs.f64(double %.sroa.016.0)
  %i.u = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %i.t) ; 0 uses
  %i.v = fmul nnan double %i.a, f0x3FE6666666666666
  %i.w = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %i.v) ; 0 uses
  %i.x = fmul nnan double %i.a, 5.000000e-01
  %i.y = trunc nuw i64 %3 to i1
  %.sroa.021.0 = select i1 %i.y, double %4, double %i.x ; 3 uses
  %i.z = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.021.0) ; 0 uses
  %i.aa = trunc nuw i64 %9 to i1
  %.sroa.024.0 = select i1 %i.aa, double %10, double 0.000000e+00 ; 3 uses
  %i.ab = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %i.a) ; 0 uses
  %i.ac = tail call double @llvm.fabs.f64(double %.sroa.024.0)
  %i.ad = fcmp ult double %i.ac, f0x3CB0000000000000 ; 2 uses
  br i1 %i.ad, label %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = fmul nnan double %.sroa.024.0, f0xBF91DF46A2529D39
  %i.af = tail call noundef double @tan(double noundef %i.ae) #27
  %i.ag = fmul double %i.af, %i.a
  br label %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit

_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi double [ %i.ag, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.ah = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.0.0.i) ; 0 uses
  %i.ai = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef 0.000000e+00) ; 0 uses
  %i.aj = tail call fastcc { i64, double } @_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i8 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  %i.ak = extractvalue { i64, double } %i.aj, 0
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = extractvalue { i64, double } %i.aj, 1
  %i.an = fmul nnan double %i.a, 6.500000e-01
  %.sroa.027.0 = select i1 %i.al, double %i.am, double %i.an ; 3 uses
  %i.ao = tail call fastcc { i64, double } @_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i8 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  %i.ap = extractvalue { i64, double } %i.ao, 0
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = extractvalue { i64, double } %i.ao, 1
  %i.as = fmul nnan double %i.a, 6.000000e-01
  %.sroa.031.0 = select i1 %i.aq, double %i.ar, double %i.as ; 3 uses
  %i.at = tail call fastcc { i64, double } @_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i8 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  %i.au = extractvalue { i64, double } %i.at, 0
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = extractvalue { i64, double } %i.at, 1
  %i.ax = fmul nnan double %i.a, f0x3FB3333333333333
  %.sroa.036.0 = select i1 %i.av, double %i.aw, double %i.ax ; 3 uses
  %i.ay = tail call fastcc { i64, double } @_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i8 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  %i.az = extractvalue { i64, double } %i.ay, 0
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = extractvalue { i64, double } %i.ay, 1
  %i.bc = fmul nnan double %i.a, 3.500000e-01
  %.sroa.041.0 = select i1 %i.ba, double %i.bb, double %i.bc ; 2 uses
  tail call fastcc void @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.027.0)
  tail call fastcc void @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.031.0)
  br i1 %i.ad, label %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit50.critedge, label %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit48

_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit48: ; preds = %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit
  %i.bd = fneg double %.sroa.036.0
  %i.be = fmul nnan double %.sroa.024.0, f0xBF91DF46A2529D39 ; 2 uses
  %i.bf = tail call noundef double @tan(double noundef %i.be) #27
  %i.bg = fmul double %i.bf, %i.bd
  %i.bh = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %i.bg) ; 0 uses
  tail call fastcc void @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.036.0)
  tail call fastcc void @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.027.0)
  tail call fastcc void @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.031.0)
  %i.bi = tail call noundef double @tan(double noundef %i.be) #27
  %i.bj = fmul double %.sroa.041.0, %i.bi
  br label %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit50

_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit50.critedge: ; preds = %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit
  %i.bk = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef 0.000000e+00) ; 0 uses
  tail call fastcc void @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.036.0)
  tail call fastcc void @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.027.0)
  tail call fastcc void @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.031.0)
  br label %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit50

_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit50: ; preds = %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit50.critedge, %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit48
  %.sroa.0.0.i49 = phi double [ %i.bj, %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit48 ], [ 0.000000e+00, %_RNvNtCs3v5ql5U6hxj_6fontir2ir13adjust_offset.exit50.critedge ]
  %i.bl = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.0.0.i49) ; 0 uses
  tail call fastcc void @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.041.0)
  %i.bm = fmul nnan double %i.a, 5.000000e-02
  %i.bn = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %i.bm)
  %i.bo = fmul nnan double %i.a, -1.000000e-01
  %i.bp = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %i.bo) ; 0 uses
  %i.bq = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %i.bn) ; 0 uses
  %i.br = fcmp une double %.sroa.021.0, 0.000000e+00
  %i.bs = fmul double %.sroa.021.0, 6.000000e-01
  %i.bt = fmul nnan double %i.a, 2.200000e-01
  %.sroa.046.0 = select i1 %i.br, double %i.bs, double %i.bt
  %i.bu = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef %.sroa.046.0) ; 0 uses
  %i.bv = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef 0.000000e+00) ; 0 uses
  %i.bw = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef 1.000000e+00) ; 0 uses
  %i.bx = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef 0.000000e+00) ; 0 uses
  %i.by = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef 0.000000e+00) ; 0 uses
  %i.bz = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef 0.000000e+00) ; 0 uses
  %i.ca = tail call fastcc noundef double @_RINvMse_NtCs3v5ql5U6hxj_6fontir2irNtB6_20GlobalMetricsBuilder13set_if_absentRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEdEB8_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef 7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, double noundef 0.000000e+00) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, double } @_RNvMse_NtCs3v5ql5U6hxj_6fontir2irNtB5_20GlobalMetricsBuilder3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i8 noundef range(i8 26, 32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !211, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2s_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtB1D_4hash6random11RandomStateE3getBO_EBS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricEB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !214, !noundef !4 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !alias.scope !214, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.j      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !215 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [56 x i8], ptr %i.k, i64 %i.u ; 5 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -56
  %.val2.i.i.i = load i8, ptr %i.w, align 1, !range !14, !alias.scope !216, !noalias !217, !noundef !4
  %i.x = icmp eq i8 %1, %.val2.i.i.i
  br i1 %i.x, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2s_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtB1D_4hash6random11RandomStateE3getBO_EBS_.exit, label %bb.d, !prof !15

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2s_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtB1D_4hash6random11RandomStateE3getBO_EBS_.exit.thread, !prof !7

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMss_NtCs3v5ql5U6hxj_6fontir2irNtB5_13GlyphInstance18add_phantom_points:bb.a
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.g
  %i.m = add i64 %i.g, 1                          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 %i.m, ptr %i.f, align 8, !alias.scope !825
  %i.n = uitofp i16 %i.e to double
  %i.o = load i64, ptr %3, align 8, !range !16, !alias.scope !826, !noundef !4
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit8

bb.c:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit8

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit8: ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit, %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !826, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m ; 2 uses
  store double %i.n, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store double 0.000000e+00, ptr %i.s, align 8
  %i.t = add i64 %i.g, 2                          ; 3 uses
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !826
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !5, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = trunc nuw i64 %i.v to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load double, ptr %i.y, align 8
  %.val11 = load double, ptr %i.w, align 8        ; 2 uses
  %.sroa.03.0 = select i1 %i.x, double %.val, double %.val11
  %i.z = fadd double %.sroa.03.0, 5.000000e-01
  %i.aa = tail call double @llvm.floor.f64(double %i.z)
  %i.ab = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.aa)
  %i.ac = sitofp i16 %i.ab to double              ; 2 uses
  %i.ad = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load double, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = fsub double %.val11, %i.ai
  %.sroa.04.0 = select i1 %i.ae, double %i.ag, double %i.aj
  %i.ak = fadd double %.sroa.04.0, 5.000000e-01
  %i.al = tail call double @llvm.floor.f64(double %i.ak)
  %i.am = tail call i16 @llvm.fptoui.sat.i16.f64(double %i.al)
  %i.an = uitofp i16 %i.am to double
  %i.ao = fsub double %i.ac, %i.an
  br label %bb.e

bb.e:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit8, %bb.d
  %.sroa.5.0 = phi double [ %i.ao, %bb.d ], [ 0.000000e+00, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit8 ]
  %.sroa.0.0 = phi double [ %i.ac, %bb.d ], [ 0.000000e+00, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit8 ]
  %i.ap = load i64, ptr %3, align 8, !range !16, !alias.scope !827, !noundef !4
  %i.aq = icmp eq i64 %i.t, %i.ap
  br i1 %i.aq, label %bb.f, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit9

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit9

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit9: ; preds = %bb.e, %bb.f
  %i.ar = load ptr, ptr %i.j, align 8, !alias.scope !827, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.t ; 2 uses
  store double 0.000000e+00, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store double %.sroa.0.0, ptr %i.at, align 8
  %i.au = add i64 %i.g, 3                         ; 3 uses
  store i64 %i.au, ptr %i.f, align 8, !alias.scope !827
  %i.av = load i64, ptr %3, align 8, !range !16, !alias.scope !828, !noundef !4
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit10

bb.g:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit9
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit10

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit10: ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE8push_mutCs3v5ql5U6hxj_6fontir.exit9, %bb.g
  %i.ax = load ptr, ptr %i.j, align 8, !alias.scope !828, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.au ; 2 uses
  store double 0.000000e+00, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store double %.sroa.5.0, ptr %i.az, align 8
  %i.ba = add i64 %i.g, 4
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !828
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMss_NtCs3v5ql5U6hxj_6fontir2irNtB5_13GlyphInstance24values_for_interpolation(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [712 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load double, ptr %i.l, align 8, !noundef !4
  %i.n = load i64, ptr %1, align 8, !range !5, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load double, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !5, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load double, ptr %i.s, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %i.m, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !833
  %.sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 1, ptr %.sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !833
  %.sroa.7.sroa.4.sroa.0.sroa.4.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %.sroa.7.sroa.4.sroa.0.sroa.4.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !833
  %.sroa.7.sroa.4.sroa.0.sroa.5.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.f, ptr %.sroa.7.sroa.4.sroa.0.sroa.5.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !833
  %.sroa.7.sroa.4.sroa.0.sroa.6.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %.sroa.7.sroa.4.sroa.0.sroa.6.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !833
  %.sroa.7.sroa.4.sroa.0.sroa.8.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr null, ptr %.sroa.7.sroa.4.sroa.0.sroa.8.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !833
  %.sroa.7.sroa.4.sroa.4.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 2, ptr %.sroa.7.sroa.4.sroa.4.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !833
  %.sroa.7.sroa.4.sroa.6.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i64 2, ptr %.sroa.7.sroa.4.sroa.6.0..sroa.7.sroa.4.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !833
  %.sroa.7.sroa.5.0..sroa.56.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store i64 0, ptr %.sroa.7.sroa.5.0..sroa.56.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !833
  %.sroa.7.sroa.7.0..sroa.56.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store i64 0, ptr %.sroa.7.sroa.7.0..sroa.56.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !833
  %.sroa.7.sroa.8.sroa.4.0..sroa.7.sroa.8.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  store ptr %i.h, ptr %.sroa.7.sroa.8.sroa.4.0..sroa.7.sroa.8.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !833
  %.sroa.7.sroa.8.sroa.5.0..sroa.7.sroa.8.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store ptr %i.k, ptr %.sroa.7.sroa.8.sroa.5.0..sroa.7.sroa.8.0..sroa.56.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !alias.scope !833
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.n, ptr %i.u, align 8, !alias.scope !833
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.p, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !833
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !834
  store i64 %i.r, ptr %i.a, align 8, !alias.scope !834
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.t, ptr %i.v, align 8, !alias.scope !834
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecdEINtB2_18SpecFromIterNesteddINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainIB1v_IB1v_IB1v_INtNtB1z_7flatten7FlatMapIB2C_INtNtNtB1D_5slice4iter4IterNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathEINtNtB1z_6copied6CopiedIB36_NtB3y_6PathElEENvMB3y_B3w_4iterEIB2C_INtB2E_7FlattenINtNtNtB1D_5array4iter8IntoIterINtNtB1D_6option6OptionNtNtB3A_5point5PointEKj3_EEAdj2_NCNvNvMss_NtCs3v5ql5U6hxj_6fontir2irNtB71_13GlyphInstance24values_for_interpolation18iter_pathel_points0EB6T_EIB2C_IB36_NtB71_9ComponentEAdj6_NCB6V_0EEINtB61_8IntoIterdEEB9i_EB9i_EE9from_iterB73_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMss_NtCs3v5ql5U6hxj_6fontir2irNtB5_13GlyphInstance28new_with_interpolated_values(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 5 uses
  %i.k = icmp ult i64 %i.j, 384307168202282326
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.l = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !6, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.s = icmp samesign ule i64 %i.j, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.o, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.j, 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.y = icmp eq i64 %i.j, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.ad
  %.sroa.0.0115 = phi ptr [ %2, %.lr.ph ], [ %.sroa.0.0.lcssa.i, %bb.ad ] ; 2 uses
  %.sroa.21.0114 = phi i64 [ %3, %.lr.ph ], [ %.sroa.4.0.lcssa.i, %bb.ad ] ; 2 uses
  %.sroa.029.0113 = phi ptr [ %i.w, %.lr.ph ], [ %i.ad, %bb.ad ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.029.0113, i64 24 ; 2 uses
  %i.ae = getelementptr i8, ptr %.sroa.029.0113, i64 8
  %.sroa.029.0.val = load ptr, ptr %i.ae, align 8 ; 3 uses
  %i.af = getelementptr i8, ptr %.sroa.029.0113, i64 16
  %.sroa.029.0.val42 = load i64, ptr %i.af, align 8, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !846
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.029.0.val42, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.ag = load i64, ptr %i.a, align 8, !range !5, !noalias !846, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %.noexc
  %4 = load i64, ptr %i.z, align 8, !range !6, !noalias !846, !noundef !4
  %i.ai = load i64, ptr %i.aa, align 8, !noalias !846
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %4, i64 %i.ai) #22
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.029.0.val) ]
  %5 = load i64, ptr %i.z, align 8, !range !16, !noalias !846, !noundef !4 ; 2 uses
  %i.aj = load ptr, ptr %i.aa, align 8, !noalias !846, !nonnull !4, !noundef !4
  %i.ak = icmp ule i64 %.sroa.029.0.val42, %5
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !846
  store i64 %5, ptr %i.b, align 8, !noalias !846
  store ptr %i.aj, ptr %i.ab, align 8, !noalias !846
  store i64 0, ptr %i.ac, align 8, !noalias !846
  %.idx.i = mul nuw nsw i64 %.sroa.029.0.val42, 56
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.029.0.val, i64 %.idx.i
  %i.am = icmp eq i64 %.sroa.029.0.val42, 0
  br i1 %i.am, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.y
  %i.an = phi i64 [ %i.bz, %bb.y ], [ 0, %bb.f ]  ; 3 uses
  %.sroa.0.042.i = phi ptr [ %i.bu, %bb.y ], [ %.sroa.0.0115, %bb.f ] ; 11 uses
  %.sroa.4.041.i = phi i64 [ %i.bt, %bb.y ], [ %.sroa.21.0114, %bb.f ] ; 15 uses
  %.sroa.03.040.i = phi ptr [ %i.ao, %bb.y ], [ %.sroa.029.0.val, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.040.i, i64 56 ; 2 uses
  %.sroa.03.0.val.i = load i64, ptr %.sroa.03.040.i, align 8, !range !847, !noalias !846, !noundef !4 ; 2 uses
  switch i64 %.sroa.03.0.val.i, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.w
  ]

default.unreachable:                              ; preds = %.lr.ph.i
  unreachable

bb.g:                                             ; preds = %.lr.ph.i
  switch i64 %.sroa.4.041.i, label %bb.k [
    i64 0, label %.invoke.i.loopexit
    i64 1, label %.invoke.i
  ]

bb.h:                                             ; preds = %.lr.ph.i
  switch i64 %.sroa.4.041.i, label %bb.l [
    i64 0, label %.invoke.i.loopexit
    i64 1, label %.invoke.i
  ]

bb.i:                                             ; preds = %.lr.ph.i
  %.not8.i.i = icmp eq i64 %.sroa.4.041.i, 0
  br i1 %.not8.i.i, label %.invoke.i.loopexit, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i64 %.sroa.4.041.i, 0
  br i1 %.not.i.i, label %.invoke.i.loopexit, label %bb.q

bb.k:                                             ; preds = %bb.g
  %i.ap = load <2 x double>, ptr %.sroa.0.042.i, align 8, !alias.scope !848
  br label %bb.w

bb.l:                                             ; preds = %bb.h
  %i.aq = load <2 x double>, ptr %.sroa.0.042.i, align 8, !alias.scope !848
  br label %bb.w

bb.m:                                             ; preds = %bb.i
  %i.ar = load double, ptr %.sroa.0.042.i, align 8, !alias.scope !848, !noundef !4
  %.not9.i.i = icmp eq i64 %.sroa.4.041.i, 1
  br i1 %.not9.i.i, label %.invoke.i.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 8
  %i.at = load double, ptr %i.as, align 8, !alias.scope !848, !noundef !4
  %i.au = icmp samesign ugt i64 %.sroa.4.041.i, 2
  br i1 %i.au, label %bb.o, label %.invoke.i.loopexit

bb.o:                                             ; preds = %bb.n
  %.not10.i.i = icmp eq i64 %.sroa.4.041.i, 3
  br i1 %.not10.i.i, label %.invoke.i.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 16
  %i.aw = load <2 x double>, ptr %i.av, align 8, !alias.scope !848
  %i.ax = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.at, i64 1
  br label %bb.w

bb.q:                                             ; preds = %bb.j
  %i.az = load double, ptr %.sroa.0.042.i, align 8, !alias.scope !848, !noundef !4
  %.not5.i.i = icmp eq i64 %.sroa.4.041.i, 1
  br i1 %.not5.i.i, label %.invoke.i.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !alias.scope !848, !noundef !4
  %i.bc = icmp samesign ugt i64 %.sroa.4.041.i, 2
  br i1 %i.bc, label %bb.s, label %.invoke.i.loopexit

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 16
  %i.be = load double, ptr %i.bd, align 8, !alias.scope !848, !noundef !4
  %.not6.i.i = icmp eq i64 %.sroa.4.041.i, 3
  br i1 %.not6.i.i, label %.invoke.i.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 24
  %i.bg = load double, ptr %i.bf, align 8, !alias.scope !848, !noundef !4
  %i.bh = icmp samesign ugt i64 %.sroa.4.041.i, 4
  br i1 %i.bh, label %bb.u, label %.invoke.i.loopexit

bb.u:                                             ; preds = %bb.t
  %.not7.i.i = icmp eq i64 %.sroa.4.041.i, 5
  br i1 %.not7.i.i, label %.invoke.i.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i, i64 32
  %i.bj = load <2 x double>, ptr %i.bi, align 8, !alias.scope !848
  %i.bk = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bb, i64 1
  %i.bm = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bg, i64 1
  br label %bb.w

.invoke.i.loopexit:                               ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.m, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.ph = phi i64 [ 5, %bb.u ], [ %.sroa.4.041.i, %bb.g ], [ %.sroa.4.041.i, %bb.h ], [ 0, %bb.i ], [ 1, %bb.m ], [ 2, %bb.n ], [ 3, %bb.o ], [ 0, %bb.j ], [ 1, %bb.q ], [ 2, %bb.r ], [ 3, %bb.s ], [ 4, %bb.t ]
  %.ph165 = phi ptr [ @66, %bb.u ], [ @53, %bb.g ], [ @55, %bb.h ], [ @57, %bb.i ], [ @58, %bb.m ], [ @59, %bb.n ], [ @60, %bb.o ], [ @61, %bb.j ], [ @62, %bb.q ], [ @63, %bb.r ], [ @64, %bb.s ], [ @65, %bb.t ]
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.h, %bb.g, %.invoke.i.loopexit
  %i.bo = phi i64 [ %.ph, %.invoke.i.loopexit ], [ 1, %bb.g ], [ 1, %bb.h ] ; 2 uses
  %i.bp = phi ptr [ %.ph165, %.invoke.i.loopexit ], [ @56, %bb.h ], [ @54, %bb.g ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !846

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %.invoke.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #23
          to label %.body unwind label %bb.z, !noalias !846

bb.w:                                             ; preds = %bb.v, %bb.p, %bb.l, %bb.k, %.lr.ph.i
  %.sroa.01.0.i.i = phi i64 [ 2, %bb.k ], [ 2, %bb.l ], [ 4, %bb.p ], [ 6, %bb.v ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bq = phi <2 x double> [ %i.ap, %bb.k ], [ %i.aq, %bb.l ], [ %i.ay, %bb.p ], [ %i.bl, %bb.v ], [ undef, %.lr.ph.i ]
  %i.br = phi <2 x double> [ undef, %bb.k ], [ undef, %bb.l ], [ %i.aw, %bb.p ], [ %i.bn, %bb.v ], [ undef, %.lr.ph.i ]
  %i.bs = phi <2 x double> [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.p ], [ %i.bj, %bb.v ], [ undef, %.lr.ph.i ]
  %i.bt = sub nuw nsw i64 %.sroa.4.041.i, %.sroa.01.0.i.i ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.042.i, i64 %.sroa.01.0.i.i ; 2 uses
  %i.bv = load i64, ptr %i.b, align 8, !range !16, !alias.scope !849, !noalias !846, !noundef !4
  %i.bw = icmp eq i64 %i.an, %i.bv
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #25
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !846

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bx = load ptr, ptr %i.ab, align 8, !alias.scope !849, !noalias !846, !nonnull !4, !noundef !4
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %i.bx, i64 %i.an ; 4 uses
  store i64 %.sroa.03.0.val.i, ptr %i.by, align 8, !noalias !846
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store <2 x double> %i.bq, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !846
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store <2 x double> %i.br, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !846
  %.sroa.86.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store <2 x double> %i.bs, ptr %.sroa.86.0..sroa_idx.i, align 8, !noalias !846
  %i.bz = add nuw nsw i64 %i.an, 1                ; 2 uses
  store i64 %i.bz, ptr %i.ac, align 8, !alias.scope !849, !noalias !846
  %i.ca = icmp eq ptr %i.ao, %i.al
  br i1 %i.ca, label %.loopexit, label %.lr.ph.i

bb.z:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !846
  unreachable

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.aj ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cf, %bb.ab ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathEECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #23
          to label %bb.at unwind label %bb.as

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %._crit_edge, %bb.e, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSAdj6_EBN_.exit
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.y, %bb.f
  %.sroa.4.0.lcssa.i = phi i64 [ %.sroa.21.0114, %bb.f ], [ %i.bt, %bb.y ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.0.0115, %bb.f ], [ %i.bu, %bb.y ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.lcssa.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !846
  %i.cc = load i64, ptr %i.u, align 8, !alias.scope !850, !noundef !4 ; 3 uses
  %i.cd = load i64, ptr %i.h, align 8, !range !16, !alias.scope !850, !noundef !4
  %i.ce = icmp eq i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.loopexit
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathE8grow_oneCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ad unwind label %bb.ab, !noalias !851

bb.ab:                                            ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #23
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ad:                                            ; preds = %bb.aa, %.loopexit
  %i.ch = load ptr, ptr %i.t, align 8, !alias.scope !850, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.cj = add i64 %i.cc, 1
  store i64 %i.cj, ptr %i.u, align 8, !alias.scope !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ck = icmp eq ptr %i.ad, %i.x
  br i1 %i.ck, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.ad, %bb.c
  %.sroa.21.0.lcssa = phi i64 [ %3, %bb.c ], [ %.sroa.4.0.lcssa.i, %bb.ad ] ; 6 uses
  %.sroa.0.0.lcssa = phi ptr [ %2, %bb.c ], [ %.sroa.0.0.lcssa.i, %bb.ad ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4 ; 3 uses
  %i.cp = udiv i64 %.sroa.21.0.lcssa, 6
  %i.cq = getelementptr inbounds nuw [96 x i8], ptr %i.cm, i64 %i.co
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.lcssa, i64 %i.cp
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEIBX_Adj6_EEINtB5_7ZipImplBW_B1Z_E3newB1q_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cq, ptr noundef nonnull readonly align 8 %.sroa.0.0.lcssa, ptr noundef nonnull readonly %i.cr)
          to label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSAdj6_EBN_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSAdj6_EBN_.exit: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB2f_3zip3ZipINtNtNtB2j_5slice4iter4IterB13_EIB3g_Adj6_EENCNvMss_B15_NtB15_13GlyphInstance28new_with_interpolated_values0EE9from_iterB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSAdj6_EBN_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = icmp ult i64 %i.co, 96076792050570582
  call void @llvm.assume(i1 %i.cs)
  %i.ct = mul nuw nsw i64 %i.co, 6                ; 5 uses
  %i.cu = icmp ugt i64 %i.ct, %.sroa.21.0.lcssa
  br i1 %i.cu, label %bb.ag, label %bb.af, !prof !7

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ct ; 3 uses
  %.not = icmp eq i64 %.sroa.21.0.lcssa, %i.ct
  br i1 %.not, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ct, i64 noundef %.sroa.21.0.lcssa, i64 noundef %.sroa.21.0.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22
          to label %bb.ak unwind label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.cw = load double, ptr %i.cv, align 8, !noundef !4
  %i.cx = xor i64 %i.ct, -1
  %i.cy = add nsw i64 %.sroa.21.0.lcssa, %i.cx    ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.da = load i64, ptr %1, align 8, !range !5, !noundef !4
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.al, label %bb.am

bb.ai:                                            ; preds = %bb.af
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #22
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ar, %bb.ai, %bb.ag
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %.body unwind label %bb.as

bb.ak:                                            ; preds = %bb.ar, %bb.ai, %bb.ag
  unreachable

bb.al:                                            ; preds = %bb.ah
  %.not39 = icmp eq i64 %i.cy, 0
  br i1 %.not39, label %.thread66, label %bb.an

bb.am:                                            ; preds = %bb.ah, %bb.an
  %.sroa.4.0 = phi double [ %i.dg, %bb.an ], [ undef, %bb.ah ] ; 2 uses
  %.sroa.031.0 = phi i64 [ 1, %bb.an ], [ 0, %bb.ah ] ; 2 uses
  %.sroa.21.1 = phi i64 [ %i.dh, %bb.an ], [ %i.cy, %bb.ah ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.di, %bb.an ], [ %i.cz, %bb.ah ]
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !range !5, !noundef !4
  %i.df = trunc nuw i64 %i.de to i1
  br i1 %i.df, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.dg = load double, ptr %i.cz, align 8, !noundef !4
  %i.dh = add nsw i64 %i.cy, -1
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %.not40 = icmp eq i64 %.sroa.21.1, 0
  br i1 %.not40, label %.thread66, label %bb.aq

bb.ap:                                            ; preds = %bb.am, %bb.aq
  %.sroa.433.0 = phi double [ %i.dk, %bb.aq ], [ undef, %bb.am ]
  %.sroa.032.0 = phi i64 [ 1, %bb.aq ], [ 0, %bb.am ]
  %.sroa.21.2 = phi i64 [ %i.dl, %bb.aq ], [ %.sroa.21.1, %bb.am ]
  %i.dj = icmp eq i64 %.sroa.21.2, 0
  br i1 %i.dj, label %.thread66, label %bb.ar, !prof !852

bb.aq:                                            ; preds = %bb.ao
  %i.dk = load double, ptr %.sroa.0.1, align 8, !noundef !4
  %i.dl = add nsw i64 %.sroa.21.1, -1
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @48, ptr noundef nonnull inttoptr (i64 129 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #22
          to label %bb.ak unwind label %bb.aj

.thread66:                                        ; preds = %bb.al, %bb.ao, %bb.ap
  %.sroa.032.075 = phi i64 [ %.sroa.032.0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.al ]
  %.sroa.433.074 = phi double [ %.sroa.433.0, %bb.ap ], [ undef, %bb.ao ], [ undef, %bb.al ]
  %.sroa.4.05473 = phi double [ %.sroa.4.0, %bb.ap ], [ %.sroa.4.0, %bb.ao ], [ undef, %bb.al ]
  %.sroa.031.05672 = phi i64 [ %.sroa.031.0, %bb.ap ], [ %.sroa.031.0, %bb.ao ], [ 0, %bb.al ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.cw, ptr %i.do, align 8
  store i64 %.sroa.031.05672, ptr %0, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.4.05473, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.032.075, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.433.074, ptr %i.dr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.as:                                            ; preds = %bb.aj, %.body
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.at:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMst_NtCs3v5ql5U6hxj_6fontir2irNtB5_9Component19has_nonidentity_2x2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.c = call noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpdINtB5_14SlicePartialEqdE17equal_same_lengthCs3v5ql5U6hxj_6fontir(ptr noundef nonnull %i.a, ptr noundef nonnull @51, i64 noundef 4)
  %i.d = xor i1 %i.c, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsu_NtCs3v5ql5U6hxj_6fontir2irNtB5_13ColorPalettes3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %.idx = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 2 uses
  %.not2.not.not.i.not86 = icmp eq i64 %i.g, 0
  br i1 %.not2.not.not.i.not86, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsu_B1p_NtB1p_13ColorPalettes3new0EB1r_.exit, label %.lr.ph88

bb.b:                                             ; preds = %.lr.ph88
  %i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.not2.not.not.i.not = icmp eq ptr %i.i, %i.h
  br i1 %.not2.not.not.i.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs3v5ql5U6hxj_6fontir2ir5ColorEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsu_B1p_NtB1p_13ColorPalettes3new0EB1r_.exit, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
end_hunk_2
