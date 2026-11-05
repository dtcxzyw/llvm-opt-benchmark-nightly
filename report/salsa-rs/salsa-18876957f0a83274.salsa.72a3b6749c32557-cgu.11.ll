Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.11?download=true
inline.NumInlined: 190
inline.NumDeleted: 114
begin_hunk_0_@_RNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !198
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i64 0, ptr %i.aa, align 8, !alias.scope !199, !noalias !198
  store i32 0, ptr %i.l, align 8, !alias.scope !199, !noalias !198
  %i.ab = invoke { ptr, ptr } @_RNvXs9_NtCsC8CapfvpQ1_5salsa5cycleRNtB5_10CycleHeadsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !200 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !198
  store ptr %i.ac, ptr %i.k, align 8, !noalias !198
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !noalias !198
  br label %bb.f

bb.f:                                             ; preds = %bb.o, %bb.e
  %.sroa.02.0.i = phi i1 [ false, %bb.e ], [ %i.bf, %bb.o ] ; 2 uses
  %.sroa.0.0.i = phi i16 [ %4, %bb.e ], [ %.sroa.0.0.i.i, %bb.o ] ; 2 uses
  %i.af = invoke noundef align 4 ptr @_RNvXs6_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !200 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false), !noalias !200
  %i.ag = invoke fastcc { i16, i1 } @_RNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursive(ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 4 captures(address) dereferenceable(12) %i.j, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef align 8 dereferenceable(80) %i.l)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false), !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !198
  invoke void @_RNvXsM_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBN_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.i)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !198
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  %i.aj = load i64, ptr %i.ah, align 8, !noalias !198, !noundef !45 ; 2 uses
  %i.ak = load i64, ptr %i.ai, align 8, !noalias !198, !noundef !45
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit.i

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit.i: ; preds = %bb.m, %.lr.ph.i
  %i.ap = phi i64 [ %i.aj, %.lr.ph.i ], [ %i.az, %bb.m ] ; 2 uses
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ah, align 8, !noalias !198
  %i.ar = load i64, ptr %i.am, align 8, !alias.scope !201, !noalias !198, !noundef !45
  %i.as = icmp ugt i64 %i.ar, 4
  %i.at = load ptr, ptr %i.ao, align 8, !nonnull !45
  %.sink12.i.i = select i1 %i.as, ptr %i.at, ptr %i.an
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %.sink12.i.i, i64 %i.ap ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.au, i64 12, i1 false), !noalias !200
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !200
  %i.av = invoke noundef zeroext i1 @_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads6insert(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.g, i16 noundef %.sroa.4.0.copyload.i)
          to label %bb.m unwind label %bb.l, !noalias !200 ; 0 uses

._crit_edge.i:                                    ; preds = %bb.m, %.noexc
  invoke void @_RNvXsG_Csi1wr4QBDb3z_8smallvecINtB5_8IntoIterATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsi1wr4QBDb3z_8smallvec8IntoIterATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_.exit.i unwind label %bb.j, !noalias !200

bb.j:                                             ; preds = %._crit_edge.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.h)
          to label %.body unwind label %bb.k, !noalias !200

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsi1wr4QBDb3z_8smallvec8IntoIterATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_.exit.i: ; preds = %._crit_edge.i
  invoke void @_RNvXsw_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.h)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !200
  unreachable

bb.l:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsi1wr4QBDb3z_8smallvec8IntoIterATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_(ptr noalias noundef align 8 dereferenceable(96) %i.h) #19
          to label %.body unwind label %bb.n, !noalias !200

bb.m:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !198
  %i.az = load i64, ptr %i.ah, align 8, !noalias !198, !noundef !45 ; 2 uses
  %i.ba = load i64, ptr %i.ai, align 8, !noalias !198, !noundef !45
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %._crit_edge.i, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_E6tripleBN_.exit.i

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !200
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.bd = extractvalue { i16, i1 } %i.ag, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !198
  %.sroa.0.0.i.i = call noundef i16 @llvm.umax.i16(i16 %i.bd, i16 %.sroa.0.0.i)
  %i.be = extractvalue { i16, i1 } %i.ag, 1
  %i.bf = or i1 %.sroa.02.0.i, %i.be
  br label %bb.f

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.f, %bb.d
  %lpad.loopexit.split-lp262 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.l)
          to label %.body unwind label %bb.n, !noalias !200

