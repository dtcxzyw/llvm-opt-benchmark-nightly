inline.NumInlined: 5543
inline.NumDeleted: 2531
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN6duckdbL14ColumnDataCopyIlEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  %.not101.i = icmp eq i64 %i.gi, -1
  br i1 %.not101.i, label %bb.ae, label %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !500, !nonnull !64, !align !94
  %i.gk = invoke range(i64 -164703072086692425, 164703072086692426) i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(82) %i.gj, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 %.sroa.038.0110.i)
          to label %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i unwind label %bb.e ; 0 uses

_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i: ; preds = %bb.ae, %bb.ad
  %i.gl = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.038.0110.i)
          to label %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i unwind label %bb.e

_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i: ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %.sroa.038.0.copyload39.i = load i64, ptr %i.gm, align 8, !tbaa !103
  br label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i, %.loopexit.i
  %.sroa.038.1.i = phi i64 [ %.sroa.038.0.copyload39.i, %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i ], [ %.sroa.038.0110.i, %.loopexit.i ]
  %i.gn = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %i.gp = load atomic i64, ptr %i.go acquire, align 8 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 4294967297
  %i.gr = trunc i64 %i.gp to i32                  ; 2 uses
  br i1 %i.gq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.go, align 8, !tbaa !56
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 0, ptr %i.gs, align 4, !tbaa !58
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #24, !inline_history !676
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #24, !inline_history !676
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ha = add nsw i32 %i.gr, -1
  store i32 %i.ha, ptr %i.go, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.hb = atomicrmw volatile add ptr %i.go, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gr, %bb.aj ], [ %i.hb, %bb.ak ]
  %i.hc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.hc, label %bb.al, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, !prof !60

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #24
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i:  ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.not70.i, label %_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyIlEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit, label %bb.b, !llvm.loop !677

.body.i:                                          ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, %bb.h, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ap, %bb.e ], [ %i.dv, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %i.dj, %bb.h ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.aa ]
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn.i

_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyIlEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL14ColumnDataCopyINS_9hugeint_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not112.i, label %_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyINS_9hugeint_tEEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %bb.a
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

