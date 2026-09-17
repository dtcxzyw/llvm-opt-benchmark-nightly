Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_write?download=true
inline.NumInlined: 5104
inline.NumDeleted: 2221
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb6DBImpl20WaitForPendingWritesEv:bb.a
  resume { ptr, i32 } %i.w

bb.l:                                             ; preds = %bb.c, %bb.d, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1272
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3112
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  call void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %i.ae)
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !1272
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %._crit_edge, label %bb.m, !llvm.loop !1267

._crit_edge:                                      ; preds = %bb.m, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl14SwitchMemtableEPNS_16ColumnFamilyDataEPNS0_12WriteContextEPNS_16ReadOnlyMemTableEm(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %9 = alloca %"struct.rocksdb::WriteOptions", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %10 = alloca %"struct.rocksdb::DBImpl::UnpublishedWAL", align 8 ; 12 uses
  %11 = alloca %"class.rocksdb::IOStatus", align 8 ; 23 uses
  %12 = alloca %"struct.rocksdb::DBImpl::UnpublishedWAL", align 8 ; 6 uses
  %13 = alloca %"struct.rocksdb::MutableCFOptions", align 8 ; 8 uses
  %14 = alloca %"struct.rocksdb::MemTableInfo", align 8 ; 18 uses
  %15 = alloca %"struct.rocksdb::DBOptions", align 8 ; 9 uses
  %16 = alloca %"class.rocksdb::PredecessorWALInfo", align 8 ; 10 uses
  %17 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %18 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %23 = alloca %"struct.rocksdb::ReadOptions", align 8 ; 20 uses
  %24 = alloca %"class.rocksdb::autovector.195", align 8 ; 21 uses
  %25 = alloca %"class.rocksdb::VersionEdit", align 8 ; 47 uses
  %26 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %27 = alloca %"class.std::optional.985", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 7 uses
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 6, i1 false)
  store i32 4, ptr %i.c, align 8, !tbaa !356
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 -1, ptr %i.e, align 8, !tbaa !895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !896
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store i8 0, ptr %11, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 4 uses
  store i8 0, ptr %i.f, align 1, !tbaa !745
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 2 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  store ptr null, ptr %i.h, align 8, !tbaa !63
  store i32 0, ptr %i.g, align 2
  invoke void @_ZN7rocksdb6DBImpl21WriteRecoverableStateEv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %0, align 8, !tbaa !61
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %.critedge181

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit319

bb.d:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 6888 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !638, !range !83, !noundef !84
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3305 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !897, !range !83, !noundef !84
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.p, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3040
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.s)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %.pre = load i8, ptr %i.m, align 8, !tbaa !638, !range !83
  %i.t = trunc nuw i8 %.pre to i1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3305 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !897, !range !83, !noundef !84
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.t, label %bb.h, label %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3040
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.x)
          to label %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit:     ; preds = %bb.h, %bb.g
  br i1 %i.w, label %bb.p, label %bb.j