bb.p:                                             ; preds = %bb.c
  %i.bg = add i16 %4, 1                           ; 2 uses
  %.sroa.09.0.extract.trunc = trunc i16 %i.bg to i8
  %i.bh = icmp ult i8 %.sroa.09.0.extract.trunc, -55
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.c
  %.sroa.0.0 = phi i16 [ 0, %bb.c ], [ %i.bg, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard8complete(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, i16 noundef %.sroa.0.0)
          to label %bb.y unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !202
  store ptr %i.s, ptr %i.f, align 8, !noalias !202
  %i.bi = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !202
  %i.bj = icmp ult i64 %i.bi, 4
  br i1 %i.bj, label %bb.s, label %.noexc28

bb.s:                                             ; preds = %bb.r
  %i.bk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query010___CALLSITE, i64 16) monotonic, align 8, !noalias !202 ; 3 uses
  switch i8 %i.bk, label %bb.t [
    i8 0, label %.noexc28
    i8 1, label %bb.u
    i8 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bl = invoke noundef i8 @_RNvMNtCsjvLTWb8VeNU_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query010___CALLSITE)
          to label %.noexc24 unwind label %.loopexit.split-lp ; 2 uses

.noexc24:                                         ; preds = %bb.t
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %.noexc28, label %bb.u

bb.u:                                             ; preds = %bb.s, %.noexc24, %bb.s
  %.sroa.05.0.i = phi i8 [ %i.bl, %.noexc24 ], [ %i.bk, %bb.s ], [ %i.bk, %bb.s ]
  %i.bn = load ptr, ptr @_RNvNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query010___CALLSITE, align 8, !noalias !202, !nonnull !45, !align !50, !noundef !45
  %i.bo = invoke noundef zeroext i1 @_RNvNtCsdyr9GQQDC9w_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn, i8 noundef %.sroa.05.0.i)
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.u
  br i1 %i.bo, label %bb.v, label %.noexc28

bb.v:                                             ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !202
  %i.bp = load ptr, ptr @_RNvNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query010___CALLSITE, align 8, !noalias !202, !nonnull !45, !align !50, !noundef !45
  store ptr %i.bp, ptr %i.e, align 8, !noalias !202
  %i.bq = invoke noundef zeroext i1 @_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0EB16_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !202
  br i1 %i.bq, label %bb.w, label %.noexc28

.noexc28:                                         ; preds = %bb.w, %.noexc26, %.noexc25, %.noexc24, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !202
  store ptr %i.s, ptr %i.d, align 8, !noalias !202
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !202
  br label %.invoke

