inline.NumInlined: 5543
inline.NumDeleted: 2531
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN6duckdb20ColumnDataCopyStructERNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  store i32 0, ptr %i.bc, align 4, !tbaa !58
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !543
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !543
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bb, %bb.r ], [ %i.bl, %bb.s ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.bm, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !60

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bn = add nuw i64 %.029, 1                    ; 2 uses
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !537
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !539
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 56
  %i.bu = icmp ult i64 %i.bn, %i.bt
  br i1 %i.bu, label %bb.b, label %._crit_edge, !llvm.loop !544

bb.u:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.bv
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL23TemplatedColumnDataCopyINS_15StructValueCopyEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"struct.duckdb::ValidityMask", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !496, !nonnull !64, !align !94 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !499, !nonnull !64, !align !94 ; 2 uses
  %.not106 = icmp eq i64 %4, 0
  br i1 %.not106, label %._crit_edge, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.038.0.copyload = load i64, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph111, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit
  %.0109 = phi i64 [ %3, %.lr.ph111 ], [ %i.dx, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit ] ; 2 uses
  %.sroa.038.0108 = phi i64 [ %.sroa.038.0.copyload, %.lr.ph111 ], [ %.sroa.038.1, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit ] ; 4 uses
  %.069107 = phi i64 [ %4, %.lr.ph111 ], [ %i.dy, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit ] ; 2 uses
  %i.o = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.038.0108) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 5 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !510
  %i.r = zext i16 %i.q to i64
  %i.s = sub nsw i64 2048, %i.r
  %i.t = and i64 %i.s, 4294967295                 ; 2 uses
  %i.u = call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %.069107) ; 4 uses
  %i.v = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.w = load i8, ptr %i.v, align 8, !tbaa !7
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.o, align 8
  %i.z = inttoptr i64 %i.y to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !155
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ad = zext i32 %i.ac to i64
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !103
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !144
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !147
  %i.aj = zext i32 %i.ab to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.z, %bb.c ], [ %i.ak, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %.0.i, ptr %6, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.j, align 8, !tbaa !479
  %i.al = load i16, ptr %i.p, align 8, !tbaa !510
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit
  %.not.i.i = icmp eq ptr %.0.i, null
  br i1 %.not.i.i, label %bb.f, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 2048)
          to label %._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge unwind label %bb.g

._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge: ; preds = %bb.f
  %.pre.i.pre = load ptr, ptr %6, align 8, !tbaa !189
  br label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit: ; preds = %._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge, %bb.e
  %.pre.i = phi ptr [ %.pre.i.pre, %._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge ], [ %.0.i, %bb.e ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.pre.i, i8 -1, i64 256, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit, %bb.af, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit
  %i.ao = phi ptr [ %.pre.i, %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit ], [ %.0.i, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit ]
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !189
  %.not.i = icmp eq ptr %i.ap, null
  %.not112 = icmp eq i64 %i.t, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not112
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.aq = phi ptr [ %i.ds, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.ao, %bb.h ] ; 4 uses
  %.065105 = phi i64 [ %i.dt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ 0, %bb.h ] ; 3 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = add i64 %.065105, %.0109                ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i73 = icmp eq ptr %i.at, null
  br i1 %.not.i73, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = zext i32 %i.av to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74

_ZNK6duckdb15SelectionVector9get_indexEm.exit74:  ; preds = %bb.i, %.lr.ph
  %i.ax = phi i64 [ %i.aw, %bb.i ], [ %i.as, %.lr.ph ] ; 2 uses
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75 = icmp eq ptr %i.ay, null
  br i1 %.not.i75, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74
  %i.az = lshr i64 %i.ax, 6
  %i.ba = and i64 %i.ax, 63
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !103
  %i.bd = shl nuw i64 1, %i.ba
  %i.be = and i64 %i.bc, %i.bd
  %.not100 = icmp eq i64 %i.be, 0
  br i1 %.not100, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.j:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.bg = load i16, ptr %i.p, align 8, !tbaa !510
  %i.bh = zext i16 %i.bg to i64
  %i.bi = add nuw nsw i64 %.065105, %i.bh         ; 2 uses
  %.not.i77 = icmp eq ptr %i.aq, null
  br i1 %.not.i77, label %bb.l, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.l:                                             ; preds = %bb.k
  %i.bj = load i64, ptr %i.j, align 8, !tbaa !479
  %i.bk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92 unwind label %bb.j   ; 11 uses

.noexc92:                                         ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 7 uses
  store i32 1, ptr %i.bl, align 8, !tbaa !56, !noalias !545
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  store i32 1, ptr %i.bm, align 4, !tbaa !58, !noalias !545
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bk, align 8, !tbaa !51, !noalias !545
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 4 uses
  store ptr null, ptr %i.bn, align 8, !tbaa !552, !noalias !545
  %i.bo = add i64 %i.bj, 63
  %i.bp = lshr i64 %i.bo, 6                       ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3                ; 2 uses
  %i.br = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bq) #28
          to label %.noexc.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i, !noalias !545 ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc92
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !404, !noalias !545
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.m, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.br, i8 -1, i64 %i.bq, i1 false), !tbaa !103, !noalias !545
  br label %bb.m

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i: ; preds = %.noexc92
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bk) #25, !noalias !545
  br label %.body

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !554
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 2, ptr %i.bl, align 8, !tbaa !3, !noalias !554
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bu = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4, !noalias !554 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i: ; preds = %bb.o, %bb.n
  %i.bv = load atomic i64, ptr %i.bl acquire, align 8, !noalias !554 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i
  store i32 0, ptr %i.bl, align 8, !tbaa !56, !noalias !554
  store i32 0, ptr %i.bm, align 4, !tbaa !58, !noalias !554
  %i.by = load ptr, ptr %i.bk, align 8, !tbaa !51, !noalias !554
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !554
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #24, !noalias !554, !inline_history !555
  %i.cb = load ptr, ptr %i.bk, align 8, !tbaa !51, !noalias !554
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !554
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #24, !noalias !554, !inline_history !555
  br label %.noexc86

bb.q:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !554
  %.not.i.i.i.i.i89 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i89, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = add nsw i32 %i.bx, -1
  store i32 %i.cf, ptr %i.bl, align 8, !tbaa !3, !noalias !554
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90

bb.s:                                             ; preds = %bb.q
  %i.cg = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4, !noalias !554
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i91 = phi i32 [ %i.bx, %bb.r ], [ %i.cg, %bb.s ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i91, 1
  br i1 %i.ch, label %bb.t, label %.noexc86, !prof !60

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #24, !noalias !554
  br label %.noexc86

.noexc86:                                         ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90, %bb.p
  store ptr %i.bn, ptr %i.i, align 8, !tbaa !556
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i82, label %.noexc79, label %bb.u

bb.u:                                             ; preds = %.noexc86
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.cj, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !58
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #24, !inline_history !557
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !51
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #24, !inline_history !557
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cm, %bb.x ], [ %i.cw, %bb.y ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cx, label %bb.z, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i, !prof !60

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !558  ; 2 uses
  %.not.i88 = icmp eq ptr %.pr, null
  br i1 %.not.i88, label %.noexc.i, label %.noexc79, !prof !559

.noexc.i:                                         ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i
  %i.cy = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.cz, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc95:                                         ; preds = %.noexc.i
  store ptr %i.da, ptr %5, align 8, !tbaa !72
  %i.db = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.da, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !361
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  store i8 0, ptr %i.dd, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc95
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ad unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %.noexc95
  %.0.i.i = phi i1 [ false, %bb.aa ], [ true, %.noexc95 ] ; 2 uses
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dg = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cz
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.dg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i, label %bb.ac, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i, label %bb.ac, label %.body

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
end_hunk_0
begin_hunk_1_@_ZN6duckdbL14ColumnDataCopyIbEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a

vector.memcheck:                                  ; preds = %iter.check
  %i.ax = add i64 %.0.i.i21, %i.av
  %i.ay = add i64 %.0111.i, %i.au
  %i.az = sub i64 %i.ay, %i.ax
  %diff.check = icmp ugt i64 %i.az, -32
  br i1 %diff.check, label %.lr.ph107.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check22 = icmp samesign ult i64 %i.v, 32
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 4294967264               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr i8, ptr %invariant.gep139.i, i64 %index ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1, !tbaa !188
  %wide.load23 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !188
  %i.bd = getelementptr i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store <16 x i8> %wide.load, ptr %i.bd, align 1, !tbaa !188
  store <16 x i8> %wide.load23, ptr %i.be, align 1, !tbaa !188
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !591

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph107.split.us.i.preheader, label %vec.epilog.ph, !prof !592

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.v, 4294967292             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr i8, ptr %invariant.gep139.i, i64 %index25
  %wide.load26 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !188
  %i.bh = getelementptr i8, ptr %invariant.gep.i, i64 %index25
  store <4 x i8> %wide.load26, ptr %i.bh, align 1, !tbaa !188
  %index.next27 = add nuw i64 %index25, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next27, %n.vec24
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !593

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.v, %n.vec24
  br i1 %cmp.n28, label %.loopexit.i, label %.lr.ph107.split.us.i.preheader

.lr.ph107.split.us.i.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.066106.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec24, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter32 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol

.lr.ph107.split.us.i.prol:                        ; preds = %.lr.ph107.split.us.i.preheader, %.lr.ph107.split.us.i.prol
  %.066106.us.i.prol = phi i64 [ %i.bk, %.lr.ph107.split.us.i.prol ], [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.split.us.i.prol ], [ 0, %.lr.ph107.split.us.i.preheader ]
  %gep140.i.prol = getelementptr i8, ptr %invariant.gep139.i, i64 %.066106.us.i.prol
  %i.bj = load i8, ptr %gep140.i.prol, align 1, !tbaa !188, !range !63, !noundef !64
  %gep.us.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %.066106.us.i.prol
  store i8 %i.bj, ptr %gep.us.i.prol, align 1, !tbaa !188
  %i.bk = add nuw nsw i64 %.066106.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter32
  br i1 %prol.iter.cmp.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol, !llvm.loop !594

.lr.ph107.split.us.i.prol.loopexit:               ; preds = %.lr.ph107.split.us.i.prol, %.lr.ph107.split.us.i.preheader
  %.066106.us.i.unr = phi i64 [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ], [ %i.bk, %.lr.ph107.split.us.i.prol ]
  %i.bl = sub nsw i64 %.066106.us.i.ph, %i.v
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %.loopexit.i, label %.lr.ph107.split.us.i

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.split.us.i.prol.loopexit, %.lr.ph107.split.us.i
  %.066106.us.i = phi i64 [ %i.bu, %.lr.ph107.split.us.i ], [ %.066106.us.i.unr, %.lr.ph107.split.us.i.prol.loopexit ] ; 6 uses
  %gep140.i = getelementptr i8, ptr %invariant.gep139.i, i64 %.066106.us.i
  %i.bn = load i8, ptr %gep140.i, align 1, !tbaa !188, !range !63, !noundef !64
  %gep.us.i = getelementptr i8, ptr %invariant.gep.i, i64 %.066106.us.i
  store i8 %i.bn, ptr %gep.us.i, align 1, !tbaa !188
  %i.bo = add nuw nsw i64 %.066106.us.i, 1        ; 2 uses
  %gep140.i.1 = getelementptr i8, ptr %invariant.gep139.i, i64 %i.bo
  %i.bp = load i8, ptr %gep140.i.1, align 1, !tbaa !188, !range !63, !noundef !64
  %gep.us.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bo
  store i8 %i.bp, ptr %gep.us.i.1, align 1, !tbaa !188
  %i.bq = add nuw nsw i64 %.066106.us.i, 2        ; 2 uses
  %gep140.i.2 = getelementptr i8, ptr %invariant.gep139.i, i64 %i.bq
  %i.br = load i8, ptr %gep140.i.2, align 1, !tbaa !188, !range !63, !noundef !64
  %gep.us.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bq
  store i8 %i.br, ptr %gep.us.i.2, align 1, !tbaa !188
  %i.bs = add nuw nsw i64 %.066106.us.i, 3        ; 2 uses
  %gep140.i.3 = getelementptr i8, ptr %invariant.gep139.i, i64 %i.bs
  %i.bt = load i8, ptr %gep140.i.3, align 1, !tbaa !188, !range !63, !noundef !64
  %gep.us.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bs
  store i8 %i.bt, ptr %gep.us.i.3, align 1, !tbaa !188
  %i.bu = add nuw nsw i64 %.066106.us.i, 4        ; 2 uses
  %exitcond123.not.i.3 = icmp eq i64 %i.bu, %i.v
  br i1 %exitcond123.not.i.3, label %.loopexit.i, label %.lr.ph107.split.us.i, !llvm.loop !596

.lr.ph107.split.i:                                ; preds = %.lr.ph107.split.i, %.lr.ph107.split.preheader.i.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %i.co, %.lr.ph107.split.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %niter.next.3, %.lr.ph107.split.i ]
  %gep138.i = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %.066106.i
  %i.bv = load i32, ptr %gep138.i, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !188, !range !63, !noundef !64
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.066106.i
  store i8 %i.by, ptr %gep.i, align 1, !tbaa !188
  %i.bz = or disjoint i64 %.066106.i, 1           ; 2 uses
  %gep138.i.1 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.bz
  %i.ca = load i32, ptr %gep138.i.1, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !188, !range !63, !noundef !64
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.bz
  store i8 %i.cd, ptr %gep.i.1, align 1, !tbaa !188
  %i.ce = or disjoint i64 %.066106.i, 2           ; 2 uses
  %gep138.i.2 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.ce
  %i.cf = load i32, ptr %gep138.i.2, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !188, !range !63, !noundef !64
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 %i.ce
  store i8 %i.ci, ptr %gep.i.2, align 1, !tbaa !188
  %i.cj = or disjoint i64 %.066106.i, 3           ; 2 uses
  %gep138.i.3 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.cj
  %i.ck = load i32, ptr %gep138.i.3, align 4, !tbaa !3
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !188, !range !63, !noundef !64
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 %i.cj
  store i8 %i.cn, ptr %gep.i.3, align 1, !tbaa !188
  %i.co = add nuw nsw i64 %.066106.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit29.unr-lcssa, label %.lr.ph107.split.i, !llvm.loop !597

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.ac
  %i.cp = phi ptr [ %i.fx, %bb.ac ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.fy, %bb.ac ], [ 0, %.preheader102.i ] ; 4 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !480
  %i.cr = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cs, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cw = phi i64 [ %i.cv, %bb.g ], [ %i.cr, %.lr.ph.i ] ; 3 uses
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cx, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cy = lshr i64 %i.cw, 6
  %i.cz = and i64 %i.cw, 63
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  %i.db = load i64, ptr %i.da, align 8, !tbaa !103
  %i.dc = shl nuw i64 1, %i.cz
  %i.dd = and i64 %i.db, %i.dc
  %.not100.i = icmp eq i64 %i.dd, 0
  %.pre124.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.de = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre124.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.df = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.dg = zext i16 %i.de to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cw
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !188, !range !63, !noundef !64
  %i.dj = getelementptr i8, ptr %.0.i.i, i64 %.065105.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.dg
  store i8 %i.di, ptr %i.dk, align 1, !tbaa !188
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dm = zext i16 %.pre124.i to i64
  %i.dn = add nuw nsw i64 %.065105.i, %i.dm       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.cp, null
  br i1 %.not.i77.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.do = load i64, ptr %i.j, align 8, !tbaa !479
  %i.dp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.h ; 11 uses

.noexc92.i:                                       ; preds = %bb.j
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 7 uses
  store i32 1, ptr %i.dq, align 8, !tbaa !56, !noalias !598
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 12 ; 2 uses
  store i32 1, ptr %i.dr, align 4, !tbaa !58, !noalias !598
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dp, align 8, !tbaa !51, !noalias !598
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 4 uses
  store ptr null, ptr %i.ds, align 8, !tbaa !552, !noalias !598
  %i.dt = add i64 %i.do, 63
  %i.du = lshr i64 %i.dt, 6                       ; 2 uses
  %i.dv = shl nuw nsw i64 %i.du, 3                ; 2 uses
  %i.dw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dv) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !598 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.dw, ptr %i.ds, align 8, !tbaa !404, !noalias !598
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dw, i8 -1, i64 %i.dv, i1 false), !tbaa !103, !noalias !598
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dp) #25, !noalias !598
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !605
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.dq, align 8, !tbaa !3, !noalias !605
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.dz = atomicrmw volatile add ptr %i.dq, i32 1 acq_rel, align 4, !noalias !605 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ea = load atomic i64, ptr %i.dq acquire, align 8, !noalias !605 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.dq, align 8, !tbaa !56, !noalias !605
  store i32 0, ptr %i.dr, align 4, !tbaa !58, !noalias !605
  %i.ed = load ptr, ptr %i.dp, align 8, !tbaa !51, !noalias !605
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !605
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #24, !noalias !605, !inline_history !606
  %i.eg = load ptr, ptr %i.dp, align 8, !tbaa !51, !noalias !605
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !605
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #24, !noalias !605, !inline_history !606
  br label %.noexc86.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !605
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = add nsw i32 %i.ec, -1
  store i32 %i.ek, ptr %i.dq, align 8, !tbaa !3, !noalias !605
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.q:                                             ; preds = %bb.o
  %i.el = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4, !noalias !605
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.ec, %bb.p ], [ %i.el, %bb.q ]
  %i.em = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.em, label %bb.r, label %.noexc86.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #24, !noalias !605
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.n
  store ptr %i.ds, ptr %i.i, align 8, !tbaa !556
  %i.en = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.dp, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.s

bb.s:                                             ; preds = %.noexc86.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.eo, align 8, !tbaa !56
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !58
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !51
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #24, !inline_history !607
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !51
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #24, !inline_history !607
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.fb = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.er, %bb.v ], [ %i.fb, %bb.w ]
  %i.fc = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fc, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.fd = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.fe, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.ff, ptr %5, align 8, !tbaa !72
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ff, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !361
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  store i8 0, ptr %i.fi, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc95.i ] ; 2 uses
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fl = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.fe
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.fl) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_1
begin_hunk_2_@_ZN6duckdbL14ColumnDataCopyIaEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
.lr.ph113.i:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.038.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %.lr.ph113.i
  %.0111.i = phi i64 [ %3, %.lr.ph113.i ], [ %i.fx, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 5 uses
  %.sroa.038.0110.i = phi i64 [ %.sroa.038.0.copyload.i, %.lr.ph113.i ], [ %.sroa.038.1.i, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 4 uses
  %.069109.i = phi i64 [ %4, %.lr.ph113.i ], [ %i.fy, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 2 uses
  %i.p = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.038.0110.i) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 9 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !510
  %i.s = zext i16 %i.r to i64
  %i.t = sub nsw i64 2048, %i.s
  %i.u = and i64 %i.t, 4294967295                 ; 2 uses
  %i.v = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.069109.i) ; 8 uses
  %i.w = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.x = load i8, ptr %i.w, align 8, !tbaa !7
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.p, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !155
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ae = zext i32 %i.ad to i64
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !103
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !144
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !147
  %i.ak = zext i32 %i.ac to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.al, %bb.d ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2048 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.am, ptr %6, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.j, align 8, !tbaa !479
  %i.an = load i16, ptr %i.q, align 8, !tbaa !510
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, label %bb.f

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.am, i8 -1, i64 256, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i, %bb.ai
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.aq, null
  %.not115.i = icmp eq i64 %i.u, 0                ; 2 uses
  br i1 %.not.i.i, label %.preheader.i, label %.preheader102.i

.preheader102.i:                                  ; preds = %bb.f
  br i1 %.not115.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not115.i, label %.loopexit.i, label %.lr.ph107.i.preheader

.lr.ph107.i.preheader:                            ; preds = %.preheader.i
  %xtraiter = and i64 %i.v, 1
  %i.ar = icmp eq i64 %i.v, 1
  br i1 %i.ar, label %.lr.ph107.i.epil.preheader, label %.lr.ph107.i.preheader.new

.lr.ph107.i.preheader.new:                        ; preds = %.lr.ph107.i.preheader
  %unroll_iter = and i64 %i.v, 4294967294
  br label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %bb.i, %.lr.ph107.i.preheader.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.i.preheader.new ], [ %i.bv, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph107.i.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.as = load ptr, ptr %1, align 8, !tbaa !480
  %i.at = add i64 %.066106.i, %.0111.i            ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.au, null
  br i1 %.not.i72.i, label %.lr.ph107.i.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph107.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = zext i32 %i.aw to i64
  br label %.lr.ph107.i.1

.lr.ph107.i.1:                                    ; preds = %bb.g, %.lr.ph107.i
  %i.ay = phi i64 [ %i.ax, %bb.g ], [ %i.at, %.lr.ph107.i ]
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.ba = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !43
  %i.be = getelementptr i8, ptr %.0.i.i, i64 %.066106.i
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bb
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !43
  %i.bg = or disjoint i64 %.066106.i, 1           ; 2 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !480
  %i.bi = add i64 %i.bg, %.0111.i                 ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i.1 = icmp eq ptr %i.bj, null
  br i1 %.not.i72.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph107.i.1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph107.i.1
  %i.bn = phi i64 [ %i.bm, %bb.h ], [ %i.bi, %.lr.ph107.i.1 ]
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.bp = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !43
  %i.bt = getelementptr i8, ptr %.0.i.i, i64 %i.bg
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bq
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !43
  %i.bv = add nuw nsw i64 %.066106.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph107.i, !llvm.loop !612

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.af
  %i.bw = phi ptr [ %i.fe, %bb.af ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.ff, %bb.af ], [ 0, %.preheader102.i ] ; 4 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !480
  %i.by = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.bz, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.j, %.lr.ph.i
  %i.cd = phi i64 [ %i.cc, %bb.j ], [ %i.by, %.lr.ph.i ] ; 3 uses
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.ce, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cf = lshr i64 %i.cd, 6
  %i.cg = and i64 %i.cd, 63
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !103
  %i.cj = shl nuw i64 1, %i.cg
  %i.ck = and i64 %i.ci, %i.cj
  %.not100.i = icmp eq i64 %i.ck, 0
  %.pre120.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.cl = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre120.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.cn = zext i16 %i.cl to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cd
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !43
  %i.cq = getelementptr i8, ptr %.0.i.i, i64 %.065105.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cn
  store i8 %i.cp, ptr %i.cr, align 1, !tbaa !43
  br label %bb.af

bb.k:                                             ; preds = %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.ct = zext i16 %.pre120.i to i64
  %i.cu = add nuw nsw i64 %.065105.i, %i.ct       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.bw, null
  br i1 %.not.i77.i, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cv = load i64, ptr %i.j, align 8, !tbaa !479
  %i.cw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.k ; 11 uses

.noexc92.i:                                       ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 7 uses
  store i32 1, ptr %i.cx, align 8, !tbaa !56, !noalias !613
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 12 ; 2 uses
  store i32 1, ptr %i.cy, align 4, !tbaa !58, !noalias !613
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cw, align 8, !tbaa !51, !noalias !613
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !552, !noalias !613
  %i.da = add i64 %i.cv, 63
  %i.db = lshr i64 %i.da, 6                       ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 3                ; 2 uses
  %i.dd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dc) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !613 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !404, !noalias !613
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dd, i8 -1, i64 %i.dc, i1 false), !tbaa !103, !noalias !613
  br label %bb.n

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #25, !noalias !613
  br label %.body.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !620
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr %i.cx, align 8, !tbaa !3, !noalias !620
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.dg = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4, !noalias !620 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.p, %bb.o
  %i.dh = load atomic i64, ptr %i.cx acquire, align 8, !noalias !620 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.cx, align 8, !tbaa !56, !noalias !620
  store i32 0, ptr %i.cy, align 4, !tbaa !58, !noalias !620
  %i.dk = load ptr, ptr %i.cw, align 8, !tbaa !51, !noalias !620
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !620
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #24, !noalias !620, !inline_history !621
  %i.dn = load ptr, ptr %i.cw, align 8, !tbaa !51, !noalias !620
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !620
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #24, !noalias !620, !inline_history !621
  br label %.noexc86.i

