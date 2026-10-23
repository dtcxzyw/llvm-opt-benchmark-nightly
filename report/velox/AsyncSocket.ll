Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/AsyncSocket?download=true
inline.NumInlined: 4654
inline.NumDeleted: 1878
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5folly11AsyncSocket18failErrMessageReadEPKcRKNS_20AsyncSocketExceptionE:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14308 ; 3 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.critedge29
  store ptr null, ptr %i.bc, align 8, !tbaa !14308
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !690
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %2) #41, !call_target !14618
  br label %bb.o

bb.k:                                             ; preds = %_ZN5follylsERSoRKNS_11AsyncSocket9StateEnumE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit, %.noexc31, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.m:                                             ; preds = %bb.i, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, %bb.g, %bb.f, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !14255 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.m
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !14192
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.bj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.bh, %bb.k ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %bb.j, %.critedge29
  %i.bp = load ptr, ptr %0, align 8, !tbaa !690
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 832
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef nonnull align 8 dereferenceable(24) %2), !call_target !1201, !inline_history !14612
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !14170 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not10.i.i.i, label %_ZN5folly11AsyncSocket13failAllWritesERKNS_20AsyncSocketExceptionE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.q
  %i.bu = phi ptr [ %i.ci, %bb.q ], [ %i.bt, %bb.o ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !14199
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !14170
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !14200 ; 3 uses
  %.not9.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !14201
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !690
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i64 noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %2) #41, !call_target !14205, !inline_history !14610
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %i.cf = load ptr, ptr %i.bu, align 8, !tbaa !690
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(52) %i.bu), !call_target !10240, !inline_history !14610
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !14170 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZN5folly11AsyncSocket13failAllWritesERKNS_20AsyncSocketExceptionE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !635

_ZN5folly11AsyncSocket13failAllWritesERKNS_20AsyncSocketExceptionE.exit.i.i: ; preds = %bb.q, %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !14208
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 880
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !14209
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !14175 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i, label %_ZN5folly11AsyncSocket10finishFailERKNS_20AsyncSocketExceptionE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5folly11AsyncSocket13failAllWritesERKNS_20AsyncSocketExceptionE.exit.i.i
  store ptr null, ptr %i.cm, align 8, !tbaa !14175
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !690
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(9) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %2) #41, !call_target !14615, !inline_history !14612
  br label %_ZN5folly11AsyncSocket10finishFailERKNS_20AsyncSocketExceptionE.exit

_ZN5folly11AsyncSocket10finishFailERKNS_20AsyncSocketExceptionE.exit: ; preds = %_ZN5folly11AsyncSocket13failAllWritesERKNS_20AsyncSocketExceptionE.exit.i.i, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5folly11AsyncSocket30processZeroCopyWriteInProgressEv(ptr noundef nonnull align 8 dereferenceable(1169) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14354
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !690
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 744
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(1169) %0) #41, !call_target !1130 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !14354
  %i.i = icmp eq i64 %i.h, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef ptr @_ZN5folly7TcpInfo15IoctlDispatcher18getDefaultInstanceEv() local_unnamed_addr #4

declare noundef ptr @_ZN5folly17TcpInfoDispatcher11getInstanceEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE16makeSizeInternalILb1ELb0EZNS4_12emplace_backIJRKS3_EEERS3_DpOT_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.25) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !14240  ; 2 uses
  %.not.i.i = icmp sgt i64 %i.b, -1
  br i1 %.not.i.i, label %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8capacityEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = and i64 %i.b, 4611686018427387904
  %.not1.i.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14192 ; 3 uses
  br i1 %.not1.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8capacityEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14003
  br label %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8capacityEv.exit.i

bb.g:                                             ; preds = %bb.d
  %i.h = tail call noundef i64 @malloc_usable_size(ptr noundef %i.e) #41
  %i.i = lshr i64 %i.h, 3
  br label %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8capacityEv.exit.i

_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8capacityEv.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.0.i.i = phi i64 [ 2, %bb.c ], [ %i.i, %bb.g ], [ %i.g, %bb.f ], [ 0, %bb.e ]
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.0.i.i, i64 3) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit.i, label %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE14computeNewSizeEv.exit, !prof !14193

