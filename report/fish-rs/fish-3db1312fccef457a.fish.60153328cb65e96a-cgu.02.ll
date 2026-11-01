Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.02?download=true
inline.NumInlined: 2281
inline.NumDeleted: 862
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RNSNvYNCINvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBa_8DebounceNtNtNtBe_6reader6reader15HighlightResultE7performNCNvB15_23get_highlight_performer0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_once6vtableBe_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1568
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1568, !nonnull !10, !noundef !10 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB14_6reader6reader15HighlightResultEE4lockB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bc)
          to label %bb.s unwind label %bb.r, !noalias !1568

bb.r:                                             ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader23get_highlight_performer0B7_.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.u, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bd, %bb.r ], [ %i.bl, %bb.u ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish6reader6reader15HighlightResultEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #50
          to label %.body7.i unwind label %bb.ai, !noalias !1568

bb.s:                                             ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader23get_highlight_performer0B7_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.be = load i64, ptr %i.d, align 8, !range !12, !alias.scope !1583, !noalias !1568, !noundef !10
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %bb.t, label %bb.x, !prof !13

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1584
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !1583, !noalias !1568, !nonnull !10, !align !14, !noundef !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !range !15, !alias.scope !1583, !noalias !1568, !noundef !10
  store ptr %i.bh, ptr %i.c, align 8, !noalias !1584
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.bj, ptr %i.bk, align 8, !noalias !1584
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #49
          to label %bb.v unwind label %bb.u, !noalias !1585

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1W_6reader6reader15HighlightResultEEEEB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #50
          to label %.body.i unwind label %bb.w, !noalias !1585

bb.v:                                             ; preds = %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1585
  unreachable

bb.x:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !1583, !noalias !1568, !nonnull !10, !align !14, !noundef !10 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !range !15, !alias.scope !1583, !noalias !1568, !noundef !10 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1568
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish6reader6reader15HighlightResultEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.br)
          to label %bb.z unwind label %bb.y, !noalias !1568

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !1568
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1D_6reader6reader15HighlightResultEEEB1D_(ptr nonnull %i.bo, i8 %i.bq) #50
          to label %.body7.i unwind label %bb.ai, !noalias !1568

bb.z:                                             ; preds = %bb.x
  %i.bt = trunc nuw i8 %i.bq to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !1568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1568
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  br i1 %i.bt, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1568
  %i.bw = and i64 %i.bv, 9223372036854775807
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ab, !prof !21

bb.ab:                                            ; preds = %bb.aa
  %i.by = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #52
          to label %.noexc10.i unwind label %bb.q, !noalias !1568

.noexc10.i:                                       ; preds = %bb.ab
  br i1 %i.by, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc10.i
  store atomic i8 1, ptr %i.bu monotonic, align 4, !noalias !1568
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.ac, %.noexc10.i, %bb.aa, %bb.z
  %i.bz = atomicrmw xchg ptr %i.bo, i32 0 release, align 4, !noalias !1568
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1D_6reader6reader15HighlightResultEEEB1D_.exit.i, !prof !13

bb.ad:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bo)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1D_6reader6reader15HighlightResultEEEB1D_.exit.i unwind label %bb.q, !noalias !1568

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1D_6reader6reader15HighlightResultEEEB1D_.exit.i: ; preds = %bb.ad, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !1568, !nonnull !10, !noundef !10 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  invoke void @_RNvMNtCs8frGy5WneL6_4fish10fd_monitorNtB2_16FdEventSignaller4post(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cd)
          to label %bb.ae unwind label %bb.q, !noalias !1568

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1D_6reader6reader15HighlightResultEEEB1D_.exit.i
  %i.ce = atomicrmw add ptr %i.bb, i64 -1 release, align 8, !noalias !1586
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit13.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB1C_6reader6reader15HighlightResultEEE9drop_slowB1C_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ba) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit13.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = atomicrmw add ptr %i.cc, i64 -1 release, align 8, !noalias !1587
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.sink.split.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit13.i: ; preds = %bb.af, %bb.ae
  %i.cj = atomicrmw add ptr %i.cc, i64 -1 release, align 8, !noalias !1588
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.ah, label %_RNCINvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtB5_8DebounceNtNtNtB9_6reader6reader15HighlightResultE7performNCNvB10_23get_highlight_performer0E0B9_.exit

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit13.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.cb) #52
  br label %_RNCINvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtB5_8DebounceNtNtNtB9_6reader6reader15HighlightResultE7performNCNvB10_23get_highlight_performer0E0B9_.exit

bb.ai:                                            ; preds = %bb.y, %.body.i, %bb.p
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1568
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.sink.split.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit.i, %bb.ag
  %.sink.i = phi ptr [ %i.cm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit.i ], [ %i.cb, %bb.ag ]
  %.pn2.ph.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit.i ], [ %i.cg, %bb.ag ]
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sink.i) #52
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.sink.split.i, %bb.ag
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit.i ], [ %i.cg, %bb.ag ], [ %.pn2.ph.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.sink.split.i ]
  resume { ptr, i32 } %.pn2.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit.i: ; preds = %bb.p, %.body7.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !1591, !nonnull !10, !noundef !10
  %i.co = atomicrmw add ptr %i.cn, i64 -1 release, align 8, !noalias !1591
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.sink.split.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.i

_RNCINvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtB5_8DebounceNtNtNtB9_6reader6reader15HighlightResultE7performNCNvB10_23get_highlight_performer0E0B9_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs8frGy5WneL6_4fish7threads8debounce12DebounceDataNtNtNtB25_6reader6reader15HighlightResultEEEEB25_.exit13.i, %bb.ah
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMNtNtCs8frGy5WneL6_4fish7threads8debounceINtBa_8DebounceNtNtNtBe_6reader6reader20AutosuggestionResultE7performNCNvB15_28get_autosuggestion_performer0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_once6vtableBe_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [4 x i8], align 4                 ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [112 x i8], align 16              ; 17 uses
  %i.n = alloca [56 x i8], align 8                ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 12 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [120 x i8], align 8               ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [112 x i8], align 8               ; 18 uses
  %i.z = alloca [112 x i8], align 8               ; 19 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [208 x i8], align 8              ; 14 uses
  %i.ae = alloca [24 x i8], align 8               ; 14 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [64 x i8], align 8               ; 11 uses
  %i.ah = alloca [112 x i8], align 16             ; 30 uses
  %i.ai = alloca [64 x i8], align 8               ; 17 uses
  %i.aj = alloca [112 x i8], align 16             ; 40 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [112 x i8], align 16             ; 15 uses
  %i.an = alloca [88 x i8], align 8               ; 23 uses
  %.sroa.28.i = alloca [31 x i8], align 1         ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(104) %0, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.ao = invoke noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE4withNCNvBW_9thread_id0BU_EB10_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @41)
          to label %.noexc182.i.i unwind label %bb.h, !noalias !1742