bb.r:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !620
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = add nsw i32 %i.dj, -1
  store i32 %i.dr, ptr %i.cx, align 8, !tbaa !3, !noalias !620
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.t:                                             ; preds = %bb.r
  %i.ds = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4, !noalias !620
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.dj, %bb.s ], [ %i.ds, %bb.t ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.dt, label %bb.u, label %.noexc86.i, !prof !60

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #24, !noalias !620
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.q
  store ptr %i.cz, ptr %i.i, align 8, !tbaa !556
  %i.du = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.cw, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.v

bb.v:                                             ; preds = %.noexc86.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dv, align 8, !tbaa !56
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !58
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #24, !inline_history !622
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #24, !inline_history !622
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dy, %bb.y ], [ %i.ei, %bb.z ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ej, label %bb.aa, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.w
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.ek = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.el, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.em = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.em, ptr %5, align 8, !tbaa !72
  %i.en = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.en, ptr %i.el, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.em, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !361
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  store i8 0, ptr %i.ep, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ae unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.ab ], [ true, %.noexc95.i ] ; 2 uses
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.es = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.el
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.es) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.ad, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.ad, label %.body.i

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_2
begin_hunk_3_@_ZN6duckdbL14ColumnDataCopyIsEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.am, ptr %6, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.j, align 8, !tbaa !479
  %i.an = load i16, ptr %i.q, align 8, !tbaa !510
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, label %bb.f

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.am, i8 -1, i64 256, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i, %bb.ae
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.aq, null
  %.not116.i = icmp eq i64 %i.u, 0                ; 2 uses
  br i1 %.not.i.i, label %.preheader.i, label %.preheader102.i

.preheader102.i:                                  ; preds = %bb.f
  br i1 %.not116.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not116.i, label %.loopexit.i, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.preheader.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !513 ; 6 uses
  br i1 %.not.i72.i, label %.lr.ph107.split.us.preheader.i, label %.lr.ph107.split.preheader.i

.lr.ph107.split.preheader.i:                      ; preds = %.lr.ph107.i
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.as, i64 %.0111.i ; 5 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.au = icmp samesign ult i64 %i.v, 4
  br i1 %i.au, label %.lr.ph107.split.i.epil.preheader, label %.lr.ph107.split.preheader.i.new

.lr.ph107.split.preheader.i.new:                  ; preds = %.lr.ph107.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967292
  br label %.lr.ph107.split.i

.lr.ph107.split.us.preheader.i:                   ; preds = %.lr.ph107.i
  %invariant.gep137.i = getelementptr [2 x i8], ptr %i.at, i64 %.0111.i ; 5 uses
  %xtraiter29 = and i64 %i.v, 3                   ; 3 uses
  %i.av = icmp samesign ult i64 %i.v, 4
  br i1 %i.av, label %.lr.ph107.split.us.i.epil.preheader, label %.lr.ph107.split.us.preheader.i.new

.lr.ph107.split.us.preheader.i.new:               ; preds = %.lr.ph107.split.us.preheader.i
  %unroll_iter33 = and i64 %i.v, 4294967292
  br label %.lr.ph107.split.us.i

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.split.us.i, %.lr.ph107.split.us.preheader.i.new
  %.066106.us.i = phi i64 [ 0, %.lr.ph107.split.us.preheader.i.new ], [ %i.bt, %.lr.ph107.split.us.i ] ; 6 uses
  %niter34 = phi i64 [ 0, %.lr.ph107.split.us.preheader.i.new ], [ %niter34.next.3, %.lr.ph107.split.us.i ]
  %i.aw = load i16, ptr %i.q, align 8, !tbaa !510
  %i.ax = zext i16 %i.aw to i64
  %gep138.i = getelementptr [2 x i8], ptr %invariant.gep137.i, i64 %.066106.us.i
  %i.ay = load i16, ptr %gep138.i, align 2, !tbaa !528
  %i.az = getelementptr [2 x i8], ptr %.0.i.i, i64 %.066106.us.i
  %i.ba = getelementptr [2 x i8], ptr %i.az, i64 %i.ax
  store i16 %i.ay, ptr %i.ba, align 2, !tbaa !528
  %i.bb = or disjoint i64 %.066106.us.i, 1        ; 2 uses
  %i.bc = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bd = zext i16 %i.bc to i64
  %gep138.i.1 = getelementptr [2 x i8], ptr %invariant.gep137.i, i64 %i.bb
  %i.be = load i16, ptr %gep138.i.1, align 2, !tbaa !528
  %i.bf = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.bb
  %i.bg = getelementptr [2 x i8], ptr %i.bf, i64 %i.bd
  store i16 %i.be, ptr %i.bg, align 2, !tbaa !528
  %i.bh = or disjoint i64 %.066106.us.i, 2        ; 2 uses
  %i.bi = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bj = zext i16 %i.bi to i64
  %gep138.i.2 = getelementptr [2 x i8], ptr %invariant.gep137.i, i64 %i.bh
  %i.bk = load i16, ptr %gep138.i.2, align 2, !tbaa !528
  %i.bl = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.bh
  %i.bm = getelementptr [2 x i8], ptr %i.bl, i64 %i.bj
  store i16 %i.bk, ptr %i.bm, align 2, !tbaa !528
  %i.bn = or disjoint i64 %.066106.us.i, 3        ; 2 uses
  %i.bo = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bp = zext i16 %i.bo to i64
  %gep138.i.3 = getelementptr [2 x i8], ptr %invariant.gep137.i, i64 %i.bn
  %i.bq = load i16, ptr %gep138.i.3, align 2, !tbaa !528
  %i.br = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.bn
  %i.bs = getelementptr [2 x i8], ptr %i.br, i64 %i.bp
  store i16 %i.bq, ptr %i.bs, align 2, !tbaa !528
  %i.bt = add nuw nsw i64 %.066106.us.i, 4        ; 2 uses
  %niter34.next.3 = add i64 %niter34, 4           ; 2 uses
  %niter34.ncmp.3 = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph107.split.us.i, !llvm.loop !626

.lr.ph107.split.i:                                ; preds = %.lr.ph107.split.i, %.lr.ph107.split.preheader.i.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %i.dd, %.lr.ph107.split.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %niter.next.3, %.lr.ph107.split.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.i
  %i.bu = load i32, ptr %gep.i, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bv
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !528
  %i.ca = getelementptr [2 x i8], ptr %.0.i.i, i64 %.066106.i
  %i.cb = getelementptr [2 x i8], ptr %i.ca, i64 %i.bx
  store i16 %i.bz, ptr %i.cb, align 2, !tbaa !528
  %i.cc = or disjoint i64 %.066106.i, 1           ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cc
  %i.cd = load i32, ptr %gep.i.1, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load i16, ptr %i.q, align 8, !tbaa !510
  %i.cg = zext i16 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ce
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !528
  %i.cj = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.cc
  %i.ck = getelementptr [2 x i8], ptr %i.cj, i64 %i.cg
  store i16 %i.ci, ptr %i.ck, align 2, !tbaa !528
  %i.cl = or disjoint i64 %.066106.i, 2           ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cl
  %i.cm = load i32, ptr %gep.i.2, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64
  %i.co = load i16, ptr %i.q, align 8, !tbaa !510
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.cn
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !528
  %i.cs = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.cl
  %i.ct = getelementptr [2 x i8], ptr %i.cs, i64 %i.cp
  store i16 %i.cr, ptr %i.ct, align 2, !tbaa !528
  %i.cu = or disjoint i64 %.066106.i, 3           ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cu
  %i.cv = load i32, ptr %gep.i.3, align 4, !tbaa !3
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load i16, ptr %i.q, align 8, !tbaa !510
  %i.cy = zext i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.cw
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !528
  %i.db = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.cu
  %i.dc = getelementptr [2 x i8], ptr %i.db, i64 %i.cy
  store i16 %i.da, ptr %i.dc, align 2, !tbaa !528
  %i.dd = add nuw nsw i64 %.066106.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit25.unr-lcssa, label %.lr.ph107.split.i, !llvm.loop !626

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.ac
  %i.de = phi ptr [ %i.gm, %bb.ac ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.gn, %bb.ac ], [ 0, %.preheader102.i ] ; 4 uses
  %i.df = load ptr, ptr %1, align 8, !tbaa !480
  %i.dg = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.dh, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = zext i32 %i.dj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.dl = phi i64 [ %i.dk, %bb.g ], [ %i.dg, %.lr.ph.i ] ; 3 uses
  %i.dm = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.dm, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.dn = lshr i64 %i.dl, 6
  %i.do = and i64 %i.dl, 63
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !103
  %i.dr = shl nuw i64 1, %i.do
  %i.ds = and i64 %i.dq, %i.dr
  %.not100.i = icmp eq i64 %i.ds, 0
  %.pre124.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.dt = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre124.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.du = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.dv = zext i16 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.dl
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !528
  %i.dy = getelementptr [2 x i8], ptr %.0.i.i, i64 %.065105.i
  %i.dz = getelementptr [2 x i8], ptr %i.dy, i64 %i.dv
  store i16 %i.dx, ptr %i.dz, align 2, !tbaa !528
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.eb = zext i16 %.pre124.i to i64
  %i.ec = add nuw nsw i64 %.065105.i, %i.eb       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.de, null
  br i1 %.not.i77.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ed = load i64, ptr %i.j, align 8, !tbaa !479
  %i.ee = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.h ; 11 uses

.noexc92.i:                                       ; preds = %bb.j
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 7 uses
  store i32 1, ptr %i.ef, align 8, !tbaa !56, !noalias !627
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 12 ; 2 uses
  store i32 1, ptr %i.eg, align 4, !tbaa !58, !noalias !627
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ee, align 8, !tbaa !51, !noalias !627
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 4 uses
  store ptr null, ptr %i.eh, align 8, !tbaa !552, !noalias !627
  %i.ei = add i64 %i.ed, 63
  %i.ej = lshr i64 %i.ei, 6                       ; 2 uses
  %i.ek = shl nuw nsw i64 %i.ej, 3                ; 2 uses
  %i.el = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !627 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.el, ptr %i.eh, align 8, !tbaa !404, !noalias !627
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.el, i8 -1, i64 %i.ek, i1 false), !tbaa !103, !noalias !627
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ee) #25, !noalias !627
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !634
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.ef, align 8, !tbaa !3, !noalias !634
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.eo = atomicrmw volatile add ptr %i.ef, i32 1 acq_rel, align 4, !noalias !634 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ep = load atomic i64, ptr %i.ef acquire, align 8, !noalias !634 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.ef, align 8, !tbaa !56, !noalias !634
  store i32 0, ptr %i.eg, align 4, !tbaa !58, !noalias !634
  %i.es = load ptr, ptr %i.ee, align 8, !tbaa !51, !noalias !634
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !634
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #24, !noalias !634, !inline_history !635
  %i.ev = load ptr, ptr %i.ee, align 8, !tbaa !51, !noalias !634
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !634
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #24, !noalias !634, !inline_history !635
  br label %.noexc86.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !634
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ez = add nsw i32 %i.er, -1
  store i32 %i.ez, ptr %i.ef, align 8, !tbaa !3, !noalias !634
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.q:                                             ; preds = %bb.o
  %i.fa = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4, !noalias !634
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.er, %bb.p ], [ %i.fa, %bb.q ]
  %i.fb = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.fb, label %bb.r, label %.noexc86.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #24, !noalias !634
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.n
  store ptr %i.eh, ptr %i.i, align 8, !tbaa !556
  %i.fc = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.ee, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.s

bb.s:                                             ; preds = %.noexc86.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.fd, align 8, !tbaa !56
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !58
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !51
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #24, !inline_history !636
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !51
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #24, !inline_history !636
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fp = add nsw i32 %i.fg, -1
  store i32 %i.fp, ptr %i.fd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.fq = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fg, %bb.v ], [ %i.fq, %bb.w ]
  %i.fr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fr, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.fs = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ft, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.fu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fu, ptr %5, align 8, !tbaa !72
  %i.fv = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fu, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !361
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  store i8 0, ptr %i.fx, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.fs, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc95.i ] ; 2 uses
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ga = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.ft
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.ga) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_3
begin_hunk_4_@_ZN6duckdbL14ColumnDataCopyIiEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  br i1 %.not116.i, label %.loopexit.i, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.preheader.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !513 ; 7 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = zext i16 %i.an to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.av ; 11 uses
  br i1 %.not.i72.i, label %.lr.ph107.split.us.preheader.i, label %.lr.ph107.split.preheader.i

.lr.ph107.split.preheader.i:                      ; preds = %.lr.ph107.i
  %invariant.gep137.i = getelementptr [4 x i8], ptr %i.as, i64 %.0111.i ; 5 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.aw = icmp samesign ult i64 %i.v, 4
  br i1 %i.aw, label %.lr.ph107.split.i.epil.preheader, label %.lr.ph107.split.preheader.i.new

.lr.ph107.split.preheader.i.new:                  ; preds = %.lr.ph107.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967292
  br label %.lr.ph107.split.i

.lr.ph107.split.us.preheader.i:                   ; preds = %.lr.ph107.i
  %invariant.gep139.i = getelementptr [4 x i8], ptr %i.at, i64 %.0111.i ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph107.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107.split.us.preheader.i
  %i.ax = shl nuw nsw i64 %i.av, 2
  %i.ay = add i64 %i.ax, %.0.i.i21
  %i.az = shl i64 %.0111.i, 2
  %i.ba = add i64 %i.az, %i.au
  %i.bb = sub i64 %i.ba, %i.ay
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph107.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %wide.load = load <4 x i32>, ptr %i.bc, align 4, !tbaa !3
  %wide.load22 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !3
  %i.be = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store <4 x i32> %wide.load, ptr %i.be, align 4, !tbaa !3
  store <4 x i32> %wide.load22, ptr %i.bf, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !642

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph107.split.us.i.preheader

.lr.ph107.split.us.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph107.split.us.preheader.i, %middle.block
  %.066106.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter26 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol

.lr.ph107.split.us.i.prol:                        ; preds = %.lr.ph107.split.us.i.preheader, %.lr.ph107.split.us.i.prol
  %.066106.us.i.prol = phi i64 [ %i.bi, %.lr.ph107.split.us.i.prol ], [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.split.us.i.prol ], [ 0, %.lr.ph107.split.us.i.preheader ]
  %gep140.i.prol = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i.prol
  %i.bh = load i32, ptr %gep140.i.prol, align 4, !tbaa !3
  %gep.us.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.us.i.prol
  store i32 %i.bh, ptr %gep.us.i.prol, align 4, !tbaa !3
  %i.bi = add nuw nsw i64 %.066106.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter26
  br i1 %prol.iter.cmp.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol, !llvm.loop !643

.lr.ph107.split.us.i.prol.loopexit:               ; preds = %.lr.ph107.split.us.i.prol, %.lr.ph107.split.us.i.preheader
  %.066106.us.i.unr = phi i64 [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ], [ %i.bi, %.lr.ph107.split.us.i.prol ]
  %i.bj = sub nsw i64 %.066106.us.i.ph, %i.v
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph107.split.us.i

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.split.us.i.prol.loopexit, %.lr.ph107.split.us.i
  %.066106.us.i = phi i64 [ %i.bs, %.lr.ph107.split.us.i ], [ %.066106.us.i.unr, %.lr.ph107.split.us.i.prol.loopexit ] ; 6 uses
  %gep140.i = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i
  %i.bl = load i32, ptr %gep140.i, align 4, !tbaa !3
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.us.i
  store i32 %i.bl, ptr %gep.us.i, align 4, !tbaa !3
  %i.bm = add nuw nsw i64 %.066106.us.i, 1        ; 2 uses
  %gep140.i.1 = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %i.bm
  %i.bn = load i32, ptr %gep140.i.1, align 4, !tbaa !3
  %gep.us.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bm
  store i32 %i.bn, ptr %gep.us.i.1, align 4, !tbaa !3
  %i.bo = add nuw nsw i64 %.066106.us.i, 2        ; 2 uses
  %gep140.i.2 = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %i.bo
  %i.bp = load i32, ptr %gep140.i.2, align 4, !tbaa !3
  %gep.us.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bo
  store i32 %i.bp, ptr %gep.us.i.2, align 4, !tbaa !3
  %i.bq = add nuw nsw i64 %.066106.us.i, 3        ; 2 uses
  %gep140.i.3 = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %i.bq
  %i.br = load i32, ptr %gep140.i.3, align 4, !tbaa !3
  %gep.us.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bq
  store i32 %i.br, ptr %gep.us.i.3, align 4, !tbaa !3
  %i.bs = add nuw nsw i64 %.066106.us.i, 4        ; 2 uses
  %exitcond123.not.i.3 = icmp eq i64 %i.bs, %i.v
  br i1 %exitcond123.not.i.3, label %.loopexit.i, label %.lr.ph107.split.us.i, !llvm.loop !644

.lr.ph107.split.i:                                ; preds = %.lr.ph107.split.i, %.lr.ph107.split.preheader.i.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %i.cm, %.lr.ph107.split.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %niter.next.3, %.lr.ph107.split.i ]
  %gep138.i = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %.066106.i
  %i.bt = load i32, ptr %gep138.i, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.i
  store i32 %i.bw, ptr %gep.i, align 4, !tbaa !3
  %i.bx = or disjoint i64 %.066106.i, 1           ; 2 uses
  %gep138.i.1 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.bx
  %i.by = load i32, ptr %gep138.i.1, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bx
  store i32 %i.cb, ptr %gep.i.1, align 4, !tbaa !3
  %i.cc = or disjoint i64 %.066106.i, 2           ; 2 uses
  %gep138.i.2 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.cc
  %i.cd = load i32, ptr %gep138.i.2, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cc
  store i32 %i.cg, ptr %gep.i.2, align 4, !tbaa !3
  %i.ch = or disjoint i64 %.066106.i, 3           ; 2 uses
  %gep138.i.3 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.ch
  %i.ci = load i32, ptr %gep138.i.3, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ch
  store i32 %i.cl, ptr %gep.i.3, align 4, !tbaa !3
  %i.cm = add nuw nsw i64 %.066106.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit23.unr-lcssa, label %.lr.ph107.split.i, !llvm.loop !645

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.ac
  %i.cn = phi ptr [ %i.fv, %bb.ac ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.fw, %bb.ac ], [ 0, %.preheader102.i ] ; 4 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !480
  %i.cp = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cq, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cu = phi i64 [ %i.ct, %bb.g ], [ %i.cp, %.lr.ph.i ] ; 3 uses
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cv, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cw = lshr i64 %i.cu, 6
  %i.cx = and i64 %i.cu, 63
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !103
  %i.da = shl nuw i64 1, %i.cx
  %i.db = and i64 %i.cz, %i.da
  %.not100.i = icmp eq i64 %i.db, 0
  %.pre124.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.dc = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre124.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.dd = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.de = zext i16 %i.dc to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cu
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = getelementptr [4 x i8], ptr %.0.i.i, i64 %.065105.i
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.de
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !3
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dk = zext i16 %.pre124.i to i64
  %i.dl = add nuw nsw i64 %.065105.i, %i.dk       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.cn, null
  br i1 %.not.i77.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dm = load i64, ptr %i.j, align 8, !tbaa !479
  %i.dn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.h ; 11 uses

.noexc92.i:                                       ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 7 uses
  store i32 1, ptr %i.do, align 8, !tbaa !56, !noalias !646
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 12 ; 2 uses
  store i32 1, ptr %i.dp, align 4, !tbaa !58, !noalias !646
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dn, align 8, !tbaa !51, !noalias !646
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 4 uses
  store ptr null, ptr %i.dq, align 8, !tbaa !552, !noalias !646
  %i.dr = add i64 %i.dm, 63
  %i.ds = lshr i64 %i.dr, 6                       ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 3                ; 2 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !646 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.du, ptr %i.dq, align 8, !tbaa !404, !noalias !646
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.du, i8 -1, i64 %i.dt, i1 false), !tbaa !103, !noalias !646
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #25, !noalias !646
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !653
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.do, align 8, !tbaa !3, !noalias !653
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.dx = atomicrmw volatile add ptr %i.do, i32 1 acq_rel, align 4, !noalias !653 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.dy = load atomic i64, ptr %i.do acquire, align 8, !noalias !653 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.do, align 8, !tbaa !56, !noalias !653
  store i32 0, ptr %i.dp, align 4, !tbaa !58, !noalias !653
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !653
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !653
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !653, !inline_history !654
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !653
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !653
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !653, !inline_history !654
  br label %.noexc86.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !653
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ei = add nsw i32 %i.ea, -1
  store i32 %i.ei, ptr %i.do, align 8, !tbaa !3, !noalias !653
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.q:                                             ; preds = %bb.o
  %i.ej = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4, !noalias !653
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.ea, %bb.p ], [ %i.ej, %bb.q ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.ek, label %bb.r, label %.noexc86.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !653
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.n
  store ptr %i.dq, ptr %i.i, align 8, !tbaa !556
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.dn, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.s

bb.s:                                             ; preds = %.noexc86.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.em, align 8, !tbaa !56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !58
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !655
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !655
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.v ], [ %i.ez, %bb.w ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fa, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.fb = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.fc, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fd, ptr %5, align 8, !tbaa !72
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fd, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !361
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  store i8 0, ptr %i.fg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc95.i ] ; 2 uses
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fj = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.fc
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.fj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_4
begin_hunk_5_@_ZN6duckdbL14ColumnDataCopyIlEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  br i1 %.not116.i, label %.loopexit.i, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.preheader.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !513 ; 7 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = zext i16 %i.an to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.av ; 11 uses
  br i1 %.not.i72.i, label %.lr.ph107.split.us.preheader.i, label %.lr.ph107.split.preheader.i

.lr.ph107.split.preheader.i:                      ; preds = %.lr.ph107.i
  %invariant.gep137.i = getelementptr [4 x i8], ptr %i.as, i64 %.0111.i ; 5 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.aw = icmp samesign ult i64 %i.v, 4
  br i1 %i.aw, label %.lr.ph107.split.i.epil.preheader, label %.lr.ph107.split.preheader.i.new

.lr.ph107.split.preheader.i.new:                  ; preds = %.lr.ph107.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967292
  br label %.lr.ph107.split.i

.lr.ph107.split.us.preheader.i:                   ; preds = %.lr.ph107.i
  %invariant.gep139.i = getelementptr [8 x i8], ptr %i.at, i64 %.0111.i ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph107.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107.split.us.preheader.i
  %i.ax = shl nuw nsw i64 %i.av, 3
  %i.ay = add i64 %i.ax, %.0.i.i21
  %i.az = shl i64 %.0111.i, 3
  %i.ba = add i64 %i.az, %i.au
  %i.bb = sub i64 %i.ba, %i.ay
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph107.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %wide.load = load <2 x i64>, ptr %i.bc, align 8, !tbaa !103
  %wide.load22 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !103
  %i.be = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store <2 x i64> %wide.load, ptr %i.be, align 8, !tbaa !103
  store <2 x i64> %wide.load22, ptr %i.bf, align 8, !tbaa !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !660

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph107.split.us.i.preheader

.lr.ph107.split.us.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph107.split.us.preheader.i, %middle.block
  %.066106.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter26 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol

.lr.ph107.split.us.i.prol:                        ; preds = %.lr.ph107.split.us.i.preheader, %.lr.ph107.split.us.i.prol
  %.066106.us.i.prol = phi i64 [ %i.bi, %.lr.ph107.split.us.i.prol ], [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.split.us.i.prol ], [ 0, %.lr.ph107.split.us.i.preheader ]
  %gep140.i.prol = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i.prol
  %i.bh = load i64, ptr %gep140.i.prol, align 8, !tbaa !103
  %gep.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.066106.us.i.prol
  store i64 %i.bh, ptr %gep.us.i.prol, align 8, !tbaa !103
  %i.bi = add nuw nsw i64 %.066106.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter26
  br i1 %prol.iter.cmp.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol, !llvm.loop !661

