Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.12?download=true
inline.NumInlined: 2412
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockRSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8frGy5WneL6_4fish:bb.a
  %i.d = trunc nuw i8 %.val.i.i to i1
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockRSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #34, !noalias !777
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #34, !noalias !777
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockRSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !noalias !777, !nonnull !9, !noundef !9
  %i.f = tail call { ptr, i64 } %i.e(), !noalias !777, !inline_history !774 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8, !noalias !777
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !777
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32, i32 } @_RNSNvYNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTQNtNtBa_6parser6ParserINtNtB17_6option6OptionQNtNtBa_2io12OutputStreamEB27_EE9call_once6vtableBa_(ptr noundef %0, ptr noalias nofree noundef align 8 dereferenceable(432) %1, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %2, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 17 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %.invoke.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.not24.i = icmp eq ptr %3, null
  br i1 %.not24.i, label %.invoke.i, label %bb.d, !prof !13

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit59.i: ; preds = %bb.bb, %bb.ba, %bb.az, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit.i, %bb.c
  %.sroa.022.0.i = phi i1 [ true, %bb.c ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit.i ], [ true, %bb.bb ], [ true, %bb.az ], [ true, %bb.ba ]
  %.pn29.pn.pn.i = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn29.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit.i ], [ %.pn29.pn66.i, %bb.bb ], [ %.pn29.pn66.i, %bb.az ], [ %.pn29.pn66.i, %bb.ba ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) #36
          to label %bb.bc unwind label %bb.p

bb.c:                                             ; preds = %.invoke.i, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit59.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !851
  %i.i = invoke { ptr, ptr } @_RNvMsb_NtCs8frGy5WneL6_4fish2ioNtB5_7IoChain9io_for_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, i32 noundef 1)
          to label %bb.e unwind label %bb.c       ; 2 uses

.invoke.i:                                        ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ @40, %bb.b ], [ @39, %bb.a ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j) #35
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.l = extractvalue { ptr, ptr } %i.i, 1
  store ptr %i.k, ptr %i.g, align 8, !noalias !851
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !noalias !851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !851
  %i.n = invoke { ptr, ptr } @_RNvMsb_NtCs8frGy5WneL6_4fish2ioNtB5_7IoChain9io_for_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, i32 noundef 2)
          to label %bb.g unwind label %.thread.i  ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit.i: ; preds = %bb.ay, %bb.ax, %.thread67.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io9IoStreamsEBF_.exit.i
  %.sroa.022.1.i = phi i8 [ %.sroa.022.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io9IoStreamsEBF_.exit.i ], [ %.sroa.021.173.i, %bb.ay ], [ %.sroa.021.173.i, %.thread67.i ], [ %.sroa.021.173.i, %bb.ax ]
  %.pn29.pn.i = phi { ptr, i32 } [ %.pn29.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io9IoStreamsEBF_.exit.i ], [ %.pn2974.i, %bb.ay ], [ %.pn2974.i, %.thread67.i ], [ %.pn2974.i, %bb.ax ] ; 2 uses
  %i.o = trunc nuw i8 %.sroa.022.1.i to i1
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit._crit_edge.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit59.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit._crit_edge.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit.i
  %.pre80.i.a = load ptr, ptr %i.g, align 8, !alias.scope !852, !noalias !851
  br label %bb.az

.thread.i:                                        ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io9IoStreamsEBF_.exit.i: ; preds = %bb.z, %bb.y, %.body.i, %bb.f
  %.sroa.022.2.i = phi i8 [ %.sroa.020.1.i, %bb.f ], [ 0, %bb.z ], [ 0, %.body.i ], [ 0, %bb.y ] ; 2 uses
  %.sroa.020.0.i = phi i8 [ %.sroa.020.1.i, %bb.f ], [ %.sroa.020.2.i, %bb.z ], [ %.sroa.020.2.i, %.body.i ], [ %.sroa.020.2.i, %bb.y ]
  %.pn29.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %.pn.i, %bb.z ], [ %.pn.i, %.body.i ], [ %.pn.i, %bb.y ] ; 2 uses
  %i.q = trunc nuw i8 %.sroa.020.0.i to i1
  br i1 %i.q, label %.thread67.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit.i

bb.f:                                             ; preds = %bb.ar, %bb.o, %bb.g
  %.sroa.020.1.i = phi i8 [ 0, %bb.ar ], [ 1, %bb.g ], [ 1, %bb.o ] ; 2 uses
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io9IoStreamsEBF_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.s = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.n, 1
  store ptr %i.s, ptr %i.f, align 8, !noalias !851
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !noalias !851
  %i.v = invoke { ptr, ptr } @_RNvMsb_NtCs8frGy5WneL6_4fish2ioNtB5_7IoChain9io_for_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, i32 noundef 0)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 3 uses
  %.not25.i = icmp eq ptr %i.w, null
  br i1 %.not25.i, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = extractvalue { ptr, ptr } %i.v, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !851
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  store ptr %i.w, ptr %i.e, align 8, !noalias !851
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !noalias !851
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !35, !invariant.load !9
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = and i64 %i.ab, -16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !9, !nonnull !9
  %i.ah = invoke noundef i32 %i.ag(ptr noundef nonnull %i.ae)
          to label %bb.l unwind label %bb.j       ; 3 uses

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.aj = load ptr, ptr %i.e, align 8, !alias.scope !855, !noalias !851, !nonnull !9, !noundef !9
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !855
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.k, label %.thread67.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #37
          to label %.thread67.i unwind label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.am = icmp sgt i32 %i.ah, 2
  br i1 %i.am, label %bb.m, label %_RNvXs0_NtCs8frGy5WneL6_4fish3fdsNtB5_14BorrowedFdFileNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw9FromRawFd11from_raw_fd.exit.i

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.e, align 8, !noalias !851, !nonnull !9, !noundef !9
  %i.ao = load ptr, ptr %i.y, align 8, !noalias !851, !nonnull !9, !align !30, !noundef !9 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !35, !invariant.load !9
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = and i64 %i.ar, -16
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !9, !nonnull !9
  %i.ax = invoke noundef i8 %i.aw(ptr noundef nonnull %i.au)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp eq i8 %i.ax, 2
  %spec.select77.i = select i1 %i.ay, i32 0, i32 %i.ah
  br label %_RNvXs0_NtCs8frGy5WneL6_4fish3fdsNtB5_14BorrowedFdFileNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw9FromRawFd11from_raw_fd.exit.i