.noexc182.i.i:                                    ; preds = %bb.a
  %i.ap = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14MAIN_THREAD_ID, i64 8) acquire, align 8, !noalias !1742
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit.i.i.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %.noexc182.i.i
  invoke void @_RNvNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id15init_not_called() #49
          to label %.noexc183.i.i unwind label %bb.h, !noalias !1743

.noexc183.i.i:                                    ; preds = %bb.b
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit.i.i.i: ; preds = %.noexc182.i.i
  %i.ar = load i64, ptr @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14MAIN_THREAD_ID, align 8, !noalias !1742, !noundef !10
  %i.as = icmp eq i64 %i.ao, %i.ar
  br i1 %i.as, label %bb.c, label %bb.i, !prof !13

bb.c:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit.i.i.i
  invoke void @_RNvNvNtNtCs8frGy5WneL6_4fish7threads7threads27assert_is_background_thread21not_background_thread() #49
          to label %.noexc184.i.i unwind label %bb.h, !noalias !1743

.noexc184.i.i:                                    ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.fk, %bb.k, %bb.h
  %.sroa.054.0.i.i = phi i1 [ %.sroa.054.2.i.i, %bb.fk ], [ %.sroa.054.2.i.i, %bb.k ], [ %.sroa.054.1.i.i, %bb.h ]
  %.pn175.pn.i.i = phi { ptr, i32 } [ %.pn175.i.i, %bb.fk ], [ %.pn175.i.i, %bb.k ], [ %i.bh, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !1745, !noalias !1740 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.val1.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !1745, !noalias !1740, !nonnull !10, !align !14, !noundef !10 ; 5 uses
  %i.av = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !10, !noalias !1746 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.av(ptr noundef nonnull %.val.i.i.i)
          to label %bb.f unwind label %bb.g, !noalias !1746

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !16, !invariant.load !10, !noalias !1746 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env11environment6EnvDynEBH_.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !17, !invariant.load !10, !noalias !1746
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.ax, i64 noundef range(i64 1, 536870913) %i.ba) #48, !noalias !1746
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env11environment6EnvDynEBH_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !16, !invariant.load !10, !noalias !1746 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.body.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !17, !invariant.load !10, !noalias !1746
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.bd, i64 noundef range(i64 1, 536870913) %i.bg) #48, !noalias !1746
  br label %.body.i.i

bb.h:                                             ; preds = %bb.fc, %bb.ca, %bb.c, %bb.b, %bb.a
  %.sroa.054.1.i.i = phi i1 [ true, %bb.fc ], [ false, %bb.ca ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.a ]
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.i:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1742
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 25, i1 false), !alias.scope !1747, !noalias !1742
  store i64 0, ptr %i.aj, align 16, !alias.scope !1747, !noalias !1742
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.48.0..sroa_idx.i.i.i, align 16, !alias.scope !1747, !noalias !1742
  %.sroa.5.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 6 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !alias.scope !1747, !noalias !1742
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i64 0, ptr %i.bi, align 16, !alias.scope !1747, !noalias !1742
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !alias.scope !1747, !noalias !1742
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !1747, !noalias !1742
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !alias.scope !1747, !noalias !1742
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 104 ; 6 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1747, !noalias !1742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1742
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.bl = load i32, ptr %i.bk, align 8, !alias.scope !1741, !noalias !1740, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !1749
  %i.bm = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #48, !noalias !1749 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.j, label %bb.m, !prof !11

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #49
          to label %.noexc217.i.i unwind label %bb.l, !noalias !1743

.noexc217.i.i:                                    ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.n, %bb.l
  %.sroa.054.2.i.i = phi i1 [ %.sroa.054.3.i.i, %bb.l ], [ %.sroa.054.4.i.i, %bb.n ] ; 2 uses
  %.sroa.047.0.i.i = phi i8 [ %.sroa.047.1.i.i, %bb.l ], [ %.sroa.047.2.i.i, %bb.n ]
  %.pn175.i.i = phi { ptr, i32 } [ %i.bp, %bb.l ], [ %.pn171.pn.pn.i.i, %bb.n ] ; 2 uses
  %i.bo = trunc nuw i8 %.sroa.047.0.i.i to i1
  br i1 %i.bo, label %bb.fk, label %bb.d

bb.l:                                             ; preds = %bb.bz, %bb.br, %bb.q, %bb.j
  %.sroa.054.3.i.i = phi i1 [ true, %bb.q ], [ true, %bb.br ], [ false, %bb.bz ], [ true, %bb.j ]
  %.sroa.047.1.i.i = phi i8 [ 0, %bb.q ], [ %.sroa.047.5.i.i, %bb.br ], [ 1, %bb.bz ], [ 1, %bb.j ]
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.i
  store i32 %i.bl, ptr %i.bm, align 4, !noalias !1749
  store i64 1, ptr %i.ai, align 8, !alias.scope !1748, !noalias !1742
  %.sroa.4.0..sroa_idx.i215.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i215.i.i, align 8, !alias.scope !1748, !noalias !1742
  %.sroa.5.0..sroa_idx.i216.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr @72, ptr %.sroa.5.0..sroa_idx.i216.i.i, align 8, !alias.scope !1748, !noalias !1742
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i64 512, ptr %i.bq, align 8, !alias.scope !1748, !noalias !1742
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr null, ptr %i.br, align 8, !alias.scope !1748, !noalias !1742
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  store ptr %i.bm, ptr %i.bs, align 8, !alias.scope !1748, !noalias !1742
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 3 uses
  store ptr @311, ptr %i.bt, align 8, !alias.scope !1748, !noalias !1742
  %i.bu = invoke noundef i32 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader21read_generation_count()
          to label %_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel.exit.i.i unwind label %bb.o, !noalias !1743

bb.n:                                             ; preds = %bb.fi, %.thread.i.i, %bb.r, %bb.o
  %.sroa.054.4.i.i = phi i1 [ %.sroa.054.5411.i.i, %bb.fi ], [ %.sroa.054.5411.i.i, %.thread.i.i ], [ %.sroa.054.5.i.i, %bb.r ], [ true, %bb.o ]
  %.sroa.047.2.i.i = phi i8 [ 1, %bb.fi ], [ 1, %.thread.i.i ], [ 1, %bb.r ], [ %.sroa.047.3.i.i, %bb.o ]
  %.pn171.pn.pn.i.i = phi { ptr, i32 } [ %.pn171.pn413.i.i, %bb.fi ], [ %.pn171.pn413.i.i, %.thread.i.i ], [ %.pn171.pn.i.i, %bb.r ], [ %i.bv, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ai) #50
          to label %bb.k unwind label %bb.bk, !noalias !1743

