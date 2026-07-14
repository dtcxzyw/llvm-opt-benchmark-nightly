inline.NumInlined: 3478
inline.NumDeleted: 1648
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK8facebook5velox6memory10Allocation5emptyEv:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !156
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !175
  %i.g = icmp eq ptr %i.d, %i.f                   ; 2 uses
  %i.h = icmp eq i32 %i.b, 0                      ; 4 uses
  %i.i = xor i1 %i.h, %i.g
  br i1 %i.i, label %bb.b, label %bb.e, !prof !110

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.j = zext i1 %i.h to i8
  %i.k = zext i1 %i.g to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !176
  store i8 %i.j, ptr %1, align 16, !tbaa !109, !noalias !176
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.k, ptr %i.l, align 16, !tbaa !109, !noalias !176
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.11, i64 11, i64 119, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !176
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory10Allocation11sanityCheckEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.11) #39
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !121    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !109
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8
  %i.t = icmp ne ptr %i.s, null
  %or.cond = select i1 %i.h, i1 %i.t, i1 false, !prof !179
  br i1 %or.cond, label %bb.f, label %_ZNK8facebook5velox6memory10Allocation11sanityCheckEv.exit, !prof !179

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory10Allocation11sanityCheckEvE18veloxCheckFailArgs_1) #39
  unreachable

_ZNK8facebook5velox6memory10Allocation11sanityCheckEv.exit: ; preds = %bb.e
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass4freeERNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.folly::ReadMostlySharedPtr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = and i64 %i.g, 34359738360
  %.not102 = icmp eq i64 %i.h, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = lshr exact i64 %i.g, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !180  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %wide.trip.count = and i64 %i.i, 4294967295
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !69
  %i.p = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %.not.i = icmp ule ptr %i.k, %i.q
  %i.r = icmp ugt ptr %i.n, %i.q
  %or.cond.i = select i1 %.not.i, i1 %i.r, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = ptrtoint ptr %i.k to i64
  %i.u = sub i64 %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !182
  %i.x = shl i64 %i.w, 12
  %i.y = urem i64 %i.u, %i.x
  %.not8.i = icmp eq i64 %i.y, 0
  br i1 %.not8.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPhE18veloxCheckFailArgs, ptr noundef nonnull @.str.52) #39
  unreachable

bb.e:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !183

.thread:                                          ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, label %bb.f

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader: ; preds = %.thread
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !171 ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = icmp ult i32 %i.s, %i.ah
  br i1 %i.ai, label %.lr.ph100, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge

.lr.ph100:                                        ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.g

bb.f:                                             ; preds = %.thread
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.aa) #39
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge: ; preds = %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  %.043.lcssa = phi i64 [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader ], [ %.346, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57 ]
  %i.ao = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #31 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph100, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57
  %i.ap = phi ptr [ %i.ac, %.lr.ph100 ], [ %i.et, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57 ] ; 3 uses
  %i.aq = phi ptr [ %i.ab, %.lr.ph100 ], [ %i.eu, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57 ] ; 2 uses
  %indvars.iv111 = phi i64 [ %indvars.iv, %.lr.ph100 ], [ %indvars.iv.next112, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57 ] ; 2 uses
  %.04398 = phi i64 [ 0, %.lr.ph100 ], [ %.346, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv111
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %i.as = and i64 %.sroa.0.0.copyload.i53, 281474976710655 ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !180 ; 3 uses
  %.not.i54 = icmp ule ptr %i.au, %i.at
  %i.av = load i64, ptr %i.l, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.ax = icmp ugt ptr %i.aw, %i.at
  %or.cond.i55 = select i1 %.not.i54, i1 %i.ax, i1 false
  br i1 %or.cond.i55, label %bb.h, label %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57

bb.h:                                             ; preds = %bb.g
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.as, %i.ay                    ; 2 uses
  %i.ba = load i64, ptr %i.v, align 8, !tbaa !182 ; 3 uses
  %i.bb = shl i64 %i.ba, 12                       ; 2 uses
  %i.bc = urem i64 %i.az, %i.bb
  %i.bd = udiv i64 %i.az, %i.bb                   ; 2 uses
  %.not8.i56 = icmp eq i64 %i.bc, 0
  br i1 %.not8.i56, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPhE18veloxCheckFailArgs, ptr noundef nonnull @.str.52) #39
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.k:                                             ; preds = %bb.h
  %i.bf = lshr i64 %.sroa.0.0.copyload.i53, 48    ; 2 uses
  %.not103 = icmp ugt i64 %i.ba, %i.bf
  br i1 %.not103, label %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %bb.k
  %.lhs.trunc = trunc nuw i64 %i.bf to i16
  %.rhs.trunc = trunc i64 %i.ba to i16
  %i.bg = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i16 %i.bg to i64
  %i.bh = add i64 %i.bd, %.zext
  %sext = shl i64 %i.bd, 32
  %i.bi = ashr exact i64 %sext, 32
  %sext123 = shl i64 %i.bh, 32
  %i.bj = ashr exact i64 %sext123, 32
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %bb.am
  %indvars.iv107 = phi i64 [ %i.bi, %.lr.ph97.preheader ], [ %indvars.iv.next108, %bb.am ] ; 7 uses
  %.14494 = phi i64 [ %.04398, %.lr.ph97.preheader ], [ %.245, %bb.am ] ; 3 uses
  %i.bk = load ptr, ptr %i.aj, align 8, !tbaa !113 ; 2 uses
  %i.bl = lshr i64 %indvars.iv107, 6              ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !69
  %i.bo = and i64 %indvars.iv107, 63
  %i.bp = shl nuw i64 1, %i.bo                    ; 2 uses
  %i.bq = and i64 %i.bn, %i.bp
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %bb.l, label %bb.aj, !prof !110