_RNvXs0_NtCs8frGy5WneL6_4fish3fdsNtB5_14BorrowedFdFileNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw9FromRawFd11from_raw_fd.exit.i: ; preds = %bb.n, %bb.l
  %.sroa.010.0.i = phi i32 [ %spec.select77.i, %bb.n ], [ %i.ah, %bb.l ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.az = load ptr, ptr %i.e, align 8, !alias.scope !858, !noalias !851, !nonnull !9, !noundef !9
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !858
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit37.i

bb.o:                                             ; preds = %_RNvXs0_NtCs8frGy5WneL6_4fish3fdsNtB5_14BorrowedFdFileNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw9FromRawFd11from_raw_fd.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit37.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit37.i: ; preds = %bb.o, %_RNvXs0_NtCs8frGy5WneL6_4fish3fdsNtB5_14BorrowedFdFileNtNtNtNtCsaL1QbXo9JQH_3std2os2fd3raw9FromRawFd11from_raw_fd.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !851
  %.pre.i = load ptr, ptr %i.g, align 8, !noalias !851
  %.pre78.i = load ptr, ptr %i.f, align 8, !noalias !851
  br label %bb.q

bb.p:                                             ; preds = %bb.bf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit61.i, %bb.bb, %bb.ay, %.body52.i, %bb.al, %bb.z, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1A_.exit59.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit37.i, %bb.h
  %i.bd = phi ptr [ %.pre78.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit37.i ], [ %i.s, %bb.h ] ; 2 uses
  %i.be = phi ptr [ %.pre.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit37.i ], [ %i.k, %bb.h ] ; 6 uses
  %.sroa.010.1.i = phi i32 [ %.sroa.010.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEB1e_.exit37.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !851
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.bf, align 8, !alias.scope !859, !noalias !860
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %3, ptr %i.bg, align 8, !alias.scope !859, !noalias !860
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 0, ptr %i.bi, align 4, !noalias !851
  store ptr %0, ptr %i.bj, align 8, !alias.scope !859, !noalias !860
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !850, !noalias !861, !noundef !9
  store ptr %i.bl, ptr %i.d, align 8, !noalias !851
  store i32 %.sroa.010.1.i, ptr %i.bh, align 8, !noalias !851
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !range !31, !alias.scope !850, !noalias !861, !noundef !9
  store i8 %i.bn, ptr %i.bi, align 4, !noalias !851
  %i.bo = icmp ne ptr %i.be, null
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 39
  %i.bq = zext i1 %i.bo to i8
  store i8 %i.bq, ptr %i.bp, align 1, !noalias !851
  %i.br = icmp ne ptr %i.bd, null
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bt = zext i1 %i.br to i8
  store i8 %i.bt, ptr %i.bs, align 8, !noalias !851
  %.not26.i = icmp eq ptr %i.be, null
  br i1 %.not26.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.m, align 8, !noalias !851, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !851
  store ptr %i.be, ptr %i.b, align 8, !noalias !863
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !noalias !863
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !range !35, !invariant.load !9, !alias.scope !862
  %i.by = add nsw i64 %i.bx, -1
  %i.bz = and i64 %i.by, -16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !invariant.load !9, !alias.scope !862, !nonnull !9
  %i.ce = invoke noundef i8 %i.cd(ptr noundef nonnull %i.cb)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !864
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.t, label %.body.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #37
          to label %.body.i unwind label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.ci = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !865
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #37
          to label %bb.ab unwind label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.x:                                             ; preds = %bb.ab, %bb.q
  %i.cl = phi ptr [ %.pre79.i, %bb.ab ], [ %i.bd, %bb.q ] ; 5 uses
  %.sroa.011.0.i = phi i8 [ %i.ct, %bb.ab ], [ 0, %bb.q ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 37
  store i8 %.sroa.011.0.i, ptr %i.cm, align 1, !noalias !851
  %.not27.i = icmp eq ptr %i.cl, null
  br i1 %.not27.i, label %bb.ai, label %bb.ac

.body.i:                                          ; preds = %bb.an, %bb.al, %bb.ae, %bb.ad, %bb.aa, %bb.t, %bb.s
  %.sroa.020.2.i = phi i8 [ 0, %bb.al ], [ 1, %bb.s ], [ 1, %bb.t ], [ 0, %bb.ad ], [ %.sroa.020.3.i, %bb.aa ], [ 0, %bb.ae ], [ 0, %bb.an ] ; 3 uses
  %.pn.i = phi { ptr, i32 } [ %i.dz, %bb.al ], [ %i.cf, %bb.s ], [ %i.cf, %bb.t ], [ %i.df, %bb.ad ], [ %i.cr, %bb.aa ], [ %i.df, %bb.ae ], [ %i.ea, %bb.an ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.cn = load ptr, ptr %i.d, align 8, !alias.scope !868, !noalias !851, !noundef !9 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io9IoStreamsEBF_.exit.i, label %bb.y

bb.y:                                             ; preds = %.body.i
  %i.cp = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !869
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io9IoStreamsEBF_.exit.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io9IoStreamsEBF_.exit.i unwind label %bb.p

bb.aa:                                            ; preds = %bb.ao, %bb.ai, %bb.ag, %bb.v
  %.sroa.020.3.i = phi i8 [ 0, %bb.ao ], [ 0, %bb.ai ], [ 0, %bb.ag ], [ 1, %bb.v ]
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ab:                                            ; preds = %bb.v, %bb.u
  %i.cs = icmp eq i8 %i.ce, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !851
  %i.ct = zext i1 %i.cs to i8
  %.pre79.i = load ptr, ptr %i.f, align 8, !noalias !851
  br label %bb.x

bb.ac:                                            ; preds = %bb.x
  %i.cu = load ptr, ptr %i.u, align 8, !noalias !851, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !851
  store ptr %i.cl, ptr %i.a, align 8, !noalias !871
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !noalias !871
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !range !35, !invariant.load !9, !alias.scope !870
  %i.cy = add nsw i64 %i.cx, -1
  %i.cz = and i64 %i.cy, -16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !invariant.load !9, !alias.scope !870, !nonnull !9
  %i.de = invoke noundef i8 %i.dd(ptr noundef nonnull %i.db)
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !872
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ae, label %.body.i

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %.body.i unwind label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.di = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !873
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %bb.aj unwind label %bb.aa

bb.ah:                                            ; preds = %bb.ae
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ai:                                            ; preds = %bb.aj, %bb.x
  %.sroa.015.0.i = phi i8 [ %i.dt, %bb.aj ], [ 0, %bb.x ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 38
  store i8 %.sroa.015.0.i, ptr %i.dl, align 2, !noalias !851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !851
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !850, !noalias !861, !nonnull !9, !noundef !9 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !850, !noalias !861, !noundef !9
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.dq
  invoke void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2s_5slice4iter4IterNtNtB18_9utfstring11Utf32StringENCNCNvNtCs8frGy5WneL6_4fish4exec25get_performer_for_builtin0s0_0EE9from_iterB4c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dr)
          to label %bb.ak unwind label %bb.aa

bb.aj:                                            ; preds = %bb.ag, %bb.af
  %i.ds = icmp eq i8 %i.de, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !851
  %i.dt = zext i1 %i.ds to i8
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ai
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !851, !nonnull !9, !noundef !9
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !851, !noundef !9
  %i.dy = invoke { i32, i32 } @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11builtin_run(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %1, ptr noalias nofree noundef nonnull align 8 %i.dv, i64 noundef %i.dx, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #36
          to label %.body.i unwind label %bb.p

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.ap

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i unwind label %bb.aa

bb.ap:                                            ; preds = %bb.an
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !851
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.ec = load ptr, ptr %i.d, align 8, !alias.scope !876, !noalias !851, !noundef !9 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io9IoStreamsEBF_.exit51.i, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i
  %i.ee = atomicrmw sub ptr %i.ec, i64 1 release, align 8, !noalias !877
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io9IoStreamsEBF_.exit51.i

end_hunk_0
begin_hunk_1_@_RNvNtCs8frGy5WneL6_4fish4exec19exec_process_in_job:bb.a
  %i.bs = alloca [416 x i8], align 8              ; 9 uses
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
  %i.bu = alloca [128 x i8], align 8              ; 19 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [24 x i8], align 8               ; 8 uses
  %i.bx = alloca [24 x i8], align 8               ; 8 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
  %i.ca = alloca [24 x i8], align 8               ; 17 uses
  %i.cb = alloca [424 x i8], align 8              ; 7 uses
  %i.cc = alloca [16 x i8], align 8               ; 11 uses
  %i.cd = alloca [8 x i8], align 8                ; 13 uses
  %i.ce = alloca [24 x i8], align 8               ; 15 uses
  %i.cf = alloca [32 x i8], align 8               ; 16 uses
  %i.cg = alloca [24 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 14 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [16 x i8], align 8               ; 13 uses
  %i.ck = alloca [40 x i8], align 8               ; 7 uses
  %i.cl = alloca [16 x i8], align 8               ; 9 uses
  %i.cm = alloca [72 x i8], align 8               ; 8 uses
  %i.cn = alloca [24 x i8], align 8               ; 13 uses
  %i.co = alloca [24 x i8], align 8               ; 25 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !9, !noundef !9
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !9
  invoke void @_RINvNtCs8frGy5WneL6_4fish5trace26trace_if_enabled_with_argsNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) inttoptr (i64 4 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cr, i64 noundef %i.ct)
          to label %bb.c unwind label %bb.b

.body110:                                         ; preds = %bb.pc, %bb.oz, %bb.r, %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit, %bb.b, %.thread229
  %.sroa.024.0 = phi i1 [ false, %.thread229 ], [ false, %bb.d ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit ], [ false, %bb.r ], [ %.sroa.024.1, %bb.b ], [ false, %bb.oz ], [ false, %bb.pc ] ; 2 uses
  %.sroa.023.0 = phi i1 [ %.not, %.thread229 ], [ %.not, %bb.d ], [ %.not, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit ], [ %.not, %bb.r ], [ %.sroa.023.1, %bb.b ], [ %.not, %bb.oz ], [ %.not, %bb.pc ]
  %.sroa.021.0 = phi i8 [ %.sroa.021.2217, %.thread229 ], [ %.sroa.021.4, %bb.d ], [ %.sroa.021.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit ], [ 1, %bb.r ], [ %.sroa.021.1, %bb.b ], [ %.sroa.021.4, %bb.oz ], [ %.sroa.021.4, %bb.pc ]
  %.pn.pn = phi { ptr, i32 } [ %.pn218, %.thread229 ], [ %lpad.thr_comm.split-lp, %bb.d ], [ %eh.lpad-body123, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit ], [ %i.dp, %bb.r ], [ %i.cw, %bb.b ], [ %i.agl, %bb.oz ], [ %i.ago, %bb.pc ]
  %i.cu = icmp ne i32 %4, -1
  %i.cv = trunc nuw i8 %.sroa.021.0 to i1
  %or.cond3 = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond3, label %bb.pi, label %bb.ph

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i173, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i164, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i, %bb.a
  %.sroa.024.1 = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i164 ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i173 ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i ], [ true, %bb.a ]
  %.sroa.023.1 = phi i1 [ %.not, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i164 ], [ %.not, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i173 ], [ %.not, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i ], [ true, %bb.a ]
  %.sroa.021.1 = phi i8 [ %.sroa.021.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i164 ], [ %.sroa.021.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i173 ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i ], [ 1, %bb.a ]
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.not = icmp eq i32 %5, -1                      ; 10 uses
  br i1 %.not, label %bb.h, label %bb.e

.thread240:                                       ; preds = %bb.ov, %bb.oy, %bb.af, %bb.g, %bb.ac, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i102, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.y
  %.sroa.021.3.ph = phi i8 [ 0, %bb.y ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i102 ], [ 1, %bb.h ], [ %.sroa.021.4, %bb.ac ], [ 1, %bb.g ], [ %.sroa.021.4, %bb.af ], [ %.sroa.021.4, %bb.oy ], [ %.sroa.021.4, %bb.ov ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread229

bb.d:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish4exec26exec_block_or_func_process.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.e:                                             ; preds = %bb.c
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cy = load i32, ptr %i.cx, align 8, !noundef !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2468
  %i.cz = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 121) 32, i64 noundef 8) #32, !noalias !2468 ; 7 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #35
          to label %.noexc94 unwind label %.thread224

.noexc94:                                         ; preds = %bb.f
  unreachable

.thread224:                                       ; preds = %bb.f
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = tail call noundef i32 @close(i32 noundef %5) #32, !noalias !2469 ; 0 uses
  br label %.thread229

bb.g:                                             ; preds = %bb.e
  store i64 1, ptr %i.cz, align 8
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 1, ptr %.sroa.4198.0..sroa_idx, align 8
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 %5, ptr %.sroa.5199.0..sroa_idx, align 8
  %.sroa.7200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  store i32 %i.cy, ptr %.sroa.7200.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  invoke void @_RNvMsb_NtCs8frGy5WneL6_4fish2ioNtB5_7IoChain4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @264)
          to label %bb.h unwind label %.thread240

bb.h:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  invoke void @_RNvXs7_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStackNtB5_11Environment13get_pwd_slash(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cn, ptr noundef nonnull align 8 %i.dd)
          to label %bb.i unwind label %.thread240

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.df = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !9, !noundef !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noundef !9
  %i.dj = invoke noundef zeroext i1 @_RNvMsb_NtCs8frGy5WneL6_4fish2ioNtB5_7IoChain17append_from_specs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.de, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dg, i64 noundef %i.di)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cn) #36
          to label %.thread229 unwind label %bb.pe

