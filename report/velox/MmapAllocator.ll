inline.NumInlined: 3478
inline.NumDeleted: 1648
begin_hunk_0_@_ZNK8facebook5velox6memory13MmapAllocator9SizeClass8toStringB5cxx11Ev:bb.a
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !121 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !109
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dh, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.do) #31
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.dp, ptr %2, align 8, !tbaa !11
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dr = getelementptr i8, ptr %i.dp, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr %2, i64 %i.ds
  store ptr %i.dq, ptr %i.dt, align 8, !tbaa !11
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.du, align 8, !tbaa !304
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dv) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.n:                                             ; preds = %bb.j
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c, %bb.i
  %.pn25 = phi { ptr, i32 } [ %i.av, %bb.c ], [ %i.ce, %bb.i ], [ %i.dw, %bb.n ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cv, %bb.l ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn25
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass8allocateEiRmRNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(address_is_null) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #39
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass14allocateLockedEiPmRNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  ret i1 %i.c

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass14allocateLockedEiPmRNS1_10AllocationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.113", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !269  ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.e) ; 4 uses
  %i.f = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !157
  %i.i = sext i32 %i.h to i64
  tail call void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %i.j = load i32, ptr %i.g, align 8, !tbaa !157
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !182
  %i.o = udiv i64 %i.l, %i.n                      ; 3 uses
  %i.p = zext nneg i32 %.sroa.speculated to i64
  %.not = icmp eq i64 %i.o, %i.p
  br i1 %.not, label %bb.f, label %bb.c, !prof !117

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !306
  store i64 %i.o, ptr %4, align 16, !tbaa !109, !noalias !306
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.speculated, ptr %i.q, align 16, !tbaa !109, !noalias !306
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.46, i64 47, i64 20, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !306
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory13MmapAllocator9SizeClass14allocateLockedEiPmRNS1_10AllocationEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.46) #39
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 8, !tbaa !121    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !109
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.d, align 4, !tbaa !206
  %i.y = trunc nuw nsw i64 %i.o to i32            ; 2 uses
  %i.z = sub i32 %i.x, %i.y
  store i32 %i.z, ptr %i.d, align 4, !tbaa !206
  %i.aa = sub i32 %1, %i.y
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.049 = phi i32 [ %i.aa, %bb.f ], [ %1, %bb.a ] ; 2 uses
  %i.ab = icmp eq i32 %.049, 0
  br i1 %i.ab, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq ptr %2, null
  br i1 %i.ac, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !270
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit, %bb.i
  %.150.ph = phi i32 [ %i.bz, %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit ], [ %.049, %bb.i ] ; 3 uses
  %.027.ph = phi i32 [ %i.al, %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit ], [ 0, %bb.i ] ; 3 uses
  %.026.ph = phi i32 [ %spec.store.select, %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit ], [ %i.ae, %bb.i ]
  %i.ak = load ptr, ptr %i.af, align 8
  %umax = tail call i32 @llvm.umax.i32(i32 %.027.ph, i32 %i.b)
  %exitcond.not73.not = icmp ult i32 %.027.ph, %i.b
  br i1 %exitcond.not73.not, label %.lr.ph, label %.thread

bb.j:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %i.al, %umax
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !309

.lr.ph:                                           ; preds = %.outer, %bb.j
  %.02675 = phi i32 [ %spec.store.select, %bb.j ], [ %.026.ph, %.outer ] ; 2 uses
  %.02774 = phi i32 [ %i.al, %bb.j ], [ %.027.ph, %.outer ]
  %i.al = add i32 %.02774, 1                      ; 3 uses
  %i.am = add i32 %.02675, 1                      ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.not29 = icmp ult i64 %i.an, %i.c
  %spec.store.select = select i1 %.not29, i32 %i.am, i32 0 ; 5 uses
  %i.ao = zext i32 %spec.store.select to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !69 ; 2 uses
  %.not31 = icmp eq i64 %i.aq, -1
  br i1 %.not31, label %bb.j, label %bb.k, !llvm.loop !309

bb.k:                                             ; preds = %.lr.ph
  %i.ar = sext i32 %spec.store.select to i64      ; 2 uses
  %i.as = xor i64 %i.aq, -1                       ; 2 uses
  %i.at = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.as)
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.150.ph, i32 %i.au) ; 3 uses
  %i.av = icmp sgt i32 %.150.ph, 0
  br i1 %i.av, label %.lr.ph.i, label %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit

.lr.ph.i:                                         ; preds = %bb.k
  %i.aw = shl nsw i32 %spec.store.select, 6
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.lr.ph.i
  %.023.i = phi i64 [ %i.as, %.lr.ph.i ], [ %i.bx, %bb.o ] ; 3 uses
  %.01922.i = phi i32 [ 0, %.lr.ph.i ], [ %i.by, %bb.o ]
  %i.ax = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.023.i, i1 true) ; 4 uses
  %6 = trunc nuw nsw i64 %i.ax to i32
  %i.ay = load ptr, ptr %i.af, align 8, !tbaa !113
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ar
  %i.ba = trunc nuw nsw i64 %i.ax to i8
  %i.bb = and i8 %i.ba, 7
  %i.bc = shl nuw i8 1, %i.bb
  %i.bd = lshr i64 %i.ax, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !109
  %i.bg = or i8 %i.bc, %i.bf
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !109
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !113
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.ar
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !69
  %i.bk = shl nuw i64 1, %i.ax
  %i.bl = and i64 %i.bj, %i.bk
  %.not.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = load i64, ptr %i.ah, align 8, !tbaa !182
  %i.bn = load i64, ptr %2, align 8, !tbaa !69
  %i.bo = add i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %2, align 8, !tbaa !69
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bp = load i32, ptr %i.d, align 4, !tbaa !206
  %i.bq = add nsw i32 %i.bp, -1
  store i32 %i.bq, ptr %i.d, align 4, !tbaa !206
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.br = load ptr, ptr %i.ai, align 8, !tbaa !180
  %i.bs = load i64, ptr %i.ah, align 8, !tbaa !182 ; 2 uses
  %7 = or disjoint i32 %i.aw, %6
  %8 = sext i32 %7 to i64
  %i.bt = shl nsw i64 %8, 12
  %i.bu = mul i64 %i.bt, %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bu
  tail call void @_ZN8facebook5velox6memory10Allocation6appendEPhm(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %i.bv, i64 noundef %i.bs)
  %i.bw = add i64 %.023.i, -1
  %i.bx = and i64 %i.bw, %.023.i
  %i.by = add nuw nsw i32 %.01922.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.by, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit, label %bb.l, !llvm.loop !310

_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit: ; preds = %bb.o, %bb.k
  %i.bz = sub nsw i32 %.150.ph, %.sroa.speculated.i ; 2 uses
  %i.ca = sext i32 %.sroa.speculated.i to i64
  %i.cb = load i64, ptr %i.aj, align 8, !tbaa !311
  %i.cc = add i64 %i.cb, %i.ca
  store i64 %i.cc, ptr %i.aj, align 8, !tbaa !311
  %.not32 = icmp eq i32 %i.bz, 0
  br i1 %.not32, label %.thread54, label %.outer

.thread54:                                        ; preds = %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit
  store i32 %.02675, ptr %i.ad, align 8, !tbaa !270
  br label %.thread