bb.o:                                             ; preds = %bb.ez, %bb.m
  %.sroa.047.3.i.i = phi i8 [ %.sroa.047.4.i.i, %bb.ez ], [ 1, %bb.m ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel.exit.i.i: ; preds = %bb.m
  %.not970.i.i = icmp eq i32 %i.bl, %i.bu
  br i1 %.not970.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1742
  store i64 2, ptr %i.ah, align 16, !noalias !1742
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 6 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !1741, !noalias !1740, !nonnull !10, !noundef !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 7 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !1741, !noalias !1740, !noundef !10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 5 uses
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1741, !noalias !1740, !noundef !10
  %i.cc = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish13editable_line23range_of_line_at_cursor(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bx, i64 noundef %i.bz, i64 noundef %i.cb)
          to label %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.lr.ph.i.i unwind label %bb.s, !noalias !1743 ; 2 uses

bb.q:                                             ; preds = %_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel.exit.i.i
  %i.cd = load <2 x i64>, ptr %i.aj, align 16, !noalias !1750
  %.sroa.16.0.copyload51.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.18.0.copyload71.i = load ptr, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !noalias !1750
  %i.ce = load <2 x i64>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.24.0..sroa_idx130.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.24.0.copyload131.i = load i64, ptr %.sroa.24.0..sroa_idx130.i, align 16, !noalias !1750
  %.sroa.26.0..sroa_idx150.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.26.0.copyload151.i = load i8, ptr %.sroa.26.0..sroa_idx150.i, align 8, !noalias !1750
  %.sroa.28.0..sroa_idx170.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.0..sroa_idx170.i, i64 31, i1 false), !noalias !1750
  %.sroa.30.0..sroa_idx181.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %.sroa.30.0.copyload182.i = load i64, ptr %.sroa.30.0..sroa_idx181.i, align 8, !noalias !1750
  %.sroa.32.0.copyload202.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.34.0.copyload222.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1750
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ai)
          to label %bb.fj unwind label %bb.l, !noalias !1743

bb.r:                                             ; preds = %bb.bn, %bb.s
  %.sroa.054.5.i.i = phi i1 [ %.sroa.054.8.i.i, %bb.bn ], [ %.sroa.054.6.i.i, %bb.s ] ; 2 uses
  %.sroa.045.0.i.i = phi i8 [ %.sroa.045.10.i.i, %bb.bn ], [ %.sroa.045.1.i.i, %bb.s ]
  %.sroa.042.0.i.i = phi i8 [ %.sroa.042.10.i.i, %bb.bn ], [ %.sroa.042.1.i.i, %bb.s ]
  %.pn171.pn.i.i = phi { ptr, i32 } [ %.pn158.i.i, %bb.bn ], [ %i.cg, %bb.s ] ; 2 uses
  %i.cf = trunc nuw i8 %.sroa.042.0.i.i to i1
  br i1 %i.cf, label %.thread.i.i, label %bb.n

bb.s:                                             ; preds = %bb.by, %bb.bp, %bb.am, %bb.ac, %.split.i.i.i, %bb.w, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.thread.i.i, %bb.p
  %.sroa.054.6.i.i = phi i1 [ true, %bb.p ], [ true, %bb.bp ], [ false, %bb.by ], [ true, %bb.am ], [ true, %bb.w ], [ true, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.thread.i.i ], [ true, %.split.i.i.i ], [ true, %bb.ac ]
  %.sroa.045.1.i.i = phi i8 [ 1, %bb.p ], [ 0, %bb.bp ], [ %.sroa.042.9.i.i, %bb.by ], [ 1, %bb.am ], [ 1, %bb.w ], [ 1, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.thread.i.i ], [ 1, %.split.i.i.i ], [ 1, %bb.ac ]
  %.sroa.042.1.i.i = phi i8 [ 1, %bb.p ], [ %.sroa.042.8.i.i, %bb.bp ], [ %.sroa.042.9.i.i, %bb.by ], [ 1, %bb.am ], [ 1, %bb.w ], [ 1, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.thread.i.i ], [ 1, %.split.i.i.i ], [ 1, %bb.ac ]
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.lr.ph.i.i: ; preds = %bb.p
  %i.ch = extractvalue { i64, i64 } %i.cc, 0      ; 5 uses
  %i.ci = extractvalue { i64, i64 } %i.cc, 1      ; 10 uses
  %i.cj = load i64, ptr %i.by, align 8, !alias.scope !1741, !noalias !1740, !noundef !10 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 2305843009213693952
  call void @llvm.assume(i1 %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1742
  store i64 0, ptr %i.ag, align 8, !noalias !1742
  %.sroa.591.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 2, ptr %.sroa.591.0..sroa_idx.i.i, align 8, !noalias !1742
  %.sroa.692.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store i8 2, ptr %.sroa.692.0..sroa_idx.i.i, align 8, !noalias !1742
  %.sroa.894.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 0, ptr %.sroa.894.0..sroa_idx.i.i, align 8, !noalias !1742
  %.sroa.995.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %i.cj, ptr %.sroa.995.0..sroa_idx.i.i, align 8, !noalias !1742
  %.sroa.1096.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i8 3, ptr %.sroa.1096.0..sroa_idx.i.i, align 8, !noalias !1742
  %.sroa.1298.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i64 %i.ch, ptr %.sroa.1298.0..sroa_idx.i.i, align 8, !noalias !1742
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store i64 %i.ci, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !1742
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.4100.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.6101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %.sroa.4.0..sroa_idx.i257.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i258.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i259.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i260.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 3 uses
  %.sroa.8.0..sroa_idx.i261.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 4 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 4 uses
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 80 ; 3 uses
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.7321.0..sroa_idx322.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.8324.0..sroa_idx325.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.9327.0..sroa_idx328.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.10330.0..sroa_idx331.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.11333.0..sroa_idx334.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.12.0..sroa_idx336.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.13.0..sroa_idx339.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %.sroa.14.0..sroa_idx341.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %.sroa.15.0..sroa_idx343.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %.sroa.16.0..sroa_idx345.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %.sroa.17.0..sroa_idx347.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %.sroa.18.0..sroa_idx349.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.de = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %.sroa.28.64..sroa_idx180.i = getelementptr inbounds nuw i8, ptr %.sroa.28.i, i64 7 ; 2 uses
  %.sroa.15.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.sroa.16.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 4 uses
  %.sroa.18.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 4 uses
  %.sroa.20.0..sroa_idx108.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 4 uses
  %.sroa.22.0..sroa_idx128.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %.sroa.24.0..sroa_idx148.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 4 uses
  %.sroa.26.0..sroa_idx168.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 4 uses
  %.sroa.28.0..sroa_idx179.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 57 ; 4 uses
  %.sroa.30.0..sroa_idx199.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 88 ; 4 uses
  %.sroa.32.0..sroa_idx219.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 96 ; 4 uses
  %.sroa.34.0..sroa_idx239.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 104 ; 4 uses
  br label %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.i.i

_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.i.i: ; preds = %.backedge501.i.i, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.lr.ph.i.i
  %.sroa.15.1.i = phi i64 [ undef, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.lr.ph.i.i ], [ %.sroa.15.2.i, %.backedge501.i.i ] ; 4 uses
  %.not.i.i.i = phi i1 [ false, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.lr.ph.i.i ], [ true, %.backedge501.i.i ]
  %i.df = phi i64 [ 0, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.lr.ph.i.i ], [ 1, %.backedge501.i.i ]
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.692.0..sroa_idx.i.i, i64 %i.df ; 3 uses
  %.sroa.0308.0.copyload.i.i = load i8, ptr %i.dg, align 8, !alias.scope !1751, !noalias !1742 ; 4 uses
  %.sroa.9310.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.9310.0.copyload.i.i = load i64, ptr %.sroa.9310.0..sroa_idx.i.i, align 8, !alias.scope !1751, !noalias !1742 ; 7 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !1751, !noalias !1742 ; 7 uses
  %.not.i.i = icmp eq i8 %.sroa.0308.0.copyload.i.i, -1
  br i1 %.not.i.i, label %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.i.i
  %.not160.i.i = icmp ult i64 %.sroa.9310.0.copyload.i.i, %.sroa.10.0.copyload.i.i
  br i1 %.not160.i.i, label %bb.ci, label %.backedge501.i.i

_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.thread.i.i: ; preds = %.backedge501.i.i, %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1742
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %i.dh = load ptr, ptr %i.bs, align 8, !alias.scope !1752, !noalias !1742, !nonnull !10, !noundef !10
  %i.di = load ptr, ptr %i.bt, align 8, !alias.scope !1752, !noalias !1742, !nonnull !10, !align !14, !noundef !10
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !invariant.load !10, !noalias !1753, !nonnull !10
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull %i.dh) #54
          to label %_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel.exit220.i.i unwind label %bb.s, !noalias !1743, !inline_history !38