bb.k:                                             ; preds = %bb.i
  br i1 %i.dj, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %.thread229 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.thread240

bb.o:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i102 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %.thread229 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i102: ; preds = %bb.o
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit109 unwind label %.thread240

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %.body110 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %.not74 = icmp eq i32 %4, -1
  br i1 %.not74, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit171, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit
  %i.dr = call noundef i32 @close(i32 noundef %4) #32 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit180, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit171, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit
  %.sroa.0.1 = phi i1 [ true, %bb.t ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit171 ], [ %.sroa.0.3, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit180 ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit ]
  ret i1 %.sroa.0.1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit109: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %.not75 = icmp eq i32 %4, -1
  br i1 %.not75, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit109
  %.sroa.021.4 = phi i8 [ 0, %bb.y ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit109 ] ; 14 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  store i64 1, ptr %i.cm, align 8
  %.sroa.051.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 2, ptr %.sroa.051.sroa.3.0..sroa_idx, align 8
  %.sroa.051.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  store ptr %6, ptr %.sroa.051.sroa.4.0..sroa_idx, align 8
  %.sroa.051.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store ptr %i.ds, ptr %.sroa.051.sroa.5.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  store i64 0, ptr %.sroa.453.0..sroa_idx, align 8
  %i.dt = load i32, ptr %i.ds, align 4            ; 2 uses
  %.not.i.i = icmp eq i32 %i.dt, -1
  br label %.split.preheader.i

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit109
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2470
  %i.du = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 121) 32, i64 noundef 8) #32, !noalias !2470 ; 7 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #35
          to label %.noexc113 unwind label %.thread219