.thread:                                          ; preds = %.outer, %bb.j, %.thread54, %bb.h, %bb.g
  %.5 = phi i1 [ false, %bb.h ], [ true, %bb.g ], [ true, %.thread54 ], [ false, %bb.j ], [ false, %.outer ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS1_10AllocationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.xsimd::batch", align 32     ; 5 uses
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %.thread65

.thread65:                                        ; preds = %._crit_edge, %bb.a
  %.040 = phi i32 [ %1, %bb.a ], [ %.24261, %._crit_edge ]
  %i.f = tail call noundef i32 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass19findMappedFreeGroupEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 4 uses
  %i.g = shl i32 %i.f, 3                          ; 3 uses
  %i.h = add i32 %i.g, 8                          ; 3 uses
  %.not101 = icmp eq i32 %i.g, -8
  br i1 %.not101, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread65
  %i.i = sext i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread56
  %indvars.iv114 = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next115, %.thread56 ] ; 5 uses
  %.099 = phi i1 [ false, %.lr.ph.preheader ], [ %.163, %.thread56 ]
  %.14197 = phi i32 [ %.040, %.lr.ph.preheader ], [ %.24261, %.thread56 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !113, !noalias !312
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv114
  %i.l = load <4 x i64>, ptr %i.k, align 1, !tbaa !109, !noalias !315
  %i.m = xor <4 x i64> %i.l, splat (i64 -1)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !113, !noalias !312
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv114
  %i.p = load <4 x i64>, ptr %i.o, align 1, !tbaa !109, !noalias !322
  %i.q = and <4 x i64> %i.p, %i.m                 ; 2 uses
  store <4 x i64> %i.q, ptr %3, align 32, !alias.scope !329
  %i.r = icmp ne <4 x i64> %i.q, zeroinitializer
  %i.s = bitcast <4 x i1> %i.r to i4              ; 2 uses
  %i.t = icmp eq i4 %i.s, 0
  %.pre = trunc nsw i64 %indvars.iv114 to i32     ; 2 uses
  br i1 %i.t, label %.thread56, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.u = tail call range(i4 0, 5) i4 @llvm.cttz.i4(i4 %i.s, i1 true)
  %i.v = shl i64 %indvars.iv114, 6
  %i.w = zext nneg i4 %i.u to i64
  %i.x = shl nuw nsw i64 %i.w, 6
  br label %bb.b

bb.b:                                             ; preds = %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i", %.lr.ph.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i" ], [ %i.x, %.lr.ph.i.i ] ; 4 uses
  %.4 = phi i32 [ %.6, %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i" ], [ %.14197, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %i.y = lshr exact i64 %indvars.iv, 3
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !69  ; 2 uses
  %.not.i46.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i46.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i", label %.preheader.i47.i.i.preheader

.preheader.i47.i.i.preheader:                     ; preds = %bb.b
  %i.ab = add i64 %i.v, %indvars.iv
  %.masked = and i64 %i.ab, 4294967232
  %.not.i.not.not.i49.i.i141 = icmp eq i32 %.4, 0
  br i1 %.not.i.not.not.i49.i.i141, label %.thread65.thread, label %.lr.ph144

.preheader.i47.i.i:                               ; preds = %.lr.ph144
  %.not.i.not.not.i49.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.not.not.i49.i.i, label %.thread65.thread, label %.lr.ph144, !llvm.loop !332

.lr.ph144:                                        ; preds = %.preheader.i47.i.i.preheader, %.preheader.i47.i.i
  %.012.i.i.i143 = phi i64 [ %i.at, %.preheader.i47.i.i ], [ %i.aa, %.preheader.i47.i.i.preheader ] ; 3 uses
  %.5142 = phi i32 [ %i.ar, %.preheader.i47.i.i ], [ %.4, %.preheader.i47.i.i.preheader ]
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i143, i1 true) ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.ae = or disjoint i64 %.masked, %i.ac         ; 2 uses
  %i.af = trunc nuw nsw i64 %i.ac to i8
  %i.ag = and i8 %i.af, 7
  %i.ah = shl nuw i8 1, %i.ag
  %i.ai = lshr i64 %i.ae, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !109
  %i.al = or i8 %i.ak, %i.ah
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !109
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !180
  %i.an = load i64, ptr %i.d, align 8, !tbaa !182 ; 2 uses
  %i.ao = shl nuw nsw i64 %i.ae, 12
  %i.ap = mul i64 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  tail call void @_ZN8facebook5velox6memory10Allocation6appendEPhm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.aq, i64 noundef %i.an)
  %i.ar = add nsw i32 %.5142, -1                  ; 3 uses
  %i.as = add i64 %.012.i.i.i143, -1
  %i.at = and i64 %i.as, %.012.i.i.i143           ; 2 uses
  %.not11.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not11.i.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i", label %.preheader.i47.i.i, !llvm.loop !332

"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i": ; preds = %.lr.ph144, %bb.b
  %.6 = phi i32 [ %.4, %bb.b ], [ %i.ar, %.lr.ph144 ] ; 3 uses
  %i.au = icmp samesign ugt i64 %indvars.iv, 128
  br i1 %i.au, label %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit", label %bb.b, !llvm.loop !333

"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit": ; preds = %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i"
  %.not = icmp eq i32 %.6, 0
  br i1 %.not, label %.preheader, label %.thread56

.preheader:                                       ; preds = %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit"
  %i.av = load ptr, ptr %i.b, align 8
  %i.aw = load ptr, ptr %i.a, align 8
  %storemerge23145 = add nuw i32 %.pre, 4         ; 2 uses
  %i.ax = icmp ult i32 %storemerge23145, %i.h
  br i1 %i.ax, label %.lr.ph147, label %._crit_edge148