_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel.exit220.i.i: ; preds = %_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTNtNtNtCs8frGy5WneL6_4fish7history7history10SearchTypeINtNtNtBb_3ops5range5RangejEEEE4nextB21_.exit.thread.i.i
  br i1 %i.dl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel.exit220.i.i
  %i.dm = load <2 x i64>, ptr %i.aj, align 16, !noalias !1750
  %.sroa.16.0.copyload65.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.18.0.copyload85.i = load ptr, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !noalias !1750
  %i.dn = load <2 x i64>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.24.0..sroa_idx144.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.24.0.copyload145.i = load i64, ptr %.sroa.24.0..sroa_idx144.i, align 16, !noalias !1750
  %.sroa.26.0..sroa_idx164.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.26.0.copyload165.i = load i8, ptr %.sroa.26.0..sroa_idx164.i, align 8, !noalias !1750
  %.sroa.28.0..sroa_idx177.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.0..sroa_idx177.i, i64 31, i1 false), !noalias !1750
  %.sroa.30.0..sroa_idx195.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %.sroa.30.0.copyload196.i = load i64, ptr %.sroa.30.0..sroa_idx195.i, align 8, !noalias !1750
  %.sroa.32.0.copyload216.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.34.0.copyload236.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1750
  br label %bb.al

bb.v:                                             ; preds = %_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext12check_cancel.exit220.i.i
  %.val200.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !1741, !noalias !1740, !nonnull !10, !noundef !10 ; 3 uses
  %.val201.i.i = load i64, ptr %i.by, align 8, !alias.scope !1741, !noalias !1740, !noundef !10 ; 5 uses
  %i.do = icmp ult i64 %i.ci, %i.ch
  %.not.i.i221.i.i = icmp ugt i64 %i.ci, %.val201.i.i
  %or.cond.i.i.i.i = or i1 %i.do, %.not.i.i221.i.i
  br i1 %or.cond.i.i.i.i, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #53
          to label %.noexc222.i.i unwind label %bb.s, !noalias !1743

.noexc222.i.i:                                    ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.dp = icmp samesign eq i64 %i.ch, %i.ci
  br i1 %i.dp, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val200.i.i, i64 %i.ci
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !noalias !1754, !noundef !10 ; 7 uses
  %i.dt = xor i32 %i.ds, 55296
  %i.du = add i32 %i.dt, -1114112
  %i.dv = icmp ult i32 %i.du, -1112064
  br i1 %i.dv, label %.split.i.i.i, label %bb.z

.split.i.i.i:                                     ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1755
  store i32 %i.ds, ptr %i.g, align 4, !noalias !1755
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @664) #53
          to label %.noexc223.i.i unwind label %bb.s, !noalias !1743

.noexc223.i.i:                                    ; preds = %.split.i.i.i
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.dw = icmp ult i32 %i.ds, 1114112
  call void @llvm.assume(i1 %i.dw)
  %i.dx = load i64, ptr %i.ca, align 8, !alias.scope !1741, !noalias !1740, !noundef !10 ; 4 uses
  %i.dy = icmp ult i64 %.val201.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp eq i64 %i.dx, %.val201.i.i
  br i1 %i.dz, label %.thread420.i.i, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ea = load <2 x i64>, ptr %i.aj, align 16, !noalias !1750
  %.sroa.16.0.copyload63.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.18.0.copyload83.i = load ptr, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !noalias !1750
  %i.eb = load <2 x i64>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.24.0..sroa_idx142.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.24.0.copyload143.i = load i64, ptr %.sroa.24.0..sroa_idx142.i, align 16, !noalias !1750
  %.sroa.26.0..sroa_idx162.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.26.0.copyload163.i = load i8, ptr %.sroa.26.0..sroa_idx162.i, align 8, !noalias !1750
  %.sroa.28.0..sroa_idx176.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.0..sroa_idx176.i, i64 31, i1 false), !noalias !1750
  %.sroa.30.0..sroa_idx193.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %.sroa.30.0.copyload194.i = load i64, ptr %.sroa.30.0..sroa_idx193.i, align 8, !noalias !1750
  %.sroa.32.0.copyload214.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.34.0.copyload234.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1750
  br label %bb.al

bb.ab:                                            ; preds = %bb.z
  %i.ec = icmp ult i64 %i.dx, %.val201.i.i
  br i1 %i.ec, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.dx, i64 noundef %.val201.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #49
          to label %bb.ad unwind label %bb.s, !noalias !1743

bb.ad:                                            ; preds = %bb.et, %bb.er, %bb.em, %bb.dc, %bb.bf, %bb.at, %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val200.i.i, i64 %i.dx
  %i.ee = load i32, ptr %i.ed, align 4, !range !24, !noalias !1743, !noundef !10
  %i.ef = icmp eq i32 %i.ee, 10
  br i1 %i.ef, label %.thread420.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  switch i32 %i.ds, label %bb.ag [
    i32 32, label %bb.ai
    i32 13, label %bb.ai
    i32 12, label %bb.ai
    i32 11, label %bb.ai
    i32 10, label %bb.ai
    i32 9, label %bb.ai
  ]