.noexc113:                                        ; preds = %bb.x
  unreachable

.thread219:                                       ; preds = %bb.x
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = call noundef i32 @close(i32 noundef %4) #32, !noalias !2471 ; 0 uses
  br label %.thread229

bb.y:                                             ; preds = %bb.w
  store i64 1, ptr %i.du, align 8
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 1, ptr %.sroa.4202.0..sroa_idx, align 8
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i32 %4, ptr %.sroa.5203.0..sroa_idx, align 8
  %.sroa.7204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  store i32 0, ptr %.sroa.7204.0..sroa_idx, align 4
  %.sroa.8205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i8 1, ptr %.sroa.8205.0..sroa_idx, align 8
  invoke void @_RNvMsb_NtCs8frGy5WneL6_4fish2ioNtB5_7IoChain4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @264)
          to label %bb.v unwind label %.thread240

.split.preheader.i:                               ; preds = %bb.v, %bb.pg
  %.lcssa268272 = phi i64 [ %.lcssa374, %bb.pg ], [ 0, %bb.v ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  %.not.i.i.i.i269 = icmp eq i64 %.lcssa268272, 2
  br i1 %.not.i.i.i.i269, label %.split.preheader.i._crit_edge, label %.lr.ph.peel

.lr.ph.peel:                                      ; preds = %.split.preheader.i
  %i.dy = add nuw nsw i64 %.lcssa268272, 1        ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.051.sroa.4.0..sroa_idx, i64 %.lcssa268272
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !2473, !nonnull !9, !align !16, !noundef !9
  %i.eb = load i32, ptr %i.ea, align 4, !alias.scope !2474, !noalias !2472, !noundef !9 ; 2 uses
  %.not.i.i.peel = icmp eq i32 %i.eb, -1
  br i1 %.not.i.i.peel, label %.split.i.peel, label %.loopexit377

.split.i.peel:                                    ; preds = %.lr.ph.peel
  %.not.i.i.i.i.peel = icmp eq i64 %i.dy, 2
  %brmerge = select i1 %.not.i.i.i.i.peel, i1 true, i1 %.not.i.i
  br i1 %brmerge, label %.split.preheader.i._crit_edge, label %.loopexit377

.loopexit256:                                     ; preds = %bb.pg
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  br label %.thread229

.loopexit.split-lp257:                            ; preds = %bb.pf
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %.thread229

.split.preheader.i._crit_edge:                    ; preds = %.split.i.peel, %.split.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  %.val93 = load i64, ptr %1, align 8, !range !22, !noundef !9
  %i.ec = icmp eq i64 %.val93, 3
  br i1 %i.ec, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.ab, %.split.preheader.i._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  store i64 0, ptr %i.cl, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !9 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 192153584101141163
  call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp eq i64 %i.ef, 0
  br i1 %i.eh, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  store ptr %0, ptr %i.cj, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cl, ptr %i.ei, align 8
  br label %._crit_edge

bb.aa:                                            ; preds = %.split.preheader.i._crit_edge
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !9 ; 2 uses
  %i.el = icmp eq i64 %i.ek, -1
  br i1 %i.el, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.em = add nuw i64 %i.ek, 1
  store i64 %i.em, ptr %i.ej, align 8
  br label %bb.z

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #35
          to label %bb.ad unwind label %.thread240

bb.ad:                                            ; preds = %bb.ox, %bb.ot, %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  store i64 1, ptr %i.cl, align 8
  store i64 %i.ev, ptr %i.ed, align 8
  %.pre = load i64, ptr %i.ee, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  store ptr %0, ptr %i.cj, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cl, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.idx = mul nuw nsw i64 %.pre, 48
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx
  %i.er = icmp eq i64 %.pre, 0
  br i1 %i.er, label %._crit_edge, label %.lr.ph276

bb.af:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i8 13, ptr %i.es, align 8, !alias.scope !2475
  %i.et = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ck, i64 33
  store i8 0, ptr %i.eu, align 1, !alias.scope !2475
  store ptr null, ptr %i.ck, align 8, !alias.scope !2475
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false), !alias.scope !2475
  %i.ev = invoke noundef i64 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser10push_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ck)
          to label %bb.ae unwind label %.thread240