bb.c:                                             ; preds = %.lr.ph147
  %storemerge23 = add nuw i32 %storemerge23146, 4 ; 2 uses
  %i.ay = icmp ult i32 %storemerge23, %i.h
  br i1 %i.ay, label %.lr.ph147, label %._crit_edge148, !llvm.loop !334

.lr.ph147:                                        ; preds = %.preheader, %bb.c
  %storemerge23146 = phi i32 [ %storemerge23, %bb.c ], [ %storemerge23145, %.preheader ] ; 2 uses
  %i.az = sext i32 %storemerge23146 to i64        ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load <4 x i64>, ptr %i.ba, align 1, !tbaa !109, !noalias !335
  %i.bc = xor <4 x i64> %i.bb, splat (i64 -1)
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.az
  %i.be = load <4 x i64>, ptr %i.bd, align 1, !tbaa !109, !noalias !344
  %i.bf = and <4 x i64> %i.be, %i.bc
  %i.bg = icmp ne <4 x i64> %i.bf, zeroinitializer
  %i.bh = bitcast <4 x i1> %i.bg to i4
  %i.bi = icmp eq i4 %i.bh, 0
  br i1 %i.bi, label %bb.c, label %.thread65.thread, !llvm.loop !334

._crit_edge148:                                   ; preds = %bb.c, %.preheader
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.bk = zext i32 %i.f to i64                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !109
  %i.bo = and i64 %i.bk, 7
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !109
  %i.br = and i8 %i.bq, %i.bn
  store i8 %i.br, ptr %i.bm, align 1, !tbaa !109
  br label %.thread65.thread

.thread65.thread:                                 ; preds = %.preheader.i47.i.i.preheader, %.preheader.i47.i.i, %.lr.ph147, %._crit_edge148
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.f

.thread56:                                        ; preds = %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit", %.lr.ph
  %.163 = phi i1 [ %.099, %.lr.ph ], [ true, %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit" ] ; 2 uses
  %.24261 = phi i32 [ %.14197, %.lr.ph ], [ %.6, %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bs = add nuw i32 %.pre, 4
  %i.bt = icmp ult i32 %i.bs, %i.h
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 4
  br i1 %i.bt, label %.lr.ph, label %._crit_edge, !llvm.loop !351

._crit_edge:                                      ; preds = %.thread56
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.bv = zext i32 %i.f to i64                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !109
  %i.bz = and i64 %i.bv, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !109
  %i.cc = and i8 %i.cb, %i.by
  store i8 %i.cc, ptr %i.bx, align 1, !tbaa !109
  br i1 %.163, label %.thread65, label %.loopexit, !llvm.loop !352

.critedge:                                        ; preds = %.thread65
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.ce = lshr i32 %i.f, 3
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !109
  %i.ci = and i8 %i.ch, 127
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str, i32 noundef 774, i32 noundef 2)
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %.loopexit
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.48, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !182
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i64 noundef %i.cm)
          to label %.thread71 unwind label %bb.e  ; 0 uses

.thread71:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %.loopexit
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.co