.thread420.i.i:                                   ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.z
  %.sroa.040.0422.i.i = phi i1 [ true, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ah ], [ true, %bb.z ]
  switch i32 %i.ds, label %bb.am [
    i32 39, label %bb.aj
    i32 34, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  %i.eg = icmp samesign ult i32 %i.ds, 133
  br i1 %i.eg, label %.thread420.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eh = call fastcc noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup(i32 noundef %i.ds), !noalias !1743
  br i1 %i.eh, label %bb.ai, label %.thread420.i.i

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  %i.ei = load <2 x i64>, ptr %i.aj, align 16, !noalias !1750
  %.sroa.16.0.copyload53.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.18.0.copyload73.i = load ptr, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !noalias !1750
  %i.ej = load <2 x i64>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.24.0..sroa_idx132.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.24.0.copyload133.i = load i64, ptr %.sroa.24.0..sroa_idx132.i, align 16, !noalias !1750
  %.sroa.26.0..sroa_idx152.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.26.0.copyload153.i = load i8, ptr %.sroa.26.0..sroa_idx152.i, align 8, !noalias !1750
  %.sroa.28.0..sroa_idx171.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.0..sroa_idx171.i, i64 31, i1 false), !noalias !1750
  %.sroa.30.0..sroa_idx183.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %.sroa.30.0.copyload184.i = load i64, ptr %.sroa.30.0..sroa_idx183.i, align 8, !noalias !1750
  %.sroa.32.0.copyload204.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.34.0.copyload224.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1750
  br label %bb.al

bb.aj:                                            ; preds = %.thread420.i.i, %.thread420.i.i
  br i1 %.sroa.040.0422.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ek = load <2 x i64>, ptr %i.aj, align 16, !noalias !1750
  %.sroa.16.0.copyload61.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.18.0.copyload81.i = load ptr, ptr %.sroa.5.0..sroa_idx9.i.i.i, align 8, !noalias !1750
  %i.el = load <2 x i64>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.24.0..sroa_idx140.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.24.0.copyload141.i = load i64, ptr %.sroa.24.0..sroa_idx140.i, align 16, !noalias !1750
  %.sroa.26.0..sroa_idx160.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.sroa.26.0.copyload161.i = load i8, ptr %.sroa.26.0..sroa_idx160.i, align 8, !noalias !1750
  %.sroa.28.0..sroa_idx175.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.0..sroa_idx175.i, i64 31, i1 false), !noalias !1750
  %.sroa.30.0..sroa_idx191.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %.sroa.30.0.copyload192.i = load i64, ptr %.sroa.30.0..sroa_idx191.i, align 8, !noalias !1750
  %.sroa.32.0.copyload212.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.34.0.copyload232.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1750
  br label %bb.al

bb.al:                                            ; preds = %bb.ey, %bb.ak, %bb.ai, %bb.aa, %bb.u
  %.sroa.34.1.i = phi i64 [ %.sroa.34.0.copyload236.i, %bb.u ], [ %.sroa.34.0.copyload234.i, %bb.aa ], [ %.sroa.34.0.copyload232.i, %bb.ak ], [ %.sroa.34.0.copyload224.i, %bb.ai ], [ 0, %bb.ey ] ; 2 uses
  %.sroa.32.1.i = phi ptr [ %.sroa.32.0.copyload216.i, %bb.u ], [ %.sroa.32.0.copyload214.i, %bb.aa ], [ %.sroa.32.0.copyload212.i, %bb.ak ], [ %.sroa.32.0.copyload204.i, %bb.ai ], [ inttoptr (i64 8 to ptr), %bb.ey ] ; 2 uses
  %.sroa.30.1.i = phi i64 [ %.sroa.30.0.copyload196.i, %bb.u ], [ %.sroa.30.0.copyload194.i, %bb.aa ], [ %.sroa.30.0.copyload192.i, %bb.ak ], [ %.sroa.30.0.copyload184.i, %bb.ai ], [ 0, %bb.ey ] ; 2 uses
  %.sroa.26.1.i = phi i8 [ %.sroa.26.0.copyload165.i, %bb.u ], [ %.sroa.26.0.copyload163.i, %bb.aa ], [ %.sroa.26.0.copyload161.i, %bb.ak ], [ %.sroa.26.0.copyload153.i, %bb.ai ], [ %i.mi, %bb.ey ] ; 2 uses
  %.sroa.24.1.i = phi i64 [ %.sroa.24.0.copyload145.i, %bb.u ], [ %.sroa.24.0.copyload143.i, %bb.aa ], [ %.sroa.24.0.copyload141.i, %bb.ak ], [ %.sroa.24.0.copyload133.i, %bb.ai ], [ %.sroa.10.0.copyload.i.i, %bb.ey ] ; 2 uses
  %.sroa.18.1.i = phi ptr [ %.sroa.18.0.copyload85.i, %bb.u ], [ %.sroa.18.0.copyload83.i, %bb.aa ], [ %.sroa.18.0.copyload81.i, %bb.ak ], [ %.sroa.18.0.copyload73.i, %bb.ai ], [ %i.mf, %bb.ey ] ; 2 uses
  %.sroa.16.1.i = phi i64 [ %.sroa.16.0.copyload65.i, %bb.u ], [ %.sroa.16.0.copyload63.i, %bb.aa ], [ %.sroa.16.0.copyload61.i, %bb.ak ], [ %.sroa.16.0.copyload53.i, %bb.ai ], [ %i.md, %bb.ey ] ; 2 uses
  %.sroa.047.4.i.i = phi i8 [ 0, %bb.u ], [ 0, %bb.aa ], [ 0, %bb.ak ], [ 0, %bb.ai ], [ 1, %bb.ey ] ; 3 uses
  %i.em = phi <2 x i64> [ %i.dm, %bb.u ], [ %i.ea, %bb.aa ], [ %i.ek, %bb.ak ], [ %i.ei, %bb.ai ], [ %i.mj, %bb.ey ] ; 2 uses
  %i.en = phi <2 x i64> [ %i.dn, %bb.u ], [ %i.eb, %bb.aa ], [ %i.el, %bb.ak ], [ %i.ej, %bb.ai ], [ %i.ml, %bb.ey ] ; 2 uses
  %i.eo = load i64, ptr %i.ah, align 16, !range !29, !noalias !1742, !noundef !10
  %.not167.i.i = icmp eq i64 %i.eo, 2
  br i1 %.not167.i.i, label %bb.br, label %bb.ez

bb.am:                                            ; preds = %bb.aj, %.thread420.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1742
  store i64 %i.ci, ptr %i.v, align 8, !noalias !1742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1742
  invoke void @_RNvNtCs8frGy5WneL6_4fish8complete8complete(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val200.i.i, i64 noundef %i.ci, i24 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ai)
          to label %bb.an unwind label %bb.s, !noalias !1743

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !1742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1742
  %i.ep = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false), !noalias !1742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1742
  %i.eq = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !noalias !1742, !noundef !10 ; 2 uses
  %i.es = icmp ult i64 %i.er, 164703072086692426
  call void @llvm.assume(i1 %i.es)
  %i.et = icmp eq i64 %i.er, 0
  br i1 %i.et, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs8frGy5WneL6_4fish8complete19sort_and_prioritize(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i24 1)
          to label %bb.ar unwind label %bb.aq, !noalias !1743

