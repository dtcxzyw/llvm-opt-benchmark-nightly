inline.NumInlined: 5543
inline.NumDeleted: 2531
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZNK6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EEixEm:bb.a
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ColumnDataConsumer11FinishChunkERNS_27ColumnDataConsumerScanStateE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1159
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1181, !nonnull !64, !noundef !64 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %_ZSt11min_elementINSt8__detail14_Node_iteratorImLb1ELb0EEEET_S3_S3_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !103
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.h = phi i64 [ %i.n, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.g, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.f, %.lr.ph.preheader.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.h
  %spec.select.i.i = select i1 %i.l, ptr %i.i, ptr %.sroa.02.010.i.i ; 2 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !129  ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.m, null
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.h)
  br i1 %.not.i.i9, label %_ZSt11min_elementINSt8__detail14_Node_iteratorImLb1ELb0EEEET_S3_S3_.exit, label %.lr.ph.i.i, !llvm.loop !1182

_ZSt11min_elementINSt8__detail14_Node_iteratorImLb1ELb0EEEET_S3_S3_.exit: ; preds = %.lr.ph.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.sroa.02.2.i.i = phi ptr [ %i.f, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !103  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = invoke noundef i64 @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit unwind label %bb.c ; 0 uses

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE5eraseERKm.exit: ; preds = %_ZSt11min_elementINSt8__detail14_Node_iteratorImLb1ELb0EEEET_S3_S3_.exit
  store i64 %i.p, ptr %i.b, align 8, !tbaa !1159
  %i.s = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #24 ; 0 uses
  tail call void @_ZN6duckdb18ColumnDataConsumer13ConsumeChunksEmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %i.c, i64 noundef %i.p)
  ret void

bb.c:                                             ; preds = %_ZSt11min_elementINSt8__detail14_Node_iteratorImLb1ELb0EEEET_S3_S3_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #24 ; 0 uses
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ColumnDataConsumer13ConsumeChunksEmm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.duckdb::shared_ptr.398", align 8 ; 13 uses
  %12 = alloca %"class.duckdb::shared_ptr.398", align 8 ; 13 uses
  %i.i = icmp ult i64 %1, %2
  br i1 %i.i, label %.lr.ph117, label %._crit_edge

