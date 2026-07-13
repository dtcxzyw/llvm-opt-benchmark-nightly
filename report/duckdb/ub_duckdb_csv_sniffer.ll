inline.NumInlined: 6648
inline.NumDeleted: 2471
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN6duckdb10CSVSniffer31GenerateStateMachineSearchSpaceERNS_6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERKNS_17DialectCandidatesE:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !923
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #31, !noalias !923, !inline_history !502
  %i.dh = load ptr, ptr %i.cs, align 8, !tbaa !151, !noalias !923
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !923
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #31, !noalias !923, !inline_history !502
  br label %_ZN6duckdb15make_shared_ptrINS_15CSVStateMachineEJRNS_16CSVReaderOptionsERNS_22CSVStateMachineOptionsERNS_20CSVStateMachineCacheEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.p:                                             ; preds = %_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100, !noalias !923
  %.not.i.i.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = add nsw i32 %i.dd, -1
  store i32 %i.dl, ptr %i.ct, align 8, !tbaa !3, !noalias !923
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.dm = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4, !noalias !923
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.dd, %bb.q ], [ %i.dm, %bb.r ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dn, label %bb.s, label %_ZN6duckdb15make_shared_ptrINS_15CSVStateMachineEJRNS_16CSVReaderOptionsERNS_22CSVStateMachineOptionsERNS_20CSVStateMachineCacheEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !157

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #31, !noalias !923
  br label %_ZN6duckdb15make_shared_ptrINS_15CSVStateMachineEJRNS_16CSVReaderOptionsERNS_22CSVStateMachineOptionsERNS_20CSVStateMachineCacheEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_15CSVStateMachineEJRNS_16CSVReaderOptionsERNS_22CSVStateMachineOptionsERNS_20CSVStateMachineCacheEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.o
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !140, !nonnull !141, !align !142 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 120
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !288, !range !154, !noundef !141
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.t, label %bb.ao

bb.t:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_15CSVStateMachineEJRNS_16CSVReaderOptionsERNS_22CSVStateMachineOptionsERNS_20CSVStateMachineCacheEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  br i1 %.226217, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !109 ; 2 uses
  %i.dt = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !110
  store <2 x ptr> %i.dt, ptr %9, align 16, !tbaa !110
  %.not.i.i.i.i40 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i40, label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit

bb.x:                                             ; preds = %bb.v
  %i.dy = atomicrmw volatile add ptr %i.du, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !140
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit

_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit: ; preds = %bb.u, %bb.w, %bb.x
  %i.dz = phi ptr [ %i.do, %bb.u ], [ %i.do, %bb.w ], [ %.pre, %bb.x ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 128
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !233
  invoke void @_ZN6duckdb11BaseScanner11SkipCSVRowsENS_10shared_ptrINS_16CSVBufferManagerELb1EEERKNS1_INS_15CSVStateMachineELb1EEEm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::CSVIterator") align 8 %8, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.eb)
          to label %bb.y unwind label %bb.ag

bb.y:                                             ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %4, ptr noundef nonnull align 8 dereferenceable(65) %8, i64 65, i1 false), !tbaa.struct !929
  %i.ec = load ptr, ptr %i.an, align 8, !tbaa !109 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 4 uses
  %i.ee = load atomic i64, ptr %i.ed acquire, align 8 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 4294967297
  %i.eg = trunc i64 %i.ee to i32                  ; 2 uses
  br i1 %i.ef, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ed, align 8, !tbaa !143
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store i32 0, ptr %i.eh, align 4, !tbaa !150
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !151
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #31, !inline_history !504
  %i.el = load ptr, ptr %i.ec, align 8, !tbaa !151
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #31, !inline_history !504
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.eo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i41 = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i.i.i41, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ep = add nsw i32 %i.eg, -1
  store i32 %i.ep, ptr %i.ed, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42

bb.ad:                                            ; preds = %bb.ab
  %i.eq = atomicrmw volatile add ptr %i.ed, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i43 = phi i32 [ %i.eg, %bb.ac ], [ %i.eq, %bb.ad ]
  %i.er = icmp eq i32 %.0.i.i.i.i.i43, 1
  br i1 %i.er, label %bb.ae, label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit, !prof !157

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #31
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit: ; preds = %bb.y, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ah

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.es = load ptr, ptr %6, align 8, !tbaa !103   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.t
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.sink.split

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body38

bb.ag:                                            ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.bc

bb.ah:                                            ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZN6duckdb9make_uniqINS_18ColumnCountScannerEJRNS_10shared_ptrINS_16CSVBufferManagerELb1EEENS2_INS_15CSVStateMachineELb1EEERNS2_INS_15CSVErrorHandlerELb1EEERKmRNS_11CSVIteratorEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.503") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6duckdb16CSVReaderOptions10sniff_sizeE, ptr noundef nonnull align 8 dereferenceable(65) %4)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.ew = load ptr, ptr %i.al, align 8, !tbaa !930 ; 6 uses
  %i.ex = load ptr, ptr %i.am, align 8, !tbaa !931
  %.not.i = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i, label %bb.aj, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.ai
  %i.ey = load i64, ptr %10, align 8, !tbaa !722
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !722
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.ez, ptr %i.al, align 8, !tbaa !930
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fa = load ptr, ptr %1, align 8, !tbaa !932   ; 10 uses
  %i.fb = ptrtoint ptr %i.ew to i64               ; 3 uses
  %i.fc = ptrtoint ptr %i.fa to i64               ; 3 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 3 uses
  %i.fe = icmp eq i64 %i.fd, 9223372036854775800
  br i1 %i.fe, label %bb.ak, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #35
          to label %.noexc49 unwind label %.loopexit.split-lp106

.noexc49:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.ff = ashr exact i64 %i.fd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fg = add nsw i64 %.sroa.speculated.i.i.i, %i.ff ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  %i.fi = call i64 @llvm.umin.i64(i64 %i.fg, i64 1152921504606846975)
  %i.fj = select i1 %i.fh, i64 1152921504606846975, i64 %i.fi ; 3 uses
  %.not.i.i.i47 = icmp ne i64 %i.fj, 0
  call void @llvm.assume(i1 %.not.i.i.i47)
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #32
          to label %.noexc50 unwind label %.loopexit105 ; 10 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fd
  %i.fn = load i64, ptr %10, align 8, !tbaa !722
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !722
  store ptr null, ptr %10, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fa, %i.ew
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc50
  %12 = add i64 %i.fb, -8
  %13 = sub i64 %12, %i.fc                        ; 2 uses
  %i.fo = lshr i64 %13, 3
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader324, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.fl, i64 8
  %i.fq = add i64 %i.fb, -8
  %i.fr = sub i64 %i.fq, %i.fc
  %i.fs = and i64 %i.fr, -8                       ; 2 uses
  %scevgep294 = getelementptr i8, ptr %scevgep, i64 %i.fs
  %scevgep295 = getelementptr i8, ptr %i.fa, i64 8
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.fs
  %bound0 = icmp ult ptr %i.fl, %scevgep296
  %bound1 = icmp ult ptr %i.fa, %scevgep294
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader324, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 4611686018427387900     ; 3 uses
  %i.ft = shl i64 %n.vec, 3                       ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fl, i64 %i.ft  ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fa, i64 %i.ft
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fl, i64 %i.fw ; 2 uses
  %next.gep297 = getelementptr i8, ptr %i.fa, i64 %i.fw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  %i.fx = getelementptr i8, ptr %next.gep297, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep297, align 8, !tbaa !722, !alias.scope !938, !noalias !933
  %wide.load298 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !722, !alias.scope !938, !noalias !933
  %i.fy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !722, !alias.scope !941, !noalias !938
  store <2 x i64> %wide.load298, ptr %i.fy, align 8, !tbaa !722, !alias.scope !941, !noalias !938
  %i.fz = getelementptr i8, ptr %next.gep297, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep297, align 8, !tbaa !722, !alias.scope !938, !noalias !933
  store <2 x ptr> splat (ptr null), ptr %i.fz, align 8, !tbaa !722, !alias.scope !938, !noalias !933
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !943

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader324

.lr.ph.i.i.i.i.i.i.preheader324:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.fl, %vector.memcheck ], [ %i.fl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fu, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.fa, %vector.memcheck ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader324, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader324 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader324 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  %i.gb = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !936, !noalias !933
  store i64 %i.gb, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !933, !noalias !936
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !936, !noalias !933
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i48 = icmp eq ptr %i.gc, %i.ew
  br i1 %.not.i.i.i.i.i.i48, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !944

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc50
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fl, %.noexc50 ], [ %i.fu, %middle.block ], [ %i.gd, %.lr.ph.i.i.i.i.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fa) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.al
  store ptr %i.fl, ptr %1, align 8, !tbaa !932
  store ptr %i.ge, ptr %i.al, align 8, !tbaa !930
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fj
  store ptr %i.gf, ptr %i.am, align 8, !tbaa !931
  %.pr = load ptr, ptr %10, align 8, !tbaa !722   ; 3 uses
  %.not.i51 = icmp eq ptr %.pr, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.gg = load ptr, ptr %.pr, align 8, !tbaa !151
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(472) %.pr) #31, !inline_history !724
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.at

bb.am:                                            ; preds = %bb.ah
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit54

.loopexit105:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit107 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp106:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp106, %.loopexit105
  %lpad.phi109 = phi { ptr, i32 } [ %lpad.loopexit107, %.loopexit105 ], [ %lpad.loopexit.split-lp108, %.loopexit.split-lp106 ] ; 2 uses
  %i.gk = load ptr, ptr %10, align 8, !tbaa !722  ; 3 uses
  %.not.i52 = icmp eq ptr %i.gk, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit54, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i53

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i53: ; preds = %bb.an
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !151
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(472) %i.gk) #31, !inline_history !724
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit54

_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit54: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i53, %bb.an, %bb.am
  %.pn31 = phi { ptr, i32 } [ %i.gj, %bb.am ], [ %lpad.phi109, %bb.an ], [ %lpad.phi109, %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.bc

bb.ao:                                            ; preds = %_ZN6duckdb15make_shared_ptrINS_15CSVStateMachineEJRNS_16CSVReaderOptionsERNS_22CSVStateMachineOptionsERNS_20CSVStateMachineCacheEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  invoke void @_ZN6duckdb9make_uniqINS_18ColumnCountScannerEJRNS_10shared_ptrINS_16CSVBufferManagerELb1EEENS2_INS_15CSVStateMachineELb1EEERNS2_INS_15CSVErrorHandlerELb1EEERKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.503") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6duckdb16CSVReaderOptions10sniff_sizeE)
          to label %bb.ap unwind label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  %i.go = load ptr, ptr %i.al, align 8, !tbaa !930 ; 6 uses
  %i.gp = load ptr, ptr %i.am, align 8, !tbaa !931
  %.not.i55 = icmp eq ptr %i.go, %i.gp
  br i1 %.not.i55, label %bb.aq, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit70.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit70.thread: ; preds = %bb.ap
  %i.gq = load i64, ptr %11, align 8, !tbaa !722
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !722
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gr, ptr %i.al, align 8, !tbaa !930
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit73

bb.aq:                                            ; preds = %bb.ap
  %i.gs = load ptr, ptr %1, align 8, !tbaa !932   ; 10 uses
  %i.gt = ptrtoint ptr %i.go to i64               ; 3 uses
  %i.gu = ptrtoint ptr %i.gs to i64               ; 3 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 3 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775800
  br i1 %i.gw, label %bb.ar, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i56

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #35
          to label %.noexc68 unwind label %.loopexit.split-lp

.noexc68:                                         ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i56: ; preds = %bb.aq
  %i.gx = ashr exact i64 %i.gv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i57 = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i57, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 1152921504606846975)
  %i.hb = select i1 %i.gz, i64 1152921504606846975, i64 %i.ha ; 3 uses
  %.not.i.i.i58 = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i58)
  %i.hc = shl nuw nsw i64 %i.hb, 3
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #32
          to label %.noexc69 unwind label %.loopexit ; 10 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i56
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gv
  %i.hf = load i64, ptr %11, align 8, !tbaa !722
  store i64 %i.hf, ptr %i.he, align 8, !tbaa !722
  store ptr null, ptr %11, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i59 = icmp eq ptr %i.gs, %i.go
  br i1 %.not10.i.i.i.i.i.i59, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i64, label %.lr.ph.i.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i.i60.preheader:                   ; preds = %.noexc69
  %14 = add i64 %i.gt, -8
  %15 = sub i64 %14, %i.gu                        ; 2 uses
  %i.hg = lshr i64 %15, 3
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 2 uses
  %min.iters.check309 = icmp ult i64 %15, 56
  br i1 %min.iters.check309, label %.lr.ph.i.i.i.i.i.i60.preheader325, label %vector.memcheck300

vector.memcheck300:                               ; preds = %.lr.ph.i.i.i.i.i.i60.preheader
  %scevgep301 = getelementptr i8, ptr %i.hd, i64 8
  %i.hi = add i64 %i.gt, -8
  %i.hj = sub i64 %i.hi, %i.gu
  %i.hk = and i64 %i.hj, -8                       ; 2 uses
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.hk
  %scevgep303 = getelementptr i8, ptr %i.gs, i64 8
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.hk
  %bound0305 = icmp ult ptr %i.hd, %scevgep304
  %bound1306 = icmp ult ptr %i.gs, %scevgep302
  %found.conflict307 = and i1 %bound0305, %bound1306
  br i1 %found.conflict307, label %.lr.ph.i.i.i.i.i.i60.preheader325, label %vector.ph310

vector.ph310:                                     ; preds = %vector.memcheck300
  %n.vec312 = and i64 %i.hh, 4611686018427387900  ; 3 uses
  %i.hl = shl i64 %n.vec312, 3                    ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hd, i64 %i.hl  ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gs, i64 %i.hl
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph310
  %index314 = phi i64 [ 0, %vector.ph310 ], [ %index.next319, %vector.body313 ] ; 2 uses
  %i.ho = shl i64 %index314, 3                    ; 2 uses
  %next.gep315 = getelementptr i8, ptr %i.hd, i64 %i.ho ; 2 uses
  %next.gep316 = getelementptr i8, ptr %i.gs, i64 %i.ho ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.hp = getelementptr i8, ptr %next.gep316, i64 16
  %wide.load317 = load <2 x i64>, ptr %next.gep316, align 8, !tbaa !722, !alias.scope !950, !noalias !945
  %wide.load318 = load <2 x i64>, ptr %i.hp, align 8, !tbaa !722, !alias.scope !950, !noalias !945
  %i.hq = getelementptr i8, ptr %next.gep315, i64 16
  store <2 x i64> %wide.load317, ptr %next.gep315, align 8, !tbaa !722, !alias.scope !953, !noalias !950
  store <2 x i64> %wide.load318, ptr %i.hq, align 8, !tbaa !722, !alias.scope !953, !noalias !950
  %i.hr = getelementptr i8, ptr %next.gep316, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep316, align 8, !tbaa !722, !alias.scope !950, !noalias !945
  store <2 x ptr> splat (ptr null), ptr %i.hr, align 8, !tbaa !722, !alias.scope !950, !noalias !945
  %index.next319 = add nuw i64 %index314, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next319, %n.vec312
  br i1 %i.hs, label %middle.block320, label %vector.body313, !llvm.loop !955

middle.block320:                                  ; preds = %vector.body313
  %cmp.n321 = icmp eq i64 %i.hh, %n.vec312
  br i1 %cmp.n321, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i64, label %.lr.ph.i.i.i.i.i.i60.preheader325

.lr.ph.i.i.i.i.i.i60.preheader325:                ; preds = %vector.memcheck300, %.lr.ph.i.i.i.i.i.i60.preheader, %middle.block320
  %.012.i.i.i.i.i.i61.ph = phi ptr [ %i.hd, %vector.memcheck300 ], [ %i.hd, %.lr.ph.i.i.i.i.i.i60.preheader ], [ %i.hm, %middle.block320 ]
  %.0911.i.i.i.i.i.i62.ph = phi ptr [ %i.gs, %vector.memcheck300 ], [ %i.gs, %.lr.ph.i.i.i.i.i.i60.preheader ], [ %i.hn, %middle.block320 ]
  br label %.lr.ph.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i60:                             ; preds = %.lr.ph.i.i.i.i.i.i60.preheader325, %.lr.ph.i.i.i.i.i.i60
  %.012.i.i.i.i.i.i61 = phi ptr [ %i.hv, %.lr.ph.i.i.i.i.i.i60 ], [ %.012.i.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i.i60.preheader325 ] ; 2 uses
  %.0911.i.i.i.i.i.i62 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i.i60 ], [ %.0911.i.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i.i60.preheader325 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.ht = load i64, ptr %.0911.i.i.i.i.i.i62, align 8, !tbaa !722, !alias.scope !948, !noalias !945
  store i64 %i.ht, ptr %.012.i.i.i.i.i.i61, align 8, !tbaa !722, !alias.scope !945, !noalias !948
  store ptr null, ptr %.0911.i.i.i.i.i.i62, align 8, !tbaa !722, !alias.scope !948, !noalias !945
  %i.hu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i62, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i61, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i63 = icmp eq ptr %i.hu, %i.go
  br i1 %.not.i.i.i.i.i.i63, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i64, label %.lr.ph.i.i.i.i.i.i60, !llvm.loop !956

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i64: ; preds = %.lr.ph.i.i.i.i.i.i60, %middle.block320, %.noexc69
  %.0.lcssa.i.i.i.i.i.i65 = phi ptr [ %i.hd, %.noexc69 ], [ %i.hm, %middle.block320 ], [ %i.hv, %.lr.ph.i.i.i.i.i.i60 ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i65, i64 8
  %.not.i23.i.i66 = icmp eq ptr %i.gs, null
  br i1 %.not.i23.i.i66, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit70, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i64
  call void @_ZdlPv(ptr noundef nonnull %i.gs) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit70

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit70: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i64, %bb.as
  store ptr %i.hd, ptr %1, align 8, !tbaa !932
  store ptr %i.hw, ptr %i.al, align 8, !tbaa !930
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.hx, ptr %i.am, align 8, !tbaa !931
  %.pr101 = load ptr, ptr %11, align 8, !tbaa !722 ; 3 uses
  %.not.i71 = icmp eq ptr %.pr101, null
  br i1 %.not.i71, label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit73, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i72

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i72: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit70
  %i.hy = load ptr, ptr %.pr101, align 8, !tbaa !151
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(472) %.pr101) #31, !inline_history !724
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit73

_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit73: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit70.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit70, %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit73, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit
  %.428 = phi i1 [ true, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit ], [ %.226217, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit73 ] ; 2 uses
  %i.ib = load ptr, ptr %i.ai, align 8, !tbaa !109 ; 8 uses
  %.not.i.i.i74 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i74, label %_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 4 uses
  %i.id = load atomic i64, ptr %i.ic acquire, align 8 ; 2 uses
  %i.ie = icmp eq i64 %i.id, 4294967297
  %i.if = trunc i64 %i.id to i32                  ; 2 uses
  br i1 %i.ie, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ic, align 8, !tbaa !143
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 0, ptr %i.ig, align 4, !tbaa !150
  %i.ih = load ptr, ptr %i.ib, align 8, !tbaa !151
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #31, !inline_history !572
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !151
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #31, !inline_history !572
  br label %_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EED2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.in = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i75 = icmp eq i8 %i.in, 0
  br i1 %.not.i.i.i.i75, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.io = add nsw i32 %i.if, -1
  store i32 %i.io, ptr %i.ic, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i76

bb.ay:                                            ; preds = %bb.aw
  %i.ip = atomicrmw volatile add ptr %i.ic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i76: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i77 = phi i32 [ %i.if, %bb.ax ], [ %i.ip, %bb.ay ]
  %i.iq = icmp eq i32 %.0.i.i.i.i.i77, 1
  br i1 %i.iq, label %bb.az, label %_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EED2Ev.exit, !prof !157

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i76
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #31
  br label %_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EED2Ev.exit: ; preds = %bb.at, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i76, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ir = load ptr, ptr %i.x, align 8, !tbaa !103 ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.y
  br i1 %i.is, label %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ir) #30
  br label %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit

_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit:      ; preds = %_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.089.0216, i64 32 ; 2 uses
  %.not104 = icmp eq ptr %i.it, %i.ba
  br i1 %.not104, label %._crit_edge, label %.lr.ph

bb.ba:                                            ; preds = %bb.ao
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit80

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i56
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp:                               ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.iv = load ptr, ptr %11, align 8, !tbaa !722  ; 3 uses
  %.not.i78 = icmp eq ptr %i.iv, null
  br i1 %.not.i78, label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit80, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i79

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i79: ; preds = %bb.bb
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !151
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(472) %i.iv) #31, !inline_history !724
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit80

_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit80: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i79, %bb.bb, %bb.ba
  %.pn = phi { ptr, i32 } [ %i.iu, %bb.ba ], [ %lpad.phi, %bb.bb ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit80, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit54, %bb.ag
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit54 ], [ %i.ev, %bb.ag ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit80 ] ; 4 uses
  %i.iz = load ptr, ptr %i.ai, align 8, !tbaa !109 ; 8 uses
  %.not.i.i.i81 = icmp eq ptr %i.iz, null