bb.ap:                                            ; preds = %bb.an
  %i.eu = load i64, ptr %i.ah, align 16, !range !29, !noalias !1742, !noundef !10
  %.not153.i.i = icmp eq i64 %i.eu, 2
  br i1 %.not153.i.i, label %bb.bm, label %bb.bl

bb.aq:                                            ; preds = %bb.bh, %bb.ax, %bb.at, %bb.ao
  %.sroa.042.7.i.i = phi i8 [ 0, %bb.bh ], [ 1, %bb.ao ], [ 0, %bb.ax ], [ 1, %bb.at ]
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.thread423.i.i

bb.ar:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !1742, !nonnull !10, !noundef !10 ; 4 uses
  %i.ey = load i64, ptr %i.eq, align 8, !noalias !1742, !noundef !10
  %.not149.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not149.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1742
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 51
  %i.fa = load i8, ptr %i.ez, align 1, !range !23, !noalias !1743, !noundef !10 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.q, ptr noundef nonnull align 16 dereferenceable(112) %i.ah, i64 112, i1 false), !noalias !1742
  %i.fb = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store i8 %i.fa, ptr %i.fb, align 8, !noalias !1742
  %i.fc = load i64, ptr %i.q, align 8, !range !29, !noalias !1742, !noundef !10
  %.not150.i.i = icmp eq i64 %i.fc, 2             ; 2 uses
  %i.fd = icmp eq i8 %i.fa, 0
  %or.cond181.i.i = or i1 %i.fd, %.not150.i.i
  br i1 %or.cond181.i.i, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #49
          to label %bb.ad unwind label %bb.aq, !noalias !1743

bb.au:                                            ; preds = %bb.as
  br i1 %.not150.i.i, label %bb.ay, label %bb.ax

bb.av:                                            ; preds = %bb.as
  %i.fe = load <2 x i64>, ptr %i.ah, align 16, !noalias !1750
  %.sroa.16.0.copyload55.i = load i64, ptr %.sroa.16.0..sroa_idx68.i, align 16, !noalias !1750
  %.sroa.18.0.copyload75.i = load ptr, ptr %.sroa.18.0..sroa_idx88.i, align 8, !noalias !1750
  %i.ff = load <2 x i64>, ptr %.sroa.20.0..sroa_idx108.i, align 16, !noalias !1750
  %.sroa.24.0.copyload135.i = load i64, ptr %.sroa.24.0..sroa_idx148.i, align 16, !noalias !1750
  %.sroa.26.0.copyload155.i = load i8, ptr %.sroa.26.0..sroa_idx168.i, align 8, !noalias !1750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.0..sroa_idx179.i, i64 31, i1 false), !noalias !1750
  %.sroa.30.0.copyload186.i = load i64, ptr %.sroa.30.0..sroa_idx199.i, align 8, !noalias !1750
  %.sroa.32.0.copyload206.i = load ptr, ptr %.sroa.32.0..sroa_idx219.i, align 16, !noalias !1750
  %.sroa.34.0.copyload226.i = load i64, ptr %.sroa.34.0..sroa_idx239.i, align 8, !noalias !1750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1742
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bl, %bb.av
  %.sroa.34.3.i = phi i64 [ %.sroa.34.0.copyload230.i, %bb.bl ], [ %.sroa.34.0.copyload226.i, %bb.av ]
  %.sroa.32.3.i = phi ptr [ %.sroa.32.0.copyload210.i, %bb.bl ], [ %.sroa.32.0.copyload206.i, %bb.av ]
  %.sroa.30.3.i = phi i64 [ %.sroa.30.0.copyload190.i, %bb.bl ], [ %.sroa.30.0.copyload186.i, %bb.av ]
  %.sroa.26.3.i = phi i8 [ %.sroa.26.0.copyload159.i, %bb.bl ], [ %.sroa.26.0.copyload155.i, %bb.av ]
  %.sroa.24.3.i = phi i64 [ %.sroa.24.0.copyload139.i, %bb.bl ], [ %.sroa.24.0.copyload135.i, %bb.av ]
  %.sroa.18.3.i = phi ptr [ %.sroa.18.0.copyload79.i, %bb.bl ], [ %.sroa.18.0.copyload75.i, %bb.av ]
  %.sroa.16.3.i = phi i64 [ %.sroa.16.0.copyload59.i, %bb.bl ], [ %.sroa.16.0.copyload55.i, %bb.av ]
  %.sroa.042.8.i.i = phi i8 [ 1, %bb.bl ], [ 0, %bb.av ] ; 2 uses
  %i.fg = phi <2 x i64> [ %1, %bb.bl ], [ %i.fe, %bb.av ]
  %i.fh = phi <2 x i64> [ %i.go, %bb.bl ], [ %i.ff, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1742
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.bp unwind label %bb.bo, !noalias !1743

bb.ax:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader20AutosuggestionResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.q)
          to label %bb.ay unwind label %bb.aq, !noalias !1743

bb.ay:                                            ; preds = %bb.ax, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1742
  store i64 1, ptr %i.o, align 8, !alias.scope !1756, !noalias !1742
  %.sroa.4.0..sroa_idx.i225.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i225.i.i, align 8, !alias.scope !1756, !noalias !1742
  %.sroa.5.0..sroa_idx.i226.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @72, ptr %.sroa.5.0..sroa_idx.i226.i.i, align 8, !alias.scope !1756, !noalias !1742
  %i.fi = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 512, ptr %i.fi, align 8, !alias.scope !1756, !noalias !1742
  %i.fj = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr null, ptr %i.fj, align 8, !alias.scope !1756, !noalias !1742
  %i.fk = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.fk, align 8, !alias.scope !1756, !noalias !1742
  %i.fl = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr @179, ptr %i.fl, align 8, !alias.scope !1756, !noalias !1742
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !1743, !nonnull !10, !noundef !10
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !1743, !noundef !10
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fr = load i16, ptr %i.fq, align 8, !noalias !1743, !noundef !10
  %i.fs = load ptr, ptr %i.bw, align 8, !alias.scope !1741, !noalias !1740, !nonnull !10, !noundef !10
  %i.ft = load i64, ptr %i.by, align 8, !alias.scope !1741, !noalias !1740, !noundef !10
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32completion_apply_to_command_line(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fn, i64 noundef %i.fp, i16 noundef %i.fr, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fs, i64 noundef %i.ft, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.ba unwind label %bb.az, !noalias !1743

bb.az:                                            ; preds = %bb.ay
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.o) #50
          to label %.thread423.i.i unwind label %bb.bk, !noalias !1743

bb.ba:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.o)
          to label %bb.bc unwind label %bb.bb, !noalias !1743