bb.w:                                             ; preds = %.noexc26
  invoke fastcc void @_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query00B9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %.noexc28 unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.aj, %bb.al, %.noexc41, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %bb.q, %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsi1wr4QBDb3z_8smallvec8IntoIterATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_.exit.i, %bb.t, %bb.u, %bb.v, %bb.w, %bb.ag, %.noexc37, %bb.ak, %6
  %.sroa.07.2.ph = phi i1 [ true, %6 ], [ true, %.noexc37 ], [ true, %bb.ag ], [ false, %bb.q ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.i ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsi1wr4QBDb3z_8smallvec8IntoIterATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_.exit.i ], [ true, %bb.ak ], [ true, %.invoke ], [ true, %bb.w ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.at, %bb.j, %bb.l, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sroa.07.2.lpad-body = phi i1 [ true, %bb.j ], [ true, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.l ], [ true, %.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.at ], [ true, %.loopexit ], [ %.sroa.07.2.ph, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.j ], [ %lpad.loopexit.split-lp262, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ay, %bb.l ], [ %lpad.loopexit.split-lp255, %.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %bb.at ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.br = load ptr, ptr %i.r, align 8, !alias.scope !203, !nonnull !45, !noundef !45
  %i.bs = icmp eq ptr %i.br, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.bs, label %.noexc29, label %bb.x, !prof !46

bb.x:                                             ; preds = %.body
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.noexc29 unwind label %bb.ay

bb.y:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  store i16 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bu = load ptr, ptr %i.r, align 8, !alias.scope !204, !nonnull !45, !noundef !45
  %i.bv = icmp eq ptr %i.bu, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.bv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit31, label %bb.z, !prof !46

bb.z:                                             ; preds = %bb.y
  call void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit31

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsi1wr4QBDb3z_8smallvec8IntoIterATNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtNtB1g_5cycle14IterationStampEj4_EEB1g_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !45, !align !50, !noundef !45 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 8 uses
  %i.bz = load i64, ptr %i.by, align 8, !noalias !206, !noundef !45 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 9223372036854775807
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  store i64 %i.cb, ptr %i.by, align 8, !noalias !206
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !208, !noalias !209, !noundef !45 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !208, !noalias !209, !noundef !45 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.cd, %i.cf
  br i1 %.not.i.i, label %bb.ab, label %bb.ac, !prof !210

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cd, i64 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !211

.noexc.i:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !208, !noalias !209, !nonnull !45, !noundef !45 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.cd, 184
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.cj = icmp eq i64 %i.cd, 0
  br i1 %i.cj, label %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !alias.scope !213, !noundef !45
  %i.cm = load i32, ptr %i.m, align 4, !range !55, !alias.scope !213
  %i.cn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !alias.scope !213
  br label %bb.ad

bb.ad:                                            ; preds = %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.cp = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.cq, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 184 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 172
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !214, !noundef !45
  %i.ct = icmp eq i32 %i.cs, %i.cl
  br i1 %i.ct, label %bb.ae, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  %i.cv = load i32, ptr %i.cu, align 8, !range !55, !noalias !214, !noundef !45
  %i.cw = icmp eq i32 %i.cv, %i.cm
  br i1 %i.cw, label %bb.af, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 176
  %i.cy = load i32, ptr %i.cx, align 8, !noalias !214, !noundef !45
  %.not.i.i.i.i = icmp eq i32 %i.cy, %i.co
  br i1 %.not.i.i.i.i, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 168 ; 2 uses
  %i.da = invoke noundef zeroext i1 @_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads8contains(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cz)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !211

.noexc5.i:                                        ; preds = %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i
  br i1 %i.da, label %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i: ; preds = %.noexc5.i, %bb.af
  %i.db = icmp eq ptr %i.cq, %i.ci
  br i1 %i.db, label %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.loopexit.i, label %bb.ad

_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.loopexit.i: ; preds = %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.thread.i.i.i
  %.pre.i = load i64, ptr %i.by, align 8, !noalias !209
  %i.dc = add i64 %.pre.i, -1
  br label %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.i

_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.i: ; preds = %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.loopexit.i, %bb.ac
  %i.dd = phi i64 [ %i.dc, %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.loopexit.i ], [ %i.bz, %bb.ac ]
  store i64 %i.dd, ptr %i.by, align 8, !noalias !209
  br label %bb.ag

.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle00B9_.exit.i.i.i, %bb.ab
  %lpad.loopexit.split-lp255 = landingpad { ptr, i32 }
          cleanup
  %i.de = load i64, ptr %i.by, align 8, !noalias !209, !noundef !45
  %i.df = add i64 %i.de, -1
  store i64 %i.df, ptr %i.by, align 8, !noalias !209
  br label %.body

_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i: ; preds = %.noexc5.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 172
  %.sroa.0.0.copyload49 = load i32, ptr %i.cz, align 8, !noalias !215 ; 2 uses
  %.sroa.12.0.copyload55 = load i64, ptr %i.dg, align 4, !noalias !215 ; 2 uses
  %i.dh = load i64, ptr %i.by, align 8, !noalias !209, !noundef !45
  %i.di = add i64 %i.dh, -1
  store i64 %i.di, ptr %i.by, align 8, !noalias !209
  %.not.i33 = icmp eq i32 %.sroa.0.0.copyload49, 0
  br i1 %.not.i33, label %bb.ag, label %_RNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle.exit

bb.ag:                                            ; preds = %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i, %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.i
  %.sroa.12.0 = phi i64 [ undef, %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.thread.i ], [ %.sroa.12.0.copyload55, %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !209
  invoke void @_RNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeads11iter_not_eq(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.m)
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.dk = invoke noundef align 4 ptr @_RNvXs8_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc38 unwind label %.loopexit.split-lp ; 2 uses

.noexc38:                                         ; preds = %.noexc37
  %.not28.i.i = icmp eq ptr %i.dk, null
  br i1 %.not28.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc38
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !alias.scope !217, !noalias !209, !noundef !45
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc44, %.lr.ph.i.i
  %i.dt = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.fi, %.noexc44 ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4, !noalias !219, !noundef !45
  %i.dw = icmp eq i32 %i.dv, %i.dm
  br i1 %i.dw, label %bb.ai, label %_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.dx = load i32, ptr %i.dt, align 4, !range !55, !noalias !219, !noundef !45
  %i.dy = load i32, ptr %i.dj, align 8, !range !55, !alias.scope !217, !noalias !209, !noundef !45
  %i.dz = icmp eq i32 %i.dx, %i.dy
  br i1 %i.dz, label %_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i, label %_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i

_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i: ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !noalias !219, !noundef !45
  %i.ec = load i32, ptr %i.dn, align 8, !alias.scope !217, !noalias !209, !noundef !45
  %.not.i.i.i = icmp eq i32 %i.eb, %i.ec
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i, label %_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i

_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i: ; preds = %_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i, %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !220
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !noalias !221, !noundef !45
  %i.ef = zext i32 %i.ee to i64                   ; 3 uses
  %i.eg = load i64, ptr %i.do, align 8, !noalias !220, !noundef !45 ; 2 uses
  %i.eh = icmp ugt i64 %i.eg, %i.ef
  br i1 %i.eh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i
  %i.ei = load ptr, ptr %i.dp, align 8, !noalias !220, !nonnull !45, !noundef !45
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.ef ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !221, !nonnull !45, !noundef !45
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !noalias !221, !nonnull !45, !align !50, !noundef !45
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 88
  %i.eo = load ptr, ptr %i.en, align 8, !invariant.load !45, !noalias !221, !nonnull !45
  %i.ep = invoke { ptr, ptr } %i.eo(ptr noundef nonnull %i.ek)
          to label %.noexc39 unwind label %.loopexit, !inline_history !196 ; 2 uses

.noexc39:                                         ; preds = %bb.aj
  %i.eq = extractvalue { ptr, ptr } %i.ep, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i, label %6, label %bb.al, !prof !51

bb.ak:                                            ; preds = %_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.thread.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ef, i64 noundef %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %.noexc39
  %i.er = extractvalue { ptr, ptr } %i.ep, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  store ptr %i.eq, ptr %i.b, align 8, !noalias !220
  store ptr %i.er, ptr %i.dq, align 8, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !220
  %i.es = invoke noundef nonnull align 8 ptr @_RNvMNtCsC8CapfvpQ1_5salsa8functionNtB2_21FunctionIngredientRef10sync_table(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc41 unwind label %.loopexit

.noexc41:                                         ; preds = %bb.al
  %i.et = load i32, ptr %i.dt, align 4, !range !55, !noalias !221, !noundef !45
  %i.eu = load i32, ptr %i.du, align 4, !noalias !221, !noundef !45
  invoke void @_RNvMNtNtCsC8CapfvpQ1_5salsa8function4syncNtB2_9SyncTable10peek_claim(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %i.es, ptr noundef nonnull align 8 %1, i32 noundef %i.et, i32 noundef %i.eu, i1 noundef zeroext true)
          to label %.noexc42.a unwind label %.loopexit

.noexc42.a:                                       ; preds = %.noexc41
  %5 = load i8, ptr %i.a, align 8, !range !48, !noalias !220, !noundef !45 ; 2 uses
  %.val5.i.i.i.i.i = load ptr, ptr %i.dr, align 8, !noalias !220 ; 5 uses
  %i.ev = icmp eq i8 %5, 1
  br i1 %i.ev, label %bb.am, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i

bb.am:                                            ; preds = %.noexc42.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i) ]
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %.val5.i.i.i.i.i, align 8, !noalias !221, !nonnull !45, !align !50, !noundef !45 ; 2 uses
  %i.ew = getelementptr i8, ptr %.val5.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.ew, align 8, !noalias !221 ; 6 uses
  %i.ex = cmpxchg ptr %.val.i.i.i.i.i.i.i.i, i8 1, i8 0 release monotonic, align 1, !noalias !221
  %i.ey = extractvalue { i8, i1 } %i.ex, 1
  br i1 %i.ey, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i.i.i.i.i.i.i, label %bb.an, !prof !46

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.ao, !noalias !221

bb.ao:                                            ; preds = %bb.an
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i) ]
  %i.fa = cmpxchg ptr %.val1.i.i.i.i.i.i.i.i, i8 1, i8 0 release monotonic, align 1, !noalias !221
  %i.fb = extractvalue { i8, i1 } %i.fa, 1
  br i1 %i.fb, label %bb.at, label %bb.ap, !prof !46

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i1 noundef zeroext false)
          to label %bb.at unwind label %bb.ar, !noalias !221

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i) ]
  %i.fc = cmpxchg ptr %.val1.i.i.i.i.i.i.i.i, i8 1, i8 0 release monotonic, align 1, !noalias !221
  %i.fd = extractvalue { i8, i1 } %i.fc, 1
  br i1 %i.fd, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i, label %bb.aq, !prof !46

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i1 noundef zeroext false)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i unwind label %bb.as, !noalias !221