bb.j:                                             ; preds = %.thread, %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit
  %i.z = phi ptr [ %i.p, %.thread ], [ %i.u, %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.ab = load i64, ptr %i.aa, align 64, !tbaa !637
  %.not137 = icmp eq i64 %i.ab, 0
  br i1 %.not137, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 3264
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3232 ; 2 uses
  %i.ae = load ptr, ptr %i.ac, align 64, !tbaa !1283
  %i.af = load ptr, ptr %i.ad, align 32, !tbaa !1283
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %1, align 64, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1440
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 64 dereferenceable(7336) %1)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  br i1 %i.ak, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.ad, align 32, !tbaa !1283, !noalias !1284
  %i.am = load i64, ptr %i.al, align 8, !tbaa !104
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.p:                                             ; preds = %.thread, %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit
  %i.ao = phi ptr [ %i.p, %.thread ], [ %i.u, %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 3208 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !805
  br label %bb.t

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.090.ph = phi i64 [ 0, %bb.j ], [ 0, %bb.m ], [ %i.am, %bb.n ], [ 0, %bb.k ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 3208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  invoke void @_ZN7rocksdb6DBImpl24WaitForAsyncWALPrecreateEv(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::DBImpl::UnpublishedWAL") align 8 %12, ptr noundef nonnull align 64 dereferenceable(7336) %1)
          to label %_ZN7rocksdb6DBImpl14UnpublishedWALD2Ev.exit unwind label %bb.r

_ZN7rocksdb6DBImpl14UnpublishedWALD2Ev.exit:      ; preds = %bb.q
  %i.as = load i64, ptr %12, align 8, !tbaa !1285 ; 2 uses
  store i64 %i.as, ptr %10, align 8, !tbaa !1285
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !896 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !896
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  %.not381 = icmp eq ptr %i.av, null
  br i1 %.not381, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.ga

bb.s:                                             ; preds = %_ZN7rocksdb6DBImpl14UnpublishedWALD2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !701
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 216
  %i.ba = atomicrmw add ptr %i.az, i64 1 seq_cst, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZN7rocksdb6DBImpl14UnpublishedWALD2Ev.exit, %bb.p, %bb.s
  %i.bb = phi ptr [ %i.ao, %bb.p ], [ %i.z, %bb.s ], [ %i.z, %_ZN7rocksdb6DBImpl14UnpublishedWALD2Ev.exit ]
  %i.bc = phi i8 [ 1, %bb.p ], [ 0, %bb.s ], [ 0, %_ZN7rocksdb6DBImpl14UnpublishedWALD2Ev.exit ] ; 2 uses
  %i.bd = phi i1 [ true, %bb.p ], [ false, %bb.s ], [ false, %_ZN7rocksdb6DBImpl14UnpublishedWALD2Ev.exit ] ; 2 uses
  %i.be = phi ptr [ %i.ap, %bb.p ], [ %i.ar, %bb.s ], [ %i.ar, %_ZN7rocksdb6DBImpl14UnpublishedWALD2Ev.exit ] ; 9 uses
  %.090346 = phi i64 [ 0, %bb.p ], [ %.090.ph, %bb.s ], [ %.090.ph, %_ZN7rocksdb6DBImpl14UnpublishedWALD2Ev.exit ] ; 2 uses
  %.089 = phi i64 [ %i.aq, %bb.p ], [ %i.ba, %bb.s ], [ %i.as, %_ZN7rocksdb6DBImpl14UnpublishedWALD2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 1960
  invoke void @_ZN7rocksdb16MutableCFOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(736) %13, ptr noundef nonnull align 8 dereferenceable(736) %i.bf)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bg, ptr %14, align 8, !tbaa !76
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !75
  store i8 0, ptr %i.bg, align 8, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 6 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !76
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 2 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !75
  store i8 0, ptr %i.bj, align 8, !tbaa !49
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 2760 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !894 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 10312
  %i.bp = load atomic i64, ptr %i.bo monotonic, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !1287
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 10320
  %i.bs = load atomic i64, ptr %i.br monotonic, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !1288
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 10280
  %i.bv = load atomic i64, ptr %i.bu monotonic, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !1289
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 10288
  %i.by = load atomic i64, ptr %i.bx monotonic, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !1290
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 1952
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !1291, !range !83, !noundef !84
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !74
  %.not138 = icmp eq i64 %i.cg, 0
  br i1 %.not138, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = invoke { ptr, i64 } @_ZNK7rocksdb8MemTable12GetNewestUDTEv(ptr noundef nonnull align 16 dereferenceable(10624) %i.bn)
          to label %bb.y unwind label %bb.ab      ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.ci = extractvalue { ptr, i64 } %i.ch, 0
  %i.cj = extractvalue { ptr, i64 } %i.ch, 1
  %i.ck = load i64, ptr %i.bk, align 8, !tbaa !75
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 noundef 0, i64 noundef %i.ck, ptr noundef %i.ci, i64 noundef %i.cj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.ab ; 0 uses

bb.z:                                             ; preds = %bb.t
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.aa:                                            ; preds = %bb.u
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.y, %bb.w, %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 2768 ; 3 uses
  %i.cq = invoke noundef i32 @_ZNK7rocksdb12MemTableList13NumNotFlushedEv(ptr noundef nonnull align 8 dereferenceable(60) %i.cp)
          to label %bb.ac unwind label %bb.ak

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1576
  invoke void @_ZN7rocksdb14BuildDBOptionsERKNS_18ImmutableDBOptionsERKNS_16MutableDBOptionsE(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::DBOptions") align 8 %15, ptr noundef nonnull align 8 dereferenceable(600) %i.cr, ptr noundef nonnull align 8 dereferenceable(184) %i.cs)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.ct = load i64, ptr %13, align 8, !tbaa !1292 ; 2 uses
  invoke void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.ad
  %i.cu = udiv i64 %i.ct, 10
  %i.cv = add i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !898 ; 2 uses
  %.not.i = icmp eq i64 %i.cx, 0
  %.sroa.speculated7.i = call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.cv)
  %.0.i = select i1 %.not.i, i64 %i.cv, i64 %.sroa.speculated7.i ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %i.cz = load i64, ptr %i.cy, align 16, !tbaa !899 ; 2 uses
  %.not2.i = icmp eq i64 %i.cz, 0
  %.sroa.speculated14.i = call i64 @llvm.umin.i64(i64 %i.cz, i64 %.0.i)
  %.1.i = select i1 %.not2.i, i64 %.0.i, i64 %.sroa.speculated14.i ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !900 ; 3 uses
  %.not22.i = icmp eq ptr %i.db, null
  br i1 %.not22.i, label %_ZNK7rocksdb6DBImpl26GetWalPreallocateBlockSizeEm.exit, label %bb.ae

bb.ae:                                            ; preds = %.noexc
  %i.dc = load atomic i64, ptr %i.db monotonic, align 8
  %.not23.i = icmp eq i64 %i.dc, 0
  br i1 %.not23.i, label %_ZNK7rocksdb6DBImpl26GetWalPreallocateBlockSizeEm.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = load atomic i64, ptr %i.db monotonic, align 8
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.dd, i64 %.1.i)
  br label %_ZNK7rocksdb6DBImpl26GetWalPreallocateBlockSizeEm.exit

_ZNK7rocksdb6DBImpl26GetWalPreallocateBlockSizeEm.exit: ; preds = %bb.af, %bb.ae, %.noexc
  %.2.i = phi i64 [ %.sroa.speculated.i, %bb.af ], [ %.1.i, %bb.ae ], [ %.1.i, %.noexc ] ; 2 uses
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit184 unwind label %bb.am

_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit184:  ; preds = %_ZNK7rocksdb6DBImpl26GetWalPreallocateBlockSizeEm.exit
  br i1 %i.bd, label %bb.bb, label %bb.ag

bb.ag:                                            ; preds = %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit184
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %16, i8 0, i64 25, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 3040 ; 2 uses
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.de)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 3448
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 3416
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !834 ; 3 uses
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !834
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3456
  %i.dl = load ptr, ptr %i.dk, align 64, !tbaa !835, !noalias !1293
  %i.dm = icmp eq ptr %i.dh, %i.dl
  br i1 %i.dm, label %bb.aj, label %_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit

bb.aj:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 3472
  %i.do = load ptr, ptr %i.dn, align 16, !tbaa !836, !noalias !1293
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !837
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 480
  br label %_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit

_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit: ; preds = %bb.ai, %bb.aj
  %i.ds = phi ptr [ %i.dr, %bb.aj ], [ %i.dh, %bb.ai ]
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !901 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !1314
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !751
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 648
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !1315
  store i64 %i.dw, ptr %16, align 8, !tbaa !104
  %.sroa.4340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.dz, ptr %.sroa.4340.0..sroa_idx, align 8, !tbaa !104
  %.sroa.5341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.eb, ptr %.sroa.5341.0..sroa_idx, align 8, !tbaa !104
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !321
  br label %bb.ao

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.al:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.am:                                            ; preds = %.invoke, %.thread489, %_ZNK7rocksdb6DBImpl26GetWalPreallocateBlockSizeEm.exit, %bb.ad, %bb.by, %_ZN7rocksdb8MemTable13MarkImmutableEv.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_0
begin_hunk_1_@_ZN7rocksdb6DBImpl14SwitchMemtableEPNS_16ColumnFamilyDataEPNS0_12WriteContextEPNS_16ReadOnlyMemTableEm:bb.a

bb.bm:                                            ; preds = %bb.bh
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %21, align 8, !tbaa !48   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.bm
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !49
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %bb.bl
  %.pn140 = phi { ptr, i32 } [ %i.hb, %bb.bl ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ], [ %i.hc, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  %i.hi = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !64 ; 2 uses
  %.not.i.i212 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i212, label %_ZN7rocksdb6StatusD2Ev.exit215, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i213

bb.bn:                                            ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !64 ; 2 uses
  %.not.i.i205 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i205, label %_ZN7rocksdb6StatusD2Ev.exit208, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i206

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i206: ; preds = %bb.bn
  call void @_ZdaPv(ptr noundef nonnull %i.hl) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit208

_ZN7rocksdb6StatusD2Ev.exit208:                   ; preds = %bb.bn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  %i.hm = load ptr, ptr %19, align 8, !tbaa !48   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZN7rocksdb6StatusD2Ev.exit208
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !49
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  call void @_ZdaPv(ptr noundef nonnull %i.hj) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit215

_ZN7rocksdb6StatusD2Ev.exit215:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %bb.bk
  %.pn140.pn.pn = phi { ptr, i32 } [ %i.ha, %bb.bk ], [ %.pn140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.pn140, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i213 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  %i.hr = load ptr, ptr %19, align 8, !tbaa !48   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZN7rocksdb6StatusD2Ev.exit215
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !49
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZN7rocksdb6StatusD2Ev.exit215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216, %bb.bj
  %.pn140.pn.pn.pn = phi { ptr, i32 } [ %i.gz, %bb.bj ], [ %.pn140.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %.pn140.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit215 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210: ; preds = %_ZN7rocksdb6StatusD2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  %.pr354.pre = load i8, ptr %0, align 8, !tbaa !61
  %i.hw = icmp eq i8 %.pr354.pre, 0
  br i1 %i.hw, label %.thread355, label %.thread489

.thread355:                                       ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210
  %.not145 = icmp eq ptr %4, null
  br i1 %.not145, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %.thread355
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.hy = load ptr, ptr %i.hx, align 16, !tbaa !701
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 264
  %i.ia = load atomic i64, ptr %i.hz acquire, align 8
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bq:                                            ; preds = %.thread355, %bb.bo
  %.087 = phi i64 [ %i.ia, %bb.bo ], [ %5, %.thread355 ]
  %i.ic = invoke noundef ptr @_ZN7rocksdb16ColumnFamilyData20ConstructNewMemtableERKNS_16MutableCFOptionsEm(ptr noundef nonnull align 8 dereferenceable(3088) %2, ptr noundef nonnull align 8 dereferenceable(736) %13, i64 noundef %.087)
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN7rocksdb19SuperVersionContext15NewSuperVersionEv(ptr noundef nonnull align 8 dereferenceable(536) %3)
          to label %bb.bs unwind label %bb.bp

bb.bs:                                            ; preds = %bb.br
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.ie = load ptr, ptr %i.bl, align 8, !tbaa !48
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef nonnull @.str.73, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.66, i64 32), ptr noundef %i.ie, i64 noundef %.089, i32 noundef %i.cq)
          to label %.thread489 unwind label %bb.bp

.thread489:                                       ; preds = %bb.bc, %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210
  %.088 = phi ptr [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i210 ], [ %i.ic, %bb.bs ], [ null, %bb.bc ] ; 5 uses
  %i.if = load ptr, ptr %i.bm, align 8, !tbaa !894 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 10216 ; 3 uses
  invoke void @_ZN7rocksdb4port7RWMutex9WriteLockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ig)
          to label %.noexc219 unwind label %bb.am

.noexc219:                                        ; preds = %.thread489
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 10209
  store atomic i8 1, ptr %i.ih monotonic, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 10192
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !906 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !45
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 88
  %i.im = load ptr, ptr %i.il, align 8
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ij)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %.noexc219
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 7688
  invoke void @_ZN7rocksdb12AllocTracker14DoneAllocatingEv(ptr noundef nonnull align 8 dereferenceable(18) %i.in)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ig)
          to label %_ZN7rocksdb8MemTable13MarkImmutableEv.exit unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #35
  unreachable