.lr.ph107.split.us.i.prol.loopexit:               ; preds = %.lr.ph107.split.us.i.prol, %.lr.ph107.split.us.i.preheader
  %.066106.us.i.unr = phi i64 [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ], [ %i.bi, %.lr.ph107.split.us.i.prol ]
  %i.bj = sub nsw i64 %.066106.us.i.ph, %i.v
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph107.split.us.i

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.split.us.i.prol.loopexit, %.lr.ph107.split.us.i
  %.066106.us.i = phi i64 [ %i.bs, %.lr.ph107.split.us.i ], [ %.066106.us.i.unr, %.lr.ph107.split.us.i.prol.loopexit ] ; 6 uses
  %gep140.i = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i
  %i.bl = load i64, ptr %gep140.i, align 8, !tbaa !103
  %gep.us.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.066106.us.i
  store i64 %i.bl, ptr %gep.us.i, align 8, !tbaa !103
  %i.bm = add nuw nsw i64 %.066106.us.i, 1        ; 2 uses
  %gep140.i.1 = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %i.bm
  %i.bn = load i64, ptr %gep140.i.1, align 8, !tbaa !103
  %gep.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bm
  store i64 %i.bn, ptr %gep.us.i.1, align 8, !tbaa !103
  %i.bo = add nuw nsw i64 %.066106.us.i, 2        ; 2 uses
  %gep140.i.2 = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %i.bo
  %i.bp = load i64, ptr %gep140.i.2, align 8, !tbaa !103
  %gep.us.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bo
  store i64 %i.bp, ptr %gep.us.i.2, align 8, !tbaa !103
  %i.bq = add nuw nsw i64 %.066106.us.i, 3        ; 2 uses
  %gep140.i.3 = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %i.bq
  %i.br = load i64, ptr %gep140.i.3, align 8, !tbaa !103
  %gep.us.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bq
  store i64 %i.br, ptr %gep.us.i.3, align 8, !tbaa !103
  %i.bs = add nuw nsw i64 %.066106.us.i, 4        ; 2 uses
  %exitcond123.not.i.3 = icmp eq i64 %i.bs, %i.v
  br i1 %exitcond123.not.i.3, label %.loopexit.i, label %.lr.ph107.split.us.i, !llvm.loop !662

.lr.ph107.split.i:                                ; preds = %.lr.ph107.split.i, %.lr.ph107.split.preheader.i.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %i.cm, %.lr.ph107.split.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %niter.next.3, %.lr.ph107.split.i ]
  %gep138.i = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %.066106.i
  %i.bt = load i32, ptr %gep138.i, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !103
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.066106.i
  store i64 %i.bw, ptr %gep.i, align 8, !tbaa !103
  %i.bx = or disjoint i64 %.066106.i, 1           ; 2 uses
  %gep138.i.1 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.bx
  %i.by = load i32, ptr %gep138.i.1, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !103
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bx
  store i64 %i.cb, ptr %gep.i.1, align 8, !tbaa !103
  %i.cc = or disjoint i64 %.066106.i, 2           ; 2 uses
  %gep138.i.2 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.cc
  %i.cd = load i32, ptr %gep138.i.2, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !103
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cc
  store i64 %i.cg, ptr %gep.i.2, align 8, !tbaa !103
  %i.ch = or disjoint i64 %.066106.i, 3           ; 2 uses
  %gep138.i.3 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.ch
  %i.ci = load i32, ptr %gep138.i.3, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !103
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ch
  store i64 %i.cl, ptr %gep.i.3, align 8, !tbaa !103
  %i.cm = add nuw nsw i64 %.066106.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit23.unr-lcssa, label %.lr.ph107.split.i, !llvm.loop !663

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.ac
  %i.cn = phi ptr [ %i.fv, %bb.ac ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.fw, %bb.ac ], [ 0, %.preheader102.i ] ; 4 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !480
  %i.cp = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cq, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cu = phi i64 [ %i.ct, %bb.g ], [ %i.cp, %.lr.ph.i ] ; 3 uses
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cv, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cw = lshr i64 %i.cu, 6
  %i.cx = and i64 %i.cu, 63
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !103
  %i.da = shl nuw i64 1, %i.cx
  %i.db = and i64 %i.cz, %i.da
  %.not100.i = icmp eq i64 %i.db, 0
  %.pre124.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.dc = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre124.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.dd = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.de = zext i16 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cu
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !103
  %i.dh = getelementptr [8 x i8], ptr %.0.i.i, i64 %.065105.i
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %i.de
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !103
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dk = zext i16 %.pre124.i to i64
  %i.dl = add nuw nsw i64 %.065105.i, %i.dk       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.cn, null
  br i1 %.not.i77.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dm = load i64, ptr %i.j, align 8, !tbaa !479
  %i.dn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.h ; 11 uses

.noexc92.i:                                       ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 7 uses
  store i32 1, ptr %i.do, align 8, !tbaa !56, !noalias !664
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 12 ; 2 uses
  store i32 1, ptr %i.dp, align 4, !tbaa !58, !noalias !664
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dn, align 8, !tbaa !51, !noalias !664
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 4 uses
  store ptr null, ptr %i.dq, align 8, !tbaa !552, !noalias !664
  %i.dr = add i64 %i.dm, 63
  %i.ds = lshr i64 %i.dr, 6                       ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 3                ; 2 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !664 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.du, ptr %i.dq, align 8, !tbaa !404, !noalias !664
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.du, i8 -1, i64 %i.dt, i1 false), !tbaa !103, !noalias !664
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #25, !noalias !664
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !671
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.do, align 8, !tbaa !3, !noalias !671
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.dx = atomicrmw volatile add ptr %i.do, i32 1 acq_rel, align 4, !noalias !671 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.dy = load atomic i64, ptr %i.do acquire, align 8, !noalias !671 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.do, align 8, !tbaa !56, !noalias !671
  store i32 0, ptr %i.dp, align 4, !tbaa !58, !noalias !671
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !671
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !671
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !671, !inline_history !672
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !671
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !671
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !671, !inline_history !672
  br label %.noexc86.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !671
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ei = add nsw i32 %i.ea, -1
  store i32 %i.ei, ptr %i.do, align 8, !tbaa !3, !noalias !671
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.q:                                             ; preds = %bb.o
  %i.ej = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4, !noalias !671
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.ea, %bb.p ], [ %i.ej, %bb.q ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.ek, label %bb.r, label %.noexc86.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !671
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.n
  store ptr %i.dq, ptr %i.i, align 8, !tbaa !556
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.dn, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.s

bb.s:                                             ; preds = %.noexc86.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.em, align 8, !tbaa !56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !58
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !673
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !673
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.v ], [ %i.ez, %bb.w ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fa, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.fb = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.fc, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fd, ptr %5, align 8, !tbaa !72
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fd, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !361
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  store i8 0, ptr %i.fg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc95.i ] ; 2 uses
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fj = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.fc
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.fj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_5
begin_hunk_6_@_ZN6duckdbL14ColumnDataCopyINS_9hugeint_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  br i1 %.not120.i, label %.loopexit.i, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.preheader.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !513 ; 5 uses
  %i.au = zext i16 %i.an to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [16 x i8], ptr %.0.i.i, i64 %i.au ; 13 uses
  br i1 %.not.i72.i, label %.lr.ph111.split.us.preheader.i, label %.lr.ph111.split.preheader.i

.lr.ph111.split.preheader.i:                      ; preds = %.lr.ph111.i
  %invariant.gep141.i = getelementptr [4 x i8], ptr %i.as, i64 %.0115.i ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.av = icmp eq i64 %i.v, 1
  br i1 %i.av, label %.lr.ph111.split.i.epil.preheader, label %.lr.ph111.split.preheader.i.new

.lr.ph111.split.preheader.i.new:                  ; preds = %.lr.ph111.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967294
  br label %.lr.ph111.split.i

.lr.ph111.split.us.preheader.i:                   ; preds = %.lr.ph111.i
  %invariant.gep143.i = getelementptr [16 x i8], ptr %i.at, i64 %.0115.i ; 10 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 30
  br i1 %min.iters.check, label %.lr.ph111.split.us.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph111.split.us.preheader.i
  %i.aw = add nsw i64 %i.v, -1                    ; 2 uses
  %mul.result = shl nsw i64 %i.aw, 4              ; 2 uses
  %mul.overflow = icmp ugt i64 %i.aw, 1152921504606846975
  %i.ax = getelementptr i8, ptr %invariant.gep.i, i64 %mul.result
  %i.ay = icmp ult ptr %i.ax, %invariant.gep.i
  %i.az = getelementptr i8, ptr %invariant.gep143.i, i64 %mul.result
  %i.ba = icmp ult ptr %i.az, %invariant.gep143.i
  %i.bb = or i1 %i.ba, %mul.overflow
  %i.bc = or i1 %i.ay, %i.bb
  br i1 %i.bc, label %.lr.ph111.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bd = add nuw nsw i64 %i.v, %i.au
  %i.be = shl nuw nsw i64 %i.bd, 4
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %i.be
  %i.bf = add i64 %.0115.i, %i.v
  %i.bg = shl i64 %i.bf, 4
  %scevgep21 = getelementptr i8, ptr %i.at, i64 %i.bg
  %bound0 = icmp ult ptr %invariant.gep.i, %scevgep21
  %bound1 = icmp ult ptr %invariant.gep143.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph111.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967294               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bh = or disjoint i64 %index, 1               ; 2 uses
  %i.bi = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %index
  %i.bj = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bh
  %wide.load = load <2 x i64>, ptr %i.bi, align 8, !tbaa !103, !alias.scope !678
  %wide.load22 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !103, !alias.scope !678
  %i.bk = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %index
  %i.bl = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bh
  store <2 x i64> %wide.load, ptr %i.bk, align 8, !tbaa !103, !alias.scope !681, !noalias !678
  store <2 x i64> %wide.load22, ptr %i.bl, align 8, !tbaa !103, !alias.scope !681, !noalias !678
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !683

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph111.split.us.i.preheader

.lr.ph111.split.us.i.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph111.split.us.preheader.i, %middle.block
  %.066110.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph111.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.bn = sub nsw i64 %i.v, %.066110.us.i.ph
  %xtraiter26 = and i64 %i.bn, 3                  ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph111.split.us.i.prol.loopexit, label %.lr.ph111.split.us.i.prol

.lr.ph111.split.us.i.prol:                        ; preds = %.lr.ph111.split.us.i.preheader, %.lr.ph111.split.us.i.prol
  %.066110.us.i.prol = phi i64 [ %i.bp, %.lr.ph111.split.us.i.prol ], [ %.066110.us.i.ph, %.lr.ph111.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph111.split.us.i.prol ], [ 0, %.lr.ph111.split.us.i.preheader ]
  %gep144.i.prol = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %.066110.us.i.prol
  %gep.us.i.prol = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066110.us.i.prol
  %i.bo = load <2 x i64>, ptr %gep144.i.prol, align 8, !tbaa !103
  store <2 x i64> %i.bo, ptr %gep.us.i.prol, align 8, !tbaa !103
  %i.bp = add nuw nsw i64 %.066110.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter26
  br i1 %prol.iter.cmp.not, label %.lr.ph111.split.us.i.prol.loopexit, label %.lr.ph111.split.us.i.prol, !llvm.loop !684

.lr.ph111.split.us.i.prol.loopexit:               ; preds = %.lr.ph111.split.us.i.prol, %.lr.ph111.split.us.i.preheader
  %.066110.us.i.unr = phi i64 [ %.066110.us.i.ph, %.lr.ph111.split.us.i.preheader ], [ %i.bp, %.lr.ph111.split.us.i.prol ]
  %i.bq = sub nsw i64 %.066110.us.i.ph, %i.v
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %.loopexit.i, label %.lr.ph111.split.us.i

.lr.ph111.split.us.i:                             ; preds = %.lr.ph111.split.us.i.prol.loopexit, %.lr.ph111.split.us.i
  %.066110.us.i = phi i64 [ %i.bz, %.lr.ph111.split.us.i ], [ %.066110.us.i.unr, %.lr.ph111.split.us.i.prol.loopexit ] ; 6 uses
  %gep144.i = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %.066110.us.i
  %gep.us.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066110.us.i
  %i.bs = load <2 x i64>, ptr %gep144.i, align 8, !tbaa !103
  store <2 x i64> %i.bs, ptr %gep.us.i, align 8, !tbaa !103
  %i.bt = add nuw nsw i64 %.066110.us.i, 1        ; 2 uses
  %gep144.i.1 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bt
  %gep.us.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bt
  %i.bu = load <2 x i64>, ptr %gep144.i.1, align 8, !tbaa !103
  store <2 x i64> %i.bu, ptr %gep.us.i.1, align 8, !tbaa !103
  %i.bv = add nuw nsw i64 %.066110.us.i, 2        ; 2 uses
  %gep144.i.2 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bv
  %gep.us.i.2 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bv
  %i.bw = load <2 x i64>, ptr %gep144.i.2, align 8, !tbaa !103
  store <2 x i64> %i.bw, ptr %gep.us.i.2, align 8, !tbaa !103
  %i.bx = add nuw nsw i64 %.066110.us.i, 3        ; 2 uses
  %gep144.i.3 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bx
  %gep.us.i.3 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bx
  %i.by = load <2 x i64>, ptr %gep144.i.3, align 8, !tbaa !103
  store <2 x i64> %i.by, ptr %gep.us.i.3, align 8, !tbaa !103
  %i.bz = add nuw nsw i64 %.066110.us.i, 4        ; 2 uses
  %exitcond127.not.i.3 = icmp eq i64 %i.bz, %i.v
  br i1 %exitcond127.not.i.3, label %.loopexit.i, label %.lr.ph111.split.us.i, !llvm.loop !685

.lr.ph111.split.i:                                ; preds = %.lr.ph111.split.i, %.lr.ph111.split.preheader.i.new
  %.066110.i = phi i64 [ 0, %.lr.ph111.split.preheader.i.new ], [ %i.cj, %.lr.ph111.split.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph111.split.preheader.i.new ], [ %niter.next.1, %.lr.ph111.split.i ]
  %gep142.i = getelementptr [4 x i8], ptr %invariant.gep141.i, i64 %.066110.i
  %i.ca = load i32, ptr %gep142.i, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.cb
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066110.i
  %i.cd = load <2 x i64>, ptr %i.cc, align 8, !tbaa !103
  store <2 x i64> %i.cd, ptr %gep.i, align 8, !tbaa !103
  %i.ce = or disjoint i64 %.066110.i, 1           ; 2 uses
  %gep142.i.1 = getelementptr [4 x i8], ptr %invariant.gep141.i, i64 %i.ce
  %i.cf = load i32, ptr %gep142.i.1, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.cg
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.ce
  %i.ci = load <2 x i64>, ptr %i.ch, align 8, !tbaa !103
  store <2 x i64> %i.ci, ptr %gep.i.1, align 8, !tbaa !103
  %i.cj = add nuw nsw i64 %.066110.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit23.unr-lcssa, label %.lr.ph111.split.i, !llvm.loop !686

.lr.ph.i:                                         ; preds = %.preheader106.i, %bb.ac
  %i.ck = phi ptr [ %i.fs, %bb.ac ], [ %i.am, %.preheader106.i ] ; 3 uses
  %.065109.i = phi i64 [ %i.ft, %bb.ac ], [ 0, %.preheader106.i ] ; 4 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !480
  %i.cm = add i64 %.065109.i, %.0115.i            ; 2 uses
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cn, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cr = phi i64 [ %i.cq, %bb.g ], [ %i.cm, %.lr.ph.i ] ; 3 uses
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cs, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.ct = lshr i64 %i.cr, 6
  %i.cu = and i64 %i.cr, 63
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !103
  %i.cx = shl nuw i64 1, %i.cu
  %i.cy = and i64 %i.cw, %i.cx
  %.not104.i = icmp eq i64 %i.cy, 0
  %.pre128.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not104.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.cz = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre128.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.db = zext i16 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.cr
  %i.dd = getelementptr [16 x i8], ptr %.0.i.i, i64 %.065109.i
  %i.de = getelementptr [16 x i8], ptr %i.dd, i64 %i.db
  %i.df = load <2 x i64>, ptr %i.dc, align 8, !tbaa !103
  store <2 x i64> %i.df, ptr %i.de, align 8, !tbaa !103
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dh = zext i16 %.pre128.i to i64
  %i.di = add nuw nsw i64 %.065109.i, %i.dh       ; 2 uses
  %.not.i81.i = icmp eq ptr %i.ck, null
  br i1 %.not.i81.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dj = load i64, ptr %i.j, align 8, !tbaa !479
  %i.dk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc96.i unwind label %bb.h ; 11 uses

.noexc96.i:                                       ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 7 uses
  store i32 1, ptr %i.dl, align 8, !tbaa !56, !noalias !687
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 12 ; 2 uses
  store i32 1, ptr %i.dm, align 4, !tbaa !58, !noalias !687
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dk, align 8, !tbaa !51, !noalias !687
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 4 uses
  store ptr null, ptr %i.dn, align 8, !tbaa !552, !noalias !687
  %i.do = add i64 %i.dj, 63
  %i.dp = lshr i64 %i.do, 6                       ; 2 uses
  %i.dq = shl nuw nsw i64 %i.dp, 3                ; 2 uses
  %i.dr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dq) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !687 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc96.i
  store ptr %i.dr, ptr %i.dn, align 8, !tbaa !404, !noalias !687
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dr, i8 -1, i64 %i.dq, i1 false), !tbaa !103, !noalias !687
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc96.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dk) #25, !noalias !687
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !694
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.dl, align 8, !tbaa !3, !noalias !694
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.du = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4, !noalias !694 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.dv = load atomic i64, ptr %i.dl acquire, align 8, !noalias !694 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.dl, align 8, !tbaa !56, !noalias !694
  store i32 0, ptr %i.dm, align 4, !tbaa !58, !noalias !694
  %i.dy = load ptr, ptr %i.dk, align 8, !tbaa !51, !noalias !694
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !694
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #24, !noalias !694, !inline_history !695
  %i.eb = load ptr, ptr %i.dk, align 8, !tbaa !51, !noalias !694
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !694
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #24, !noalias !694, !inline_history !695
  br label %.noexc90.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !694
  %.not.i.i.i.i.i93.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i93.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = add nsw i32 %i.dx, -1
  store i32 %i.ef, ptr %i.dl, align 8, !tbaa !3, !noalias !694
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i

bb.q:                                             ; preds = %bb.o
  %i.eg = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4, !noalias !694
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i95.i = phi i32 [ %i.dx, %bb.p ], [ %i.eg, %bb.q ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i95.i, 1
  br i1 %i.eh, label %bb.r, label %.noexc90.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #24, !noalias !694
  br label %.noexc90.i

.noexc90.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i, %bb.n
  store ptr %i.dn, ptr %i.i, align 8, !tbaa !556
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.dk, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i86.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i86.i, label %.noexc83.i, label %bb.s

bb.s:                                             ; preds = %.noexc90.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ej, align 8, !tbaa !56
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !58
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !51
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #24, !inline_history !696
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #24, !inline_history !696
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.em, %bb.v ], [ %i.ew, %bb.w ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ex, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i92.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i92.i, label %.noexc.i.i, label %.noexc83.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.ey = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ez, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc99.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc99.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fa, ptr %5, align 8, !tbaa !72
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fa, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !361
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  store i8 0, ptr %i.fd, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc99.i
  invoke void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc99.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc99.i ] ; 2 uses
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fg = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ez
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.fg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_6
begin_hunk_7_@_ZN6duckdbL14ColumnDataCopyIhEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
.lr.ph113.i:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.038.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %.lr.ph113.i
  %.0111.i = phi i64 [ %3, %.lr.ph113.i ], [ %i.fx, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 5 uses
  %.sroa.038.0110.i = phi i64 [ %.sroa.038.0.copyload.i, %.lr.ph113.i ], [ %.sroa.038.1.i, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 4 uses
  %.069109.i = phi i64 [ %4, %.lr.ph113.i ], [ %i.fy, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 2 uses
  %i.p = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.038.0110.i) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 9 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !510
  %i.s = zext i16 %i.r to i64
  %i.t = sub nsw i64 2048, %i.s
  %i.u = and i64 %i.t, 4294967295                 ; 2 uses
  %i.v = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.069109.i) ; 8 uses
  %i.w = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.x = load i8, ptr %i.w, align 8, !tbaa !7
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.p, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !155
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ae = zext i32 %i.ad to i64
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !103
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !144
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !147
  %i.ak = zext i32 %i.ac to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.al, %bb.d ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2048 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.am, ptr %6, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.j, align 8, !tbaa !479
  %i.an = load i16, ptr %i.q, align 8, !tbaa !510
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, label %bb.f

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.am, i8 -1, i64 256, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i, %bb.ai
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.aq, null
  %.not115.i = icmp eq i64 %i.u, 0                ; 2 uses
  br i1 %.not.i.i, label %.preheader.i, label %.preheader102.i

.preheader102.i:                                  ; preds = %bb.f
  br i1 %.not115.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not115.i, label %.loopexit.i, label %.lr.ph107.i.preheader

.lr.ph107.i.preheader:                            ; preds = %.preheader.i
  %xtraiter = and i64 %i.v, 1
  %i.ar = icmp eq i64 %i.v, 1
  br i1 %i.ar, label %.lr.ph107.i.epil.preheader, label %.lr.ph107.i.preheader.new

.lr.ph107.i.preheader.new:                        ; preds = %.lr.ph107.i.preheader
  %unroll_iter = and i64 %i.v, 4294967294
  br label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %bb.i, %.lr.ph107.i.preheader.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.i.preheader.new ], [ %i.bv, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph107.i.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.as = load ptr, ptr %1, align 8, !tbaa !480
  %i.at = add i64 %.066106.i, %.0111.i            ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.au, null
  br i1 %.not.i72.i, label %.lr.ph107.i.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph107.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = zext i32 %i.aw to i64
  br label %.lr.ph107.i.1

.lr.ph107.i.1:                                    ; preds = %bb.g, %.lr.ph107.i
  %i.ay = phi i64 [ %i.ax, %bb.g ], [ %i.at, %.lr.ph107.i ]
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.ba = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !43
  %i.be = getelementptr i8, ptr %.0.i.i, i64 %.066106.i
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bb
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !43
  %i.bg = or disjoint i64 %.066106.i, 1           ; 2 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !480
  %i.bi = add i64 %i.bg, %.0111.i                 ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i.1 = icmp eq ptr %i.bj, null
  br i1 %.not.i72.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph107.i.1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph107.i.1
  %i.bn = phi i64 [ %i.bm, %bb.h ], [ %i.bi, %.lr.ph107.i.1 ]
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.bp = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !43
  %i.bt = getelementptr i8, ptr %.0.i.i, i64 %i.bg
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bq
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !43
  %i.bv = add nuw nsw i64 %.066106.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph107.i, !llvm.loop !700

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.af
  %i.bw = phi ptr [ %i.fe, %bb.af ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.ff, %bb.af ], [ 0, %.preheader102.i ] ; 4 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !480
  %i.by = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.bz, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.j, %.lr.ph.i
  %i.cd = phi i64 [ %i.cc, %bb.j ], [ %i.by, %.lr.ph.i ] ; 3 uses
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.ce, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cf = lshr i64 %i.cd, 6
  %i.cg = and i64 %i.cd, 63
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !103
  %i.cj = shl nuw i64 1, %i.cg
  %i.ck = and i64 %i.ci, %i.cj
  %.not100.i = icmp eq i64 %i.ck, 0
  %.pre120.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.cl = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre120.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.cn = zext i16 %i.cl to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cd
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !43
  %i.cq = getelementptr i8, ptr %.0.i.i, i64 %.065105.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cn
  store i8 %i.cp, ptr %i.cr, align 1, !tbaa !43
  br label %bb.af

bb.k:                                             ; preds = %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.ct = zext i16 %.pre120.i to i64
  %i.cu = add nuw nsw i64 %.065105.i, %i.ct       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.bw, null
  br i1 %.not.i77.i, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cv = load i64, ptr %i.j, align 8, !tbaa !479
  %i.cw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.k ; 11 uses

.noexc92.i:                                       ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 7 uses
  store i32 1, ptr %i.cx, align 8, !tbaa !56, !noalias !701
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 12 ; 2 uses
  store i32 1, ptr %i.cy, align 4, !tbaa !58, !noalias !701
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cw, align 8, !tbaa !51, !noalias !701
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !552, !noalias !701
  %i.da = add i64 %i.cv, 63
  %i.db = lshr i64 %i.da, 6                       ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 3                ; 2 uses
  %i.dd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dc) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !701 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !404, !noalias !701
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dd, i8 -1, i64 %i.dc, i1 false), !tbaa !103, !noalias !701
  br label %bb.n

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #25, !noalias !701
  br label %.body.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !708
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr %i.cx, align 8, !tbaa !3, !noalias !708
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.dg = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4, !noalias !708 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.p, %bb.o
  %i.dh = load atomic i64, ptr %i.cx acquire, align 8, !noalias !708 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.cx, align 8, !tbaa !56, !noalias !708
  store i32 0, ptr %i.cy, align 4, !tbaa !58, !noalias !708
  %i.dk = load ptr, ptr %i.cw, align 8, !tbaa !51, !noalias !708
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !708
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #24, !noalias !708, !inline_history !709
  %i.dn = load ptr, ptr %i.cw, align 8, !tbaa !51, !noalias !708
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !708
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #24, !noalias !708, !inline_history !709
  br label %.noexc86.i