bb.ar:                                            ; preds = %bb.ap
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !221
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap, %bb.ao
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ff, %bb.as ], [ %i.ez, %bb.ap ], [ %i.ez, %bb.ao ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef 48, i64 noundef 8) #20, !noalias !221
  br label %.body

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i: ; preds = %bb.aq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef 48, i64 noundef 8) #20, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !220
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i

6:                                                ; preds = %.noexc39
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %6
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i: ; preds = %.noexc42.a
  %i.fg = load i8, ptr %i.ds, align 1, !range !56, !noalias !220
  %7 = icmp ne i8 %5, 2
  %i.fh = trunc nuw i8 %i.fg to i1
  %.sroa.0.0.i.not.i.i.i.i = select i1 %7, i1 true, i1 %i.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !220
  br i1 %.sroa.0.0.i.not.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i, label %_RINvYNtNtCsC8CapfvpQ1_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBW_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBY_3ops12control_flow11ControlFlowB2W_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBQ_5rfind5checkB2W_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3d_EB7_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.thread.i.i, %_RNCNvMs4_NtCsC8CapfvpQ1_5salsa5cycleNtB7_10CycleHeads11iter_not_eq0B9_.exit.i.i.i
  %i.fi = invoke noundef align 4 ptr @_RNvXs8_NtCsC8CapfvpQ1_5salsa5cycleNtB5_18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc44 unwind label %.loopexit ; 2 uses