bb.bw:                                            ; preds = %bb.bt, %.noexc219
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ig)
          to label %.body unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #35
  unreachable

_ZN7rocksdb8MemTable13MarkImmutableEv.exit:       ; preds = %bb.bu
  %i.it = load ptr, ptr %i.bm, align 8, !tbaa !894
  invoke void @_ZN7rocksdb8MemTable34ConstructFragmentedRangeTombstonesEv(ptr noundef nonnull align 16 dereferenceable(10624) %i.it)
          to label %bb.by unwind label %bb.am

bb.by:                                            ; preds = %_ZN7rocksdb8MemTable13MarkImmutableEv.exit
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %bb.bz unwind label %bb.am

bb.bz:                                            ; preds = %bb.by
  %.not146 = icmp eq i64 %.090346, 0
  br i1 %.not146, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 3232 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 32, !tbaa !1317 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 3248 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 16, !tbaa !1318
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 -8
  %.not.i220 = icmp eq ptr %i.iv, %i.iy
  br i1 %.not.i220, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  br label %_ZNSt5dequeImSaImEE9pop_frontEv.exit

bb.cc:                                            ; preds = %bb.ca
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 3240 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !1319
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef 512) #34
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 3256 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !1320
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  store ptr %i.je, ptr %i.jc, align 8, !tbaa !1321
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !907 ; 3 uses
  store ptr %i.jf, ptr %i.ja, align 8, !tbaa !1322
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 512
  store ptr %i.jg, ptr %i.iw, align 16, !tbaa !1323
  br label %_ZNSt5dequeImSaImEE9pop_frontEv.exit