_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit.i:     ; preds = %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8capacityEv.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE14computeNewSizeEv.exit: ; preds = %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8capacityEv.exit.i
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = lshr i64 %i.l, 1
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.m, i64 4611686018427387902)
  %.sroa.speculated.i = add nuw nsw i64 %i.n, 1
  %.sroa.speculated36 = tail call i64 @llvm.umax.i64(i64 %1, i64 %.sroa.speculated.i) ; 3 uses
  %i.o = icmp samesign ugt i64 %.sroa.speculated36, 2305843009213693951
  br i1 %i.o, label %_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit, label %bb.h, !prof !14193

_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit:       ; preds = %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE14computeNewSizeEv.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

bb.h:                                             ; preds = %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE14computeNewSizeEv.exit
  %i.p = shl nuw i64 %.sroa.speculated36, 3
  %i.q = icmp samesign ult i64 %.sroa.speculated36, 100 ; 3 uses
  %i.r = select i1 %i.q, i64 0, i64 8             ; 4 uses
  %i.s = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.p, i64 %i.r) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0         ; 5 uses
  br i1 %i.t, label %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit, label %4, !prof !14193

_ZN5folly11checked_addImvEEbPT_S1_S1_.exit:       ; preds = %bb.h
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

4:                                                ; preds = %bb.h
  %5 = icmp eq i64 %i.u, 0
  br i1 %5, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.i

bb.i:                                             ; preds = %4
  %i.v = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i18 = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i18, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !14193

.split.i:                                         ; preds = %bb.i
  %i.w = icmp sgt i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.i
  %i.x = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #46
  br i1 %i.x, label %bb.j, label %_ZN5folly14goodMallocSizeEm.exit

bb.j:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.y = tail call i64 @nallocx(i64 noundef %i.u, i32 noundef 0) #41 ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  %i.z = select i1 %.not.i, i64 %i.u, i64 %i.y
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %4, %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.j
  %.0.i19 = phi i64 [ 0, %4 ], [ %i.z, %bb.j ], [ %i.u, %_ZN5folly10canNallocxEv.exit.i ], [ %i.u, %.split.i ]
  %i.aa = sub i64 %.0.i19, %i.r                   ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.aa, -8
  %i.ad = add i64 %i.ac, %i.r
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #48 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ae, null
  br i1 %.not.i21, label %bb.k, label %_ZN5folly13checkedMallocEm.exit

bb.k:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #21
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %_ZN5folly14goodMallocSizeEm.exit
  %spec.select = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.r ; 4 uses
  %i.af = load i64, ptr %0, align 8, !tbaa !14240 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %.not1.i.i22 = icmp slt i64 %i.af, 0
  %i.ai = select i1 %.not1.i.i22, ptr %i.ah, ptr %i.ag ; 3 uses
  %i.aj = and i64 %i.af, 4611686018427387903      ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %3 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !15726, !nonnull !1472, !align !14590
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14242
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !14242
  %.not.i24 = icmp eq ptr %i.ai, null
  br i1 %.not.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5folly13checkedMallocEm.exit
  %.idx.i = shl nuw nsw i64 %3, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %spec.select, ptr nonnull align 1 %i.ai, i64 %.idx.i, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly13checkedMallocEm.exit
  %i.an = icmp samesign ult i64 %3, %i.aj
  br i1 %i.an, label %bb.n, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE16makeSizeInternalILb1ELb0EZNS6_12emplace_backIJRKS5_EEERS5_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %.idx47 = shl nuw nsw i64 %3, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = sub nuw nsw i64 %i.aj, %3
  %gepdiff = shl nuw nsw i64 %i.aq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 1 %i.ao, i64 %gepdiff, i1 false)
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE16makeSizeInternalILb1ELb0EZNS6_12emplace_backIJRKS5_EEERS5_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE16makeSizeInternalILb1ELb0EZNS6_12emplace_backIJRKS5_EEERS5_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit: ; preds = %bb.m, %bb.n
  %.not.i27 = icmp sgt i64 %i.af, -1
  %.not6.i = icmp eq ptr %i.ah, null
  %or.cond = select i1 %.not.i27, i1 true, i1 %.not6.i
  br i1 %or.cond, label %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8freeHeapEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE16makeSizeInternalILb1ELb0EZNS6_12emplace_backIJRKS5_EEERS5_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit
  %i.ar = and i64 %i.af, 4611686018427387904
  %.not7.i = icmp eq i64 %i.ar, 0
  br i1 %.not7.i, label %bb.r, label %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE4Data11getCapacityEv.exit.i