.lr.ph117:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph117, %.loopexit
  %.026116 = phi i64 [ %1, %.lr.ph117 ], [ %i.jc, %.loopexit ] ; 4 uses
  %i.m = icmp eq i64 %.026116, 0
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %.026116, -1
  %i.o = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.n) ; 2 uses
  %i.p = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.026116) ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !1141 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !284  ; 5 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !1141
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !284
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1143
  %i.x = zext i32 %i.w to i64
  %i.y = call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.ac = phi i32 [ %i.ai, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ad = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.02.010.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3  ; 2 uses
  %i.ag = icmp ult i32 %i.af, %i.ac
  %spec.select.i.i.i = select i1 %i.ag, ptr %i.ad, ptr %.sroa.02.010.i.i.i ; 2 uses
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  %i.ai = call i32 @llvm.umin.i32(i32 %i.af, i32 %i.ac)
  br i1 %.not.i.i.i, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit, label %.lr.ph.i.i.i, !llvm.loop !1144

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit: ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.02.2.i.i.i = phi ptr [ %i.aa, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3  ; 4 uses
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !1141
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1143
  %i.ap = zext i32 %i.ao to i64
  %i.aq = call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !461, !nonnull !64, !noundef !64 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !129 ; 2 uses
  %.not9.i.i.i28 = icmp eq ptr %i.at, null
  br i1 %.not9.i.i.i28, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit37, label %.lr.ph.preheader.i.i.i29

.lr.ph.preheader.i.i.i29:                         ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit
  %.phi.trans.insert.i.i.i30 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre.i.i.i31 = load i32, ptr %.phi.trans.insert.i.i.i30, align 8, !tbaa !3
  br label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %.lr.ph.i.i.i32, %.lr.ph.preheader.i.i.i29
  %i.au = phi i32 [ %i.ba, %.lr.ph.i.i.i32 ], [ %.pre.i.i.i31, %.lr.ph.preheader.i.i.i29 ] ; 2 uses
  %i.av = phi ptr [ %i.az, %.lr.ph.i.i.i32 ], [ %i.at, %.lr.ph.preheader.i.i.i29 ] ; 3 uses
  %.sroa.02.010.i.i.i33 = phi ptr [ %spec.select.i.i.i34, %.lr.ph.i.i.i32 ], [ %i.as, %.lr.ph.preheader.i.i.i29 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.ay = icmp ult i32 %i.ax, %i.au
  %spec.select.i.i.i34 = select i1 %i.ay, ptr %i.av, ptr %.sroa.02.010.i.i.i33 ; 2 uses
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.az, null
  %i.ba = call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.au)
  br i1 %.not.i.i.i35, label %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit37, label %.lr.ph.i.i.i32, !llvm.loop !1144

_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit37: ; preds = %.lr.ph.i.i.i32, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit
  %.sroa.02.2.i.i.i36 = phi ptr [ %i.as, %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit ], [ %spec.select.i.i.i34, %.lr.ph.i.i.i32 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.02.2.i.i.i36, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 2 uses
  %.not = icmp eq ptr %i.r, %i.t
  br i1 %.not, label %.preheader, label %.preheader109

.preheader109:                                    ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.bf = zext i32 %i.ak to i64                   ; 2 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !49 ; 2 uses
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 40
  %i.bm = icmp ugt i64 %i.bl, %i.bf
  br i1 %i.bm, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %_ZNK6duckdb18ColumnDataConsumer14ChunkReference17GetMinimumBlockIDEv.exit37
  %i.bn = icmp ult i32 %i.ak, %i.bc
  br i1 %i.bn, label %.lr.ph115, label %.loopexit

.lr.ph115:                                        ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %13 = zext i32 %i.ak to i64
  %wide.trip.count = zext i32 %i.bc to i64
  br label %bb.ao

.lr.ph:                                           ; preds = %.preheader109, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit
  %i.bq = phi ptr [ %i.fh, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit ], [ %i.bg, %.preheader109 ]
  %i.br = phi i64 [ %i.fk, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit ], [ %i.bj, %.preheader109 ]
  %i.bs = phi ptr [ %i.fi, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit ], [ %i.bh, %.preheader109 ]
  %i.bt = phi i64 [ %i.fg, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit ], [ %i.bf, %.preheader109 ] ; 3 uses
  %.025113 = phi i32 [ %i.ff, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit ], [ %i.ak, %.preheader109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bu, %i.br
  %i.bw = sdiv exact i64 %i.bv, 40                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.bt, ptr %i.g, align 8, !tbaa !103
  store i64 %i.bw, ptr %i.h, align 8, !tbaa !103
  %.not.i.i.i45 = icmp ugt i64 %i.bw, %i.bt
  br i1 %.not.i.i.i45, label %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit, label %.noexc.i79, !prof !104

.noexc.i79:                                       ; preds = %.lr.ph
  %i.bx = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.by, ptr %7, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 55, ptr %i.c, align 8, !tbaa !103
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc80 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc80:                                         ; preds = %.noexc.i79
  store ptr %i.bz, ptr %7, align 8, !tbaa !72
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !103 ; 3 uses
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bz, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !361
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 0, ptr %i.cc, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc80
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i79
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %.noexc80
  %.0.i.i.i = phi i1 [ false, %bb.d ], [ true, %.noexc80 ] ; 2 uses
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cf = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.by
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.cf) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.0.i.i.i, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.0.i.i.i, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bx) #24
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73, %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.f, %.body53, %bb.bo, %.body, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body54, %.body53 ], [ %.pn9.i, %bb.ac ], [ %eh.lpad-body, %.body ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.pn9.i62, %bb.bo ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.f ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73 ], [ %.pn8.i.i.i69, %bb.ar ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %i.bt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !97, !noalias !1183 ; 4 uses
  %.not.i43 = icmp eq ptr %i.cj, null
  br i1 %.not.i43, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit
  store ptr %i.cj, ptr %12, align 8, !tbaa !97, !alias.scope !1183
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !54, !noalias !1183 ; 3 uses
  store ptr %i.cl, ptr %i.k, align 8, !tbaa !54, !alias.scope !1183
  %.not.i.i.i.i.i44 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i44, label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1183
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !1183
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !3, !noalias !1183
  br label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit

bb.k:                                             ; preds = %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !50, !noalias !1189 ; 9 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i75, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 9 uses
  %i.cu = load atomic i32, ptr %i.ct monotonic, align 8, !noalias !1189
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.06.i.i.i.i.i.i = phi i32 [ %i.cu, %bb.l ], [ %i.cy, %bb.n ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.cw = cmpxchg weak ptr %i.ct, i32 %.06.i.i.i.i.i.i, i32 %i.cv acq_rel monotonic, align 8, !noalias !1189 ; 2 uses
  %i.cx = extractvalue { i32, i1 } %i.cw, 1
  %i.cy = extractvalue { i32, i1 } %i.cw, 0
  br i1 %i.cx, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.m, !llvm.loop !206

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.n
  %i.cz = load atomic i32, ptr %i.ct monotonic, align 8, !noalias !1189 ; 2 uses
  %.not.i.i.i.i76 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i76, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.da = load ptr, ptr %i.cq, align 8, !tbaa !118, !noalias !1189
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.db = phi ptr [ %i.da, %bb.o ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ] ; 2 uses
  store ptr %i.db, ptr %12, align 8, !tbaa !97, !alias.scope !1186
  store ptr %i.cs, ptr %i.k, align 8, !tbaa !54, !alias.scope !1186
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1186
  %.not.i.i.i.i.i.i77 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i77, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = add nsw i32 %i.cz, 1
  store i32 %i.dd, ptr %i.ct, align 8, !tbaa !3, !noalias !1186
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.de = atomicrmw volatile add ptr %i.ct, i32 1 acq_rel, align 4, !noalias !1186 ; 0 uses
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !97, !alias.scope !1186
  br label %bb.s

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.k, %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !1186
  br label %.loopexit112

bb.s:                                             ; preds = %bb.r, %bb.q
  %.ph.i = phi ptr [ %.pre.i.i, %bb.r ], [ %i.db, %bb.q ] ; 2 uses
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %.ph.i, ptr noundef %.ph.i) #24
  %i.df = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ct, align 8, !tbaa !56
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !58
  %i.dj = load ptr, ptr %i.cs, align 8, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24, !inline_history !1192
  %i.dm = load ptr, ptr %i.cs, align 8, !tbaa !51
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24, !inline_history !1192
  br label %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split

bb.u:                                             ; preds = %bb.s
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1186
  %.not.i.i.i2.i = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i2.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.ct, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@_ZN6duckdb18ColumnDataConsumer13ConsumeChunksEmm:bb.a
  br label %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split

_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  %.pr = load ptr, ptr %12, align 8, !tbaa !97, !alias.scope !1183 ; 2 uses
  %i.dt = icmp eq ptr %.pr, null
  br i1 %i.dt, label %.loopexit112, label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit

.loopexit112:                                     ; preds = %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split, %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.du = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !1183
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !1183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.y:                                             ; preds = %.loopexit112
  invoke void @_ZN6duckdb19ConnectionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTIN6duckdb19ConnectionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ad unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit112
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !1183
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i = phi i1 [ false, %bb.z ], [ true, %bb.y ] ; 2 uses
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dx = load ptr, ptr %8, align 8, !tbaa !72, !noalias !1183 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.dx) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !1183
  br i1 %.0.i, label %bb.ab, label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !1183
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !1183
  br i1 %.0.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.du) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn9.i = phi { ptr, i32 } [ %.pn10.i, %bb.ab ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #24
  br label %common.resume

bb.ad:                                            ; preds = %bb.z
  unreachable

_ZNK6duckdb13BlockMetaData9GetHandleEv.exit:      ; preds = %bb.i
  %i.ea = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4, !noalias !1183 ; 0 uses
  %.pre = load ptr, ptr %12, align 8, !tbaa !97   ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %.noexc.i, label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit, !prof !1193

.noexc.i:                                         ; preds = %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit
  %i.eb = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ec, ptr %10, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 49, ptr %i.d, align 8, !tbaa !103
  %i.ed = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ed, ptr %10, align 8, !tbaa !72
  %i.ee = load i64, ptr %i.d, align 8, !tbaa !103 ; 3 uses
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ed, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !361
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.eb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ah unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae, %.noexc
  %.0.i.i = phi i1 [ false, %bb.ae ], [ true, %.noexc ] ; 2 uses
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ej = load ptr, ptr %10, align 8, !tbaa !72   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ec
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.ej) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br i1 %.0.i.i, label %bb.ag, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br i1 %.0.i.i, label %bb.ag, label %.body

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.eb) #24
  br label %.body

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit: ; preds = %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split, %bb.j, %bb.h, %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit
  %i.el = phi ptr [ %.pre, %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit ], [ %.pr, %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exitthread-pre-split ], [ %i.cj, %bb.j ], [ %i.cj, %bb.h ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !82, !nonnull !64, !align !94
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 112
  store atomic i8 2, ptr %i.eo seq_cst, align 8
  %i.ep = load ptr, ptr %i.k, align 8, !tbaa !54  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 4 uses
  %i.er = load atomic i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4294967297
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  br i1 %i.es, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.eq, align 8, !tbaa !56
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.eu, align 4, !tbaa !58
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #24, !inline_history !1194
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #24, !inline_history !1194
  br label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fc = add nsw i32 %i.et, -1
  store i32 %i.fc, ptr %i.eq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.fd = atomicrmw volatile add ptr %i.eq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i = phi i32 [ %i.et, %bb.al ], [ %i.fd, %bb.am ]
  %i.fe = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fe, label %bb.an, label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit, !prof !60

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #24
  br label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.ag ]
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %common.resume