bb.b:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %.lr.ph118.i
  %.0115.i = phi i64 [ %3, %.lr.ph118.i ], [ %i.fz, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 5 uses
  %.sroa.038.0114.i = phi i64 [ %.sroa.038.0.copyload.i, %.lr.ph118.i ], [ %.sroa.038.1.i, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 4 uses
  %.065113.i = phi i64 [ %4, %.lr.ph118.i ], [ %i.ga, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 2 uses
  %i.p = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.038.0114.i) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !510
  %i.s = zext i16 %i.r to i64
  %i.t = sub nsw i64 2048, %i.s
  %i.u = and i64 %i.t, 4294967295                 ; 2 uses
  %i.v = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.065113.i) ; 17 uses
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
  %.0.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.al, %bb.d ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32768 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.am, ptr %6, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.j, align 8, !tbaa !479
  %i.an = load i16, ptr %i.q, align 8, !tbaa !510 ; 9 uses
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
  %.not120.i = icmp eq i64 %i.u, 0                ; 2 uses
  br i1 %.not.i.i, label %.preheader.i, label %.preheader106.i

.preheader106.i:                                  ; preds = %bb.f
  br i1 %.not120.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
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
  %min.iters.check = icmp samesign ult i64 %i.v, 44
  br i1 %min.iters.check, label %.lr.ph111.split.us.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph111.split.us.preheader.i
  %i.aw = add nsw i64 %i.v, -1                    ; 3 uses
  %mul.result = shl nsw i64 %i.aw, 4
  %7 = getelementptr i8, ptr %invariant.gep.i, i64 %mul.result
  %8 = icmp ult ptr %7, %invariant.gep.i
  %mul.result22 = shl nsw i64 %i.aw, 4
  %mul.overflow23 = icmp ugt i64 %i.aw, 1152921504606846975
  %i.ax = getelementptr i8, ptr %invariant.gep143.i, i64 %mul.result22
  %i.ay = icmp ult ptr %i.ax, %invariant.gep143.i
  %i.az = or i1 %i.ay, %mul.overflow23
  %i.ba = or i1 %8, %i.az
  br i1 %i.ba, label %.lr.ph111.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bb = add nuw nsw i64 %i.v, %i.au
  %i.bc = shl nuw nsw i64 %i.bb, 4
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %i.bc
  %i.bd = add i64 %.0115.i, %i.v
  %i.be = shl i64 %i.bd, 4
  %scevgep24 = getelementptr i8, ptr %i.at, i64 %i.be
  %bound0 = icmp ult ptr %invariant.gep.i, %scevgep24
  %bound1 = icmp ult ptr %invariant.gep143.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph111.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967294               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bf = or disjoint i64 %index, 1               ; 2 uses
  %i.bg = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %index
  %i.bh = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bf
  %wide.load = load <2 x i64>, ptr %i.bg, align 8, !tbaa !103, !alias.scope !678
  %wide.load25 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !103, !alias.scope !678
  %i.bi = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %index
  %i.bj = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bf
  store <2 x i64> %wide.load, ptr %i.bi, align 8, !tbaa !103, !alias.scope !681, !noalias !678
  store <2 x i64> %wide.load25, ptr %i.bj, align 8, !tbaa !103, !alias.scope !681, !noalias !678
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !683

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph111.split.us.i.preheader

.lr.ph111.split.us.i.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph111.split.us.preheader.i, %middle.block
  %.069110.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph111.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.bl = sub nsw i64 %i.v, %.069110.us.i.ph
  %xtraiter29 = and i64 %i.bl, 3                  ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph111.split.us.i.prol.loopexit, label %.lr.ph111.split.us.i.prol

.lr.ph111.split.us.i.prol:                        ; preds = %.lr.ph111.split.us.i.preheader, %.lr.ph111.split.us.i.prol
  %.069110.us.i.prol = phi i64 [ %i.bn, %.lr.ph111.split.us.i.prol ], [ %.069110.us.i.ph, %.lr.ph111.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph111.split.us.i.prol ], [ 0, %.lr.ph111.split.us.i.preheader ]
  %gep144.i.prol = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %.069110.us.i.prol
  %gep.us.i.prol = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.069110.us.i.prol
  %i.bm = load <2 x i64>, ptr %gep144.i.prol, align 8, !tbaa !103
  store <2 x i64> %i.bm, ptr %gep.us.i.prol, align 8, !tbaa !103
  %i.bn = add nuw nsw i64 %.069110.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph111.split.us.i.prol.loopexit, label %.lr.ph111.split.us.i.prol, !llvm.loop !684

.lr.ph111.split.us.i.prol.loopexit:               ; preds = %.lr.ph111.split.us.i.prol, %.lr.ph111.split.us.i.preheader
  %.069110.us.i.unr = phi i64 [ %.069110.us.i.ph, %.lr.ph111.split.us.i.preheader ], [ %i.bn, %.lr.ph111.split.us.i.prol ]
  %i.bo = sub nsw i64 %.069110.us.i.ph, %i.v
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.loopexit.i, label %.lr.ph111.split.us.i

.lr.ph111.split.us.i:                             ; preds = %.lr.ph111.split.us.i.prol.loopexit, %.lr.ph111.split.us.i
  %.069110.us.i = phi i64 [ %i.bx, %.lr.ph111.split.us.i ], [ %.069110.us.i.unr, %.lr.ph111.split.us.i.prol.loopexit ] ; 6 uses
  %gep144.i = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %.069110.us.i
  %gep.us.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.069110.us.i
  %i.bq = load <2 x i64>, ptr %gep144.i, align 8, !tbaa !103
  store <2 x i64> %i.bq, ptr %gep.us.i, align 8, !tbaa !103
  %i.br = add nuw nsw i64 %.069110.us.i, 1        ; 2 uses
  %gep144.i.1 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.br
  %gep.us.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.br
  %i.bs = load <2 x i64>, ptr %gep144.i.1, align 8, !tbaa !103
  store <2 x i64> %i.bs, ptr %gep.us.i.1, align 8, !tbaa !103
  %i.bt = add nuw nsw i64 %.069110.us.i, 2        ; 2 uses
  %gep144.i.2 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bt
  %gep.us.i.2 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bt
  %i.bu = load <2 x i64>, ptr %gep144.i.2, align 8, !tbaa !103
  store <2 x i64> %i.bu, ptr %gep.us.i.2, align 8, !tbaa !103
  %i.bv = add nuw nsw i64 %.069110.us.i, 3        ; 2 uses
  %gep144.i.3 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bv
  %gep.us.i.3 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bv
  %i.bw = load <2 x i64>, ptr %gep144.i.3, align 8, !tbaa !103
  store <2 x i64> %i.bw, ptr %gep.us.i.3, align 8, !tbaa !103
  %i.bx = add nuw nsw i64 %.069110.us.i, 4        ; 2 uses
  %exitcond127.not.i.3 = icmp eq i64 %i.bx, %i.v
  br i1 %exitcond127.not.i.3, label %.loopexit.i, label %.lr.ph111.split.us.i, !llvm.loop !685

.lr.ph111.split.i:                                ; preds = %.lr.ph111.split.i, %.lr.ph111.split.preheader.i.new
  %.069110.i = phi i64 [ 0, %.lr.ph111.split.preheader.i.new ], [ %i.ch, %.lr.ph111.split.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph111.split.preheader.i.new ], [ %niter.next.1, %.lr.ph111.split.i ]
  %gep142.i = getelementptr [4 x i8], ptr %invariant.gep141.i, i64 %.069110.i
  %i.by = load i32, ptr %gep142.i, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.bz
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.069110.i
  %i.cb = load <2 x i64>, ptr %i.ca, align 8, !tbaa !103
  store <2 x i64> %i.cb, ptr %gep.i, align 8, !tbaa !103
  %i.cc = or disjoint i64 %.069110.i, 1           ; 2 uses
  %gep142.i.1 = getelementptr [4 x i8], ptr %invariant.gep141.i, i64 %i.cc
  %i.cd = load i32, ptr %gep142.i.1, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ce
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.cc
  %i.cg = load <2 x i64>, ptr %i.cf, align 8, !tbaa !103
  store <2 x i64> %i.cg, ptr %gep.i.1, align 8, !tbaa !103
  %i.ch = add nuw nsw i64 %.069110.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit26.unr-lcssa, label %.lr.ph111.split.i, !llvm.loop !686

.lr.ph.i:                                         ; preds = %.preheader106.i, %bb.ac
  %i.ci = phi ptr [ %i.fq, %bb.ac ], [ %i.am, %.preheader106.i ] ; 3 uses
  %.067109.i = phi i64 [ %i.fr, %bb.ac ], [ 0, %.preheader106.i ] ; 4 uses
  %i.cj = load ptr, ptr %1, align 8, !tbaa !480
  %i.ck = add i64 %.067109.i, %.0115.i            ; 2 uses
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cl, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cp = phi i64 [ %i.co, %bb.g ], [ %i.ck, %.lr.ph.i ] ; 3 uses
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cq, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cr = lshr i64 %i.cp, 6
  %i.cs = and i64 %i.cp, 63
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !103
  %i.cv = shl nuw i64 1, %i.cs
  %i.cw = and i64 %i.cu, %i.cv
  %.not104.i = icmp eq i64 %i.cw, 0
  %.pre128.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not104.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.cx = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre128.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.cz = zext i16 %i.cx to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cp
  %i.db = getelementptr [16 x i8], ptr %.0.i.i, i64 %.067109.i
  %i.dc = getelementptr [16 x i8], ptr %i.db, i64 %i.cz
  %i.dd = load <2 x i64>, ptr %i.da, align 8, !tbaa !103
  store <2 x i64> %i.dd, ptr %i.dc, align 8, !tbaa !103
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.df = zext i16 %.pre128.i to i64
  %i.dg = add nuw i64 %.067109.i, %i.df           ; 2 uses
  %.not.i81.i = icmp eq ptr %i.ci, null
  br i1 %.not.i81.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dh = load i64, ptr %i.j, align 8, !tbaa !479
  %i.di = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc96.i unwind label %bb.h ; 11 uses

.noexc96.i:                                       ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 7 uses
  store i32 1, ptr %i.dj, align 8, !tbaa !56, !noalias !687
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  store i32 1, ptr %i.dk, align 4, !tbaa !58, !noalias !687
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.di, align 8, !tbaa !51, !noalias !687
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 4 uses
  store ptr null, ptr %i.dl, align 8, !tbaa !552, !noalias !687
  %i.dm = add i64 %i.dh, 63
  %i.dn = lshr i64 %i.dm, 6                       ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 3                ; 2 uses
  %i.dp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.do) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !687 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc96.i
  store ptr %i.dp, ptr %i.dl, align 8, !tbaa !404, !noalias !687
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dp, i8 -1, i64 %i.do, i1 false), !tbaa !103, !noalias !687
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc96.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN6duckdbL14ColumnDataCopyImEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  %.not101.i = icmp eq i64 %i.gi, -1
  br i1 %.not101.i, label %bb.ae, label %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !500, !nonnull !64, !align !94
  %i.gk = invoke range(i64 -164703072086692425, 164703072086692426) i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(82) %i.gj, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 %.sroa.038.0110.i)
          to label %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i unwind label %bb.e ; 0 uses