end_hunk_0
begin_hunk_1_@_ZN6duckdb10CSVSniffer22DetectNewLineDelimiterERNS_16CSVBufferManagerE:bb.a

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0
  %i.m = load i8, ptr %i.l, align 1, !tbaa !100
  switch i8 %i.m, label %bb.h [
    i8 13, label %bb.i
    i8 10, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.n = trunc nuw i8 %.015 to i1
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i8 [ 0, %bb.h ], [ 1, %bb.g ]
  %i.o = add nuw i64 %.0, 1
  br label %bb.c, !llvm.loop !971

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.d
  %.014 = phi i8 [ 4, %bb.h ], [ 2, %bb.g ], [ 4, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.r, align 8, !tbaa !143
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !150
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !151
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !972
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !151
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31, !inline_history !972
  br label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.n ], [ %i.ae, %bb.o ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.p, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit, !prof !157

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #31
  br label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  %i.ag = trunc nuw i8 %.015 to i1
  %.018 = select i1 %i.ag, i8 %.014, i8 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret i8 %.018

bb.q:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.e ]
  call void @_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(257) ptr @_ZNK6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EE13AssertNotNullEb.exit, !prof !157

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb11BaseScanner11SkipCSVRowsENS_10shared_ptrINS_16CSVBufferManagerELb1EEERKNS1_INS_15CSVStateMachineELb1EEEm(ptr dead_on_unwind writable sret(%"struct.duckdb::CSVIterator") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !930  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !931
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !722
  store i64 %i.e, ptr %i.b, align 8, !tbaa !722
  store ptr null, ptr %1, align 8, !tbaa !722
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !930
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !932    ; 10 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #35
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %i.t = load i64, ptr %1, align 8, !tbaa !722
  store i64 %i.t, ptr %i.s, align 8, !tbaa !722
  store ptr null, ptr %1, align 8, !tbaa !722
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.h, -8
  %3 = sub i64 %2, %i.i                           ; 2 uses
  %i.u = lshr i64 %3, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.h, -8
  %i.x = sub i64 %i.w, %i.i
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep5 = getelementptr i8, ptr %i.g, i64 %i.z
  %bound0 = icmp ult ptr %i.r, %scevgep5
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.g, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.ae = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !722, !alias.scope !978, !noalias !973
  %wide.load7 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !722, !alias.scope !978, !noalias !973
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !722, !alias.scope !981, !noalias !978
  store <2 x i64> %wide.load7, ptr %i.af, align 8, !tbaa !722, !alias.scope !981, !noalias !978
  %i.ag = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !722, !alias.scope !978, !noalias !973
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !722, !alias.scope !978, !noalias !973
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !983

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !976, !noalias !973
  store i64 %i.ai, ptr %.012.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !973, !noalias !976
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !976, !noalias !973
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !984

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !932
  store ptr %i.al, ptr %i.a, align 8, !tbaa !930
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.am, ptr %i.c, align 8, !tbaa !931
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_18ColumnCountScannerEJRNS_10shared_ptrINS_16CSVBufferManagerELb1EEENS2_INS_15CSVStateMachineELb1EEERNS2_INS_15CSVErrorHandlerELb1EEERKmRNS_11CSVIteratorEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.503") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(65) %5) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::shared_ptr", align 16 ; 4 uses
  %7 = alloca %"class.duckdb::shared_ptr.3", align 16 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(472) ptr @_Znwm(i64 noundef 472) #32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !110
  store <2 x ptr> %i.e, ptr %6, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit

_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109  ; 2 uses
  %i.n = load <2 x ptr>, ptr %3, align 8, !tbaa !110
  store <2 x ptr> %i.n, ptr %7, align 16, !tbaa !110
  %.not.i.i.i.i7 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i7, label %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EEC2ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i8 = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EEC2ERKS2_.exit

_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EEC2ERKS2_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit, %bb.f, %bb.g
  %i.t = load i64, ptr %4, align 8, !tbaa !233
  invoke void @_ZN6duckdb18ColumnCountScannerC1ENS_10shared_ptrINS_16CSVBufferManagerELb1EEERKNS1_INS_15CSVStateMachineELb1EEENS1_INS_15CSVErrorHandlerELb1EEEmNS_11CSVIteratorE(ptr noundef nonnull align 8 dereferenceable(472) %i.a, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %7, i64 noundef %i.t, ptr noundef nonnull byval(%"struct.duckdb::CSVIterator") align 8 %5)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EEC2ERKS2_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !722
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !109  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.v, align 8, !tbaa !143
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !150
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !151
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #31, !inline_history !503
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !151
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #31, !inline_history !503
  br label %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i9 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.l ], [ %i.ai, %bb.m ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.n, label %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev.exit, !prof !157

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #31
  br label %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !109 ; 8 uses
  %.not.i.i.i10 = icmp eq ptr %i.ak, null
end_hunk_1
begin_hunk_2_@_ZN6duckdb10CSVSniffer23AnalyzeDialectCandidateENS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEERNS_14CandidateStatsERNS_6vectorIS5_Lb1ESaIS5_EEE:bb.a
  %i.nw = load i8, ptr %i.nv, align 2, !tbaa !998, !range !154, !noundef !141
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.ce

.critedge317:                                     ; preds = %bb.ce, %.critedge315, %bb.cd, %bb.cb, %bb.by
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !996
  store i64 %.1276.lcssa, ptr %i.gv, align 8, !tbaa !139
  store i64 %.0279.lcssa, ptr %i.gr, align 8, !tbaa !997
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.0283.lcssa, ptr %i.ny, align 8, !tbaa !1000
  %i.nz = load ptr, ptr %i.aj, align 8, !tbaa !140, !nonnull !141, !align !142 ; 5 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 120
  %i.ob = load i8, ptr %i.oa, align 8, !tbaa !288, !range !154, !noundef !141
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %.critedge317
  %.not306 = icmp eq i64 %.0.lcssa, %.0267.lcssa
  br i1 %.not306, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 712
  %i.oe = load i8, ptr %i.od, align 8, !tbaa !602, !range !154, !noundef !141
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 145
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !153, !range !154, !noundef !141
  %i.oi = trunc nuw i8 %i.oh to i1
  %i.oj = icmp ne i64 %.0281.lcssa, 0
  %or.cond29.not = select i1 %i.oi, i1 true, i1 %i.oj
  br i1 %or.cond29.not, label %bb.ci, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nz, i64 128
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !233
  br label %.sink.split495

bb.cj:                                            ; preds = %.critedge317
  %i.om = getelementptr inbounds nuw i8, ptr %i.nz, i64 712
  %i.on = load i8, ptr %i.om, align 8, !tbaa !602, !range !154, !noundef !141
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.ck, label %.sink.split495

.sink.split495:                                   ; preds = %bb.cj, %bb.ci
  %.0264.lcssa.sink = phi i64 [ %i.ol, %bb.ci ], [ %.0264.lcssa, %bb.cj ]
  %i.op = getelementptr inbounds nuw i8, ptr %i.kp, i64 192
  store i8 0, ptr %i.op, align 8, !tbaa !153
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kp, i64 200
  store i64 %.0264.lcssa.sink, ptr %.sroa.4357.0..sroa_idx, align 8, !tbaa !233
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split495, %bb.cj
  %i.oq = load ptr, ptr %3, align 8, !tbaa !932   ; 3 uses
  %i.or = load ptr, ptr %i.hr, align 8, !tbaa !930 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.or, %i.oq
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ck, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ow, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.oq, %bb.ck ] ; 2 uses
  %i.os = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !722 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !151
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8
  tail call void %i.ov(ptr noundef nonnull align 8 dereferenceable(472) %i.os) #31, !inline_history !1001
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ow, %i.or
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !727

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.oq, ptr %i.hr, align 8, !tbaa !930
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit: ; preds = %bb.ck, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ox = getelementptr inbounds nuw i8, ptr %i.kp, i64 128
  store i64 %.1276.lcssa, ptr %i.ox, align 8, !tbaa !450
  %i.oy = load i64, ptr %i.ac, align 8, !tbaa !505
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.oy, ptr %i.oz, align 8, !tbaa !791
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNK6duckdb10SetColumns5IsSetEv.exit342.thread:   ; preds = %bb.az, %bb.ay
  %or.cond35 = select i1 %i.hp, i1 %i.hq, i1 false
  %or.cond38 = select i1 %or.cond35, i1 %i.ia, i1 false
  %or.cond41 = select i1 %or.cond38, i1 %i.ho, i1 false
  %or.cond41.not = xor i1 %or.cond41, true
  %or.cond44 = select i1 %or.cond41.not, i1 true, i1 %i.gt
  %or.cond47 = select i1 %or.cond44, i1 true, i1 %i.ic
  br i1 %or.cond47, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNK6duckdb10SetColumns5IsSetEv.exit342.thread
  %i.pa = load i64, ptr %i.gv, align 8, !tbaa !139
  %i.pb = icmp eq i64 %.1276.lcssa, %i.pa
  %or.cond50 = and i1 %i.id, %i.pb
  br i1 %or.cond50, label %bb.cm, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.cm:                                            ; preds = %bb.cl
  %i.pc = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.pd = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb11BaseScanner15GetStateMachineEv(ptr noundef nonnull align 8 dereferenceable(208) %i.pc) ; 3 uses
  %i.pe = load ptr, ptr %i.aj, align 8, !tbaa !140, !nonnull !141, !align !142 ; 5 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 120
  %i.pg = load i8, ptr %i.pf, align 8, !tbaa !288, !range !154, !noundef !141
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %.not308 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not308, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 712
  %i.pj = load i8, ptr %i.pi, align 8, !tbaa !602, !range !154, !noundef !141
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.pk, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pe, i64 145
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !153, !range !154, !noundef !141
  %i.pn = trunc nuw i8 %i.pm to i1
  br i1 %i.pn, label %bb.cq, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %i.po = getelementptr inbounds nuw i8, ptr %i.pe, i64 128
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !233
  br label %.critedge321.sink.split

bb.cr:                                            ; preds = %bb.cm
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 712
  %i.pr = load i8, ptr %i.pq, align 8, !tbaa !602, !range !154, !noundef !141
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %.critedge321, label %.critedge321.sink.split

.critedge321.sink.split:                          ; preds = %bb.cr, %bb.cq
  %.0.lcssa.sink496 = phi i64 [ %i.pp, %bb.cq ], [ %.0.lcssa, %bb.cr ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pd, i64 192
  store i8 0, ptr %i.pt, align 8, !tbaa !153
  %.sroa.4351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pd, i64 200
  store i64 %.0.lcssa.sink496, ptr %.sroa.4351.0..sroa_idx, align 8, !tbaa !233
  br label %.critedge321

.critedge321:                                     ; preds = %.critedge321.sink.split, %bb.cr
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pd, i64 128
  store i64 %.1276.lcssa, ptr %i.pu, align 8, !tbaa !450
  %i.pv = load i64, ptr %i.ac, align 8, !tbaa !505
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.pv, ptr %i.pw, align 8, !tbaa !791
  %i.px = load ptr, ptr %i.hr, align 8, !tbaa !930 ; 6 uses
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !931
  %.not.i349 = icmp eq ptr %i.px, %i.pz
  br i1 %.not.i349, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.critedge321
  %i.qa = load i64, ptr %1, align 8, !tbaa !722
  store i64 %i.qa, ptr %i.px, align 8, !tbaa !722
  store ptr null, ptr %1, align 8, !tbaa !722
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store ptr %i.qb, ptr %i.hr, align 8, !tbaa !930
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.ct:                                            ; preds = %.critedge321
  %i.qc = load ptr, ptr %3, align 8, !tbaa !932   ; 10 uses
  %i.qd = ptrtoint ptr %i.px to i64               ; 3 uses
  %i.qe = ptrtoint ptr %i.qc to i64               ; 3 uses
  %i.qf = sub i64 %i.qd, %i.qe                    ; 3 uses
  %i.qg = icmp eq i64 %i.qf, 9223372036854775800
  br i1 %i.qg, label %bb.cu, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #35
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ct
  %i.qh = ashr exact i64 %i.qf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.qh, i64 1)
  %i.qi = add nsw i64 %.sroa.speculated.i.i.i, %i.qh ; 2 uses
  %i.qj = icmp ult i64 %i.qi, %i.qh
  %i.qk = tail call i64 @llvm.umin.i64(i64 %i.qi, i64 1152921504606846975)
  %i.ql = select i1 %i.qj, i64 1152921504606846975, i64 %i.qk ; 3 uses
  %.not.i.i.i350 = icmp ne i64 %i.ql, 0
  tail call void @llvm.assume(i1 %.not.i.i.i350)
  %i.qm = shl nuw nsw i64 %i.ql, 3
  %i.qn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qm) #32 ; 10 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qf
  %i.qp = load i64, ptr %1, align 8, !tbaa !722
  store i64 %i.qp, ptr %i.qo, align 8, !tbaa !722
  store ptr null, ptr %1, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.qc, %i.px
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %5 = add i64 %i.qd, -8
  %6 = sub i64 %5, %i.qe                          ; 2 uses
  %i.qq = lshr i64 %6, 3
  %i.qr = add nuw nsw i64 %i.qq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader505, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.qs = add i64 %i.qd, -8
  %i.qt = sub i64 %i.qs, %i.qe
  %i.qu = and i64 %i.qt, -8
  %i.qv = add i64 %i.qu, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.qn, i64 %i.qv
  %scevgep501 = getelementptr i8, ptr %i.qc, i64 %i.qv
  %bound0 = icmp ult ptr %i.qn, %scevgep501
  %bound1 = icmp ult ptr %i.qc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader505, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qr, 4611686018427387900     ; 3 uses
  %i.qw = shl i64 %n.vec, 3                       ; 2 uses
  %i.qx = getelementptr i8, ptr %i.qn, i64 %i.qw  ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qc, i64 %i.qw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.qn, i64 %i.qz ; 2 uses
  %next.gep502 = getelementptr i8, ptr %i.qc, i64 %i.qz ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.ra = getelementptr i8, ptr %next.gep502, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep502, align 8, !tbaa !722, !alias.scope !1007, !noalias !1002
  %wide.load503 = load <2 x i64>, ptr %i.ra, align 8, !tbaa !722, !alias.scope !1007, !noalias !1002
  %i.rb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !722, !alias.scope !1010, !noalias !1007
  store <2 x i64> %wide.load503, ptr %i.rb, align 8, !tbaa !722, !alias.scope !1010, !noalias !1007
  %i.rc = getelementptr i8, ptr %next.gep502, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep502, align 8, !tbaa !722, !alias.scope !1007, !noalias !1002
  store <2 x ptr> splat (ptr null), ptr %i.rc, align 8, !tbaa !722, !alias.scope !1007, !noalias !1002
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rd = icmp eq i64 %index.next, %n.vec
  br i1 %i.rd, label %middle.block, label %vector.body, !llvm.loop !1012

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader505

.lr.ph.i.i.i.i.i.i.preheader505:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.qn, %vector.memcheck ], [ %i.qn, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.qx, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.qc, %vector.memcheck ], [ %i.qc, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.qy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader505, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.rg, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader505 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.rf, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader505 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.re = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1005, !noalias !1002
  store i64 %i.re, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1002, !noalias !1005
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1005, !noalias !1002
  %i.rf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rf, %i.px
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1013

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.qn, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.qx, %middle.block ], [ %i.rg, %.lr.ph.i.i.i.i.i.i ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.qc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.qc) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.cv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.qn, ptr %3, align 8, !tbaa !932
  store ptr %i.rh, ptr %i.hr, align 8, !tbaa !930
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.ql
  store ptr %i.ri, ptr %i.py, align 8, !tbaa !931
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %.lr.ph427, %bb.cc, %_ZNK6duckdb10SetColumns5IsSetEv.exit342, %bb.av, %bb.at, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.cs, %bb.q, %bb.m, %bb.be, %bb.bd, %bb.ch, %bb.bx, %bb.bu, %bb.bp, %bb.bj, %bb.bg, %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, %bb.bs, %bb.cp, %bb.cl, %_ZNK6duckdb10SetColumns5IsSetEv.exit342.thread, %bb.c, %_ZN6duckdb8CSVErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !722    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !157

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.96, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZN6duckdb15CSVErrorHandler8HasErrorENS_12CSVErrorTypeE(ptr noundef nonnull align 8 dereferenceable(136), i8 noundef zeroext) local_unnamed_addr #5

declare void @_ZN6duckdb15CSVErrorHandler13GetFirstErrorENS_12CSVErrorTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::CSVError") align 8, ptr noundef nonnull align 8 dereferenceable(136), i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb8CSVErroraSEOS0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !103    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !103    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !99   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !157

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !100
  store i8 %i.j, ptr %i.a, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load i64, ptr %i.g, align 8, !tbaa !99   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb10CSVSniffer16RefineCandidatesEv:bb.a
  %.051.lcssa345 = phi i1 [ true, %._crit_edge.thread ], [ %.152, %._crit_edge ], [ %.152, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ]
  %i.ah = phi ptr [ %i.z, %._crit_edge.thread ], [ %.pre, %._crit_edge ], [ %.pre, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.051.lcssa345, label %._crit_edge248, label %bb.c

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ai = phi ptr [ %i.es, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ null, %bb.d ] ; 10 uses
  %i.aj = phi ptr [ %i.et, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ null, %bb.d ] ; 8 uses
  %i.ak = phi ptr [ %i.eu, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ null, %bb.d ] ; 10 uses
  %i.al = phi ptr [ %.pre267, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ null, %bb.d ] ; 26 uses
  %.051244 = phi i1 [ %.152, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ false, %bb.d ] ; 4 uses
  %.sroa.0198.0243 = phi ptr [ %i.ev, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.z, %bb.d ] ; 14 uses
  %i.am = load ptr, ptr %.sroa.0198.0243, align 8, !tbaa !722 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %.noexc.i, label %_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv.exit, !prof !157

.noexc.i:                                         ; preds = %.lr.ph
  %i.an = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.ao, ptr %1, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 49, ptr %i.a, align 8, !tbaa !233
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc197 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc197:                                        ; preds = %.noexc.i
  store ptr %i.ap, ptr %1, align 8, !tbaa !103
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !233 ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ap, ptr noundef nonnull align 1 dereferenceable(49) @.str.96, i64 49, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !99
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  store i8 0, ptr %i.as, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc197
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.i unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %.noexc197
  %.0.i.i = phi i1 [ false, %bb.f ], [ true, %.noexc197 ] ; 2 uses
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ao
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.av) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i.i, label %bb.h, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i.i, label %bb.h, label %.body

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.an) #31
  br label %.body

bb.i:                                             ; preds = %bb.f
  unreachable

_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %.lr.ph
  %i.ax = invoke noundef zeroext i1 @_ZNK6duckdb11BaseScanner12FinishedFileEv(ptr noundef nonnull align 8 dereferenceable(208) %i.am)
          to label %bb.j unwind label %.loopexit222

bb.j:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv.exit
  %i.ay = icmp eq ptr %i.al, %i.ak
  br i1 %i.ay, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.az = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0198.0243)
          to label %bb.l unwind label %.loopexit222 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !151
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(472) %i.az)
          to label %bb.m unwind label %.loopexit222

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !505
  %i.bg = load i64, ptr %i.s, align 8, !tbaa !791
  %i.bh = add i64 %i.bg, %i.bf
  store i64 %i.bh, ptr %i.s, align 8, !tbaa !791
  br label %bb.n

.loopexit222:                                     ; preds = %_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv.exit, %bb.k, %bb.l, %bb.p, %bb.q, %bb.w, %bb.x, %bb.z, %bb.aa, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i64
  %lpad.loopexit224 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp223:                            ; preds = %.invoke
  %lpad.loopexit.split-lp225 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit222, %.loopexit.split-lp223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.h ], [ %lpad.loopexit224, %.loopexit222 ], [ %lpad.loopexit.split-lp225, %.loopexit.split-lp223 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.bu

bb.n:                                             ; preds = %bb.m, %bb.j
  br i1 %i.ax, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !140, !nonnull !141, !align !142
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 616
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !783
  %i.bl = icmp eq i64 %.046246, %i.bk
  br i1 %i.bl, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0198.0243)
          to label %bb.q unwind label %.loopexit222 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !151
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(472) %i.bm)
          to label %bb.r unwind label %.loopexit222

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !990, !range !154, !noundef !141
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = load i64, ptr %.sroa.0198.0243, align 8, !tbaa !722
  store i64 %i.bu, ptr %i.ak, align 8, !tbaa !722
  store ptr null, ptr %.sroa.0198.0243, align 8, !tbaa !722
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.bv, ptr %i.r, align 8, !tbaa !930
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.u:                                             ; preds = %bb.s
  %i.bw = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.bx = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.ae, %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #35
          to label %.cont unwind label %.loopexit.split-lp223

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #32
          to label %.noexc62 unwind label %.loopexit222 ; 11 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  %i.ci = load i64, ptr %.sroa.0198.0243, align 8, !tbaa !722
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !722
  store ptr null, ptr %.sroa.0198.0243, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc62
  %5 = add i64 %i.bw, -8
  %6 = sub i64 %5, %i.bx                          ; 2 uses
  %i.cj = lshr i64 %6, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader549, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cg, i64 8
  %i.cl = add i64 %i.bw, -8
  %i.cm = sub i64 %i.cl, %i.bx
  %i.cn = and i64 %i.cm, -8                       ; 2 uses
  %scevgep391 = getelementptr i8, ptr %scevgep, i64 %i.cn
  %scevgep392 = getelementptr i8, ptr %i.al, i64 8
  %scevgep393 = getelementptr i8, ptr %scevgep392, i64 %i.cn
  %bound0 = icmp ult ptr %i.cg, %scevgep393
  %bound1 = icmp ult ptr %i.al, %scevgep391
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader549, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ck, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cg, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.al, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cr ; 2 uses
  %next.gep394 = getelementptr i8, ptr %i.al, i64 %i.cr ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.cs = getelementptr i8, ptr %next.gep394, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep394, align 8, !tbaa !722, !alias.scope !1022, !noalias !1017
  %wide.load395 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !722, !alias.scope !1022, !noalias !1017
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !722, !alias.scope !1025, !noalias !1022
  store <2 x i64> %wide.load395, ptr %i.ct, align 8, !tbaa !722, !alias.scope !1025, !noalias !1022
  %i.cu = getelementptr i8, ptr %next.gep394, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep394, align 8, !tbaa !722, !alias.scope !1022, !noalias !1017
  store <2 x ptr> splat (ptr null), ptr %i.cu, align 8, !tbaa !722, !alias.scope !1022, !noalias !1017
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1027

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader549

.lr.ph.i.i.i.i.i.i.i.preheader549:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader549, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader549 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader549 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1020, !noalias !1017
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1017, !noalias !1020
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !722, !alias.scope !1020, !noalias !1017
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1028

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc62
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.noexc62 ], [ %i.cp, %middle.block ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.cg, ptr %2, align 8, !tbaa !932
  store ptr %i.cz, ptr %i.r, align 8, !tbaa !930
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce ; 3 uses
  store ptr %i.da, ptr %i.t, align 8, !tbaa !931
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.w:                                             ; preds = %bb.o
  %i.db = invoke noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0198.0243)
          to label %bb.x unwind label %.loopexit222

bb.x:                                             ; preds = %bb.w
  %i.dc = invoke noundef zeroext i1 @_ZNK6duckdb10CSVSniffer24RefineCandidateNextChunkERNS_18ColumnCountScannerE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(472) %i.db)
          to label %bb.y unwind label %.loopexit222

bb.y:                                             ; preds = %bb.x
  br i1 %i.dc, label %bb.z, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.z:                                             ; preds = %bb.y
  %i.dd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0198.0243)
          to label %bb.aa unwind label %.loopexit222 ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !151
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(472) %i.dd)
          to label %bb.ab unwind label %.loopexit222

bb.ab:                                            ; preds = %bb.aa
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !990, !range !154, !noundef !141
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i63 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i63, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load i64, ptr %.sroa.0198.0243, align 8, !tbaa !722
  store i64 %i.dl, ptr %i.ak, align 8, !tbaa !722
  store ptr null, ptr %.sroa.0198.0243, align 8, !tbaa !722
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.dm, ptr %i.r, align 8, !tbaa !930
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dn = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.do = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.dp = sub i64 %i.dn, %i.do                    ; 3 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775800
  br i1 %i.dq, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i64

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i64: ; preds = %bb.ae
  %i.dr = ashr exact i64 %i.dp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i65 = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.ds = add nsw i64 %.sroa.speculated.i.i.i.i65, %i.dr ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dr
  %i.du = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975)
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.dv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #32
          to label %.noexc77 unwind label %.loopexit222 ; 11 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dp
  %i.dz = load i64, ptr %.sroa.0198.0243, align 8, !tbaa !722
  store i64 %i.dz, ptr %i.dy, align 8, !tbaa !722
  store ptr null, ptr %.sroa.0198.0243, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i67 = icmp eq ptr %i.al, %i.aj
  br i1 %.not10.i.i.i.i.i.i.i67, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i72, label %.lr.ph.i.i.i.i.i.i.i68.preheader

.lr.ph.i.i.i.i.i.i.i68.preheader:                 ; preds = %.noexc77
  %7 = add i64 %i.dn, -8
  %8 = sub i64 %7, %i.do                          ; 2 uses
  %i.ea = lshr i64 %8, 3
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check406 = icmp ult i64 %8, 56
  br i1 %min.iters.check406, label %.lr.ph.i.i.i.i.i.i.i68.preheader550, label %vector.memcheck397

vector.memcheck397:                               ; preds = %.lr.ph.i.i.i.i.i.i.i68.preheader
  %scevgep398 = getelementptr i8, ptr %i.dx, i64 8
  %i.ec = add i64 %i.dn, -8
  %i.ed = sub i64 %i.ec, %i.do
  %i.ee = and i64 %i.ed, -8                       ; 2 uses
  %scevgep399 = getelementptr i8, ptr %scevgep398, i64 %i.ee
  %scevgep400 = getelementptr i8, ptr %i.al, i64 8
  %scevgep401 = getelementptr i8, ptr %scevgep400, i64 %i.ee
  %bound0402 = icmp ult ptr %i.dx, %scevgep401
  %bound1403 = icmp ult ptr %i.al, %scevgep399
  %found.conflict404 = and i1 %bound0402, %bound1403
  br i1 %found.conflict404, label %.lr.ph.i.i.i.i.i.i.i68.preheader550, label %vector.ph407