bb.l:                                             ; preds = %.lr.ph97
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 889, i32 noundef 2)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.n unwind label %bb.v       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.n
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.57, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bu = trunc nsw i64 %indvars.iv107 to i32
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef %i.bu)
          to label %bb.o unwind label %bb.v       ; 2 uses

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.58, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.o
  %i.bx = load i64, ptr %i.v, align 8, !tbaa !182
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i64 noundef %i.bx)
          to label %_ZNSolsEm.exit unwind label %bb.v ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.bz = load i8, ptr @_ZN8facebook5velox17BaseStatsReporter10registeredE, align 1, !tbaa !152, !range !60, !noundef !61
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.p, label %bb.am

bb.p:                                             ; preds = %_ZNSolsEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.cb = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderIN8facebook5velox17BaseStatsReporterEE4ImplINS0_10DefaultTagES9_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8, !noalias !184 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i, label %bb.q, label %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i, !prof !110

bb.q:                                             ; preds = %bb.p
  %i.cc = invoke noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderIN8facebook5velox17BaseStatsReporterEE4ImplINS0_10DefaultTagES9_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
          to label %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i unwind label %bb.x

_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i: ; preds = %bb.q, %bb.p
  %i.cd = phi ptr [ %i.cb, %bb.p ], [ %i.cc, %bb.q ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load atomic i32, ptr %i.ce acquire, align 4, !noalias !190
  %.not.i.i64 = icmp eq i32 %i.cf, 2
  br i1 %.not.i.i64, label %_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i, label %bb.r, !prof !117

bb.r:                                             ; preds = %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !11, !noalias !190
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !190
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(2304) %i.cd)
          to label %_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i unwind label %bb.x, !inline_history !191

_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i: ; preds = %bb.r, %_ZN5folly9SingletonIN8facebook5velox17BaseStatsReporterENS_6detail10DefaultTagES5_E8getEntryEv.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 1160
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !195
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !196, !noalias !195
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 1168
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !200, !noalias !195
  invoke void @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE5resetEPNS_6detail23ReadMostlySharedPtrCoreIS4_EEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ck, ptr noundef %i.cm)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i
  %i.cn = load ptr, ptr %3, align 8, !tbaa !201   ; 3 uses
  %.not76 = icmp eq ptr %i.cn, null
  br i1 %.not76, label %bb.z, label %bb.t, !prof !110

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr nonnull @.str.87, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.87, i64 40), i64 noundef 1)
          to label %bb.z unwind label %bb.y

