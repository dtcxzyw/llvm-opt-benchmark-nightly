Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.04?download=true
inline.NumInlined: 2047
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RNvMs3_NtCs8frGy5WneL6_4fish10fd_monitorNtB5_19BackgroundFdMonitor3run:bb.a
bb.do:                                            ; preds = %bb.dn
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.ig = load ptr, ptr %i.s, align 8, !alias.scope !1206, !nonnull !8, !noundef !8
  %i.ih = atomicrmw sub ptr %i.ig, i64 1 release, align 8, !noalias !1207
  %i.ii = icmp eq i64 %i.ih, 1
  br i1 %i.ii, label %bb.dp, label %common.resume

bb.dp:                                            ; preds = %bb.do
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor10SharedDataE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #38
          to label %common.resume unwind label %bb.dr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.i: ; preds = %bb.dn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15fd_readable_set13FdReadableSetEBF_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.ij = load ptr, ptr %i.s, align 8, !alias.scope !1210, !nonnull !8, !noundef !8
  %i.ik = atomicrmw sub ptr %i.ij, i64 1 release, align 8, !noalias !1211
  %i.il = icmp eq i64 %i.ik, 1
  br i1 %i.il, label %bb.dq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish10fd_monitor19BackgroundFdMonitorEBF_.exit

bb.dq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor10SharedDataE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish10fd_monitor19BackgroundFdMonitorEBF_.exit

bb.dr:                                            ; preds = %bb.dp
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %.body73, %bb.do, %bb.dp
  %common.resume.op = phi { ptr, i32 } [ %i.if, %bb.do ], [ %i.if, %bb.dp ], [ %.pn24, %.body73 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish10fd_monitor19BackgroundFdMonitorEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10fd_monitor16FdEventSignallerEEB1d_.exit.i, %bb.dq
  ret void

bb.ds:                                            ; preds = %bb.bl, %.thread113, %.body71, %bb.cq, %.body, %.body73
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.dt:                                            ; preds = %bb.v
  invoke void @_RNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB4_13FdReadableSet3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i32 noundef %i.bl)
          to label %bb.du unwind label %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit

bb.du:                                            ; preds = %bb.dt
  %i.io = load i64, ptr %i.bi, align 8, !noundef !8
  %i.ip = load i64, ptr %i.aa, align 8, !alias.scope !1212, !noundef !8 ; 3 uses
  %i.iq = load i64, ptr %i.p, align 8, !range !21, !alias.scope !1212, !noundef !8
  %i.ir = icmp eq i64 %i.ip, %i.iq
  br i1 %i.ir, label %bb.dv, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdE8push_mutBJ_.exit

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #38
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdE8push_mutBJ_.exit unwind label %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdE8push_mutBJ_.exit: ; preds = %bb.dv, %bb.du
  %i.is = load ptr, ptr %i.z, align 8, !alias.scope !1212, !nonnull !8, !noundef !8
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.ip
  store i64 %i.io, ptr %i.it, align 8
  %i.iu = add i64 %i.ip, 1
  store i64 %i.iu, ptr %i.aa, align 8, !alias.scope !1212
  br label %.backedge306

.backedge306:                                     ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish10fd_monitor15FdMonitorItemIdE8push_mutBJ_.exit, %bb.v
  br label %bb.t

.thread113:                                       ; preds = %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %bb.cq, %bb.bl, %bb.de, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i87, %bb.bb
  %.pn107 = phi { ptr, i32 } [ %i.hv, %bb.de ], [ %i.ed, %bb.bl ], [ %i.df, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i87 ], [ %i.df, %bb.bb ], [ %i.ge, %bb.cq ], [ %lpad.loopexit132, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit138, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp304, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0.0106 = phi ptr [ %i.cu, %bb.de ], [ %i.cu, %bb.bl ], [ %i.cu, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i87 ], [ %i.cu, %bb.bb ], [ %i.cu, %bb.cq ], [ %i.bb, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0.1.ph.ph.ph.ph.ph, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.cu, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.14.0105 = phi i8 [ %i.cv, %bb.de ], [ %i.cv, %bb.bl ], [ %i.cv, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i87 ], [ %i.cv, %bb.bb ], [ %i.cv, %bb.cq ], [ %i.bc, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.14.1.ph.ph.ph.ph.ph, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.cv, %.thread124.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish10fd_monitor16LockedSharedDataEEB1A_(ptr %.sroa.0.0106, i8 %.sroa.14.0105) #34
          to label %.body unwind label %bb.ds
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1l_15CompletionEntryE12insert_entryB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4.i = alloca [56 x i8], align 8 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.426.i = alloca [56 x i8], align 8        ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [96 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.718.i = alloca [56 x i8], align 8        ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.7.i = alloca [56 x i8], align 8          ; 5 uses
  %.sroa.7244.i = alloca [56 x i8], align 8       ; 9 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !noundef !8 ; 14 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1r_15CompletionEntryEE13new_uninit_inB1t_()
          to label %bb.c unwind label %bb.ch      ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 704
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 714 ; 3 uses
  store i16 0, ptr %i.w, align 2
  store ptr %i.u, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.y = load i16, ptr %i.w, align 2, !noalias !1319, !noundef !8 ; 3 uses
  %i.z = icmp ult i16 %i.y, 11
  br i1 %i.z, label %bb.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #37
          to label %bb.f unwind label %bb.e, !noalias !1319

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o) #34
          to label %bb.h unwind label %bb.g, !noalias !1320

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1321
  unreachable

bb.h:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p) #34
          to label %.critedge9 unwind label %bb.g, !noalias !1321

bb.i:                                             ; preds = %bb.c
  %i.ac = zext nneg i16 %i.y to i64               ; 3 uses
  %i.ad = add nuw nsw i16 %i.y, 1
  store i16 %i.ad, ptr %i.w, align 2, !noalias !1319
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1F_15CompletionEntryNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB40_11VacantEntryB1D_B2v_E12insert_entry0EB1H_.exit

_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1F_15CompletionEntryNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB40_11VacantEntryB1D_B2v_E12insert_entry0EB1H_.exit: ; preds = %bb.ag, %.loopexit46.i, %bb.cf, %bb.i
  %i.ah = phi ptr [ %i.t, %bb.i ], [ %.val11, %bb.cf ], [ %.val11, %.loopexit46.i ], [ %.val11, %bb.ag ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %i.ac, %bb.i ], [ %.sroa.510.0.i.i, %bb.cf ], [ %.sroa.510.0.i.i, %.loopexit46.i ], [ %.sink.i36.i, %bb.ag ]
  %.sroa.7.0 = phi i64 [ 0, %bb.i ], [ %spec.select.i.i, %bb.cf ], [ %spec.select.i.i, %.loopexit46.i ], [ %.sink50.i35.i, %bb.ag ]
  %.sroa.0.0 = phi ptr [ %i.u, %bb.i ], [ %spec.select32.i.i, %bb.cf ], [ %spec.select32.i.i, %.loopexit46.i ], [ %.sink51.i34.i, %bb.ag ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !8
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.al, align 8
  ret void

bb.j:                                             ; preds = %bb.a
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.416.0.copyload = load i64, ptr %.sroa.416.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val11 = load ptr, ptr %i.am, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.426.i)
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 714 ; 4 uses
  %i.ao = load i16, ptr %i.an, align 2, !noalias !1323, !noundef !8 ; 2 uses
  %i.ap = icmp ugt i16 %i.ao, 10
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = icmp ult i64 %.sroa.6.0.copyload, 5
  br i1 %i.aq, label %bb.r, label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ar = zext nneg i16 %i.ao to i64              ; 2 uses
  %3 = add nuw nsw i64 %i.ar, 1                   ; 2 uses
  %i.as = add i64 %.sroa.6.0.copyload, 1          ; 3 uses
  %.not.i.i.i = icmp ugt i64 %3, %i.as
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.6.0.copyload ; 3 uses
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  br label %.thread.i

bb.n:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.as
  %i.av = sub nsw i64 %i.ar, %.sroa.6.0.copyload
  %i.aw = shl nuw nsw i64 %i.av, 5                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.at, i64 %i.aw, i1 false), !alias.scope !1325, !noalias !1326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %.sroa.6.0.copyload
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.ay, i64 %i.aw, i1 false), !alias.scope !1327, !noalias !1326
  br label %.thread.i

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.6.0.copyload, label %bb.p [
    i64 5, label %bb.r
    i64 6, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ba = add i64 %.sroa.6.0.copyload, -7
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.k
  %.sroa.09.0.i.i = phi i1 [ true, %bb.q ], [ true, %bb.p ], [ false, %bb.k ], [ false, %bb.o ] ; 2 uses
  %.sroa.510.0.i.i = phi i64 [ 0, %bb.q ], [ %i.ba, %bb.p ], [ %.sroa.6.0.copyload, %bb.k ], [ %.sroa.6.0.copyload, %bb.o ] ; 9 uses
  %.sroa.013.0.i.i = phi i64 [ 5, %bb.q ], [ 6, %bb.p ], [ 4, %bb.k ], [ %.sroa.6.0.copyload, %bb.o ] ; 5 uses
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1r_15CompletionEntryEE13new_uninit_inB1t_()
          to label %.noexc.i.i unwind label %bb.x, !noalias !1323 ; 8 uses

.noexc.i.i:                                       ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 704
  store ptr null, ptr %i.bc, align 8, !noalias !1328
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 714 ; 2 uses
  store i16 0, ptr %i.bd, align 2, !noalias !1328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.be = load i16, ptr %i.an, align 2, !noalias !1330, !noundef !8
  %i.bf = zext i16 %i.be to i64
  %i.bg = xor i64 %.sroa.013.0.i.i, -1
  %i.bh = add nsw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = trunc i64 %i.bh to i16
  store i16 %i.bi, ptr %i.bd, align 2, !alias.scope !1329, !noalias !1328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1330
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.013.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !noalias !1330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1330
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 352 ; 2 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %.sroa.013.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !noalias !1330
  %i.bm = icmp ult i64 %i.bh, 12
  br i1 %i.bm, label %bb.y, label %bb.s, !prof !28

bb.s:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #37
          to label %bb.u unwind label %bb.t, !noalias !1330

bb.t:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #34
          to label %bb.w unwind label %bb.v, !noalias !1330

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1330
  unreachable

bb.w:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #34
          to label %.thread.i.i.i unwind label %bb.v, !noalias !1330

.thread.i.i.i:                                    ; preds = %bb.w
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef 720, i64 noundef 8) #36, !noalias !1328
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %.noexc.i.i
  %i.bq = add nuw nsw i64 %.sroa.013.0.i.i, 1     ; 2 uses
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.bq
  %i.bs = shl nuw nsw i64 %i.bh, 5                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(720) %i.bb, ptr nonnull readonly align 8 %i.br, i64 %i.bs, i1 false), !alias.scope !1331, !noalias !1332
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull readonly align 8 %i.bt, i64 %i.bs, i1 false), !alias.scope !1333, !noalias !1332
  %i.bv = trunc nuw nsw i64 %.sroa.013.0.i.i to i16
  store i16 %i.bv, ptr %i.an, align 2, !noalias !1330
  %.sroa.025.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !1323 ; 3 uses
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.426.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.426.0..sroa_idx.i, i64 24, i1 false), !noalias !1323
  %.sroa.426.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.426.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.426.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !1323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1330
  %spec.select.i.i = select i1 %.sroa.09.0.i.i, i64 0, i64 %.sroa.416.0.copyload ; 3 uses
  %spec.select32.i.i = select i1 %.sroa.09.0.i.i, ptr %i.bb, ptr %i.r ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %spec.select32.i.i, i64 714 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !1334, !noundef !8 ; 2 uses
  %i.by = zext i16 %i.bx to i64                   ; 2 uses
  %4 = add i16 %i.bx, 1
  %.not.i16.not.i.i = icmp ult i64 %.sroa.510.0.i.i, %i.by
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i.i, i64 %.sroa.510.0.i.i ; 3 uses
  br i1 %.not.i16.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.ca = add nuw nsw i64 %.sroa.510.0.i.i, 1     ; 2 uses
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i.i, i64 %i.ca
  %i.cc = sub nuw nsw i64 %i.by, %.sroa.510.0.i.i
  %i.cd = shl nuw nsw i64 %i.cc, 5                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %i.bz, i64 %i.cd, i1 false), !alias.scope !1336, !noalias !1334
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select32.i.i, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %.sroa.510.0.i.i
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr nonnull align 8 %i.cf, i64 %i.cd, i1 false), !alias.scope !1337, !noalias !1334
  br label %bb.ae

bb.ab:                                            ; preds = %bb.ad, %bb.ac
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1338
  unreachable

.thread.i:                                        ; preds = %bb.n, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 352
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %.sroa.6.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !1339, !noalias !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %5 = trunc nuw nsw i64 %3 to i16
  store i16 %5, ptr %i.an, align 2, !noalias !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1322
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x, %.thread.i.i.i
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.bn, %.thread.i.i.i ], [ %i.bp, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #34
          to label %bb.ad unwind label %bb.ab, !noalias !1340

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n) #34
          to label %.critedge9 unwind label %bb.ab, !noalias !1338

bb.ae:                                            ; preds = %bb.aa, %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %spec.select32.i.i, i64 352
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %.sroa.510.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !1341, !noalias !1334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %4, ptr %i.bw, align 2, !noalias !1334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.426.i, i64 56, i1 false), !noalias !1342
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1322
  %.not.i = icmp eq i64 %.sroa.025.0.copyload.i, -1
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7244.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, i64 56, i1 false), !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 704
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !1343, !noundef !8 ; 2 uses
  %.not.i145.i = icmp eq ptr %i.cn, null
  br i1 %.not.i145.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cp = icmp eq i64 %.sroa.416.0.copyload, 0
  %.sroa.7244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7244.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7244.i, i64 24 ; 5 uses
  br label %bb.aw