vector.ph407:                                     ; preds = %vector.memcheck397
  %n.vec409 = and i64 %i.eb, 4611686018427387900  ; 3 uses
  %i.ef = shl i64 %n.vec409, 3                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.al, i64 %i.ef
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph407
  %index411 = phi i64 [ 0, %vector.ph407 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %i.ei = shl i64 %index411, 3                    ; 2 uses
  %next.gep412 = getelementptr i8, ptr %i.dx, i64 %i.ei ; 2 uses
  %next.gep413 = getelementptr i8, ptr %i.al, i64 %i.ei ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.ej = getelementptr i8, ptr %next.gep413, i64 16
  %wide.load414 = load <2 x i64>, ptr %next.gep413, align 8, !tbaa !722, !alias.scope !1034, !noalias !1029
  %wide.load415 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !722, !alias.scope !1034, !noalias !1029
  %i.ek = getelementptr i8, ptr %next.gep412, i64 16
  store <2 x i64> %wide.load414, ptr %next.gep412, align 8, !tbaa !722, !alias.scope !1037, !noalias !1034
  store <2 x i64> %wide.load415, ptr %i.ek, align 8, !tbaa !722, !alias.scope !1037, !noalias !1034
  %i.el = getelementptr i8, ptr %next.gep413, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep413, align 8, !tbaa !722, !alias.scope !1034, !noalias !1029
  store <2 x ptr> splat (ptr null), ptr %i.el, align 8, !tbaa !722, !alias.scope !1034, !noalias !1029
  %index.next416 = add nuw i64 %index411, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.em, label %middle.block417, label %vector.body410, !llvm.loop !1039

middle.block417:                                  ; preds = %vector.body410
  %cmp.n418 = icmp eq i64 %i.eb, %n.vec409
  br i1 %cmp.n418, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i72, label %.lr.ph.i.i.i.i.i.i.i68.preheader550

.lr.ph.i.i.i.i.i.i.i68.preheader550:              ; preds = %vector.memcheck397, %.lr.ph.i.i.i.i.i.i.i68.preheader, %middle.block417
  %.012.i.i.i.i.i.i.i69.ph = phi ptr [ %i.dx, %vector.memcheck397 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i68.preheader ], [ %i.eg, %middle.block417 ]
  %.0911.i.i.i.i.i.i.i70.ph = phi ptr [ %i.al, %vector.memcheck397 ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i68.preheader ], [ %i.eh, %middle.block417 ]
  br label %.lr.ph.i.i.i.i.i.i.i68

.lr.ph.i.i.i.i.i.i.i68:                           ; preds = %.lr.ph.i.i.i.i.i.i.i68.preheader550, %.lr.ph.i.i.i.i.i.i.i68
  %.012.i.i.i.i.i.i.i69 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i68 ], [ %.012.i.i.i.i.i.i.i69.ph, %.lr.ph.i.i.i.i.i.i.i68.preheader550 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i70 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i68 ], [ %.0911.i.i.i.i.i.i.i70.ph, %.lr.ph.i.i.i.i.i.i.i68.preheader550 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.en = load i64, ptr %.0911.i.i.i.i.i.i.i70, align 8, !tbaa !722, !alias.scope !1032, !noalias !1029
  store i64 %i.en, ptr %.012.i.i.i.i.i.i.i69, align 8, !tbaa !722, !alias.scope !1029, !noalias !1032
  store ptr null, ptr %.0911.i.i.i.i.i.i.i70, align 8, !tbaa !722, !alias.scope !1032, !noalias !1029
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i70, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i69, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i71 = icmp eq ptr %i.eo, %i.aj
  br i1 %.not.i.i.i.i.i.i.i71, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i72, label %.lr.ph.i.i.i.i.i.i.i68, !llvm.loop !1040

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i72: ; preds = %.lr.ph.i.i.i.i.i.i.i68, %middle.block417, %.noexc77
  %.0.lcssa.i.i.i.i.i.i.i73 = phi ptr [ %i.dx, %.noexc77 ], [ %i.eg, %middle.block417 ], [ %i.ep, %.lr.ph.i.i.i.i.i.i.i68 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i73, i64 8 ; 2 uses
  %.not.i23.i.i.i74 = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i.i74, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i75, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i72
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i75

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i75: ; preds = %bb.af, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i72
  store ptr %i.dx, ptr %2, align 8, !tbaa !932
  store ptr %i.eq, ptr %i.r, align 8, !tbaa !930
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dv ; 3 uses
  store ptr %i.er, ptr %i.t, align 8, !tbaa !931
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i75, %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.t, %bb.y, %bb.ab, %bb.r
  %i.es = phi ptr [ %i.ai, %bb.r ], [ %i.ai, %bb.y ], [ %i.da, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ai, %bb.ab ], [ %i.ai, %bb.t ], [ %i.ai, %bb.ad ], [ %i.er, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i75 ] ; 2 uses
  %i.et = phi ptr [ %i.aj, %bb.r ], [ %i.aj, %bb.y ], [ %i.da, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.aj, %bb.ab ], [ %i.ai, %bb.t ], [ %i.aj, %bb.ad ], [ %i.er, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i75 ]
  %i.eu = phi ptr [ %i.ak, %bb.r ], [ %i.ak, %bb.y ], [ %i.cz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ak, %bb.ab ], [ %i.bv, %bb.t ], [ %i.dm, %bb.ad ], [ %i.eq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i75 ] ; 2 uses
  %.pre267 = phi ptr [ %i.al, %bb.r ], [ %i.al, %bb.y ], [ %i.cg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.al, %bb.ab ], [ %i.al, %bb.t ], [ %i.al, %bb.ad ], [ %i.dx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i75 ] ; 2 uses
  %.152 = phi i1 [ true, %bb.r ], [ %.051244, %bb.y ], [ true, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.051244, %bb.ab ], [ true, %bb.t ], [ %.051244, %bb.ad ], [ %.051244, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i75 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0198.0243, i64 8 ; 2 uses
  %.not212 = icmp eq ptr %i.ev, %i.aa
  br i1 %.not212, label %._crit_edge, label %.lr.ph

._crit_edge248:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.c, %.preheader227
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !932 ; 4 uses
  store ptr %i.ew, ptr %3, align 8, !tbaa !932
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 10 uses
  %i.fa = load <2 x ptr>, ptr %i.d, align 8, !tbaa !721
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !930
  store <2 x ptr> %i.fa, ptr %i.ex, align 8, !tbaa !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.fc = icmp eq ptr %i.ew, %i.fb
  br i1 %i.fc, label %.critedge, label %.lr.ph252

.lr.ph252:                                        ; preds = %._crit_edge248, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142
  %.038251 = phi i64 [ %i.kp, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142 ], [ 0, %._crit_edge248 ] ; 2 uses
  %.039250 = phi i8 [ %.3208209, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142 ], [ 0, %._crit_edge248 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.038251)
          to label %bb.ag unwind label %bb.an     ; 2 uses

bb.ag:                                            ; preds = %.lr.ph252
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !722
  store i64 %i.fe, ptr %4, align 8, !tbaa !722
  store ptr null, ptr %i.fd, align 8, !tbaa !722
  %i.ff = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ah unwind label %.loopexit217.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 66
  %i.fh = load i8, ptr %i.fg, align 2, !tbaa !998, !range !154, !noundef !141
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.fj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.aj unwind label %.loopexit217.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 67
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !999, !range !154, !noundef !141
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !930 ; 7 uses
  br i1 %i.fm, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.fo = load ptr, ptr %i.b, align 8, !tbaa !932 ; 4 uses
  %.not.i.i.i79 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i.i79, label %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ft, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.fo, %bb.ak ] ; 2 uses
  %i.fp = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !722 ; 3 uses
  %.not.i.i.i.i.i.i.i80 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i.i80, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !151
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(472) %i.fp) #31, !inline_history !1001
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %i.ft, %i.fn
  br i1 %.not.i.i.i.i.i81, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !727

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.fo, ptr %i.d, align 8, !tbaa !930
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit: ; preds = %bb.ak, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.fu = phi ptr [ %i.fn, %bb.ak ], [ %i.fo, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i ] ; 6 uses
  %i.fv = load ptr, ptr %i.ez, align 8, !tbaa !931
  %.not.i.i82 = icmp eq ptr %i.fu, %i.fv
  br i1 %.not.i.i82, label %bb.al, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread

bb.al:                                            ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  %i.fw = load ptr, ptr %i.b, align 8, !tbaa !932 ; 10 uses
  %i.fx = ptrtoint ptr %i.fu to i64               ; 3 uses
  %i.fy = ptrtoint ptr %i.fw to i64               ; 3 uses
  %i.fz = sub i64 %i.fx, %i.fy                    ; 3 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775800
  br i1 %i.ga, label %.invoke375, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i83

.invoke375:                                       ; preds = %bb.au, %bb.aq, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #35
          to label %.cont376 unwind label %.loopexit.split-lp218

.cont376:                                         ; preds = %.invoke375
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i83: ; preds = %bb.al
  %i.gb = ashr exact i64 %i.fz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i84 = call i64 @llvm.umax.i64(i64 %i.gb, i64 1)
  %i.gc = add nsw i64 %.sroa.speculated.i.i.i.i84, %i.gb ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.gb
  %i.ge = call i64 @llvm.umin.i64(i64 %i.gc, i64 1152921504606846975)
  %i.gf = select i1 %i.gd, i64 1152921504606846975, i64 %i.ge ; 3 uses
  %.not.i.i.i.i85 = icmp ne i64 %i.gf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i85)
  %i.gg = shl nuw nsw i64 %i.gf, 3
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #32
          to label %.noexc96 unwind label %.loopexit217.loopexit.split-lp ; 10 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i83
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fz
  %i.gj = load i64, ptr %4, align 8, !tbaa !722
  store i64 %i.gj, ptr %i.gi, align 8, !tbaa !722
  store ptr null, ptr %4, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i86 = icmp eq ptr %i.fw, %i.fu
  br i1 %.not10.i.i.i.i.i.i.i86, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i.i87.preheader

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %.noexc96
  %9 = add i64 %i.fx, -8
  %10 = sub i64 %9, %i.fy                         ; 2 uses
  %i.gk = lshr i64 %10, 3
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check476 = icmp ult i64 %10, 152
  br i1 %min.iters.check476, label %.lr.ph.i.i.i.i.i.i.i87.preheader540, label %vector.memcheck469

vector.memcheck469:                               ; preds = %.lr.ph.i.i.i.i.i.i.i87.preheader
  %i.gm = add i64 %i.fx, -8
  %i.gn = sub i64 %i.gm, %i.fy
  %i.go = and i64 %i.gn, -8
  %i.gp = add i64 %i.go, 8                        ; 2 uses
  %scevgep470 = getelementptr i8, ptr %i.gh, i64 %i.gp
  %scevgep471 = getelementptr i8, ptr %i.fw, i64 %i.gp
  %bound0472 = icmp ult ptr %i.gh, %scevgep471
  %bound1473 = icmp ult ptr %i.fw, %scevgep470
  %found.conflict474 = and i1 %bound0472, %bound1473
  br i1 %found.conflict474, label %.lr.ph.i.i.i.i.i.i.i87.preheader540, label %vector.ph477

vector.ph477:                                     ; preds = %vector.memcheck469
  %n.vec479 = and i64 %i.gl, 4611686018427387900  ; 3 uses
  %i.gq = shl i64 %n.vec479, 3                    ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gh, i64 %i.gq  ; 2 uses
  %i.gs = getelementptr i8, ptr %i.fw, i64 %i.gq
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph477
  %index481 = phi i64 [ 0, %vector.ph477 ], [ %index.next486, %vector.body480 ] ; 2 uses
  %i.gt = shl i64 %index481, 3                    ; 2 uses
  %next.gep482 = getelementptr i8, ptr %i.gh, i64 %i.gt ; 2 uses
  %next.gep483 = getelementptr i8, ptr %i.fw, i64 %i.gt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.gu = getelementptr i8, ptr %next.gep483, i64 16
  %wide.load484 = load <2 x i64>, ptr %next.gep483, align 8, !tbaa !722, !alias.scope !1046, !noalias !1041
  %wide.load485 = load <2 x i64>, ptr %i.gu, align 8, !tbaa !722, !alias.scope !1046, !noalias !1041
  %i.gv = getelementptr i8, ptr %next.gep482, i64 16
  store <2 x i64> %wide.load484, ptr %next.gep482, align 8, !tbaa !722, !alias.scope !1049, !noalias !1046
  store <2 x i64> %wide.load485, ptr %i.gv, align 8, !tbaa !722, !alias.scope !1049, !noalias !1046
  %i.gw = getelementptr i8, ptr %next.gep483, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep483, align 8, !tbaa !722, !alias.scope !1046, !noalias !1041
  store <2 x ptr> splat (ptr null), ptr %i.gw, align 8, !tbaa !722, !alias.scope !1046, !noalias !1041
  %index.next486 = add nuw i64 %index481, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next486, %n.vec479
  br i1 %i.gx, label %middle.block487, label %vector.body480, !llvm.loop !1051

middle.block487:                                  ; preds = %vector.body480
  %cmp.n488 = icmp eq i64 %i.gl, %n.vec479
  br i1 %cmp.n488, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i.i87.preheader540

.lr.ph.i.i.i.i.i.i.i87.preheader540:              ; preds = %vector.memcheck469, %.lr.ph.i.i.i.i.i.i.i87.preheader, %middle.block487
  %.012.i.i.i.i.i.i.i88.ph = phi ptr [ %i.gh, %vector.memcheck469 ], [ %i.gh, %.lr.ph.i.i.i.i.i.i.i87.preheader ], [ %i.gr, %middle.block487 ]
  %.0911.i.i.i.i.i.i.i89.ph = phi ptr [ %i.fw, %vector.memcheck469 ], [ %i.fw, %.lr.ph.i.i.i.i.i.i.i87.preheader ], [ %i.gs, %middle.block487 ]
  br label %.lr.ph.i.i.i.i.i.i.i87

.lr.ph.i.i.i.i.i.i.i87:                           ; preds = %.lr.ph.i.i.i.i.i.i.i87.preheader540, %.lr.ph.i.i.i.i.i.i.i87
  %.012.i.i.i.i.i.i.i88 = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i.i.i87 ], [ %.012.i.i.i.i.i.i.i88.ph, %.lr.ph.i.i.i.i.i.i.i87.preheader540 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i89 = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i87 ], [ %.0911.i.i.i.i.i.i.i89.ph, %.lr.ph.i.i.i.i.i.i.i87.preheader540 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.gy = load i64, ptr %.0911.i.i.i.i.i.i.i89, align 8, !tbaa !722, !alias.scope !1044, !noalias !1041
  store i64 %i.gy, ptr %.012.i.i.i.i.i.i.i88, align 8, !tbaa !722, !alias.scope !1041, !noalias !1044
  store ptr null, ptr %.0911.i.i.i.i.i.i.i89, align 8, !tbaa !722, !alias.scope !1044, !noalias !1041
  %i.gz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i89, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i88, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i90 = icmp eq ptr %i.gz, %i.fu
  br i1 %.not.i.i.i.i.i.i.i90, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i.i87, !llvm.loop !1052

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i91: ; preds = %.lr.ph.i.i.i.i.i.i.i87, %middle.block487, %.noexc96
  %.0.lcssa.i.i.i.i.i.i.i92 = phi ptr [ %i.gh, %.noexc96 ], [ %i.gr, %middle.block487 ], [ %i.ha, %.lr.ph.i.i.i.i.i.i.i87 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i92, i64 8
  %.not.i23.i.i.i93 = icmp eq ptr %i.fw, null
  br i1 %.not.i23.i.i.i93, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread346, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i91
  call void @_ZdlPv(ptr noundef nonnull %i.fw) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread346

bb.an:                                            ; preds = %.lr.ph252
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit

.loopexit217.loopexit:                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i125, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i109, %bb.ai, %bb.ag
  %lpad.loopexit361 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit217

.loopexit217.loopexit.split-lp:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i83
  %lpad.loopexit.split-lp362 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit217

.loopexit.split-lp218:                            ; preds = %.invoke375
  %lpad.loopexit.split-lp220 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit217

.loopexit217:                                     ; preds = %.loopexit217.loopexit, %.loopexit217.loopexit.split-lp, %.loopexit.split-lp218
  %lpad.phi221 = phi { ptr, i32 } [ %lpad.loopexit.split-lp220, %.loopexit.split-lp218 ], [ %lpad.loopexit361, %.loopexit217.loopexit ], [ %lpad.loopexit.split-lp362, %.loopexit217.loopexit.split-lp ] ; 2 uses
  %i.hd = load ptr, ptr %4, align 8, !tbaa !722   ; 3 uses
  %.not.i98 = icmp eq ptr %i.hd, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i: ; preds = %.loopexit217
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !151
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(472) %i.hd) #31, !inline_history !724
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit

bb.ao:                                            ; preds = %bb.aj
  %i.hh = trunc nuw i8 %.039250 to i1
  br i1 %i.hh, label %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit107, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hi = load ptr, ptr %i.b, align 8, !tbaa !932 ; 4 uses
  %.not.i.i.i99 = icmp eq ptr %i.fn, %i.hi
  br i1 %.not.i.i.i99, label %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit107, label %.lr.ph.i.i.i.i.i100

.lr.ph.i.i.i.i.i100:                              ; preds = %bb.ap, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i104
  %.05.i.i.i.i.i101 = phi ptr [ %i.hn, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i104 ], [ %i.hi, %bb.ap ] ; 2 uses
  %i.hj = load ptr, ptr %.05.i.i.i.i.i101, align 8, !tbaa !722 ; 3 uses
  %.not.i.i.i.i.i.i.i102 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i.i.i102, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i104, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i103

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i103: ; preds = %.lr.ph.i.i.i.i.i100
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !151
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(472) %i.hj) #31, !inline_history !1001
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i104

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i104: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i103, %.lr.ph.i.i.i.i.i100
  %i.hn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i101, i64 8 ; 2 uses
  %.not.i.i.i.i.i105 = icmp eq ptr %i.hn, %i.fn
  br i1 %.not.i.i.i.i.i105, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i106, label %.lr.ph.i.i.i.i.i100, !llvm.loop !727

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i106: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i104
  store ptr %i.hi, ptr %i.d, align 8, !tbaa !930
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit107

_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit107: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i106, %bb.ap, %bb.ao
  %i.ho = phi ptr [ %i.hi, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i106 ], [ %i.fn, %bb.ap ], [ %i.fn, %bb.ao ] ; 5 uses
  %i.hp = load ptr, ptr %i.ez, align 8, !tbaa !931
  %.not.i.i108 = icmp eq ptr %i.ho, %i.hp
  br i1 %.not.i.i108, label %bb.aq, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread.thread

bb.aq:                                            ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit107
  %i.hq = load ptr, ptr %i.b, align 8, !tbaa !932 ; 10 uses
  %i.hr = ptrtoint ptr %i.ho to i64               ; 3 uses
  %i.hs = ptrtoint ptr %i.hq to i64               ; 3 uses
  %i.ht = sub i64 %i.hr, %i.hs                    ; 3 uses
  %i.hu = icmp eq i64 %i.ht, 9223372036854775800
  br i1 %i.hu, label %.invoke375, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i109

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i109: ; preds = %bb.aq
  %i.hv = ashr exact i64 %i.ht, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i110 = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i.i110, %i.hv ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  %i.hy = call i64 @llvm.umin.i64(i64 %i.hw, i64 1152921504606846975)
  %i.hz = select i1 %i.hx, i64 1152921504606846975, i64 %i.hy ; 3 uses
  %.not.i.i.i.i111 = icmp ne i64 %i.hz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i111)
  %i.ia = shl nuw nsw i64 %i.hz, 3
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #32
          to label %.noexc122 unwind label %.loopexit217.loopexit ; 10 uses

.noexc122:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i109
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ht
  %i.id = load i64, ptr %4, align 8, !tbaa !722
  store i64 %i.id, ptr %i.ic, align 8, !tbaa !722
  store ptr null, ptr %4, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i112 = icmp eq ptr %i.hq, %i.ho
  br i1 %.not10.i.i.i.i.i.i.i112, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i117, label %.lr.ph.i.i.i.i.i.i.i113.preheader

.lr.ph.i.i.i.i.i.i.i113.preheader:                ; preds = %.noexc122
  %11 = add i64 %i.hr, -8
  %12 = sub i64 %11, %i.hs                        ; 2 uses
  %i.ie = lshr i64 %12, 3
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check430 = icmp ult i64 %12, 56
  br i1 %min.iters.check430, label %.lr.ph.i.i.i.i.i.i.i113.preheader542, label %vector.memcheck421

vector.memcheck421:                               ; preds = %.lr.ph.i.i.i.i.i.i.i113.preheader
  %scevgep422 = getelementptr i8, ptr %i.ib, i64 8
  %i.ig = add i64 %i.hr, -8
  %i.ih = sub i64 %i.ig, %i.hs
  %i.ii = and i64 %i.ih, -8                       ; 2 uses
  %scevgep423 = getelementptr i8, ptr %scevgep422, i64 %i.ii
  %scevgep424 = getelementptr i8, ptr %i.hq, i64 8
  %scevgep425 = getelementptr i8, ptr %scevgep424, i64 %i.ii
  %bound0426 = icmp ult ptr %i.ib, %scevgep425
  %bound1427 = icmp ult ptr %i.hq, %scevgep423
  %found.conflict428 = and i1 %bound0426, %bound1427
  br i1 %found.conflict428, label %.lr.ph.i.i.i.i.i.i.i113.preheader542, label %vector.ph431

vector.ph431:                                     ; preds = %vector.memcheck421
  %n.vec433 = and i64 %i.if, 4611686018427387900  ; 3 uses
  %i.ij = shl i64 %n.vec433, 3                    ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ib, i64 %i.ij  ; 2 uses
  %i.il = getelementptr i8, ptr %i.hq, i64 %i.ij
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph431
  %index435 = phi i64 [ 0, %vector.ph431 ], [ %index.next440, %vector.body434 ] ; 2 uses
  %i.im = shl i64 %index435, 3                    ; 2 uses
  %next.gep436 = getelementptr i8, ptr %i.ib, i64 %i.im ; 2 uses
  %next.gep437 = getelementptr i8, ptr %i.hq, i64 %i.im ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.in = getelementptr i8, ptr %next.gep437, i64 16
  %wide.load438 = load <2 x i64>, ptr %next.gep437, align 8, !tbaa !722, !alias.scope !1058, !noalias !1053
  %wide.load439 = load <2 x i64>, ptr %i.in, align 8, !tbaa !722, !alias.scope !1058, !noalias !1053
  %i.io = getelementptr i8, ptr %next.gep436, i64 16
  store <2 x i64> %wide.load438, ptr %next.gep436, align 8, !tbaa !722, !alias.scope !1061, !noalias !1058
  store <2 x i64> %wide.load439, ptr %i.io, align 8, !tbaa !722, !alias.scope !1061, !noalias !1058
  %i.ip = getelementptr i8, ptr %next.gep437, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep437, align 8, !tbaa !722, !alias.scope !1058, !noalias !1053
  store <2 x ptr> splat (ptr null), ptr %i.ip, align 8, !tbaa !722, !alias.scope !1058, !noalias !1053
  %index.next440 = add nuw i64 %index435, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next440, %n.vec433
  br i1 %i.iq, label %middle.block441, label %vector.body434, !llvm.loop !1063

middle.block441:                                  ; preds = %vector.body434
  %cmp.n442 = icmp eq i64 %i.if, %n.vec433
  br i1 %cmp.n442, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i117, label %.lr.ph.i.i.i.i.i.i.i113.preheader542

.lr.ph.i.i.i.i.i.i.i113.preheader542:             ; preds = %vector.memcheck421, %.lr.ph.i.i.i.i.i.i.i113.preheader, %middle.block441
  %.012.i.i.i.i.i.i.i114.ph = phi ptr [ %i.ib, %vector.memcheck421 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i113.preheader ], [ %i.ik, %middle.block441 ]
  %.0911.i.i.i.i.i.i.i115.ph = phi ptr [ %i.hq, %vector.memcheck421 ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.i113.preheader ], [ %i.il, %middle.block441 ]
  br label %.lr.ph.i.i.i.i.i.i.i113