bb.u:                                             ; preds = %bb.l
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %bb.o, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #31
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.v ], [ %i.cr, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.an

bb.x:                                             ; preds = %_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i, %bb.r, %bb.q
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.y:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  br label %bb.ai

bb.z:                                             ; preds = %bb.t, %bb.s
  %i.cv = load ptr, ptr %i.an, align 8, !tbaa !203 ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = call noundef i64 @_ZN5folly10TLRefCountmmEv(ptr noundef nonnull align 8 dereferenceable(240) %i.cv) #31
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.ab, label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 224
  store ptr null, ptr %i.cz, align 8, !tbaa !204
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 232 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !104 ; 8 uses
  store ptr null, ptr %i.da, align 8, !tbaa !104
  %.not.i.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.dc, align 8, !tbaa !105
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !107
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #31, !inline_history !205
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #31, !inline_history !205
  br label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !109
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.df, %bb.af ], [ %i.dp, %bb.ag ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.ah, label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i, !prof !110

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #31
  br label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i

_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ad, %bb.ab
  call void @_ZN5folly6detail23ReadMostlySharedPtrCoreINS_10TLRefCountEE10decrefWeakEv(ptr noundef nonnull align 8 dereferenceable(240) %i.cv)
  br label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit

_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit: ; preds = %bb.z, %bb.aa, %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory13MmapAllocator9SizeClass10adviseAwayERKNS1_10AllocationE:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.53, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ai = tail call ptr @__errno_location() #41
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  invoke void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.aj)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.ak = load ptr, ptr %3, align 8, !tbaa !121
  %i.al = load i64, ptr %i.m, align 8, !tbaa !125
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ak, i64 noundef %i.al)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.h
  %i.an = load ptr, ptr %3, align 8, !tbaa !121   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.n
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !109
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.k:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !121   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.n
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.k
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !109
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.j
  %.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %i.ar, %bb.i ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.q

bb.m:                                             ; preds = %bb.e
  %i.ay = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ay) #39
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.m
  invoke void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass13setMappedBitsENS1_10Allocation7PageRunEb(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.az = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #31 ; 0 uses
  br label %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit

bb.p:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #31 ; 0 uses
  br label %bb.q

_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !171
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 4294967295
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !379

bb.q:                                             ; preds = %bb.p, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.l ], [ %i.ba, %bb.p ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 3 uses
  %.not = icmp uge ptr %1, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = icmp ult ptr %1, %i.e
  %or.cond = select i1 %.not, i1 %i.f, i1 false   ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !182
  %i.l = shl i64 %i.k, 12
  %i.m = urem i64 %i.i, %i.l
  %.not8 = icmp eq i64 %i.m, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPhE18veloxCheckFailArgs, ptr noundef nonnull @.str.52) #39
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  ret i1 %or.cond
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass13setMappedBitsENS1_10Allocation7PageRunEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i64 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.113", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = and i64 %1, 281474976710655
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !180
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = sub i64 %i.a, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !182  ; 2 uses
  %i.h = shl i64 %i.g, 12                         ; 2 uses
  %i.i = urem i64 %i.e, %i.h                      ; 2 uses
  %i.j = udiv i64 %i.e, %i.h                      ; 6 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !380
  store i64 %i.i, ptr %3, align 16, !tbaa !109, !noalias !380
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.k, align 16, !tbaa !109, !noalias !380
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.56, i64 55, i64 20, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !380
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory13MmapAllocator9SizeClass13setMappedBitsENS1_10Allocation7PageRunEbE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.56) #39
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !121    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !109
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 48
  %i.s = udiv i64 %i.r, %i.g                      ; 5 uses
  %i.t = add i64 %i.s, %i.j                       ; 3 uses
  %sext = shl i64 %i.j, 32
  %i.u = ashr exact i64 %sext, 32                 ; 9 uses
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  br i1 %2, label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.preheader, label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.preheader

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.preheader: ; preds = %.lr.ph
  %i.x = add i64 %i.s, %i.j
  %.neg = add nsw i64 %i.u, 1
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.prol.loopexit, label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.prol

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.prol: ; preds = %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.preheader
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.z = lshr i64 %i.u, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !109
  %i.ac = and i64 %i.j, 7
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !109
  %i.af = and i8 %i.ae, %i.ab
  store i8 %i.af, ptr %i.aa, align 1, !tbaa !109
  %indvars.iv.next.prol = add nuw nsw i64 %i.u, 1
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.prol.loopexit

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.prol.loopexit: ; preds = %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.prol, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.preheader
  %indvars.iv.unr = phi i64 [ %i.u, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.preheader ], [ %indvars.iv.next.prol, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.prol ]
  %i.ag = icmp eq i64 %i.x, %.neg
  br i1 %i.ag, label %._crit_edge, label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.preheader: ; preds = %.lr.ph
  %i.ah = add i64 %i.s, %i.j
  %.neg32 = add nsw i64 %i.u, 1
  %xtraiter30 = and i64 %i.s, 1
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.prol.loopexit, label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.prol

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.prol: ; preds = %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.preheader
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.aj = lshr i64 %i.u, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !109
  %i.am = trunc i64 %i.j to i8
  %i.an = and i8 %i.am, 7
  %i.ao = shl nuw i8 1, %i.an
  %i.ap = or i8 %i.al, %i.ao
  store i8 %i.ap, ptr %i.ak, align 1, !tbaa !109
  %indvars.iv.next21.prol = add nuw nsw i64 %i.u, 1
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.prol.loopexit

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.prol.loopexit: ; preds = %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.prol, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.preheader
  %indvars.iv20.unr = phi i64 [ %i.u, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.preheader ], [ %indvars.iv.next21.prol, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.prol ]
  %i.aq = icmp eq i64 %i.ah, %.neg32
  br i1 %i.aq, label %._crit_edge, label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us: ; preds = %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.prol.loopexit, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us
  %indvars.iv20 = phi i64 [ %indvars.iv.next21.1, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us ], [ %indvars.iv20.unr, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.prol.loopexit ] ; 4 uses
  %i.ar = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.as = lshr i64 %indvars.iv20, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !109
  %i.av = trunc i64 %indvars.iv20 to i8
  %i.aw = and i8 %i.av, 7
  %i.ax = shl nuw i8 1, %i.aw
  %i.ay = or i8 %i.au, %i.ax
  store i8 %i.ay, ptr %i.at, align 1, !tbaa !109
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.ba = lshr i64 %indvars.iv.next21, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !109
  %i.bd = trunc i64 %indvars.iv.next21 to i8
  %i.be = and i8 %i.bd, 7
  %i.bf = shl nuw i8 1, %i.be
  %i.bg = or i8 %i.bc, %i.bf
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !109
  %indvars.iv.next21.1 = add nuw nsw i64 %indvars.iv20, 2 ; 2 uses
  %i.bh = icmp ugt i64 %i.t, %indvars.iv.next21.1
  br i1 %i.bh, label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us, label %._crit_edge, !llvm.loop !383