bb.r:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !708
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = add nsw i32 %i.dj, -1
  store i32 %i.dr, ptr %i.cx, align 8, !tbaa !3, !noalias !708
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.t:                                             ; preds = %bb.r
  %i.ds = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4, !noalias !708
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.dj, %bb.s ], [ %i.ds, %bb.t ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.dt, label %bb.u, label %.noexc86.i, !prof !60

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #24, !noalias !708
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.q
  store ptr %i.cz, ptr %i.i, align 8, !tbaa !556
  %i.du = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.cw, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.v

bb.v:                                             ; preds = %.noexc86.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dv, align 8, !tbaa !56
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !58
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #24, !inline_history !710
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #24, !inline_history !710
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dy, %bb.y ], [ %i.ei, %bb.z ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ej, label %bb.aa, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.w
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.ek = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.el, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.em = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.em, ptr %5, align 8, !tbaa !72
  %i.en = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.en, ptr %i.el, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.em, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !361
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  store i8 0, ptr %i.ep, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ae unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.ab ], [ true, %.noexc95.i ] ; 2 uses
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.es = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.el
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.es) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.ad, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.ad, label %.body.i

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_7
begin_hunk_8_@_ZN6duckdbL14ColumnDataCopyItEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.am, ptr %6, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.j, align 8, !tbaa !479
  %i.an = load i16, ptr %i.q, align 8, !tbaa !510
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, label %bb.f

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.am, i8 -1, i64 256, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i, %bb.ae
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.aq, null
  %.not116.i = icmp eq i64 %i.u, 0                ; 2 uses
  br i1 %.not.i.i, label %.preheader.i, label %.preheader102.i

.preheader102.i:                                  ; preds = %bb.f
  br i1 %.not116.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not116.i, label %.loopexit.i, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.preheader.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !513 ; 6 uses
  br i1 %.not.i72.i, label %.lr.ph107.split.us.preheader.i, label %.lr.ph107.split.preheader.i

.lr.ph107.split.preheader.i:                      ; preds = %.lr.ph107.i
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.as, i64 %.0111.i ; 5 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.au = icmp samesign ult i64 %i.v, 4
  br i1 %i.au, label %.lr.ph107.split.i.epil.preheader, label %.lr.ph107.split.preheader.i.new

.lr.ph107.split.preheader.i.new:                  ; preds = %.lr.ph107.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967292
  br label %.lr.ph107.split.i

.lr.ph107.split.us.preheader.i:                   ; preds = %.lr.ph107.i
  %invariant.gep137.i = getelementptr [2 x i8], ptr %i.at, i64 %.0111.i ; 5 uses
  %xtraiter29 = and i64 %i.v, 3                   ; 3 uses
  %i.av = icmp samesign ult i64 %i.v, 4
  br i1 %i.av, label %.lr.ph107.split.us.i.epil.preheader, label %.lr.ph107.split.us.preheader.i.new

.lr.ph107.split.us.preheader.i.new:               ; preds = %.lr.ph107.split.us.preheader.i
  %unroll_iter33 = and i64 %i.v, 4294967292
  br label %.lr.ph107.split.us.i

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.split.us.i, %.lr.ph107.split.us.preheader.i.new
  %.066106.us.i = phi i64 [ 0, %.lr.ph107.split.us.preheader.i.new ], [ %i.bt, %.lr.ph107.split.us.i ] ; 6 uses
  %niter34 = phi i64 [ 0, %.lr.ph107.split.us.preheader.i.new ], [ %niter34.next.3, %.lr.ph107.split.us.i ]
  %i.aw = load i16, ptr %i.q, align 8, !tbaa !510
  %i.ax = zext i16 %i.aw to i64
  %gep138.i = getelementptr [2 x i8], ptr %invariant.gep137.i, i64 %.066106.us.i
  %i.ay = load i16, ptr %gep138.i, align 2, !tbaa !528
  %i.az = getelementptr [2 x i8], ptr %.0.i.i, i64 %.066106.us.i
  %i.ba = getelementptr [2 x i8], ptr %i.az, i64 %i.ax
  store i16 %i.ay, ptr %i.ba, align 2, !tbaa !528
  %i.bb = or disjoint i64 %.066106.us.i, 1        ; 2 uses
  %i.bc = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bd = zext i16 %i.bc to i64
  %gep138.i.1 = getelementptr [2 x i8], ptr %invariant.gep137.i, i64 %i.bb
  %i.be = load i16, ptr %gep138.i.1, align 2, !tbaa !528
  %i.bf = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.bb
  %i.bg = getelementptr [2 x i8], ptr %i.bf, i64 %i.bd
  store i16 %i.be, ptr %i.bg, align 2, !tbaa !528
  %i.bh = or disjoint i64 %.066106.us.i, 2        ; 2 uses
  %i.bi = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bj = zext i16 %i.bi to i64
  %gep138.i.2 = getelementptr [2 x i8], ptr %invariant.gep137.i, i64 %i.bh
  %i.bk = load i16, ptr %gep138.i.2, align 2, !tbaa !528
  %i.bl = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.bh
  %i.bm = getelementptr [2 x i8], ptr %i.bl, i64 %i.bj
  store i16 %i.bk, ptr %i.bm, align 2, !tbaa !528
  %i.bn = or disjoint i64 %.066106.us.i, 3        ; 2 uses
  %i.bo = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bp = zext i16 %i.bo to i64
  %gep138.i.3 = getelementptr [2 x i8], ptr %invariant.gep137.i, i64 %i.bn
  %i.bq = load i16, ptr %gep138.i.3, align 2, !tbaa !528
  %i.br = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.bn
  %i.bs = getelementptr [2 x i8], ptr %i.br, i64 %i.bp
  store i16 %i.bq, ptr %i.bs, align 2, !tbaa !528
  %i.bt = add nuw nsw i64 %.066106.us.i, 4        ; 2 uses
  %niter34.next.3 = add i64 %niter34, 4           ; 2 uses
  %niter34.ncmp.3 = icmp eq i64 %niter34.next.3, %unroll_iter33
  br i1 %niter34.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph107.split.us.i, !llvm.loop !714

.lr.ph107.split.i:                                ; preds = %.lr.ph107.split.i, %.lr.ph107.split.preheader.i.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %i.dd, %.lr.ph107.split.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %niter.next.3, %.lr.ph107.split.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.i
  %i.bu = load i32, ptr %gep.i, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load i16, ptr %i.q, align 8, !tbaa !510
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bv
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !528
  %i.ca = getelementptr [2 x i8], ptr %.0.i.i, i64 %.066106.i
  %i.cb = getelementptr [2 x i8], ptr %i.ca, i64 %i.bx
  store i16 %i.bz, ptr %i.cb, align 2, !tbaa !528
  %i.cc = or disjoint i64 %.066106.i, 1           ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cc
  %i.cd = load i32, ptr %gep.i.1, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load i16, ptr %i.q, align 8, !tbaa !510
  %i.cg = zext i16 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ce
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !528
  %i.cj = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.cc
  %i.ck = getelementptr [2 x i8], ptr %i.cj, i64 %i.cg
  store i16 %i.ci, ptr %i.ck, align 2, !tbaa !528
  %i.cl = or disjoint i64 %.066106.i, 2           ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cl
  %i.cm = load i32, ptr %gep.i.2, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64
  %i.co = load i16, ptr %i.q, align 8, !tbaa !510
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.cn
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !528
  %i.cs = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.cl
  %i.ct = getelementptr [2 x i8], ptr %i.cs, i64 %i.cp
  store i16 %i.cr, ptr %i.ct, align 2, !tbaa !528
  %i.cu = or disjoint i64 %.066106.i, 3           ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cu
  %i.cv = load i32, ptr %gep.i.3, align 4, !tbaa !3
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load i16, ptr %i.q, align 8, !tbaa !510
  %i.cy = zext i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.cw
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !528
  %i.db = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.cu
  %i.dc = getelementptr [2 x i8], ptr %i.db, i64 %i.cy
  store i16 %i.da, ptr %i.dc, align 2, !tbaa !528
  %i.dd = add nuw nsw i64 %.066106.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit25.unr-lcssa, label %.lr.ph107.split.i, !llvm.loop !714

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.ac
  %i.de = phi ptr [ %i.gm, %bb.ac ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.gn, %bb.ac ], [ 0, %.preheader102.i ] ; 4 uses
  %i.df = load ptr, ptr %1, align 8, !tbaa !480
  %i.dg = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.dh, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = zext i32 %i.dj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.dl = phi i64 [ %i.dk, %bb.g ], [ %i.dg, %.lr.ph.i ] ; 3 uses
  %i.dm = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.dm, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.dn = lshr i64 %i.dl, 6
  %i.do = and i64 %i.dl, 63
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !103
  %i.dr = shl nuw i64 1, %i.do
  %i.ds = and i64 %i.dq, %i.dr
  %.not100.i = icmp eq i64 %i.ds, 0
  %.pre124.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.dt = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre124.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.du = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.dv = zext i16 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.dl
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !528
  %i.dy = getelementptr [2 x i8], ptr %.0.i.i, i64 %.065105.i
  %i.dz = getelementptr [2 x i8], ptr %i.dy, i64 %i.dv
  store i16 %i.dx, ptr %i.dz, align 2, !tbaa !528
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.eb = zext i16 %.pre124.i to i64
  %i.ec = add nuw nsw i64 %.065105.i, %i.eb       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.de, null
  br i1 %.not.i77.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ed = load i64, ptr %i.j, align 8, !tbaa !479
  %i.ee = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.h ; 11 uses

.noexc92.i:                                       ; preds = %bb.j
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 7 uses
  store i32 1, ptr %i.ef, align 8, !tbaa !56, !noalias !715
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 12 ; 2 uses
  store i32 1, ptr %i.eg, align 4, !tbaa !58, !noalias !715
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ee, align 8, !tbaa !51, !noalias !715
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 4 uses
  store ptr null, ptr %i.eh, align 8, !tbaa !552, !noalias !715
  %i.ei = add i64 %i.ed, 63
  %i.ej = lshr i64 %i.ei, 6                       ; 2 uses
  %i.ek = shl nuw nsw i64 %i.ej, 3                ; 2 uses
  %i.el = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !715 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.el, ptr %i.eh, align 8, !tbaa !404, !noalias !715
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.el, i8 -1, i64 %i.ek, i1 false), !tbaa !103, !noalias !715
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ee) #25, !noalias !715
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !722
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.ef, align 8, !tbaa !3, !noalias !722
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.eo = atomicrmw volatile add ptr %i.ef, i32 1 acq_rel, align 4, !noalias !722 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.ep = load atomic i64, ptr %i.ef acquire, align 8, !noalias !722 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.ef, align 8, !tbaa !56, !noalias !722
  store i32 0, ptr %i.eg, align 4, !tbaa !58, !noalias !722
  %i.es = load ptr, ptr %i.ee, align 8, !tbaa !51, !noalias !722
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !722
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #24, !noalias !722, !inline_history !723
  %i.ev = load ptr, ptr %i.ee, align 8, !tbaa !51, !noalias !722
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !722
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #24, !noalias !722, !inline_history !723
  br label %.noexc86.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !722
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ez = add nsw i32 %i.er, -1
  store i32 %i.ez, ptr %i.ef, align 8, !tbaa !3, !noalias !722
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.q:                                             ; preds = %bb.o
  %i.fa = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4, !noalias !722
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.er, %bb.p ], [ %i.fa, %bb.q ]
  %i.fb = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.fb, label %bb.r, label %.noexc86.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #24, !noalias !722
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.n
  store ptr %i.eh, ptr %i.i, align 8, !tbaa !556
  %i.fc = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.ee, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.s

bb.s:                                             ; preds = %.noexc86.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.fd, align 8, !tbaa !56
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !58
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !51
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #24, !inline_history !724
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !51
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #24, !inline_history !724
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fp = add nsw i32 %i.fg, -1
  store i32 %i.fp, ptr %i.fd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.fq = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fg, %bb.v ], [ %i.fq, %bb.w ]
  %i.fr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fr, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.fs = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ft, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.fu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fu, ptr %5, align 8, !tbaa !72
  %i.fv = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fu, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !361
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  store i8 0, ptr %i.fx, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.fs, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc95.i ] ; 2 uses
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ga = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.ft
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.ga) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_8
begin_hunk_9_@_ZN6duckdbL14ColumnDataCopyIjEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  br i1 %.not116.i, label %.loopexit.i, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.preheader.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !513 ; 7 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = zext i16 %i.an to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.av ; 11 uses
  br i1 %.not.i72.i, label %.lr.ph107.split.us.preheader.i, label %.lr.ph107.split.preheader.i

.lr.ph107.split.preheader.i:                      ; preds = %.lr.ph107.i
  %invariant.gep137.i = getelementptr [4 x i8], ptr %i.as, i64 %.0111.i ; 5 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.aw = icmp samesign ult i64 %i.v, 4
  br i1 %i.aw, label %.lr.ph107.split.i.epil.preheader, label %.lr.ph107.split.preheader.i.new

.lr.ph107.split.preheader.i.new:                  ; preds = %.lr.ph107.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967292
  br label %.lr.ph107.split.i

.lr.ph107.split.us.preheader.i:                   ; preds = %.lr.ph107.i
  %invariant.gep139.i = getelementptr [4 x i8], ptr %i.at, i64 %.0111.i ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph107.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107.split.us.preheader.i
  %i.ax = shl nuw nsw i64 %i.av, 2
  %i.ay = add i64 %i.ax, %.0.i.i21
  %i.az = shl i64 %.0111.i, 2
  %i.ba = add i64 %i.az, %i.au
  %i.bb = sub i64 %i.ba, %i.ay
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph107.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %wide.load = load <4 x i32>, ptr %i.bc, align 4, !tbaa !3
  %wide.load22 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !3
  %i.be = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store <4 x i32> %wide.load, ptr %i.be, align 4, !tbaa !3
  store <4 x i32> %wide.load22, ptr %i.bf, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !730

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph107.split.us.i.preheader

.lr.ph107.split.us.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph107.split.us.preheader.i, %middle.block
  %.066106.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter26 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol

.lr.ph107.split.us.i.prol:                        ; preds = %.lr.ph107.split.us.i.preheader, %.lr.ph107.split.us.i.prol
  %.066106.us.i.prol = phi i64 [ %i.bi, %.lr.ph107.split.us.i.prol ], [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.split.us.i.prol ], [ 0, %.lr.ph107.split.us.i.preheader ]
  %gep140.i.prol = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i.prol
  %i.bh = load i32, ptr %gep140.i.prol, align 4, !tbaa !3
  %gep.us.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.us.i.prol
  store i32 %i.bh, ptr %gep.us.i.prol, align 4, !tbaa !3
  %i.bi = add nuw nsw i64 %.066106.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter26
  br i1 %prol.iter.cmp.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol, !llvm.loop !731

.lr.ph107.split.us.i.prol.loopexit:               ; preds = %.lr.ph107.split.us.i.prol, %.lr.ph107.split.us.i.preheader
  %.066106.us.i.unr = phi i64 [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ], [ %i.bi, %.lr.ph107.split.us.i.prol ]
  %i.bj = sub nsw i64 %.066106.us.i.ph, %i.v
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph107.split.us.i

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.split.us.i.prol.loopexit, %.lr.ph107.split.us.i
  %.066106.us.i = phi i64 [ %i.bs, %.lr.ph107.split.us.i ], [ %.066106.us.i.unr, %.lr.ph107.split.us.i.prol.loopexit ] ; 6 uses
  %gep140.i = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i
  %i.bl = load i32, ptr %gep140.i, align 4, !tbaa !3
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.us.i
  store i32 %i.bl, ptr %gep.us.i, align 4, !tbaa !3
  %i.bm = add nuw nsw i64 %.066106.us.i, 1        ; 2 uses
  %gep140.i.1 = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %i.bm
  %i.bn = load i32, ptr %gep140.i.1, align 4, !tbaa !3
  %gep.us.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bm
  store i32 %i.bn, ptr %gep.us.i.1, align 4, !tbaa !3
  %i.bo = add nuw nsw i64 %.066106.us.i, 2        ; 2 uses
  %gep140.i.2 = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %i.bo
  %i.bp = load i32, ptr %gep140.i.2, align 4, !tbaa !3
  %gep.us.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bo
  store i32 %i.bp, ptr %gep.us.i.2, align 4, !tbaa !3
  %i.bq = add nuw nsw i64 %.066106.us.i, 3        ; 2 uses
  %gep140.i.3 = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %i.bq
  %i.br = load i32, ptr %gep140.i.3, align 4, !tbaa !3
  %gep.us.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bq
  store i32 %i.br, ptr %gep.us.i.3, align 4, !tbaa !3
  %i.bs = add nuw nsw i64 %.066106.us.i, 4        ; 2 uses
  %exitcond123.not.i.3 = icmp eq i64 %i.bs, %i.v
  br i1 %exitcond123.not.i.3, label %.loopexit.i, label %.lr.ph107.split.us.i, !llvm.loop !732

.lr.ph107.split.i:                                ; preds = %.lr.ph107.split.i, %.lr.ph107.split.preheader.i.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %i.cm, %.lr.ph107.split.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %niter.next.3, %.lr.ph107.split.i ]
  %gep138.i = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %.066106.i
  %i.bt = load i32, ptr %gep138.i, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.i
  store i32 %i.bw, ptr %gep.i, align 4, !tbaa !3
  %i.bx = or disjoint i64 %.066106.i, 1           ; 2 uses
  %gep138.i.1 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.bx
  %i.by = load i32, ptr %gep138.i.1, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bx
  store i32 %i.cb, ptr %gep.i.1, align 4, !tbaa !3
  %i.cc = or disjoint i64 %.066106.i, 2           ; 2 uses
  %gep138.i.2 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.cc
  %i.cd = load i32, ptr %gep138.i.2, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cc
  store i32 %i.cg, ptr %gep.i.2, align 4, !tbaa !3
  %i.ch = or disjoint i64 %.066106.i, 3           ; 2 uses
  %gep138.i.3 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.ch
  %i.ci = load i32, ptr %gep138.i.3, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ch
  store i32 %i.cl, ptr %gep.i.3, align 4, !tbaa !3
  %i.cm = add nuw nsw i64 %.066106.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit23.unr-lcssa, label %.lr.ph107.split.i, !llvm.loop !733

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.ac
  %i.cn = phi ptr [ %i.fv, %bb.ac ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.fw, %bb.ac ], [ 0, %.preheader102.i ] ; 4 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !480
  %i.cp = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cq, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cu = phi i64 [ %i.ct, %bb.g ], [ %i.cp, %.lr.ph.i ] ; 3 uses
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cv, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cw = lshr i64 %i.cu, 6
  %i.cx = and i64 %i.cu, 63
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !103
  %i.da = shl nuw i64 1, %i.cx
  %i.db = and i64 %i.cz, %i.da
  %.not100.i = icmp eq i64 %i.db, 0
  %.pre124.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.dc = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre124.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.dd = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.de = zext i16 %i.dc to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cu
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = getelementptr [4 x i8], ptr %.0.i.i, i64 %.065105.i
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.de
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !3
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dk = zext i16 %.pre124.i to i64
  %i.dl = add nuw nsw i64 %.065105.i, %i.dk       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.cn, null
  br i1 %.not.i77.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dm = load i64, ptr %i.j, align 8, !tbaa !479
  %i.dn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.h ; 11 uses

.noexc92.i:                                       ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 7 uses
  store i32 1, ptr %i.do, align 8, !tbaa !56, !noalias !734
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 12 ; 2 uses
  store i32 1, ptr %i.dp, align 4, !tbaa !58, !noalias !734
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dn, align 8, !tbaa !51, !noalias !734
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 4 uses
  store ptr null, ptr %i.dq, align 8, !tbaa !552, !noalias !734
  %i.dr = add i64 %i.dm, 63
  %i.ds = lshr i64 %i.dr, 6                       ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 3                ; 2 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !734 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.du, ptr %i.dq, align 8, !tbaa !404, !noalias !734
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.du, i8 -1, i64 %i.dt, i1 false), !tbaa !103, !noalias !734
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #25, !noalias !734
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !741
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.do, align 8, !tbaa !3, !noalias !741
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.dx = atomicrmw volatile add ptr %i.do, i32 1 acq_rel, align 4, !noalias !741 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.dy = load atomic i64, ptr %i.do acquire, align 8, !noalias !741 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.do, align 8, !tbaa !56, !noalias !741
  store i32 0, ptr %i.dp, align 4, !tbaa !58, !noalias !741
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !741
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !741
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !741, !inline_history !742
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !741
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !741
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !741, !inline_history !742
  br label %.noexc86.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !741
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ei = add nsw i32 %i.ea, -1
  store i32 %i.ei, ptr %i.do, align 8, !tbaa !3, !noalias !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.q:                                             ; preds = %bb.o
  %i.ej = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4, !noalias !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.ea, %bb.p ], [ %i.ej, %bb.q ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.ek, label %bb.r, label %.noexc86.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !741
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.n
  store ptr %i.dq, ptr %i.i, align 8, !tbaa !556
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.dn, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.s

bb.s:                                             ; preds = %.noexc86.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.em, align 8, !tbaa !56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !58
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !743
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !743
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.v ], [ %i.ez, %bb.w ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fa, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.fb = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.fc, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fd, ptr %5, align 8, !tbaa !72
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fd, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !361
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  store i8 0, ptr %i.fg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc95.i ] ; 2 uses
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fj = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.fc
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.fj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_9
begin_hunk_10_@_ZN6duckdbL14ColumnDataCopyImEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  br i1 %.not116.i, label %.loopexit.i, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.preheader.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !513 ; 7 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = zext i16 %i.an to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.av ; 11 uses
  br i1 %.not.i72.i, label %.lr.ph107.split.us.preheader.i, label %.lr.ph107.split.preheader.i

.lr.ph107.split.preheader.i:                      ; preds = %.lr.ph107.i
  %invariant.gep137.i = getelementptr [4 x i8], ptr %i.as, i64 %.0111.i ; 5 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.aw = icmp samesign ult i64 %i.v, 4
  br i1 %i.aw, label %.lr.ph107.split.i.epil.preheader, label %.lr.ph107.split.preheader.i.new

.lr.ph107.split.preheader.i.new:                  ; preds = %.lr.ph107.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967292
  br label %.lr.ph107.split.i

.lr.ph107.split.us.preheader.i:                   ; preds = %.lr.ph107.i
  %invariant.gep139.i = getelementptr [8 x i8], ptr %i.at, i64 %.0111.i ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph107.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107.split.us.preheader.i
  %i.ax = shl nuw nsw i64 %i.av, 3
  %i.ay = add i64 %i.ax, %.0.i.i21
  %i.az = shl i64 %.0111.i, 3
  %i.ba = add i64 %i.az, %i.au
  %i.bb = sub i64 %i.ba, %i.ay
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph107.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %wide.load = load <2 x i64>, ptr %i.bc, align 8, !tbaa !103
  %wide.load22 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !103
  %i.be = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store <2 x i64> %wide.load, ptr %i.be, align 8, !tbaa !103
  store <2 x i64> %wide.load22, ptr %i.bf, align 8, !tbaa !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !748

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph107.split.us.i.preheader

.lr.ph107.split.us.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph107.split.us.preheader.i, %middle.block
  %.066106.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter26 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol

.lr.ph107.split.us.i.prol:                        ; preds = %.lr.ph107.split.us.i.preheader, %.lr.ph107.split.us.i.prol
  %.066106.us.i.prol = phi i64 [ %i.bi, %.lr.ph107.split.us.i.prol ], [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.split.us.i.prol ], [ 0, %.lr.ph107.split.us.i.preheader ]
  %gep140.i.prol = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i.prol
  %i.bh = load i64, ptr %gep140.i.prol, align 8, !tbaa !103
  %gep.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.066106.us.i.prol
  store i64 %i.bh, ptr %gep.us.i.prol, align 8, !tbaa !103
  %i.bi = add nuw nsw i64 %.066106.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter26
  br i1 %prol.iter.cmp.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol, !llvm.loop !749