bb.f:                                             ; preds = %.thread65.thread, %.thread71
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69
  %i.f = xor i64 %i.e, -1                         ; 2 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.f)
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.h) ; 3 uses
  %i.j = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = shl nsw i32 %1, 6
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %2, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.p = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.a ]
  %i.q = sub nsw i32 %i.p, %.sroa.speculated
  store i32 %i.q, ptr %2, align 4, !tbaa !3
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.023 = phi i64 [ %i.f, %.lr.ph ], [ %i.ar, %bb.e ] ; 3 uses
  %.01922 = phi i32 [ 0, %.lr.ph ], [ %i.as, %bb.e ]
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.023, i1 true) ; 4 uses
  %5 = trunc nuw nsw i64 %i.r to i32
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.b
  %i.u = trunc nuw nsw i64 %i.r to i8
  %i.v = and i8 %i.u, 7
  %i.w = shl nuw i8 1, %i.v
  %i.x = lshr i64 %i.r, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !109
  %i.aa = or i8 %i.z, %i.w
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !109
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.b
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !69
  %i.ae = shl nuw i64 1, %i.r
  %i.af = and i64 %i.ad, %i.ae
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !182
  %i.ah = load i64, ptr %3, align 8, !tbaa !69
  %i.ai = add i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %3, align 8, !tbaa !69
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !206
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.l, align 4, !tbaa !206
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !180
  %i.am = load i64, ptr %i.m, align 8, !tbaa !182 ; 2 uses
  %6 = or disjoint i32 %i.o, %5
  %7 = sext i32 %6 to i64
  %i.an = shl nsw i64 %7, 12
  %i.ao = mul i64 %i.an, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  tail call void @_ZN8facebook5velox6memory10Allocation6appendEPhm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %i.ap, i64 noundef %i.am)
  %i.aq = add i64 %.023, -1
  %i.ar = and i64 %i.aq, %.023
  %i.as = add nuw nsw i32 %.01922, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !310
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass19findMappedFreeGroupEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  %spec.store.select = select i1 %i.d, i32 0, i32 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !272
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !113  ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = add nsw i64 %i.l, 8
  %i.n = add nsw i64 %i.l, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ]
  %.02039 = phi i32 [ %spec.store.select, %bb.a ], [ %i.v, %bb.c ] ; 3 uses
  %i.o = sext i32 %.02039 to i64                  ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.o
  %i.q = load <4 x i64>, ptr %i.p, align 1, !tbaa !109, !noalias !353
  %i.r = icmp eq <4 x i64> %i.q, zeroinitializer
  %i.s = bitcast <4 x i1> %i.r to i4              ; 2 uses
  %.not26 = icmp eq i4 %i.s, -1
  br i1 %.not26, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.t = add nsw i32 %.02039, 4                   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %.not27 = icmp ult i64 %i.n, %i.u
  %i.v = select i1 %.not27, i32 0, i32 %i.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp ult i64 %i.m, %indvars.iv.next
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !360

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.w = call noundef i32 @_ZNK8facebook5velox6memory13MmapAllocator9SizeClass16checkConsistencyERiS4_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 710)
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %.critedge
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.47, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !182
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %i.ab)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %1) #40
  unreachable

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %.critedge
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %1) #40
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ae = xor i4 %i.s, -1
  store i32 %.02039, ptr %i.b, align 8, !tbaa !271
  %i.af = tail call range(i4 0, 5) i4 @llvm.cttz.i4(i4 %i.ae, i1 true)
  %i.ag = zext nneg i4 %i.af to i64
  %i.ah = add nsw i64 %i.ag, %i.o                 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !69
  %i.ak = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aj, i1 false)
  %i.al = shl nsw i64 %i.ah, 6
  %i.am = add nsw i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32
  ret i32 %i.an
}

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass14mappedFreeBitsEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.xsimd::batch") align 32 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, i32 noundef %2) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load <4 x i64>, ptr %i.d, align 1, !tbaa !109, !noalias !361
  %i.f = xor <4 x i64> %i.e, splat (i64 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.c
  %i.j = load <4 x i64>, ptr %i.i, align 1, !tbaa !109, !noalias !368
  %i.k = and <4 x i64> %i.j, %i.f
  store <4 x i64> %i.k, ptr %0, align 32, !alias.scope !375
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass10adviseAwayERKNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = and i64 %i.g, 34359738360
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit ] ; 2 uses
  %i.o = phi ptr [ %i.d, %.lr.ph ], [ %i.bd, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8, !tbaa !69 ; 3 uses
  %i.q = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !180  ; 3 uses
  %.not.i = icmp ule ptr %i.s, %i.r
  %i.t = load i64, ptr %i.j, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = icmp ugt ptr %i.u, %i.r
  %or.cond.i = select i1 %.not.i, i1 %i.v, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.q, %i.w
  %i.y = load i64, ptr %i.k, align 8, !tbaa !182
  %i.z = shl i64 %i.y, 12
  %i.aa = urem i64 %i.x, %i.z
  %.not8.i = icmp eq i64 %i.aa, 0
  br i1 %.not8.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPhE18veloxCheckFailArgs, ptr noundef nonnull @.str.52) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = lshr i64 %.sroa.0.0.copyload.i, 36
  %i.ac = and i64 %i.ab, 268431360
  %i.ad = call i32 @madvise(ptr noundef %i.r, i64 noundef %i.ac, i32 noundef 4) #31
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 838, i32 noundef 2)
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.g unwind label %bb.i       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.53, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
end_hunk_0