_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i: ; preds = %bb.ae, %bb.ad
  %i.gl = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.038.0110.i)
          to label %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i unwind label %bb.e

_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i: ; preds = %_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %.sroa.038.0.copyload39.i = load i64, ptr %i.gm, align 8, !tbaa !103
  br label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i, %.loopexit.i
  %.sroa.038.1.i = phi i64 [ %.sroa.038.0.copyload39.i, %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit.i ], [ %.sroa.038.0110.i, %.loopexit.i ]
  %i.gn = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %i.gp = load atomic i64, ptr %i.go acquire, align 8 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 4294967297
  %i.gr = trunc i64 %i.gp to i32                  ; 2 uses
  br i1 %i.gq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.go, align 8, !tbaa !56
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 0, ptr %i.gs, align 4, !tbaa !58
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #24, !inline_history !764
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #24, !inline_history !764
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ha = add nsw i32 %i.gr, -1
  store i32 %i.ha, ptr %i.go, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.hb = atomicrmw volatile add ptr %i.go, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gr, %bb.aj ], [ %i.hb, %bb.ak ]
  %i.hc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.hc, label %bb.al, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, !prof !60

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #24
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i:  ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.not70.i, label %_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyImEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit, label %bb.b, !llvm.loop !765

.body.i:                                          ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, %bb.h, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ap, %bb.e ], [ %i.dv, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i ], [ %i.dj, %bb.h ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn9.i.i.i, %bb.aa ]
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn.i