bb.bb:                                            ; preds = %bb.bf, %bb.bd, %bb.bc, %bb.ba
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #50
          to label %.thread423.i.i unwind label %bb.bk, !noalias !1743

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1742
  %i.fw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !1742, !nonnull !10, !noundef !10
  %i.fy = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !1742, !noundef !10
  %i.ga = load i64, ptr %i.v, align 8, !noalias !1742, !noundef !10
  %i.gb = invoke { ptr, i64 } @_RNvNtCs8frGy5WneL6_4fish13editable_line14line_at_cursor(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fx, i64 noundef %i.fz, i64 noundef %i.ga)
          to label %bb.bd unwind label %bb.bb, !noalias !1743 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gc = extractvalue { ptr, i64 } %i.gb, 0
  %i.gd = extractvalue { ptr, i64 } %i.gb, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1742
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.gd, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.be unwind label %bb.bb, !noalias !1743

bb.be:                                            ; preds = %bb.bd
  %i.ge = load i64, ptr %i.h, align 8, !range !12, !noalias !1742, !noundef !10
  %i.gf = trunc nuw i64 %i.ge to i1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !range !22, !noalias !1742, !noundef !10 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.gf, label %bb.bf, label %bb.bg, !prof !13

bb.bf:                                            ; preds = %bb.be
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !1742
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.gh, i64 %i.gj) #49
          to label %bb.ad unwind label %bb.bb, !noalias !1743

bb.bg:                                            ; preds = %bb.be
  %i.gk = load ptr, ptr %i.gi, align 8, !noalias !1742, !nonnull !10, !noundef !10 ; 2 uses
  %i.gl = icmp ule i64 %i.gd, %i.gh
  call void @llvm.assume(i1 %i.gl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1742
  %.not152.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not152.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  store i64 %i.gh, ptr %i.r, align 8, !noalias !1742
  %.sroa.4131.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.gk, ptr %.sroa.4131.0..sroa_idx.i.i, align 8, !noalias !1742
  %.sroa.6132.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.gd, ptr %.sroa.6132.0..sroa_idx.i.i, align 8, !noalias !1742
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bj unwind label %bb.aq, !noalias !1743

bb.bi:                                            ; preds = %bb.bg
  %i.gm = shl nuw nsw i64 %i.gd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gk, ptr align 4 %i.gc, i64 %i.gm, i1 false), !noalias !1743
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1742
  br label %bb.bs

bb.bk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i967.i.i, %bb.fl, %bb.fk, %bb.fi, %bb.fh, %.loopexit.split-lp487.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread467.i.i, %bb.cn, %.thread423.i.i, %bb.ch, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i, %bb.cd, %bb.bx, %bb.bn, %bb.bb, %bb.az, %bb.n
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.fp, %bb.fn, %bb.bk, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #51, !noalias !1743
  unreachable

bb.bl:                                            ; preds = %bb.ap
  %1 = load <2 x i64>, ptr %i.ah, align 16, !noalias !1750
  %.sroa.16.0.copyload59.i = load i64, ptr %.sroa.16.0..sroa_idx68.i, align 16, !noalias !1750
  %.sroa.18.0.copyload79.i = load ptr, ptr %.sroa.18.0..sroa_idx88.i, align 8, !noalias !1750
  %i.go = load <2 x i64>, ptr %.sroa.20.0..sroa_idx108.i, align 16, !noalias !1750
  %.sroa.24.0.copyload139.i = load i64, ptr %.sroa.24.0..sroa_idx148.i, align 16, !noalias !1750
  %.sroa.26.0.copyload159.i = load i8, ptr %.sroa.26.0..sroa_idx168.i, align 8, !noalias !1750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.0..sroa_idx179.i, i64 31, i1 false), !noalias !1750
  %.sroa.30.0.copyload190.i = load i64, ptr %.sroa.30.0..sroa_idx199.i, align 8, !noalias !1750
  %.sroa.32.0.copyload210.i = load ptr, ptr %.sroa.32.0..sroa_idx219.i, align 16, !noalias !1750
  %.sroa.34.0.copyload230.i = load i64, ptr %.sroa.34.0..sroa_idx239.i, align 8, !noalias !1750
  br label %bb.aw

bb.bm:                                            ; preds = %bb.ap
  store i64 0, ptr %i.r, align 8, !noalias !1742
  %.sroa.4128.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4128.0..sroa_idx.i.i, align 8, !noalias !1742
  %.sroa.5129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.5129.0..sroa_idx.i.i, align 8, !noalias !1742
  br label %bb.bs

bb.bn:                                            ; preds = %.thread423.i.i, %bb.bx, %bb.bo
  %.sroa.054.8.i.i = phi i1 [ true, %bb.bo ], [ true, %.thread423.i.i ], [ false, %bb.bx ]
  %.sroa.045.10.i.i = phi i8 [ 0, %bb.bo ], [ %.sroa.042.6429.i.i, %.thread423.i.i ], [ %.sroa.042.9.i.i, %bb.bx ]
  %.sroa.042.10.i.i = phi i8 [ %.sroa.042.8.i.i, %bb.bo ], [ %.sroa.042.6429.i.i, %.thread423.i.i ], [ %.sroa.042.9.i.i, %bb.bx ]
  %.pn158.i.i = phi { ptr, i32 } [ %i.gp, %bb.bo ], [ %.pn.pn430.i.i, %.thread423.i.i ], [ %i.gx, %bb.bx ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #50
          to label %bb.r unwind label %bb.bk, !noalias !1743

bb.bo:                                            ; preds = %bb.aw
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bp:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1742
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u)
          to label %bb.bq unwind label %bb.s, !noalias !1743

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1742
  br label %bb.br

bb.br:                                            ; preds = %bb.ez, %bb.bq, %bb.al
  %.sroa.34.2.i = phi i64 [ %.sroa.34.1.i, %bb.al ], [ %.sroa.34.1.i, %bb.ez ], [ %.sroa.34.3.i, %bb.bq ] ; 2 uses
  %.sroa.32.2.i = phi ptr [ %.sroa.32.1.i, %bb.al ], [ %.sroa.32.1.i, %bb.ez ], [ %.sroa.32.3.i, %bb.bq ] ; 2 uses
  %.sroa.30.2.i = phi i64 [ %.sroa.30.1.i, %bb.al ], [ %.sroa.30.1.i, %bb.ez ], [ %.sroa.30.3.i, %bb.bq ] ; 2 uses
  %.sroa.26.2.i = phi i8 [ %.sroa.26.1.i, %bb.al ], [ %.sroa.26.1.i, %bb.ez ], [ %.sroa.26.3.i, %bb.bq ] ; 2 uses
  %.sroa.24.2.i = phi i64 [ %.sroa.24.1.i, %bb.al ], [ %.sroa.24.1.i, %bb.ez ], [ %.sroa.24.3.i, %bb.bq ] ; 2 uses
  %.sroa.18.2.i = phi ptr [ %.sroa.18.1.i, %bb.al ], [ %.sroa.18.1.i, %bb.ez ], [ %.sroa.18.3.i, %bb.bq ] ; 2 uses
  %.sroa.16.2.i = phi i64 [ %.sroa.16.1.i, %bb.al ], [ %.sroa.16.1.i, %bb.ez ], [ %.sroa.16.3.i, %bb.bq ] ; 2 uses
  %.sroa.047.5.i.i = phi i8 [ %.sroa.047.4.i.i, %bb.al ], [ %.sroa.047.4.i.i, %bb.ez ], [ 1, %bb.bq ] ; 2 uses
  %i.gq = phi <2 x i64> [ %i.em, %bb.al ], [ %i.em, %bb.ez ], [ %i.fg, %bb.bq ] ; 2 uses
  %i.gr = phi <2 x i64> [ %i.en, %bb.al ], [ %i.en, %bb.ez ], [ %i.fh, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1742
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ai)
          to label %bb.fa unwind label %bb.l, !noalias !1743