_ZNSt5dequeImSaImEE9pop_frontEv.exit:             ; preds = %bb.cb, %bb.cc
  %storemerge.i = phi ptr [ %i.iz, %bb.cb ], [ %i.jf, %bb.cc ]
  store ptr %storemerge.i, ptr %i.iu, align 32, !tbaa !1317
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bz, %_ZNSt5dequeImSaImEE9pop_frontEv.exit
  %i.jh = load i8, ptr %0, align 8, !tbaa !61     ; 2 uses
  %28 = or i8 %i.jh, %i.bc
  %or.cond.not.not = icmp eq i8 %28, 0
  br i1 %or.cond.not.not, label %bb.ce, label %bb.db

bb.ce:                                            ; preds = %bb.cd
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 3040 ; 3 uses
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.ji)
          to label %_ZN7rocksdb21InstrumentedMutexLockC2EPNS_17InstrumentedMutexE.exit unwind label %bb.ci

_ZN7rocksdb21InstrumentedMutexLockC2EPNS_17InstrumentedMutexE.exit: ; preds = %bb.ce
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 3400
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 3448 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 3416
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !834 ; 3 uses
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !834
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.cs, label %bb.cf

bb.cf:                                            ; preds = %_ZN7rocksdb21InstrumentedMutexLockC2EPNS_17InstrumentedMutexE.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 3456
  %i.jq = load ptr, ptr %i.jp, align 64, !tbaa !835, !noalias !1324
  %i.jr = icmp eq ptr %i.jm, %i.jq
  br i1 %i.jr, label %bb.cg, label %_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit222