_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit: ; preds = %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.ff = add i32 %.025113, 1                     ; 2 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = load ptr, ptr %i.be, align 8, !tbaa !49 ; 2 uses
  %i.fi = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 40
  %i.fn = icmp ugt i64 %i.fm, %i.fg
  br i1 %i.fn, label %.lr.ph, label %.loopexit, !llvm.loop !1195

bb.ao:                                            ; preds = %.lr.ph115, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit42
  %indvars.iv = phi i64 [ %13, %.lr.ph115 ], [ %indvars.iv.next, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit42 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.fo = load ptr, ptr %i.bp, align 8, !tbaa !49
  %i.fp = load ptr, ptr %i.bo, align 8, !tbaa !48 ; 2 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = sdiv exact i64 %i.fs, 40                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %indvars.iv, ptr %i.e, align 8, !tbaa !103
  store i64 %i.ft, ptr %i.f, align 8, !tbaa !103
  %.not.i.i.i67 = icmp ugt i64 %i.ft, %indvars.iv
  br i1 %.not.i.i.i67, label %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit74, label %.noexc.i100, !prof !104

.noexc.i100:                                      ; preds = %bb.ao
  %i.fu = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.fv, ptr %3, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 55, ptr %i.a, align 8, !tbaa !103
  %i.fw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc101 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68 ; 3 uses

.noexc101:                                        ; preds = %.noexc.i100
  store ptr %i.fw, ptr %3, align 8, !tbaa !72
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fw, ptr noundef nonnull align 1 dereferenceable(55) @.str.22, i64 55, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !361
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fx
  store i8 0, ptr %i.fz, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.noexc101
  invoke void @__cxa_throw(ptr nonnull %i.fu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.as unwind label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68: ; preds = %.noexc.i100
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %.noexc101
  %.0.i.i.i71 = phi i1 [ false, %bb.ap ], [ true, %.noexc101 ] ; 2 uses
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gc = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fv
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.gc) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i.i.i71, label %bb.ar, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.0.i.i.i71, label %bb.ar, label %common.resume

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68
  %.pn8.i.i.i69 = phi { ptr, i32 } [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i68 ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73 ], [ %i.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72 ]
  call void @__cxa_free_exception(ptr %i.fu) #24
  br label %common.resume

bb.as:                                            ; preds = %bb.ap
  unreachable

_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit74: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ge = getelementptr inbounds nuw [40 x i8], ptr %i.fp, i64 %indvars.iv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !97, !noalias !1196 ; 4 uses
  %.not.i56 = icmp eq ptr %i.gg, null
  br i1 %.not.i56, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit74
  store ptr %i.gg, ptr %11, align 8, !tbaa !97, !alias.scope !1196
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !54, !noalias !1196 ; 3 uses
  store ptr %i.gi, ptr %i.l, align 8, !tbaa !54, !alias.scope !1196
  %.not.i.i.i.i.i57 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i57, label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit55, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 3 uses
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1196
  %.not.i.i.i.i.i.i58 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i.i58, label %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit66, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !3, !noalias !1196
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !3, !noalias !1196
  br label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit55

bb.aw:                                            ; preds = %_ZN6duckdb6vectorINS_13BlockMetaDataELb1ESaIS1_EEixEm.exit74
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !50, !noalias !1202 ; 9 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i86, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i97, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 9 uses
  %i.gr = load atomic i32, ptr %i.gq monotonic, align 8, !noalias !1202
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.06.i.i.i.i.i.i87 = phi i32 [ %i.gr, %bb.ax ], [ %i.gv, %bb.az ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i88 = icmp eq i32 %.06.i.i.i.i.i.i87, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i88, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i97, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gs = add nsw i32 %.06.i.i.i.i.i.i87, 1
  %i.gt = cmpxchg weak ptr %i.gq, i32 %.06.i.i.i.i.i.i87, i32 %i.gs acq_rel monotonic, align 8, !noalias !1202 ; 2 uses
  %i.gu = extractvalue { i32, i1 } %i.gt, 1
  %i.gv = extractvalue { i32, i1 } %i.gt, 0
  br i1 %i.gu, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i89, label %bb.ay, !llvm.loop !206

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i89: ; preds = %bb.az
  %i.gw = load atomic i32, ptr %i.gq monotonic, align 8, !noalias !1202 ; 2 uses
  %.not.i.i.i.i90 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i.i.i90, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i89
  %i.gx = load ptr, ptr %i.gn, align 8, !tbaa !118, !noalias !1202
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i89
  %i.gy = phi ptr [ %i.gx, %bb.ba ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i89 ] ; 2 uses
  store ptr %i.gy, ptr %11, align 8, !tbaa !97, !alias.scope !1199
  store ptr %i.gp, ptr %i.l, align 8, !tbaa !54, !alias.scope !1199
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1199
  %.not.i.i.i.i.i.i91 = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i.i.i.i91, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ha = add nsw i32 %i.gw, 1
  store i32 %i.ha, ptr %i.gq, align 8, !tbaa !3, !noalias !1199
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.hb = atomicrmw volatile add ptr %i.gq, i32 1 acq_rel, align 4, !noalias !1199 ; 0 uses
  %.pre.i.i96 = load ptr, ptr %11, align 8, !tbaa !97, !alias.scope !1199
  br label %bb.be

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i97: ; preds = %bb.aw, %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !alias.scope !1199
  br label %.loopexit108

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.ph.i92 = phi ptr [ %.pre.i.i96, %bb.bd ], [ %i.gy, %bb.bc ] ; 2 uses
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %.ph.i92, ptr noundef %.ph.i92) #24
  %i.hc = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.gq, align 8, !tbaa !56
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !58
  %i.hg = load ptr, ptr %i.gp, align 8, !tbaa !51
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24, !inline_history !1192
  %i.hj = load ptr, ptr %i.gp, align 8, !tbaa !51
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24, !inline_history !1192
  br label %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exit98thread-pre-split

bb.bg:                                            ; preds = %bb.be
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1199
  %.not.i.i.i2.i93 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i2.i93, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94

bb.bi:                                            ; preds = %bb.bg
  %i.ho = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i95 = phi i32 [ %i.he, %bb.bh ], [ %i.ho, %bb.bi ]
  %i.hp = icmp eq i32 %.0.i.i.i.i.i95, 1
  br i1 %i.hp, label %bb.bj, label %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exit98thread-pre-split, !prof !60

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24
  br label %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exit98thread-pre-split

_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exit98thread-pre-split: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i94, %bb.bf
  %.pr106 = load ptr, ptr %11, align 8, !tbaa !97, !alias.scope !1196 ; 2 uses
  %i.hq = icmp eq ptr %.pr106, null
  br i1 %i.hq, label %.loopexit108, label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit55

.loopexit108:                                     ; preds = %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exit98thread-pre-split, %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ESt10shared_ptrIS1_E.exit.i97
  %i.hr = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !1196
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !1196
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.bk unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i60

bb.bk:                                            ; preds = %.loopexit108
  invoke void @_ZN6duckdb19ConnectionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @__cxa_throw(ptr nonnull %i.hr, ptr nonnull @_ZTIN6duckdb19ConnectionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.bp unwind label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i60: ; preds = %.loopexit108
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !1196
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !1196
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0.i63 = phi i1 [ false, %bb.bl ], [ true, %bb.bk ] ; 2 uses
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hu = load ptr, ptr %4, align 8, !tbaa !72, !noalias !1196 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.hu) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !1196
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !1196
  br i1 %.0.i63, label %bb.bn, label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !1196
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !1196
  br i1 %.0.i63, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i60
  %.pn10.i61 = phi { ptr, i32 } [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i60 ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65 ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64 ]
  call void @__cxa_free_exception(ptr %i.hr) #24
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  %.pn9.i62 = phi { ptr, i32 } [ %.pn10.i61, %bb.bn ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65 ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64 ]
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #24
  br label %common.resume

bb.bp:                                            ; preds = %bb.bl
  unreachable

_ZNK6duckdb13BlockMetaData9GetHandleEv.exit66:    ; preds = %bb.au
  %i.hx = atomicrmw volatile add ptr %i.gj, i32 1 acq_rel, align 4, !noalias !1196 ; 0 uses
  %.pre122 = load ptr, ptr %11, align 8, !tbaa !97 ; 2 uses
  %.not.i46 = icmp eq ptr %.pre122, null
  br i1 %.not.i46, label %.noexc.i83, label %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit55, !prof !1193

.noexc.i83:                                       ; preds = %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit66
  %i.hy = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.hz, ptr %6, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 49, ptr %i.b, align 8, !tbaa !103
  %i.ia = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc84 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i47 ; 3 uses

.noexc84:                                         ; preds = %.noexc.i83
  store ptr %i.ia, ptr %6, align 8, !tbaa !72
  %i.ib = load i64, ptr %i.b, align 8, !tbaa !103 ; 3 uses
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ia, ptr noundef nonnull align 1 dereferenceable(49) @.str.21, i64 49, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !361
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ib
  store i8 0, ptr %i.id, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %.noexc84
  invoke void @__cxa_throw(ptr nonnull %i.hy, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.bt unwind label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i47: ; preds = %.noexc.i83
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq, %.noexc84
  %.0.i.i50 = phi i1 [ false, %bb.bq ], [ true, %.noexc84 ] ; 2 uses
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ig = load ptr, ptr %6, align 8, !tbaa !72    ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.hz
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51: ; preds = %bb.br
  call void @_ZdlPv(ptr noundef %i.ig) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i50, label %bb.bs, label %.body53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i52: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0.i.i50, label %bb.bs, label %.body53

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i47
  %.pn9.i.i48 = phi { ptr, i32 } [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i47 ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i52 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51 ]
  call void @__cxa_free_exception(ptr %i.hy) #24
  br label %.body53

bb.bt:                                            ; preds = %bb.bq
  unreachable

_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit55: ; preds = %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exit98thread-pre-split, %bb.av, %bb.at, %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit66
  %i.ii = phi ptr [ %.pre122, %_ZNK6duckdb13BlockMetaData9GetHandleEv.exit66 ], [ %.pr106, %_ZNK6duckdb8weak_ptrINS_11BlockHandleELb1EE4lockEv.exit98thread-pre-split ], [ %i.gg, %bb.av ], [ %i.gg, %bb.at ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 64
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !82, !nonnull !64, !align !94
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 112
  store atomic i8 2, ptr %i.il seq_cst, align 8
  %i.im = load ptr, ptr %i.l, align 8, !tbaa !54  ; 8 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i38, label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit42, label %bb.bu

bb.bu:                                            ; preds = %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit55
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.io = load atomic i64, ptr %i.in acquire, align 8 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 4294967297
  %i.iq = trunc i64 %i.io to i32                  ; 2 uses
  br i1 %i.ip, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.in, align 8, !tbaa !56
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  store i32 0, ptr %i.ir, align 4, !tbaa !58
  %i.is = load ptr, ptr %i.im, align 8, !tbaa !51
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #24, !inline_history !1194
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !51
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #24, !inline_history !1194
  br label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit42

bb.bw:                                            ; preds = %bb.bu
  %i.iy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i39 = icmp eq i8 %i.iy, 0
  br i1 %.not.i.i.i.i.i39, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.iz = add nsw i32 %i.iq, -1
  store i32 %i.iz, ptr %i.in, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i40

bb.by:                                            ; preds = %bb.bw
  %i.ja = atomicrmw volatile add ptr %i.in, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i40

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i40: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i.i41 = phi i32 [ %i.iq, %bb.bx ], [ %i.ja, %bb.by ]
  %i.jb = icmp eq i32 %.0.i.i.i.i.i.i41, 1
  br i1 %i.jb, label %bb.bz, label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit42, !prof !60

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i40
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #24
  br label %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit42

.body53:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i52, %bb.bs
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51 ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i52 ], [ %.pn9.i.i48, %bb.bs ]
  call void @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %common.resume

_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit42: ; preds = %_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv.exit55, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i40, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.ao, !llvm.loop !1205

.loopexit:                                        ; preds = %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit, %_ZN6duckdb19ColumnDataAllocator25SetDestroyBufferUponUnpinEj.exit42, %.preheader109, %.preheader, %bb.b
  %i.jc = add nuw i64 %.026116, 1                 ; 2 uses
  %exitcond121.not = icmp eq i64 %i.jc, %2
  br i1 %exitcond121.not, label %._crit_edge, label %bb.b, !llvm.loop !1206
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(12) ptr @_ZN6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1162
  %i.e = load ptr, ptr %0, align 8, !tbaa !1161   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !103
  store i64 %i.i, ptr %i.b, align 8, !tbaa !103
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EE3getILb1EEERS2_m.exit, label %bb.b, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !72     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_18ColumnDataConsumer14ChunkReferenceELb1ESaIS2_EE3getILb1EEERS2_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21PartitionedColumnDataC2ENS_25PartitionedColumnDataTypeERNS_13ClientContextENS_6vectorINS_11LogicalTypeELb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 9), (16, 88)) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb21PartitionedColumnDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.a, align 8, !tbaa !1207
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !1221
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load <2 x ptr>, ptr %3, align 8, !tbaa !250
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !250
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !251
  store ptr %i.g, ptr %i.e, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.i = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %bb.i     ; 10 uses