bb.bs:                                            ; preds = %bb.bm, %bb.bj
  %.sroa.042.9.i.i = phi i8 [ 1, %bb.bm ], [ 0, %bb.bj ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1742
  %.val199.i.i = load i64, ptr %i.by, align 8, !alias.scope !1741, !noalias !1740, !noundef !10
  %.not.i.i227.i.i = icmp ugt i64 %i.ci, %.val199.i.i
  br i1 %.not.i.i227.i.i, label %bb.bt, label %bb.bu, !prof !13

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #53
          to label %.noexc229.i.i unwind label %bb.ch, !noalias !1743

.noexc229.i.i:                                    ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %.val198.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !1741, !noalias !1740, !nonnull !10, !noundef !10 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val198.i.i, i64 %i.ch
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val198.i.i, i64 %i.ci
  invoke void @_RNvMs_NvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB4_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseE3newCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, ptr noundef nonnull %i.gs, ptr noundef nonnull %i.gt, ptr noundef nonnull @_RNvYNCINvCsiolMeYWJ97s_13fish_fallback9lowercaseNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTcEE9call_onceCs8frGy5WneL6_4fish)
          to label %bb.bv unwind label %bb.ch, !noalias !1743

bb.bv:                                            ; preds = %bb.bu
  %i.gu = invoke fastcc noundef i64 @_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.n)
          to label %bb.bw unwind label %bb.ch

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1742
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(88) %i.an, i64 24, i1 false), !noalias !1743
  %.sroa.5.0..sroa_idx.i232.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5.0..sroa_idx.i232.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !1742
  store i64 1, ptr %i.m, align 16, !alias.scope !1757, !noalias !1742
  %.sroa.4.0..sroa_idx.i231.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.gu, ptr %.sroa.4.0..sroa_idx.i231.i.i, align 8, !alias.scope !1757, !noalias !1742
  %.sroa.6.0..sroa_idx.i233.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %i.ch, ptr %.sroa.6.0..sroa_idx.i233.i.i, align 8, !alias.scope !1757, !noalias !1742
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  store i64 %i.ci, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !alias.scope !1757, !noalias !1742
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !1757, !noalias !1742
  %i.gw = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 5 uses
  store i64 0, ptr %i.gw, align 8, !alias.scope !1757, !noalias !1742
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 16, !alias.scope !1757, !noalias !1742
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !1757, !noalias !1742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !1742
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gw)
          to label %bb.by unwind label %bb.bx, !noalias !1743

bb.bx:                                            ; preds = %bb.bw
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gw, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1742
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader20AutosuggestionResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.m) #50
          to label %bb.bn unwind label %bb.bk, !noalias !1743

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gw, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.gy = load <2 x i64>, ptr %i.m, align 16, !noalias !1750
  %.sroa.16.0.copyload57.i = load i64, ptr %.sroa.5.0..sroa_idx.i232.i.i, align 16, !noalias !1750
  %.sroa.18.0..sroa_idx76.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.18.0.copyload77.i = load ptr, ptr %.sroa.18.0..sroa_idx76.i, align 8, !noalias !1750
  %.sroa.20.0..sroa_idx96.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.gz = load <2 x i64>, ptr %.sroa.20.0..sroa_idx96.i, align 16, !noalias !1750
  %.sroa.24.0.copyload137.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.26.0.copyload157.i = load i8, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !1750
  %.sroa.28.0..sroa_idx173.i = getelementptr inbounds nuw i8, ptr %i.m, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.28.0..sroa_idx173.i, i64 31, i1 false), !noalias !1750
  %.sroa.30.0.copyload188.i = load i64, ptr %i.gw, align 8, !noalias !1750
  %.sroa.32.0.copyload208.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i, align 16, !noalias !1750
  %.sroa.34.0.copyload228.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !1750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1742
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete10CompletionEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u)
          to label %bb.bz unwind label %bb.s, !noalias !1743

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1742
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ai)
          to label %bb.ca unwind label %bb.l, !noalias !1743

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1742
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader20AutosuggestionResultEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.aj)
          to label %bb.cb unwind label %bb.h, !noalias !1743

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1742
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env11environment6EnvDynEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %bb.ce unwind label %bb.cc, !noalias !1743

bb.cc:                                            ; preds = %bb.cb
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.hb = load ptr, ptr %i.co, align 8, !alias.scope !1760, !noalias !1740, !nonnull !10, !noundef !10
  %i.hc = atomicrmw add ptr %i.hb, i64 -1 release, align 8, !noalias !1761
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %bb.cd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.co) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i unwind label %bb.bk, !noalias !1743

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  %i.he = load ptr, ptr %i.co, align 8, !alias.scope !1764, !noalias !1740, !nonnull !10, !noundef !10
  %i.hf = atomicrmw add ptr %i.he, i64 -1 release, align 8, !noalias !1765
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.cf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit236.i.i

bb.cf:                                            ; preds = %bb.ce
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.co) #52
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit236.i.i unwind label %bb.cg, !noalias !1743

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i: ; preds = %bb.cg, %bb.cd, %bb.cc
  %.pn156.i.i = phi { ptr, i32 } [ %i.hi, %bb.cg ], [ %i.ha, %bb.cd ], [ %i.ha, %bb.cc ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hh) #50
          to label %.body7.i unwind label %bb.bk, !noalias !1743

bb.cg:                                            ; preds = %bb.cf
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit236.i.i: ; preds = %bb.cf, %bb.ce
  %i.hj = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hj)
          to label %_RNCNvNtNtCs8frGy5WneL6_4fish6reader6reader28get_autosuggestion_performer0B7_.exit.i unwind label %bb.fs, !noalias !1740

bb.ch:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #50
          to label %.thread423.i.i unwind label %bb.bk, !noalias !1743

.thread423.i.i:                                   ; preds = %bb.ch, %bb.bb, %bb.az, %bb.aq
  %.pn.pn430.i.i = phi { ptr, i32 } [ %i.fv, %bb.bb ], [ %i.fu, %bb.az ], [ %i.ev, %bb.aq ], [ %i.hk, %bb.ch ]
  %.sroa.042.6429.i.i = phi i8 [ 0, %bb.bb ], [ 0, %bb.az ], [ %.sroa.042.7.i.i, %bb.aq ], [ %.sroa.042.9.i.i, %bb.ch ] ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #50
end_hunk_0