bb.cg:                                            ; preds = %bb.cf
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 3472
  %i.jt = load ptr, ptr %i.js, align 16, !tbaa !836, !noalias !1324
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !837
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 480
  br label %_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit222

_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit222: ; preds = %bb.cf, %bb.cg
  %i.jx = phi ptr [ %i.jw, %bb.cg ], [ %i.jm, %bb.cf ]
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -32
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !901 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 2297
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !908, !range !83, !noundef !84
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit222
  %i.kd = load ptr, ptr %i.jz, align 8, !tbaa !751
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 169
  store atomic i8 0, ptr %i.ke monotonic, align 1
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ce
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cj:                                            ; preds = %bb.co, %.thread360
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ck:                                            ; preds = %bb.ch, %_ZNSt5dequeIN7rocksdb6DBImpl15LogWriterNumberESaIS2_EE4backEv.exit222
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  invoke void @_ZN7rocksdb3log6Writer11WriteBufferERKNS_12WriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %22, ptr noundef nonnull align 8 dereferenceable(656) %i.jz, ptr noundef nonnull align 8 dereferenceable(25) %9)
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.kh = load i8, ptr %22, align 8, !tbaa !320   ; 2 uses
  store i8 %i.kh, ptr %11, align 8, !tbaa !61
  store i8 0, ptr %22, align 8, !tbaa !61
  %i.ki = getelementptr inbounds nuw i8, ptr %22, i64 1 ; 2 uses
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !902 ; 2 uses
  store i8 %i.kj, ptr %i.f, align 1, !tbaa !745
  store i8 0, ptr %i.ki, align 1, !tbaa !745
  %i.kk = getelementptr inbounds nuw i8, ptr %22, i64 3
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !903, !range !83, !noundef !84 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %11, i64 3
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !903
  %i.kn = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.ko = load i8, ptr %i.kn, align 4, !tbaa !82, !range !83, !noundef !84 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i8 %i.ko, ptr %i.kp, align 4, !tbaa !82
  %i.kq = getelementptr inbounds nuw i8, ptr %22, i64 5 ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !62  ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %11, i64 5
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !62
  store i8 0, ptr %i.kq, align 1, !tbaa !62
  %i.kt = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !64 ; 3 uses
  store ptr null, ptr %i.kt, align 8, !tbaa !64
  %i.kv = load ptr, ptr %i.h, align 8, !tbaa !64  ; 2 uses
  store ptr %i.ku, ptr %i.h, align 8, !tbaa !64
  %.not.i.i.i.i.i224 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i.i224, label %_ZN7rocksdb8IOStatusaSEOS0_.exit227.thread, label %_ZN7rocksdb8IOStatusaSEOS0_.exit227