.lr.ph107.split.us.i.prol.loopexit:               ; preds = %.lr.ph107.split.us.i.prol, %.lr.ph107.split.us.i.preheader
  %.066106.us.i.unr = phi i64 [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ], [ %i.bi, %.lr.ph107.split.us.i.prol ]
  %i.bj = sub nsw i64 %.066106.us.i.ph, %i.v
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph107.split.us.i

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.split.us.i.prol.loopexit, %.lr.ph107.split.us.i
  %.066106.us.i = phi i64 [ %i.bs, %.lr.ph107.split.us.i ], [ %.066106.us.i.unr, %.lr.ph107.split.us.i.prol.loopexit ] ; 6 uses
  %gep140.i = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i
  %i.bl = load i64, ptr %gep140.i, align 8, !tbaa !103
  %gep.us.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.066106.us.i
  store i64 %i.bl, ptr %gep.us.i, align 8, !tbaa !103
  %i.bm = add nuw nsw i64 %.066106.us.i, 1        ; 2 uses
  %gep140.i.1 = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %i.bm
  %i.bn = load i64, ptr %gep140.i.1, align 8, !tbaa !103
  %gep.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bm
  store i64 %i.bn, ptr %gep.us.i.1, align 8, !tbaa !103
  %i.bo = add nuw nsw i64 %.066106.us.i, 2        ; 2 uses
  %gep140.i.2 = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %i.bo
  %i.bp = load i64, ptr %gep140.i.2, align 8, !tbaa !103
  %gep.us.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bo
  store i64 %i.bp, ptr %gep.us.i.2, align 8, !tbaa !103
  %i.bq = add nuw nsw i64 %.066106.us.i, 3        ; 2 uses
  %gep140.i.3 = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %i.bq
  %i.br = load i64, ptr %gep140.i.3, align 8, !tbaa !103
  %gep.us.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bq
  store i64 %i.br, ptr %gep.us.i.3, align 8, !tbaa !103
  %i.bs = add nuw nsw i64 %.066106.us.i, 4        ; 2 uses
  %exitcond123.not.i.3 = icmp eq i64 %i.bs, %i.v
  br i1 %exitcond123.not.i.3, label %.loopexit.i, label %.lr.ph107.split.us.i, !llvm.loop !750

.lr.ph107.split.i:                                ; preds = %.lr.ph107.split.i, %.lr.ph107.split.preheader.i.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %i.cm, %.lr.ph107.split.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %niter.next.3, %.lr.ph107.split.i ]
  %gep138.i = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %.066106.i
  %i.bt = load i32, ptr %gep138.i, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !103
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.066106.i
  store i64 %i.bw, ptr %gep.i, align 8, !tbaa !103
  %i.bx = or disjoint i64 %.066106.i, 1           ; 2 uses
  %gep138.i.1 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.bx
  %i.by = load i32, ptr %gep138.i.1, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !103
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bx
  store i64 %i.cb, ptr %gep.i.1, align 8, !tbaa !103
  %i.cc = or disjoint i64 %.066106.i, 2           ; 2 uses
  %gep138.i.2 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.cc
  %i.cd = load i32, ptr %gep138.i.2, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !103
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cc
  store i64 %i.cg, ptr %gep.i.2, align 8, !tbaa !103
  %i.ch = or disjoint i64 %.066106.i, 3           ; 2 uses
  %gep138.i.3 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.ch
  %i.ci = load i32, ptr %gep138.i.3, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !103
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ch
  store i64 %i.cl, ptr %gep.i.3, align 8, !tbaa !103
  %i.cm = add nuw nsw i64 %.066106.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit23.unr-lcssa, label %.lr.ph107.split.i, !llvm.loop !751

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.ac
  %i.cn = phi ptr [ %i.fv, %bb.ac ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.fw, %bb.ac ], [ 0, %.preheader102.i ] ; 4 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !480
  %i.cp = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cq, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cu = phi i64 [ %i.ct, %bb.g ], [ %i.cp, %.lr.ph.i ] ; 3 uses
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cv, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cw = lshr i64 %i.cu, 6
  %i.cx = and i64 %i.cu, 63
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !103
  %i.da = shl nuw i64 1, %i.cx
  %i.db = and i64 %i.cz, %i.da
  %.not100.i = icmp eq i64 %i.db, 0
  %.pre124.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.dc = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre124.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.dd = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.de = zext i16 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cu
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !103
  %i.dh = getelementptr [8 x i8], ptr %.0.i.i, i64 %.065105.i
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %i.de
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !103
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dk = zext i16 %.pre124.i to i64
  %i.dl = add nuw nsw i64 %.065105.i, %i.dk       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.cn, null
  br i1 %.not.i77.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dm = load i64, ptr %i.j, align 8, !tbaa !479
  %i.dn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.h ; 11 uses

.noexc92.i:                                       ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 7 uses
  store i32 1, ptr %i.do, align 8, !tbaa !56, !noalias !752
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 12 ; 2 uses
  store i32 1, ptr %i.dp, align 4, !tbaa !58, !noalias !752
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dn, align 8, !tbaa !51, !noalias !752
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 4 uses
  store ptr null, ptr %i.dq, align 8, !tbaa !552, !noalias !752
  %i.dr = add i64 %i.dm, 63
  %i.ds = lshr i64 %i.dr, 6                       ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 3                ; 2 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !752 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.du, ptr %i.dq, align 8, !tbaa !404, !noalias !752
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.du, i8 -1, i64 %i.dt, i1 false), !tbaa !103, !noalias !752
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #25, !noalias !752
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !759
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.do, align 8, !tbaa !3, !noalias !759
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.dx = atomicrmw volatile add ptr %i.do, i32 1 acq_rel, align 4, !noalias !759 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.dy = load atomic i64, ptr %i.do acquire, align 8, !noalias !759 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.do, align 8, !tbaa !56, !noalias !759
  store i32 0, ptr %i.dp, align 4, !tbaa !58, !noalias !759
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !759
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !759
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !759, !inline_history !760
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !759
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !759
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !759, !inline_history !760
  br label %.noexc86.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !759
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ei = add nsw i32 %i.ea, -1
  store i32 %i.ei, ptr %i.do, align 8, !tbaa !3, !noalias !759
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.q:                                             ; preds = %bb.o
  %i.ej = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4, !noalias !759
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.ea, %bb.p ], [ %i.ej, %bb.q ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.ek, label %bb.r, label %.noexc86.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !759
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.n
  store ptr %i.dq, ptr %i.i, align 8, !tbaa !556
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.dn, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.s

bb.s:                                             ; preds = %.noexc86.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.em, align 8, !tbaa !56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !58
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !761
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !761
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.v ], [ %i.ez, %bb.w ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fa, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.fb = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.fc, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fd, ptr %5, align 8, !tbaa !72
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fd, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !361
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  store i8 0, ptr %i.fg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc95.i ] ; 2 uses
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fj = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.fc
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.fj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_10
begin_hunk_11_@_ZN6duckdbL14ColumnDataCopyINS_10uhugeint_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  br i1 %.not120.i, label %.loopexit.i, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.preheader.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !513 ; 5 uses
  %i.au = zext i16 %i.an to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [16 x i8], ptr %.0.i.i, i64 %i.au ; 13 uses
  br i1 %.not.i72.i, label %.lr.ph111.split.us.preheader.i, label %.lr.ph111.split.preheader.i

.lr.ph111.split.preheader.i:                      ; preds = %.lr.ph111.i
  %invariant.gep141.i = getelementptr [4 x i8], ptr %i.as, i64 %.0115.i ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.av = icmp eq i64 %i.v, 1
  br i1 %i.av, label %.lr.ph111.split.i.epil.preheader, label %.lr.ph111.split.preheader.i.new

.lr.ph111.split.preheader.i.new:                  ; preds = %.lr.ph111.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967294
  br label %.lr.ph111.split.i

.lr.ph111.split.us.preheader.i:                   ; preds = %.lr.ph111.i
  %invariant.gep143.i = getelementptr [16 x i8], ptr %i.at, i64 %.0115.i ; 10 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 30
  br i1 %min.iters.check, label %.lr.ph111.split.us.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph111.split.us.preheader.i
  %i.aw = add nsw i64 %i.v, -1                    ; 2 uses
  %mul.result = shl nsw i64 %i.aw, 4              ; 2 uses
  %mul.overflow = icmp ugt i64 %i.aw, 1152921504606846975
  %i.ax = getelementptr i8, ptr %invariant.gep.i, i64 %mul.result
  %i.ay = icmp ult ptr %i.ax, %invariant.gep.i
  %i.az = getelementptr i8, ptr %invariant.gep143.i, i64 %mul.result
  %i.ba = icmp ult ptr %i.az, %invariant.gep143.i
  %i.bb = or i1 %i.ba, %mul.overflow
  %i.bc = or i1 %i.ay, %i.bb
  br i1 %i.bc, label %.lr.ph111.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bd = add nuw nsw i64 %i.v, %i.au
  %i.be = shl nuw nsw i64 %i.bd, 4
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %i.be
  %i.bf = add i64 %.0115.i, %i.v
  %i.bg = shl i64 %i.bf, 4
  %scevgep21 = getelementptr i8, ptr %i.at, i64 %i.bg
  %bound0 = icmp ult ptr %invariant.gep.i, %scevgep21
  %bound1 = icmp ult ptr %invariant.gep143.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph111.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967294               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bh = or disjoint i64 %index, 1               ; 2 uses
  %i.bi = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %index
  %i.bj = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bh
  %wide.load = load <2 x i64>, ptr %i.bi, align 8, !tbaa !103, !alias.scope !766
  %wide.load22 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !103, !alias.scope !766
  %i.bk = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %index
  %i.bl = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bh
  store <2 x i64> %wide.load, ptr %i.bk, align 8, !tbaa !103, !alias.scope !769, !noalias !766
  store <2 x i64> %wide.load22, ptr %i.bl, align 8, !tbaa !103, !alias.scope !769, !noalias !766
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph111.split.us.i.preheader

.lr.ph111.split.us.i.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph111.split.us.preheader.i, %middle.block
  %.066110.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph111.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.bn = sub nsw i64 %i.v, %.066110.us.i.ph
  %xtraiter26 = and i64 %i.bn, 3                  ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph111.split.us.i.prol.loopexit, label %.lr.ph111.split.us.i.prol

.lr.ph111.split.us.i.prol:                        ; preds = %.lr.ph111.split.us.i.preheader, %.lr.ph111.split.us.i.prol
  %.066110.us.i.prol = phi i64 [ %i.bp, %.lr.ph111.split.us.i.prol ], [ %.066110.us.i.ph, %.lr.ph111.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph111.split.us.i.prol ], [ 0, %.lr.ph111.split.us.i.preheader ]
  %gep144.i.prol = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %.066110.us.i.prol
  %gep.us.i.prol = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066110.us.i.prol
  %i.bo = load <2 x i64>, ptr %gep144.i.prol, align 8, !tbaa !103
  store <2 x i64> %i.bo, ptr %gep.us.i.prol, align 8, !tbaa !103
  %i.bp = add nuw nsw i64 %.066110.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter26
  br i1 %prol.iter.cmp.not, label %.lr.ph111.split.us.i.prol.loopexit, label %.lr.ph111.split.us.i.prol, !llvm.loop !772

.lr.ph111.split.us.i.prol.loopexit:               ; preds = %.lr.ph111.split.us.i.prol, %.lr.ph111.split.us.i.preheader
  %.066110.us.i.unr = phi i64 [ %.066110.us.i.ph, %.lr.ph111.split.us.i.preheader ], [ %i.bp, %.lr.ph111.split.us.i.prol ]
  %i.bq = sub nsw i64 %.066110.us.i.ph, %i.v
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %.loopexit.i, label %.lr.ph111.split.us.i

.lr.ph111.split.us.i:                             ; preds = %.lr.ph111.split.us.i.prol.loopexit, %.lr.ph111.split.us.i
  %.066110.us.i = phi i64 [ %i.bz, %.lr.ph111.split.us.i ], [ %.066110.us.i.unr, %.lr.ph111.split.us.i.prol.loopexit ] ; 6 uses
  %gep144.i = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %.066110.us.i
  %gep.us.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066110.us.i
  %i.bs = load <2 x i64>, ptr %gep144.i, align 8, !tbaa !103
  store <2 x i64> %i.bs, ptr %gep.us.i, align 8, !tbaa !103
  %i.bt = add nuw nsw i64 %.066110.us.i, 1        ; 2 uses
  %gep144.i.1 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bt
  %gep.us.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bt
  %i.bu = load <2 x i64>, ptr %gep144.i.1, align 8, !tbaa !103
  store <2 x i64> %i.bu, ptr %gep.us.i.1, align 8, !tbaa !103
  %i.bv = add nuw nsw i64 %.066110.us.i, 2        ; 2 uses
  %gep144.i.2 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bv
  %gep.us.i.2 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bv
  %i.bw = load <2 x i64>, ptr %gep144.i.2, align 8, !tbaa !103
  store <2 x i64> %i.bw, ptr %gep.us.i.2, align 8, !tbaa !103
  %i.bx = add nuw nsw i64 %.066110.us.i, 3        ; 2 uses
  %gep144.i.3 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bx
  %gep.us.i.3 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bx
  %i.by = load <2 x i64>, ptr %gep144.i.3, align 8, !tbaa !103
  store <2 x i64> %i.by, ptr %gep.us.i.3, align 8, !tbaa !103
  %i.bz = add nuw nsw i64 %.066110.us.i, 4        ; 2 uses
  %exitcond127.not.i.3 = icmp eq i64 %i.bz, %i.v
  br i1 %exitcond127.not.i.3, label %.loopexit.i, label %.lr.ph111.split.us.i, !llvm.loop !773

.lr.ph111.split.i:                                ; preds = %.lr.ph111.split.i, %.lr.ph111.split.preheader.i.new
  %.066110.i = phi i64 [ 0, %.lr.ph111.split.preheader.i.new ], [ %i.cj, %.lr.ph111.split.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph111.split.preheader.i.new ], [ %niter.next.1, %.lr.ph111.split.i ]
  %gep142.i = getelementptr [4 x i8], ptr %invariant.gep141.i, i64 %.066110.i
  %i.ca = load i32, ptr %gep142.i, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.cb
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066110.i
  %i.cd = load <2 x i64>, ptr %i.cc, align 8, !tbaa !103
  store <2 x i64> %i.cd, ptr %gep.i, align 8, !tbaa !103
  %i.ce = or disjoint i64 %.066110.i, 1           ; 2 uses
  %gep142.i.1 = getelementptr [4 x i8], ptr %invariant.gep141.i, i64 %i.ce
  %i.cf = load i32, ptr %gep142.i.1, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.cg
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.ce
  %i.ci = load <2 x i64>, ptr %i.ch, align 8, !tbaa !103
  store <2 x i64> %i.ci, ptr %gep.i.1, align 8, !tbaa !103
  %i.cj = add nuw nsw i64 %.066110.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit23.unr-lcssa, label %.lr.ph111.split.i, !llvm.loop !774

.lr.ph.i:                                         ; preds = %.preheader106.i, %bb.ac
  %i.ck = phi ptr [ %i.fs, %bb.ac ], [ %i.am, %.preheader106.i ] ; 3 uses
  %.065109.i = phi i64 [ %i.ft, %bb.ac ], [ 0, %.preheader106.i ] ; 4 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !480
  %i.cm = add i64 %.065109.i, %.0115.i            ; 2 uses
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cn, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cr = phi i64 [ %i.cq, %bb.g ], [ %i.cm, %.lr.ph.i ] ; 3 uses
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cs, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.ct = lshr i64 %i.cr, 6
  %i.cu = and i64 %i.cr, 63
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !103
  %i.cx = shl nuw i64 1, %i.cu
  %i.cy = and i64 %i.cw, %i.cx
  %.not104.i = icmp eq i64 %i.cy, 0
  %.pre128.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not104.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.cz = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre128.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.db = zext i16 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.cr
  %i.dd = getelementptr [16 x i8], ptr %.0.i.i, i64 %.065109.i
  %i.de = getelementptr [16 x i8], ptr %i.dd, i64 %i.db
  %i.df = load <2 x i64>, ptr %i.dc, align 8, !tbaa !103
  store <2 x i64> %i.df, ptr %i.de, align 8, !tbaa !103
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dh = zext i16 %.pre128.i to i64
  %i.di = add nuw nsw i64 %.065109.i, %i.dh       ; 2 uses
  %.not.i81.i = icmp eq ptr %i.ck, null
  br i1 %.not.i81.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dj = load i64, ptr %i.j, align 8, !tbaa !479
  %i.dk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc96.i unwind label %bb.h ; 11 uses

.noexc96.i:                                       ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 7 uses
  store i32 1, ptr %i.dl, align 8, !tbaa !56, !noalias !775
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 12 ; 2 uses
  store i32 1, ptr %i.dm, align 4, !tbaa !58, !noalias !775
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dk, align 8, !tbaa !51, !noalias !775
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 4 uses
  store ptr null, ptr %i.dn, align 8, !tbaa !552, !noalias !775
  %i.do = add i64 %i.dj, 63
  %i.dp = lshr i64 %i.do, 6                       ; 2 uses
  %i.dq = shl nuw nsw i64 %i.dp, 3                ; 2 uses
  %i.dr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dq) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !775 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc96.i
  store ptr %i.dr, ptr %i.dn, align 8, !tbaa !404, !noalias !775
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dr, i8 -1, i64 %i.dq, i1 false), !tbaa !103, !noalias !775
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc96.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dk) #25, !noalias !775
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !782
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.dl, align 8, !tbaa !3, !noalias !782
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.du = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4, !noalias !782 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.dv = load atomic i64, ptr %i.dl acquire, align 8, !noalias !782 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.dl, align 8, !tbaa !56, !noalias !782
  store i32 0, ptr %i.dm, align 4, !tbaa !58, !noalias !782
  %i.dy = load ptr, ptr %i.dk, align 8, !tbaa !51, !noalias !782
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !782
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #24, !noalias !782, !inline_history !783
  %i.eb = load ptr, ptr %i.dk, align 8, !tbaa !51, !noalias !782
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !782
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #24, !noalias !782, !inline_history !783
  br label %.noexc90.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !782
  %.not.i.i.i.i.i93.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i93.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = add nsw i32 %i.dx, -1
  store i32 %i.ef, ptr %i.dl, align 8, !tbaa !3, !noalias !782
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i

bb.q:                                             ; preds = %bb.o
  %i.eg = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4, !noalias !782
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i95.i = phi i32 [ %i.dx, %bb.p ], [ %i.eg, %bb.q ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i95.i, 1
  br i1 %i.eh, label %bb.r, label %.noexc90.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #24, !noalias !782
  br label %.noexc90.i

.noexc90.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i, %bb.n
  store ptr %i.dn, ptr %i.i, align 8, !tbaa !556
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.dk, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i86.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i86.i, label %.noexc83.i, label %bb.s

bb.s:                                             ; preds = %.noexc90.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ej, align 8, !tbaa !56
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !58
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !51
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #24, !inline_history !784
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #24, !inline_history !784
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.em, %bb.v ], [ %i.ew, %bb.w ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ex, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i92.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i92.i, label %.noexc.i.i, label %.noexc83.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.ey = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ez, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc99.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc99.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fa, ptr %5, align 8, !tbaa !72
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fa, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !361
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  store i8 0, ptr %i.fd, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc99.i
  invoke void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc99.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc99.i ] ; 2 uses
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fg = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ez
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.fg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_11
begin_hunk_12_@_ZN6duckdbL14ColumnDataCopyIfEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  br i1 %.not116.i, label %.loopexit.i, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.preheader.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !513 ; 7 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = zext i16 %i.an to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.av ; 11 uses
  br i1 %.not.i72.i, label %.lr.ph107.split.us.preheader.i, label %.lr.ph107.split.preheader.i

.lr.ph107.split.preheader.i:                      ; preds = %.lr.ph107.i
  %invariant.gep137.i = getelementptr [4 x i8], ptr %i.as, i64 %.0111.i ; 5 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.aw = icmp samesign ult i64 %i.v, 4
  br i1 %i.aw, label %.lr.ph107.split.i.epil.preheader, label %.lr.ph107.split.preheader.i.new

.lr.ph107.split.preheader.i.new:                  ; preds = %.lr.ph107.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967292
  br label %.lr.ph107.split.i

.lr.ph107.split.us.preheader.i:                   ; preds = %.lr.ph107.i
  %invariant.gep139.i = getelementptr [4 x i8], ptr %i.at, i64 %.0111.i ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph107.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107.split.us.preheader.i
  %i.ax = shl nuw nsw i64 %i.av, 2
  %i.ay = add i64 %i.ax, %.0.i.i21
  %i.az = shl i64 %.0111.i, 2
  %i.ba = add i64 %i.az, %i.au
  %i.bb = sub i64 %i.ba, %i.ay
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph107.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %wide.load = load <4 x float>, ptr %i.bc, align 4, !tbaa !424
  %wide.load22 = load <4 x float>, ptr %i.bd, align 4, !tbaa !424
  %i.be = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store <4 x float> %wide.load, ptr %i.be, align 4, !tbaa !424
  store <4 x float> %wide.load22, ptr %i.bf, align 4, !tbaa !424
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !788

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph107.split.us.i.preheader

.lr.ph107.split.us.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph107.split.us.preheader.i, %middle.block
  %.066106.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter26 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol

.lr.ph107.split.us.i.prol:                        ; preds = %.lr.ph107.split.us.i.preheader, %.lr.ph107.split.us.i.prol
  %.066106.us.i.prol = phi i64 [ %i.bi, %.lr.ph107.split.us.i.prol ], [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.split.us.i.prol ], [ 0, %.lr.ph107.split.us.i.preheader ]
  %gep140.i.prol = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i.prol
  %i.bh = load float, ptr %gep140.i.prol, align 4, !tbaa !424
  %gep.us.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.us.i.prol
  store float %i.bh, ptr %gep.us.i.prol, align 4, !tbaa !424
  %i.bi = add nuw nsw i64 %.066106.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter26
  br i1 %prol.iter.cmp.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol, !llvm.loop !789

.lr.ph107.split.us.i.prol.loopexit:               ; preds = %.lr.ph107.split.us.i.prol, %.lr.ph107.split.us.i.preheader
  %.066106.us.i.unr = phi i64 [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ], [ %i.bi, %.lr.ph107.split.us.i.prol ]
  %i.bj = sub nsw i64 %.066106.us.i.ph, %i.v
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph107.split.us.i

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.split.us.i.prol.loopexit, %.lr.ph107.split.us.i
  %.066106.us.i = phi i64 [ %i.bs, %.lr.ph107.split.us.i ], [ %.066106.us.i.unr, %.lr.ph107.split.us.i.prol.loopexit ] ; 6 uses
  %gep140.i = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i
  %i.bl = load float, ptr %gep140.i, align 4, !tbaa !424
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.us.i
  store float %i.bl, ptr %gep.us.i, align 4, !tbaa !424
  %i.bm = add nuw nsw i64 %.066106.us.i, 1        ; 2 uses
  %gep140.i.1 = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %i.bm
  %i.bn = load float, ptr %gep140.i.1, align 4, !tbaa !424
  %gep.us.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bm
  store float %i.bn, ptr %gep.us.i.1, align 4, !tbaa !424
  %i.bo = add nuw nsw i64 %.066106.us.i, 2        ; 2 uses
  %gep140.i.2 = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %i.bo
  %i.bp = load float, ptr %gep140.i.2, align 4, !tbaa !424
  %gep.us.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bo
  store float %i.bp, ptr %gep.us.i.2, align 4, !tbaa !424
  %i.bq = add nuw nsw i64 %.066106.us.i, 3        ; 2 uses
  %gep140.i.3 = getelementptr [4 x i8], ptr %invariant.gep139.i, i64 %i.bq
  %i.br = load float, ptr %gep140.i.3, align 4, !tbaa !424
  %gep.us.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bq
  store float %i.br, ptr %gep.us.i.3, align 4, !tbaa !424
  %i.bs = add nuw nsw i64 %.066106.us.i, 4        ; 2 uses
  %exitcond123.not.i.3 = icmp eq i64 %i.bs, %i.v
  br i1 %exitcond123.not.i.3, label %.loopexit.i, label %.lr.ph107.split.us.i, !llvm.loop !790