_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyImEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL14ColumnDataCopyINS_10uhugeint_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not112.i, label %_ZN6duckdbL23TemplatedColumnDataCopyINS_17StandardValueCopyINS_10uhugeint_tEEEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %bb.a
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

bb.b:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %.lr.ph118.i
  %.0115.i = phi i64 [ %3, %.lr.ph118.i ], [ %i.fz, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 5 uses
  %.sroa.038.0114.i = phi i64 [ %.sroa.038.0.copyload.i, %.lr.ph118.i ], [ %.sroa.038.1.i, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 4 uses
  %.065113.i = phi i64 [ %4, %.lr.ph118.i ], [ %i.ga, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i ] ; 2 uses
  %i.p = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.038.0114.i) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !510
  %i.s = zext i16 %i.r to i64
  %i.t = sub nsw i64 2048, %i.s
  %i.u = and i64 %i.t, 4294967295                 ; 2 uses
  %i.v = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.065113.i) ; 17 uses
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
  %.0.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.al, %bb.d ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32768 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.am, ptr %6, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.j, align 8, !tbaa !479
  %i.an = load i16, ptr %i.q, align 8, !tbaa !510 ; 9 uses
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
  %.not120.i = icmp eq i64 %i.u, 0                ; 2 uses
  br i1 %.not.i.i, label %.preheader.i, label %.preheader106.i