_ZN7rocksdb8IOStatusaSEOS0_.exit227:              ; preds = %bb.cl
  call void @_ZdaPv(ptr noundef nonnull %i.kv) #34
  %.pr356 = load ptr, ptr %i.kt, align 8, !tbaa !64 ; 2 uses
  %.not.i.i228 = icmp eq ptr %.pr356, null
  br i1 %.not.i.i228, label %_ZN7rocksdb8IOStatusaSEOS0_.exit227.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i229

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i229: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit227
  call void @_ZdaPv(ptr noundef nonnull %.pr356) #34
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit227.thread

_ZN7rocksdb8IOStatusaSEOS0_.exit227.thread:       ; preds = %bb.cl, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i229, %_ZN7rocksdb8IOStatusaSEOS0_.exit227
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  %i.kw = load i8, ptr %0, align 8, !tbaa !61
  %i.kx = icmp eq i8 %i.kw, 0
  br i1 %i.kx, label %bb.cm, label %.thread360

bb.cm:                                            ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit227.thread
  %.not.i232 = icmp eq ptr %0, %11
  br i1 %.not.i232, label %.thread364, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i8 %i.kh, ptr %0, align 8, !tbaa !61
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.kj, ptr %i.ky, align 1, !tbaa !745
  %i.kz = load i8, ptr %i.g, align 2, !tbaa !904
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.kz, ptr %i.la, align 2, !tbaa !904
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.kl, ptr %i.lb, align 1, !tbaa !903
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ko, ptr %i.lc, align 4, !tbaa !82
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.kr, ptr %i.ld, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not.i.i233 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i233, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull %i.ku)
          to label %.noexc241 unwind label %bb.cj