.noexc:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 7 uses
  store i32 1, ptr %i.k, align 8, !tbaa !56, !noalias !1225
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  store i32 1, ptr %i.l, align 4, !tbaa !58, !noalias !1225
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb29PartitionColumnDataAllocatorsESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.i, align 8, !tbaa !51, !noalias !1225
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false), !noalias !1225
  store ptr %i.m, ptr %i.j, align 8, !tbaa !1228, !alias.scope !1222
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.i, ptr %i.n, align 8, !tbaa !54, !alias.scope !1222
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1222
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  store i32 2, ptr %i.k, align 8, !tbaa !3, !noalias !1222
  br label %_ZN6duckdb10shared_ptrINS_29PartitionColumnDataAllocatorsELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.c:                                             ; preds = %.noexc
  %i.p = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !1222 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_29PartitionColumnDataAllocatorsELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_29PartitionColumnDataAllocatorsELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.c, %bb.b
  %i.q = load atomic i64, ptr %i.k acquire, align 8, !noalias !1222 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb10shared_ptrINS_29PartitionColumnDataAllocatorsELb1EEC2ESt10shared_ptrIS1_E.exit.i
  store i32 0, ptr %i.k, align 8, !tbaa !56, !noalias !1222
  store i32 0, ptr %i.l, align 4, !tbaa !58, !noalias !1222
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !51, !noalias !1222
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1222
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !noalias !1222, !inline_history !1229
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !51, !noalias !1222
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1222
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !noalias !1222, !inline_history !1229
  br label %_ZN6duckdb15make_shared_ptrINS_29PartitionColumnDataAllocatorsEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_29PartitionColumnDataAllocatorsELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !1222
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.s, -1
  store i32 %i.aa, ptr %i.k, align 8, !tbaa !3, !noalias !1222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4, !noalias !1222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZN6duckdb15make_shared_ptrINS_29PartitionColumnDataAllocatorsEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !60

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !noalias !1222
  br label %_ZN6duckdb15make_shared_ptrINS_29PartitionColumnDataAllocatorsEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_29PartitionColumnDataAllocatorsEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #24
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21PartitionedColumnDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 9), (16, 24)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb21PartitionedColumnDataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1207
  store i8 %i.c, ptr %i.a, align 8, !tbaa !1207
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_1