bb.ag:                                            ; preds = %bb.ae, %.thread.i
  %.sink.i36.i = phi i64 [ %.sroa.6.0.copyload, %.thread.i ], [ %.sroa.510.0.i.i, %bb.ae ]
  %.sink50.i35.i = phi i64 [ %.sroa.416.0.copyload, %.thread.i ], [ %spec.select.i.i, %bb.ae ]
  %.sink51.i34.i = phi ptr [ %i.r, %.thread.i ], [ %spec.select32.i.i, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvMsN_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1F_15CompletionEntryNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB40_11VacantEntryB1D_B2v_E12insert_entry0EB1H_.exit

._crit_edge.i:                                    ; preds = %bb.ce, %bb.af
  %.sroa.0.0.i = phi i64 [ %.sroa.025.0.copyload.i, %bb.af ], [ %.sroa.0.i.sroa.0.0.copyload.i, %bb.ce ]
  %.lcssa137.i = phi i64 [ 0, %bb.af ], [ %i.dt, %bb.ce ] ; 2 uses
  %.lcssa129.i = phi ptr [ %i.bb, %bb.af ], [ %i.gh, %bb.ce ] ; 4 uses
  %.lcssa121.i = phi i64 [ %.sroa.416.0.copyload, %bb.af ], [ %i.dt, %bb.ce ]
  %.lcssa.i = phi ptr [ %i.r, %bb.af ], [ %i.do, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1322
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.02.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7244.i, i64 56, i1 false), !noalias !1322
  store i64 %.sroa.0.0.i, ptr %i.j, align 8, !noalias !1322
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %.lcssa.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1322
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 %.lcssa121.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !1322
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store ptr %.lcssa129.i, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !1322
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 %.lcssa137.i, ptr %.sroa.76.0..sroa_idx.i, align 8, !noalias !1322
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.cq = load ptr, ptr %.val11, align 8, !noalias !1344, !noundef !8 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val11, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.cq, null
  br i1 %.not.i23.i, label %bb.ah, label %bb.aj, !prof !13

bb.ah:                                            ; preds = %._crit_edge.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
          to label %bb.ai unwind label %bb.at, !noalias !1344

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !1345, !noalias !1344, !noundef !8 ; 2 uses
  %i.ct = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1w_15CompletionEntryEE13new_uninit_inB1y_()
          to label %.noexc.i.i.i unwind label %bb.an, !noalias !1346 ; 9 uses

.noexc.i.i.i:                                     ; preds = %bb.aj
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 704
  store ptr null, ptr %i.cu, align 8, !noalias !1346
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 714 ; 3 uses
  store i16 0, ptr %i.cv, align 2, !noalias !1346
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 720 ; 2 uses
  store ptr %i.cq, ptr %i.cw, align 8, !noalias !1346
  %i.cx = add i64 %i.cs, 1                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.ao, !prof !13

bb.ak:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #37
          to label %bb.al unwind label %bb.am, !noalias !1346

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ct, i64 noundef 816, i64 noundef 8) #36, !noalias !1346
  br label %.body.i.i.i

bb.an:                                            ; preds = %bb.aj
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.an, %bb.am
  tail call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %.noexc.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 704
  store ptr %i.ct, ptr %i.da, align 8, !noalias !1347
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 712
  store i16 0, ptr %i.db, align 8, !noalias !1348
  store ptr %i.ct, ptr %.val11, align 8, !alias.scope !1345, !noalias !1344
  store i64 %i.cx, ptr %i.cr, align 8, !alias.scope !1345, !noalias !1344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 32, i1 false), !noalias !1322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1344
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.7244.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 32, i1 false), !noalias !1322
  %i.dd = icmp eq i64 %.lcssa137.i, %i.cs
  br i1 %i.dd, label %bb.ap, label %.invoke.i.i.i, !prof !14

.invoke.i.i.i:                                    ; preds = %bb.ap, %bb.ao
  %i.de = phi ptr [ @308, %bb.ao ], [ @306, %bb.ap ]
  %i.df = phi i64 [ 48, %bb.ao ], [ 32, %bb.ap ]
  %i.dg = phi ptr [ @309, %bb.ao ], [ @310, %bb.ap ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg) #37
          to label %.cont.i.i.i unwind label %bb.aq, !noalias !1349

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.dh = load i16, ptr %i.cv, align 2, !noalias !1349, !noundef !8 ; 3 uses
  %i.di = icmp ult i16 %i.dh, 11
  br i1 %i.di, label %bb.cf, label %.invoke.i.i.i, !prof !14

bb.aq:                                            ; preds = %.invoke.i.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #34
          to label %bb.as unwind label %bb.ar, !noalias !1350

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1344
  unreachable

bb.as:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #34
          to label %.critedge9 unwind label %bb.ar, !noalias !1344

bb.at:                                            ; preds = %bb.ah
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.j) #34
          to label %bb.av unwind label %bb.au, !noalias !1322

bb.au:                                            ; preds = %bb.av, %bb.at
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1322
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dn) #34
          to label %.critedge9 unwind label %bb.au, !noalias !1322

bb.aw:                                            ; preds = %bb.ce, %.lr.ph.i
  %.sroa.0.1.i = phi i64 [ %.sroa.025.0.copyload.i, %.lr.ph.i ], [ %.sroa.0.i.sroa.0.0.copyload.i, %bb.ce ]
  %i.do = phi ptr [ %i.cn, %.lr.ph.i ], [ %i.ld, %bb.ce ] ; 20 uses
  %i.dp = phi ptr [ %i.r, %.lr.ph.i ], [ %i.do, %bb.ce ]
  %i.dq = phi i64 [ %.sroa.416.0.copyload, %.lr.ph.i ], [ %i.dt, %bb.ce ]
  %i.dr = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.gh, %bb.ce ] ; 2 uses
  %i.ds = phi i1 [ %i.cp, %.lr.ph.i ], [ true, %bb.ce ]
  %i.dt = add i64 %i.dq, 1                        ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 712
  %i.dv = load i16, ptr %i.du, align 8, !noalias !1343 ; 4 uses
  %i.dw = zext i16 %i.dv to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1322
  store i64 %.sroa.0.1.i, ptr %i.l, align 8, !noalias !1322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7244.i, i64 24, i1 false), !noalias !1322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.32..sroa_idx.i, i64 32, i1 false), !noalias !1322
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i)
  br i1 %i.ds, label %bb.ay, label %bb.ax, !prof !14

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #37
          to label %bb.az unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1351

bb.ay:                                            ; preds = %bb.aw
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 714 ; 4 uses
  %i.dy = load i16, ptr %i.dx, align 2, !noalias !1351, !noundef !8 ; 5 uses
  %i.dz = icmp ult i16 %i.dy, 11
  br i1 %i.dz, label %bb.bb, label %bb.ba

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %bb.ax
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.ea = icmp ult i16 %i.dv, 5
  br i1 %i.ea, label %bb.bi, label %bb.bf

bb.bb:                                            ; preds = %bb.ay
  %i.eb = zext nneg i16 %i.dy to i64              ; 4 uses
  %i.ec = add nuw nsw i16 %i.dy, 1
  %i.ed = add nuw nsw i64 %i.dw, 1                ; 7 uses
  %6 = icmp ugt i16 %i.dy, %i.dv
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.dw ; 3 uses
  br i1 %6, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !1352
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 352
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.32..sroa_idx.i, i64 32, i1 false), !noalias !1322
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.ed
  %i.ei = sub nuw nsw i64 %i.eb, %i.dw            ; 2 uses
  %i.ej = shl nuw nsw i64 %i.ei, 5                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 8 %i.ee, i64 %i.ej, i1 false), !alias.scope !1353, !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !1352
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 352 ; 2 uses
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.dw ; 2 uses
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.ed
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr nonnull align 8 %i.el, i64 %i.ej, i1 false), !alias.scope !1355, !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.32..sroa_idx.i, i64 32, i1 false), !noalias !1322
  %i.en = getelementptr inbounds nuw i8, ptr %i.do, i64 720 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ed
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.dw
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = shl nuw nsw i64 %i.ei, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr nonnull align 8 %i.eo, i64 %i.er, i1 false), !alias.scope !1356, !noalias !1354
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 720 ; 6 uses
  %i.et = add nuw nsw i64 %i.eb, 2                ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ed
  store ptr %i.dr, ptr %i.eu, align 8, !alias.scope !1356, !noalias !1354
  store i16 %i.ec, ptr %i.dx, align 2, !noalias !1354
  %i.ev = icmp samesign ult i64 %i.ed, %i.et
  br i1 %i.ev, label %.lr.ph.i.i.i.i.preheader, label %.thread41.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.be
  %i.ew = add nuw nsw i64 %i.eb, 1
  %i.ex = sub nsw i64 %i.ew, %i.dw
  %i.ey = sub nsw i64 %i.eb, %i.dw
  %xtraiter394 = and i64 %i.ex, 3                 ; 2 uses
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.prol ], [ %i.ed, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %prol.iter396 = phi i64 [ %prol.iter396.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ez = add nuw nsw i64 %.sroa.0.06.i.i.i.i.prol, 1 ; 2 uses
  %i.fa = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.sroa.0.06.i.i.i.i.prol
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !1354, !nonnull !8, !noundef !8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 704
  store ptr %i.do, ptr %i.fd, align 8, !noalias !1354
  %i.fe = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.prol to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 712
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !1354
  %prol.iter396.next = add i64 %prol.iter396, 1   ; 2 uses
  %prol.iter396.cmp.not = icmp eq i64 %prol.iter396.next, %xtraiter394
  br i1 %prol.iter396.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1287

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.preheader ], [ %i.ez, %.lr.ph.i.i.i.i.prol ]
  %i.fg = icmp ult i64 %i.ey, 3
  br i1 %i.fg, label %.thread41.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.fz, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 1  ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.sroa.0.06.i.i.i.i
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !1354, !nonnull !8, !noundef !8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 704
  store ptr %i.do, ptr %i.fk, align 8, !noalias !1354
  %i.fl = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 712
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !1354
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 2  ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !1354, !nonnull !8, !noundef !8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 704
  store ptr %i.do, ptr %i.fq, align 8, !noalias !1354
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 712
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !1354
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 3  ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.fn
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !1354, !nonnull !8, !noundef !8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 704
  store ptr %i.do, ptr %i.fw, align 8, !noalias !1354
  %i.fx = trunc nuw nsw i64 %i.fn to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 712
  store i16 %i.fx, ptr %i.fy, align 8, !noalias !1354
  %i.fz = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 4  ; 2 uses
  %i.ga = icmp ult i64 %.sroa.0.06.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ft
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !1354, !nonnull !8, !noundef !8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 704
  store ptr %i.do, ptr %i.gd, align 8, !noalias !1354
  %i.ge = trunc nuw nsw i64 %i.ft to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 712
  store i16 %i.ge, ptr %i.gf, align 8, !noalias !1354
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.fz, %i.et
  br i1 %exitcond.not.i.i.i.i.3, label %.thread41.i, label %.lr.ph.i.i.i.i

bb.bf:                                            ; preds = %bb.ba
  switch i16 %i.dv, label %bb.bg [
    i16 5, label %bb.bi
    i16 6, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.gg = add nsw i64 %i.dw, -7
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.ba
  %.sroa.06.0.i.i = phi i64 [ 5, %bb.bh ], [ 6, %bb.bg ], [ 4, %bb.ba ], [ 5, %bb.bf ] ; 7 uses
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.bh ], [ %i.gg, %bb.bg ], [ %i.dw, %bb.ba ], [ 5, %bb.bf ] ; 9 uses
  %.sroa.03.0.i.i = phi i1 [ true, %bb.bh ], [ true, %bb.bg ], [ false, %bb.ba ], [ false, %bb.bf ]
  %i.gh = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1w_15CompletionEntryEE13new_uninit_inB1y_()
          to label %.noexc.i29.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1351 ; 14 uses

.noexc.i29.i:                                     ; preds = %bb.bi
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 704
  store ptr null, ptr %i.gi, align 8, !noalias !1357
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 714 ; 3 uses
  store i16 0, ptr %i.gj, align 2, !noalias !1357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.gk = load i16, ptr %i.dx, align 2, !noalias !1359, !noundef !8
  %i.gl = zext i16 %i.gk to i64
  %i.gm = xor i64 %.sroa.06.0.i.i, -1
  %i.gn = add nsw i64 %i.gl, %i.gm                ; 4 uses
  %i.go = trunc i64 %i.gn to i16
  store i16 %i.go, ptr %i.gj, align 2, !alias.scope !1358, !noalias !1357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1359
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %.sroa.06.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i64 32, i1 false), !noalias !1359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1359
  %i.gq = getelementptr inbounds nuw i8, ptr %i.do, i64 352 ; 2 uses
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %i.gq, i64 %.sroa.06.0.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gr, i64 32, i1 false), !noalias !1359
  %i.gs = icmp ult i64 %i.gn, 12
  br i1 %i.gs, label %bb.bo, label %bb.bj, !prof !28

bb.bj:                                            ; preds = %.noexc.i29.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gn, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #37
          to label %bb.bl unwind label %bb.bk, !noalias !1359

bb.bk:                                            ; preds = %bb.bj
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete15CompletionEntryEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #34
          to label %bb.bn unwind label %bb.bm, !noalias !1359

bb.bl:                                            ; preds = %bb.bj
  unreachable

bb.bm:                                            ; preds = %bb.bn, %bb.bk
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !1359
  unreachable

bb.bn:                                            ; preds = %bb.bk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #34
          to label %bb.bx unwind label %bb.bm, !noalias !1359

