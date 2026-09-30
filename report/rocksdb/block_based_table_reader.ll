Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_based_table_reader?download=true
inline.NumInlined: 8948
inline.NumDeleted: 2868
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK7rocksdb15BlockBasedTable19PutDataBlockToCacheINS_16DecompressorDictEEENSt9enable_ifIXooeqsrT_15kCacheEntryRoleLNS_14CacheEntryRoleE13ELb1EENS_6StatusEE4typeERKNS_5SliceENS_23FullTypedCacheInterfaceIS4_NS_18BlockCreateContextEXsrS4_15kCacheEntryRoleEPNS_5CacheEEEPNS_13CachableEntryIS4_EEONS_13BlockContentsESL_NS_15CompressionTypeENS_10UnownedPtrINS_12DecompressorEEEPNS_15MemoryAllocatorEPNS_10GetContextE:bb.a
_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE14SetCachedValueEPS1_PNS_5CacheEPNS4_6HandleE.exit: ; preds = %bb.t, %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp eq i8 %i.cs, 12
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !177
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !288, !nonnull !120, !align !289
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 584
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !335
  invoke void @_ZN7rocksdb15BlockBasedTable27UpdateCacheInsertionMetricsENS_9BlockTypeEPNS_10GetContextEmbPNS_10StatisticsE(i8 noundef zeroext 4, ptr noundef %10, i64 noundef %i.an, i1 noundef zeroext %i.ct, ptr noundef %i.cx)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %bb.z

bb.y:                                             ; preds = %_ZN7rocksdb20FullTypedCacheHelperINS_16DecompressorDictENS_18BlockCreateContextELNS_14CacheEntryRoleE5EE13GetFullHelperEv.exit.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.cy, %bb.y ], [ %i.ba, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %bb.ac

bb.z:                                             ; preds = %bb.ab, %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE14SetCachedValueEPS1_PNS_5CacheEPNS4_6HandleE.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.aa:                                            ; preds = %bb.s
  %.not.i36 = icmp eq ptr %i.g, null
  br i1 %.not.i36, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 176
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i32 noundef 3, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %bb.z, !inline_history !7

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %bb.aa, %bb.ab, %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE14SetCachedValueEPS1_PNS_5CacheEPNS4_6HandleE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE13SetOwnedValueEOSt10unique_ptrIS1_St14default_deleteIS1_EE.exit

bb.ac:                                            ; preds = %bb.z, %.body
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.z ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %.pre53 = load ptr, ptr %i.e, align 8, !tbaa !112
  br label %bb.an

bb.ad:                                            ; preds = %bb.h, %bb.g
  %i.dd = load ptr, ptr %4, align 8, !tbaa !492   ; 4 uses
  %i.de = icmp eq ptr %i.dd, %.pre54
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 8, !range !119
  %i.dh = trunc nuw i8 %i.dg to i1                ; 2 uses
  %or.cond.i = select i1 %i.de, i1 %i.dh, i1 false, !prof !653
  br i1 %or.cond.i, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE13SetOwnedValueEOSt10unique_ptrIS1_St14default_deleteIS1_EE.exit, label %.critedge.i37, !prof !653

.critedge.i37:                                    ; preds = %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !495 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i38, label %bb.af, label %bb.ae, !prof !471

bb.ae:                                            ; preds = %.critedge.i37
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !496 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !92
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 184
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = invoke noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(80) %i.dl, ptr noundef nonnull %i.dj, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE13SetOwnedValueEOSt10unique_ptrIS1_St14default_deleteIS1_EE.exit.thread unwind label %bb.ah ; 0 uses

bb.af:                                            ; preds = %.critedge.i37
  %i.dq = icmp ne ptr %i.dd, null
  %or.cond5.not.i = and i1 %i.dq, %i.dh
  br i1 %or.cond5.not.i, label %bb.ag, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE13SetOwnedValueEOSt10unique_ptrIS1_St14default_deleteIS1_EE.exit.thread

bb.ag:                                            ; preds = %bb.af
  call void @_ZN7rocksdb16DecompressorDictD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dd) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 64) #39
  br label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE13SetOwnedValueEOSt10unique_ptrIS1_St14default_deleteIS1_EE.exit.thread

bb.ah:                                            ; preds = %bb.ae
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #41
  unreachable