.lr.ph.i.i.i.i.i.i.i113:                          ; preds = %.lr.ph.i.i.i.i.i.i.i113.preheader542, %.lr.ph.i.i.i.i.i.i.i113
  %.012.i.i.i.i.i.i.i114 = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i.i113 ], [ %.012.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i113.preheader542 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i115 = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i113 ], [ %.0911.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i113.preheader542 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.ir = load i64, ptr %.0911.i.i.i.i.i.i.i115, align 8, !tbaa !722, !alias.scope !1056, !noalias !1053
  store i64 %i.ir, ptr %.012.i.i.i.i.i.i.i114, align 8, !tbaa !722, !alias.scope !1053, !noalias !1056
  store ptr null, ptr %.0911.i.i.i.i.i.i.i115, align 8, !tbaa !722, !alias.scope !1056, !noalias !1053
  %i.is = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i115, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i114, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i116 = icmp eq ptr %i.is, %i.ho
  br i1 %.not.i.i.i.i.i.i.i116, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i117, label %.lr.ph.i.i.i.i.i.i.i113, !llvm.loop !1064

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i117: ; preds = %.lr.ph.i.i.i.i.i.i.i113, %middle.block441, %.noexc122
  %.0.lcssa.i.i.i.i.i.i.i118 = phi ptr [ %i.ib, %.noexc122 ], [ %i.ik, %middle.block441 ], [ %i.it, %.lr.ph.i.i.i.i.i.i.i113 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i118, i64 8
  %.not.i23.i.i.i119 = icmp eq ptr %i.hq, null
  br i1 %.not.i23.i.i.i119, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i120, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i117
  call void @_ZdlPv(ptr noundef nonnull %i.hq) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i120

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i120: ; preds = %bb.ar, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i117
  store ptr %i.ib, ptr %i.b, align 8, !tbaa !932
  store ptr %i.iu, ptr %i.d, align 8, !tbaa !930
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hz
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.sink.split

bb.as:                                            ; preds = %bb.ah
  %i.iw = trunc nuw i8 %.039250 to i1
  br i1 %i.iw, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ix = load ptr, ptr %i.d, align 8, !tbaa !930 ; 5 uses
  %i.iy = load ptr, ptr %i.ez, align 8, !tbaa !931
  %.not.i.i124 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i.i124, label %bb.au, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread.thread

bb.au:                                            ; preds = %bb.at
  %i.iz = load ptr, ptr %i.b, align 8, !tbaa !932 ; 10 uses
  %i.ja = ptrtoint ptr %i.ix to i64               ; 3 uses
  %i.jb = ptrtoint ptr %i.iz to i64               ; 3 uses
  %i.jc = sub i64 %i.ja, %i.jb                    ; 3 uses
  %i.jd = icmp eq i64 %i.jc, 9223372036854775800
  br i1 %i.jd, label %.invoke375, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i125

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i125: ; preds = %bb.au
  %i.je = ashr exact i64 %i.jc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = call i64 @llvm.umax.i64(i64 %i.je, i64 1)
  %i.jf = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.je ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.je
  %i.jh = call i64 @llvm.umin.i64(i64 %i.jf, i64 1152921504606846975)
  %i.ji = select i1 %i.jg, i64 1152921504606846975, i64 %i.jh ; 3 uses
  %.not.i.i.i.i127 = icmp ne i64 %i.ji, 0
  call void @llvm.assume(i1 %.not.i.i.i.i127)
  %i.jj = shl nuw nsw i64 %i.ji, 3
  %i.jk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #32
          to label %.noexc138 unwind label %.loopexit217.loopexit ; 10 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jc
  %i.jm = load i64, ptr %4, align 8, !tbaa !722
  store i64 %i.jm, ptr %i.jl, align 8, !tbaa !722
  store ptr null, ptr %4, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i128 = icmp eq ptr %i.iz, %i.ix
  br i1 %.not10.i.i.i.i.i.i.i128, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i129.preheader:                ; preds = %.noexc138
  %13 = add i64 %i.ja, -8
  %14 = sub i64 %13, %i.jb                        ; 2 uses
  %i.jn = lshr i64 %14, 3
  %i.jo = add nuw nsw i64 %i.jn, 1                ; 2 uses
  %min.iters.check454 = icmp ult i64 %14, 56
  br i1 %min.iters.check454, label %.lr.ph.i.i.i.i.i.i.i129.preheader543, label %vector.memcheck445

vector.memcheck445:                               ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader
  %scevgep446 = getelementptr i8, ptr %i.jk, i64 8
  %i.jp = add i64 %i.ja, -8
  %i.jq = sub i64 %i.jp, %i.jb
  %i.jr = and i64 %i.jq, -8                       ; 2 uses
  %scevgep447 = getelementptr i8, ptr %scevgep446, i64 %i.jr
  %scevgep448 = getelementptr i8, ptr %i.iz, i64 8
  %scevgep449 = getelementptr i8, ptr %scevgep448, i64 %i.jr
  %bound0450 = icmp ult ptr %i.jk, %scevgep449
  %bound1451 = icmp ult ptr %i.iz, %scevgep447
  %found.conflict452 = and i1 %bound0450, %bound1451
  br i1 %found.conflict452, label %.lr.ph.i.i.i.i.i.i.i129.preheader543, label %vector.ph455

vector.ph455:                                     ; preds = %vector.memcheck445
  %n.vec457 = and i64 %i.jo, 4611686018427387900  ; 3 uses
  %i.js = shl i64 %n.vec457, 3                    ; 2 uses
  %i.jt = getelementptr i8, ptr %i.jk, i64 %i.js  ; 2 uses
  %i.ju = getelementptr i8, ptr %i.iz, i64 %i.js
  br label %vector.body458

vector.body458:                                   ; preds = %vector.body458, %vector.ph455
  %index459 = phi i64 [ 0, %vector.ph455 ], [ %index.next464, %vector.body458 ] ; 2 uses
  %i.jv = shl i64 %index459, 3                    ; 2 uses
  %next.gep460 = getelementptr i8, ptr %i.jk, i64 %i.jv ; 2 uses
  %next.gep461 = getelementptr i8, ptr %i.iz, i64 %i.jv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %i.jw = getelementptr i8, ptr %next.gep461, i64 16
  %wide.load462 = load <2 x i64>, ptr %next.gep461, align 8, !tbaa !722, !alias.scope !1070, !noalias !1065
  %wide.load463 = load <2 x i64>, ptr %i.jw, align 8, !tbaa !722, !alias.scope !1070, !noalias !1065
  %i.jx = getelementptr i8, ptr %next.gep460, i64 16
  store <2 x i64> %wide.load462, ptr %next.gep460, align 8, !tbaa !722, !alias.scope !1073, !noalias !1070
  store <2 x i64> %wide.load463, ptr %i.jx, align 8, !tbaa !722, !alias.scope !1073, !noalias !1070
  %i.jy = getelementptr i8, ptr %next.gep461, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep461, align 8, !tbaa !722, !alias.scope !1070, !noalias !1065
  store <2 x ptr> splat (ptr null), ptr %i.jy, align 8, !tbaa !722, !alias.scope !1070, !noalias !1065
  %index.next464 = add nuw i64 %index459, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next464, %n.vec457
  br i1 %i.jz, label %middle.block465, label %vector.body458, !llvm.loop !1075

middle.block465:                                  ; preds = %vector.body458
  %cmp.n466 = icmp eq i64 %i.jo, %n.vec457
  br i1 %cmp.n466, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader543

.lr.ph.i.i.i.i.i.i.i129.preheader543:             ; preds = %vector.memcheck445, %.lr.ph.i.i.i.i.i.i.i129.preheader, %middle.block465
  %.012.i.i.i.i.i.i.i130.ph = phi ptr [ %i.jk, %vector.memcheck445 ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.jt, %middle.block465 ]
  %.0911.i.i.i.i.i.i.i131.ph = phi ptr [ %i.iz, %vector.memcheck445 ], [ %i.iz, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.ju, %middle.block465 ]
  br label %.lr.ph.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i129:                          ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader543, %.lr.ph.i.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i.i130 = phi ptr [ %i.kc, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.012.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader543 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i131 = phi ptr [ %i.kb, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.0911.i.i.i.i.i.i.i131.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader543 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %i.ka = load i64, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !722, !alias.scope !1068, !noalias !1065
  store i64 %i.ka, ptr %.012.i.i.i.i.i.i.i130, align 8, !tbaa !722, !alias.scope !1065, !noalias !1068
  store ptr null, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !722, !alias.scope !1068, !noalias !1065
  %i.kb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i131, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i130, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %i.kb, %i.ix
  br i1 %.not.i.i.i.i.i.i.i132, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129, !llvm.loop !1076

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i133: ; preds = %.lr.ph.i.i.i.i.i.i.i129, %middle.block465, %.noexc138
  %.0.lcssa.i.i.i.i.i.i.i134 = phi ptr [ %i.jk, %.noexc138 ], [ %i.jt, %middle.block465 ], [ %i.kc, %.lr.ph.i.i.i.i.i.i.i129 ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i134, i64 8
  %.not.i23.i.i.i135 = icmp eq ptr %i.iz, null
  br i1 %.not.i23.i.i.i135, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i136, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i133
  call void @_ZdlPv(ptr noundef nonnull %i.iz) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i136

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i136: ; preds = %bb.av, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i133
  store ptr %i.jk, ptr %i.b, align 8, !tbaa !932
  store ptr %i.kd, ptr %i.d, align 8, !tbaa !930
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ji
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.sink.split

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread.thread: ; preds = %bb.at, %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit107
  %.sink377 = phi ptr [ %i.ho, %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit107 ], [ %i.ix, %bb.at ] ; 2 uses
  %.3.ph203.ph = phi i8 [ 1, %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit107 ], [ 0, %bb.at ]
  %i.kf = load i64, ptr %4, align 8, !tbaa !722
  store i64 %i.kf, ptr %.sink377, align 8, !tbaa !722
  %storemerge = getelementptr inbounds nuw i8, ptr %.sink377, i64 8
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !930
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread: ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  %i.kg = load i64, ptr %4, align 8, !tbaa !722
  store i64 %i.kg, ptr %i.fu, align 8, !tbaa !722
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.kh, ptr %i.d, align 8, !tbaa !930
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.sink.split: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i120, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i136
  %.sink = phi ptr [ %i.ke, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i136 ], [ %i.iv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i120 ]
  %.3.ph.ph = phi i8 [ 0, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i136 ], [ 1, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i120 ]
  store ptr %.sink, ptr %i.ez, align 8, !tbaa !931
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.sink.split, %bb.as
  %.3.ph = phi i8 [ 1, %bb.as ], [ %.3.ph.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.sink.split ] ; 2 uses
  %.pr = load ptr, ptr %4, align 8, !tbaa !722    ; 3 uses
  %.not.i140 = icmp eq ptr %.pr, null
  br i1 %.not.i140, label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i141.thread

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i141.thread: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97
  %i.ki = load ptr, ptr %.pr, align 8, !tbaa !151
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(472) %.pr) #31, !inline_history !724
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread346: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i91, %bb.am
  store ptr %i.gh, ptr %i.b, align 8, !tbaa !932
  store ptr %i.hb, ptr %i.d, align 8, !tbaa !930
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gf
  store ptr %i.kl, ptr %i.ez, align 8, !tbaa !931
  %.pr349 = load ptr, ptr %4, align 8, !tbaa !722 ; 3 uses
  %.not.i140350 = icmp eq ptr %.pr349, null
  br i1 %.not.i140350, label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142.thread, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i141

_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142.thread: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread346
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i141: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread346
  %i.km = load ptr, ptr %.pr349, align 8, !tbaa !151
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(472) %.pr349) #31, !inline_history !724
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168

_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97, %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i141.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread.thread
  %.3208209 = phi i8 [ %.3.ph203.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread.thread ], [ %.3.ph, %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i141.thread ], [ %.3.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.kp = add nuw i64 %.038251, 1                 ; 2 uses
  %i.kq = load ptr, ptr %i.ex, align 8, !tbaa !930 ; 2 uses
  %i.kr = load ptr, ptr %3, align 8, !tbaa !932   ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = ashr exact i64 %i.ku, 3
  %.not54 = icmp ult i64 %i.kp, %i.kv
  br i1 %.not54, label %.lr.ph252, label %.critedge.loopexit, !llvm.loop !1077

_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i, %.loopexit217, %bb.an
  %.pn = phi { ptr, i32 } [ %i.hc, %bb.an ], [ %lpad.phi221, %.loopexit217 ], [ %lpad.phi221, %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.bt

.critedge.loopexit:                               ; preds = %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142
  %.pre269 = load ptr, ptr %i.d, align 8, !tbaa !930
  %.pre270 = load ptr, ptr %i.b, align 8, !tbaa !932
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %._crit_edge248
  %i.kw = phi ptr [ %i.ew, %._crit_edge248 ], [ %i.kq, %.critedge.loopexit ] ; 2 uses
  %i.kx = phi ptr [ %i.ew, %._crit_edge248 ], [ %i.kr, %.critedge.loopexit ] ; 4 uses
  %i.ky = phi ptr [ null, %._crit_edge248 ], [ %.pre270, %.critedge.loopexit ] ; 2 uses
  %i.kz = phi ptr [ null, %._crit_edge248 ], [ %.pre269, %.critedge.loopexit ] ; 2 uses
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.ky to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = icmp ugt i64 %i.lc, 8
  br i1 %i.ld, label %bb.aw, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168

bb.aw:                                            ; preds = %.critedge
  store ptr %i.ky, ptr %3, align 8, !tbaa !932
  store ptr %i.kz, ptr %i.ex, align 8, !tbaa !930
  %i.le = load ptr, ptr %i.ez, align 8, !tbaa !931
  store ptr %i.le, ptr %i.ey, align 8, !tbaa !931
  %.not4.i.i.i.i.i.i143 = icmp eq ptr %i.kx, %i.kw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i143, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i150, label %.lr.ph.i.i.i.i.i.i144

.lr.ph.i.i.i.i.i.i144:                            ; preds = %bb.aw, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i148
  %.05.i.i.i.i.i.i145 = phi ptr [ %i.lj, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i148 ], [ %i.kx, %bb.aw ] ; 2 uses
  %i.lf = load ptr, ptr %.05.i.i.i.i.i.i145, align 8, !tbaa !722 ; 3 uses
  %.not.i.i.i.i.i.i.i.i146 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i.i.i.i.i.i146, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i148, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i.i147

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i.i147: ; preds = %.lr.ph.i.i.i.i.i.i144
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !151
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(472) %i.lf) #31, !inline_history !1016
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i148

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i148: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i.i.i.i147, %.lr.ph.i.i.i.i.i.i144
  %i.lj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i145, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i149 = icmp eq ptr %i.lj, %i.kw
  br i1 %.not.i.i.i.i.i.i149, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i150, label %.lr.ph.i.i.i.i.i.i144, !llvm.loop !727

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i150: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i148, %bb.aw
  %.not.i.i1.i.i.i.i151 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i1.i.i.i.i151, label %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit152, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i150
  call void @_ZdlPv(ptr noundef nonnull %i.kx) #30
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit152

_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit152: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i150, %bb.ax
  %i.lk = load ptr, ptr %i.ex, align 8, !tbaa !930
  %i.ll = load ptr, ptr %3, align 8, !tbaa !932
  %.not55253.not = icmp eq ptr %i.lk, %i.ll
  br i1 %.not55253.not, label %.critedge61, label %.lr.ph255

.lr.ph255:                                        ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit152, %bb.bk
  %.0254 = phi i64 [ %i.nl, %bb.bk ], [ 0, %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit152 ] ; 4 uses
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.0254)
          to label %bb.ay unwind label %.loopexit

bb.ay:                                            ; preds = %.lr.ph255
  %i.ln = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lm)
          to label %bb.az unwind label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  %i.lp = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lo)
          to label %bb.ba unwind label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.0254)
          to label %bb.bb unwind label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  %i.lr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lq)
          to label %bb.bc unwind label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  %i.lt = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ls)
          to label %bb.bd unwind label %.loopexit

bb.bd:                                            ; preds = %bb.bc
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 49
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !366
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 51
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !366
  %i.ly = icmp eq i8 %i.lv, %i.lx
  br i1 %i.ly, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  %i.lz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.0254)
          to label %bb.bf unwind label %.loopexit.split-lp ; 4 uses

bb.bf:                                            ; preds = %bb.be
  %i.ma = load ptr, ptr %i.d, align 8, !tbaa !930 ; 6 uses
  %i.mb = load ptr, ptr %i.ez, align 8, !tbaa !931
  %.not.i.i153 = icmp eq ptr %i.ma, %i.mb
  br i1 %.not.i.i153, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mc = load i64, ptr %i.lz, align 8, !tbaa !722
  store i64 %i.mc, ptr %i.ma, align 8, !tbaa !722
  store ptr null, ptr %i.lz, align 8, !tbaa !722
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %i.md, ptr %i.d, align 8, !tbaa !930
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168

bb.bh:                                            ; preds = %bb.bf
  %i.me = load ptr, ptr %i.b, align 8, !tbaa !932 ; 10 uses
  %i.mf = ptrtoint ptr %i.ma to i64               ; 3 uses
  %i.mg = ptrtoint ptr %i.me to i64               ; 3 uses
  %i.mh = sub i64 %i.mf, %i.mg                    ; 3 uses
  %i.mi = icmp eq i64 %i.mh, 9223372036854775800
  br i1 %i.mi, label %bb.bi, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i154

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #35
          to label %.noexc166 unwind label %.loopexit.split-lp

.noexc166:                                        ; preds = %bb.bi
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i154: ; preds = %bb.bh
  %i.mj = ashr exact i64 %i.mh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i155 = call i64 @llvm.umax.i64(i64 %i.mj, i64 1)
  %i.mk = add nsw i64 %.sroa.speculated.i.i.i.i155, %i.mj ; 2 uses
  %i.ml = icmp ult i64 %i.mk, %i.mj
  %i.mm = call i64 @llvm.umin.i64(i64 %i.mk, i64 1152921504606846975)
  %i.mn = select i1 %i.ml, i64 1152921504606846975, i64 %i.mm ; 3 uses
  %.not.i.i.i.i156 = icmp ne i64 %i.mn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i156)
  %i.mo = shl nuw nsw i64 %i.mn, 3
  %i.mp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mo) #32
          to label %.noexc167 unwind label %.loopexit.split-lp ; 10 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i154
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mh
  %i.mr = load i64, ptr %i.lz, align 8, !tbaa !722
  store i64 %i.mr, ptr %i.mq, align 8, !tbaa !722
  store ptr null, ptr %i.lz, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i157 = icmp eq ptr %i.me, %i.ma
  br i1 %.not10.i.i.i.i.i.i.i157, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i162, label %.lr.ph.i.i.i.i.i.i.i158.preheader

.lr.ph.i.i.i.i.i.i.i158.preheader:                ; preds = %.noexc167
  %15 = add i64 %i.mf, -8
  %16 = sub i64 %15, %i.mg                        ; 2 uses
  %i.ms = lshr i64 %16, 3
  %i.mt = add nuw nsw i64 %i.ms, 1                ; 2 uses
  %min.iters.check498 = icmp ult i64 %16, 152
  br i1 %min.iters.check498, label %.lr.ph.i.i.i.i.i.i.i158.preheader536, label %vector.memcheck491

vector.memcheck491:                               ; preds = %.lr.ph.i.i.i.i.i.i.i158.preheader
  %i.mu = add i64 %i.mf, -8
  %i.mv = sub i64 %i.mu, %i.mg
  %i.mw = and i64 %i.mv, -8
  %i.mx = add i64 %i.mw, 8                        ; 2 uses
  %scevgep492 = getelementptr i8, ptr %i.mp, i64 %i.mx
  %scevgep493 = getelementptr i8, ptr %i.me, i64 %i.mx
  %bound0494 = icmp ult ptr %i.mp, %scevgep493
  %bound1495 = icmp ult ptr %i.me, %scevgep492
  %found.conflict496 = and i1 %bound0494, %bound1495
  br i1 %found.conflict496, label %.lr.ph.i.i.i.i.i.i.i158.preheader536, label %vector.ph499

vector.ph499:                                     ; preds = %vector.memcheck491
  %n.vec501 = and i64 %i.mt, 4611686018427387900  ; 3 uses
  %i.my = shl i64 %n.vec501, 3                    ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mp, i64 %i.my  ; 2 uses
  %i.na = getelementptr i8, ptr %i.me, i64 %i.my
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph499
  %index503 = phi i64 [ 0, %vector.ph499 ], [ %index.next508, %vector.body502 ] ; 2 uses
  %i.nb = shl i64 %index503, 3                    ; 2 uses
  %next.gep504 = getelementptr i8, ptr %i.mp, i64 %i.nb ; 2 uses
  %next.gep505 = getelementptr i8, ptr %i.me, i64 %i.nb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.nc = getelementptr i8, ptr %next.gep505, i64 16
  %wide.load506 = load <2 x i64>, ptr %next.gep505, align 8, !tbaa !722, !alias.scope !1083, !noalias !1078
  %wide.load507 = load <2 x i64>, ptr %i.nc, align 8, !tbaa !722, !alias.scope !1083, !noalias !1078
  %i.nd = getelementptr i8, ptr %next.gep504, i64 16
  store <2 x i64> %wide.load506, ptr %next.gep504, align 8, !tbaa !722, !alias.scope !1086, !noalias !1083
  store <2 x i64> %wide.load507, ptr %i.nd, align 8, !tbaa !722, !alias.scope !1086, !noalias !1083
  %i.ne = getelementptr i8, ptr %next.gep505, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep505, align 8, !tbaa !722, !alias.scope !1083, !noalias !1078
  store <2 x ptr> splat (ptr null), ptr %i.ne, align 8, !tbaa !722, !alias.scope !1083, !noalias !1078
  %index.next508 = add nuw i64 %index503, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next508, %n.vec501
  br i1 %i.nf, label %middle.block509, label %vector.body502, !llvm.loop !1088

middle.block509:                                  ; preds = %vector.body502
  %cmp.n510 = icmp eq i64 %i.mt, %n.vec501
  br i1 %cmp.n510, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i162, label %.lr.ph.i.i.i.i.i.i.i158.preheader536

.lr.ph.i.i.i.i.i.i.i158.preheader536:             ; preds = %vector.memcheck491, %.lr.ph.i.i.i.i.i.i.i158.preheader, %middle.block509
  %.012.i.i.i.i.i.i.i159.ph = phi ptr [ %i.mp, %vector.memcheck491 ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i158.preheader ], [ %i.mz, %middle.block509 ]
  %.0911.i.i.i.i.i.i.i160.ph = phi ptr [ %i.me, %vector.memcheck491 ], [ %i.me, %.lr.ph.i.i.i.i.i.i.i158.preheader ], [ %i.na, %middle.block509 ]
  br label %.lr.ph.i.i.i.i.i.i.i158

.lr.ph.i.i.i.i.i.i.i158:                          ; preds = %.lr.ph.i.i.i.i.i.i.i158.preheader536, %.lr.ph.i.i.i.i.i.i.i158
  %.012.i.i.i.i.i.i.i159 = phi ptr [ %i.ni, %.lr.ph.i.i.i.i.i.i.i158 ], [ %.012.i.i.i.i.i.i.i159.ph, %.lr.ph.i.i.i.i.i.i.i158.preheader536 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i160 = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i.i.i158 ], [ %.0911.i.i.i.i.i.i.i160.ph, %.lr.ph.i.i.i.i.i.i.i158.preheader536 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.ng = load i64, ptr %.0911.i.i.i.i.i.i.i160, align 8, !tbaa !722, !alias.scope !1081, !noalias !1078
  store i64 %i.ng, ptr %.012.i.i.i.i.i.i.i159, align 8, !tbaa !722, !alias.scope !1078, !noalias !1081
  store ptr null, ptr %.0911.i.i.i.i.i.i.i160, align 8, !tbaa !722, !alias.scope !1081, !noalias !1078
  %i.nh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i160, i64 8 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i159, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i161 = icmp eq ptr %i.nh, %i.ma
  br i1 %.not.i.i.i.i.i.i.i161, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i162, label %.lr.ph.i.i.i.i.i.i.i158, !llvm.loop !1089

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i162: ; preds = %.lr.ph.i.i.i.i.i.i.i158, %middle.block509, %.noexc167
  %.0.lcssa.i.i.i.i.i.i.i163 = phi ptr [ %i.mp, %.noexc167 ], [ %i.mz, %middle.block509 ], [ %i.ni, %.lr.ph.i.i.i.i.i.i.i158 ]
  %i.nj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i163, i64 8
  %.not.i23.i.i.i164 = icmp eq ptr %i.me, null
  br i1 %.not.i23.i.i.i164, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i165, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i162
  call void @_ZdlPv(ptr noundef nonnull %i.me) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i165

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i165: ; preds = %bb.bj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i162
  store ptr %i.mp, ptr %i.b, align 8, !tbaa !932
  store ptr %i.nj, ptr %i.d, align 8, !tbaa !930
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mn
  store ptr %i.nk, ptr %i.ez, align 8, !tbaa !931
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168

.loopexit:                                        ; preds = %.lr.ph255, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.be, %bb.bi, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i154
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bk:                                            ; preds = %bb.bd
  %i.nl = add nuw i64 %.0254, 1                   ; 2 uses
  %i.nm = load ptr, ptr %i.ex, align 8, !tbaa !930
  %i.nn = load ptr, ptr %3, align 8, !tbaa !932
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = ashr exact i64 %i.nq, 3
  %.not55 = icmp ult i64 %i.nl, %i.nr
  br i1 %.not55, label %.lr.ph255, label %.critedge61, !llvm.loop !1090

.critedge61:                                      ; preds = %bb.bk, %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit152
  %i.ns = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.bl unwind label %bb.bq     ; 4 uses

bb.bl:                                            ; preds = %.critedge61
  %i.nt = load ptr, ptr %i.d, align 8, !tbaa !930 ; 6 uses
  %i.nu = load ptr, ptr %i.ez, align 8, !tbaa !931
  %.not.i.i169 = icmp eq ptr %i.nt, %i.nu
  br i1 %.not.i.i169, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nv = load i64, ptr %i.ns, align 8, !tbaa !722
  store i64 %i.nv, ptr %i.nt, align 8, !tbaa !722
  store ptr null, ptr %i.ns, align 8, !tbaa !722
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store ptr %i.nw, ptr %i.d, align 8, !tbaa !930
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168

bb.bn:                                            ; preds = %bb.bl
  %i.nx = load ptr, ptr %i.b, align 8, !tbaa !932 ; 10 uses
  %i.ny = ptrtoint ptr %i.nt to i64               ; 3 uses
  %i.nz = ptrtoint ptr %i.nx to i64               ; 3 uses
  %i.oa = sub i64 %i.ny, %i.nz                    ; 3 uses
  %i.ob = icmp eq i64 %i.oa, 9223372036854775800
  br i1 %i.ob, label %bb.bo, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i170

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #35
          to label %.noexc182 unwind label %bb.bq

.noexc182:                                        ; preds = %bb.bo
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i170: ; preds = %bb.bn
  %i.oc = ashr exact i64 %i.oa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i171 = call i64 @llvm.umax.i64(i64 %i.oc, i64 1)
  %i.od = add nsw i64 %.sroa.speculated.i.i.i.i171, %i.oc ; 2 uses
  %i.oe = icmp ult i64 %i.od, %i.oc
  %i.of = call i64 @llvm.umin.i64(i64 %i.od, i64 1152921504606846975)
  %i.og = select i1 %i.oe, i64 1152921504606846975, i64 %i.of ; 3 uses
  %.not.i.i.i.i172 = icmp ne i64 %i.og, 0
  call void @llvm.assume(i1 %.not.i.i.i.i172)
  %i.oh = shl nuw nsw i64 %i.og, 3
  %i.oi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oh) #32
          to label %.noexc183 unwind label %bb.bq ; 10 uses

.noexc183:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i170
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oa
  %i.ok = load i64, ptr %i.ns, align 8, !tbaa !722
  store i64 %i.ok, ptr %i.oj, align 8, !tbaa !722
  store ptr null, ptr %i.ns, align 8, !tbaa !722
  %.not10.i.i.i.i.i.i.i173 = icmp eq ptr %i.nx, %i.nt
  br i1 %.not10.i.i.i.i.i.i.i173, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178, label %.lr.ph.i.i.i.i.i.i.i174.preheader

.lr.ph.i.i.i.i.i.i.i174.preheader:                ; preds = %.noexc183
  %17 = add i64 %i.ny, -8
  %18 = sub i64 %17, %i.nz                        ; 2 uses
  %i.ol = lshr i64 %18, 3
  %i.om = add nuw nsw i64 %i.ol, 1                ; 2 uses
  %min.iters.check520 = icmp ult i64 %18, 152
  br i1 %min.iters.check520, label %.lr.ph.i.i.i.i.i.i.i174.preheader535, label %vector.memcheck513

vector.memcheck513:                               ; preds = %.lr.ph.i.i.i.i.i.i.i174.preheader
  %i.on = add i64 %i.ny, -8
  %i.oo = sub i64 %i.on, %i.nz
  %i.op = and i64 %i.oo, -8
  %i.oq = add i64 %i.op, 8                        ; 2 uses
  %scevgep514 = getelementptr i8, ptr %i.oi, i64 %i.oq
  %scevgep515 = getelementptr i8, ptr %i.nx, i64 %i.oq
  %bound0516 = icmp ult ptr %i.oi, %scevgep515
  %bound1517 = icmp ult ptr %i.nx, %scevgep514
  %found.conflict518 = and i1 %bound0516, %bound1517
  br i1 %found.conflict518, label %.lr.ph.i.i.i.i.i.i.i174.preheader535, label %vector.ph521