bb.bo:                                            ; preds = %.noexc.i29.i
  %i.gv = add nuw nsw i64 %.sroa.06.0.i.i, 1      ; 2 uses
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %i.gv
  %i.gx = shl nuw nsw i64 %i.gn, 5                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(720) %i.gh, ptr nonnull readonly align 8 %i.gw, i64 %i.gx, i1 false), !alias.scope !1360, !noalias !1361
  %i.gy = getelementptr inbounds nuw [32 x i8], ptr %i.gq, i64 %i.gv
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gh, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gz, ptr nonnull readonly align 8 %i.gy, i64 %i.gx, i1 false), !alias.scope !1362, !noalias !1361
  %i.ha = trunc nuw nsw i64 %.sroa.06.0.i.i to i16
  store i16 %i.ha, ptr %i.dx, align 2, !noalias !1359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1359
  %i.hb = load i16, ptr %i.gj, align 2, !noalias !1357, !noundef !8 ; 3 uses
  %i.hc = zext i16 %i.hb to i64
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 5 uses
  %i.he = icmp ult i16 %i.hb, 12
  br i1 %i.he, label %bb.bp, label %bb.br, !prof !28

bb.bp:                                            ; preds = %bb.bo
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gh, i64 720 ; 6 uses
  %i.hg = zext i16 %i.dy to i64
  %i.hh = sub nuw nsw i64 %i.hg, %.sroa.06.0.i.i
  %i.hi = icmp eq i64 %i.hh, %i.hd
  br i1 %i.hi, label %bb.bt, label %bb.bq, !prof !14

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #33
end_hunk_0
begin_hunk_1_@_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE6insertCs8frGy5WneL6_4fish:bb.a
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !3192 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !3192 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.l, %bb.b ], [ %i.ak, %bb.g ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.aj, %bb.g ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 274
  %i.q = load i16, ptr %i.p, align 2, !noalias !3193, !noundef !8 ; 2 uses
  %i.r = zext i16 %i.q to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.r, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.t = icmp eq i16 %i.q, 0
  br i1 %i.t, label %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %.lr.ph

bb.d:                                             ; preds = %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i
  %i.u = icmp eq ptr %i.v, %i.s
  br i1 %i.u, label %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.0.01.i.i.i323 = phi ptr [ %i.v, %bb.d ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.0.i.i.i322 = phi i64 [ %i.w, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i323, i64 24 ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.8.0.i.i.i322, 1
  %i.x = getelementptr i8, ptr %.sroa.0.01.i.i.i323, i64 8
  %.val7.i.i.i = load ptr, ptr %i.x, align 8, !noalias !3193, !nonnull !8, !noundef !8
  %i.y = getelementptr i8, ptr %.sroa.0.01.i.i.i323, i64 16
  %.val8.i.i.i = load i64, ptr %i.y, align 8, !noalias !3193, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3197)
  %..i.i.i.i.i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %.val8.i.i.i, i64 range(i64 0, 2305843009213693952) %.val11.i) ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.z = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.z, %..i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.e, %.lr.ph
  %i.aa = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 2305843009213693952) %.val11.i, i64 range(i64 0, 2305843009213693952) %.val8.i.i.i)
  br label %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ab = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val15.i.i.i.i.i.i.i, i32 %.val16.i.i.i.i.i.i.i)
  br label %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph, %bb.e
  %.sroa.01.019.i.i.i.i.i.i.i = phi i64 [ %i.z, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.sroa.01.019.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val7.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i = load i32, ptr %i.ac, align 4, !alias.scope !3198, !noalias !3193, !noundef !8 ; 2 uses
  %.val16.i.i.i.i.i.i.i = load i32, ptr %i.ad, align 4, !alias.scope !3199, !noalias !3193, !noundef !8 ; 2 uses
  %i.ae = icmp eq i32 %.val15.i.i.i.i.i.i.i, %.val16.i.i.i.i.i.i.i
  br i1 %i.ae, label %bb.e, label %.loopexit.i.i.i.i.i.i.i

_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aa, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ab, %.loopexit.i.i.i.i.i.i.i ]
  switch i8 %.sroa.0.0.i.i.i.i.i.i.i, label %bb.f [
    i8 -1, label %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_ECs8frGy5WneL6_4fish.exit.i
    i8 1, label %bb.d
  ]

bb.f:                                             ; preds = %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i
  unreachable

_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i._crit_edge: ; preds = %bb.d, %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.r, %bb.c ], [ %i.r, %bb.d ], [ %.sroa.8.0.i.i.i322, %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i ] ; 3 uses
  %i.af = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.af, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE5entryCs8frGy5WneL6_4fish.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 280
  %i.ah = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.4.0.i.ph.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !3193, !nonnull !8, !noundef !8
  %i.ak = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload14 = load ptr, ptr %.sroa.7.0..sroa_idx13, align 8, !alias.scope !3200
  %.sroa.9.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload18 = load i64, ptr %.sroa.9.0..sroa_idx17, align 8, !alias.scope !3200
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE5entryCs8frGy5WneL6_4fish.exit

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_ECs8frGy5WneL6_4fish.exit.i: ; preds = %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE5entryCs8frGy5WneL6_4fish.exit.thread unwind label %bb.i, !noalias !3190

bb.i:                                             ; preds = %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_ECs8frGy5WneL6_4fish.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.j, !noalias !3190

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3190
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.ai, %bb.av, %bb.ax, %.loopexit.split-lp.i.loopexit.split-lp.i, %bb.cb, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.ke, %bb.cb ], [ %i.at, %bb.o ], [ %i.de, %bb.av ], [ %.pn.ph.i.i.i, %bb.ai ], [ %.pn.ph.i24.i.i, %.loopexit.split-lp.i.loopexit.split-lp.i ], [ %i.dg, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE5entryCs8frGy5WneL6_4fish.exit.thread: ; preds = %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_ECs8frGy5WneL6_4fish.exit.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3190
  br label %bb.cc

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE5entryCs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i._crit_edge, %bb.h
  %.sroa.17.0 = phi i64 [ undef, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i._crit_edge ] ; 11 uses
  %.sroa.13.0 = phi ptr [ null, %bb.h ], [ %.sroa.0.0.i.i, %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i._crit_edge ] ; 9 uses
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload18, %bb.h ], [ %.val11.i, %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i._crit_edge ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload14, %bb.h ], [ %.val.i, %_RNvXs34_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i._crit_edge ]
  %.sroa.0.0 = load i64, ptr %1, align 8, !alias.scope !3200 ; 2 uses
  %i.an = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.an, label %bb.cc, label %bb.k

bb.k:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE5entryCs8frGy5WneL6_4fish.exit
  %.sroa.10.0 = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.0.0, ptr %i.i, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.not.i4 = icmp eq ptr %.sroa.13.0, null
  br i1 %.not.i4, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ao = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs8frGy5WneL6_4fish()
          to label %bb.m unwind label %bb.cb, !noalias !3201 ; 4 uses

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.ao, align 8, !noalias !3201
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 274 ; 3 uses
  store i16 0, ptr %i.ap, align 2, !noalias !3201
  store ptr %i.ao, ptr %0, align 8, !noalias !3201
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aq, align 8, !noalias !3201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 24, i1 false), !noalias !3202
  %i.ar = load i16, ptr %i.ap, align 2, !noalias !3203, !noundef !8 ; 3 uses
  %i.as = icmp ult i16 %i.ar, 11
  br i1 %i.as, label %bb.r, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #37
          to label %bb.p unwind label %bb.o, !noalias !3203

bb.o:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #34
          to label %common.resume unwind label %bb.q, !noalias !3204

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3204
  unreachable

bb.r:                                             ; preds = %bb.m
  %i.av = zext nneg i16 %i.ar to i64
  %i.aw = add nuw nsw i16 %i.ar, 1
  store i16 %i.aw, ptr %i.ap, align 2, !noalias !3203
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 24, i1 false), !noalias !3202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3201
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB9_7set_val9SetValZSTE12insert_entryCs8frGy5WneL6_4fish.exit

bb.s:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 24, i1 false), !noalias !3202
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 274 ; 4 uses
  %i.ba = load i16, ptr %i.az, align 2, !noalias !3206, !noundef !8 ; 2 uses
  %i.bb = icmp ugt i16 %i.ba, 10
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bc = icmp ult i64 %.sroa.17.0, 5
  br i1 %i.bc, label %bb.z, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bd = zext nneg i16 %i.ba to i64              ; 2 uses
  %2 = add nuw nsw i64 %i.bd, 1                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 8 ; 3 uses
  %i.bf = add i64 %.sroa.17.0, 1                  ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %2, %i.bf
  br i1 %.not.i.i.i.i, label %bb.v, label %.thread.i.i

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.sroa.17.0
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bf
  %i.bi = sub nsw i64 %i.bd, %.sroa.17.0
  %i.bj = mul nuw nsw i64 %i.bi, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull align 8 %i.bg, i64 %i.bj, i1 false), !alias.scope !3207, !noalias !3208
  br label %.thread.i.i

bb.w:                                             ; preds = %bb.t
  switch i64 %.sroa.17.0, label %bb.x [
    i64 5, label %bb.z
    i64 6, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bk = add i64 %.sroa.17.0, -7
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.t
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.y ], [ true, %bb.x ], [ false, %bb.t ], [ false, %bb.w ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.y ], [ %i.bk, %bb.x ], [ %.sroa.17.0, %bb.t ], [ %.sroa.17.0, %bb.w ] ; 4 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.y ], [ 6, %bb.x ], [ 4, %bb.t ], [ %.sroa.17.0, %bb.w ] ; 3 uses
  %i.bl = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs8frGy5WneL6_4fish()
          to label %.noexc.i.i.i unwind label %bb.ae, !noalias !3206 ; 7 uses

.noexc.i.i.i:                                     ; preds = %bb.z
  store ptr null, ptr %i.bl, align 8, !noalias !3209
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 274 ; 2 uses
  store i16 0, ptr %i.bm, align 2, !noalias !3209
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3210)
  %i.bn = load i16, ptr %i.az, align 2, !noalias !3211, !noundef !8
  %i.bo = zext i16 %i.bn to i64
  %i.bp = xor i64 %.sroa.013.0.i.i.i, -1
  %i.bq = add nsw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = trunc i64 %i.bq to i16
  store i16 %i.br, ptr %i.bm, align 2, !alias.scope !3210, !noalias !3209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3211
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 8
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %.sroa.013.0.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !3211
  %i.bu = icmp ult i64 %i.bq, 12
  br i1 %i.bu, label %bb.af, label %bb.aa, !prof !28

bb.aa:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #37
          to label %bb.ac unwind label %bb.ab, !noalias !3211

bb.ab:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #34
          to label %.thread.i.i.i.i unwind label %bb.ad, !noalias !3211

bb.ac:                                            ; preds = %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3211
  unreachable

.thread.i.i.i.i:                                  ; preds = %bb.ab
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 280, i64 noundef 8) #36, !noalias !3209
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %.noexc.i.i.i
  %i.by = getelementptr i8, ptr %i.bt, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ca = mul nuw nsw i64 %i.bq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr nonnull readonly align 8 %i.by, i64 %i.ca, i1 false), !alias.scope !3212, !noalias !3213
  %i.cb = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.cb, ptr %i.az, align 2, !noalias !3211
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !3206 ; 3 uses
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !3206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3211
  %spec.select30.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.bl, ptr %.sroa.13.0 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %spec.select30.i.i.i, i64 274 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !noalias !3214, !noundef !8 ; 2 uses
  %i.ce = zext i16 %i.cd to i64                   ; 2 uses
  %3 = add i16 %i.cd, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select30.i.i.i, i64 8 ; 2 uses
  %.not.i16.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.ce
  br i1 %.not.i16.not.i.i.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.sroa.510.0.i.i.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = sub nuw nsw i64 %i.ce, %.sroa.510.0.i.i.i
  %i.cj = mul nuw nsw i64 %i.ci, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr nonnull align 8 %i.cg, i64 %i.cj, i1 false), !alias.scope !3215, !noalias !3214
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ai
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3216
  unreachable

.thread.i.i:                                      ; preds = %bb.v, %bb.u
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %.sroa.17.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 24, i1 false), !noalias !3202
  %4 = trunc nuw nsw i64 %2 to i16
  store i16 %4, ptr %i.az, align 2, !noalias !3208
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3205
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.bv, %.thread.i.i.i.i ], [ %i.bx, %bb.ae ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #34
          to label %common.resume unwind label %bb.ah, !noalias !3216

bb.aj:                                            ; preds = %bb.ag, %bb.af
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %.sroa.510.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 24, i1 false), !noalias !3202
  store i16 %3, ptr %i.cc, align 2, !noalias !3214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.i.i, i64 16, i1 false), !noalias !3217
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3205
  %.not.i.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7241.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7241.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !noalias !3205
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.cn = load ptr, ptr %.sroa.13.0, align 8, !noalias !3218, !noundef !8 ; 2 uses
  %.not.i142.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i142.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ak
  %.sroa.0.i23.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7241.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.az

bb.al:                                            ; preds = %bb.aj, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB9_7set_val9SetValZSTE12insert_entryCs8frGy5WneL6_4fish.exit

._crit_edge.i.i:                                  ; preds = %bb.by, %bb.ak
  %.sroa.0.0.i.i7 = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.ak ], [ %.sroa.0.i23.sroa.0.0.copyload.i.i, %bb.by ]
  %.lcssa134.i.i = phi i64 [ 0, %bb.ak ], [ %i.dm, %bb.by ] ; 3 uses
  %.lcssa126.i.i = phi ptr [ %i.bl, %bb.ak ], [ %i.fr, %bb.by ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %.sroa.13.0, %bb.ak ], [ %i.di, %bb.by ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3205
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7241.i.i, i64 16, i1 false), !noalias !3205
  store i64 %.sroa.0.0.i.i7, ptr %i.e, align 8, !noalias !3205
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3205
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.lcssa134.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !3205
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.lcssa126.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !3205
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %.lcssa134.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !3205
  %i.co = load ptr, ptr %0, align 8, !noalias !3219, !noundef !8 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i19.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i19.i.i, label %bb.am, label %bb.ao, !prof !13