.noexc241:                                        ; preds = %bb.co
  %.pre.i234 = load ptr, ptr %7, align 8, !tbaa !64
  br label %bb.cp

bb.cp:                                            ; preds = %.noexc241, %bb.cn
  %i.le = phi ptr [ %.pre.i234, %.noexc241 ], [ null, %bb.cn ]
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !64
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !64 ; 2 uses
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !64
  %.not.i.i.i.i.i235 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i.i.i235, label %bb.cr, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i236

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i236: ; preds = %bb.cp
  call void @_ZdaPv(ptr noundef nonnull %i.lg) #34
  %.pr.i237 = load ptr, ptr %7, align 8, !tbaa !64 ; 2 uses
  %.not.i12.i238 = icmp eq ptr %.pr.i237, null
  br i1 %.not.i12.i238, label %bb.cr, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i239

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i239: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i236
  call void @_ZdaPv(ptr noundef nonnull %.pr.i237) #34
  br label %bb.cr

bb.cq:                                            ; preds = %bb.ck
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  br label %bb.cz

bb.cr:                                            ; preds = %bb.cp, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i236, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %.pr358 = load i8, ptr %0, align 8, !tbaa !61
  %i.li = icmp eq i8 %.pr358, 0
  br i1 %i.li, label %.thread364, label %.thread360

.thread360:                                       ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit227.thread, %bb.cr
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.lk = load ptr, ptr %i.bl, align 8, !tbaa !48
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !1314
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %i.lj, ptr noundef nonnull @.str.74, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.66, i64 32), ptr noundef %i.lk, i64 noundef %i.lm, i64 noundef %.089)
          to label %bb.cs unwind label %bb.cj

bb.cs:                                            ; preds = %_ZN7rocksdb21InstrumentedMutexLockC2EPNS_17InstrumentedMutexE.exit, %.thread360
  %.pr362 = load i8, ptr %0, align 8, !tbaa !61
  %i.ln = icmp eq i8 %.pr362, 0
  br i1 %i.ln, label %.thread364, label %_ZNSt5dequeIN7rocksdb6DBImpl17WalFileNumberSizeESaIS2_EE12emplace_backIJRmEEERS2_DpOT_.exit

.thread364:                                       ; preds = %bb.cm, %bb.cr, %bb.cs
  store i64 %.089, ptr %i.be, align 8, !tbaa !805
  store i8 1, ptr %i.bb, align 1, !tbaa !897
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 3304
  store i8 0, ptr %i.lo, align 8, !tbaa !909
  %i.lp = load ptr, ptr %i.jk, align 8, !tbaa !910 ; 7 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 3464
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !1325
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 -40
  %.not.i243 = icmp eq ptr %i.lp, %i.ls
  br i1 %.not.i243, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.thread364
  %i.lt = load ptr, ptr %i.a, align 8, !tbaa !896
  store i64 %.089, ptr %i.lp, align 8, !tbaa !839
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !901
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store i8 0, ptr %i.lv, align 8, !tbaa !911
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  store i64 0, ptr %i.lw, align 8, !tbaa !912
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  store i64 -1, ptr %i.lx, align 8, !tbaa !842
end_hunk_1