.loopexit:                                        ; preds = %.lr.ph276, %bb.ag
  %lpad.loopexit254 = landingpad { ptr, i32 }
          cleanup
  br label %.body122

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.ot, %bb.ow, %bb.ox, %bb.aj, %.noexc120, %bb.hk, %bb.ji, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io18StringOutputStreamEBF_.exit.i17.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit57.i
  %.sroa.019.2.ph = phi i1 [ true, %bb.aj ], [ true, %._crit_edge ], [ true, %bb.ot ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit57.i ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io18StringOutputStreamEBF_.exit.i17.i ], [ true, %.noexc120 ], [ true, %bb.ji ], [ true, %bb.hk ], [ true, %bb.ox ], [ true, %bb.ow ]
  %lpad.loopexit.split-lp255 = landingpad { ptr, i32 }
          cleanup
  br label %.body122

.body122:                                         ; preds = %.loopexit, %.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit59.i, %bb.of, %bb.op, %.body13.i, %bb.jk, %.body73.i
  %.sroa.019.2.lpad-body = phi i1 [ true, %.body73.i ], [ true, %.body13.i ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit59.i ], [ true, %bb.jk ], [ false, %bb.op ], [ false, %bb.of ], [ true, %.loopexit ], [ %.sroa.019.2.ph, %.loopexit.split-lp ]
  %eh.lpad-body123 = phi { ptr, i32 } [ %.pn39.pn.pn.pn.pn.i, %.body73.i ], [ %.pn.i124, %.body13.i ], [ %.pn27.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit59.i ], [ %i.yf, %bb.jk ], [ %i.agb, %bb.op ], [ %i.afn, %bb.of ], [ %lpad.loopexit254, %.loopexit ], [ %lpad.loopexit.split-lp255, %.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtBT_4exec19exec_process_in_job0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit unwind label %bb.pe

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit: ; preds = %.body122
  br i1 %.sroa.019.2.lpad-body, label %.thread229, label %.body110

._crit_edge:                                      ; preds = %bb.ah, %.thread, %bb.ae
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 213
  %i.ex = load i8, ptr %i.ew, align 1, !range !31, !noundef !9
  %i.ey = trunc nuw i8 %i.ex to i1
  %.sroa.015.0.demorgan = or i1 %7, %i.ey         ; 2 uses
  %.sroa.015.0 = xor i1 %.sroa.015.0.demorgan, true ; 2 uses
  invoke void @_RNvMs6_NtCs8frGy5WneL6_4fish4procNtB5_7Process31check_generations_before_launch(ptr noundef nonnull align 8 %1)
          to label %bb.ai unwind label %.loopexit.split-lp

.lr.ph276:                                        ; preds = %bb.ae, %bb.ah
  %.sroa.09.0275 = phi ptr [ %i.ez, %bb.ah ], [ %i.ep, %bb.ae ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.09.0275, i64 48 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.09.0275, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !nonnull !9, !noundef !9
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.09.0275, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.09.0275, i64 24
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %.lr.ph276
  %i.ff = invoke noundef i8 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser7set_var(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fb, i64 noundef %i.fd, i32 17, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ci)
          to label %bb.ah unwind label %.loopexit ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %i.fg = icmp eq ptr %i.ez, %i.eq
  br i1 %i.fg, label %._crit_edge, label %.lr.ph276
end_hunk_1
begin_hunk_2_@_RNvNtCs8frGy5WneL6_4fish4exec19exec_process_in_job:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io15SeparatedBufferEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish2io13BufferElementEEB1c_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2560
  br label %bb.np

bb.ob:                                            ; preds = %bb.os, %bb.ok, %bb.oj, %bb.oh, %bb.od, %bb.ns, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit59.i
  %i.afj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

.thread66.i:                                      ; preds = %bb.np
  %i.afk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i142

bb.oc:                                            ; preds = %bb.no
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afl = atomicrmw sub ptr %i.aeu, i64 1 release, align 8, !noalias !2587
  %i.afm = icmp eq i64 %i.afl, 1
  br i1 %i.afm, label %bb.od, label %bb.oh

bb.od:                                            ; preds = %bb.oc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #37
          to label %bb.oh unwind label %bb.ob

bb.oe:                                            ; preds = %bb.np
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2560
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit57.i unwind label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.afn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.body122 unwind label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.afo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit57.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEEB1z_.exit40.i, %bb.oe
  %.sroa.0.1.i147 = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEEB1z_.exit40.i ], [ false, %bb.oe ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RNvNtCs8frGy5WneL6_4fish4exec26exec_block_or_func_process.exit unwind label %.loopexit.split-lp

bb.oh:                                            ; preds = %bb.od, %bb.oc, %bb.nz, %bb.ns, %.thread73.i
  %.pn23.ph.i = phi { ptr, i32 } [ %i.afh, %bb.nz ], [ %.pn19.i, %bb.ns ], [ %lpad.thr_comm.i, %.thread73.i ], [ %lpad.thr_comm.split-lp.i, %bb.od ], [ %lpad.thr_comm.split-lp.i, %bb.oc ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #36
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit59.i unwind label %bb.ob

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit49.i: ; preds = %bb.oj, %bb.oi, %bb.jw
  %.pn62.i = phi { ptr, i32 } [ %i.yu, %bb.jw ], [ %i.afr, %bb.oj ], [ %i.afr, %bb.oi ] ; 2 uses
  %i.afp = load i64, ptr %i.af, align 8, !range !11, !noalias !2560, !noundef !9
  %i.afq = icmp eq i64 %i.afp, 0
  br i1 %i.afq, label %.body.i142, label %bb.ok

bb.oi:                                            ; preds = %bb.ju
  %i.afr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afs = atomicrmw sub ptr %i.yp, i64 1 release, align 8, !noalias !2588
  %i.aft = icmp eq i64 %i.afs, 1
  br i1 %i.aft, label %bb.oj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit49.i

bb.oj:                                            ; preds = %bb.oi
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit49.i unwind label %bb.ob

bb.ok:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit49.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillENtNtNtB4_2io5error5ErrorEEB1z_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.af) #36
          to label %.body.i142 unwind label %bb.ob

bb.ol:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2589
  %i.afu = ptrtoint ptr %i.yp to i64              ; 2 uses
  %i.afv = and i64 %i.afu, 3
  switch i64 %i.afv, label %default.unreachable334 [
    i64 2, label %bb.oo
    i64 3, label %bb.om
    i64 0, label %bb.oo
    i64 1, label %bb.on
  ], !prof !19

bb.om:                                            ; preds = %bb.ol
  %i.afw = icmp ult ptr %i.yp, inttoptr (i64 188978561024 to ptr)
  %i.afx = and i64 %i.afu, 1095216660480
  %i.afy = icmp ne i64 %i.afx, 1095216660480
  call void @llvm.assume(i1 %i.afw)
  call void @llvm.assume(i1 %i.afy)
  br label %bb.oo

bb.on:                                            ; preds = %bb.ol
  %i.afz = getelementptr i8, ptr %i.yp, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afz) ]
  %i.aga = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.afz, ptr %i.aga, align 8, !alias.scope !2590, !noalias !2589
  store i8 3, ptr %i.a, align 8, !alias.scope !2590, !noalias !2589
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aga)
          to label %bb.oo unwind label %bb.jr