bb.am:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
          to label %bb.an unwind label %bb.ax, !noalias !3219

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3220)
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !3220, !noalias !3219, !noundef !8 ; 2 uses
  %i.cr = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs8frGy5WneL6_4fish()
          to label %.noexc.i.i.i.i unwind label %bb.as, !noalias !3221 ; 8 uses

.noexc.i.i.i.i:                                   ; preds = %bb.ao
  store ptr null, ptr %i.cr, align 8, !noalias !3221
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 274 ; 3 uses
  store i16 0, ptr %i.cs, align 2, !noalias !3221
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 280 ; 2 uses
  store ptr %i.co, ptr %i.ct, align 8, !noalias !3221
  %i.cu = add i64 %i.cq, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i8 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.i8, label %bb.ap, label %bb.at, !prof !13

bb.ap:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #37
          to label %bb.aq unwind label %bb.ar, !noalias !3221

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cr, i64 noundef 376, i64 noundef 8) #36, !noalias !3221
  br label %.body.i.i.i.i

bb.as:                                            ; preds = %bb.ao
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.as, %bb.ar
  tail call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %.noexc.i.i.i.i
  store ptr %i.cr, ptr %i.co, align 8, !noalias !3222
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  store i16 0, ptr %i.cx, align 8, !noalias !3223
  store ptr %i.cr, ptr %0, align 8, !alias.scope !3220, !noalias !3219
  store i64 %i.cu, ptr %i.cp, align 8, !alias.scope !3220, !noalias !3219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 24, i1 false), !noalias !3205
  %i.cy = icmp eq i64 %.lcssa134.i.i, %i.cq
  br i1 %i.cy, label %bb.au, label %.invoke.i.i.i.i, !prof !14

.invoke.i.i.i.i:                                  ; preds = %bb.au, %bb.at
  %i.cz = phi ptr [ @308, %bb.at ], [ @306, %bb.au ]
  %i.da = phi i64 [ 48, %bb.at ], [ 32, %bb.au ]
  %i.db = phi ptr [ @309, %bb.at ], [ @310, %bb.au ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db) #37
          to label %.cont.i.i.i.i unwind label %bb.av, !noalias !3224

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.dc = load i16, ptr %i.cs, align 2, !noalias !3224, !noundef !8 ; 3 uses
  %i.dd = icmp ult i16 %i.dc, 11
  br i1 %i.dd, label %bb.bz, label %.invoke.i.i.i.i, !prof !14

bb.av:                                            ; preds = %.invoke.i.i.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %common.resume unwind label %bb.aw, !noalias !3219

bb.aw:                                            ; preds = %bb.av
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3219
  unreachable

bb.ax:                                            ; preds = %bb.am
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e) #34
          to label %common.resume unwind label %bb.ay, !noalias !3205

bb.ay:                                            ; preds = %bb.ax
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3205
  unreachable

bb.az:                                            ; preds = %.lr.ph.i.i, %bb.by
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.0.i23.sroa.0.0.copyload.i.i, %bb.by ]
  %i.di = phi ptr [ %i.cn, %.lr.ph.i.i ], [ %i.ju, %bb.by ] ; 15 uses
  %i.dj = phi ptr [ %.sroa.13.0, %.lr.ph.i.i ], [ %i.di, %bb.by ]
  %i.dk = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dm, %bb.by ]
  %i.dl = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %i.fr, %bb.by ] ; 2 uses
  %i.dm = add i64 %i.dk, 1                        ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 272
  %i.do = load i16, ptr %i.dn, align 8, !noalias !3218 ; 4 uses
  %i.dp = zext i16 %i.do to i64                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.717.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3205
  store i64 %.sroa.0.1.i.i, ptr %i.f, align 8, !noalias !3205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7241.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7241.i.i, i64 16, i1 false), !noalias !3205
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.sroa.4.i.i)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 274 ; 4 uses
  %i.dr = load i16, ptr %i.dq, align 2, !noalias !3225, !noundef !8 ; 5 uses
  %i.ds = icmp ult i16 %i.dr, 11
  br i1 %i.ds, label %bb.bb, label %bb.ba

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.bg
  %lpad.loopexit.split-lp88.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp.i

bb.ba:                                            ; preds = %bb.az
  %i.dt = icmp ult i16 %i.do, 5
  br i1 %i.dt, label %bb.bg, label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %i.du = zext nneg i16 %i.dr to i64              ; 4 uses
  %i.dv = add nuw nsw i16 %i.dr, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dx = add nuw nsw i64 %i.dp, 1                ; 6 uses
  %5 = icmp ugt i16 %i.dr, %i.do
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dp ; 3 uses
  br i1 %5, label %bb.bc, label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3226
  br label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB4_7set_val9SetValZSTEEECs8frGy5WneL6_4fish.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dx
  %i.ea = sub nuw nsw i64 %i.du, %i.dp            ; 2 uses
  %i.eb = mul nuw nsw i64 %i.ea, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr nonnull align 8 %i.dy, i64 %i.eb, i1 false), !alias.scope !3227, !noalias !3228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3226
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 280 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dx
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dp
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = shl nuw nsw i64 %i.ea, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr nonnull align 8 %i.ed, i64 %i.eg, i1 false), !alias.scope !3229, !noalias !3228
  br label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB4_7set_val9SetValZSTEEECs8frGy5WneL6_4fish.exit.i.i.i.i

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB4_7set_val9SetValZSTEEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.bc, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 280 ; 6 uses
  %i.ei = add nuw nsw i64 %i.du, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dx
  store ptr %i.dl, ptr %i.ej, align 8, !alias.scope !3229, !noalias !3228
  store i16 %i.dv, ptr %i.dq, align 2, !noalias !3228
  %i.ek = icmp samesign ult i64 %i.dx, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i.preheader, label %.thread38.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB4_7set_val9SetValZSTEEECs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.el = add nuw nsw i64 %i.du, 1
  %i.em = sub nsw i64 %i.el, %i.dp
  %i.en = sub nsw i64 %i.du, %i.dp
  %xtraiter395 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.prol ], [ %i.dx, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter397 = phi i64 [ %prol.iter397.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.eo = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ep = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !3228, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.di, ptr %i.er, align 8, !noalias !3228
  %i.es = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 272
  store i16 %i.es, ptr %i.et, align 8, !noalias !3228
  %prol.iter397.next = add i64 %prol.iter397, 1   ; 2 uses
  %prol.iter397.cmp.not = icmp eq i64 %prol.iter397.next, %xtraiter395
  br i1 %prol.iter397.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3164

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eo, %.lr.ph.i.i.i.i.i.prol ]
  %i.eu = icmp ult i64 %i.en, 3
  br i1 %i.eu, label %.thread38.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ev = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.sroa.0.06.i.i.i.i.i
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !3228, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.di, ptr %i.ex, align 8, !noalias !3228
  %i.ey = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 272
  store i16 %i.ey, ptr %i.ez, align 8, !noalias !3228
  %i.fa = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ev
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !3228, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.di, ptr %i.fc, align 8, !noalias !3228
  %i.fd = trunc nuw nsw i64 %i.ev to i16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 272
  store i16 %i.fd, ptr %i.fe, align 8, !noalias !3228
  %i.ff = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.fa
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !3228, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.di, ptr %i.fh, align 8, !noalias !3228
  %i.fi = trunc nuw nsw i64 %i.fa to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 272
  store i16 %i.fi, ptr %i.fj, align 8, !noalias !3228
  %i.fk = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.fl = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ff
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !3228, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.di, ptr %i.fn, align 8, !noalias !3228
  %i.fo = trunc nuw nsw i64 %i.ff to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 272
  store i16 %i.fo, ptr %i.fp, align 8, !noalias !3228
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.fk, %i.ei
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread38.i.i, label %.lr.ph.i.i.i.i.i

bb.bd:                                            ; preds = %bb.ba
  switch i16 %i.do, label %bb.be [
    i16 5, label %bb.bg
    i16 6, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %i.fq = add nsw i64 %i.dp, -7
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.ba
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bf ], [ 6, %bb.be ], [ 4, %bb.ba ], [ 5, %bb.bd ] ; 5 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bf ], [ %i.fq, %bb.be ], [ %i.dp, %bb.ba ], [ 5, %bb.bd ] ; 7 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bf ], [ true, %bb.be ], [ false, %bb.ba ], [ false, %bb.bd ]
  %i.fr = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtBL_7set_val9SetValZSTEE13new_uninit_inCs8frGy5WneL6_4fish()
          to label %.noexc.i26.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i, !noalias !3225 ; 13 uses

.noexc.i26.i.i:                                   ; preds = %bb.bg
  store ptr null, ptr %i.fr, align 8, !noalias !3230
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 274 ; 3 uses
  store i16 0, ptr %i.fs, align 2, !noalias !3230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3231)
  %i.ft = load i16, ptr %i.dq, align 2, !noalias !3232, !noundef !8
  %i.fu = zext i16 %i.ft to i64
  %i.fv = xor i64 %.sroa.06.0.i.i.i, -1
  %i.fw = add nsw i64 %i.fu, %i.fv                ; 4 uses
  %i.fx = trunc i64 %i.fw to i16
  store i16 %i.fx, ptr %i.fs, align 2, !alias.scope !3231, !noalias !3230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3232
  %i.fy = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.fy, i64 %.sroa.06.0.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i64 24, i1 false), !noalias !3232
  %i.ga = icmp ult i64 %i.fw, 12
  br i1 %i.ga, label %bb.bl, label %bb.bh, !prof !28

bb.bh:                                            ; preds = %.noexc.i26.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fw, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #37
          to label %bb.bj unwind label %bb.bi, !noalias !3232

bb.bi:                                            ; preds = %bb.bh
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #34
          to label %bb.bu unwind label %bb.bk, !noalias !3232

bb.bj:                                            ; preds = %bb.bh
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3232
  unreachable

bb.bl:                                            ; preds = %.noexc.i26.i.i
  %i.gd = getelementptr i8, ptr %i.fz, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.gf = mul nuw nsw i64 %i.fw, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ge, ptr nonnull readonly align 8 %i.gd, i64 %i.gf, i1 false), !alias.scope !3233, !noalias !3234
  %i.gg = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.gg, ptr %i.dq, align 2, !noalias !3232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3232
  %i.gh = load i16, ptr %i.fs, align 2, !noalias !3230, !noundef !8 ; 3 uses
  %i.gi = zext i16 %i.gh to i64
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 5 uses
  %i.gk = icmp ult i16 %i.gh, 12
  br i1 %i.gk, label %bb.bm, label %bb.bo, !prof !28

bb.bm:                                            ; preds = %bb.bl
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fr, i64 280 ; 6 uses
  %i.gm = zext i16 %i.dr to i64
  %i.gn = sub nuw nsw i64 %i.gm, %.sroa.06.0.i.i.i
  %i.go = icmp eq i64 %i.gn, %i.gj
  br i1 %i.go, label %bb.bq, label %bb.bn, !prof !14

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #33
          to label %.noexc.i.i27.i.i unwind label %bb.bp, !noalias !3230

.noexc.i.i27.i.i:                                 ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bl
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gj, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
          to label %bb.bs unwind label %bb.bp, !noalias !3230

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtNtCs1xwejQucwHj_5alloc11collections5btree7set_val9SetValZSTEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.bu unwind label %bb.bt, !noalias !3230

bb.bq:                                            ; preds = %bb.bm
  %i.gq = getelementptr i8, ptr %i.di, i64 288
  %i.gr = getelementptr [8 x i8], ptr %i.gq, i64 %.sroa.06.0.i.i.i
  %i.gs = shl nuw nsw i64 %i.gj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gl, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.gr, i64 %i.gs, i1 false), !alias.scope !3236, !noalias !3230
  %i.gt = icmp ne i64 %i.dm, 0
  tail call void @llvm.assume(i1 %i.gt)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3237)
  %xtraiter = and i64 %i.gj, 3                    ; 3 uses
  %i.gu = icmp ult i16 %i.gh, 3
  br i1 %i.gu, label %.epil.preheader, label %.new
end_hunk_1
begin_hunk_2_@_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE6insertB1d_:bb.a
  br i1 %i.bh, label %.loopexit55.i.i, label %.lr.ph