.lr.ph107.split.i:                                ; preds = %.lr.ph107.split.i, %.lr.ph107.split.preheader.i.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %i.cm, %.lr.ph107.split.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %niter.next.3, %.lr.ph107.split.i ]
  %gep138.i = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %.066106.i
  %i.bt = load i32, ptr %gep138.i, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !424
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.066106.i
  store float %i.bw, ptr %gep.i, align 4, !tbaa !424
  %i.bx = or disjoint i64 %.066106.i, 1           ; 2 uses
  %gep138.i.1 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.bx
  %i.by = load i32, ptr %gep138.i.1, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !424
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bx
  store float %i.cb, ptr %gep.i.1, align 4, !tbaa !424
  %i.cc = or disjoint i64 %.066106.i, 2           ; 2 uses
  %gep138.i.2 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.cc
  %i.cd = load i32, ptr %gep138.i.2, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !424
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cc
  store float %i.cg, ptr %gep.i.2, align 4, !tbaa !424
  %i.ch = or disjoint i64 %.066106.i, 3           ; 2 uses
  %gep138.i.3 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.ch
  %i.ci = load i32, ptr %gep138.i.3, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !424
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ch
  store float %i.cl, ptr %gep.i.3, align 4, !tbaa !424
  %i.cm = add nuw nsw i64 %.066106.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit23.unr-lcssa, label %.lr.ph107.split.i, !llvm.loop !791

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.ac
  %i.cn = phi ptr [ %i.fv, %bb.ac ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.fw, %bb.ac ], [ 0, %.preheader102.i ] ; 4 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !480
  %i.cp = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cq, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cu = phi i64 [ %i.ct, %bb.g ], [ %i.cp, %.lr.ph.i ] ; 3 uses
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cv, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cw = lshr i64 %i.cu, 6
  %i.cx = and i64 %i.cu, 63
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !103
  %i.da = shl nuw i64 1, %i.cx
  %i.db = and i64 %i.cz, %i.da
  %.not100.i = icmp eq i64 %i.db, 0
  %.pre124.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.dc = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre124.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.dd = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.de = zext i16 %i.dc to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cu
  %i.dg = load float, ptr %i.df, align 4, !tbaa !424
  %i.dh = getelementptr [4 x i8], ptr %.0.i.i, i64 %.065105.i
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.de
  store float %i.dg, ptr %i.di, align 4, !tbaa !424
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dk = zext i16 %.pre124.i to i64
  %i.dl = add nuw nsw i64 %.065105.i, %i.dk       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.cn, null
  br i1 %.not.i77.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dm = load i64, ptr %i.j, align 8, !tbaa !479
  %i.dn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.h ; 11 uses

.noexc92.i:                                       ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 7 uses
  store i32 1, ptr %i.do, align 8, !tbaa !56, !noalias !792
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 12 ; 2 uses
  store i32 1, ptr %i.dp, align 4, !tbaa !58, !noalias !792
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dn, align 8, !tbaa !51, !noalias !792
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 4 uses
  store ptr null, ptr %i.dq, align 8, !tbaa !552, !noalias !792
  %i.dr = add i64 %i.dm, 63
  %i.ds = lshr i64 %i.dr, 6                       ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 3                ; 2 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !792 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.du, ptr %i.dq, align 8, !tbaa !404, !noalias !792
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.du, i8 -1, i64 %i.dt, i1 false), !tbaa !103, !noalias !792
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #25, !noalias !792
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !799
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.do, align 8, !tbaa !3, !noalias !799
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.dx = atomicrmw volatile add ptr %i.do, i32 1 acq_rel, align 4, !noalias !799 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.dy = load atomic i64, ptr %i.do acquire, align 8, !noalias !799 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.do, align 8, !tbaa !56, !noalias !799
  store i32 0, ptr %i.dp, align 4, !tbaa !58, !noalias !799
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !799
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !799
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !799, !inline_history !800
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !799
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !799
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !799, !inline_history !800
  br label %.noexc86.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !799
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ei = add nsw i32 %i.ea, -1
  store i32 %i.ei, ptr %i.do, align 8, !tbaa !3, !noalias !799
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.q:                                             ; preds = %bb.o
  %i.ej = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4, !noalias !799
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.ea, %bb.p ], [ %i.ej, %bb.q ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.ek, label %bb.r, label %.noexc86.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !799
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.n
  store ptr %i.dq, ptr %i.i, align 8, !tbaa !556
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.dn, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.s

bb.s:                                             ; preds = %.noexc86.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.em, align 8, !tbaa !56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !58
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !801
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !801
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.v ], [ %i.ez, %bb.w ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fa, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.fb = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.fc, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fd, ptr %5, align 8, !tbaa !72
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fd, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !361
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  store i8 0, ptr %i.fg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc95.i ] ; 2 uses
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fj = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.fc
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.fj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_12
begin_hunk_13_@_ZN6duckdbL14ColumnDataCopyIdEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  br i1 %.not116.i, label %.loopexit.i, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.preheader.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !513 ; 7 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = zext i16 %i.an to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.av ; 11 uses
  br i1 %.not.i72.i, label %.lr.ph107.split.us.preheader.i, label %.lr.ph107.split.preheader.i

.lr.ph107.split.preheader.i:                      ; preds = %.lr.ph107.i
  %invariant.gep137.i = getelementptr [4 x i8], ptr %i.as, i64 %.0111.i ; 5 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.aw = icmp samesign ult i64 %i.v, 4
  br i1 %i.aw, label %.lr.ph107.split.i.epil.preheader, label %.lr.ph107.split.preheader.i.new

.lr.ph107.split.preheader.i.new:                  ; preds = %.lr.ph107.split.preheader.i
  %unroll_iter = and i64 %i.v, 4294967292
  br label %.lr.ph107.split.i

.lr.ph107.split.us.preheader.i:                   ; preds = %.lr.ph107.i
  %invariant.gep139.i = getelementptr [8 x i8], ptr %i.at, i64 %.0111.i ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph107.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107.split.us.preheader.i
  %i.ax = shl nuw nsw i64 %i.av, 3
  %i.ay = add i64 %i.ax, %.0.i.i21
  %i.az = shl i64 %.0111.i, 3
  %i.ba = add i64 %i.az, %i.au
  %i.bb = sub i64 %i.ba, %i.ay
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph107.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %wide.load = load <2 x double>, ptr %i.bc, align 8, !tbaa !806
  %wide.load22 = load <2 x double>, ptr %i.bd, align 8, !tbaa !806
  %i.be = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store <2 x double> %wide.load, ptr %i.be, align 8, !tbaa !806
  store <2 x double> %wide.load22, ptr %i.bf, align 8, !tbaa !806
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !808

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph107.split.us.i.preheader

.lr.ph107.split.us.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph107.split.us.preheader.i, %middle.block
  %.066106.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter26 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol

.lr.ph107.split.us.i.prol:                        ; preds = %.lr.ph107.split.us.i.preheader, %.lr.ph107.split.us.i.prol
  %.066106.us.i.prol = phi i64 [ %i.bi, %.lr.ph107.split.us.i.prol ], [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.split.us.i.prol ], [ 0, %.lr.ph107.split.us.i.preheader ]
  %gep140.i.prol = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i.prol
  %i.bh = load double, ptr %gep140.i.prol, align 8, !tbaa !806
  %gep.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.066106.us.i.prol
  store double %i.bh, ptr %gep.us.i.prol, align 8, !tbaa !806
  %i.bi = add nuw nsw i64 %.066106.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter26
  br i1 %prol.iter.cmp.not, label %.lr.ph107.split.us.i.prol.loopexit, label %.lr.ph107.split.us.i.prol, !llvm.loop !809

.lr.ph107.split.us.i.prol.loopexit:               ; preds = %.lr.ph107.split.us.i.prol, %.lr.ph107.split.us.i.preheader
  %.066106.us.i.unr = phi i64 [ %.066106.us.i.ph, %.lr.ph107.split.us.i.preheader ], [ %i.bi, %.lr.ph107.split.us.i.prol ]
  %i.bj = sub nsw i64 %.066106.us.i.ph, %i.v
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.loopexit.i, label %.lr.ph107.split.us.i

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.split.us.i.prol.loopexit, %.lr.ph107.split.us.i
  %.066106.us.i = phi i64 [ %i.bs, %.lr.ph107.split.us.i ], [ %.066106.us.i.unr, %.lr.ph107.split.us.i.prol.loopexit ] ; 6 uses
  %gep140.i = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %.066106.us.i
  %i.bl = load double, ptr %gep140.i, align 8, !tbaa !806
  %gep.us.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.066106.us.i
  store double %i.bl, ptr %gep.us.i, align 8, !tbaa !806
  %i.bm = add nuw nsw i64 %.066106.us.i, 1        ; 2 uses
  %gep140.i.1 = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %i.bm
  %i.bn = load double, ptr %gep140.i.1, align 8, !tbaa !806
  %gep.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bm
  store double %i.bn, ptr %gep.us.i.1, align 8, !tbaa !806
  %i.bo = add nuw nsw i64 %.066106.us.i, 2        ; 2 uses
  %gep140.i.2 = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %i.bo
  %i.bp = load double, ptr %gep140.i.2, align 8, !tbaa !806
  %gep.us.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bo
  store double %i.bp, ptr %gep.us.i.2, align 8, !tbaa !806
  %i.bq = add nuw nsw i64 %.066106.us.i, 3        ; 2 uses
  %gep140.i.3 = getelementptr [8 x i8], ptr %invariant.gep139.i, i64 %i.bq
  %i.br = load double, ptr %gep140.i.3, align 8, !tbaa !806
  %gep.us.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bq
  store double %i.br, ptr %gep.us.i.3, align 8, !tbaa !806
  %i.bs = add nuw nsw i64 %.066106.us.i, 4        ; 2 uses
  %exitcond123.not.i.3 = icmp eq i64 %i.bs, %i.v
  br i1 %exitcond123.not.i.3, label %.loopexit.i, label %.lr.ph107.split.us.i, !llvm.loop !810

.lr.ph107.split.i:                                ; preds = %.lr.ph107.split.i, %.lr.ph107.split.preheader.i.new
  %.066106.i = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %i.cm, %.lr.ph107.split.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph107.split.preheader.i.new ], [ %niter.next.3, %.lr.ph107.split.i ]
  %gep138.i = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %.066106.i
  %i.bt = load i32, ptr %gep138.i, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !806
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.066106.i
  store double %i.bw, ptr %gep.i, align 8, !tbaa !806
  %i.bx = or disjoint i64 %.066106.i, 1           ; 2 uses
  %gep138.i.1 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.bx
  %i.by = load i32, ptr %gep138.i.1, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !806
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bx
  store double %i.cb, ptr %gep.i.1, align 8, !tbaa !806
  %i.cc = or disjoint i64 %.066106.i, 2           ; 2 uses
  %gep138.i.2 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.cc
  %i.cd = load i32, ptr %gep138.i.2, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !806
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.cc
  store double %i.cg, ptr %gep.i.2, align 8, !tbaa !806
  %i.ch = or disjoint i64 %.066106.i, 3           ; 2 uses
  %gep138.i.3 = getelementptr [4 x i8], ptr %invariant.gep137.i, i64 %i.ch
  %i.ci = load i32, ptr %gep138.i.3, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !806
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ch
  store double %i.cl, ptr %gep.i.3, align 8, !tbaa !806
  %i.cm = add nuw nsw i64 %.066106.i, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit23.unr-lcssa, label %.lr.ph107.split.i, !llvm.loop !811

.lr.ph.i:                                         ; preds = %.preheader102.i, %bb.ac
  %i.cn = phi ptr [ %i.fv, %bb.ac ], [ %i.am, %.preheader102.i ] ; 3 uses
  %.065105.i = phi i64 [ %i.fw, %bb.ac ], [ 0, %.preheader102.i ] ; 4 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !480
  %i.cp = add i64 %.065105.i, %.0111.i            ; 2 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cq, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cu = phi i64 [ %i.ct, %bb.g ], [ %i.cp, %.lr.ph.i ] ; 3 uses
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cv, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cw = lshr i64 %i.cu, 6
  %i.cx = and i64 %i.cu, 63
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !103
  %i.da = shl nuw i64 1, %i.cx
  %i.db = and i64 %i.cz, %i.da
  %.not100.i = icmp eq i64 %i.db, 0
  %.pre124.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not100.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.dc = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre124.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.dd = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.de = zext i16 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cu
  %i.dg = load double, ptr %i.df, align 8, !tbaa !806
  %i.dh = getelementptr [8 x i8], ptr %.0.i.i, i64 %.065105.i
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %i.de
  store double %i.dg, ptr %i.di, align 8, !tbaa !806
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dk = zext i16 %.pre124.i to i64
  %i.dl = add nuw nsw i64 %.065105.i, %i.dk       ; 2 uses
  %.not.i77.i = icmp eq ptr %i.cn, null
  br i1 %.not.i77.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dm = load i64, ptr %i.j, align 8, !tbaa !479
  %i.dn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc92.i unwind label %bb.h ; 11 uses

.noexc92.i:                                       ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 7 uses
  store i32 1, ptr %i.do, align 8, !tbaa !56, !noalias !812
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 12 ; 2 uses
  store i32 1, ptr %i.dp, align 4, !tbaa !58, !noalias !812
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dn, align 8, !tbaa !51, !noalias !812
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 4 uses
  store ptr null, ptr %i.dq, align 8, !tbaa !552, !noalias !812
  %i.dr = add i64 %i.dm, 63
  %i.ds = lshr i64 %i.dr, 6                       ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 3                ; 2 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !812 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc92.i
  store ptr %i.du, ptr %i.dq, align 8, !tbaa !404, !noalias !812
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.du, i8 -1, i64 %i.dt, i1 false), !tbaa !103, !noalias !812
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc92.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #25, !noalias !812
  br label %.body.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !819
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.do, align 8, !tbaa !3, !noalias !819
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.dx = atomicrmw volatile add ptr %i.do, i32 1 acq_rel, align 4, !noalias !819 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.dy = load atomic i64, ptr %i.do acquire, align 8, !noalias !819 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.do, align 8, !tbaa !56, !noalias !819
  store i32 0, ptr %i.dp, align 4, !tbaa !58, !noalias !819
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !819
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !819
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !819, !inline_history !820
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !51, !noalias !819
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !819
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !819, !inline_history !820
  br label %.noexc86.i

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !819
  %.not.i.i.i.i.i89.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i89.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ei = add nsw i32 %i.ea, -1
  store i32 %i.ei, ptr %i.do, align 8, !tbaa !3, !noalias !819
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

bb.q:                                             ; preds = %bb.o
  %i.ej = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4, !noalias !819
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i91.i = phi i32 [ %i.ea, %bb.p ], [ %i.ej, %bb.q ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i91.i, 1
  br i1 %i.ek, label %bb.r, label %.noexc86.i, !prof !60

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24, !noalias !819
  br label %.noexc86.i

.noexc86.i:                                       ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i90.i, %bb.n
  store ptr %i.dq, ptr %i.i, align 8, !tbaa !556
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.dn, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i82.i, label %.noexc79.i, label %bb.s

bb.s:                                             ; preds = %.noexc86.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.em, align 8, !tbaa !56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !58
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !821
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24, !inline_history !821
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.v ], [ %i.ez, %bb.w ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fa, label %bb.x, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i88.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i88.i, label %.noexc.i.i, label %.noexc79.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.fb = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.fc, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.fd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc95.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fd, ptr %5, align 8, !tbaa !72
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fd, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !361
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  store i8 0, ptr %i.fg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc95.i
  invoke void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc95.i
  %.0.i.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc95.i ] ; 2 uses
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fj = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.fc
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.fj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.aa, label %.body.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_13
begin_hunk_14_@_ZN6duckdbL14ColumnDataCopyIdEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  br i1 %i.hc, label %bb.al, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, !prof !60

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #24
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i:  ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.not70.i, label %_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyIdEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit, label %bb.b, !llvm.loop !825

.body.i:                                          ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, %bb.h, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ap, %bb.e ], [ %i.dv, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %i.dj, %bb.h ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.aa ]
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn.i

_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyIdEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL14ColumnDataCopyINS_10interval_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"struct.duckdb::ValidityMask", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !496, !nonnull !64, !align !94 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !499, !nonnull !64, !align !94 ; 2 uses
  %.not112.i = icmp eq i64 %4, 0
  br i1 %.not112.i, label %_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyINS_10interval_tEEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit, label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.038.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %.lr.ph117.i
  %.0115.i = phi i64 [ %3, %.lr.ph117.i ], [ %i.et, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 3 uses
  %.sroa.038.0114.i = phi i64 [ %.sroa.038.0.copyload.i, %.lr.ph117.i ], [ %.sroa.038.1.i, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 4 uses
  %.069113.i = phi i64 [ %4, %.lr.ph117.i ], [ %i.eu, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 2 uses
  %i.p = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.038.0114.i) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 7 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !510
  %i.s = zext i16 %i.r to i64
  %i.t = sub nsw i64 2048, %i.s
  %i.u = and i64 %i.t, 4294967295                 ; 2 uses
  %i.v = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.069113.i) ; 5 uses
  %i.w = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.x = load i8, ptr %i.w, align 8, !tbaa !7
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.p, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !155
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ae = zext i32 %i.ad to i64
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !103
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !144
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !147
  %i.ak = zext i32 %i.ac to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.al, %bb.d ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32768 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.am, ptr %6, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.j, align 8, !tbaa !479
  %i.an = load i16, ptr %i.q, align 8, !tbaa !510
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, label %bb.f

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.am, i8 -1, i64 256, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i, %bb.ag
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !189
  %.not.i.i = icmp eq ptr %i.aq, null
  %.not119.i = icmp eq i64 %i.u, 0                ; 2 uses
  br i1 %.not.i.i, label %.preheader.i, label %.preheader106.i

.preheader106.i:                                  ; preds = %bb.f
  br i1 %.not119.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not119.i, label %.loopexit.i, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.preheader.i, %bb.h
  %.066110.i = phi i64 [ %i.bf, %bb.h ], [ 0, %.preheader.i ] ; 3 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !480
  %i.as = add i64 %.066110.i, %.0115.i            ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.at, null
  br i1 %.not.i72.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph111.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = zext i32 %i.av to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph111.i
  %i.ax = phi i64 [ %i.aw, %bb.g ], [ %i.as, %.lr.ph111.i ]
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.az = load i16, ptr %i.q, align 8, !tbaa !510
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.ax
  %i.bc = getelementptr [16 x i8], ptr %.0.i.i, i64 %.066110.i
  %i.bd = getelementptr [16 x i8], ptr %i.bc, i64 %i.ba
  %i.be = load <2 x i64>, ptr %i.bb, align 8
  store <2 x i64> %i.be, ptr %i.bd, align 8
  %i.bf = add nuw nsw i64 %.066110.i, 1           ; 2 uses
  %exitcond123.not.i = icmp eq i64 %i.bf, %i.v
  br i1 %exitcond123.not.i, label %.loopexit.i, label %.lr.ph111.i, !llvm.loop !826

.lr.ph.i:                                         ; preds = %.preheader106.i, %bb.ae
  %i.bg = phi ptr [ %i.eo, %bb.ae ], [ %i.am, %.preheader106.i ] ; 3 uses
  %.065109.i = phi i64 [ %i.ep, %bb.ae ], [ 0, %.preheader106.i ] ; 4 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !480
  %i.bi = add i64 %.065109.i, %.0115.i            ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.bj, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.i, %.lr.ph.i
  %i.bn = phi i64 [ %i.bm, %bb.i ], [ %i.bi, %.lr.ph.i ] ; 3 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.bo, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.bp = lshr i64 %i.bn, 6
  %i.bq = and i64 %i.bn, 63
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !103
  %i.bt = shl nuw i64 1, %i.bq
  %i.bu = and i64 %i.bs, %i.bt
  %.not104.i = icmp eq i64 %i.bu, 0
  %.pre124.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not104.i, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.bv = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre124.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.bx = zext i16 %i.bv to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bn
  %i.bz = getelementptr [16 x i8], ptr %.0.i.i, i64 %.065109.i
  %i.ca = getelementptr [16 x i8], ptr %i.bz, i64 %i.bx
  %i.cb = load <2 x i64>, ptr %i.by, align 8
  store <2 x i64> %i.cb, ptr %i.ca, align 8
  br label %bb.ae

bb.j:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.cd = zext i16 %.pre124.i to i64
  %i.ce = add nuw nsw i64 %.065109.i, %i.cd       ; 2 uses
  %.not.i81.i = icmp eq ptr %i.bg, null
  br i1 %.not.i81.i, label %bb.l, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cf = load i64, ptr %i.j, align 8, !tbaa !479
  %i.cg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc96.i unwind label %bb.j ; 11 uses

.noexc96.i:                                       ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 7 uses
  store i32 1, ptr %i.ch, align 8, !tbaa !56, !noalias !827
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 12 ; 2 uses
  store i32 1, ptr %i.ci, align 4, !tbaa !58, !noalias !827
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cg, align 8, !tbaa !51, !noalias !827
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 4 uses
  store ptr null, ptr %i.cj, align 8, !tbaa !552, !noalias !827
  %i.ck = add i64 %i.cf, 63
  %i.cl = lshr i64 %i.ck, 6                       ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cl, 3                ; 2 uses
  %i.cn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !827 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc96.i
  store ptr %i.cn, ptr %i.cj, align 8, !tbaa !404, !noalias !827
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cn, i8 -1, i64 %i.cm, i1 false), !tbaa !103, !noalias !827
  br label %bb.m

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc96.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #25, !noalias !827
  br label %.body.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !834
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 2, ptr %i.ch, align 8, !tbaa !3, !noalias !834
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cq = atomicrmw volatile add ptr %i.ch, i32 1 acq_rel, align 4, !noalias !834 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.o, %bb.n
  %i.cr = load atomic i64, ptr %i.ch acquire, align 8, !noalias !834 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.ch, align 8, !tbaa !56, !noalias !834
  store i32 0, ptr %i.ci, align 4, !tbaa !58, !noalias !834
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !51, !noalias !834
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !834
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #24, !noalias !834, !inline_history !835
  %i.cx = load ptr, ptr %i.cg, align 8, !tbaa !51, !noalias !834
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !834
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #24, !noalias !834, !inline_history !835
  br label %.noexc90.i

bb.q:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !834
  %.not.i.i.i.i.i93.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i93.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = add nsw i32 %i.ct, -1
  store i32 %i.db, ptr %i.ch, align 8, !tbaa !3, !noalias !834
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i

bb.s:                                             ; preds = %bb.q
  %i.dc = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4, !noalias !834
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i95.i = phi i32 [ %i.ct, %bb.r ], [ %i.dc, %bb.s ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i.i95.i, 1
  br i1 %i.dd, label %bb.t, label %.noexc90.i, !prof !60

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #24, !noalias !834
  br label %.noexc90.i

.noexc90.i:                                       ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i94.i, %bb.p
  store ptr %i.cj, ptr %i.i, align 8, !tbaa !556
  %i.de = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  store ptr %i.cg, ptr %i.l, align 8, !tbaa !54
  %.not.i.i.i.i.i86.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i86.i, label %.noexc83.i, label %bb.u

bb.u:                                             ; preds = %.noexc90.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.df, align 8, !tbaa !56
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !58
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !51
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #24, !inline_history !836
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #24, !inline_history !836
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = add nsw i32 %i.di, -1
  store i32 %i.dr, ptr %i.df, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ds = atomicrmw volatile add ptr %i.df, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.di, %bb.x ], [ %i.ds, %bb.y ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dt, label %bb.z, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.v
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !558 ; 2 uses
  %.not.i92.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i92.i, label %.noexc.i.i, label %.noexc83.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.du = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.dv, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.dw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc99.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc99.i:                                       ; preds = %.noexc.i.i
  store ptr %i.dw, ptr %5, align 8, !tbaa !72
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.dw, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !361
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  store i8 0, ptr %i.dz, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc99.i
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ad unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %.noexc99.i
  %.0.i.i.i = phi i1 [ false, %bb.aa ], [ true, %.noexc99.i ] ; 2 uses
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ec = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dv
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.ec) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.ac, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.ac, label %.body.i

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_14
begin_hunk_15_@_ZN6duckdbL14ColumnDataCopyINS_8string_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc109.i
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.n unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %.noexc109.i
  %.0.i.i.i = phi i1 [ false, %bb.k ], [ true, %.noexc109.i ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %6, align 8, !tbaa !72    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.cb) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i.i, label %bb.m, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i.i, label %bb.m, label %common.resume

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bt) #24
  br label %common.resume

bb.n:                                             ; preds = %bb.k
  unreachable

.noexc73.i:                                       ; preds = %bb.j
  %i.cd = call { i64, ptr } @_ZN6duckdb10StringHeap7AddBlobERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(72) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %bb.o