vector.ph521:                                     ; preds = %vector.memcheck513
  %n.vec523 = and i64 %i.om, 4611686018427387900  ; 3 uses
  %i.or = shl i64 %n.vec523, 3                    ; 2 uses
  %i.os = getelementptr i8, ptr %i.oi, i64 %i.or  ; 2 uses
  %i.ot = getelementptr i8, ptr %i.nx, i64 %i.or
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph521
  %index525 = phi i64 [ 0, %vector.ph521 ], [ %index.next530, %vector.body524 ] ; 2 uses
  %i.ou = shl i64 %index525, 3                    ; 2 uses
  %next.gep526 = getelementptr i8, ptr %i.oi, i64 %i.ou ; 2 uses
  %next.gep527 = getelementptr i8, ptr %i.nx, i64 %i.ou ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.ov = getelementptr i8, ptr %next.gep527, i64 16
  %wide.load528 = load <2 x i64>, ptr %next.gep527, align 8, !tbaa !722, !alias.scope !1096, !noalias !1091
  %wide.load529 = load <2 x i64>, ptr %i.ov, align 8, !tbaa !722, !alias.scope !1096, !noalias !1091
  %i.ow = getelementptr i8, ptr %next.gep526, i64 16
  store <2 x i64> %wide.load528, ptr %next.gep526, align 8, !tbaa !722, !alias.scope !1099, !noalias !1096
  store <2 x i64> %wide.load529, ptr %i.ow, align 8, !tbaa !722, !alias.scope !1099, !noalias !1096
  %i.ox = getelementptr i8, ptr %next.gep527, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep527, align 8, !tbaa !722, !alias.scope !1096, !noalias !1091
  store <2 x ptr> splat (ptr null), ptr %i.ox, align 8, !tbaa !722, !alias.scope !1096, !noalias !1091
  %index.next530 = add nuw i64 %index525, 4       ; 2 uses
  %i.oy = icmp eq i64 %index.next530, %n.vec523
  br i1 %i.oy, label %middle.block531, label %vector.body524, !llvm.loop !1101

middle.block531:                                  ; preds = %vector.body524
  %cmp.n532 = icmp eq i64 %i.om, %n.vec523
  br i1 %cmp.n532, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178, label %.lr.ph.i.i.i.i.i.i.i174.preheader535

.lr.ph.i.i.i.i.i.i.i174.preheader535:             ; preds = %vector.memcheck513, %.lr.ph.i.i.i.i.i.i.i174.preheader, %middle.block531
  %.012.i.i.i.i.i.i.i175.ph = phi ptr [ %i.oi, %vector.memcheck513 ], [ %i.oi, %.lr.ph.i.i.i.i.i.i.i174.preheader ], [ %i.os, %middle.block531 ]
  %.0911.i.i.i.i.i.i.i176.ph = phi ptr [ %i.nx, %vector.memcheck513 ], [ %i.nx, %.lr.ph.i.i.i.i.i.i.i174.preheader ], [ %i.ot, %middle.block531 ]
  br label %.lr.ph.i.i.i.i.i.i.i174