.split.i.i.i:                                     ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i
  %i.bi = icmp eq ptr %i.bj, %i.bg
  br i1 %i.bi, label %.loopexit55.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split.i.preheader.i.i, %.split.i.i.i
  %.sroa.0.01.i.i.i433 = phi ptr [ %i.bj, %.split.i.i.i ], [ %i.bc, %.split.i.preheader.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i432 = phi i64 [ %i.bk, %.split.i.i.i ], [ 0, %.split.i.preheader.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i433, i64 24 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.8.0.i.i.i432, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3400)
  %i.bl = load i64, ptr %.sroa.0.01.i.i.i433, align 8, !range !20, !alias.scope !3400, !noalias !3399, !noundef !8
  %i.bm = icmp ne i64 %i.bl, -1                   ; 2 uses
  %.neg.i.i.i.i = sext i1 %i.bm to i8
  %i.bn = add nsw i8 %.neg.i.i.i.i, %i.w
  br i1 %i.bm, label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i433, i64 8
  %i.bp = load i8, ptr %i.bo, align 8, !range !18, !alias.scope !3400, !noalias !3399, !noundef !8
  %i.bq = sub nsw i8 %i.y, %i.bp
  br label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.f, %.lr.ph
  %.sroa.0.0.i6.i.i.i = phi i8 [ %i.bn, %.lr.ph ], [ %i.bq, %bb.f ]
  switch i8 %.sroa.0.0.i6.i.i.i, label %default.unreachable [
    i8 -1, label %.loopexit55.i.i
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1A_7HistoryENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_.exit.i
    i8 1, label %.split.i.i.i
  ]

default.unreachable:                              ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i
  unreachable

.split17.us.i.i.i:                                ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i
  unreachable

.loopexit55.i.i:                                  ; preds = %.split.i.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i, %.split.i.preheader.i.i
  %.sroa.4.0.i.ph.ph56.i.i = phi i64 [ %i.bf, %.split.i.preheader.i.i ], [ %i.bf, %.split.i.i.i ], [ %.sroa.8.0.i.i.i432, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i ] ; 3 uses
  %i.br = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.br, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247, label %bb.g

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247: ; preds = %.loopexit55.i.i
  %.sroa.10.0253 = ptrtoint ptr %0 to i64
  br label %bb.l

bb.g:                                             ; preds = %.loopexit55.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 368
  %i.bt = icmp samesign ult i64 %.sroa.4.0.i.ph.ph56.i.i, 12
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.sroa.4.0.i.ph.ph56.i.i
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !3404, !nonnull !8, !noundef !8
  %i.bw = add i64 %.sroa.3.0.i.i, -1
  br label %.split.i.preheader.i.i

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload16 = load i64, ptr %1, align 8, !alias.scope !3405
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload20 = load ptr, ptr %.sroa.7.0..sroa_idx19, align 8, !alias.scope !3405
  %.sroa.9.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload24 = load i64, ptr %.sroa.9.0..sroa_idx23, align 8, !alias.scope !3405
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1A_7HistoryENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_.exit.i: ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i
  %.us-phi79.sink.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i ], [ %.sroa.0.0.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i ] ; 2 uses
  %.us-phi78.sink.i.i = phi i64 [ %.sroa.8.0.us.i.us.i.i435, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i ], [ %.sroa.8.0.i.i.i432, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i ] ; 2 uses
  br i1 %i.v, label %bb.i, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread

bb.i:                                             ; preds = %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1A_7HistoryENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.j, !noalias !3393

bb.j:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.thread35 unwind label %bb.k, !noalias !3393

bb.k:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3393
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread unwind label %.thread39

.thread39:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.thread35

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit: ; preds = %.loopexit.us.i.i, %bb.h
  %.sroa.17.0 = phi i64 [ undef, %bb.h ], [ %.sroa.4.0.i.ph.ph.us.i.i, %.loopexit.us.i.i ]
  %.sroa.13.0 = phi ptr [ null, %bb.h ], [ %.sroa.0.0.us.i.i, %.loopexit.us.i.i ]
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload24, %bb.h ], [ %i.ab, %.loopexit.us.i.i ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload20, %bb.h ], [ %i.z, %.loopexit.us.i.i ] ; 2 uses
  %.sroa.0.031 = phi i64 [ %.sroa.0.0.copyload16, %bb.h ], [ %.fr21.i.i.i, %.loopexit.us.i.i ] ; 2 uses
  %.sroa.10.0 = ptrtoint ptr %0 to i64            ; 2 uses
  %i.ca = icmp eq i64 %.sroa.0.031, -2
  br i1 %i.ca, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit
  %.sroa.10.0259 = phi i64 [ %.sroa.10.0253, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.10.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ]
  %.sroa.0.031258 = phi i64 [ -1, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.0.031, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ]
  %.sroa.7.0257 = phi ptr [ %i.z, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.7.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ]
  %.sroa.9.0256 = phi i64 [ %i.ab, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.9.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ]
  %.sroa.13.0255 = phi ptr [ %.sroa.0.0.i.i, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.13.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ] ; 12 uses
  %.sroa.17.0254 = phi i64 [ %.sroa.4.0.i.ph.ph56.i.i, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.17.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.0.031258, ptr %i.p, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.7.0257, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.9.0256, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %.sroa.10.0259, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %.sroa.13.0255, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %.sroa.17.0254, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %2, ptr %i.o, align 8, !noalias !3406
  %.not.i7 = icmp eq ptr %.sroa.13.0255, null
  br i1 %.not.i7, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.cb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtB6_4sync3ArcNtB1r_7HistoryEEE13new_uninit_inB1v_()
          to label %bb.n unwind label %bb.cq, !noalias !3406 ; 5 uses

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.cb, align 8, !noalias !3406
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 362 ; 3 uses
  store i16 0, ptr %i.cc, align 2, !noalias !3406
  store ptr %i.cb, ptr %0, align 8, !noalias !3406
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cd, align 8, !noalias !3406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 24, i1 false), !noalias !3407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3406
  store ptr %2, ptr %i.m, align 8, !noalias !3408
  %i.ce = load i16, ptr %i.cc, align 2, !noalias !3408, !noundef !8 ; 3 uses
  %i.cf = icmp ult i16 %i.ce, 11
  br i1 %i.cf, label %bb.t, label %bb.o, !prof !14

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #37
          to label %bb.r unwind label %bb.p, !noalias !3408

bb.p:                                             ; preds = %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !3409
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i unwind label %bb.s, !noalias !3408

bb.r:                                             ; preds = %bb.o
  unreachable

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i, %bb.q
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3410
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i: ; preds = %bb.q, %bb.p
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #34
          to label %.thread unwind label %bb.s, !noalias !3410

bb.t:                                             ; preds = %bb.n
  %i.ck = zext nneg i16 %i.ce to i64              ; 2 uses
  %i.cl = add nuw nsw i16 %i.ce, 1
  store i16 %i.cl, ptr %i.cc, align 2, !noalias !3408
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 24, i1 false), !noalias !3407
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 272
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ck
  store ptr %2, ptr %i.cp, align 8, !noalias !3408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3406
  br label %bb.cs

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 24, i1 false), !noalias !3407
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3411
  store ptr %2, ptr %i.i, align 8, !noalias !3412
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.13.0255, i64 362 ; 4 uses
  %i.cr = load i16, ptr %i.cq, align 2, !noalias !3412, !noundef !8 ; 2 uses
  %i.cs = icmp ugt i16 %i.cr, 10
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ct = icmp ult i64 %.sroa.17.0254, 5
  br i1 %i.ct, label %bb.ac, label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cu = zext nneg i16 %i.cr to i64              ; 2 uses
  %3 = add nuw nsw i64 %i.cu, 1                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.13.0255, i64 8 ; 2 uses
  %i.cw = add i64 %.sroa.17.0254, 1               ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %3, %i.cw
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %.sroa.17.0254 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 24, i1 false), !noalias !3407
  br label %.thread.i.i

bb.y:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = sub nsw i64 %i.cu, %.sroa.17.0254       ; 2 uses
  %i.da = mul nuw nsw i64 %i.cz, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr nonnull align 8 %i.cx, i64 %i.da, i1 false), !alias.scope !3413, !noalias !3414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 24, i1 false), !noalias !3407
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.13.0255, i64 272 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.sroa.17.0254
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cw
  %i.de = shl nuw nsw i64 %i.cz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.dc, i64 %i.de, i1 false), !alias.scope !3415, !noalias !3414
  br label %.thread.i.i

bb.z:                                             ; preds = %bb.v
  switch i64 %.sroa.17.0254, label %bb.aa [
    i64 5, label %bb.ac
    i64 6, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.df = add i64 %.sroa.17.0254, -7
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.v
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.ab ], [ true, %bb.aa ], [ false, %bb.v ], [ false, %bb.z ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.df, %bb.aa ], [ %.sroa.17.0254, %bb.v ], [ %.sroa.17.0254, %bb.z ] ; 6 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.ab ], [ 6, %bb.aa ], [ 4, %bb.v ], [ %.sroa.17.0254, %bb.z ] ; 5 uses
  %i.dg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtB6_4sync3ArcNtB1r_7HistoryEEE13new_uninit_inB1v_()
          to label %.noexc.i.i.i unwind label %bb.ai, !noalias !3412 ; 8 uses

.noexc.i.i.i:                                     ; preds = %bb.ac
  store ptr null, ptr %i.dg, align 8, !noalias !3416
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 362 ; 2 uses
  store i16 0, ptr %i.dh, align 2, !noalias !3416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3417)
  %i.di = load i16, ptr %i.cq, align 2, !noalias !3418, !noundef !8
  %i.dj = zext i16 %i.di to i64
  %i.dk = xor i64 %.sroa.013.0.i.i.i, -1
  %i.dl = add nsw i64 %i.dj, %i.dk                ; 5 uses
  %i.dm = trunc i64 %i.dl to i16
  store i16 %i.dm, ptr %i.dh, align 2, !alias.scope !3417, !noalias !3416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3418
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.13.0255, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %.sroa.013.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false), !noalias !3418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3418
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.13.0255, i64 272 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.sroa.013.0.i.i.i
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !3418, !nonnull !8, !noundef !8 ; 4 uses
  store ptr %i.dr, ptr %i.g, align 8, !noalias !3418
  %i.ds = icmp ult i64 %i.dl, 12
  br i1 %i.ds, label %bb.aj, label %bb.ad, !prof !28

bb.ad:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dl, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #37
          to label %bb.ag unwind label %bb.ae, !noalias !3418

bb.ae:                                            ; preds = %bb.ad
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = atomicrmw sub ptr %i.dr, i64 1 release, align 8, !noalias !3419
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i.i.i.i unwind label %bb.ah, !noalias !3418

bb.ag:                                            ; preds = %bb.ad
  unreachable

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i.i.i.i, %bb.af
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3418
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #34
          to label %.thread.i.i.i.i unwind label %bb.ah, !noalias !3418

.thread.i.i.i.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef 368, i64 noundef 8) #36, !noalias !3416
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3420, !noalias !3412
  br label %bb.an

bb.ai:                                            ; preds = %bb.ac
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %.noexc.i.i.i
  %i.dy = add nuw nsw i64 %.sroa.013.0.i.i.i, 1   ; 2 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.eb = mul nuw nsw i64 %i.dl, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull readonly align 8 %i.dz, i64 %i.eb, i1 false), !alias.scope !3421, !noalias !3422
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dy
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 272
  %i.ee = shl nuw nsw i64 %i.dl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull readonly align 8 %i.ec, i64 %i.ee, i1 false), !alias.scope !3423, !noalias !3422
  %i.ef = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.ef, ptr %i.cq, align 2, !noalias !3418
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !noalias !3412 ; 3 uses
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !3412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3418
  %spec.select33.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.dg, ptr %.sroa.13.0255 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %spec.select33.i.i.i, i64 362 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 2, !noalias !3424, !noundef !8 ; 2 uses
  %i.ei = zext i16 %i.eh to i64                   ; 2 uses
  %4 = add i16 %i.eh, 1
  %i.ej = getelementptr inbounds nuw i8, ptr %spec.select33.i.i.i, i64 8 ; 2 uses
  %.not.i16.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.ei
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %.sroa.510.0.i.i.i ; 3 uses
  br i1 %.not.i16.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 24, i1 false), !noalias !3407
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.el = add nuw nsw i64 %.sroa.510.0.i.i.i, 1   ; 2 uses
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.el
  %i.en = sub nuw nsw i64 %i.ei, %.sroa.510.0.i.i.i ; 2 uses
  %i.eo = mul nuw nsw i64 %i.en, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr nonnull align 8 %i.ek, i64 %i.eo, i1 false), !alias.scope !3425, !noalias !3424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 24, i1 false), !noalias !3407
  %i.ep = getelementptr inbounds nuw i8, ptr %spec.select33.i.i.i, i64 272 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.510.0.i.i.i
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.el
  %i.es = shl nuw nsw i64 %i.en, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.er, ptr nonnull align 8 %i.eq, i64 %i.es, i1 false), !alias.scope !3426, !noalias !3424
  br label %bb.ap

bb.am:                                            ; preds = %.noexc19.i.i.i, %bb.ao
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3427
  unreachable

.thread.i.i:                                      ; preds = %bb.y, %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.13.0255, i64 272
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.sroa.17.0254
  store ptr %2, ptr %5, align 8, !alias.scope !3415, !noalias !3414
  %6 = trunc nuw nsw i64 %3 to i16
  store i16 %6, ptr %i.cq, align 2, !noalias !3414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3411
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai, %.thread.i.i.i.i
  %i.ev = phi ptr [ %.pre.i.i.i, %.thread.i.i.i.i ], [ %2, %bb.ai ]
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.dt, %.thread.i.i.i.i ], [ %i.dx, %bb.ai ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3428)
  call void @llvm.experimental.noalias.scope.decl(metadata !3429)
  %i.ew = atomicrmw sub ptr %i.ev, i64 1 release, align 8, !noalias !3430
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.ao, label %.noexc19.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #38
          to label %.noexc19.i.i.i unwind label %bb.am, !noalias !3412

.noexc19.i.i.i:                                   ; preds = %bb.ao, %bb.an
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #34
          to label %.thread unwind label %bb.am, !noalias !3427

bb.ap:                                            ; preds = %bb.al, %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %spec.select33.i.i.i, i64 272
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.sroa.510.0.i.i.i
  store ptr %2, ptr %i.ez, align 8, !alias.scope !3426, !noalias !3424
  store i16 %4, ptr %i.eg, align 2, !noalias !3424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.i.i, i64 16, i1 false), !noalias !3431
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3411
  %.not.i.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i, -2
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7264.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7264.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !noalias !3411
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.fa = load ptr, ptr %.sroa.13.0255, align 8, !noalias !3432, !noundef !8 ; 2 uses
  %.not.i152.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i152.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i27.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7264.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.bi

bb.ar:                                            ; preds = %bb.ap, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.cs