bb.oo:                                            ; preds = %bb.on, %bb.om, %bb.ol, %bb.ol
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2560
  br label %bb.nc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEEB1z_.exit40.i: ; preds = %bb.ne, %bb.nd, %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2560
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit57.i unwind label %bb.op

bb.op:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEEB1z_.exit40.i
  %i.agb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.body122 unwind label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.agc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.or:                                            ; preds = %.body.i142
  %i.agd = atomicrmw sub ptr %i.yl, i64 1 release, align 8, !noalias !2591
  %i.age = icmp eq i64 %i.agd, 1
  br i1 %i.age, label %bb.os, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit59.i

bb.os:                                            ; preds = %bb.or
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish2io12IoBufferfillEEB1d_.exit59.i unwind label %bb.ob

bb.ot:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @267, ptr noundef nonnull inttoptr (i64 167 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #35
          to label %bb.ad unwind label %.loopexit.split-lp

bb.ou:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i112.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.0.0.i117 = phi i1 [ %i.ih, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.0.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i112.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !2478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !2478
  br i1 %.sroa.0.0.i117, label %bb.ov, label %.noexc

bb.ov:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEBF_.exit115.sink.split.i, %bb.ou
  invoke void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtBT_4exec19exec_process_in_job0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit160 unwind label %.thread240

.noexc:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEBF_.exit115.sink.split.i, %bb.ou
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.agg = load atomic i32, ptr %i.agf acquire, align 8
  %i.agh = icmp eq i32 %i.agg, 0
  br i1 %i.agh, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %.noexc
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.agk = load i32, ptr %i.agj, align 4, !range !42, !noundef !9
  invoke void @_RNvMs1_NtCs8frGy5WneL6_4fish11wait_handleNtB5_15WaitHandleStore13remove_by_pid(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.agi, i32 noundef %i.agk)
          to label %bb.oy unwind label %.loopexit.split-lp

bb.ox:                                            ; preds = %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #35
          to label %bb.ad unwind label %.loopexit.split-lp

bb.oy:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish4exec20exec_builtin_process.exit, %bb.ow
  invoke void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtBT_4exec19exec_process_in_job0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit162 unwind label %.thread240

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit160: ; preds = %bb.ov
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i164 unwind label %bb.oz

bb.oz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit160
  %i.agl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %.body110 unwind label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.agm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i164: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit160
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit171 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit171: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %8 = icmp ne i32 %4, -1
  %i.agn = trunc nuw i8 %.sroa.021.4 to i1
  %or.cond = and i1 %8, %i.agn
  br i1 %or.cond, label %bb.t, label %bb.u

bb.pb:                                            ; preds = %bb.ph
  br i1 %.sroa.024.0, label %bb.pj, label %.thread249

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit162: ; preds = %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i173 unwind label %bb.pc

bb.pc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit162
  %i.ago = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %.body110 unwind label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.agp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i173: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit162
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit180 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit180: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i173, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit182
  %.sroa.0.3 = phi i1 [ %.sroa.0.1.i147, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit182 ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit.i173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.u

_RNvNtCs8frGy5WneL6_4fish4exec26exec_block_or_func_process.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  invoke void @_RNvXsa_Cs5UXtnEuoeIl_11fish_commonINtB5_10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtBT_4exec19exec_process_in_job0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit182 unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit182: ; preds = %_RNvNtCs8frGy5WneL6_4fish4exec26exec_block_or_func_process.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_.exit180

bb.pe:                                            ; preds = %.body122, %bb.pj, %.thread229, %bb.j
  %i.agq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33
  unreachable

.loopexit377:                                     ; preds = %.split.i.peel, %.lr.ph.peel
  %.lcssa374 = phi i64 [ %i.dy, %.lr.ph.peel ], [ 2, %.split.i.peel ]
  %.lcssa372 = phi i32 [ %i.eb, %.lr.ph.peel ], [ %i.dt, %.split.i.peel ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.agr = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 121) 24, i64 noundef 8) #32 ; 5 uses
  %i.ags = icmp eq ptr %i.agr, null
  br i1 %i.ags, label %bb.pf, label %bb.pg, !prof !13

bb.pf:                                            ; preds = %.loopexit377
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #35
          to label %.noexc183 unwind label %.loopexit.split-lp257

.noexc183:                                        ; preds = %bb.pf
  unreachable

bb.pg:                                            ; preds = %.loopexit377
  store i64 1, ptr %i.agr, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  store i64 1, ptr %.sroa.4209.0..sroa_idx, align 8
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  store i32 %.lcssa372, ptr %.sroa.5210.0..sroa_idx, align 8
  invoke void @_RNvMsb_NtCs8frGy5WneL6_4fish2ioNtB5_7IoChain4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull %i.agr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @269)
          to label %.split.preheader.i unwind label %.loopexit256

.thread229:                                       ; preds = %.loopexit256, %.loopexit.split-lp257, %bb.j, %bb.p, %bb.m, %.thread240, %.thread224, %.thread219, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit
  %.pn218 = phi { ptr, i32 } [ %i.dn, %bb.p ], [ %lpad.thr_comm, %.thread240 ], [ %eh.lpad-body123, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit ], [ %i.dw, %.thread219 ], [ %i.db, %.thread224 ], [ %i.dl, %bb.m ], [ %i.dk, %bb.j ], [ %lpad.loopexit258, %.loopexit256 ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp257 ]
  %.sroa.021.2217 = phi i8 [ 1, %bb.p ], [ %.sroa.021.3.ph, %.thread240 ], [ %.sroa.021.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5UXtnEuoeIl_11fish_common10ScopeGuardQNtNtCs8frGy5WneL6_4fish6parser6ParserNCNvNtB1m_4exec19exec_process_in_job0EEB1m_.exit ], [ 0, %.thread219 ], [ 1, %.thread224 ], [ 1, %bb.m ], [ 1, %bb.j ], [ %.sroa.021.4, %.loopexit256 ], [ %.sroa.021.4, %.loopexit.split-lp257 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.co) #36
          to label %.body110 unwind label %bb.pe

bb.ph:                                            ; preds = %bb.pi, %.body110
  %i.agt = icmp ne i32 %5, -1
  %or.cond5 = and i1 %i.agt, %.sroa.023.0
  br i1 %or.cond5, label %.split, label %bb.pb

bb.pi:                                            ; preds = %.body110
  %i.agu = call noundef i32 @close(i32 noundef %4) #32 ; 0 uses
  br label %bb.ph

.split:                                           ; preds = %bb.ph
  %i.agv = call noundef i32 @close(i32 noundef %5) #32 ; 0 uses
  br i1 %.sroa.024.0, label %bb.pj, label %.thread249

.thread249:                                       ; preds = %.split, %bb.pj, %bb.pb
  resume { ptr, i32 } %.pn.pn

bb.pj:                                            ; preds = %.split, %bb.pb
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #36
          to label %.thread249 unwind label %bb.pe
}