._crit_edge:                                      ; preds = %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.prol.loopexit, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us.prol.loopexit, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.us, %bb.e
  ret void

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit:    ; preds = %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.prol.loopexit, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit ], [ %indvars.iv.unr, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit.prol.loopexit ] ; 4 uses
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.bj = lshr i64 %indvars.iv, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !109
  %i.bm = and i64 %indvars.iv, 7
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !109
  %i.bp = and i8 %i.bo, %i.bl
  store i8 %i.bp, ptr %i.bk, align 1, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.br = lshr i64 %indvars.iv.next, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !109
  %i.bu = and i64 %indvars.iv.next, 7
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !109
  %i.bx = and i8 %i.bw, %i.bt
  store i8 %i.bx, ptr %i.bs, align 1, !tbaa !109
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.by = icmp ugt i64 %i.t, %indvars.iv.next.1
  br i1 %i.by, label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit, label %._crit_edge, !llvm.loop !383
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE5resetEPNS_6detail23ReadMostlySharedPtrCoreIS4_EEPS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZN5folly10TLRefCountmmEv(ptr noundef nonnull align 8 dereferenceable(240) %i.b) #31
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE5resetEPNS_6detail23ReadMostlySharedPtrCoreIS4_EEPS3_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr null, ptr %i.f, align 8, !tbaa !204
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 8 uses
  store ptr null, ptr %i.g, align 8, !tbaa !104
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !107
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !384
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !384
  br label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !109
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i, !prof !110

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  br label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i

_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  tail call void @_ZN5folly6detail23ReadMostlySharedPtrCoreINS_10TLRefCountEE10decrefWeakEv(ptr noundef nonnull align 8 dereferenceable(240) %i.b)
  br label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE5resetEPNS_6detail23ReadMostlySharedPtrCoreIS4_EEPS3_.exit

_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEE5resetEPNS_6detail23ReadMostlySharedPtrCoreIS4_EEPS3_.exit: ; preds = %bb.b, %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox6memory13MmapAllocator16checkConsistencyEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1088) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = sext i32 %i.y to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit ] ; 2 uses
  %.014.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %._crit_edge.loopexit ] ; 2 uses
  %i.i = sext i32 %.014.lcssa to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.m = load atomic i64, ptr %i.l seq_cst, align 8
  %i.n = sub i64 %i.k, %i.m
  %.not = icmp eq i64 %i.n, %i.i
  br i1 %.not, label %bb.f, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01435 = phi i32 [ %i.v, %.lr.ph ], [ 0, %bb.a ]
  %.01534 = phi i32 [ %i.y, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.030.033 = phi ptr [ %i.z, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.o = load ptr, ptr %.sroa.030.033, align 8, !tbaa !77
end_hunk_1