.preheader106.i:                                  ; preds = %bb.f
  br i1 %.not120.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.f
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
  %min.iters.check = icmp samesign ult i64 %i.v, 44
  br i1 %min.iters.check, label %.lr.ph111.split.us.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph111.split.us.preheader.i
  %i.aw = add nsw i64 %i.v, -1                    ; 3 uses
  %mul.result = shl nsw i64 %i.aw, 4
  %7 = getelementptr i8, ptr %invariant.gep.i, i64 %mul.result
  %8 = icmp ult ptr %7, %invariant.gep.i
  %mul.result22 = shl nsw i64 %i.aw, 4
  %mul.overflow23 = icmp ugt i64 %i.aw, 1152921504606846975
  %i.ax = getelementptr i8, ptr %invariant.gep143.i, i64 %mul.result22
  %i.ay = icmp ult ptr %i.ax, %invariant.gep143.i
  %i.az = or i1 %i.ay, %mul.overflow23
  %i.ba = or i1 %8, %i.az
  br i1 %i.ba, label %.lr.ph111.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bb = add nuw nsw i64 %i.v, %i.au
  %i.bc = shl nuw nsw i64 %i.bb, 4
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %i.bc
  %i.bd = add i64 %.0115.i, %i.v
  %i.be = shl i64 %i.bd, 4
  %scevgep24 = getelementptr i8, ptr %i.at, i64 %i.be
  %bound0 = icmp ult ptr %invariant.gep.i, %scevgep24
  %bound1 = icmp ult ptr %invariant.gep143.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph111.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4294967294               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bf = or disjoint i64 %index, 1               ; 2 uses
  %i.bg = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %index
  %i.bh = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bf
  %wide.load = load <2 x i64>, ptr %i.bg, align 8, !tbaa !103, !alias.scope !766
  %wide.load25 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !103, !alias.scope !766
  %i.bi = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %index
  %i.bj = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bf
  store <2 x i64> %wide.load, ptr %i.bi, align 8, !tbaa !103, !alias.scope !769, !noalias !766
  store <2 x i64> %wide.load25, ptr %i.bj, align 8, !tbaa !103, !alias.scope !769, !noalias !766
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph111.split.us.i.preheader

.lr.ph111.split.us.i.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph111.split.us.preheader.i, %middle.block
  %.069110.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph111.split.us.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.bl = sub nsw i64 %i.v, %.069110.us.i.ph
  %xtraiter29 = and i64 %i.bl, 3                  ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph111.split.us.i.prol.loopexit, label %.lr.ph111.split.us.i.prol