.noexc44:                                         ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeaduINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs4_B18_NtB18_10CycleHeads11iter_not_eq0NCINvNvNtNtNtB8_6traits12double_ended19DoubleEndedIterator5rfind5checkB15_NCNvNtNtB1a_8function7execute11outer_cycles_0E0E0B1a_.exit.i.i
  %.not.i6.i = icmp eq ptr %i.fi, null
  br i1 %.not.i6.i, label %.loopexit.i, label %bb.ah

_RINvYNtNtCsC8CapfvpQ1_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBW_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBY_3ops12control_flow11ControlFlowB2W_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBQ_5rfind5checkB2W_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3d_EB7_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkRNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNCNvNtNtB1z_8function7execute11outer_cycles_0E0B1z_.exit.i.i.i
  %.sroa.0.0.copyload48 = load i32, ptr %i.dt, align 4, !noalias !205
  %.sroa.12.0.copyload53 = load i64, ptr %i.du, align 4, !noalias !205
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.noexc44, %.noexc38, %_RINvYNtNtCsC8CapfvpQ1_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBW_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBY_3ops12control_flow11ControlFlowB2W_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBQ_5rfind5checkB2W_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3d_EB7_.exit.i
  %.sroa.12.1 = phi i64 [ %.sroa.12.0.copyload53, %_RINvYNtNtCsC8CapfvpQ1_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBW_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBY_3ops12control_flow11ControlFlowB2W_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBQ_5rfind5checkB2W_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3d_EB7_.exit.i ], [ %.sroa.12.0, %.noexc38 ], [ %.sroa.12.0, %.noexc44 ]
  %.sroa.0.057 = phi i32 [ %.sroa.0.0.copyload48, %_RINvYNtNtCsC8CapfvpQ1_5salsa5cycle18CycleHeadsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtBW_8adapters6filter15filter_try_foldRNtB5_9CycleHeaduINtNtNtBY_3ops12control_flow11ControlFlowB2W_ENCNvMs4_B5_NtB5_10CycleHeads11iter_not_eq0NCINvNvBQ_5rfind5checkB2W_NCNvNtNtB7_8function7execute11outer_cycles_0E0E0B3d_EB7_.exit.i ], [ 0, %.noexc38 ], [ 0, %.noexc44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !209
  br label %_RNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle.exit

_RNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle.exit: ; preds = %.loopexit.i, %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i
  %.sroa.12.2 = phi i64 [ %.sroa.12.1, %.loopexit.i ], [ %.sroa.12.0.copyload55, %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.057, %.loopexit.i ], [ %.sroa.0.0.copyload49, %_RINvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_10ZalsaLocal26with_query_stack_uncheckedINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB7_3key16DatabaseKeyIndexENCNvNtNtB7_8function7execute11outer_cycle0EB7_.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not21 = icmp eq i32 %.sroa.0.1, 0             ; 2 uses
  br i1 %.sroa.02.0.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle.exit
  br i1 %.not21, label %bb.ax, label %bb.aw, !prof !51

bb.av:                                            ; preds = %_RNvNtNtCsC8CapfvpQ1_5salsa8function7execute11outer_cycle.exit
  %spec.select = select i1 %.not21, i16 %.sroa.0.0.i, i16 %4
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.05.0.copyload = load i64, ptr %i.r, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.05.0.copyload, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.1, ptr %i.fl, align 4
  %.sroa.12.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.2, ptr %.sroa.12.0..sroa_idx50, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %spec.select, ptr %i.fm, align 2
  store i16 2, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit31

bb.aw:                                            ; preds = %bb.au
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.03.0.copyload = load i64, ptr %i.r, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.03.0.copyload, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.1, ptr %i.fp, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.2, ptr %.sroa.4.0..sroa_idx, align 8
  store i16 1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit31

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.s, ptr %i.o, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.r, ptr %i.fq, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXsz_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeadsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  br label %.invoke

.invoke:                                          ; preds = %.noexc28, %bb.ax
  %i.fr = phi ptr [ @21, %bb.ax ], [ @0, %.noexc28 ]
  %i.fs = phi ptr [ %i.o, %bb.ax ], [ %i.d, %.noexc28 ]
  %i.ft = phi ptr [ @22, %bb.ax ], [ @10, %.noexc28 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %i.fr, ptr noundef nonnull %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ft) #21
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit31: ; preds = %bb.aw, %bb.y, %bb.z, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.ay:                                            ; preds = %bb.az, %bb.x
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local16ActiveQueryGuardEBF_.exit: ; preds = %bb.az, %.noexc29
  %.pn58 = phi { ptr, i32 } [ %.pn59, %bb.az ], [ %eh.lpad-body, %.noexc29 ]
  resume { ptr, i32 } %.pn58

bb.az:                                            ; preds = %.split.thread, %.noexc29
  %.pn59 = phi { ptr, i32 } [ %i.v, %.split.thread ], [ %eh.lpad-body, %.noexc29 ]
  invoke void @_RNvXsv_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local16ActiveQueryGuardEBF_.exit unwind label %bb.ay
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsC8CapfvpQ1_5salsa8function7execute20complete_cycle_query(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, i16 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !226 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 8 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [88 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [56 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtBZ_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2y_3key16DatabaseKeyIndexB3e_EEEEE4withNvMsa_BX_BU_4takeB1s_EB2y_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @23)
          to label %bb.b unwind label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.j, align 8, !range !227, !noundef !45
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXsa_NtCsffXo9NmvYC7_8indexmap3setINtB5_8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEENtNtB1C_7default7Default7defaultBR_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(88) %i.k)
          to label %_RNvXse_NtCs4NRVxsYgnAr_4core5tupleTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB7_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1g_3key16DatabaseKeyIndexB1W_EENtNtB7_7default7Default7defaultB1g_.exit unwind label %bb.ab

_RNvXse_NtCs4NRVxsYgnAr_4core5tupleTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB7_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1g_3key16DatabaseKeyIndexB1W_EENtNtB7_7default7Default7defaultB1g_.exit: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) @64, i64 32, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXse_NtCs4NRVxsYgnAr_4core5tupleTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB7_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1g_3key16DatabaseKeyIndexB1W_EENtNtB7_7default7Default7defaultB1g_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard6detach(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.g unwind label %bb.p

bb.f:                                             ; preds = %bb.s
  br i1 %cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local16ActiveQueryGuardEBF_.exit, label %.thread37

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.r = load i64, ptr %i.q, align 8, !noundef !45
  invoke void @_RNvMs_NtCsffXo9NmvYC7_8indexmap5innerINtB4_4CoreNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE7reserveBO_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m, i64 noundef %i.r)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val = load ptr, ptr %i.s, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val9 = load i64, ptr %i.t, align 8, !noundef !45 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val9, 24
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.v = icmp eq i64 %.val9, 0
  br i1 %i.v, label %_RNvNtNtCsC8CapfvpQ1_5salsa8function7execute26flatten_cycle_dependencies.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.aa, %.noexc ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.ab, i64 12, i1 false), !noalias !228
  %i.ac = load i32, ptr %i.w, align 4, !noalias !228, !noundef !45 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.a, align 4, !noalias !228, !noundef !45
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  %i.ag = icmp ne i32 %i.af, 0
  call void @llvm.assume(i1 %i.ag)
  %i.ah = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.ai = load i64, ptr %i.x, align 8, !noalias !228, !noundef !45 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.l, label %bb.m
end_hunk_0