_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE13SetOwnedValueEOSt10unique_ptrIS1_St14default_deleteIS1_EE.exit.thread: ; preds = %bb.ae, %bb.af, %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  %i.du = load ptr, ptr %11, align 8, !tbaa !738
  store ptr %i.du, ptr %4, align 8, !tbaa !492
  store i8 1, ptr %i.df, align 8, !tbaa !497
  br label %_ZNSt10unique_ptrIN7rocksdb16DecompressorDictESt14default_deleteIS1_EED2Ev.exit

_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE13SetOwnedValueEOSt10unique_ptrIS1_St14default_deleteIS1_EE.exit: ; preds = %bb.ad, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, %bb.d
  %.pr = load ptr, ptr %11, align 8, !tbaa !738   ; 7 uses
  %.not.i40 = icmp eq ptr %.pr, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN7rocksdb16DecompressorDictESt14default_deleteIS1_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE13SetOwnedValueEOSt10unique_ptrIS1_St14default_deleteIS1_EE.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %.pr, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !493 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb12DecompressorESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb12DecompressorEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb12DecompressorEEclEPS1_.exit.i.i.i.i: ; preds = %bb.ai
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !92
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) #38, !inline_history !25
  br label %_ZNSt10unique_ptrIN7rocksdb12DecompressorESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN7rocksdb12DecompressorESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb12DecompressorEEclEPS1_.exit.i.i.i.i, %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !112 ; 3 uses
  %.not.i1.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i1.i.i.i, label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb12DecompressorESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !145 ; 3 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i41, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !92
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 160
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull %i.eb)
          to label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit.i.i.i unwind label %bb.am, !inline_history !3

bb.al:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.eb) #39
  br label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #41
  unreachable

_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit.i.i.i: ; preds = %bb.al, %bb.ak, %_ZNSt10unique_ptrIN7rocksdb12DecompressorESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.ej = load ptr, ptr %.pr, align 8, !tbaa !95  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNKSt14default_deleteIN7rocksdb16DecompressorDictEEclEPS1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit.i.i.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !96
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #39
  br label %_ZNKSt14default_deleteIN7rocksdb16DecompressorDictEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb16DecompressorDictEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 64) #39
  br label %_ZNSt10unique_ptrIN7rocksdb16DecompressorDictESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb16DecompressorDictESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE13SetOwnedValueEOSt10unique_ptrIS1_St14default_deleteIS1_EE.exit.thread, %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE13SetOwnedValueEOSt10unique_ptrIS1_St14default_deleteIS1_EE.exit, %_ZNKSt14default_deleteIN7rocksdb16DecompressorDictEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  ret void

bb.an:                                            ; preds = %bb.ac, %bb.e
  %i.eo = phi ptr [ %.pre53, %bb.ac ], [ %i.ac, %bb.e ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.ab, %bb.e ] ; 2 uses
  call void @_ZNSt10unique_ptrIN7rocksdb16DecompressorDictESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %.not.i.i42 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i42, label %_ZN7rocksdb6StatusD2Ev.exit44, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i43

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i43: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.eo) #39
  br label %_ZN7rocksdb6StatusD2Ev.exit44