.lr.ph111.split.us.i.prol:                        ; preds = %.lr.ph111.split.us.i.preheader, %.lr.ph111.split.us.i.prol
  %.069110.us.i.prol = phi i64 [ %i.bn, %.lr.ph111.split.us.i.prol ], [ %.069110.us.i.ph, %.lr.ph111.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph111.split.us.i.prol ], [ 0, %.lr.ph111.split.us.i.preheader ]
  %gep144.i.prol = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %.069110.us.i.prol
  %gep.us.i.prol = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.069110.us.i.prol
  %i.bm = load <2 x i64>, ptr %gep144.i.prol, align 8, !tbaa !103
  store <2 x i64> %i.bm, ptr %gep.us.i.prol, align 8, !tbaa !103
  %i.bn = add nuw nsw i64 %.069110.us.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph111.split.us.i.prol.loopexit, label %.lr.ph111.split.us.i.prol, !llvm.loop !772

.lr.ph111.split.us.i.prol.loopexit:               ; preds = %.lr.ph111.split.us.i.prol, %.lr.ph111.split.us.i.preheader
  %.069110.us.i.unr = phi i64 [ %.069110.us.i.ph, %.lr.ph111.split.us.i.preheader ], [ %i.bn, %.lr.ph111.split.us.i.prol ]
  %i.bo = sub nsw i64 %.069110.us.i.ph, %i.v
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.loopexit.i, label %.lr.ph111.split.us.i

.lr.ph111.split.us.i:                             ; preds = %.lr.ph111.split.us.i.prol.loopexit, %.lr.ph111.split.us.i
  %.069110.us.i = phi i64 [ %i.bx, %.lr.ph111.split.us.i ], [ %.069110.us.i.unr, %.lr.ph111.split.us.i.prol.loopexit ] ; 6 uses
  %gep144.i = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %.069110.us.i
  %gep.us.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.069110.us.i
  %i.bq = load <2 x i64>, ptr %gep144.i, align 8, !tbaa !103
  store <2 x i64> %i.bq, ptr %gep.us.i, align 8, !tbaa !103
  %i.br = add nuw nsw i64 %.069110.us.i, 1        ; 2 uses
  %gep144.i.1 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.br
  %gep.us.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.br
  %i.bs = load <2 x i64>, ptr %gep144.i.1, align 8, !tbaa !103
  store <2 x i64> %i.bs, ptr %gep.us.i.1, align 8, !tbaa !103
  %i.bt = add nuw nsw i64 %.069110.us.i, 2        ; 2 uses
  %gep144.i.2 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bt
  %gep.us.i.2 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bt
  %i.bu = load <2 x i64>, ptr %gep144.i.2, align 8, !tbaa !103
  store <2 x i64> %i.bu, ptr %gep.us.i.2, align 8, !tbaa !103
  %i.bv = add nuw nsw i64 %.069110.us.i, 3        ; 2 uses
  %gep144.i.3 = getelementptr [16 x i8], ptr %invariant.gep143.i, i64 %i.bv
  %gep.us.i.3 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.bv
  %i.bw = load <2 x i64>, ptr %gep144.i.3, align 8, !tbaa !103
  store <2 x i64> %i.bw, ptr %gep.us.i.3, align 8, !tbaa !103
  %i.bx = add nuw nsw i64 %.069110.us.i, 4        ; 2 uses
  %exitcond127.not.i.3 = icmp eq i64 %i.bx, %i.v
  br i1 %exitcond127.not.i.3, label %.loopexit.i, label %.lr.ph111.split.us.i, !llvm.loop !773

.lr.ph111.split.i:                                ; preds = %.lr.ph111.split.i, %.lr.ph111.split.preheader.i.new
  %.069110.i = phi i64 [ 0, %.lr.ph111.split.preheader.i.new ], [ %i.ch, %.lr.ph111.split.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph111.split.preheader.i.new ], [ %niter.next.1, %.lr.ph111.split.i ]
  %gep142.i = getelementptr [4 x i8], ptr %invariant.gep141.i, i64 %.069110.i
  %i.by = load i32, ptr %gep142.i, align 4, !tbaa !3
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.bz
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.069110.i
  %i.cb = load <2 x i64>, ptr %i.ca, align 8, !tbaa !103
  store <2 x i64> %i.cb, ptr %gep.i, align 8, !tbaa !103
  %i.cc = or disjoint i64 %.069110.i, 1           ; 2 uses
  %gep142.i.1 = getelementptr [4 x i8], ptr %invariant.gep141.i, i64 %i.cc
  %i.cd = load i32, ptr %gep142.i.1, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ce
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.cc
  %i.cg = load <2 x i64>, ptr %i.cf, align 8, !tbaa !103
  store <2 x i64> %i.cg, ptr %gep.i.1, align 8, !tbaa !103
  %i.ch = add nuw nsw i64 %.069110.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit26.unr-lcssa, label %.lr.ph111.split.i, !llvm.loop !774