bb.o:                                             ; preds = %.noexc73.i, %bb.i
  %.fca.1.insert.merged.i.i.i = phi { i64, ptr } [ %i.bp, %bb.i ], [ %i.cd, %.noexc73.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ce = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i, 0
  %i.cf = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i, 1
  %i.cg = getelementptr [16 x i8], ptr %.0.i.i, i64 %.066145.i
  %i.ch = getelementptr [16 x i8], ptr %i.cg, i64 %i.bk ; 2 uses
  store i64 %i.ce, ptr %i.ch, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cf, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !43
  %i.ci = add nuw nsw i64 %.066145.i, 1           ; 2 uses
  %exitcond158.not.i = icmp eq i64 %i.ci, %i.af
  br i1 %exitcond158.not.i, label %.loopexit.i, label %.lr.ph146.i, !llvm.loop !843

.lr.ph.i:                                         ; preds = %.preheader141.i, %bb.an
  %.sroa.8.0 = phi ptr [ %.sroa.8.2, %bb.an ], [ null, %.preheader141.i ] ; 15 uses
  %i.cj = phi ptr [ %i.fu, %bb.an ], [ %i.aw, %.preheader141.i ] ; 3 uses
  %.065144.i = phi i64 [ %i.fv, %bb.an ], [ 0, %.preheader141.i ] ; 4 uses
  %i.ck = load ptr, ptr %1, align 8, !tbaa !480
  %i.cl = add i64 %.065144.i, %.0150.i            ; 2 uses
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !489 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cm, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit76.i: ; preds = %bb.p, %.lr.ph.i
  %i.cq = phi i64 [ %i.cp, %bb.p ], [ %i.cl, %.lr.ph.i ] ; 3 uses
  %i.cr = load ptr, ptr %i.t, align 8, !tbaa !189 ; 2 uses
  %.not.i77.i = icmp eq ptr %i.cr, null
  br i1 %.not.i77.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit76._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit76._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.i
  %.pre.i = load i16, ptr %i.aa, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit76.i
  %i.cs = lshr i64 %i.cq, 6
  %i.ct = and i64 %i.cq, 63
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cs
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !103
  %i.cw = shl nuw i64 1, %i.ct
  %i.cx = and i64 %i.cv, %i.cw
  %.not139.i = icmp eq i64 %i.cx, 0
  %.pre159.i = load i16, ptr %i.aa, align 8, !tbaa !510 ; 2 uses
  br i1 %.not139.i, label %bb.x, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.cy = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit76._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre159.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.cz = load ptr, ptr %i.u, align 8, !tbaa !513
  %i.da = zext i16 %i.cy to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cq ; 2 uses
  %.sroa.0.0.copyload.i79.i = load i64, ptr %i.db, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i80.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.2.0.copyload.i81.i = load ptr, ptr %.sroa.2.0..sroa_idx.i80.i, align 8, !tbaa !43 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.0.0.copyload.i79.i, ptr %7, align 8
  store ptr %.sroa.2.0.copyload.i81.i, ptr %i.v, align 8
  %i.dc = trunc i64 %.sroa.0.0.copyload.i79.i to i32
  %i.dd = icmp ult i32 %i.dc, 13
  br i1 %i.dd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.de = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload.i79.i, 0
  %i.df = insertvalue { i64, ptr } %i.de, ptr %.sroa.2.0.copyload.i81.i, 1
  br label %_ZN6duckdb13BaseValueCopyINS_8string_tEE6AssignINS_15StringValueCopyEEEvRNS_18ColumnDataMetaDataEPhS7_mm.exit86.i

bb.r:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.dg = load ptr, ptr %i.k, align 8, !tbaa !496, !nonnull !64, !align !94
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !840 ; 2 uses
  %.not.i93.i = icmp eq ptr %i.di, null
  br i1 %.not.i93.i, label %.noexc.i111.i, label %.noexc84.i, !prof !60

.noexc.i111.i:                                    ; preds = %bb.r
  %i.dj = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.dk, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 49, ptr %i.c, align 8, !tbaa !103
  %i.dl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc112.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i94.i ; 3 uses

.noexc112.i:                                      ; preds = %.noexc.i111.i
  store ptr %i.dl, ptr %5, align 8, !tbaa !72
  %i.dm = load i64, ptr %i.c, align 8, !tbaa !103 ; 3 uses
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.dl, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !361
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  store i8 0, ptr %i.do, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc112.i
  invoke void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.v unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i94.i: ; preds = %.noexc.i111.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %.noexc112.i
  %.0.i.i97.i = phi i1 [ false, %bb.s ], [ true, %.noexc112.i ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dr = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dk
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i99.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.dr) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i97.i, label %bb.u, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i99.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i97.i, label %bb.u, label %.body.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i99.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i94.i
  %.pn9.i.i95.i = phi { ptr, i32 } [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i94.i ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i99.i ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98.i ]
  call void @__cxa_free_exception(ptr %i.dj) #24
  br label %.body.i

bb.v:                                             ; preds = %bb.s
  unreachable

.noexc84.i:                                       ; preds = %bb.r
  %i.dt = invoke { i64, ptr } @_ZN6duckdb10StringHeap7AddBlobERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(72) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN6duckdb13BaseValueCopyINS_8string_tEE6AssignINS_15StringValueCopyEEEvRNS_18ColumnDataMetaDataEPhS7_mm.exit86.i unwind label %bb.w

_ZN6duckdb13BaseValueCopyINS_8string_tEE6AssignINS_15StringValueCopyEEEvRNS_18ColumnDataMetaDataEPhS7_mm.exit86.i: ; preds = %.noexc84.i, %bb.q
  %.fca.1.insert.merged.i.i82.i = phi { i64, ptr } [ %i.df, %bb.q ], [ %i.dt, %.noexc84.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.du = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i82.i, 0
  %i.dv = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i82.i, 1
  %i.dw = getelementptr [16 x i8], ptr %.0.i.i, i64 %.065144.i
  %i.dx = getelementptr [16 x i8], ptr %i.dw, i64 %i.da ; 2 uses
  store i64 %i.du, ptr %i.dx, align 8
  %.sroa.4.0..sroa_idx.i83.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.dv, ptr %.sroa.4.0..sroa_idx.i83.i, align 8, !tbaa !43
  br label %bb.an

bb.w:                                             ; preds = %bb.y, %.noexc84.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.x:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.dz = zext i16 %.pre159.i to i64
  %i.ea = add nuw nsw i64 %.065144.i, %i.dz       ; 2 uses
  %.not.i87.i = icmp eq ptr %i.cj, null
  br i1 %.not.i87.i, label %bb.y, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.y:                                             ; preds = %bb.x
  %i.eb = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc126.i unwind label %bb.w ; 11 uses

.noexc126.i:                                      ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 7 uses
  store i32 1, ptr %i.ec, align 8, !tbaa !56, !noalias !844
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 12 ; 2 uses
  store i32 1, ptr %i.ed, align 4, !tbaa !58, !noalias !844
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.eb, align 8, !tbaa !51, !noalias !844
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 3 uses
  store ptr null, ptr %i.ee, align 8, !tbaa !552, !noalias !844
  %i.ef = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #28
          to label %bb.z unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !844 ; 2 uses

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc126.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.eb) #25, !noalias !844
  br label %.body.i

bb.z:                                             ; preds = %.noexc126.i
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !404, !noalias !844
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ef, i8 -1, i64 256, i1 false), !tbaa !103, !noalias !844
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !851
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 2, ptr %i.ec, align 8, !tbaa !3, !noalias !851
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ei = atomicrmw volatile add ptr %i.ec, i32 1 acq_rel, align 4, !noalias !851 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.ej = load atomic i64, ptr %i.ec acquire, align 8, !noalias !851 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.ec, align 8, !tbaa !56, !noalias !851
  store i32 0, ptr %i.ed, align 4, !tbaa !58, !noalias !851
  %i.em = load ptr, ptr %i.eb, align 8, !tbaa !51, !noalias !851
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !851
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #24, !noalias !851, !inline_history !852
  %i.ep = load ptr, ptr %i.eb, align 8, !tbaa !51, !noalias !851
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !851
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #24, !noalias !851, !inline_history !852
  br label %.noexc107.i

bb.ad:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !851
  %.not.i.i.i.i.i123.i = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i.i123.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = add nsw i32 %i.el, -1
  store i32 %i.et, ptr %i.ec, align 8, !tbaa !3, !noalias !851
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124.i

bb.af:                                            ; preds = %bb.ad
  %i.eu = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4, !noalias !851
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i125.i = phi i32 [ %i.el, %bb.ae ], [ %i.eu, %bb.af ]
  %i.ev = icmp eq i32 %.0.i.i.i.i.i.i125.i, 1
  br i1 %i.ev, label %bb.ag, label %.noexc107.i, !prof !60

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #24, !noalias !851
  br label %.noexc107.i

.noexc107.i:                                      ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124.i, %bb.ac
  %.not.i.i.i.i.i103.i = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i.i.i.i.i103.i, label %.noexc89.i, label %bb.ah

bb.ah:                                            ; preds = %.noexc107.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 8 ; 4 uses
  %i.ex = load atomic i64, ptr %i.ew acquire, align 8 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 4294967297
  %i.ez = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ey, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ew, align 8, !tbaa !56
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !58
  %i.fb = load ptr, ptr %.sroa.8.0, align 8, !tbaa !51
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0) #24, !inline_history !853
  %i.fe = load ptr, ptr %.sroa.8.0, align 8, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0) #24, !inline_history !853
  br label %.noexc89.i

bb.aj:                                            ; preds = %bb.ah
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = add nsw i32 %i.ez, -1
  store i32 %i.fi, ptr %i.ew, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ez, %bb.ak ], [ %i.fj, %bb.al ]
  %i.fk = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fk, label %bb.am, label %.noexc89.i, !prof !60

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0) #24
  br label %.noexc89.i

.noexc89.i:                                       ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.am, %.noexc107.i
  %i.fl = load ptr, ptr %i.ee, align 8, !tbaa !404
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %.noexc89.i, %bb.x
  %.sroa.8.4 = phi ptr [ %i.eb, %.noexc89.i ], [ %.sroa.8.0, %bb.x ]
  %i.fm = phi ptr [ %i.fl, %.noexc89.i ], [ %i.cj, %bb.x ] ; 2 uses
  %i.fn = lshr i64 %i.ea, 6
  %i.fo = and i64 %i.ea, 63
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = xor i64 %i.fp, -1
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fn ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !103
  %i.ft = and i64 %i.fs, %i.fq
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !103
  br label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i, %_ZN6duckdb13BaseValueCopyINS_8string_tEE6AssignINS_15StringValueCopyEEEvRNS_18ColumnDataMetaDataEPhS7_mm.exit86.i
  %.sroa.8.2 = phi ptr [ %.sroa.8.0, %_ZN6duckdb13BaseValueCopyINS_8string_tEE6AssignINS_15StringValueCopyEEEvRNS_18ColumnDataMetaDataEPhS7_mm.exit86.i ], [ %.sroa.8.4, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ] ; 2 uses
  %i.fu = phi ptr [ %i.cj, %_ZN6duckdb13BaseValueCopyINS_8string_tEE6AssignINS_15StringValueCopyEEEvRNS_18ColumnDataMetaDataEPhS7_mm.exit86.i ], [ %i.fm, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ]
  %i.fv = add nuw nsw i64 %.065144.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fv, %i.af
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !854

.loopexit.i:                                      ; preds = %bb.an, %bb.o, %.preheader.i, %.preheader141.i
  %.sroa.8.3 = phi ptr [ null, %.preheader.i ], [ null, %bb.o ], [ null, %.preheader141.i ], [ %.sroa.8.2, %bb.an ] ; 9 uses
  %i.fw = load i16, ptr %i.aa, align 8, !tbaa !510
  %i.fx = trunc i64 %i.af to i16
  %i.fy = add i16 %i.fw, %i.fx
  store i16 %i.fy, ptr %i.aa, align 8, !tbaa !510
  %i.fz = add i64 %i.af, %.0150.i
  %i.ga = sub i64 %.069148.i, %i.af               ; 2 uses
  %.not70.i = icmp eq i64 %i.ga, 0                ; 2 uses
  br i1 %.not70.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.loopexit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !561
  %.not140.i = icmp eq i64 %i.gc, -1
  br i1 %.not140.i, label %bb.ap, label %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.gd = load ptr, ptr %i.y, align 8, !tbaa !500, !nonnull !64, !align !94
  %i.ge = invoke range(i64 -164703072086692425, 164703072086692426) i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(82) %i.gd, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 %.sroa.038.0149.i)
          to label %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i unwind label %bb.f ; 0 uses

_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i: ; preds = %bb.ap, %bb.ao
  %i.gf = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %.sroa.038.0149.i)
          to label %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i unwind label %bb.f

_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i: ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %.sroa.038.0.copyload39.i = load i64, ptr %i.gg, align 8, !tbaa !103
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i, %.loopexit.i
  %.sroa.038.1.i = phi i64 [ %.sroa.038.0.copyload39.i, %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i ], [ %.sroa.038.0149.i, %.loopexit.i ]
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.8.3, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.8.3, i64 8 ; 4 uses
  %i.gi = load atomic i64, ptr %i.gh acquire, align 8 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 4294967297
  %i.gk = trunc i64 %i.gi to i32                  ; 2 uses
  br i1 %i.gj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.gh, align 8, !tbaa !56
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.8.3, i64 12
  store i32 0, ptr %i.gl, align 4, !tbaa !58
end_hunk_15
begin_hunk_16_@_ZN6duckdbL14ColumnDataCopyINS_12list_entry_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a

bb.ah:                                            ; preds = %.noexc65
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !155
  %i.ew = load i32, ptr %i.ei, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.ex = zext i32 %i.ew to i64
  store i64 %i.ex, ptr %i.d, align 8, !tbaa !103
  %i.ey = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc66 unwind label %.loopexit

.noexc66:                                         ; preds = %bb.ah
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %.noexc67 unwind label %.loopexit

.noexc67:                                         ; preds = %.noexc66
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !144
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !147
  %i.fd = zext i32 %i.ev to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i: ; preds = %.noexc67, %bb.ag
  %.0.i.i = phi ptr [ %i.et, %bb.ag ], [ %i.fe, %.noexc67 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32768 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.ff, ptr %8, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.ed, align 8, !tbaa !479
  %i.fg = load i16, ptr %i.ej, align 8, !tbaa !510 ; 8 uses
  %i.fh = icmp eq i16 %i.fg, 0
  br i1 %i.fh, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, label %bb.aj

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ff, i8 -1, i64 256, i1 false)
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i, %bb.bi
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.aj:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i
  %i.fj = load ptr, ptr %i.ee, align 8, !tbaa !189
  %.not.i.i62 = icmp eq ptr %i.fj, null
  %.not119.i = icmp eq i64 %i.en, 0               ; 2 uses
  br i1 %.not.i.i62, label %.preheader.i, label %.preheader105.i

.preheader105.i:                                  ; preds = %bb.aj
  br i1 %.not119.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.aj
  br i1 %.not119.i, label %.loopexit.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.preheader.i
  %i.fk = load ptr, ptr %1, align 8, !tbaa !480
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.fl, null
  %i.fm = load ptr, ptr %i.eg, align 8, !tbaa !513 ; 4 uses
  %i.fn = zext i16 %i.fg to i64
  %invariant.gep.i = getelementptr [16 x i8], ptr %.0.i.i, i64 %i.fn ; 6 uses
  br i1 %.not.i72.i, label %.lr.ph110.split.us.preheader.i, label %.lr.ph110.split.preheader.i

.lr.ph110.split.preheader.i:                      ; preds = %.lr.ph110.i
  %invariant.gep140.i = getelementptr [4 x i8], ptr %i.fl, i64 %.0114.i ; 3 uses
  %xtraiter260 = and i64 %i.eo, 1
  %i.fo = icmp eq i64 %i.eo, 1
  br i1 %i.fo, label %.lr.ph110.split.i.epil.preheader, label %.lr.ph110.split.preheader.i.new

.lr.ph110.split.preheader.i.new:                  ; preds = %.lr.ph110.split.preheader.i
  %unroll_iter263 = and i64 %i.eo, 4294967294
  br label %.lr.ph110.split.i

.lr.ph110.split.us.preheader.i:                   ; preds = %.lr.ph110.i
  %invariant.gep142.i = getelementptr [16 x i8], ptr %i.fm, i64 %.0114.i ; 3 uses
  %xtraiter265 = and i64 %i.eo, 1
  %i.fp = icmp eq i64 %i.eo, 1
  br i1 %i.fp, label %.lr.ph110.split.us.i.epil.preheader, label %.lr.ph110.split.us.preheader.i.new

.lr.ph110.split.us.preheader.i.new:               ; preds = %.lr.ph110.split.us.preheader.i
  %unroll_iter268 = and i64 %i.eo, 4294967294
  br label %.lr.ph110.split.us.i

.lr.ph110.split.us.i:                             ; preds = %.lr.ph110.split.us.i, %.lr.ph110.split.us.preheader.i.new
  %.066109.us.i = phi i64 [ 0, %.lr.ph110.split.us.preheader.i.new ], [ %i.ft, %.lr.ph110.split.us.i ] ; 4 uses
  %niter269 = phi i64 [ 0, %.lr.ph110.split.us.preheader.i.new ], [ %niter269.next.1, %.lr.ph110.split.us.i ]
  %gep143.i = getelementptr [16 x i8], ptr %invariant.gep142.i, i64 %.066109.us.i
  %.sroa.2.0..sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %gep143.i, i64 8
  %.sroa.2.0.copyload.i.us.i = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i, align 8, !tbaa !103
  %i.fq = load i64, ptr %i.dw, align 8, !tbaa !541
  %gep.us.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066109.us.i ; 2 uses
  store i64 %i.fq, ptr %gep.us.i, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %gep.us.i, i64 8
  store i64 %.sroa.2.0.copyload.i.us.i, ptr %.sroa.4.0..sroa_idx.i.us.i, align 8, !tbaa !103
  %i.fr = or disjoint i64 %.066109.us.i, 1        ; 2 uses
  %gep143.i.1 = getelementptr [16 x i8], ptr %invariant.gep142.i, i64 %i.fr
  %.sroa.2.0..sroa_idx.i.us.i.1 = getelementptr inbounds nuw i8, ptr %gep143.i.1, i64 8
  %.sroa.2.0.copyload.i.us.i.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i.1, align 8, !tbaa !103
  %i.fs = load i64, ptr %i.dw, align 8, !tbaa !541
  %gep.us.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.fr ; 2 uses
  store i64 %i.fs, ptr %gep.us.i.1, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx.i.us.i.1 = getelementptr inbounds nuw i8, ptr %gep.us.i.1, i64 8
  store i64 %.sroa.2.0.copyload.i.us.i.1, ptr %.sroa.4.0..sroa_idx.i.us.i.1, align 8, !tbaa !103
  %i.ft = add nuw nsw i64 %.066109.us.i, 2        ; 2 uses
  %niter269.next.1 = add i64 %niter269, 2         ; 2 uses
  %niter269.ncmp.1 = icmp eq i64 %niter269.next.1, %unroll_iter268
  br i1 %niter269.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph110.split.us.i, !llvm.loop !888

.lr.ph110.split.i:                                ; preds = %.lr.ph110.split.i, %.lr.ph110.split.preheader.i.new
  %.066109.i = phi i64 [ 0, %.lr.ph110.split.preheader.i.new ], [ %i.gd, %.lr.ph110.split.i ] ; 4 uses
  %niter264 = phi i64 [ 0, %.lr.ph110.split.preheader.i.new ], [ %niter264.next.1, %.lr.ph110.split.i ]
  %gep141.i = getelementptr [4 x i8], ptr %invariant.gep140.i, i64 %.066109.i
  %i.fu = load i32, ptr %gep141.i, align 4, !tbaa !3
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fv
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !103
  %i.fx = load i64, ptr %i.dw, align 8, !tbaa !541
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.066109.i ; 2 uses
  store i64 %i.fx, ptr %gep.i, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !103
  %i.fy = or disjoint i64 %.066109.i, 1           ; 2 uses
  %gep141.i.1 = getelementptr [4 x i8], ptr %invariant.gep140.i, i64 %i.fy
  %i.fz = load i32, ptr %gep141.i.1, align 4, !tbaa !3
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.ga
  %.sroa.2.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.sroa.2.0.copyload.i.i.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.1, align 8, !tbaa !103
  %i.gc = load i64, ptr %i.dw, align 8, !tbaa !541
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.fy ; 2 uses
  store i64 %i.gc, ptr %gep.i.1, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %gep.i.1, i64 8
  store i64 %.sroa.2.0.copyload.i.i.1, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !tbaa !103
  %i.gd = add nuw nsw i64 %.066109.i, 2           ; 2 uses
  %niter264.next.1 = add i64 %niter264, 2         ; 2 uses
  %niter264.ncmp.1 = icmp eq i64 %niter264.next.1, %unroll_iter263
  br i1 %niter264.ncmp.1, label %.loopexit.i.loopexit245.unr-lcssa, label %.lr.ph110.split.i, !llvm.loop !888

.lr.ph.i:                                         ; preds = %.preheader105.i, %bb.bg
  %i.ge = phi ptr [ %i.jm, %bb.bg ], [ %i.ff, %.preheader105.i ] ; 3 uses
  %.065108.i = phi i64 [ %i.jn, %bb.bg ], [ 0, %.preheader105.i ] ; 4 uses
  %i.gf = load ptr, ptr %1, align 8, !tbaa !480
  %i.gg = add i64 %.065108.i, %.0114.i            ; 2 uses
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.gh, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = zext i32 %i.gj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.ak, %.lr.ph.i
  %i.gl = phi i64 [ %i.gk, %bb.ak ], [ %i.gg, %.lr.ph.i ] ; 3 uses
  %i.gm = load ptr, ptr %i.ee, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.gm, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.ej, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.gn = lshr i64 %i.gl, 6
  %i.go = and i64 %i.gl, 63
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gn
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !103
  %i.gr = shl nuw i64 1, %i.go
  %i.gs = and i64 %i.gq, %i.gr
  %.not103.i = icmp eq i64 %i.gs, 0
  %.pre127.i = load i16, ptr %i.ej, align 8, !tbaa !510 ; 2 uses
  br i1 %.not103.i, label %bb.am, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.gt = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre127.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.gu = load ptr, ptr %i.eg, align 8, !tbaa !513
  %i.gv = zext i16 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.gl
  %.sroa.2.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %.sroa.2.0.copyload.i78.i = load i64, ptr %.sroa.2.0..sroa_idx.i77.i, align 8, !tbaa !103
  %i.gx = load i64, ptr %i.dw, align 8, !tbaa !541
  %i.gy = getelementptr [16 x i8], ptr %.0.i.i, i64 %.065108.i
  %i.gz = getelementptr [16 x i8], ptr %i.gy, i64 %i.gv ; 2 uses
  store i64 %i.gx, ptr %i.gz, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx.i79.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %.sroa.2.0.copyload.i78.i, ptr %.sroa.4.0..sroa_idx.i79.i, align 8, !tbaa !103
  br label %bb.bg

bb.al:                                            ; preds = %bb.an
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.hb = zext i16 %.pre127.i to i64
  %i.hc = add nuw nsw i64 %.065108.i, %i.hb       ; 2 uses
  %.not.i80.i = icmp eq ptr %i.ge, null
  br i1 %.not.i80.i, label %bb.an, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.an:                                            ; preds = %bb.am
  %i.hd = load i64, ptr %i.ed, align 8, !tbaa !479
  %i.he = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc95.i unwind label %bb.al ; 11 uses