.lr.ph.i.i.i.i.i.i.i174:                          ; preds = %.lr.ph.i.i.i.i.i.i.i174.preheader535, %.lr.ph.i.i.i.i.i.i.i174
  %.012.i.i.i.i.i.i.i175 = phi ptr [ %i.pb, %.lr.ph.i.i.i.i.i.i.i174 ], [ %.012.i.i.i.i.i.i.i175.ph, %.lr.ph.i.i.i.i.i.i.i174.preheader535 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i176 = phi ptr [ %i.pa, %.lr.ph.i.i.i.i.i.i.i174 ], [ %.0911.i.i.i.i.i.i.i176.ph, %.lr.ph.i.i.i.i.i.i.i174.preheader535 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.oz = load i64, ptr %.0911.i.i.i.i.i.i.i176, align 8, !tbaa !722, !alias.scope !1094, !noalias !1091
  store i64 %i.oz, ptr %.012.i.i.i.i.i.i.i175, align 8, !tbaa !722, !alias.scope !1091, !noalias !1094
  store ptr null, ptr %.0911.i.i.i.i.i.i.i176, align 8, !tbaa !722, !alias.scope !1094, !noalias !1091
  %i.pa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i176, i64 8 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i175, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i177 = icmp eq ptr %i.pa, %i.nt
  br i1 %.not.i.i.i.i.i.i.i177, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178, label %.lr.ph.i.i.i.i.i.i.i174, !llvm.loop !1102

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178: ; preds = %.lr.ph.i.i.i.i.i.i.i174, %middle.block531, %.noexc183
  %.0.lcssa.i.i.i.i.i.i.i179 = phi ptr [ %i.oi, %.noexc183 ], [ %i.os, %middle.block531 ], [ %i.pb, %.lr.ph.i.i.i.i.i.i.i174 ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i179, i64 8
  %.not.i23.i.i.i180 = icmp eq ptr %i.nx, null
  br i1 %.not.i23.i.i.i180, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i181, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178
  call void @_ZdlPv(ptr noundef nonnull %i.nx) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i181

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i181: ; preds = %bb.bp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i178
  store ptr %i.oi, ptr %i.b, align 8, !tbaa !932
  store ptr %i.pc, ptr %i.d, align 8, !tbaa !930
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.og
  store ptr %i.pd, ptr %i.ez, align 8, !tbaa !931
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168

bb.bq:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i170, %bb.bo, %.critedge61
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i141, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit142.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit97.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i181, %bb.bm, %bb.bg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i165, %.critedge
  %i.pf = load ptr, ptr %3, align 8, !tbaa !932   ; 3 uses
  %i.pg = load ptr, ptr %i.ex, align 8, !tbaa !930 ; 2 uses
  %.not4.i.i.i185 = icmp eq ptr %i.pf, %i.pg
  br i1 %.not4.i.i.i185, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i194, label %.lr.ph.i.i.i186

.lr.ph.i.i.i186:                                  ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i190
  %.05.i.i.i187 = phi ptr [ %i.pl, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i190 ], [ %i.pf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168 ] ; 2 uses
  %i.ph = load ptr, ptr %.05.i.i.i187, align 8, !tbaa !722 ; 3 uses
  %.not.i.i.i.i.i188 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i.i.i188, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i190, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i189

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i189: ; preds = %.lr.ph.i.i.i186
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !151
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef nonnull align 8 dereferenceable(472) %i.ph) #31, !inline_history !726
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i190

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i190: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i189, %.lr.ph.i.i.i186
  %i.pl = getelementptr inbounds nuw i8, ptr %.05.i.i.i187, i64 8 ; 2 uses
  %.not.i.i.i191 = icmp eq ptr %i.pl, %i.pg
  br i1 %.not.i.i.i191, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i192, label %.lr.ph.i.i.i186, !llvm.loop !727

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i192: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i190
  %.pr.i193 = load ptr, ptr %3, align 8, !tbaa !932
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i194

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i194: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i192, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168
  %i.pm = phi ptr [ %.pr.i193, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i192 ], [ %i.pf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit168 ] ; 2 uses
  %.not.i.i1.i195 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i1.i195, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit196, label %bb.br

bb.br:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i194
  call void @_ZdlPv(ptr noundef nonnull %i.pm) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit196

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit196: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i194, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.bs

bb.bs:                                            ; preds = %bb.b, %bb.a, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit196
  ret void

bb.bt:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bq, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit
  %.pn56 = phi { ptr, i32 } [ %i.pe, %bb.bq ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.body
  %.pn58 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn56, %bb.bt ]
  resume { ptr, i32 } %.pn58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !930
  %i.e = load ptr, ptr %0, align 8, !tbaa !932    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !233
  store i64 %i.i, ptr %i.b, align 8, !tbaa !233
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !591

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.0.i.i, label %bb.f, label %bb.g
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIcSaIcEEaSERKS1_:bb.a
bb.f:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1, !tbaa !100
  store i8 %i.q, ptr %i.o, align 1, !tbaa !100
  br label %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit

_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit: ; preds = %bb.e, %bb.f
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %_ZNSt6vectorIcSaIcEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEPcmT_S9_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !731
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.r, ptr %i.g, align 8, !tbaa !810
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !811
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.v, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp sgt i64 %i.f, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !591

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %i.f, 1
  br i1 %i.x, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %i.c, align 1, !tbaa !100
  store i8 %i.y, ptr %i.i, align 1, !tbaa !100
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.z = icmp sgt i64 %i.v, 1
  br i1 %i.z, label %bb.n, label %bb.o, !prof !591

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.v, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.aa = icmp eq i64 %i.v, 1
  br i1 %i.aa, label %bb.p, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ab = load i8, ptr %i.c, align 1, !tbaa !100
  store i8 %i.ab, ptr %i.i, align 1, !tbaa !100
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ac = load ptr, ptr %1, align 8, !tbaa !731
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !811 ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !731
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !811
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp sgt i64 %i.am, 1
  br i1 %i.an, label %bb.q, label %bb.r, !prof !591

bb.q:                                             ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ai, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.r:                                             ; preds = %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !100
  store i8 %i.ap, ptr %i.ad, align 1, !tbaa !100
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k, %bb.j, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !731
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !811
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !809  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !728    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !808
  %i.i = load ptr, ptr %0, align 8, !tbaa !728    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775806
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN6duckdb22QuoteEscapeCombinationESaIS1_EE11_M_allocateEm.exit.i, !prof !157

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt12_Vector_baseIN6duckdb22QuoteEscapeCombinationESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb22QuoteEscapeCombinationESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -2
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -2
  %i.s = add i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb22QuoteEscapeCombinationESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb22QuoteEscapeCombinationESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZNSt12_Vector_baseIN6duckdb22QuoteEscapeCombinationESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb22QuoteEscapeCombinationESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !728
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !808
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb22QuoteEscapeCombinationESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !809
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 2
  br i1 %i.y, label %bb.h, label %bb.i, !prof !591

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb22QuoteEscapeCombinationESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 2
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb22QuoteEscapeCombinationESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i16, ptr %i.c, align 1
  store i16 %i.aa, ptr %i.i, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb22QuoteEscapeCombinationESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 2
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !591

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN6duckdb22QuoteEscapeCombinationES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 2
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN6duckdb22QuoteEscapeCombinationES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i16, ptr %i.c, align 1
  store i16 %i.ad, ptr %i.i, align 1
  br label %_ZSt4copyIPN6duckdb22QuoteEscapeCombinationES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6duckdb22QuoteEscapeCombinationES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !728   ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !809 ; 6 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !728
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 6 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !809 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb22QuoteEscapeCombinationESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt4copyIPN6duckdb22QuoteEscapeCombinationES2_ET0_T_S4_S3_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %2 = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, %2
  %i.ao = add i64 %i.an, -2
  %i.ap = add i64 %i.am, %i.ah
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = lshr i64 %i.aq, 1
  %i.as = add nuw i64 %i.ar, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.aq, 6
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i64 %i.aq, 30
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.as, 12
  %n.vec = and i64 %i.as, -16                     ; 4 uses
  %i.au = shl i64 %n.vec, 1                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep33, align 1
  %wide.load34 = load <8 x i16>, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load34, ptr %i.az, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1467

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb22QuoteEscapeCombinationESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !851

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.as, -4                    ; 3 uses
  %i.bb = shl i64 %n.vec37, 1                     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.af, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ak, i64 %i.bb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.be = shl i64 %index38, 1                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.af, i64 %i.be
  %next.gep40 = getelementptr i8, ptr %i.ak, i64 %i.be
  %wide.load41 = load <4 x i16>, ptr %next.gep40, align 1
  store <4 x i16> %wide.load41, ptr %next.gep39, align 1
  %index.next42 = add nuw i64 %index38, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1468

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.as, %n.vec37
  br i1 %cmp.n43, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb22QuoteEscapeCombinationESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.bg = load i16, ptr %.0810.i.i.i.i, align 1
  store i16 %i.bg, ptr %.011.i.i.i.i, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 2
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb22QuoteEscapeCombinationESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1469

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb22QuoteEscapeCombinationESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt4copyIPN6duckdb22QuoteEscapeCombinationES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN6duckdb22QuoteEscapeCombinationESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bj = load ptr, ptr %0, align 8, !tbaa !728
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !809
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb22QuoteEscapeCombinationESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !932    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !930  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !722 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(472) %i.d) #31, !inline_history !1470
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !727

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !932
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !957
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

end_hunk_4
begin_hunk_5_@_ZN6duckdb27IntegerDecimalCastOperation14HandleExponentINS_22IntegerDecimalCastDataIaEELb0EEEbRT_s:bb.a
  %i.ao = udiv i64 %i.an, 10                      ; 3 uses
  %i.ap = add i16 %i.am, -1                       ; 3 uses
  %i.aq = icmp samesign ugt i64 %i.an, 109
  br i1 %i.aq, label %.lr.ph.i57, label %._crit_edge.i58, !llvm.loop !1131

._crit_edge.i58:                                  ; preds = %.lr.ph.i57
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !1127
  store i16 %i.ap, ptr %i.al, align 8, !tbaa !1129
  br label %.preheader._crit_edge.i53

.preheader._crit_edge.i53:                        ; preds = %._crit_edge.i58, %.preheader.i50
  %i.ar = phi i16 [ %i.ap, %._crit_edge.i58 ], [ %.promoted11.i52, %.preheader.i50 ]
  %.lcssa.i54 = phi i64 [ %i.ao, %._crit_edge.i58 ], [ %.promoted.i51, %.preheader.i50 ]
  %i.as = icmp eq i16 %i.ar, 1
  %i.at = icmp sgt i64 %.lcssa.i54, 4
  %or.cond.i55 = and i1 %i.as, %i.at
  br i1 %or.cond.i55, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader._crit_edge.i53
  %i.au = load i8, ptr %i.b, align 1, !tbaa !100
  %i.av = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.au, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader._crit_edge.i53
  %.0.i56 = phi i1 [ %i.av, %bb.i ], [ true, %.preheader._crit_edge.i53 ]
  %i.aw = load i8, ptr %i.b, align 1, !tbaa !100
  %i.ax = sext i8 %i.aw to i64
  store i64 %i.ax, ptr %0, align 8, !tbaa !1132
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit59

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit59: ; preds = %bb.h, %bb.j
  %.08.i49 = phi i1 [ %.0.i56, %bb.j ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %.loopexit74

bb.k:                                             ; preds = %.critedge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !1129 ; 5 uses
  %i.ba = sub i16 %1, %i.az                       ; 4 uses
  %i.bb = icmp slt i16 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %.preheader73.preheader

.preheader73.preheader:                           ; preds = %bb.k
  %.not139 = icmp eq i16 %i.ba, 0
  br i1 %.not139, label %.loopexit.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %.not48 = icmp samesign ult i16 %i.ba, -19
  br i1 %.not48, label %bb.m, label %.preheader72.preheader

.preheader72.preheader:                           ; preds = %bb.l
  %i.bc = sub i16 %i.az, %1                       ; 2 uses
  %xtraiter = and i16 %i.bc, 7                    ; 3 uses
  %i.bd = sub i16 %1, %i.az
  %i.be = icmp ugt i16 %i.bd, -8
  br i1 %i.be, label %.preheader72.epil.preheader, label %.preheader72.preheader.new

.preheader72.preheader.new:                       ; preds = %.preheader72.preheader
  %unroll_iter = and i16 %i.bc, -8
  br label %.preheader72

.preheader72:                                     ; preds = %.preheader72, %.preheader72.preheader.new
  %.085 = phi i64 [ 1, %.preheader72.preheader.new ], [ %i.bf, %.preheader72 ]
  %niter = phi i16 [ 0, %.preheader72.preheader.new ], [ %niter.next.7, %.preheader72 ]
  %i.bf = mul nuw nsw i64 %.085, 100000000        ; 3 uses
  %niter.next.7 = add i16 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i16 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader72, !llvm.loop !1750

.unr-lcssa:                                       ; preds = %.preheader72
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader72.epil.preheader

.preheader72.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader72.preheader
  %.085.epil.init = phi i64 [ 1, %.preheader72.preheader ], [ %i.bf, %.unr-lcssa ]
  %lcmp.mod154 = icmp ne i16 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.preheader72.epil

.preheader72.epil:                                ; preds = %.preheader72.epil, %.preheader72.epil.preheader
  %.085.epil = phi i64 [ %i.bg, %.preheader72.epil ], [ %.085.epil.init, %.preheader72.epil.preheader ]
  %epil.iter = phi i16 [ %epil.iter.next, %.preheader72.epil ], [ 0, %.preheader72.epil.preheader ]
  %i.bg = mul nuw nsw i64 %.085.epil, 10          ; 2 uses
  %epil.iter.next = add i16 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i16 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader72.epil, !llvm.loop !1751

.epilog-lcssa:                                    ; preds = %.preheader72.epil, %.unr-lcssa
  %.lcssa149 = phi i64 [ %i.bf, %.unr-lcssa ], [ %i.bg, %.preheader72.epil ] ; 2 uses
  %i.bh = srem i64 %i.ah, %.lcssa149
  %i.bi = sdiv i64 %i.ah, %.lcssa149              ; 2 uses
  store i64 %i.bi, ptr %i.ag, align 8, !tbaa !1127
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %i.ag, align 8, !tbaa !1127
  br label %.loopexit

.preheader73:                                     ; preds = %.lr.ph
  %i.bj = add nsw i16 %.3137, -1
  %i.bk = icmp sgt i16 %.3137, 1
  br i1 %i.bk, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !1752

.lr.ph:                                           ; preds = %.preheader73.preheader, %.preheader73
  %.3137 = phi i16 [ %i.bj, %.preheader73 ], [ %i.ba, %.preheader73.preheader ] ; 2 uses
  %i.bl = load i64, ptr %i.ag, align 8, !tbaa !1127
  %i.bm = tail call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.bl, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  br i1 %i.bm, label %.preheader73, label %.loopexit74, !llvm.loop !1752

.loopexit.loopexit:                               ; preds = %.preheader73, %.preheader73.preheader
  %.pre = load i16, ptr %i.ay, align 8, !tbaa !1129
  %.pre96 = load i64, ptr %0, align 8, !tbaa !1132
  %.pre97 = load i64, ptr %i.ag, align 8, !tbaa !1127
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.epilog-lcssa, %bb.m
  %i.bn = phi i64 [ %i.bi, %.epilog-lcssa ], [ 0, %bb.m ], [ %.pre97, %.loopexit.loopexit ]
  %i.bo = phi i64 [ %i.ac, %.epilog-lcssa ], [ %i.ac, %bb.m ], [ %.pre96, %.loopexit.loopexit ]
  %i.bp = phi i16 [ %i.az, %.epilog-lcssa ], [ %i.az, %bb.m ], [ %.pre, %.loopexit.loopexit ]
  %.041 = phi i64 [ %i.bh, %.epilog-lcssa ], [ 0, %bb.m ], [ 0, %.loopexit.loopexit ]
  %i.bq = sub i16 %i.bp, %1
  store i16 %i.bq, ptr %i.ay, align 8, !tbaa !1129
  %i.br = tail call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.bo, i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.br, label %bb.n, label %.loopexit74

bb.n:                                             ; preds = %.loopexit
  store i64 %.041, ptr %i.ag, align 8, !tbaa !1127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.bs = load i64, ptr %0, align 8, !tbaa !1132
  %i.bt = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIlaEEbT_RT0_b(i64 noundef %i.bs, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext false)
  br i1 %i.bt, label %.preheader.i61, label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit70

.preheader.i61:                                   ; preds = %bb.n
  %.promoted.i62 = load i64, ptr %i.ag, align 8, !tbaa !1127 ; 3 uses
  %i.bu = icmp sgt i64 %.promoted.i62, 10
  %.promoted11.i63 = load i16, ptr %i.ay, align 8, !tbaa !1129 ; 2 uses
  br i1 %i.bu, label %.lr.ph.i68, label %.preheader._crit_edge.i64

.lr.ph.i68:                                       ; preds = %.preheader.i61, %.lr.ph.i68
  %i.bv = phi i16 [ %i.by, %.lr.ph.i68 ], [ %.promoted11.i63, %.preheader.i61 ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i68 ], [ %.promoted.i62, %.preheader.i61 ] ; 2 uses
  %i.bx = udiv i64 %i.bw, 10                      ; 3 uses
  %i.by = add i16 %i.bv, -1                       ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, 109
  br i1 %i.bz, label %.lr.ph.i68, label %._crit_edge.i69, !llvm.loop !1131

._crit_edge.i69:                                  ; preds = %.lr.ph.i68
  store i64 %i.bx, ptr %i.ag, align 8, !tbaa !1127
  store i16 %i.by, ptr %i.ay, align 8, !tbaa !1129
  br label %.preheader._crit_edge.i64

.preheader._crit_edge.i64:                        ; preds = %._crit_edge.i69, %.preheader.i61
  %i.ca = phi i16 [ %i.by, %._crit_edge.i69 ], [ %.promoted11.i63, %.preheader.i61 ]
  %.lcssa.i65 = phi i64 [ %i.bx, %._crit_edge.i69 ], [ %.promoted.i62, %.preheader.i61 ]
  %i.cb = icmp eq i16 %i.ca, 1
  %i.cc = icmp sgt i64 %.lcssa.i65, 4
  %or.cond.i66 = and i1 %i.cb, %i.cc
  br i1 %or.cond.i66, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader._crit_edge.i64
  %i.cd = load i8, ptr %i.a, align 1, !tbaa !100
  %i.ce = call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIaaaEEbT_T0_RT1_(i8 noundef signext %i.cd, i8 noundef signext 1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader._crit_edge.i64
  %.0.i67 = phi i1 [ %i.ce, %bb.o ], [ true, %.preheader._crit_edge.i64 ]
  %i.cf = load i8, ptr %i.a, align 1, !tbaa !100
  %i.cg = sext i8 %i.cf to i64
  store i64 %i.cg, ptr %0, align 8, !tbaa !1132
  br label %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit70

_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit70: ; preds = %bb.n, %bb.p
  %.08.i60 = phi i1 [ %.0.i67, %bb.p ], [ false, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.loopexit74

.loopexit74:                                      ; preds = %bb.g, %.lr.ph, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit70, %.loopexit, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit59, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit
  %.144 = phi i1 [ %.08.i, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit ], [ false, %.lr.ph ], [ %.08.i49, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit59 ], [ %.08.i60, %_ZN6duckdb27IntegerDecimalCastOperation8FinalizeINS_22IntegerDecimalCastDataIaEELb0EEEbRT_.exit70 ], [ false, %.loopexit ], [ false, %bb.g ]
  ret i1 %.144
}

declare noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIlllEEbT_T0_RT1_(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIlsEEbT_RT0_b(i64 noundef, ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIliEEbT_RT0_b(i64 noundef, ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIllEEbT_RT0_b(i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIlhEEbT_RT0_b(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIltEEbT_RT0_b(i64 noundef, ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIljEEbT_RT0_b(i64 noundef, ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationImmEEbT_RT0_b(i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3, i8 noundef signext %4, i32 noundef %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !100, !noalias !1753
  %i.c = icmp eq i8 %i.b, 45                      ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.d, align 1, !tbaa !100, !noalias !1753 ; 2 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  %.not.i = icmp eq i8 %i.f, %4
  %or.cond249 = or i1 %.not.i, %i.h
  br i1 %or.cond249, label %bb.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0176.i = phi ptr [ %i.d, %bb.d ], [ %0, %bb.b ] ; 6 uses
  %.0176.i403 = ptrtoint ptr %.0176.i to i64      ; 3 uses
  br i1 %3, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.e
  %i.i = sub i64 %6, %.0176.i403
  %scevgep = getelementptr i8, ptr %.0176.i, i64 %i.i
  br label %.split.us

.split.us:                                        ; preds = %bb.g, %.split.us.preheader
  %.1177.i311.us = phi ptr [ %.0176.i, %.split.us.preheader ], [ %i.q, %bb.g ] ; 3 uses
  %.0178.i310.us = phi i64 [ 0, %.split.us.preheader ], [ %i.p, %bb.g ] ; 2 uses
  %i.j = load i8, ptr %.1177.i311.us, align 1, !tbaa !100, !noalias !1753 ; 3 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.f, label %.split313.us

bb.f:                                             ; preds = %.split.us
  %i.m = mul i64 %.0178.i310.us, 10
  %i.n = zext nneg i8 %i.j to i64
  %i.o = add i64 %i.m, -48
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1177.i311.us, i64 1 ; 3 uses
  %.not267.i.us = icmp eq ptr %i.q, %1
  br i1 %.not267.i.us, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.q, align 1, !tbaa !100, !noalias !1753
  %i.s = icmp eq i8 %i.r, 95
  br i1 %i.s, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.split.us

.thread:                                          ; preds = %bb.l, %bb.f
  %.us-phi315 = phi i64 [ %i.p, %bb.f ], [ %i.ab, %bb.l ]
  %.us-phi316 = phi ptr [ %scevgep, %bb.f ], [ %.2.i, %bb.l ] ; 2 uses
  %i.t = ptrtoint ptr %.us-phi316 to i64          ; 2 uses
  %i.u = sub i64 %i.t, %.0176.i403
  br label %bb.y

.split:                                           ; preds = %bb.e, %bb.l
  %.1177.i311 = phi ptr [ %.2.i, %bb.l ], [ %.0176.i, %bb.e ] ; 4 uses
  %.0178.i310 = phi i64 [ %i.ab, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %i.v = load i8, ptr %.1177.i311, align 1, !tbaa !100, !noalias !1753 ; 3 uses
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.h, label %.split313.us

bb.h:                                             ; preds = %.split
  %i.y = mul i64 %.0178.i310, 10
  %i.z = zext nneg i8 %i.v to i64
  %i.aa = add i64 %i.y, -48
  %i.ab = add i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1177.i311, i64 1 ; 4 uses
  %.not267.i = icmp eq ptr %i.ac, %1
  br i1 %.not267.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !100, !noalias !1753
  %i.ae = icmp eq i8 %i.ad, 95
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1177.i311, i64 2 ; 3 uses
  %i.ag = icmp eq ptr %i.af, %1
  br i1 %i.ag, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !100, !noalias !1753
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %bb.l, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %.2.i = phi ptr [ %i.af, %bb.k ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %.not252.i = icmp eq ptr %.2.i, %1
  br i1 %.not252.i, label %.thread, label %.split, !llvm.loop !1756

.split313.us:                                     ; preds = %.split, %.split.us
  %i.ak = phi i8 [ %i.j, %.split.us ], [ %i.v, %.split ]
  %.us-phi = phi i64 [ %.0178.i310.us, %.split.us ], [ %.0178.i310, %.split ] ; 4 uses
  %.us-phi314 = phi ptr [ %.1177.i311.us, %.split.us ], [ %.1177.i311, %.split ] ; 5 uses
  %i.al = ptrtoint ptr %.us-phi314 to i64         ; 3 uses
  %i.am = sub i64 %i.al, %.0176.i403              ; 2 uses
  %i.an = icmp eq i8 %i.ak, %4
  br i1 %i.an, label %bb.m, label %bb.y

bb.m:                                             ; preds = %.split313.us
  %i.ao = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 9 ; 4 uses
  %.not253.i = icmp ugt ptr %i.ap, %1
  br i1 %.not253.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0.copyload.i70 = load i64, ptr %i.ao, align 1, !noalias !1753 ; 2 uses
  %i.aq = add i64 %.0.copyload.i70, 5063812098665367110
  %i.ar = add i64 %.0.copyload.i70, -3472328296227680304 ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, -9187201950435737472
  %.not.i67 = icmp eq i64 %i.at, 0
  br i1 %.not.i67, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = mul i64 %.us-phi, 100000000
  %i.av = mul i64 %i.ar, 10
  %i.aw = lshr i64 %i.ar, 8
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = and i64 %i.ax, 1095216660735
  %i.az = mul i64 %i.ay, 4294967296000100
  %i.ba = lshr i64 %i.ax, 16
  %i.bb = and i64 %i.ba, 1095216660735
  %i.bc = mul i64 %i.bb, 42949672960001
  %i.bd = add i64 %i.bc, %i.az
  %i.be = lshr i64 %i.bd, 32
  %i.bf = add i64 %i.be, %i.au                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 17 ; 2 uses
  %.not254.i = icmp ugt ptr %i.bg, %1
  br i1 %.not254.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.0.copyload.i71 = load i64, ptr %i.ap, align 1, !noalias !1753 ; 2 uses
  %i.bh = add i64 %.0.copyload.i71, 5063812098665367110
  %i.bi = add i64 %.0.copyload.i71, -3472328296227680304 ; 3 uses
  %i.bj = or i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, -9187201950435737472
  %.not.i68 = icmp eq i64 %i.bk, 0
  br i1 %.not.i68, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = mul i64 %i.bf, 100000000
  %i.bm = mul i64 %i.bi, 10
  %i.bn = lshr i64 %i.bi, 8
  %i.bo = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = and i64 %i.bo, 1095216660735
  %i.bq = mul i64 %i.bp, 4294967296000100
  %i.br = lshr i64 %i.bo, 16
  %i.bs = and i64 %i.br, 1095216660735
  %i.bt = mul i64 %i.bs, 42949672960001
  %i.bu = add i64 %i.bt, %i.bq
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = add i64 %i.bv, %i.bl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.1179.i = phi i64 [ %i.bw, %bb.q ], [ %i.bf, %bb.p ], [ %i.bf, %bb.o ], [ %.us-phi, %bb.n ], [ %.us-phi, %bb.m ] ; 3 uses
  %.3.i = phi ptr [ %i.bg, %bb.q ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ] ; 6 uses
  %.3.i407 = ptrtoaddr ptr %.3.i to i64
  br i1 %3, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.r
  %.not255.i317.us = icmp eq ptr %.3.i, %1
  br i1 %.not255.i317.us, label %.outer._crit_edge, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.outer.us
  %i.bx = sub i64 %6, %.3.i407
  %scevgep408 = getelementptr i8, ptr %.3.i, i64 %i.bx
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.t, %.lr.ph.us.preheader
  %.4.i319.us = phi ptr [ %.3.i, %.lr.ph.us.preheader ], [ %i.cb, %bb.t ] ; 3 uses
  %.2180.i318.us = phi i64 [ %.1179.i, %.lr.ph.us.preheader ], [ %i.ce, %bb.t ] ; 2 uses
  %i.by = load i8, ptr %.4.i319.us, align 1, !tbaa !100, !noalias !1753
  %i.bz = add i8 %i.by, -48                       ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 10
  br i1 %i.ca, label %bb.s, label %.outer._crit_edge

bb.s:                                             ; preds = %.lr.ph.us
  %i.cb = getelementptr inbounds nuw i8, ptr %.4.i319.us, i64 1 ; 3 uses
  %i.cc = mul i64 %.2180.i318.us, 10
  %i.cd = zext nneg i8 %i.bz to i64
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %.not256.i.us = icmp eq ptr %i.cb, %1
  br i1 %.not256.i.us, label %.outer._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !100, !noalias !1753
  %i.cg = icmp eq i8 %i.cf, 95
  br i1 %i.cg, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.lr.ph.us

.outer:                                           ; preds = %bb.r, %bb.x
  %.0221.i.ph = phi i64 [ %i.cs, %bb.x ], [ 0, %bb.r ] ; 4 uses
  %.2180.i.ph = phi i64 [ %i.cn, %bb.x ], [ %.1179.i, %bb.r ] ; 2 uses
  %.4.i.ph = phi ptr [ %i.cq, %bb.x ], [ %.3.i, %bb.r ] ; 5 uses
  %.not255.i317 = icmp eq ptr %.4.i.ph, %1
  br i1 %.not255.i317, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.v
  %.4.i319 = phi ptr [ %i.ck, %bb.v ], [ %.4.i.ph, %.outer ] ; 4 uses
  %.2180.i318 = phi i64 [ %i.cn, %bb.v ], [ %.2180.i.ph, %.outer ] ; 2 uses
  %i.ch = load i8, ptr %.4.i319, align 1, !tbaa !100, !noalias !1753
  %i.ci = add i8 %i.ch, -48                       ; 2 uses
  %i.cj = icmp ult i8 %i.ci, 10
  br i1 %i.cj, label %bb.u, label %.outer._crit_edge

bb.u:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.4.i319, i64 1 ; 3 uses
  %i.cl = mul i64 %.2180.i318, 10
  %i.cm = zext nneg i8 %i.ci to i64
  %i.cn = add i64 %i.cl, %i.cm                    ; 3 uses
  %.not256.i = icmp eq ptr %i.ck, %1
  br i1 %.not256.i, label %.outer._crit_edge.loopexit487.split.loop.exit527, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !100, !noalias !1753
  %i.cp = icmp eq i8 %i.co, 95
  br i1 %i.cp, label %bb.w, label %.lr.ph

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.4.i319, i64 2 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %1
  br i1 %i.cr, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = add nuw nsw i64 %.0221.i.ph, 1
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !100, !noalias !1753
  %i.cu = add i8 %i.ct, -48
  %i.cv = icmp ult i8 %i.cu, 10
  br i1 %i.cv, label %.outer, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, !llvm.loop !1757

.outer._crit_edge.loopexit487.split.loop.exit527: ; preds = %bb.u
  %.4.i.ph405.le = ptrtoaddr ptr %.4.i.ph to i64
  %scevgep404.le = getelementptr i8, ptr %.4.i.ph, i64 %6
  %i.cw = sub i64 0, %.4.i.ph405.le
  %scevgep406.le = getelementptr i8, ptr %scevgep404.le, i64 %i.cw
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.lr.ph, %bb.s, %.lr.ph.us, %.outer._crit_edge.loopexit487.split.loop.exit527, %.outer.us
  %.0221.i.ph.lcssa = phi i64 [ %.0221.i.ph, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.0221.i.ph, %.lr.ph ], [ 0, %.outer.us ], [ 0, %bb.s ], [ 0, %.lr.ph.us ], [ %.0221.i.ph, %.outer ]
  %.2180.i.lcssa = phi i64 [ %i.cn, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.2180.i318, %.lr.ph ], [ %.1179.i, %.outer.us ], [ %i.ce, %bb.s ], [ %.2180.i318.us, %.lr.ph.us ], [ %.2180.i.ph, %.outer ]
  %.4.i.lcssa = phi ptr [ %scevgep406.le, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.4.i319, %.lr.ph ], [ %.3.i, %.outer.us ], [ %scevgep408, %bb.s ], [ %.4.i319.us, %.lr.ph.us ], [ %.4.i.ph, %.outer ] ; 2 uses
  %i.cx = ptrtoint ptr %i.ao to i64
  %i.cy = ptrtoint ptr %.4.i.lcssa to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = add nsw i64 %i.cz, %.0221.i.ph.lcssa    ; 2 uses
  %i.db = sub nsw i64 %i.am, %i.da
  br label %bb.y

bb.y:                                             ; preds = %.thread, %.outer._crit_edge, %.split313.us
  %i.dc = phi i64 [ %i.al, %.outer._crit_edge ], [ %i.al, %.split313.us ], [ %i.t, %.thread ]
  %.1211.i = phi i64 [ %i.da, %.outer._crit_edge ], [ 0, %.split313.us ], [ 0, %.thread ] ; 3 uses
  %.1201.i = phi i64 [ %i.db, %.outer._crit_edge ], [ %i.am, %.split313.us ], [ %i.u, %.thread ] ; 3 uses
  %.4182.i = phi i64 [ %.2180.i.lcssa, %.outer._crit_edge ], [ %.us-phi, %.split313.us ], [ %.us-phi315, %.thread ] ; 3 uses
  %.8.i = phi ptr [ %.4.i.lcssa, %.outer._crit_edge ], [ %.us-phi314, %.split313.us ], [ %.us-phi316, %.thread ] ; 7 uses
  %i.dd = icmp eq i64 %.1201.i, 0
  br i1 %i.dd, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = and i32 %5, 1
  %.not257.i = icmp eq i32 %i.de, 0
  %.not258.i = icmp eq ptr %.8.i, %1
  %or.cond.i = or i1 %.not257.i, %.not258.i
  br i1 %or.cond.i, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load i8, ptr %.8.i, align 1, !tbaa !100, !noalias !1753
  switch i8 %i.df, label %bb.am [
    i8 101, label %bb.ab
    i8 69, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 4 uses
  %.not260.i = icmp eq ptr %i.dg, %1
  br i1 %.not260.i, label %.critedge271.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !100, !noalias !1753 ; 2 uses
  %i.di = icmp eq i8 %i.dh, 45
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  br label %.critedge271.i

bb.ae:                                            ; preds = %bb.ac
  %i.dk = icmp eq i8 %i.dh, 43
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  %spec.select.i = select i1 %i.dk, ptr %i.dl, ptr %i.dg
  br label %.critedge271.i

.critedge271.i:                                   ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0199.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.9.i = phi ptr [ %i.dj, %bb.ad ], [ %i.dg, %bb.ab ], [ %spec.select.i, %bb.ae ] ; 3 uses
  %i.dm = icmp eq ptr %.9.i, %1
  br i1 %i.dm, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.critedge271.i
  %i.dn = load i8, ptr %.9.i, align 1, !tbaa !100, !noalias !1753
  %i.do = add i8 %i.dn, -48
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %.lr.ph342, label %bb.al

.lr.ph342:                                        ; preds = %bb.af, %.backedge
  %.10.i341 = phi ptr [ %.10.i.be, %.backedge ], [ %.9.i, %bb.af ] ; 4 uses
  %.0204.i340 = phi i64 [ %.1205.i, %.backedge ], [ 0, %bb.af ] ; 4 uses
  %i.dq = load i8, ptr %.10.i341, align 1, !tbaa !100, !noalias !1753
  %i.dr = add i8 %i.dq, -48                       ; 2 uses
  %i.ds = icmp ult i8 %i.dr, 10
  br i1 %i.ds, label %bb.ag, label %.thread140

bb.ag:                                            ; preds = %.lr.ph342
  %i.dt = icmp slt i64 %.0204.i340, 65536
  %i.du = mul nsw i64 %.0204.i340, 10
  %i.dv = zext nneg i8 %i.dr to i64
  %i.dw = add nsw i64 %i.du, %i.dv
  %.1205.i = select i1 %i.dt, i64 %i.dw, i64 %.0204.i340 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.10.i341, i64 1 ; 4 uses
  %.not262.i = icmp eq ptr %i.dx, %1
  br i1 %.not262.i, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !100, !noalias !1753
  %i.dz = icmp eq i8 %i.dy, 95
  br i1 %i.dz, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %bb.ah
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.10.i341, i64 2 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, %1
  br i1 %i.eb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !100, !noalias !1753
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  br i1 %i.ee, label %.backedge, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

.backedge:                                        ; preds = %bb.ag, %bb.ah, %bb.ak
  %.10.i.be = phi ptr [ %i.ea, %bb.ak ], [ %i.dx, %bb.ah ], [ %i.dx, %bb.ag ] ; 3 uses
  %.not261.i = icmp eq ptr %.10.i.be, %1
  br i1 %.not261.i, label %.thread140, label %.lr.ph342, !llvm.loop !1758

.thread140:                                       ; preds = %.lr.ph342, %.backedge
  %.0204.i.lcssa.ph = phi i64 [ %.0204.i340, %.lr.ph342 ], [ %.1205.i, %.backedge ] ; 2 uses
  %.10.i.lcssa.ph = phi ptr [ %.10.i341, %.lr.ph342 ], [ %.10.i.be, %.backedge ]
  %i.ef = sub nsw i64 0, %.0204.i.lcssa.ph
  %spec.select272.i = select i1 %.0199.i, i64 %i.ef, i64 %.0204.i.lcssa.ph ; 2 uses
  %i.eg = add nsw i64 %spec.select272.i, %.1211.i
  br label %bb.an

bb.al:                                            ; preds = %.critedge271.i, %bb.af
  %i.eh = and i32 %5, 4
  %.not263.i.not = icmp eq i32 %i.eh, 0
  br i1 %.not263.i.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.aa, %bb.z
  %i.ei = and i32 %5, 5
  %or.cond273.i.not.not = icmp eq i32 %i.ei, 1
  br i1 %or.cond273.i.not.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.an:                                            ; preds = %.thread140, %bb.am, %bb.al
  %.4214.i = phi i64 [ %.1211.i, %bb.al ], [ %.1211.i, %bb.am ], [ %i.eg, %.thread140 ] ; 5 uses
  %.5209.i = phi i64 [ 0, %bb.al ], [ 0, %bb.am ], [ %spec.select272.i, %.thread140 ] ; 2 uses
  %.15.i = phi ptr [ %.8.i, %bb.al ], [ %.8.i, %bb.am ], [ %.10.i.lcssa.ph, %.thread140 ] ; 3 uses
  %i.ej = icmp sgt i64 %.1201.i, 19
  br i1 %i.ej, label %.preheader287, label %bb.ba

.preheader287:                                    ; preds = %bb.an, %.critedge8.i
  %.0191.i349 = phi ptr [ %i.eo, %.critedge8.i ], [ %.0176.i, %bb.an ] ; 2 uses
  %.2202.i348 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1201.i, %bb.an ] ; 2 uses
  %i.ek = load i8, ptr %.0191.i349, align 1, !tbaa !100, !noalias !1753 ; 2 uses
  %i.el = icmp eq i8 %i.ek, 48                    ; 2 uses
  %i.em = icmp eq i8 %i.ek, %4
  %or.cond274.i = or i1 %i.el, %i.em
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader287
  %i.en = sext i1 %i.el to i64
  %spec.select275.i = add nsw i64 %.2202.i348, %i.en ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0191.i349, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.eo, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader287, !llvm.loop !1759

.critedge.i:                                      ; preds = %.preheader287, %.critedge8.i
  %.2202.i.lcssa = phi i64 [ %.2202.i348, %.preheader287 ], [ %spec.select275.i, %.critedge8.i ]
  %i.ep = icmp sgt i64 %.2202.i.lcssa, 19
  br i1 %i.ep, label %.preheader, label %bb.ba

.preheader:                                       ; preds = %.critedge.i, %bb.at
  %.16.i351 = phi ptr [ %.17.i, %bb.at ], [ %.0176.i, %.critedge.i ] ; 4 uses
  %.5183.i350 = phi i64 [ %i.ew, %bb.at ], [ 0, %.critedge.i ] ; 2 uses
  %i.eq = load i8, ptr %.16.i351, align 1, !tbaa !100, !noalias !1753 ; 2 uses
  %i.er = add i8 %i.eq, -48
  %i.es = icmp ult i8 %i.er, 10
  br i1 %i.es, label %bb.ao, label %.thread146

bb.ao:                                            ; preds = %.preheader
  %i.et = mul nuw i64 %.5183.i350, 10
  %i.eu = zext nneg i8 %i.eq to i64
  %i.ev = add i64 %i.et, -48
  %i.ew = add i64 %i.ev, %i.eu                    ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.16.i351, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.ex, %1
  br i1 %.not266.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !100, !noalias !1753
  %i.ez = icmp eq i8 %i.ey, 95
  br i1 %i.ez, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i351, i64 2 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, %1
  br i1 %i.fb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !100, !noalias !1753
  %i.fd = add i8 %i.fc, -48
  %i.fe = icmp ult i8 %i.fd, 10
  br i1 %i.fe, label %bb.at, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.ap, %bb.ao
  %.17.i = phi ptr [ %i.fa, %bb.as ], [ %i.ex, %bb.ap ], [ %i.ex, %bb.ao ] ; 4 uses
  %i.ff = icmp ult i64 %i.ew, 1000000000000000000
  %i.fg = icmp ne ptr %.17.i, %1
  %i.fh = and i1 %i.ff, %i.fg
end_hunk_5
begin_hunk_6_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.ln = icmp ult i64 %.pn276, 2
  %i.lo = add nsw i64 %.sroa.093.0.ph462479, 4
  %i.lp = icmp ult i64 %i.lo, 28
  %or.cond261.not279 = and i1 %i.lp, %i.ln
  %i.lq = and i64 %i.kx, 3
  %i.lr = icmp eq i64 %i.lq, 1
  %or.cond263 = select i1 %or.cond261.not279, i1 %i.lr, i1 false
  %i.ls = shl i64 %i.kx, %i.kw
  %i.lt = icmp eq i64 %i.ls, %spec.select.i75.pn
  %or.cond265 = select i1 %or.cond263, i1 %i.lt, i1 false
  %i.lu = and i64 %i.kx, 72057594037927934
  %.sroa.0103.0 = select i1 %or.cond265, i64 %i.lu, i64 %i.kx ; 2 uses
  %i.lv = and i64 %.sroa.0103.0, 1
  %i.lw = add nuw nsw i64 %i.lv, %.sroa.0103.0    ; 2 uses
  %i.lx = lshr i64 %i.lw, 1
  %.not27.i = icmp samesign ugt i64 %i.lw, 18014398509481983 ; 2 uses
  %i.ly = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.lc, %i.ly      ; 2 uses
  %i.lz = and i64 %i.lx, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not280 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select269 = select i1 %.not280, i64 0, i64 %i.lz
  %spec.select270 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bp, %bb.bn, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78, %bb.bm, %bb.bl, %bb.bo
  %.sroa.0103.2 = phi i64 [ 0, %bb.bm ], [ 0, %bb.bl ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lk, %bb.bo ], [ %spec.select269, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bm ], [ 0, %bb.bl ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lm, %bb.bo ], [ %spec.select270, %bb.bp ], [ 0, %bb.bn ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2467, %.sroa.0103.2
  %i.ma = icmp ne i32 %.sroa.19117.1469, %.sroa.19.1
  %i.mb = icmp slt i32 %.sroa.19117.1469, 0
  %i.mc = or i1 %i.mb, %i.ma
  %or.cond266 = select i1 %.not.i87, i1 true, i1 %i.mc
  br i1 %or.cond266, label %.thread245, label %bb.br

.thread245:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  %i.md = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bq unwind label %bb.bt     ; 2 uses

bb.bq:                                            ; preds = %.thread245
  %.fca.0.extract = extractvalue { i64, i32 } %i.md, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.md, 1
  br label %bb.br

bb.br:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, %bb.bj, %bb.bk, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.bq
  %.sroa.690.1 = phi i32 [ %.fca.1.extract, %bb.bq ], [ %.sroa.19117.1469, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iz, %bb.bj ], [ %spec.select268, %bb.bk ]
  %.sroa.088.0 = phi i64 [ %.fca.0.extract, %bb.bq ], [ %.sroa.0111.2467, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.ix, %bb.bj ], [ %spec.select267, %bb.bk ]
  %i.me = zext i32 %.sroa.690.1 to i64
  %i.mf = shl i64 %i.me, 52
  %i.mg = or i64 %i.mf, %.sroa.088.0              ; 2 uses
  %i.mh = or i64 %i.mg, -9223372036854775808
  %spec.select = select i1 %i.c, i64 %i.mh, i64 %i.mg
  store i64 %spec.select, ptr %2, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, %bb.br, %bb.bf, %bb.be, %bb.a
  %.sroa.044.1 = phi ptr [ %0, %bb.a ], [ %.15.i, %bb.br ], [ %i.gm, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ %.15.i, %bb.bf ], [ %.15.i, %bb.be ]
  %.sroa.545.1 = phi i32 [ 22, %bb.a ], [ 0, %bb.br ], [ %i.gn, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ 0, %bb.bf ], [ 0, %bb.be ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.545.1, 1
  ret { ptr, i32 } %.fca.1.insert

bb.bt:                                            ; preds = %.thread245
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  tail call void @__clang_call_terminate(ptr %i.mj) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !100
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !100 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !100   ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !100   ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, double -qnan, double +qnan
  store double %i.aa, ptr %2, align 8, !tbaa !1599
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !100
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !100 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !100 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 41
  br i1 %i.ao, label %.lr.ph._crit_edge, label %.lr.ph76, !llvm.loop !1762

bb.f:                                             ; preds = %.lr.ph.i43.preheader
  %i.ap = icmp samesign ugt i64 %i.e, 7
  br i1 %i.ap, label %.lr.ph.i48, label %bb.g

.lr.ph.i48:                                       ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %i.ar = load <4 x i8>, ptr %i.aq, align 1, !tbaa !100
  %i.as = xor <4 x i8> %i.ar, <i8 73, i8 78, i8 73, i8 84>
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !100
  %i.av = xor i8 %i.au, 89
  %i.aw = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.as)
  %op.rdx = or i8 %i.aw, %i.av
  %i.ax = and i8 %op.rdx, -33
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i48, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i48, %bb.g
  %.sink = phi i64 [ 3, %bb.g ], [ 8, %.lr.ph.i48 ]
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.sink
  %i.ba = select i1 %i.b, double -inf, double +inf
  store double %i.ba, ptr %2, align 8, !tbaa !1599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a, %.lr.ph.i43.preheader, %bb.b, %bb.c, %.lr.ph._crit_edge, %bb.h
  %.sroa.0.3 = phi ptr [ %0, %.lr.ph.i43.preheader ], [ %i.az, %bb.h ], [ %i.z, %bb.b ], [ %i.z, %bb.c ], [ %i.ag, %.lr.ph._crit_edge ], [ %0, %bb.a ], [ %i.z, %bb.d ], [ %i.z, %bb.e ]
  %.sroa.6.0 = phi i32 [ 22, %.lr.ph.i43.preheader ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %3 = alloca %"struct.duckdb_fast_float::decimal", align 4 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  %i.c = load i8, ptr %0, align 1, !tbaa !100, !noalias !1763
  %i.d = icmp eq i8 %i.c, 45                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 4, !tbaa !1766, !alias.scope !1763
  %spec.select.i.idx = zext i1 %i.d to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i.idx ; 3 uses
  %.not.i9 = icmp eq ptr %spec.select.i, %1
  br i1 %.not.i9, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %2, %4
  %scevgep = getelementptr i8, ptr %0, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.1.i10 = phi ptr [ %i.j, %bb.b ], [ %spec.select.i, %.lr.ph.preheader ] ; 3 uses
  %i.h = load i8, ptr %.1.i10, align 1, !tbaa !100, !noalias !1763
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i10, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !1768

.critedge.i:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.1.i.lcssa = phi ptr [ %spec.select.i, %bb.a ], [ %.1.i10, %.lr.ph ], [ %scevgep, %bb.b ] ; 5 uses
  %.1.i.lcssa60 = ptrtoaddr ptr %.1.i.lcssa to i64
  %.not99.i15 = icmp eq ptr %.1.i.lcssa, %1
  br i1 %.not99.i15, label %.critedge106.i.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %.critedge.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph17, %bb.f
  %.2.i16 = phi ptr [ %.1.i.lcssa, %.lr.ph17 ], [ %i.s, %bb.f ] ; 4 uses
  %.promoted26 = phi i32 [ 0, %.lr.ph17 ], [ %i.r, %bb.f ] ; 9 uses
  %i.l = load i8, ptr %.2.i16, align 1, !tbaa !100, !noalias !1763 ; 2 uses
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %.critedge2.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %.promoted26, 768
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %.promoted26 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  store i8 %i.m, ptr %i.q, align 1, !tbaa !100, !alias.scope !1763
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = add i32 %.promoted26, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 3 uses
  %.not99.i = icmp eq ptr %i.s, %1
  br i1 %.not99.i, label %.critedge106.i.loopexit, label %bb.c, !llvm.loop !1769

.critedge2.i:                                     ; preds = %bb.c
  store i32 %.promoted26, ptr %3, align 4
  %i.t = icmp eq i8 %i.l, 46
  br i1 %i.t, label %bb.g, label %.critedge106.i

bb.g:                                             ; preds = %.critedge2.i
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 4 uses
  %i.v = icmp ne i32 %.promoted26, 0
  %.not100.i20 = icmp eq ptr %i.u, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not100.i20
  br i1 %or.cond, label %.critedge4.i, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %bb.g
  %i.w = sub i64 %2, %.1.i.lcssa60
  %scevgep61 = getelementptr i8, ptr %.1.i.lcssa, i64 %i.w
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %bb.h
  %.3.i21 = phi ptr [ %i.z, %bb.h ], [ %i.u, %.lr.ph22.preheader ] ; 3 uses
  %i.x = load i8, ptr %.3.i21, align 1, !tbaa !100, !noalias !1763
  %i.y = icmp eq i8 %i.x, 48
  br i1 %i.y, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.lr.ph22
  %i.z = getelementptr inbounds nuw i8, ptr %.3.i21, i64 1 ; 2 uses
  %.not100.i = icmp eq ptr %i.z, %1
  br i1 %.not100.i, label %.critedge4.i, label %.lr.ph22, !llvm.loop !1770

.critedge4.i:                                     ; preds = %bb.h, %.lr.ph22, %bb.g
  %.4.i = phi ptr [ %i.u, %bb.g ], [ %.3.i21, %.lr.ph22 ], [ %scevgep61, %bb.h ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.4.i, i64 8 ; 2 uses
  %i.ab = icmp ule ptr %i.aa, %1
  %i.ac = add i32 %.promoted26, 8                 ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 768
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph29, label %.thread

.lr.ph29:                                         ; preds = %.critedge4.i
  %i.af = zext nneg i32 %i.ac to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph29, %bb.j
  %indvars.iv = phi i64 [ %i.af, %.lr.ph29 ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ag = phi ptr [ %i.aa, %.lr.ph29 ], [ %i.ao, %bb.j ] ; 3 uses
  %.5.i28 = phi ptr [ %.4.i, %.lr.ph29 ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ah = phi i32 [ %.promoted26, %.lr.ph29 ], [ %i.as, %bb.j ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.5.i28, align 1, !noalias !1763 ; 2 uses
  %i.ai = add i64 %.0.copyload.i.i, 5063812098665367110
  %i.aj = add i64 %.0.copyload.i.i, -3472328296227680304 ; 2 uses
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = and i64 %i.ak, -9187201950435737472
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = zext i32 %i.ah to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.am
  store i64 %i.aj, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ap = icmp ule ptr %i.ao, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.aq = icmp samesign ult i64 %indvars.iv, 760
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  %i.as = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %i.ar, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %.critedge4.i
  %.lcssa27 = phi i32 [ %.promoted26, %.critedge4.i ], [ %i.ah, %bb.i ], [ %i.as, %bb.j ] ; 3 uses
  %.5.i.lcssa = phi ptr [ %.4.i, %.critedge4.i ], [ %.5.i28, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  store i32 %.lcssa27, ptr %3, align 4
  %.not101.i37 = icmp eq ptr %.5.i.lcssa, %1
  br i1 %.not101.i37, label %.critedge6.i, label %.lr.ph39

.lr.ph39:                                         ; preds = %.thread, %bb.m
  %.8.i38 = phi ptr [ %i.bb, %bb.m ], [ %.5.i.lcssa, %.thread ] ; 3 uses
  %i.at = phi i32 [ %i.ba, %bb.m ], [ %.lcssa27, %.thread ] ; 4 uses
  %i.au = load i8, ptr %.8.i38, align 1, !tbaa !100, !noalias !1763
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %i.aw = icmp ult i8 %i.av, 10
  br i1 %i.aw, label %bb.k, label %.critedge6.i

bb.k:                                             ; preds = %.lr.ph39
  %i.ax = icmp ult i32 %i.at, 768
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ay
  store i8 %i.av, ptr %i.az, align 1, !tbaa !100, !alias.scope !1763
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = add i32 %i.at, 1                        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.i38, i64 1 ; 3 uses
  %.not101.i = icmp eq ptr %i.bb, %1
  br i1 %.not101.i, label %.critedge6.i, label %.lr.ph39, !llvm.loop !1771

.critedge6.i:                                     ; preds = %bb.m, %.lr.ph39, %.thread
  %.lcssa36 = phi i32 [ %.lcssa27, %.thread ], [ %i.at, %.lr.ph39 ], [ %i.ba, %bb.m ] ; 2 uses
  %.8.i.lcssa = phi ptr [ %.5.i.lcssa, %.thread ], [ %.8.i38, %.lr.ph39 ], [ %i.bb, %bb.m ] ; 2 uses
  store i32 %.lcssa36, ptr %3, align 4
  %i.bc = ptrtoint ptr %i.u to i64
  %i.bd = ptrtoint ptr %.8.i.lcssa to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !1772, !alias.scope !1763
  br label %.critedge106.i

.critedge106.i.loopexit:                          ; preds = %bb.f, %.critedge.i
  %.lcssa13 = phi i32 [ 0, %.critedge.i ], [ %i.r, %bb.f ] ; 2 uses
  %.2.i.lcssa = phi ptr [ %.1.i.lcssa, %.critedge.i ], [ %i.s, %bb.f ]
  store i32 %.lcssa13, ptr %3, align 4
  br label %.critedge106.i

.critedge106.i:                                   ; preds = %.critedge106.i.loopexit, %.critedge6.i, %.critedge2.i
  %i.bg = phi i32 [ %i.bf, %.critedge6.i ], [ 0, %.critedge2.i ], [ 0, %.critedge106.i.loopexit ] ; 2 uses
  %i.bh = phi i32 [ %.lcssa36, %.critedge6.i ], [ %.promoted26, %.critedge2.i ], [ %.lcssa13, %.critedge106.i.loopexit ] ; 3 uses
  %.9.i = phi ptr [ %.8.i.lcssa, %.critedge6.i ], [ %.2.i16, %.critedge2.i ], [ %.2.i.lcssa, %.critedge106.i.loopexit ] ; 6 uses
  %.not102.i = icmp eq i32 %i.bh, 0
  br i1 %.not102.i, label %.thread6, label %.preheader

.preheader:                                       ; preds = %.critedge106.i, %.critedge8.i
  %.9.pn.i = phi ptr [ %.087.i, %.critedge8.i ], [ %.9.i, %.critedge106.i ]
  %.085.i = phi i32 [ %spec.select107.i, %.critedge8.i ], [ 0, %.critedge106.i ] ; 2 uses
  %.087.i = getelementptr inbounds i8, ptr %.9.pn.i, i64 -1 ; 2 uses
  %i.bi = load i8, ptr %.087.i, align 1, !tbaa !100, !noalias !1763 ; 2 uses
  switch i8 %i.bi, label %bb.n [
    i8 48, label %.critedge8.i
    i8 46, label %.critedge8.i
  ]

.critedge8.i:                                     ; preds = %.preheader, %.preheader
  %i.bj = icmp eq i8 %i.bi, 48
  %i.bk = zext i1 %i.bj to i32
  %spec.select107.i = add nuw nsw i32 %.085.i, %i.bk
  br label %.preheader, !llvm.loop !1773

bb.n:                                             ; preds = %.preheader
  %i.bl = add nsw i32 %i.bg, %i.bh                ; 3 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !1772, !alias.scope !1763
  %i.bm = sub i32 %i.bh, %.085.i                  ; 3 uses
  store i32 %i.bm, ptr %3, align 4, !tbaa !1774, !alias.scope !1763
  %i.bn = icmp ugt i32 %i.bm, 768
  br i1 %i.bn, label %bb.o, label %.thread6

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.b, align 1, !tbaa !1775, !alias.scope !1763
  store i32 768, ptr %3, align 4, !tbaa !1774, !alias.scope !1763
  br label %.thread6

.thread6:                                         ; preds = %.critedge106.i, %bb.o, %bb.n
  %i.bo = phi i32 [ 0, %.critedge106.i ], [ 768, %bb.o ], [ %i.bm, %bb.n ] ; 3 uses
  %i.bp = phi i32 [ %i.bg, %.critedge106.i ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ]
  %.not103.i = icmp eq ptr %.9.i, %1
  br i1 %.not103.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.thread6
  %i.bq = load i8, ptr %.9.i, align 1, !tbaa !100, !noalias !1763
  switch i8 %i.bq, label %bb.v [
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.9.i, i64 1 ; 4 uses
  %.not104.i = icmp eq ptr %i.br, %1
  br i1 %.not104.i, label %.critedge109.i, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_6
begin_hunk_7_@_ZN17duckdb_fast_float6detail18decimal_left_shiftERNS_7decimalEj:bb.a
  %i.ax = icmp ult i32 %.159, 768
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = trunc i64 %i.aw to i8
  %i.az = zext nneg i32 %.159 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.az
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !100
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not44 = icmp eq i64 %i.aw, 0
  br i1 %.not44, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ag, align 1, !tbaa !1775
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bb = add i32 %.159, -1
  %.not = icmp samesign ult i64 %.14358, 10
  br i1 %.not, label %._crit_edge, label %bb.m, !llvm.loop !1786

._crit_edge:                                      ; preds = %bb.q, %_ZN17duckdb_fast_float6detail35number_of_digits_decimal_left_shiftERKNS_7decimalEj.exit, %.preheader
  %i.bc = add i32 %.0.i, %i.a                     ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 768) ; 2 uses
  store i32 %spec.select, ptr %0, align 4, !tbaa !1774
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !1772
  %i.bf = add nsw i32 %i.be, %.0.i
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !1772
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.not4.i = icmp eq i32 %i.bc, 0
  br i1 %.not4.i, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.bh = zext nneg i32 %spec.select to i64
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv.i48 = phi i64 [ %i.bh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i49, %bb.r ]
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i48, -1 ; 3 uses
  %i.bi = and i64 %indvars.iv.next.i49, 4294967295
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !100
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit

bb.r:                                             ; preds = %.lr.ph.i47
  %indvars.i = trunc i64 %indvars.iv.next.i49 to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !1774
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit, label %.lr.ph.i47, !llvm.loop !1777

_ZN17duckdb_fast_float6detail4trimERNS_7decimalE.exit: ; preds = %bb.r, %.lr.ph.i47, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN17duckdb_fast_float6detail5roundERNS_7decimalE(ptr noundef nonnull align 4 dereferenceable(778) %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !1774   ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1772 ; 9 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i32 %i.d, 18
  br i1 %i.f, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not42 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.h = zext i32 %i.a to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.d, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 30
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02840.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.j = mul i64 %.02840.epil.init, 10
  %i.k = icmp samesign ult i64 %indvars.iv.epil.init, %i.h
  br i1 %i.k, label %bb.d, label %._crit_edge.loopexit.epilog-lcssa

bb.d:                                             ; preds = %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil.init
  %i.m = load i8, ptr %i.l, align 1, !tbaa !100
  %i.n = zext i8 %i.m to i64
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.d, %.epil.preheader
  %i.o = phi i64 [ %i.n, %bb.d ], [ 0, %.epil.preheader ]
  %i.p = add i64 %i.o, %i.j
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.028.lcssa = phi i64 [ 0, %.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %._crit_edge.loopexit.epilog-lcssa ] ; 5 uses
  %i.q = icmp ult i32 %i.d, %i.a
  br i1 %i.q, label %bb.j, label %.thread

bb.e:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 4 uses
  %.02840 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.r = mul i64 %.02840, 10
  %i.s = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 2, !tbaa !100
  %i.v = zext i8 %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = phi i64 [ %i.v, %bb.f ], [ 0, %bb.e ]
  %i.x = add i64 %i.w, %i.r
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = mul i64 %i.x, 10
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !100
  %i.ac = zext i8 %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ]
  %i.ae = add i64 %i.ad, %i.y                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1783

bb.j:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ag = zext nneg i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !100
  %.fr = freeze i8 %i.ai                          ; 2 uses
  %i.aj = icmp eq i8 %.fr, 5
  %i.ak = add nuw nsw i32 %i.d, 1
  %i.al = icmp eq i32 %i.ak, %i.a
  %or.cond = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1775, !range !154, !noundef !141
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread35, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not42, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.ah, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !100
  %.fr39 = freeze i8 %i.aq
  %i.ar = trunc i8 %.fr39 to i1
  br i1 %i.ar, label %.thread35, label %.thread

bb.n:                                             ; preds = %bb.j
  %i.as = icmp ugt i8 %.fr, 4
  br i1 %i.as, label %.thread35, label %.thread

.thread35:                                        ; preds = %bb.k, %bb.m, %bb.n
  %i.at = add i64 %.028.lcssa, 1
  br label %.thread

.thread:                                          ; preds = %bb.l, %._crit_edge, %.thread35, %bb.n, %bb.m, %bb.c, %bb.a, %bb.b
  %.029 = phi i64 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.at, %.thread35 ], [ %.028.lcssa, %bb.n ], [ %.028.lcssa, %bb.m ], [ %.028.lcssa, %._crit_edge ], [ %.028.lcssa, %bb.l ]
  ret i64 %.029
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3, i8 noundef signext %4, i32 noundef %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.bw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !100, !noalias !1787
  %i.c = icmp eq i8 %i.b, 45                      ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.d, align 1, !tbaa !100, !noalias !1787 ; 2 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  %.not.i = icmp eq i8 %i.f, %4
  %or.cond242 = or i1 %.not.i, %i.h
  br i1 %or.cond242, label %bb.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0176.i = phi ptr [ %i.d, %bb.d ], [ %0, %bb.b ] ; 6 uses
  %.0176.i396 = ptrtoint ptr %.0176.i to i64      ; 3 uses
  br i1 %3, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.e
  %i.i = sub i64 %6, %.0176.i396
  %scevgep = getelementptr i8, ptr %.0176.i, i64 %i.i
  br label %.split.us

.split.us:                                        ; preds = %bb.g, %.split.us.preheader
  %.1177.i304.us = phi ptr [ %.0176.i, %.split.us.preheader ], [ %i.q, %bb.g ] ; 3 uses
  %.0178.i303.us = phi i64 [ 0, %.split.us.preheader ], [ %i.p, %bb.g ] ; 2 uses
  %i.j = load i8, ptr %.1177.i304.us, align 1, !tbaa !100, !noalias !1787 ; 3 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.f, label %.split306.us

bb.f:                                             ; preds = %.split.us
  %i.m = mul i64 %.0178.i303.us, 10
  %i.n = zext nneg i8 %i.j to i64
  %i.o = add i64 %i.m, -48
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1177.i304.us, i64 1 ; 3 uses
  %.not267.i.us = icmp eq ptr %i.q, %1
  br i1 %.not267.i.us, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.q, align 1, !tbaa !100, !noalias !1787
  %i.s = icmp eq i8 %i.r, 95
  br i1 %i.s, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.split.us

.thread:                                          ; preds = %bb.l, %bb.f
  %.us-phi308 = phi i64 [ %i.p, %bb.f ], [ %i.ab, %bb.l ]
  %.us-phi309 = phi ptr [ %scevgep, %bb.f ], [ %.2.i, %bb.l ] ; 2 uses
  %i.t = ptrtoint ptr %.us-phi309 to i64          ; 2 uses
  %i.u = sub i64 %i.t, %.0176.i396
  br label %bb.y

.split:                                           ; preds = %bb.e, %bb.l
  %.1177.i304 = phi ptr [ %.2.i, %bb.l ], [ %.0176.i, %bb.e ] ; 4 uses
  %.0178.i303 = phi i64 [ %i.ab, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %i.v = load i8, ptr %.1177.i304, align 1, !tbaa !100, !noalias !1787 ; 3 uses
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.h, label %.split306.us

bb.h:                                             ; preds = %.split
  %i.y = mul i64 %.0178.i303, 10
  %i.z = zext nneg i8 %i.v to i64
  %i.aa = add i64 %i.y, -48
  %i.ab = add i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1177.i304, i64 1 ; 4 uses
  %.not267.i = icmp eq ptr %i.ac, %1
  br i1 %.not267.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !100, !noalias !1787
  %i.ae = icmp eq i8 %i.ad, 95
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1177.i304, i64 2 ; 3 uses
  %i.ag = icmp eq ptr %i.af, %1
  br i1 %i.ag, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !100, !noalias !1787
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %bb.l, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %.2.i = phi ptr [ %i.af, %bb.k ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %.not252.i = icmp eq ptr %.2.i, %1
  br i1 %.not252.i, label %.thread, label %.split, !llvm.loop !1756

.split306.us:                                     ; preds = %.split, %.split.us
  %i.ak = phi i8 [ %i.j, %.split.us ], [ %i.v, %.split ]
  %.us-phi = phi i64 [ %.0178.i303.us, %.split.us ], [ %.0178.i303, %.split ] ; 4 uses
  %.us-phi307 = phi ptr [ %.1177.i304.us, %.split.us ], [ %.1177.i304, %.split ] ; 5 uses
  %i.al = ptrtoint ptr %.us-phi307 to i64         ; 3 uses
  %i.am = sub i64 %i.al, %.0176.i396              ; 2 uses
  %i.an = icmp eq i8 %i.ak, %4
  br i1 %i.an, label %bb.m, label %bb.y

bb.m:                                             ; preds = %.split306.us
  %i.ao = getelementptr inbounds nuw i8, ptr %.us-phi307, i64 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.us-phi307, i64 9 ; 4 uses
  %.not253.i = icmp ugt ptr %i.ap, %1
  br i1 %.not253.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0.copyload.i54 = load i64, ptr %i.ao, align 1, !noalias !1787 ; 2 uses
  %i.aq = add i64 %.0.copyload.i54, 5063812098665367110
  %i.ar = add i64 %.0.copyload.i54, -3472328296227680304 ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, -9187201950435737472
  %.not.i51 = icmp eq i64 %i.at, 0
  br i1 %.not.i51, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = mul i64 %.us-phi, 100000000
  %i.av = mul i64 %i.ar, 10
  %i.aw = lshr i64 %i.ar, 8
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = and i64 %i.ax, 1095216660735
  %i.az = mul i64 %i.ay, 4294967296000100
  %i.ba = lshr i64 %i.ax, 16
  %i.bb = and i64 %i.ba, 1095216660735
  %i.bc = mul i64 %i.bb, 42949672960001
  %i.bd = add i64 %i.bc, %i.az
  %i.be = lshr i64 %i.bd, 32
  %i.bf = add i64 %i.be, %i.au                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.us-phi307, i64 17 ; 2 uses
  %.not254.i = icmp ugt ptr %i.bg, %1
  br i1 %.not254.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.0.copyload.i55 = load i64, ptr %i.ap, align 1, !noalias !1787 ; 2 uses
  %i.bh = add i64 %.0.copyload.i55, 5063812098665367110
  %i.bi = add i64 %.0.copyload.i55, -3472328296227680304 ; 3 uses
  %i.bj = or i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, -9187201950435737472
  %.not.i52 = icmp eq i64 %i.bk, 0
  br i1 %.not.i52, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = mul i64 %i.bf, 100000000
  %i.bm = mul i64 %i.bi, 10
  %i.bn = lshr i64 %i.bi, 8
  %i.bo = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = and i64 %i.bo, 1095216660735
  %i.bq = mul i64 %i.bp, 4294967296000100
  %i.br = lshr i64 %i.bo, 16
  %i.bs = and i64 %i.br, 1095216660735
  %i.bt = mul i64 %i.bs, 42949672960001
  %i.bu = add i64 %i.bt, %i.bq
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = add i64 %i.bv, %i.bl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.1179.i = phi i64 [ %i.bw, %bb.q ], [ %i.bf, %bb.p ], [ %i.bf, %bb.o ], [ %.us-phi, %bb.n ], [ %.us-phi, %bb.m ] ; 3 uses
  %.3.i = phi ptr [ %i.bg, %bb.q ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ] ; 6 uses
  %.3.i400 = ptrtoaddr ptr %.3.i to i64
  br i1 %3, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.r
  %.not255.i310.us = icmp eq ptr %.3.i, %1
  br i1 %.not255.i310.us, label %.outer._crit_edge, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.outer.us
  %i.bx = sub i64 %6, %.3.i400
  %scevgep401 = getelementptr i8, ptr %.3.i, i64 %i.bx
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.t, %.lr.ph.us.preheader
  %.4.i312.us = phi ptr [ %.3.i, %.lr.ph.us.preheader ], [ %i.cb, %bb.t ] ; 3 uses
  %.2180.i311.us = phi i64 [ %.1179.i, %.lr.ph.us.preheader ], [ %i.ce, %bb.t ] ; 2 uses
  %i.by = load i8, ptr %.4.i312.us, align 1, !tbaa !100, !noalias !1787
  %i.bz = add i8 %i.by, -48                       ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 10
  br i1 %i.ca, label %bb.s, label %.outer._crit_edge

bb.s:                                             ; preds = %.lr.ph.us
  %i.cb = getelementptr inbounds nuw i8, ptr %.4.i312.us, i64 1 ; 3 uses
  %i.cc = mul i64 %.2180.i311.us, 10
  %i.cd = zext nneg i8 %i.bz to i64
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %.not256.i.us = icmp eq ptr %i.cb, %1
  br i1 %.not256.i.us, label %.outer._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !100, !noalias !1787
  %i.cg = icmp eq i8 %i.cf, 95
  br i1 %i.cg, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.lr.ph.us

.outer:                                           ; preds = %bb.r, %bb.x
  %.0221.i.ph = phi i64 [ %i.cs, %bb.x ], [ 0, %bb.r ] ; 4 uses
  %.2180.i.ph = phi i64 [ %i.cn, %bb.x ], [ %.1179.i, %bb.r ] ; 2 uses
  %.4.i.ph = phi ptr [ %i.cq, %bb.x ], [ %.3.i, %bb.r ] ; 5 uses
  %.not255.i310 = icmp eq ptr %.4.i.ph, %1
  br i1 %.not255.i310, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.v
  %.4.i312 = phi ptr [ %i.ck, %bb.v ], [ %.4.i.ph, %.outer ] ; 4 uses
  %.2180.i311 = phi i64 [ %i.cn, %bb.v ], [ %.2180.i.ph, %.outer ] ; 2 uses
  %i.ch = load i8, ptr %.4.i312, align 1, !tbaa !100, !noalias !1787
  %i.ci = add i8 %i.ch, -48                       ; 2 uses
  %i.cj = icmp ult i8 %i.ci, 10
  br i1 %i.cj, label %bb.u, label %.outer._crit_edge

bb.u:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.4.i312, i64 1 ; 3 uses
  %i.cl = mul i64 %.2180.i311, 10
  %i.cm = zext nneg i8 %i.ci to i64
  %i.cn = add i64 %i.cl, %i.cm                    ; 3 uses
  %.not256.i = icmp eq ptr %i.ck, %1
  br i1 %.not256.i, label %.outer._crit_edge.loopexit480.split.loop.exit520, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !100, !noalias !1787
  %i.cp = icmp eq i8 %i.co, 95
  br i1 %i.cp, label %bb.w, label %.lr.ph

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.4.i312, i64 2 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %1
  br i1 %i.cr, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = add nuw nsw i64 %.0221.i.ph, 1
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !100, !noalias !1787
  %i.cu = add i8 %i.ct, -48
  %i.cv = icmp ult i8 %i.cu, 10
  br i1 %i.cv, label %.outer, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, !llvm.loop !1757

.outer._crit_edge.loopexit480.split.loop.exit520: ; preds = %bb.u
  %.4.i.ph398.le = ptrtoaddr ptr %.4.i.ph to i64
  %scevgep397.le = getelementptr i8, ptr %.4.i.ph, i64 %6
  %i.cw = sub i64 0, %.4.i.ph398.le
  %scevgep399.le = getelementptr i8, ptr %scevgep397.le, i64 %i.cw
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.lr.ph, %bb.s, %.lr.ph.us, %.outer._crit_edge.loopexit480.split.loop.exit520, %.outer.us
  %.0221.i.ph.lcssa = phi i64 [ %.0221.i.ph, %.outer._crit_edge.loopexit480.split.loop.exit520 ], [ %.0221.i.ph, %.lr.ph ], [ 0, %.outer.us ], [ 0, %bb.s ], [ 0, %.lr.ph.us ], [ %.0221.i.ph, %.outer ]
  %.2180.i.lcssa = phi i64 [ %i.cn, %.outer._crit_edge.loopexit480.split.loop.exit520 ], [ %.2180.i311, %.lr.ph ], [ %.1179.i, %.outer.us ], [ %i.ce, %bb.s ], [ %.2180.i311.us, %.lr.ph.us ], [ %.2180.i.ph, %.outer ]
  %.4.i.lcssa = phi ptr [ %scevgep399.le, %.outer._crit_edge.loopexit480.split.loop.exit520 ], [ %.4.i312, %.lr.ph ], [ %.3.i, %.outer.us ], [ %scevgep401, %bb.s ], [ %.4.i312.us, %.lr.ph.us ], [ %.4.i.ph, %.outer ] ; 2 uses
  %i.cx = ptrtoint ptr %i.ao to i64
  %i.cy = ptrtoint ptr %.4.i.lcssa to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = add nsw i64 %i.cz, %.0221.i.ph.lcssa    ; 2 uses
  %i.db = sub nsw i64 %i.am, %i.da
  br label %bb.y

bb.y:                                             ; preds = %.thread, %.outer._crit_edge, %.split306.us
  %i.dc = phi i64 [ %i.al, %.outer._crit_edge ], [ %i.al, %.split306.us ], [ %i.t, %.thread ]
  %.1211.i = phi i64 [ %i.da, %.outer._crit_edge ], [ 0, %.split306.us ], [ 0, %.thread ] ; 3 uses
  %.1201.i = phi i64 [ %i.db, %.outer._crit_edge ], [ %i.am, %.split306.us ], [ %i.u, %.thread ] ; 3 uses
  %.4182.i = phi i64 [ %.2180.i.lcssa, %.outer._crit_edge ], [ %.us-phi, %.split306.us ], [ %.us-phi308, %.thread ] ; 3 uses
  %.8.i = phi ptr [ %.4.i.lcssa, %.outer._crit_edge ], [ %.us-phi307, %.split306.us ], [ %.us-phi309, %.thread ] ; 7 uses
  %i.dd = icmp eq i64 %.1201.i, 0
  br i1 %i.dd, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = and i32 %5, 1
  %.not257.i = icmp eq i32 %i.de, 0
  %.not258.i = icmp eq ptr %.8.i, %1
  %or.cond.i = or i1 %.not257.i, %.not258.i
  br i1 %or.cond.i, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load i8, ptr %.8.i, align 1, !tbaa !100, !noalias !1787
  switch i8 %i.df, label %bb.am [
    i8 101, label %bb.ab
    i8 69, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 4 uses
  %.not260.i = icmp eq ptr %i.dg, %1
  br i1 %.not260.i, label %.critedge271.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !100, !noalias !1787 ; 2 uses
  %i.di = icmp eq i8 %i.dh, 45
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  br label %.critedge271.i

bb.ae:                                            ; preds = %bb.ac
  %i.dk = icmp eq i8 %i.dh, 43
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  %spec.select.i = select i1 %i.dk, ptr %i.dl, ptr %i.dg
  br label %.critedge271.i

.critedge271.i:                                   ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0199.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.9.i = phi ptr [ %i.dj, %bb.ad ], [ %i.dg, %bb.ab ], [ %spec.select.i, %bb.ae ] ; 3 uses
  %i.dm = icmp eq ptr %.9.i, %1
  br i1 %i.dm, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.critedge271.i
  %i.dn = load i8, ptr %.9.i, align 1, !tbaa !100, !noalias !1787
  %i.do = add i8 %i.dn, -48
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %.lr.ph335, label %bb.al

.lr.ph335:                                        ; preds = %bb.af, %.backedge
  %.10.i334 = phi ptr [ %.10.i.be, %.backedge ], [ %.9.i, %bb.af ] ; 4 uses
  %.0204.i333 = phi i64 [ %.1205.i, %.backedge ], [ 0, %bb.af ] ; 4 uses
  %i.dq = load i8, ptr %.10.i334, align 1, !tbaa !100, !noalias !1787
  %i.dr = add i8 %i.dq, -48                       ; 2 uses
  %i.ds = icmp ult i8 %i.dr, 10
  br i1 %i.ds, label %bb.ag, label %.thread133

bb.ag:                                            ; preds = %.lr.ph335
  %i.dt = icmp slt i64 %.0204.i333, 65536
  %i.du = mul nsw i64 %.0204.i333, 10
  %i.dv = zext nneg i8 %i.dr to i64
  %i.dw = add nsw i64 %i.du, %i.dv
  %.1205.i = select i1 %i.dt, i64 %i.dw, i64 %.0204.i333 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.10.i334, i64 1 ; 4 uses
  %.not262.i = icmp eq ptr %i.dx, %1
  br i1 %.not262.i, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !100, !noalias !1787
  %i.dz = icmp eq i8 %i.dy, 95
  br i1 %i.dz, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %bb.ah
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.10.i334, i64 2 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, %1
  br i1 %i.eb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !100, !noalias !1787
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  br i1 %i.ee, label %.backedge, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

.backedge:                                        ; preds = %bb.ag, %bb.ah, %bb.ak
  %.10.i.be = phi ptr [ %i.ea, %bb.ak ], [ %i.dx, %bb.ah ], [ %i.dx, %bb.ag ] ; 3 uses
  %.not261.i = icmp eq ptr %.10.i.be, %1
  br i1 %.not261.i, label %.thread133, label %.lr.ph335, !llvm.loop !1758

.thread133:                                       ; preds = %.lr.ph335, %.backedge
  %.0204.i.lcssa.ph = phi i64 [ %.0204.i333, %.lr.ph335 ], [ %.1205.i, %.backedge ] ; 2 uses
  %.10.i.lcssa.ph = phi ptr [ %.10.i334, %.lr.ph335 ], [ %.10.i.be, %.backedge ]
  %i.ef = sub nsw i64 0, %.0204.i.lcssa.ph
  %spec.select272.i = select i1 %.0199.i, i64 %i.ef, i64 %.0204.i.lcssa.ph ; 2 uses
  %i.eg = add nsw i64 %spec.select272.i, %.1211.i
  br label %bb.an

bb.al:                                            ; preds = %.critedge271.i, %bb.af
  %i.eh = and i32 %5, 4
  %.not263.i.not = icmp eq i32 %i.eh, 0
  br i1 %.not263.i.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.aa, %bb.z
  %i.ei = and i32 %5, 5
  %or.cond273.i.not.not = icmp eq i32 %i.ei, 1
  br i1 %or.cond273.i.not.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.an:                                            ; preds = %.thread133, %bb.am, %bb.al
  %.4214.i = phi i64 [ %.1211.i, %bb.al ], [ %.1211.i, %bb.am ], [ %i.eg, %.thread133 ] ; 5 uses
  %.5209.i = phi i64 [ 0, %bb.al ], [ 0, %bb.am ], [ %spec.select272.i, %.thread133 ] ; 2 uses
  %.15.i = phi ptr [ %.8.i, %bb.al ], [ %.8.i, %bb.am ], [ %.10.i.lcssa.ph, %.thread133 ] ; 3 uses
  %i.ej = icmp sgt i64 %.1201.i, 19
  br i1 %i.ej, label %.preheader280, label %bb.ba

.preheader280:                                    ; preds = %bb.an, %.critedge8.i
  %.0191.i342 = phi ptr [ %i.eo, %.critedge8.i ], [ %.0176.i, %bb.an ] ; 2 uses
  %.2202.i341 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1201.i, %bb.an ] ; 2 uses
  %i.ek = load i8, ptr %.0191.i342, align 1, !tbaa !100, !noalias !1787 ; 2 uses
  %i.el = icmp eq i8 %i.ek, 48                    ; 2 uses
  %i.em = icmp eq i8 %i.ek, %4
  %or.cond274.i = or i1 %i.el, %i.em
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader280
  %i.en = sext i1 %i.el to i64
  %spec.select275.i = add nsw i64 %.2202.i341, %i.en ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0191.i342, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.eo, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader280, !llvm.loop !1759

.critedge.i:                                      ; preds = %.preheader280, %.critedge8.i
  %.2202.i.lcssa = phi i64 [ %.2202.i341, %.preheader280 ], [ %spec.select275.i, %.critedge8.i ]
  %i.ep = icmp sgt i64 %.2202.i.lcssa, 19
  br i1 %i.ep, label %.preheader, label %bb.ba

.preheader:                                       ; preds = %.critedge.i, %bb.at
  %.16.i344 = phi ptr [ %.17.i, %bb.at ], [ %.0176.i, %.critedge.i ] ; 4 uses
  %.5183.i343 = phi i64 [ %i.ew, %bb.at ], [ 0, %.critedge.i ] ; 2 uses
  %i.eq = load i8, ptr %.16.i344, align 1, !tbaa !100, !noalias !1787 ; 2 uses
  %i.er = add i8 %i.eq, -48
  %i.es = icmp ult i8 %i.er, 10
  br i1 %i.es, label %bb.ao, label %.thread139

bb.ao:                                            ; preds = %.preheader
  %i.et = mul nuw i64 %.5183.i343, 10
  %i.eu = zext nneg i8 %i.eq to i64
  %i.ev = add i64 %i.et, -48
  %i.ew = add i64 %i.ev, %i.eu                    ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.16.i344, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.ex, %1
  br i1 %.not266.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !100, !noalias !1787
  %i.ez = icmp eq i8 %i.ey, 95
  br i1 %i.ez, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i344, i64 2 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, %1
  br i1 %i.fb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !100, !noalias !1787
  %i.fd = add i8 %i.fc, -48
  %i.fe = icmp ult i8 %i.fd, 10
  br i1 %i.fe, label %bb.at, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.ap, %bb.ao
  %.17.i = phi ptr [ %i.fa, %bb.as ], [ %i.ex, %bb.ap ], [ %i.ex, %bb.ao ] ; 4 uses
  %i.ff = icmp ult i64 %i.ew, 1000000000000000000
  %i.fg = icmp ne ptr %.17.i, %1
  %i.fh = and i1 %i.ff, %i.fg
end_hunk_7
begin_hunk_8_@_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.lo = add nsw i64 %.sroa.086.0.ph455472, 17
  %i.lp = icmp ult i64 %i.lo, 28
  %or.cond254.not272 = and i1 %i.lp, %i.ln
  %i.lq = and i64 %i.kx, 3
  %i.lr = icmp eq i64 %i.lq, 1
  %or.cond256 = select i1 %or.cond254.not272, i1 %i.lr, i1 false
  %i.ls = shl i64 %i.kx, %i.kw
  %i.lt = icmp eq i64 %i.ls, %spec.select.i78.pn
  %or.cond258 = select i1 %or.cond256, i1 %i.lt, i1 false
  %i.lu = and i64 %i.kx, 67108862
  %.sroa.096.0 = select i1 %or.cond258, i64 %i.lu, i64 %i.kx ; 2 uses
  %i.lv = and i64 %.sroa.096.0, 1
  %i.lw = add nuw nsw i64 %i.lv, %.sroa.096.0     ; 2 uses
  %i.lx = lshr i64 %i.lw, 1
  %.not27.i = icmp samesign ugt i64 %i.lw, 33554431 ; 2 uses
  %i.ly = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.lc, %i.ly      ; 2 uses
  %i.lz = and i64 %i.lx, 58720255
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 254 ; 2 uses
  %.not273 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select262 = select i1 %.not273, i64 0, i64 %i.lz
  %spec.select263 = select i1 %.not28.i, i32 255, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bt, %bb.br, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79, %bb.bo, %bb.bn, %bb.bs
  %.sroa.096.2 = phi i64 [ 0, %bb.bo ], [ 0, %bb.bn ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79 ], [ %i.lk, %bb.bs ], [ %spec.select262, %bb.bt ], [ 0, %bb.br ]
  %.sroa.19.1 = phi i32 [ 255, %bb.bo ], [ 0, %bb.bn ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79 ], [ %i.lm, %bb.bs ], [ %spec.select263, %bb.bt ], [ 0, %bb.br ]
  %.not.i80 = icmp ne i64 %.sroa.0104.2460, %.sroa.096.2
  %i.ma = icmp ne i32 %.sroa.19110.1462, %.sroa.19.1
  %i.mb = icmp slt i32 %.sroa.19110.1462, 0
  %i.mc = or i1 %i.mb, %i.ma
  %or.cond259 = select i1 %.not.i80, i1 true, i1 %i.mc
  br i1 %or.cond259, label %.thread238, label %bb.bv

.thread238:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit
  %i.md = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIfEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bu unwind label %bb.bx     ; 2 uses

bb.bu:                                            ; preds = %.thread238
  %.fca.0.extract = extractvalue { i64, i32 } %i.md, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.md, 1
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, %bb.bl, %bb.bm, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, %bb.bu
  %.sroa.683.1 = phi i32 [ %.fca.1.extract, %bb.bu ], [ %.sroa.19110.1462, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19110.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.iz, %bb.bl ], [ %spec.select261, %bb.bm ]
  %.sroa.081.0 = phi i64 [ %.fca.0.extract, %bb.bu ], [ %.sroa.0104.2460, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.ix, %bb.bl ], [ %spec.select260, %bb.bm ]
  %i.me = sext i32 %.sroa.683.1 to i64
  %i.mf = shl nsw i64 %i.me, 23
  %i.mg = or i64 %i.mf, %.sroa.081.0              ; 2 uses
  %i.mh = or i64 %i.mg, 2147483648
  %spec.select = select i1 %i.c, i64 %i.mh, i64 %i.mg
  %.0.extract.trunc.i = trunc i64 %spec.select to i32
  store i32 %.0.extract.trunc.i, ptr %2, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, %bb.bv, %bb.bf, %bb.be, %bb.a
  %.sroa.044.1 = phi ptr [ %0, %bb.a ], [ %.15.i, %bb.bv ], [ %i.gm, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ %.15.i, %bb.bf ], [ %.15.i, %bb.be ]
  %.sroa.545.1 = phi i32 [ 22, %bb.a ], [ 0, %bb.bv ], [ %i.gn, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ 0, %bb.bf ], [ 0, %bb.be ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.545.1, 1
  ret { ptr, i32 } %.fca.1.insert

bb.bx:                                            ; preds = %.thread238
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  tail call void @__clang_call_terminate(ptr %i.mj) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIfEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !100
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !100 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !100   ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !100   ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, float -qnan, float +qnan
  store float %i.aa, ptr %2, align 4, !tbaa !804
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !100
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !100 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !100 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 41
  br i1 %i.ao, label %.lr.ph._crit_edge, label %.lr.ph76, !llvm.loop !1790

bb.f:                                             ; preds = %.lr.ph.i43.preheader
  %i.ap = icmp samesign ugt i64 %i.e, 7
  br i1 %i.ap, label %.lr.ph.i48, label %bb.g

.lr.ph.i48:                                       ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %i.ar = load <4 x i8>, ptr %i.aq, align 1, !tbaa !100
  %i.as = xor <4 x i8> %i.ar, <i8 73, i8 78, i8 73, i8 84>
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !100
  %i.av = xor i8 %i.au, 89
  %i.aw = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.as)
  %op.rdx = or i8 %i.aw, %i.av
  %i.ax = and i8 %op.rdx, -33
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i48, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i48, %bb.g
  %.sink = phi i64 [ 3, %bb.g ], [ 8, %.lr.ph.i48 ]
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.sink
  %i.ba = select i1 %i.b, float -inf, float +inf
  store float %i.ba, ptr %2, align 4, !tbaa !804
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a, %.lr.ph.i43.preheader, %bb.b, %bb.c, %.lr.ph._crit_edge, %bb.h
  %.sroa.0.3 = phi ptr [ %0, %.lr.ph.i43.preheader ], [ %i.az, %bb.h ], [ %i.z, %bb.b ], [ %i.z, %bb.c ], [ %i.ag, %.lr.ph._crit_edge ], [ %0, %bb.a ], [ %i.z, %bb.d ], [ %i.z, %bb.e ]
  %.sroa.6.0 = phi i32 [ 22, %.lr.ph.i43.preheader ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIfEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %3 = alloca %"struct.duckdb_fast_float::decimal", align 4 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  %i.c = load i8, ptr %0, align 1, !tbaa !100, !noalias !1791
  %i.d = icmp eq i8 %i.c, 45                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 4, !tbaa !1766, !alias.scope !1791
  %spec.select.i.idx = zext i1 %i.d to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i.idx ; 3 uses
  %.not.i9 = icmp eq ptr %spec.select.i, %1
  br i1 %.not.i9, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %2, %4
  %scevgep = getelementptr i8, ptr %0, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.1.i10 = phi ptr [ %i.j, %bb.b ], [ %spec.select.i, %.lr.ph.preheader ] ; 3 uses
  %i.h = load i8, ptr %.1.i10, align 1, !tbaa !100, !noalias !1791
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i10, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !1768

.critedge.i:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.1.i.lcssa = phi ptr [ %spec.select.i, %bb.a ], [ %.1.i10, %.lr.ph ], [ %scevgep, %bb.b ] ; 5 uses
  %.1.i.lcssa60 = ptrtoaddr ptr %.1.i.lcssa to i64
  %.not99.i15 = icmp eq ptr %.1.i.lcssa, %1
  br i1 %.not99.i15, label %.critedge106.i.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %.critedge.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph17, %bb.f
  %.2.i16 = phi ptr [ %.1.i.lcssa, %.lr.ph17 ], [ %i.s, %bb.f ] ; 4 uses
  %.promoted26 = phi i32 [ 0, %.lr.ph17 ], [ %i.r, %bb.f ] ; 9 uses
  %i.l = load i8, ptr %.2.i16, align 1, !tbaa !100, !noalias !1791 ; 2 uses
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %.critedge2.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %.promoted26, 768
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %.promoted26 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  store i8 %i.m, ptr %i.q, align 1, !tbaa !100, !alias.scope !1791
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = add i32 %.promoted26, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 3 uses
  %.not99.i = icmp eq ptr %i.s, %1
  br i1 %.not99.i, label %.critedge106.i.loopexit, label %bb.c, !llvm.loop !1769

.critedge2.i:                                     ; preds = %bb.c
  store i32 %.promoted26, ptr %3, align 4
  %i.t = icmp eq i8 %i.l, 46
  br i1 %i.t, label %bb.g, label %.critedge106.i

bb.g:                                             ; preds = %.critedge2.i
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 4 uses
  %i.v = icmp ne i32 %.promoted26, 0
  %.not100.i20 = icmp eq ptr %i.u, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not100.i20
  br i1 %or.cond, label %.critedge4.i, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %bb.g
  %i.w = sub i64 %2, %.1.i.lcssa60
  %scevgep61 = getelementptr i8, ptr %.1.i.lcssa, i64 %i.w
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %bb.h
  %.3.i21 = phi ptr [ %i.z, %bb.h ], [ %i.u, %.lr.ph22.preheader ] ; 3 uses
  %i.x = load i8, ptr %.3.i21, align 1, !tbaa !100, !noalias !1791
  %i.y = icmp eq i8 %i.x, 48
  br i1 %i.y, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.lr.ph22
  %i.z = getelementptr inbounds nuw i8, ptr %.3.i21, i64 1 ; 2 uses
  %.not100.i = icmp eq ptr %i.z, %1
  br i1 %.not100.i, label %.critedge4.i, label %.lr.ph22, !llvm.loop !1770

.critedge4.i:                                     ; preds = %bb.h, %.lr.ph22, %bb.g
  %.4.i = phi ptr [ %i.u, %bb.g ], [ %.3.i21, %.lr.ph22 ], [ %scevgep61, %bb.h ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.4.i, i64 8 ; 2 uses
  %i.ab = icmp ule ptr %i.aa, %1
  %i.ac = add i32 %.promoted26, 8                 ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 768
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph29, label %.thread

.lr.ph29:                                         ; preds = %.critedge4.i
  %i.af = zext nneg i32 %i.ac to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph29, %bb.j
  %indvars.iv = phi i64 [ %i.af, %.lr.ph29 ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ag = phi ptr [ %i.aa, %.lr.ph29 ], [ %i.ao, %bb.j ] ; 3 uses
  %.5.i28 = phi ptr [ %.4.i, %.lr.ph29 ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ah = phi i32 [ %.promoted26, %.lr.ph29 ], [ %i.as, %bb.j ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.5.i28, align 1, !noalias !1791 ; 2 uses
  %i.ai = add i64 %.0.copyload.i.i, 5063812098665367110
  %i.aj = add i64 %.0.copyload.i.i, -3472328296227680304 ; 2 uses
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = and i64 %i.ak, -9187201950435737472
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = zext i32 %i.ah to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.am
  store i64 %i.aj, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ap = icmp ule ptr %i.ao, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.aq = icmp samesign ult i64 %indvars.iv, 760
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  %i.as = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %i.ar, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %.critedge4.i
  %.lcssa27 = phi i32 [ %.promoted26, %.critedge4.i ], [ %i.ah, %bb.i ], [ %i.as, %bb.j ] ; 3 uses
  %.5.i.lcssa = phi ptr [ %.4.i, %.critedge4.i ], [ %.5.i28, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  store i32 %.lcssa27, ptr %3, align 4
  %.not101.i37 = icmp eq ptr %.5.i.lcssa, %1
  br i1 %.not101.i37, label %.critedge6.i, label %.lr.ph39

.lr.ph39:                                         ; preds = %.thread, %bb.m
  %.8.i38 = phi ptr [ %i.bb, %bb.m ], [ %.5.i.lcssa, %.thread ] ; 3 uses
  %i.at = phi i32 [ %i.ba, %bb.m ], [ %.lcssa27, %.thread ] ; 4 uses
  %i.au = load i8, ptr %.8.i38, align 1, !tbaa !100, !noalias !1791
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %i.aw = icmp ult i8 %i.av, 10
  br i1 %i.aw, label %bb.k, label %.critedge6.i

bb.k:                                             ; preds = %.lr.ph39
  %i.ax = icmp ult i32 %i.at, 768
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ay
  store i8 %i.av, ptr %i.az, align 1, !tbaa !100, !alias.scope !1791
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = add i32 %i.at, 1                        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.i38, i64 1 ; 3 uses
  %.not101.i = icmp eq ptr %i.bb, %1
  br i1 %.not101.i, label %.critedge6.i, label %.lr.ph39, !llvm.loop !1771

.critedge6.i:                                     ; preds = %bb.m, %.lr.ph39, %.thread
  %.lcssa36 = phi i32 [ %.lcssa27, %.thread ], [ %i.at, %.lr.ph39 ], [ %i.ba, %bb.m ] ; 2 uses
  %.8.i.lcssa = phi ptr [ %.5.i.lcssa, %.thread ], [ %.8.i38, %.lr.ph39 ], [ %i.bb, %bb.m ] ; 2 uses
  store i32 %.lcssa36, ptr %3, align 4
  %i.bc = ptrtoint ptr %i.u to i64
  %i.bd = ptrtoint ptr %.8.i.lcssa to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !1772, !alias.scope !1791
  br label %.critedge106.i

.critedge106.i.loopexit:                          ; preds = %bb.f, %.critedge.i
  %.lcssa13 = phi i32 [ 0, %.critedge.i ], [ %i.r, %bb.f ] ; 2 uses
  %.2.i.lcssa = phi ptr [ %.1.i.lcssa, %.critedge.i ], [ %i.s, %bb.f ]
  store i32 %.lcssa13, ptr %3, align 4
  br label %.critedge106.i

.critedge106.i:                                   ; preds = %.critedge106.i.loopexit, %.critedge6.i, %.critedge2.i
  %i.bg = phi i32 [ %i.bf, %.critedge6.i ], [ 0, %.critedge2.i ], [ 0, %.critedge106.i.loopexit ] ; 2 uses
  %i.bh = phi i32 [ %.lcssa36, %.critedge6.i ], [ %.promoted26, %.critedge2.i ], [ %.lcssa13, %.critedge106.i.loopexit ] ; 3 uses
  %.9.i = phi ptr [ %.8.i.lcssa, %.critedge6.i ], [ %.2.i16, %.critedge2.i ], [ %.2.i.lcssa, %.critedge106.i.loopexit ] ; 6 uses
  %.not102.i = icmp eq i32 %i.bh, 0
  br i1 %.not102.i, label %.thread6, label %.preheader

.preheader:                                       ; preds = %.critedge106.i, %.critedge8.i
  %.9.pn.i = phi ptr [ %.087.i, %.critedge8.i ], [ %.9.i, %.critedge106.i ]
  %.085.i = phi i32 [ %spec.select107.i, %.critedge8.i ], [ 0, %.critedge106.i ] ; 2 uses
  %.087.i = getelementptr inbounds i8, ptr %.9.pn.i, i64 -1 ; 2 uses
  %i.bi = load i8, ptr %.087.i, align 1, !tbaa !100, !noalias !1791 ; 2 uses
  switch i8 %i.bi, label %bb.n [
    i8 48, label %.critedge8.i
    i8 46, label %.critedge8.i
  ]

.critedge8.i:                                     ; preds = %.preheader, %.preheader
  %i.bj = icmp eq i8 %i.bi, 48
  %i.bk = zext i1 %i.bj to i32
  %spec.select107.i = add nuw nsw i32 %.085.i, %i.bk
  br label %.preheader, !llvm.loop !1773

bb.n:                                             ; preds = %.preheader
  %i.bl = add nsw i32 %i.bg, %i.bh                ; 3 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !1772, !alias.scope !1791
  %i.bm = sub i32 %i.bh, %.085.i                  ; 3 uses
  store i32 %i.bm, ptr %3, align 4, !tbaa !1774, !alias.scope !1791
  %i.bn = icmp ugt i32 %i.bm, 768
  br i1 %i.bn, label %bb.o, label %.thread6

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.b, align 1, !tbaa !1775, !alias.scope !1791
  store i32 768, ptr %3, align 4, !tbaa !1774, !alias.scope !1791
  br label %.thread6

.thread6:                                         ; preds = %.critedge106.i, %bb.o, %bb.n
  %i.bo = phi i32 [ 0, %.critedge106.i ], [ 768, %bb.o ], [ %i.bm, %bb.n ] ; 3 uses
  %i.bp = phi i32 [ %i.bg, %.critedge106.i ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ]
  %.not103.i = icmp eq ptr %.9.i, %1
  br i1 %.not103.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.thread6
  %i.bq = load i8, ptr %.9.i, align 1, !tbaa !100, !noalias !1791
  switch i8 %i.bq, label %bb.v [
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.9.i, i64 1 ; 4 uses
  %.not104.i = icmp eq ptr %i.br, %1
  br i1 %.not104.i, label %.critedge109.i, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_8