.lr.ph.i:                                         ; preds = %.preheader106.i, %bb.ac
  %i.ci = phi ptr [ %i.fq, %bb.ac ], [ %i.am, %.preheader106.i ] ; 3 uses
  %.067109.i = phi i64 [ %i.fr, %bb.ac ], [ 0, %.preheader106.i ] ; 4 uses
  %i.cj = load ptr, ptr %1, align 8, !tbaa !480
  %i.ck = add i64 %.067109.i, %.0115.i            ; 2 uses
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !489 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cl, null
  br i1 %.not.i73.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i: ; preds = %bb.g, %.lr.ph.i
  %i.cp = phi i64 [ %i.co, %bb.g ], [ %i.ck, %.lr.ph.i ] ; 3 uses
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !189 ; 2 uses
  %.not.i75.i = icmp eq ptr %i.cq, null
  br i1 %.not.i75.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %.pre.i = load i16, ptr %i.q, align 8, !tbaa !510
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit74.i
  %i.cr = lshr i64 %i.cp, 6
  %i.cs = and i64 %i.cp, 63
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !103
  %i.cv = shl nuw i64 1, %i.cs
  %i.cw = and i64 %i.cu, %i.cv
  %.not104.i = icmp eq i64 %i.cw, 0
  %.pre128.i = load i16, ptr %i.q, align 8, !tbaa !510 ; 2 uses
  br i1 %.not104.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i
  %i.cx = phi i16 [ %.pre.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit74._ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread_crit_edge.i ], [ %.pre128.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !513
  %i.cz = zext i16 %i.cx to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cp
  %i.db = getelementptr [16 x i8], ptr %.0.i.i, i64 %.067109.i
  %i.dc = getelementptr [16 x i8], ptr %i.db, i64 %i.cz
  %i.dd = load <2 x i64>, ptr %i.da, align 8, !tbaa !103
  store <2 x i64> %i.dd, ptr %i.dc, align 8, !tbaa !103
  br label %bb.ac

bb.h:                                             ; preds = %bb.j
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.df = zext i16 %.pre128.i to i64
  %i.dg = add nuw i64 %.067109.i, %i.df           ; 2 uses
  %.not.i81.i = icmp eq ptr %i.ci, null
  br i1 %.not.i81.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dh = load i64, ptr %i.j, align 8, !tbaa !479
  %i.di = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc96.i unwind label %bb.h ; 11 uses

.noexc96.i:                                       ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 7 uses
  store i32 1, ptr %i.dj, align 8, !tbaa !56, !noalias !775
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  store i32 1, ptr %i.dk, align 4, !tbaa !58, !noalias !775
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.di, align 8, !tbaa !51, !noalias !775
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 4 uses
  store ptr null, ptr %i.dl, align 8, !tbaa !552, !noalias !775
  %i.dm = add i64 %i.dh, 63
  %i.dn = lshr i64 %i.dm, 6                       ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 3                ; 2 uses
  %i.dp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.do) #28
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i, !noalias !775 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc96.i
  store ptr %i.dp, ptr %i.dl, align 8, !tbaa !404, !noalias !775
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dp, i8 -1, i64 %i.do, i1 false), !tbaa !103, !noalias !775
  br label %bb.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i.i: ; preds = %.noexc96.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
end_hunk_1