.noexc95.i:                                       ; preds = %bb.an
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 7 uses
  store i32 1, ptr %i.hf, align 8, !tbaa !56, !noalias !889
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 12 ; 2 uses
  store i32 1, ptr %i.hg, align 4, !tbaa !58, !noalias !889
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.he, align 8, !tbaa !51, !noalias !889
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 4 uses
  store ptr null, ptr %i.hh, align 8, !tbaa !552, !noalias !889
  %i.hi = add i64 %i.hd, 63
  %i.hj = lshr i64 %i.hi, 6                       ; 2 uses
  %i.hk = shl nuw nsw i64 %i.hj, 3                ; 2 uses
  %i.hl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hk) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !889 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc95.i
  store ptr %i.hl, ptr %i.hh, align 8, !tbaa !404, !noalias !889
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hl, i8 -1, i64 %i.hk, i1 false), !tbaa !103, !noalias !889
  br label %bb.ao

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc95.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.he) #25, !noalias !889
  br label %.body.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.hn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !896
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.hn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 2, ptr %i.hf, align 8, !tbaa !3, !noalias !896
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ho = atomicrmw volatile add ptr %i.hf, i32 1 acq_rel, align 4, !noalias !896 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.hp = load atomic i64, ptr %i.hf acquire, align 8, !noalias !896 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 4294967297
  %i.hr = trunc i64 %i.hp to i32                  ; 2 uses
  br i1 %i.hq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  store i32 0, ptr %i.hf, align 8, !tbaa !56, !noalias !896
  store i32 0, ptr %i.hg, align 4, !tbaa !58, !noalias !896
  %i.hs = load ptr, ptr %i.he, align 8, !tbaa !51, !noalias !896
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !896
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #24, !noalias !896, !inline_history !897
  %i.hv = load ptr, ptr %i.he, align 8, !tbaa !51, !noalias !896
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !896
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #24, !noalias !896, !inline_history !897
  br label %.noexc89.i

bb.as:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !896
  %.not.i.i.i.i.i92.i = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i.i.i92.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hz = add nsw i32 %i.hr, -1
  store i32 %i.hz, ptr %i.hf, align 8, !tbaa !3, !noalias !896
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i93.i

bb.au:                                            ; preds = %bb.as
  %i.ia = atomicrmw volatile add ptr %i.hf, i32 -1 acq_rel, align 4, !noalias !896
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i93.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i93.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i94.i = phi i32 [ %i.hr, %bb.at ], [ %i.ia, %bb.au ]
  %i.ib = icmp eq i32 %.0.i.i.i.i.i.i94.i, 1
  br i1 %i.ib, label %bb.av, label %.noexc89.i, !prof !60

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i93.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #24, !noalias !896
  br label %.noexc89.i

.noexc89.i:                                       ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i93.i, %bb.ar
  store ptr %i.hh, ptr %i.ec, align 8, !tbaa !556
  %i.ic = load ptr, ptr %i.ef, align 8, !tbaa !54 ; 8 uses
  store ptr %i.he, ptr %i.ef, align 8, !tbaa !54
  %.not.i.i.i.i.i85.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i.i.i85.i, label %.noexc82.i, label %bb.aw

bb.aw:                                            ; preds = %.noexc89.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ie = load atomic i64, ptr %i.id acquire, align 8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 4294967297
  %i.ig = trunc i64 %i.ie to i32                  ; 2 uses
  br i1 %i.if, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.id, align 8, !tbaa !56
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !58
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !51
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #24, !inline_history !898
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !51
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #24, !inline_history !898
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i64 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i.i.i.i.i64, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ig, %bb.az ], [ %i.iq, %bb.ba ]
  %i.ir = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ir, label %bb.bb, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i, !prof !60

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i: ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ax
  %.pr.i = load ptr, ptr %i.ec, align 8, !tbaa !558 ; 2 uses
  %.not.i91.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i91.i, label %.noexc.i.i, label %.noexc82.i, !prof !559

.noexc.i.i:                                       ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i
  %i.is = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.it, ptr %7, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 49, ptr %i.c, align 8, !tbaa !103
  %i.iu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc98.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc98.i:                                       ; preds = %.noexc.i.i
  store ptr %i.iu, ptr %7, align 8, !tbaa !72
  %i.iv = load i64, ptr %i.c, align 8, !tbaa !103 ; 3 uses
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.iu, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.iw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !361
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iv
  store i8 0, ptr %i.ix, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %.noexc98.i
  invoke void @__cxa_throw(ptr nonnull %i.is, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.bf unwind label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.noexc98.i
  %.0.i.i.i = phi i1 [ false, %bb.bc ], [ true, %.noexc98.i ] ; 2 uses
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ja = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.it
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef %i.ja) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.0.i.i.i, label %bb.be, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.0.i.i.i, label %bb.be, label %.body.i

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.iy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
end_hunk_16
begin_hunk_17_@_ZN6duckdbL14ColumnDataCopyINS_12list_entry_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a

.noexc167:                                        ; preds = %bb.bt
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ls)
          to label %.noexc168 unwind label %.loopexit.split-lp.loopexit

.noexc168:                                        ; preds = %.noexc167
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !144
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !147
  %i.lw = zext i32 %i.lo to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i76

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i76: ; preds = %.noexc168, %bb.bs
  %.0.i.i77 = phi ptr [ %i.lm, %bb.bs ], [ %i.lx, %.noexc168 ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i.i77, i64 32768 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.ly, ptr %6, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.kw, align 8, !tbaa !479
  %i.lz = load i16, ptr %i.lc, align 8, !tbaa !510 ; 8 uses
  %i.ma = icmp eq i16 %i.lz, 0
  br i1 %i.ma, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i164, label %bb.bv

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i164: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ly, i8 -1, i64 256, i1 false)
  br label %bb.bv

bb.bu:                                            ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i99, %bb.cu
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i100

bb.bv:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit.i164, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit.i76
  %i.mc = load ptr, ptr %i.kx, align 8, !tbaa !189
  %.not.i.i78 = icmp eq ptr %i.mc, null
  %.not119.i79 = icmp eq i64 %i.lg, 0             ; 2 uses
  br i1 %.not.i.i78, label %.preheader.i140, label %.preheader105.i80

.preheader105.i80:                                ; preds = %bb.bv
  br i1 %.not119.i79, label %.loopexit.i96, label %.lr.ph.i81

.preheader.i140:                                  ; preds = %bb.bv
  br i1 %.not119.i79, label %.loopexit.i96, label %.lr.ph110.i141

.lr.ph110.i141:                                   ; preds = %.preheader.i140
  %i.md = load ptr, ptr %1, align 8, !tbaa !480
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !489 ; 2 uses
  %.not.i72.i142 = icmp eq ptr %i.me, null
  %i.mf = load ptr, ptr %i.kz, align 8, !tbaa !513 ; 4 uses
  %i.mg = zext i16 %i.lz to i64
  %invariant.gep.i143 = getelementptr [16 x i8], ptr %.0.i.i77, i64 %i.mg ; 6 uses
  br i1 %.not.i72.i142, label %.lr.ph110.split.us.preheader.i154, label %.lr.ph110.split.preheader.i144

.lr.ph110.split.preheader.i144:                   ; preds = %.lr.ph110.i141
  %invariant.gep140.i145 = getelementptr [4 x i8], ptr %i.me, i64 %.0114.i73 ; 3 uses
  %xtraiter = and i64 %i.lh, 1
  %i.mh = icmp eq i64 %i.lh, 1
  br i1 %i.mh, label %.lr.ph110.split.i146.epil.preheader, label %.lr.ph110.split.preheader.i144.new

.lr.ph110.split.preheader.i144.new:               ; preds = %.lr.ph110.split.preheader.i144
  %unroll_iter = and i64 %i.lh, 4294967294
  br label %.lr.ph110.split.i146

.lr.ph110.split.us.preheader.i154:                ; preds = %.lr.ph110.i141
  %invariant.gep142.i155 = getelementptr [16 x i8], ptr %i.mf, i64 %.0114.i73 ; 3 uses
  %xtraiter255 = and i64 %i.lh, 1
  %i.mi = icmp eq i64 %i.lh, 1
  br i1 %i.mi, label %.lr.ph110.split.us.i156.epil.preheader, label %.lr.ph110.split.us.preheader.i154.new

.lr.ph110.split.us.preheader.i154.new:            ; preds = %.lr.ph110.split.us.preheader.i154
  %unroll_iter258 = and i64 %i.lh, 4294967294
  br label %.lr.ph110.split.us.i156

.lr.ph110.split.us.i156:                          ; preds = %.lr.ph110.split.us.i156, %.lr.ph110.split.us.preheader.i154.new
  %.066109.us.i157 = phi i64 [ 0, %.lr.ph110.split.us.preheader.i154.new ], [ %i.mo, %.lr.ph110.split.us.i156 ] ; 4 uses
  %niter259 = phi i64 [ 0, %.lr.ph110.split.us.preheader.i154.new ], [ %niter259.next.1, %.lr.ph110.split.us.i156 ]
  %gep143.i158 = getelementptr [16 x i8], ptr %invariant.gep142.i155, i64 %.066109.us.i157
  %.sroa.2.0..sroa_idx.i.us.i159 = getelementptr inbounds nuw i8, ptr %gep143.i158, i64 8
  %.sroa.2.0.copyload.i.us.i160 = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i159, align 8, !tbaa !103 ; 2 uses
  %i.mj = load i64, ptr %i.dw, align 8, !tbaa !541 ; 2 uses
  %i.mk = add i64 %i.mj, %.sroa.2.0.copyload.i.us.i160
  store i64 %i.mk, ptr %i.dw, align 8, !tbaa !541
  %gep.us.i161 = getelementptr [16 x i8], ptr %invariant.gep.i143, i64 %.066109.us.i157 ; 2 uses
  store i64 %i.mj, ptr %gep.us.i161, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx.i.us.i162 = getelementptr inbounds nuw i8, ptr %gep.us.i161, i64 8
  store i64 %.sroa.2.0.copyload.i.us.i160, ptr %.sroa.4.0..sroa_idx.i.us.i162, align 8, !tbaa !103
  %i.ml = or disjoint i64 %.066109.us.i157, 1     ; 2 uses
  %gep143.i158.1 = getelementptr [16 x i8], ptr %invariant.gep142.i155, i64 %i.ml
  %.sroa.2.0..sroa_idx.i.us.i159.1 = getelementptr inbounds nuw i8, ptr %gep143.i158.1, i64 8
  %.sroa.2.0.copyload.i.us.i160.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i159.1, align 8, !tbaa !103 ; 2 uses
  %i.mm = load i64, ptr %i.dw, align 8, !tbaa !541 ; 2 uses
  %i.mn = add i64 %i.mm, %.sroa.2.0.copyload.i.us.i160.1
  store i64 %i.mn, ptr %i.dw, align 8, !tbaa !541
  %gep.us.i161.1 = getelementptr [16 x i8], ptr %invariant.gep.i143, i64 %i.ml ; 2 uses
  store i64 %i.mm, ptr %gep.us.i161.1, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx.i.us.i162.1 = getelementptr inbounds nuw i8, ptr %gep.us.i161.1, i64 8
  store i64 %.sroa.2.0.copyload.i.us.i160.1, ptr %.sroa.4.0..sroa_idx.i.us.i162.1, align 8, !tbaa !103
  %i.mo = add nuw nsw i64 %.066109.us.i157, 2     ; 2 uses
  %niter259.next.1 = add i64 %niter259, 2         ; 2 uses
  %niter259.ncmp.1 = icmp eq i64 %niter259.next.1, %unroll_iter258
  br i1 %niter259.ncmp.1, label %.loopexit.i96.loopexit.unr-lcssa, label %.lr.ph110.split.us.i156, !llvm.loop !902

.lr.ph110.split.i146:                             ; preds = %.lr.ph110.split.i146, %.lr.ph110.split.preheader.i144.new
  %.066109.i147 = phi i64 [ 0, %.lr.ph110.split.preheader.i144.new ], [ %i.na, %.lr.ph110.split.i146 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph110.split.preheader.i144.new ], [ %niter.next.1, %.lr.ph110.split.i146 ]
  %gep141.i148 = getelementptr [4 x i8], ptr %invariant.gep140.i145, i64 %.066109.i147
  %i.mp = load i32, ptr %gep141.i148, align 4, !tbaa !3
  %i.mq = zext i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.mf, i64 %i.mq
  %.sroa.2.0..sroa_idx.i.i149 = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %.sroa.2.0.copyload.i.i150 = load i64, ptr %.sroa.2.0..sroa_idx.i.i149, align 8, !tbaa !103 ; 2 uses
  %i.ms = load i64, ptr %i.dw, align 8, !tbaa !541 ; 2 uses
  %i.mt = add i64 %i.ms, %.sroa.2.0.copyload.i.i150
  store i64 %i.mt, ptr %i.dw, align 8, !tbaa !541
  %gep.i151 = getelementptr [16 x i8], ptr %invariant.gep.i143, i64 %.066109.i147 ; 2 uses
  store i64 %i.ms, ptr %gep.i151, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx.i.i152 = getelementptr inbounds nuw i8, ptr %gep.i151, i64 8
  store i64 %.sroa.2.0.copyload.i.i150, ptr %.sroa.4.0..sroa_idx.i.i152, align 8, !tbaa !103
  %i.mu = or disjoint i64 %.066109.i147, 1        ; 2 uses
  %gep141.i148.1 = getelementptr [4 x i8], ptr %invariant.gep140.i145, i64 %i.mu
  %i.mv = load i32, ptr %gep141.i148.1, align 4, !tbaa !3
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %i.mf, i64 %i.mw
  %.sroa.2.0..sroa_idx.i.i149.1 = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %.sroa.2.0.copyload.i.i150.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.i149.1, align 8, !tbaa !103 ; 2 uses
  %i.my = load i64, ptr %i.dw, align 8, !tbaa !541 ; 2 uses
  %i.mz = add i64 %i.my, %.sroa.2.0.copyload.i.i150.1
  store i64 %i.mz, ptr %i.dw, align 8, !tbaa !541
  %gep.i151.1 = getelementptr [16 x i8], ptr %invariant.gep.i143, i64 %i.mu ; 2 uses
  store i64 %i.my, ptr %gep.i151.1, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx.i.i152.1 = getelementptr inbounds nuw i8, ptr %gep.i151.1, i64 8
  store i64 %.sroa.2.0.copyload.i.i150.1, ptr %.sroa.4.0..sroa_idx.i.i152.1, align 8, !tbaa !103
  %i.na = add nuw nsw i64 %.066109.i147, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i96.loopexit247.unr-lcssa, label %.lr.ph110.split.i146, !llvm.loop !902

.lr.ph.i81:                                       ; preds = %.preheader105.i80, %bb.cs
  %i.nb = phi ptr [ %i.qk, %bb.cs ], [ %i.ly, %.preheader105.i80 ] ; 3 uses
  %.065108.i82 = phi i64 [ %i.ql, %bb.cs ], [ 0, %.preheader105.i80 ] ; 4 uses
  %i.nc = load ptr, ptr %1, align 8, !tbaa !480
  %i.nd = add i64 %.065108.i82, %.0114.i73        ; 2 uses
  %i.ne = load ptr, ptr %i.nc, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i83 = icmp eq ptr %i.ne, null
  br i1 %.not.i73.i83, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i84, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i81
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.nd
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !3
  %i.nh = zext i32 %i.ng to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i84

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i84: ; preds = %bb.bw, %.lr.ph.i81
  %i.ni = phi i64 [ %i.nh, %bb.bw ], [ %i.nd, %.lr.ph.i81 ] ; 3 uses
  %i.nj = load ptr, ptr %i.kx, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i85 = icmp eq ptr %i.nj, null
  br i1 %.not.i75.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i138, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i86

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i138: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i84
  %.pre.i139 = load i16, ptr %i.lc, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i89

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i86: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i84
  %i.nk = lshr i64 %i.ni, 6
  %i.nl = and i64 %i.ni, 63
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nk
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !103
  %i.no = shl nuw i64 1, %i.nl
  %i.np = and i64 %i.nn, %i.no
  %.not103.i87 = icmp eq i64 %i.np, 0
  %.pre127.i88 = load i16, ptr %i.lc, align 8, !tbaa !510 ; 2 uses
  br i1 %.not103.i87, label %bb.by, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i89

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i89: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i86, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i138
  %i.nq = phi i16 [ %.pre.i139, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i138 ], [ %.pre127.i88, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i86 ]
  %i.nr = load ptr, ptr %i.kz, align 8, !tbaa !513
  %i.ns = zext i16 %i.nq to i64
  %i.nt = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %i.ni
  %.sroa.2.0..sroa_idx.i77.i90 = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %.sroa.2.0.copyload.i78.i91 = load i64, ptr %.sroa.2.0..sroa_idx.i77.i90, align 8, !tbaa !103 ; 2 uses
  %i.nu = load i64, ptr %i.dw, align 8, !tbaa !541 ; 2 uses
  %i.nv = add i64 %i.nu, %.sroa.2.0.copyload.i78.i91
  store i64 %i.nv, ptr %i.dw, align 8, !tbaa !541
  %i.nw = getelementptr [16 x i8], ptr %.0.i.i77, i64 %.065108.i82
  %i.nx = getelementptr [16 x i8], ptr %i.nw, i64 %i.ns ; 2 uses
  store i64 %i.nu, ptr %i.nx, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx.i79.i92 = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store i64 %.sroa.2.0.copyload.i78.i91, ptr %.sroa.4.0..sroa_idx.i79.i92, align 8, !tbaa !103
  br label %bb.cs

bb.bx:                                            ; preds = %bb.bz
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.body.i100

bb.by:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i86
  %i.nz = zext i16 %.pre127.i88 to i64
  %i.oa = add nuw nsw i64 %.065108.i82, %i.nz     ; 2 uses
  %.not.i80.i110 = icmp eq ptr %i.nb, null
  br i1 %.not.i80.i110, label %bb.bz, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i111

bb.bz:                                            ; preds = %bb.by
  %i.ob = load i64, ptr %i.kw, align 8, !tbaa !479
  %i.oc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc95.i112 unwind label %bb.bx ; 11 uses

.noexc95.i112:                                    ; preds = %bb.bz
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 7 uses
  store i32 1, ptr %i.od, align 8, !tbaa !56, !noalias !903
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 12 ; 2 uses
  store i32 1, ptr %i.oe, align 4, !tbaa !58, !noalias !903
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.oc, align 8, !tbaa !51, !noalias !903
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 4 uses
  store ptr null, ptr %i.of, align 8, !tbaa !552, !noalias !903
  %i.og = add i64 %i.ob, 63
  %i.oh = lshr i64 %i.og, 6                       ; 2 uses
  %i.oi = shl nuw nsw i64 %i.oh, 3                ; 2 uses
  %i.oj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oi) #28
          to label %.noexc.i.i.i.i.i.i.i114 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i113, !noalias !903 ; 2 uses

.noexc.i.i.i.i.i.i.i114:                          ; preds = %.noexc95.i112
  store ptr %i.oj, ptr %i.of, align 8, !tbaa !404, !noalias !903
  %.not.i.i.i.i.i.i.i.i.i.i115 = icmp eq i64 %i.oh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i115, label %bb.ca, label %.lr.ph.i.i.i.i.i.i.i.i.i.i116

.lr.ph.i.i.i.i.i.i.i.i.i.i116:                    ; preds = %.noexc.i.i.i.i.i.i.i114
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.oj, i8 -1, i64 %i.oi, i1 false), !tbaa !103, !noalias !903
  br label %bb.ca

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i113: ; preds = %.noexc95.i112
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.oc) #25, !noalias !903
  br label %.body.i100

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i116, %.noexc.i.i.i.i.i.i.i114
  %i.ol = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !910
  %.not.i.i.i.i.i.i.i.i117 = icmp eq i8 %i.ol, 0
  br i1 %.not.i.i.i.i.i.i.i.i117, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 2, ptr %i.od, align 8, !tbaa !3, !noalias !910
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i118

bb.cc:                                            ; preds = %bb.ca
  %i.om = atomicrmw volatile add ptr %i.od, i32 1 acq_rel, align 4, !noalias !910 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i118

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i118: ; preds = %bb.cc, %bb.cb
  %i.on = load atomic i64, ptr %i.od acquire, align 8, !noalias !910 ; 2 uses
  %i.oo = icmp eq i64 %i.on, 4294967297
  %i.op = trunc i64 %i.on to i32                  ; 2 uses
  br i1 %i.oo, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i118
  store i32 0, ptr %i.od, align 8, !tbaa !56, !noalias !910
  store i32 0, ptr %i.oe, align 4, !tbaa !58, !noalias !910
  %i.oq = load ptr, ptr %i.oc, align 8, !tbaa !51, !noalias !910
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8, !noalias !910
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #24, !noalias !910, !inline_history !911
  %i.ot = load ptr, ptr %i.oc, align 8, !tbaa !51, !noalias !910
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !noalias !910
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #24, !noalias !910, !inline_history !911
  br label %.noexc89.i122

bb.ce:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i.i.i118
  %i.ow = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !910
  %.not.i.i.i.i.i92.i119 = icmp eq i8 %i.ow, 0
  br i1 %.not.i.i.i.i.i92.i119, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ox = add nsw i32 %i.op, -1
  store i32 %i.ox, ptr %i.od, align 8, !tbaa !3, !noalias !910
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i93.i120

bb.cg:                                            ; preds = %bb.ce
  %i.oy = atomicrmw volatile add ptr %i.od, i32 -1 acq_rel, align 4, !noalias !910
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i93.i120

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i93.i120: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i.i94.i121 = phi i32 [ %i.op, %bb.cf ], [ %i.oy, %bb.cg ]
  %i.oz = icmp eq i32 %.0.i.i.i.i.i.i94.i121, 1
  br i1 %i.oz, label %bb.ch, label %.noexc89.i122, !prof !60

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i93.i120
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #24, !noalias !910
  br label %.noexc89.i122

.noexc89.i122:                                    ; preds = %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i93.i120, %bb.cd
  store ptr %i.of, ptr %i.kv, align 8, !tbaa !556
  %i.pa = load ptr, ptr %i.ky, align 8, !tbaa !54 ; 8 uses
  store ptr %i.oc, ptr %i.ky, align 8, !tbaa !54
  %.not.i.i.i.i.i85.i123 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i.i.i85.i123, label %.noexc82.i130, label %bb.ci

bb.ci:                                            ; preds = %.noexc89.i122
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 4 uses
  %i.pc = load atomic i64, ptr %i.pb acquire, align 8 ; 2 uses
  %i.pd = icmp eq i64 %i.pc, 4294967297
  %i.pe = trunc i64 %i.pc to i32                  ; 2 uses
  br i1 %i.pd, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.pb, align 8, !tbaa !56
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  store i32 0, ptr %i.pf, align 4, !tbaa !58
  %i.pg = load ptr, ptr %i.pa, align 8, !tbaa !51
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #24, !inline_history !912
  %i.pj = load ptr, ptr %i.pa, align 8, !tbaa !51
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8
  call void %i.pl(ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #24, !inline_history !912
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i127

bb.ck:                                            ; preds = %bb.ci
  %i.pm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i124 = icmp eq i8 %i.pm, 0
  br i1 %.not.i.i.i.i.i.i.i124, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pn = add nsw i32 %i.pe, -1
  store i32 %i.pn, ptr %i.pb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i125

bb.cm:                                            ; preds = %bb.ck
  %i.po = atomicrmw volatile add ptr %i.pb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i125

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i125: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i.i126 = phi i32 [ %i.pe, %bb.cl ], [ %i.po, %bb.cm ]
  %i.pp = icmp eq i32 %.0.i.i.i.i.i.i.i.i126, 1
  br i1 %i.pp, label %bb.cn, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i127, !prof !60

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i125
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #24
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i127

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i127: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i125, %bb.cj
  %.pr.i128 = load ptr, ptr %i.kv, align 8, !tbaa !558 ; 2 uses
  %.not.i91.i129 = icmp eq ptr %.pr.i128, null
  br i1 %.not.i91.i129, label %.noexc.i.i131, label %.noexc82.i130, !prof !559

.noexc.i.i131:                                    ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit.i.i127
  %i.pq = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.pr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.pr, ptr %5, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.ps = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc98.i134 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i132 ; 3 uses

.noexc98.i134:                                    ; preds = %.noexc.i.i131
  store ptr %i.ps, ptr %5, align 8, !tbaa !72
  %i.pt = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.pt, ptr %i.pr, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ps, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.pu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.pt, ptr %i.pu, align 8, !tbaa !361
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pt
  store i8 0, ptr %i.pv, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.pq, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %.noexc98.i134
  invoke void @__cxa_throw(ptr nonnull %i.pq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.cr unwind label %bb.cp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i132: ; preds = %.noexc.i.i131
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co, %.noexc98.i134
  %.0.i.i.i135 = phi i1 [ false, %bb.co ], [ true, %.noexc98.i134 ] ; 2 uses
  %i.px = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.py = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.pr
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %bb.cp
  call void @_ZdlPv(ptr noundef %i.py) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i135, label %bb.cq, label %.body.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i137: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i135, label %bb.cq, label %.body.i100

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i132
  %.pn9.i.i.i133 = phi { ptr, i32 } [ %i.pw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i132 ], [ %i.px, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i137 ], [ %i.px, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136 ]
end_hunk_17