._crit_edge.i.i:                                  ; preds = %bb.cn, %bb.aq
  %i.fc = phi ptr [ %i.dr, %bb.aq ], [ %i.jb, %bb.cn ] ; 4 uses
  %.sroa.0.0.i.i10 = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.aq ], [ %.sroa.0.i27.sroa.0.0.copyload.i.i, %bb.cn ]
  %.lcssa144.i.i = phi i64 [ 0, %bb.aq ], [ %i.gg, %bb.cn ] ; 3 uses
  %.lcssa136.i.i = phi ptr [ %i.dg, %bb.aq ], [ %i.iq, %bb.cn ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %.sroa.13.0255, %bb.aq ], [ %i.gc, %bb.cn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3411
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7264.i.i, i64 16, i1 false), !noalias !3411
  store i64 %.sroa.0.0.i.i10, ptr %i.j, align 8, !noalias !3411
  %.sroa.02.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store ptr %i.fc, ptr %.sroa.02.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3411
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3411
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.lcssa144.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !3411
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %.lcssa136.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !3411
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.lcssa144.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !3411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  %i.fd = load ptr, ptr %0, align 8, !noalias !3434, !noundef !8 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i23.i.i, label %bb.as, label %bb.au, !prof !13

bb.as:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
          to label %bb.at unwind label %bb.be, !noalias !3434

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3435)
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !3435, !noalias !3434, !noundef !8 ; 2 uses
  %i.fg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtB6_4sync3ArcNtB1w_7HistoryEEE13new_uninit_inB1A_()
          to label %.noexc.i.i.i.i unwind label %bb.ay, !noalias !3436 ; 9 uses

.noexc.i.i.i.i:                                   ; preds = %bb.au
  store ptr null, ptr %i.fg, align 8, !noalias !3436
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 362 ; 3 uses
  store i16 0, ptr %i.fh, align 2, !noalias !3436
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 368 ; 2 uses
  store ptr %i.fd, ptr %i.fi, align 8, !noalias !3436
  %i.fj = add i64 %i.ff, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.av, label %bb.az, !prof !13

bb.av:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #37
          to label %bb.aw unwind label %bb.ax, !noalias !3436

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fg, i64 noundef 464, i64 noundef 8) #36, !noalias !3436
  br label %.body.i.i.i.i

bb.ay:                                            ; preds = %bb.au
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ay, %bb.ax
  tail call void @llvm.trap()
  unreachable

bb.az:                                            ; preds = %.noexc.i.i.i.i
  store ptr %i.fg, ptr %i.fd, align 8, !noalias !3437
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 360
  store i16 0, ptr %i.fm, align 8, !noalias !3438
  store ptr %i.fg, ptr %0, align 8, !alias.scope !3435, !noalias !3434
  store i64 %i.fj, ptr %i.fe, align 8, !alias.scope !3435, !noalias !3434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 24, i1 false), !noalias !3411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3434
  store ptr %i.fc, ptr %i.e, align 8, !noalias !3439
  %i.fn = icmp eq i64 %.lcssa144.i.i, %i.ff
  br i1 %i.fn, label %bb.ba, label %.invoke.i.i.i.i, !prof !14

.invoke.i.i.i.i:                                  ; preds = %bb.ba, %bb.az
  %i.fo = phi ptr [ @308, %bb.az ], [ @306, %bb.ba ]
  %i.fp = phi i64 [ 48, %bb.az ], [ 32, %bb.ba ]
  %i.fq = phi ptr [ @309, %bb.az ], [ @310, %bb.ba ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fo, i64 noundef %i.fp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fq) #37
          to label %.cont.i.i.i.i unwind label %bb.bb, !noalias !3439

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.fr = load i16, ptr %i.fh, align 2, !noalias !3439, !noundef !8 ; 3 uses
  %i.fs = icmp ult i16 %i.fr, 11
  br i1 %i.fs, label %bb.co, label %.invoke.i.i.i.i, !prof !14

bb.bb:                                            ; preds = %.invoke.i.i.i.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = atomicrmw sub ptr %i.fc, i64 1 release, align 8, !noalias !3440
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.bc, label %.noexc.i5.i.i.i

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.noexc.i5.i.i.i unwind label %bb.bd, !noalias !3439

bb.bd:                                            ; preds = %.noexc.i5.i.i.i, %bb.bc
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3434
  unreachable

.noexc.i5.i.i.i:                                  ; preds = %bb.bc, %bb.bb
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #34
          to label %.thread unwind label %bb.bd, !noalias !3434

bb.be:                                            ; preds = %bb.as
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j) #34
          to label %bb.bg unwind label %bb.bf, !noalias !3411

bb.bf:                                            ; preds = %bb.bh, %bb.be
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3411
  unreachable

bb.bg:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !3441)
  call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  %i.fz = load ptr, ptr %.sroa.02.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3443, !noalias !3411, !nonnull !8, !noundef !8
  %i.ga = atomicrmw sub ptr %i.fz, i64 1 release, align 8, !noalias !3444
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.02.sroa.5.0..sroa_idx.i.i) #38
          to label %.thread unwind label %bb.bf, !noalias !3411

bb.bi:                                            ; preds = %.lr.ph.i.i, %bb.cn
  %.sroa.9.1.i.i = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.jb, %bb.cn ] ; 7 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.0.i27.sroa.0.0.copyload.i.i, %bb.cn ]
  %i.gc = phi ptr [ %i.fa, %.lr.ph.i.i ], [ %i.nk, %bb.cn ] ; 18 uses
  %i.gd = phi ptr [ %.sroa.13.0255, %.lr.ph.i.i ], [ %i.gc, %bb.cn ]
  %i.ge = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gg, %bb.cn ]
  %i.gf = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.iq, %bb.cn ] ; 2 uses
  %i.gg = add i64 %i.ge, 1                        ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 360
  %i.gi = load i16, ptr %i.gh, align 8, !noalias !3432 ; 4 uses
  %i.gj = zext i16 %i.gi to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3411
  store i64 %.sroa.0.1.i.i, ptr %i.k, align 8, !noalias !3411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7264.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7264.i.i, i64 16, i1 false), !noalias !3411
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i27.sroa.4.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3411
  store ptr %.sroa.9.1.i.i, ptr %i.d, align 8, !noalias !3445
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 362 ; 4 uses
  %i.gl = load i16, ptr %i.gk, align 2, !noalias !3445, !noundef !8 ; 5 uses
  %i.gm = icmp ult i16 %i.gl, 11
  br i1 %i.gm, label %bb.bk, label %bb.bj

.loopexit.split-lp.i.loopexit.i:                  ; preds = %bb.br
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.gn = icmp ult i16 %i.gi, 5
  br i1 %i.gn, label %bb.br, label %bb.bo

bb.bk:                                            ; preds = %bb.bi
  %i.go = zext nneg i16 %i.gl to i64              ; 4 uses
  %i.gp = add nuw nsw i16 %i.gl, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.gr = add nuw nsw i64 %i.gj, 1                ; 7 uses
  %7 = icmp ugt i16 %i.gl, %i.gi
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.gj ; 3 uses
  br i1 %7, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !3446
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gc, i64 272
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gj
  store ptr %.sroa.9.1.i.i, ptr %i.gu, align 8, !alias.scope !3447, !noalias !3448
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.gr
  %i.gw = sub nuw nsw i64 %i.go, %i.gj            ; 2 uses
  %i.gx = mul nuw nsw i64 %i.gw, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr nonnull align 8 %i.gs, i64 %i.gx, i1 false), !alias.scope !3449, !noalias !3448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !3446
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gc, i64 272 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gj ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gr
  %i.hb = shl nuw nsw i64 %i.gw, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr nonnull align 8 %i.gz, i64 %i.hb, i1 false), !alias.scope !3447, !noalias !3448
  store ptr %.sroa.9.1.i.i, ptr %i.gz, align 8, !alias.scope !3447, !noalias !3448
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gc, i64 368 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.gr
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.gj
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hf, ptr nonnull align 8 %i.hd, i64 %i.hb, i1 false), !alias.scope !3450, !noalias !3448
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gc, i64 368 ; 6 uses
  %i.hh = add nuw nsw i64 %i.go, 2                ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.gr
  store ptr %i.gf, ptr %i.hi, align 8, !alias.scope !3450, !noalias !3448
  store i16 %i.gp, ptr %i.gk, align 2, !noalias !3448
  %i.hj = icmp samesign ult i64 %i.gr, %i.hh
  br i1 %i.hj, label %.lr.ph.i.i.i.i.i.preheader, label %.thread37.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bn
  %i.hk = add nuw nsw i64 %i.go, 1
  %i.hl = sub nsw i64 %i.hk, %i.gj
  %i.hm = sub nsw i64 %i.go, %i.gj
  %xtraiter530 = and i64 %i.hl, 3                 ; 2 uses
  %lcmp.mod531.not = icmp eq i64 %xtraiter530, 0
  br i1 %lcmp.mod531.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.hn, %.lr.ph.i.i.i.i.i.prol ], [ %i.gr, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter532 = phi i64 [ %prol.iter532.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.hn = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ho = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ho)
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !3448, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.gc, ptr %i.hq, align 8, !noalias !3448
  %i.hr = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 360
  store i16 %i.hr, ptr %i.hs, align 8, !noalias !3448
  %prol.iter532.next = add i64 %prol.iter532, 1   ; 2 uses
  %prol.iter532.cmp.not = icmp eq i64 %prol.iter532.next, %xtraiter530
  br i1 %prol.iter532.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3346

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.gr, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hn, %.lr.ph.i.i.i.i.i.prol ]
  %i.ht = icmp ult i64 %i.hm, 3
  br i1 %i.ht, label %.thread37.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.ij, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.hu = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.sroa.0.06.i.i.i.i.i
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !3448, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.gc, ptr %i.hw, align 8, !noalias !3448
  %i.hx = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 360
  store i16 %i.hx, ptr %i.hy, align 8, !noalias !3448
  %i.hz = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hu
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !3448, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.gc, ptr %i.ib, align 8, !noalias !3448
  %i.ic = trunc nuw nsw i64 %i.hu to i16
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 360
  store i16 %i.ic, ptr %i.id, align 8, !noalias !3448
  %i.ie = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hz
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !3448, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.gc, ptr %i.ig, align 8, !noalias !3448
  %i.ih = trunc nuw nsw i64 %i.hz to i16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 360
  store i16 %i.ih, ptr %i.ii, align 8, !noalias !3448
  %i.ij = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.ik = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ik)
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.ie
  %i.im = load ptr, ptr %i.il, align 8, !noalias !3448, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.gc, ptr %i.im, align 8, !noalias !3448
  %i.in = trunc nuw nsw i64 %i.ie to i16
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 360
  store i16 %i.in, ptr %i.io, align 8, !noalias !3448
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.ij, %i.hh
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread37.i.i, label %.lr.ph.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bj
  switch i16 %i.gi, label %bb.bp [
    i16 5, label %bb.br
    i16 6, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ip = add nsw i64 %i.gj, -7
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bj
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bq ], [ 6, %bb.bp ], [ 4, %bb.bj ], [ 5, %bb.bo ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bq ], [ %i.ip, %bb.bp ], [ %i.gj, %bb.bj ], [ 5, %bb.bo ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bq ], [ true, %bb.bp ], [ false, %bb.bj ], [ false, %bb.bo ]
  %i.iq = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtB6_4sync3ArcNtB1w_7HistoryEEE13new_uninit_inB1A_()
          to label %.noexc.i30.i.i unwind label %.loopexit.split-lp.i.loopexit.i, !noalias !3445 ; 14 uses

.noexc.i30.i.i:                                   ; preds = %bb.br
  store ptr null, ptr %i.iq, align 8, !noalias !3451
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 362 ; 3 uses
  store i16 0, ptr %i.ir, align 2, !noalias !3451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3453)
  %i.is = load i16, ptr %i.gk, align 2, !noalias !3454, !noundef !8
  %i.it = zext i16 %i.is to i64
  %i.iu = xor i64 %.sroa.06.0.i.i.i, -1
  %i.iv = add nsw i64 %i.it, %i.iu                ; 5 uses
  %i.iw = trunc i64 %i.iv to i16
  store i16 %i.iw, ptr %i.ir, align 2, !alias.scope !3453, !noalias !3451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3454
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.ix, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.iy, i64 24, i1 false), !noalias !3454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3454
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gc, i64 272 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.sroa.06.0.i.i.i
  %i.jb = load ptr, ptr %i.ja, align 8, !noalias !3454, !nonnull !8, !noundef !8 ; 5 uses
  store ptr %i.jb, ptr %i.a, align 8, !noalias !3454
  %i.jc = icmp ult i64 %i.iv, 12
  br i1 %i.jc, label %bb.bx, label %bb.bs, !prof !28

bb.bs:                                            ; preds = %.noexc.i30.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.iv, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #37
          to label %bb.bv unwind label %bb.bt, !noalias !3454

bb.bt:                                            ; preds = %bb.bs
  %i.jd = landingpad { ptr, i32 }
          cleanup
  %i.je = atomicrmw sub ptr %i.jb, i64 1 release, align 8, !noalias !3455
  %i.jf = icmp eq i64 %i.je, 1
  br i1 %i.jf, label %bb.bu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i.i31.i.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i.i31.i.i unwind label %bb.bw, !noalias !3454

bb.bv:                                            ; preds = %bb.bs
  unreachable

bb.bw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i.i31.i.i, %bb.bu
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3454
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i.i31.i.i: ; preds = %bb.bu, %bb.bt
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #34
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i._crit_edge.i.i.i unwind label %bb.bw, !noalias !3454

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i._crit_edge.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i.i31.i.i
  %.pre.pre.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3456, !noalias !3445
  br label %bb.cg

bb.bx:                                            ; preds = %.noexc.i30.i.i
  %i.jh = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.ji = getelementptr inbounds nuw [24 x i8], ptr %i.ix, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jk = mul nuw nsw i64 %i.iv, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jj, ptr nonnull readonly align 8 %i.ji, i64 %i.jk, i1 false), !alias.scope !3457, !noalias !3458
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jh
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iq, i64 272
  %i.jn = shl nuw nsw i64 %i.iv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jm, ptr nonnull readonly align 8 %i.jl, i64 %i.jn, i1 false), !alias.scope !3459, !noalias !3458
  %i.jo = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.jo, ptr %i.gk, align 2, !noalias !3454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3460
  store ptr %i.jb, ptr %i.fb, align 8, !alias.scope !3452, !noalias !3451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3454
  %i.jp = load i16, ptr %i.ir, align 2, !noalias !3451, !noundef !8 ; 3 uses
  %i.jq = zext i16 %i.jp to i64
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 5 uses
  %i.js = icmp ult i16 %i.jp, 12
  br i1 %i.js, label %bb.by, label %bb.ca, !prof !28