_ZN7rocksdb6StatusD2Ev.exit44:                    ; preds = %.thread75, %bb.an, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i43
  %.pn.pn78 = phi { ptr, i32 } [ %i.aa, %.thread75 ], [ %.pn.pn, %bb.an ], [ %.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i43 ]
  resume { ptr, i32 } %.pn.pn78
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb15BlockBasedTable30SaveLookupContextOrTraceRecordINS_16DecompressorDictEEENSt9enable_ifIXooeqsrT_15kCacheEntryRoleLNS_14CacheEntryRoleE13ELb1EEvE4typeERKNS_5SliceEbRKNS_11ReadOptionsEPKS4_PNS_23BlockCacheLookupContextE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(192) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !746
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !426
  %i.e = icmp eq i32 %i.d, 1
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 73
  %10 = load i8, ptr %9, align 1, !range !119
  %11 = trunc nuw i8 %10 to i1
  %12 = xor i1 %11, true
  %13 = select i1 %i.e, i1 true, i1 %12           ; 2 uses
  %14 = load i8, ptr %5, align 8, !tbaa !521
  %15 = tail call noundef zeroext i1 @_ZN7rocksdb21BlockCacheTraceHelper26IsGetOrMultiGetOnDataBlockENS_9TraceTypeENS_17TableReaderCallerE(i8 noundef signext 10, i8 noundef signext %14)
  br i1 %15, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false)
  %i.f = zext i1 %2 to i8
  %16 = zext i1 %13 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !522
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %16, ptr %i.h, align 2, !tbaa !523
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 10, ptr %i.i, align 1, !tbaa !513
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.033, ptr %i.j, align 8, !tbaa !359
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %i.l, align 8, !tbaa !362
  %i.m = load ptr, ptr %6, align 8, !tbaa !95     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.n, align 8, !tbaa !96
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %6, align 8, !tbaa !95     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.f
  %i.v = load i64, ptr %i.t, align 8, !tbaa !96
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.x, ptr %7, align 8, !tbaa !360
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !361
  store i8 0, ptr %i.x, align 8, !tbaa !96
  %i.z = zext i1 %2 to i8
  %17 = zext i1 %13 to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !522
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %17, ptr %i.ab, align 2, !tbaa !523
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 10, ptr %i.ac, align 1, !tbaa !513
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.033, ptr %i.ad, align 8, !tbaa !359
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %i.af, align 8, !tbaa !362
  %i.ag = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.x
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.h
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !96
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95
  store ptr %i.al, ptr %8, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !361
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !83
  call void @_ZNK7rocksdb15BlockBasedTable17FinishTraceRecordERKNS_23BlockCacheLookupContextERKNS_5SliceES6_bm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(97) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext false, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.x
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.i
  %i.as = load i64, ptr %i.x, align 8, !tbaa !96
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK7rocksdb15BlockBasedTable25LookupAndPinBlocksInCacheINS_16DecompressorDictEEENS_6StatusERKNS_11ReadOptionsERKNS_11BlockHandleEPNS_13CachableEntryIT_EE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rocksdb::CachableEntry.278", align 8 ; 13 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %9 = alloca %"class.rocksdb::CacheKey", align 8 ; 6 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 7 uses
  %11 = alloca %"struct.rocksdb::BlockCreateContext", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139  ; 13 uses
  %.not70 = icmp eq ptr %i.d, null
  br i1 %.not70, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !109, !alias.scope !1342
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1342
  br label %_ZN7rocksdb6StatusD2Ev.exit60

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %5, i8 0, i64 25, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !487  ; 2 uses
  %.not71 = icmp eq ptr %i.g, null
  br i1 %.not71, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  invoke void @_ZNK7rocksdb23UncompressionDictReader32GetOrReadUncompressionDictionaryEPNS_18FilePrefetchBufferERKNS_11ReadOptionsEPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_13CachableEntryINS_16DecompressorDictEEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef null, ptr noundef null, ptr noundef nonnull %5)
          to label %_ZN7rocksdb6StatusaSEOS0_.exit unwind label %.thread

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.d
  %i.h = load i8, ptr %6, align 8, !tbaa !623     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.j = load <4 x i8>, ptr %i.i, align 1, !tbaa !96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !96    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.o = icmp eq i8 %i.h, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.h, ptr %0, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store <4 x i8> %i.j, ptr %i.q, align 1, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.l, ptr %i.r, align 1, !tbaa !111
  store ptr %i.n, ptr %i.p, align 8, !tbaa !112
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

.thread:                                          ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit63

bb.f:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  %i.t = load ptr, ptr %5, align 8, !tbaa !492    ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !177
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  store ptr @.str.47, ptr %7, align 8, !tbaa !82
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 30, ptr %i.u, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  store ptr @.str, ptr %8, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !83
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit unwind label %bb.h

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.ap

bb.i:                                             ; preds = %._crit_edge, %bb.c
  %i.x = phi ptr [ null, %bb.c ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.y = phi ptr [ %i.b, %bb.c ], [ %.pre, %._crit_edge ] ; 8 uses
  %.sroa.4078.0 = phi ptr [ null, %bb.c ], [ %i.n, %._crit_edge ] ; 2 uses
  %.sroa.34.0 = phi i8 [ 0, %bb.c ], [ %i.l, %._crit_edge ]
  %i.z = phi <4 x i8> [ zeroinitializer, %bb.c ], [ %i.j, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 368
  %i.ab = load i64, ptr %3, align 8, !tbaa !543
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !666
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 376
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !667
  %i.ag = xor i64 %i.af, %i.ac
  store i64 %i.ad, ptr %9, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  store ptr %9, ptr %10, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 16, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !288, !nonnull !120, !align !289 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !668 ; 2 uses
  %.not20 = icmp eq ptr %i.x, null
  br i1 %.not20, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %i.am, i64 56, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !493
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !664
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 33
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !725, !range !119, !noundef !120
  %i.as = xor i8 %i.ar, 1                         ; 3 uses
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !288, !nonnull !120, !align !289
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 488
  %i.av = load i8, ptr %i.au, align 8, !tbaa !669
end_hunk_0