; Function Attrs: noreturn nonlazybind uwtable
define internal fastcc void @_RNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = tail call noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads15is_forked_child()
  br i1 %i.d, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i64, ptr %i.g, align 8, !noundef !9
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtB8_3ffi5c_str7CStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB28_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCNvNtCs8frGy5WneL6_4fish4exec21launch_process_nofork0EE9from_iterB4c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs1_NtCs8frGy5WneL6_4fish21null_terminated_arrayNtB5_25OwningNullTerminatedArray3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = invoke noundef nonnull ptr @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack12export_array(ptr noundef nonnull align 8 %0)
          to label %bb.g unwind label %bb.f       ; 3 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @283, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEB1d_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit, %bb.h, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %.pn, %bb.h ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !2600, !nonnull !9, !noundef !9 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load i64, ptr %i.k, align 8, !alias.scope !2600, !noundef !9 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  %i.l = icmp eq i64 %.val1.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEB1d_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEB1d_.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1  ; 2 uses
  %.val8.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !2601, !noalias !2600, !nonnull !9, !noundef !9 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val9.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !2601, !noalias !2600 ; 2 uses
  store i8 0, ptr %.val8.i.i.i.i, align 1, !noalias !2602
  %i.p = icmp eq i64 %.val9.i.i.i.i, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i, i64 noundef range(i64 1, 0) %.val9.i.i.i.i, i64 noundef 1) #32, !noalias !2602
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.q = icmp eq i64 %i.n, %.val1.i
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.r = shl nuw nsw i64 %.val1.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef 8) #32, !noalias !2600
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEB1d_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val3.i = load i64, ptr %i.s, align 8, !alias.scope !2600, !noundef !9 ; 2 uses
  %i.t = icmp eq i64 %.val3.i, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEBF_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtBW_3ffi5c_str7CStringEEECs8frGy5WneL6_4fish.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val2.i = load ptr, ptr %i.u, align 8, !alias.scope !2600, !nonnull !9, !noundef !9
  %i.v = shl nuw nsw i64 %.val3.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef 8) #32, !noalias !2600
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEBF_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEB1d_.exit

bb.g:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !noundef !9
  %i.ab = invoke { ptr, i64 } @_RNvCskr4qsHYS30i_15fish_widestring11wcs2zstring(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %bb.j unwind label %bb.i       ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit: ; preds = %bb.l, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.ah, %bb.k ], [ %i.ah, %bb.l ] ; 2 uses
  %i.ac = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !2603
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEB1d_.exit

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish21null_terminated_array25OwningNullTerminatedArrayEEB1d_.exit unwind label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
end_hunk_2