end_hunk_2
begin_hunk_3_@_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE6insertB1d_:bb.a
  %i.nm = add nuw nsw i16 %i.fr, 1
  store i16 %i.nm, ptr %i.fh, align 2, !noalias !3439
  %i.nn = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.no = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %i.nl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.no, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 24, i1 false), !noalias !3411
  %i.np = getelementptr inbounds nuw i8, ptr %i.fg, i64 272
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nl
  store ptr %i.fc, ptr %i.nq, align 8, !noalias !3439
  %i.nr = add nuw nsw i64 %i.nl, 1                ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.nr
  store ptr %.lcssa136.i.i, ptr %i.ns, align 8, !noalias !3439
  store ptr %i.fg, ptr %.lcssa136.i.i, align 8, !noalias !3439
  %i.nt = trunc nuw nsw i64 %i.nr to i16
  %i.nu = getelementptr inbounds nuw i8, ptr %.lcssa136.i.i, i64 360
  store i16 %i.nt, ptr %i.nu, align 8, !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3411
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7264.i.i)
  br label %bb.cs

bb.cp:                                            ; preds = %.noexc14.i, %bb.cr
  %i.nv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3407
  unreachable

bb.cq:                                            ; preds = %bb.m
  %i.nw = landingpad { ptr, i32 }
          cleanup
  %i.nx = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !3473
  %i.ny = icmp eq i64 %i.nx, 1
  br i1 %i.ny, label %bb.cr, label %.noexc14.i

bb.cr:                                            ; preds = %bb.cq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #38
          to label %.noexc14.i unwind label %bb.cp, !noalias !3406

.noexc14.i:                                       ; preds = %bb.cr, %bb.cq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.p) #34
          to label %.thread unwind label %bb.cp, !noalias !3407

bb.cs:                                            ; preds = %bb.ar, %.loopexit42.i.i, %bb.co, %bb.t
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 8, !noalias !3406, !noundef !8
  %i.ob = add i64 %i.oa, 1
  store i64 %i.ob, ptr %i.nz, align 8, !noalias !3406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ct

bb.ct:                                            ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread, %bb.cs
  %.sroa.0.0 = phi ptr [ %i.oe, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread ], [ null, %bb.cs ]
  ret ptr %.sroa.0.0

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1A_7HistoryENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_.exit.i, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit
  %.sroa.7.049 = phi ptr [ %.sroa.7.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ], [ %.us-phi79.sink.i.i, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1A_7HistoryENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_.exit.i ], [ %.us-phi79.sink.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ] ; 2 uses
  %.sroa.10.048 = phi i64 [ %.sroa.10.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ], [ %.us-phi78.sink.i.i, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1A_7HistoryENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_.exit.i ], [ %.us-phi78.sink.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.049) ]
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.7.049, i64 272
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %.sroa.10.048 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !nonnull !8, !noundef !8
  store ptr %2, ptr %i.od, align 8
  br label %bb.ct

.thread:                                          ; preds = %.thread35, %bb.cu, %.noexc14.i, %.noexc16.i.i.i, %bb.bh, %bb.bg, %.noexc.i5.i.i.i, %.noexc19.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i
  %.pn34 = phi { ptr, i32 } [ %i.fx, %bb.bh ], [ %eh.lpad-body38, %.thread35 ], [ %i.nw, %.noexc14.i ], [ %i.cg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i ], [ %i.fx, %bb.bg ], [ %.pn.ph.i.i.i, %.noexc19.i.i.i ], [ %.pn.ph.i28.i.i, %.noexc16.i.i.i ], [ %i.ft, %.noexc.i5.i.i.i ], [ %eh.lpad-body38, %bb.cu ]
  resume { ptr, i32 } %.pn34

.thread35:                                        ; preds = %bb.j, %.thread39
  %eh.lpad-body38 = phi { ptr, i32 } [ %i.bz, %.thread39 ], [ %i.bx, %bb.j ] ; 2 uses
  %i.of = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !3474
  %i.og = icmp eq i64 %i.of, 1
  br i1 %i.og, label %bb.cu, label %.thread

bb.cu:                                            ; preds = %.thread35
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #38
          to label %.thread unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB17_E6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3598)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3597, !noundef !8 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3597, !noundef !8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.c, %bb.b ], [ %i.x, %bb.g ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %bb.b ], [ %i.w, %bb.g ] ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 362
  %i.e = load i16, ptr %i.d, align 2, !noalias !3599, !noundef !8 ; 4 uses
  %i.f = zext i16 %i.e to i64                     ; 5 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i

bb.d:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i
  %i.i = icmp eq ptr %i.j, %i.g
  br i1 %i.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i388 = phi ptr [ %i.j, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ] ; 3 uses
  %.sroa.8.0.i.i.i387 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i388, i64 16 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i.i387, 1
  %.val7.i.i.i = load ptr, ptr %.sroa.0.03.i.i.i388, align 8, !noalias !3599, !nonnull !8, !align !12, !noundef !8
  %i.l = getelementptr i8, ptr %.sroa.0.03.i.i.i388, i64 8
  %.val8.i.i.i = load i64, ptr %i.l, align 8, !noalias !3599, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3603)
  %..i.i.i.i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %.val8.i.i.i, i64 range(i64 0, 2305843009213693952) %2) ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.m = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.m, %..i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.e, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i
  %i.n = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 2305843009213693952) %2, i64 range(i64 0, 2305843009213693952) %.val8.i.i.i)
  br label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val15.i.i.i.i.i.i, i32 %.val16.i.i.i.i.i.i)
  br label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i, %bb.e
  %.sroa.01.019.i.i.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.019.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val7.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i = load i32, ptr %i.p, align 4, !alias.scope !3604, !noalias !3605, !noundef !8 ; 2 uses
  %.val16.i.i.i.i.i.i = load i32, ptr %i.q, align 4, !alias.scope !3606, !noalias !3599, !noundef !8 ; 2 uses
  %i.r = icmp eq i32 %.val15.i.i.i.i.i.i, %.val16.i.i.i.i.i.i
  br i1 %i.r, label %bb.e, label %.loopexit.i.i.i.i.i.i

_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.n, %._crit_edge.i.i.i.i.i.i ], [ %i.o, %.loopexit.i.i.i.i.i.i ]
  switch i8 %.sroa.0.0.i.i.i.i.i.i, label %bb.f [
    i8 -1, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i._crit_edge
    i8 0, label %bb.h
    i8 1, label %bb.d
  ]

bb.f:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i
  unreachable

_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i._crit_edge: ; preds = %bb.d, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %.sroa.8.0.i.i.i387, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i ] ; 14 uses
  %i.s = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 368
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph.i.i
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3599, !nonnull !8, !noundef !8
  %i.x = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.h:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.8.0.i.i.i387 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !3607, !nonnull !8, !align !12, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !3607, !noundef !8
  store ptr %3, ptr %i.z, align 8, !noalias !3607, !captures !33
  store i64 %4, ptr %i.ab, align 8, !noalias !3607
  br label %bb.au

bb.i:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB7_3Ord3cmpCs8frGy5WneL6_4fish.exit.i.i.i._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 362 ; 3 uses
  %i.ae = icmp ult i16 %i.e, 11
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  br i1 %i.af, label %bb.p, label %bb.m

bb.k:                                             ; preds = %bb.i
  %5 = add nuw nsw i16 %i.e, 1
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.f
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i.i, 1  ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %i.ah
  %i.aj = sub nuw nsw i64 %i.f, %.sroa.4.0.i.ph.i.i
  %i.ak = shl nuw nsw i64 %i.aj, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.ag, i64 %i.ak, i1 false), !alias.scope !3608, !noalias !3609
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176 ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.sroa.4.0.i.ph.i.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.am, i64 %i.ak, i1 false), !alias.scope !3610, !noalias !3611
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.n [
    i64 5, label %bb.p
    i64 6, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ao = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.j
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.o ], [ true, %bb.n ], [ false, %bb.j ], [ false, %bb.m ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.o ], [ %i.ao, %bb.n ], [ %.sroa.4.0.i.ph.i.i, %bb.j ], [ %.sroa.4.0.i.ph.i.i, %bb.m ] ; 6 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.o ], [ 6, %bb.n ], [ 4, %bb.j ], [ %.sroa.4.0.i.ph.i.i, %bb.m ] ; 5 uses
  %i.ap = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1p_EE13new_uninit_inCs8frGy5WneL6_4fish(), !noalias !3612 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 352
  store ptr null, ptr %i.aq, align 8, !noalias !3612
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 362 ; 2 uses
  store i16 0, ptr %i.ar, align 2, !noalias !3612
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3613)
  %i.as = load i16, ptr %i.ad, align 2, !noalias !3614, !noundef !8
  %i.at = zext i16 %i.as to i64
  %i.au = xor i64 %.sroa.013.0.i.i.i, -1
  %i.av = add nsw i64 %i.at, %i.au                ; 4 uses
  %i.aw = trunc i64 %i.av to i16
  store i16 %i.aw, ptr %i.ar, align 2, !alias.scope !3613, !noalias !3612
  %i.ax = icmp ult i64 %i.av, 12
  br i1 %i.ax, label %_RINvMsV_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i.i, label %bb.q, !prof !28

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.av, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #33
          to label %.noexc.i.i.i.i unwind label %bb.r, !noalias !3612

.noexc.i.i.i.i:                                   ; preds = %bb.q
  unreachable

common.resume.i.i:                                ; preds = %bb.ao, %bb.r
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ay, %bb.r ], [ %i.hg, %bb.ao ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.r:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef 368, i64 noundef 8) #36, !noalias !3612
  br label %common.resume.i.i

_RINvMsV_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176 ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.sroa.013.0.i.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !3614, !noundef !8 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !noalias !3614, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.013.0.i.i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !3614, !noundef !8 ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !noalias !3614, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.bi = add nuw nsw i64 %.sroa.013.0.i.i.i, 1   ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %i.bi
  %i.bk = shl nuw nsw i64 %i.av, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(368) %i.ap, ptr nonnull readonly align 8 %i.bj, i64 %i.bk, i1 false), !alias.scope !3615, !noalias !3616
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull readonly align 8 %i.bl, i64 %i.bk, i1 false), !alias.scope !3617, !noalias !3616
  %i.bn = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.bn, ptr %i.ad, align 2, !noalias !3614
  %spec.select43.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.ap, ptr %.sroa.0.0.i.i ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %spec.select43.i.i.i, i64 362 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !noalias !3618, !noundef !8 ; 2 uses
  %i.bq = zext i16 %i.bp to i64                   ; 2 uses
  %6 = add i16 %i.bp, 1
  %.not.i14.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.bq
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %spec.select43.i.i.i, i64 %.sroa.510.0.i.i.i ; 3 uses
  br i1 %.not.i14.not.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RINvMsV_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i.i
  %i.bs = add nuw nsw i64 %.sroa.510.0.i.i.i, 1   ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %spec.select43.i.i.i, i64 %i.bs
  %i.bu = sub nuw nsw i64 %i.bq, %.sroa.510.0.i.i.i
  %i.bv = shl nuw nsw i64 %i.bu, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull align 8 %i.br, i64 %i.bv, i1 false), !alias.scope !3619, !noalias !3618
  %i.bw = getelementptr inbounds nuw i8, ptr %spec.select43.i.i.i, i64 176 ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.sroa.510.0.i.i.i
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bs
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr nonnull align 8 %i.bx, i64 %i.bv, i1 false), !alias.scope !3620, !noalias !3621
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvMsV_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i.i
  store ptr %1, ptr %i.br, align 8, !alias.scope !3619, !noalias !3622
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %2, ptr %i.bz, align 8, !alias.scope !3619, !noalias !3623
  %i.ca = getelementptr inbounds nuw i8, ptr %spec.select43.i.i.i, i64 176
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %.sroa.510.0.i.i.i ; 2 uses
  store ptr %3, ptr %i.cb, align 8, !alias.scope !3620, !noalias !3624
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %4, ptr %i.cc, align 8, !alias.scope !3620, !noalias !3625
  store i16 %6, ptr %i.bo, align 2, !noalias !3625
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 352
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !3626, !noundef !8 ; 2 uses
  %.not.i113.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i113.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.u:                                             ; preds = %bb.l, %bb.k
  store ptr %1, ptr %i.ag, align 8, !alias.scope !3608, !noalias !3609
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %2, ptr %i.cf, align 8, !alias.scope !3608, !noalias !3627
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  store ptr %3, ptr %i.ch, align 8, !alias.scope !3610, !noalias !3627
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %4, ptr %i.ci, align 8, !alias.scope !3610, !noalias !3628
  store i16 %5, ptr %i.ad, align 2, !noalias !3628
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1j_E12insert_entryCs8frGy5WneL6_4fish.exit

._crit_edge.i.i:                                  ; preds = %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i, %bb.t
  %.sroa.14.0.lcssa.i.i = phi i64 [ 0, %bb.t ], [ %i.di, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ]
  %.sroa.12.0.lcssa.i.i = phi ptr [ %i.ap, %bb.t ], [ %i.ga, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ] ; 3 uses
  %.sroa.11.0.lcssa.i.i = phi i64 [ %i.bc, %bb.t ], [ %i.gm, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ]
  %.sroa.10.0.lcssa.i.i = phi ptr [ %i.bd, %bb.t ], [ %i.gn, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ]
  %.sroa.9.0.lcssa.i.i = phi i64 [ %i.bg, %bb.t ], [ %i.gq, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ]
  %.sroa.7.0.lcssa.i.i = phi ptr [ %i.bh, %bb.t ], [ %i.gr, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3629)
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1u_EE13new_uninit_inCs8frGy5WneL6_4fish()
          to label %.noexc.i.i53.i.i unwind label %bb.y, !noalias !3630 ; 9 uses