_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE4Data11getCapacityEv.exit.i: ; preds = %bb.o
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14003
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.au, 8
  %i.aw = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly11canSdallocxEv.exit.i.i, label %.split.i.i, !prof !14193

.split.i.i:                                       ; preds = %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE4Data11getCapacityEv.exit.i
  %i.ax = icmp sgt i8 %i.aw, 0
  br i1 %i.ax, label %bb.p, label %bb.q

_ZN5folly11canSdallocxEv.exit.i.i:                ; preds = %_ZNK5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE4Data11getCapacityEv.exit.i
  %i.ay = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #46
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @sdallocx(ptr noundef nonnull %i.as, i64 noundef %i.av, i32 noundef 0) #41
  br label %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8freeHeapEv.exit

bb.q:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @free(ptr noundef nonnull %i.as) #41
  br label %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8freeHeapEv.exit

bb.r:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.ah) #41
  br label %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8freeHeapEv.exit

_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8freeHeapEv.exit: ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE16makeSizeInternalILb1ELb0EZNS6_12emplace_backIJRKS5_EEERS5_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, %bb.p, %bb.q, %bb.r
  store ptr %spec.select, ptr %i.ag, align 8, !tbaa !14192
  %i.az = load i64, ptr %0, align 8
  %i.ba = and i64 %i.az, 4611686018427387903
  %storemerge.i28 = select i1 %i.q, i64 -9223372036854775808, i64 -4611686018427387904
  %storemerge.i29 = or disjoint i64 %storemerge.i28, %i.ba
  store i64 %storemerge.i29, ptr %0, align 8, !tbaa !14240
  br i1 %i.q, label %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE11setCapacityEm.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8freeHeapEv.exit
  %i.bb = getelementptr inbounds i8, ptr %spec.select, i64 -8
  store i64 %i.ab, ptr %i.bb, align 8, !tbaa !14003
  br label %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE11setCapacityEm.exit

_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE11setCapacityEm.exit: ; preds = %_ZN5folly12small_vectorIPNS_11AsyncSocket23LegacyLifecycleObserverELm2EvE8freeHeapEv.exit, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket15splitIovecArrayEmmPK5iovecmPS1_Rm(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %8 = alloca %"struct.google::CheckOpString", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %10 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %12 = alloca %"struct.google::CheckOpString", align 8 ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 %1, ptr %i.a, align 8, !tbaa !14003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i64 %0, ptr %i.b, align 8, !tbaa !14003
  %.not.i = icmp ult i64 %1, %0
  br i1 %.not.i, label %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit, label %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, !prof !14193

_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.b

_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.a
  %i.i = call noundef ptr @_ZN6google17MakeCheckOpStringImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.211) ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !14001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.j = load i64, ptr %5, align 8, !tbaa !14003  ; 2 uses
  store i64 %i.j, ptr %i.c, align 8, !tbaa !14003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  store i64 %3, ptr %i.d, align 8, !tbaa !14003
  %.not.i49 = icmp ult i64 %i.j, %3
  br i1 %.not.i49, label %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit51, label %bb.f, !prof !14193

_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit51: ; preds = %bb.b
  %i.k = call noundef ptr @_ZN6google17MakeCheckOpStringImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.212) ; 2 uses
  store ptr %i.k, ptr %8, align 8, !tbaa !14001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  store i64 0, ptr %5, align 8, !tbaa !14003
  %i.l = sub i64 %1, %0                           ; 2 uses
  %i.m = add i64 %i.l, 1
  br label %.lr.ph

bb.c:                                             ; preds = %_ZN6google12Check_GEImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str.3, i32 noundef 3050, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #43
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  store i64 0, ptr %5, align 8, !tbaa !14003
  %i.p = sub i64 %1, %0                           ; 2 uses
  %i.q = add i64 %i.p, 1                          ; 2 uses
  %.not72 = icmp eq i64 %3, 0
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.f
  %i.r = phi i64 [ %i.m, %.thread ], [ %i.q, %bb.f ] ; 4 uses
  %i.s = phi i64 [ %i.l, %.thread ], [ %i.p, %bb.f ]
  %i.t = add i64 %0, 1
  %.neg = xor i64 %i.s, -1
end_hunk_0