.noexc.i.i53.i.i:                                 ; preds = %._crit_edge.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 352
  store ptr null, ptr %i.ck, align 8, !noalias !3630
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 362 ; 3 uses
  store i16 0, ptr %i.cl, align 2, !noalias !3630
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 368 ; 2 uses
  store ptr %i.a, ptr %i.cm, align 8, !noalias !3630
  %i.cn = add i64 %i.c, 1                         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs8frGy5WneL6_4fish.exit.i.i.i, !prof !13

bb.v:                                             ; preds = %.noexc.i.i53.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #37
          to label %bb.w unwind label %bb.x, !noalias !3630

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef 464, i64 noundef 8) #36, !noalias !3630
  br label %.body.i.i.i.i

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.y, %bb.x
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.noexc.i.i53.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr %i.cj, ptr %i.cq, align 8, !noalias !3631
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i16 0, ptr %i.cr, align 8, !noalias !3632
  store ptr %i.cj, ptr %0, align 8, !alias.scope !3629, !noalias !3633
  store i64 %i.cn, ptr %i.b, align 8, !alias.scope !3629, !noalias !3633
  %i.cs = icmp eq i64 %.sroa.14.0.lcssa.i.i, %i.c
  br i1 %i.cs, label %bb.aa, label %bb.z, !prof !14

bb.z:                                             ; preds = %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs8frGy5WneL6_4fish.exit.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @308, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #33, !noalias !3634
  unreachable

bb.aa:                                            ; preds = %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs8frGy5WneL6_4fish.exit.i.i.i
  %i.ct = load i16, ptr %i.cl, align 2, !noalias !3634, !noundef !8 ; 3 uses
  %i.cu = icmp ult i16 %i.ct, 11
  br i1 %i.cu, label %_RNCNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB7_11VacantEntryRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1l_E12insert_entry0Cs8frGy5WneL6_4fish.exit.i.i, label %bb.ab, !prof !14

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #33, !noalias !3634
  unreachable

_RNCNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB7_11VacantEntryRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1l_E12insert_entry0Cs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.aa
  %i.cv = zext nneg i16 %i.ct to i64              ; 3 uses
  %i.cw = add nuw nsw i16 %i.ct, 1
  store i16 %i.cw, ptr %i.cl, align 2, !noalias !3634
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cv ; 2 uses
  store ptr %.sroa.7.0.lcssa.i.i, ptr %i.cx, align 8, !noalias !3634
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %.sroa.9.0.lcssa.i.i, ptr %i.cy, align 8, !noalias !3634
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 176
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cv ; 2 uses
  store ptr %.sroa.10.0.lcssa.i.i, ptr %i.da, align 8, !noalias !3634
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.sroa.11.0.lcssa.i.i, ptr %i.db, align 8, !noalias !3634
  %i.dc = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dc
  store ptr %.sroa.12.0.lcssa.i.i, ptr %i.dd, align 8, !noalias !3634
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.12.0.lcssa.i.i, i64 352
  store ptr %i.cj, ptr %i.de, align 8, !noalias !3634
  %i.df = trunc nuw nsw i64 %i.dc to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.12.0.lcssa.i.i, i64 360
  store i16 %i.df, ptr %i.dg, align 8, !noalias !3634
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1j_E12insert_entryCs8frGy5WneL6_4fish.exit

.lr.ph.i.i:                                       ; preds = %bb.t, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i
  %i.dh = phi ptr [ %i.lc, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ], [ %i.ce, %bb.t ] ; 19 uses
  %.sroa.0.0121.i.i = phi ptr [ %i.dh, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.6.0120.i.i = phi i64 [ %i.di, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %bb.t ]
  %.sroa.7.0119.i.i = phi ptr [ %i.gr, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ], [ %i.bh, %bb.t ] ; 4 uses
  %.sroa.9.0118.i.i = phi i64 [ %i.gq, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ], [ %i.bg, %bb.t ] ; 4 uses
  %.sroa.10.0117.i.i = phi ptr [ %i.gn, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ], [ %i.bd, %bb.t ] ; 4 uses
  %.sroa.11.0116.i.i = phi i64 [ %i.gm, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ], [ %i.bc, %bb.t ] ; 4 uses
  %.sroa.12.0115.i.i = phi ptr [ %i.ga, %_RINvMsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECs8frGy5WneL6_4fish.exit.i.i ], [ %i.ap, %bb.t ] ; 2 uses
  %i.di = add i64 %.sroa.6.0120.i.i, 1            ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0121.i.i, i64 360
  %i.dk = load i16, ptr %i.dj, align 8, !noalias !3626 ; 4 uses
  %i.dl = zext i16 %i.dk to i64                   ; 10 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 362 ; 4 uses
  %i.dn = load i16, ptr %i.dm, align 2, !noalias !3635, !noundef !8 ; 5 uses
  %i.do = icmp ult i16 %i.dn, 11
  br i1 %i.do, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.dp = icmp ult i16 %i.dk, 5
  br i1 %i.dp, label %bb.ai, label %bb.af

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.dq = zext nneg i16 %i.dn to i64              ; 4 uses
  %i.dr = add nuw nsw i16 %i.dn, 1
  %i.ds = add nuw nsw i64 %i.dl, 1                ; 7 uses
  %7 = icmp ugt i16 %i.dn, %i.dk
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dl ; 5 uses
  br i1 %7, label %bb.ae, label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit2.i.i.i.i

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit2.i.i.i.i: ; preds = %bb.ad
  store ptr %.sroa.7.0119.i.i, ptr %i.dt, align 8, !alias.scope !3636, !noalias !3637
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %.sroa.9.0118.i.i, ptr %i.du, align 8, !alias.scope !3636, !noalias !3638
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 176
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dl ; 2 uses
  store ptr %.sroa.10.0117.i.i, ptr %i.dw, align 8, !alias.scope !3639, !noalias !3638
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %.sroa.11.0116.i.i, ptr %i.dx, align 8, !alias.scope !3639, !noalias !3640
  br label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB24_EEECs8frGy5WneL6_4fish.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.ds
  %i.dz = sub nuw nsw i64 %i.dq, %i.dl            ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dz, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dt, i64 %i.ea, i1 false), !alias.scope !3636, !noalias !3637
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dh, i64 176 ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.dl ; 3 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.ds
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.ec, i64 %i.ea, i1 false), !alias.scope !3639, !noalias !3641
  store ptr %.sroa.7.0119.i.i, ptr %i.dt, align 8, !alias.scope !3636, !noalias !3637
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %.sroa.9.0118.i.i, ptr %i.ee, align 8, !alias.scope !3636, !noalias !3638
  store ptr %.sroa.10.0117.i.i, ptr %i.ec, align 8, !alias.scope !3639, !noalias !3638
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %.sroa.11.0116.i.i, ptr %i.ef, align 8, !alias.scope !3639, !noalias !3640
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dh, i64 368 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ds
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.dl
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = shl nuw nsw i64 %i.dz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 8 %i.eh, i64 %i.ek, i1 false), !alias.scope !3642, !noalias !3640
  br label %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB24_EEECs8frGy5WneL6_4fish.exit.i.i.i.i

_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB24_EEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.ae, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit2.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.dh, i64 368 ; 6 uses
  %i.em = add nuw nsw i64 %i.dq, 2                ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ds
  store ptr %.sroa.12.0115.i.i, ptr %i.en, align 8, !alias.scope !3642, !noalias !3640
  store i16 %i.dr, ptr %i.dm, align 2, !noalias !3640
  %i.eo = icmp samesign ult i64 %i.ds, %i.em
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i.preheader, label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1j_E12insert_entryCs8frGy5WneL6_4fish.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB24_EEECs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.ep = add nuw nsw i64 %i.dq, 1
  %i.eq = sub nsw i64 %i.ep, %i.dl
  %i.er = sub nsw i64 %i.dq, %i.dl
  %xtraiter477 = and i64 %i.eq, 3                 ; 2 uses
  %lcmp.mod478.not = icmp eq i64 %xtraiter477, 0
  br i1 %lcmp.mod478.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i.prol ], [ %i.ds, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter479 = phi i64 [ %prol.iter479.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.es = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.et = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !3640, !nonnull !8, !noundef !8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 352
  store ptr %i.dh, ptr %i.ew, align 8, !noalias !3640
  %i.ex = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 360
  store i16 %i.ex, ptr %i.ey, align 8, !noalias !3640
  %prol.iter479.next = add i64 %prol.iter479, 1   ; 2 uses
  %prol.iter479.cmp.not = icmp eq i64 %prol.iter479.next, %xtraiter477
  br i1 %prol.iter479.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3561

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i.preheader ], [ %i.es, %.lr.ph.i.i.i.i.i.prol ]
  %i.ez = icmp ult i64 %i.er, 3
  br i1 %i.ez, label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1j_E12insert_entryCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.fa = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.sroa.0.06.i.i.i.i.i
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !3640, !nonnull !8, !noundef !8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 352
  store ptr %i.dh, ptr %i.fd, align 8, !noalias !3640
  %i.fe = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 360
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !3640
  %i.fg = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.fa
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !3640, !nonnull !8, !noundef !8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 352
  store ptr %i.dh, ptr %i.fj, align 8, !noalias !3640
  %i.fk = trunc nuw nsw i64 %i.fa to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 360
  store i16 %i.fk, ptr %i.fl, align 8, !noalias !3640
  %i.fm = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.fg
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !3640, !nonnull !8, !noundef !8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 352
  store ptr %i.dh, ptr %i.fp, align 8, !noalias !3640
  %i.fq = trunc nuw nsw i64 %i.fg to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 360
  store i16 %i.fq, ptr %i.fr, align 8, !noalias !3640
  %i.fs = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.ft = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.fm
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !3640, !nonnull !8, !noundef !8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 352
  store ptr %i.dh, ptr %i.fw, align 8, !noalias !3640
  %i.fx = trunc nuw nsw i64 %i.fm to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 360
  store i16 %i.fx, ptr %i.fy, align 8, !noalias !3640
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.fs, %i.em
  br i1 %exitcond.not.i.i.i.i.i.3, label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1j_E12insert_entryCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i.i.i.i

bb.af:                                            ; preds = %bb.ac
  switch i16 %i.dk, label %bb.ag [
    i16 5, label %bb.ai
    i16 6, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fz = add nsw i64 %i.dl, -7
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ac
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.ah ], [ 6, %bb.ag ], [ 4, %bb.ac ], [ 5, %bb.af ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.ah ], [ %i.fz, %bb.ag ], [ %i.dl, %bb.ac ], [ 5, %bb.af ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.ah ], [ true, %bb.ag ], [ false, %bb.ac ], [ false, %bb.af ]
  %i.ga = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1u_EE13new_uninit_inCs8frGy5WneL6_4fish(), !noalias !3643 ; 14 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 352
  store ptr null, ptr %i.gb, align 8, !noalias !3643
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 362 ; 3 uses
  store i16 0, ptr %i.gc, align 2, !noalias !3643
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3644)
  %i.gd = load i16, ptr %i.dm, align 2, !noalias !3645, !noundef !8
  %i.ge = zext i16 %i.gd to i64
  %i.gf = xor i64 %.sroa.06.0.i.i.i, -1
  %i.gg = add nsw i64 %i.ge, %i.gf                ; 4 uses
  %i.gh = trunc i64 %i.gg to i16
  store i16 %i.gh, ptr %i.gc, align 2, !alias.scope !3644, !noalias !3643
  %i.gi = icmp ult i64 %i.gg, 12
  br i1 %i.gi, label %bb.ak, label %bb.aj, !prof !28

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gg, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #33
          to label %.noexc.i.i54.i.i unwind label %bb.ao, !noalias !3643

.noexc.i.i54.i.i:                                 ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dh, i64 176 ; 2 uses
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %.sroa.06.0.i.i.i ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !3645, !noundef !8 ; 2 uses
  %i.gn = load ptr, ptr %i.gk, align 8, !noalias !3645, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %.sroa.06.0.i.i.i ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !noalias !3645, !noundef !8 ; 2 uses
  %i.gr = load ptr, ptr %i.go, align 8, !noalias !3645, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.gs = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.gs
  %i.gu = shl nuw nsw i64 %i.gg, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(368) %i.ga, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !3646, !noalias !3647
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gs
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gw, ptr nonnull readonly align 8 %i.gv, i64 %i.gu, i1 false), !alias.scope !3648, !noalias !3647
  %i.gx = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.gx, ptr %i.dm, align 2, !noalias !3645
  %i.gy = load i16, ptr %i.gc, align 2, !noalias !3643, !noundef !8 ; 3 uses
  %i.gz = zext i16 %i.gy to i64
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 5 uses
  %i.hb = icmp ult i16 %i.gy, 12
  br i1 %i.hb, label %bb.al, label %bb.an, !prof !28

bb.al:                                            ; preds = %bb.ak
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ga, i64 368 ; 6 uses
  %i.hd = zext i16 %i.dn to i64
  %i.he = sub nuw nsw i64 %i.hd, %.sroa.06.0.i.i.i
  %i.hf = icmp eq i64 %i.he, %i.ha
  br i1 %i.hf, label %bb.ap, label %bb.am, !prof !14

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #33
          to label %.noexc7.i.i.i.i unwind label %bb.ao, !noalias !3643

.noexc7.i.i.i.i:                                  ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ha, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
          to label %bb.ar unwind label %bb.ao, !noalias !3643

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.aj
  %i.hg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ga, i64 noundef 464, i64 noundef 8) #36, !noalias !3643
  br label %common.resume.i.i
end_hunk_3
