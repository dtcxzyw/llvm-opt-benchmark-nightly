Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/table_cache?download=true
inline.NumInlined: 1441
inline.NumDeleted: 700
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb10TableCache9FindTableERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEPPNS_24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE11TypedHandleERKNS_16MutableCFOptionsEPPSE_bPNS_13HistogramImplEbibmNS_11TemperatureEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrISE_St14default_deleteISE_EERKNS_21TableCacheOpenOptionsE:bb.a
bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !157
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(33) %i.av, i32 noundef 75, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %bb.q, !inline_history !3

bb.p:                                             ; preds = %._crit_edge
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !153 ; 2 uses
  %.not.i.i111 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i111, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.r:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %23, align 8, !tbaa !114  ; 2 uses
  store ptr %i.bd, ptr %8, align 8, !tbaa !114
  store ptr null, ptr %23, align 8, !tbaa !114
  %i.be = load ptr, ptr %18, align 8, !tbaa !114  ; 3 uses
  store ptr %i.bd, ptr %18, align 8, !tbaa !114
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i.i.i.i: ; preds = %bb.r
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !157
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #25, !inline_history !385
  br label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.r, %_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i.i.i.i
  store ptr null, ptr %6, align 8, !tbaa !116
  br label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %bb.n, %bb.o, %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EEaSEOS4_.exit
  %i.bi = load ptr, ptr %23, align 8, !tbaa !114  ; 3 uses
  %.not.i112 = icmp eq ptr %i.bi, null
  br i1 %.not.i112, label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !157
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #25, !inline_history !5
  br label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, %_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %bb.bl

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %bb.q, %bb.p
  %.pn102 = phi { ptr, i32 } [ %i.az, %bb.p ], [ %i.ba, %bb.q ], [ %i.ba, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  %i.bm = load ptr, ptr %23, align 8, !tbaa !114  ; 3 uses
  %.not.i113 = icmp eq ptr %i.bm, null
  br i1 %.not.i113, label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit115, label %_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i114

_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i114: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !157
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) #25, !inline_history !5
  br label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit115

_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit115: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %bb.bq

bb.s:                                             ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit
  %i.bq = load atomic ptr, ptr %5 acquire, align 8 ; 2 uses
  %.not88 = icmp eq ptr %i.bq, null
  br i1 %.not88, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %6, align 8, !tbaa !116
  store ptr %i.bq, ptr %8, align 8, !tbaa !114
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !51, !alias.scope !391
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !391
  br label %bb.bl

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !190
  %i.bu = and i64 %i.bt, 4611686018427387903
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  store ptr %i.a, ptr %24, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  store i64 8, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !189 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !157
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(80) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef null)
          to label %bb.v unwind label %bb.z, !inline_history !388 ; 3 uses

bb.v:                                             ; preds = %bb.u
  store ptr %i.cb, ptr %6, align 8, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !51, !alias.scope !392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !392
  %i.cd = icmp eq ptr %i.cb, null
  br i1 %i.cd, label %bb.w, label %bb.bb

bb.w:                                             ; preds = %bb.v
  br i1 %9, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  store ptr @.str.42, ptr %26, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 44, ptr %i.ce, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store ptr @.str, ptr %27, align 8, !tbaa !46
  %i.cf = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.cf, align 8, !tbaa !47
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit118 unwind label %bb.aa

_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit118: ; preds = %bb.x
  %.not.i119 = icmp eq ptr %0, %25
  br i1 %.not.i119, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit118
  %i.cg = load <4 x i8>, ptr %25, align 8, !tbaa !34
  store <4 x i8> %i.cg, ptr %0, align 8, !tbaa !34
  store <4 x i8> zeroinitializer, ptr %25, align 8, !tbaa !34
  %i.ch = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !150, !range !148, !noundef !77
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ci, ptr %i.cj, align 4, !tbaa !151
  store i8 0, ptr %i.ch, align 4, !tbaa !151
  %i.ck = getelementptr inbounds nuw i8, ptr %25, i64 5 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !152
  store i8 0, ptr %i.ck, align 1, !tbaa !152
  %i.cn = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !153
  store ptr null, ptr %i.cn, align 8, !tbaa !153
  %i.cp = load ptr, ptr %i.cc, align 8, !tbaa !153 ; 2 uses
  store ptr %i.co, ptr %i.cc, align 8, !tbaa !153
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.cp) #24
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit118, %bb.y, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !153 ; 2 uses
  %.not.i.i120 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i120, label %_ZN7rocksdb6StatusD2Ev.exit122, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i121

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i121: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cr) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit122

_ZN7rocksdb6StatusD2Ev.exit122:                   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %_ZN7rocksdb9MutexLockD2Ev.exit

bb.z:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit155

bb.aa:                                            ; preds = %bb.x
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %_ZN7rocksdb9MutexLockD2Ev.exit143

bb.ab:                                            ; preds = %bb.w
  %i.cu = load ptr, ptr %24, align 8, !tbaa !46
  %i.cv = load i64, ptr %i.bv, align 8, !tbaa !47
  %i.cw = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.cu, i64 noundef %i.cv, i64 noundef 0)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !253
  %31 = call noundef i64 @llvm.umulh.i64(i64 %i.cy, i64 %i.cw)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !254
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %31 ; 3 uses
  invoke void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.db)
          to label %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit unwind label %bb.ae

_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit:    ; preds = %bb.ac
  %i.dc = load atomic ptr, ptr %5 acquire, align 8 ; 2 uses
  %.not91.not = icmp eq ptr %i.dc, null
  br i1 %.not91.not, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit
  store ptr null, ptr %6, align 8, !tbaa !116
  store ptr %i.dc, ptr %8, align 8, !tbaa !114
  br label %bb.ax

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb9MutexLockD2Ev.exit143

bb.af:                                            ; preds = %bb.au, %bb.ag, %bb.av
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ag:                                            ; preds = %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit
  %i.df = load ptr, ptr %i.bw, align 8, !tbaa !189 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !157
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 168
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = invoke noundef ptr %i.di(ptr noundef nonnull align 8 dereferenceable(80) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef null)
          to label %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE6LookupERKNS_5SliceEPNS_10StatisticsE.exit126 unwind label %bb.af, !inline_history !388 ; 2 uses

_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE6LookupERKNS_5SliceEPNS_10StatisticsE.exit126: ; preds = %bb.ag
  store ptr %i.dj, ptr %6, align 8, !tbaa !116
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE6LookupERKNS_5SliceEPNS_10StatisticsE.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  store ptr null, ptr %28, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  invoke void @_ZN7rocksdb10TableCache14GetTableReaderERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEbPNS_13HistogramImplEPSt10unique_ptrINS_11TableReaderESt14default_deleteISG_EERKNS_16MutableCFOptionsEbibmNS_11TemperatureEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %29, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(417) %5, i1 noundef zeroext false, ptr noundef %10, ptr noundef nonnull %28, ptr noundef nonnull align 8 dereferenceable(736) %7, i1 noundef zeroext %11, i32 noundef %12, i1 noundef zeroext %13, i64 noundef %14, i8 noundef zeroext %15, ptr noundef %17, i1 noundef zeroext false)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.dl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %29) #25 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !153 ; 2 uses
  %.not.i.i127 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i127, label %bb.aj, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i128

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i128: ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #24
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i128, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.do = load i8, ptr %0, align 8, !tbaa !112
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 584
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !234 ; 3 uses
  %.not.i130 = icmp eq ptr %i.ds, null
  br i1 %.not.i130, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit132, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !157
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 176
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr noundef nonnull align 8 dereferenceable(33) %i.ds, i32 noundef 75, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit132 unwind label %bb.an, !inline_history !3

bb.am:                                            ; preds = %bb.ah
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.as

bb.an:                                            ; preds = %bb.al
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.dy = load ptr, ptr %28, align 8, !tbaa !114
  invoke void @_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE6InsertERKNS_5SliceEPS1_mPPNS5_11TypedHandleENS3_8PriorityE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef %i.dy, i64 noundef 1, ptr noundef nonnull %6, i32 noundef 1)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %30) #25 ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !153 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i133, label %bb.aq, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i134

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i134: ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.eb) #24
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i134, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  %i.ec = load i8, ptr %0, align 8, !tbaa !112
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit138, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit132

bb.ar:                                            ; preds = %bb.ao
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %bb.as

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit132: ; preds = %bb.ak, %bb.al, %bb.aq
  %.pr = load ptr, ptr %28, align 8, !tbaa !114   ; 3 uses
  %.not.i136 = icmp eq ptr %.pr, null
  br i1 %.not.i136, label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit138, label %_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i137

_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i137: ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit132
  %i.ef = load ptr, ptr %.pr, align 8, !tbaa !157
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #25, !inline_history !5
  br label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit138

_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit138: ; preds = %bb.aq, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit132, %_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.an, %bb.am
  %.pn92 = phi { ptr, i32 } [ %i.dx, %bb.an ], [ %i.ee, %bb.ar ], [ %i.dw, %bb.am ]
  %i.ei = load ptr, ptr %28, align 8, !tbaa !114  ; 3 uses
  %.not.i139 = icmp eq ptr %i.ei, null
  br i1 %.not.i139, label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit141, label %_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i140

_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i140: ; preds = %bb.as
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !157
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) #25, !inline_history !5
  br label %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit141

_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit141: ; preds = %bb.as, %_ZNKSt14default_deleteIN7rocksdb11TableReaderEEclEPS1_.exit.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.az

bb.at:                                            ; preds = %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE6LookupERKNS_5SliceEPNS_10StatisticsE.exit126, %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit138
  %i.em = load i8, ptr %0, align 8, !tbaa !112
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.eo = load ptr, ptr %6, align 8, !tbaa !116
  %i.ep = load ptr, ptr %i.bw, align 8, !tbaa !189 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !157
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 192
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = invoke noundef ptr %i.es(ptr noundef nonnull align 8 dereferenceable(80) %i.ep, ptr noundef %i.eo)
          to label %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit unwind label %bb.af, !inline_history !6 ; 2 uses

_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit: ; preds = %bb.au
  store ptr %i.et, ptr %8, align 8, !tbaa !114
  br i1 %16, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit
  %i.eu = load ptr, ptr %6, align 8, !tbaa !116
  invoke void @_ZN7rocksdb17PinnedTableReader3PinEPNS_5Cache6HandleEPNS_11TableReaderE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.eu, ptr noundef %i.et)
          to label %bb.aw unwind label %bb.af

bb.aw:                                            ; preds = %bb.av
  store ptr null, ptr %6, align 8, !tbaa !116
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.aw, %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit, %bb.ad
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.db)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #27
  unreachable

bb.az:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit141, %bb.af
  %.pn94 = phi { ptr, i32 } [ %i.de, %bb.af ], [ %.pn92, %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit141 ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.db)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit143 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #27
  unreachable

bb.bb:                                            ; preds = %bb.v
  %i.ez = load ptr, ptr %i.bw, align 8, !tbaa !189 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !157
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 192
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = invoke noundef ptr %i.fc(ptr noundef nonnull align 8 dereferenceable(80) %i.ez, ptr noundef nonnull %i.cb)
          to label %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit145 unwind label %bb.bf, !inline_history !6

_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit145: ; preds = %bb.bb
  store ptr %i.fd, ptr %8, align 8, !tbaa !114
  br i1 %16, label %bb.bc, label %_ZN7rocksdb9MutexLockD2Ev.exit

bb.bc:                                            ; preds = %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit145
  %i.fe = load ptr, ptr %24, align 8, !tbaa !46
  %i.ff = load i64, ptr %i.bv, align 8, !tbaa !47
  %i.fg = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.fe, i64 noundef %i.ff, i64 noundef 0)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !253
  %32 = call noundef i64 @llvm.umulh.i64(i64 %i.fi, i64 %i.fg)
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !254
  %i.fl = getelementptr inbounds nuw [64 x i8], ptr %i.fk, i64 %32 ; 3 uses
  invoke void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fl)
          to label %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit149 unwind label %bb.bg

_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit149: ; preds = %bb.bd
  %i.fm = load atomic ptr, ptr %5 acquire, align 8
  %.not89 = icmp eq ptr %i.fm, null
  %i.fn = load ptr, ptr %6, align 8, !tbaa !116   ; 2 uses
  br i1 %.not89, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit149
  %i.fo = load ptr, ptr %i.bw, align 8, !tbaa !189 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !157
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 184
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef zeroext i1 %i.fr(ptr noundef nonnull align 8 dereferenceable(80) %i.fo, ptr noundef %i.fn, i1 noundef zeroext false)
          to label %_ZN7rocksdb18BaseCacheInterfaceIPNS_5CacheEE7ReleaseEPNS1_6HandleE.exit unwind label %bb.bh, !inline_history !2 ; 0 uses

bb.bf:                                            ; preds = %bb.bb
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb9MutexLockD2Ev.exit143

bb.bg:                                            ; preds = %bb.bd, %bb.bc
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb9MutexLockD2Ev.exit143

bb.bh:                                            ; preds = %bb.be, %bb.bj
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fl)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit143 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #27
  unreachable

bb.bj:                                            ; preds = %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit149
  %i.fy = load ptr, ptr %8, align 8, !tbaa !114
  invoke void @_ZN7rocksdb17PinnedTableReader3PinEPNS_5Cache6HandleEPNS_11TableReaderE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.fn, ptr noundef %i.fy)
          to label %_ZN7rocksdb18BaseCacheInterfaceIPNS_5CacheEE7ReleaseEPNS1_6HandleE.exit unwind label %bb.bh

_ZN7rocksdb18BaseCacheInterfaceIPNS_5CacheEE7ReleaseEPNS1_6HandleE.exit: ; preds = %bb.be, %bb.bj
  store ptr null, ptr %6, align 8, !tbaa !116
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fl)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.bk

bb.bk:                                            ; preds = %_ZN7rocksdb18BaseCacheInterfaceIPNS_5CacheEE7ReleaseEPNS1_6HandleE.exit
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #27
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %_ZN7rocksdb18BaseCacheInterfaceIPNS_5CacheEE7ReleaseEPNS1_6HandleE.exit, %bb.ax, %_ZN7rocksdb6StatusD2Ev.exit122, %_ZN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5ValueEPNS5_11TypedHandleE.exit145
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bl

_ZN7rocksdb9MutexLockD2Ev.exit143:                ; preds = %bb.bg, %bb.bh, %bb.ae, %bb.az, %bb.bf, %bb.aa
  %.pn97 = phi { ptr, i32 } [ %i.ct, %bb.aa ], [ %i.ft, %bb.bf ], [ %.pn94, %bb.az ], [ %i.dd, %bb.ae ], [ %i.fu, %bb.bg ], [ %i.fv, %bb.bh ] ; 2 uses
  %i.gb = load ptr, ptr %i.cc, align 8, !tbaa !153 ; 2 uses
  %.not.i.i153 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i153, label %_ZN7rocksdb6StatusD2Ev.exit155, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i154

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i154: ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit143
  call void @_ZdaPv(ptr noundef nonnull %i.gb) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit155

_ZN7rocksdb6StatusD2Ev.exit155:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i154, %_ZN7rocksdb9MutexLockD2Ev.exit143, %bb.z
  %.pn97.pn = phi { ptr, i32 } [ %i.cs, %bb.z ], [ %.pn97, %_ZN7rocksdb9MutexLockD2Ev.exit143 ], [ %.pn97, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bq

bb.bl:                                            ; preds = %bb.t, %_ZN7rocksdb9MutexLockD2Ev.exit, %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit, %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit
  %i.gc = load i64, ptr %i.ac, align 8, !tbaa !247 ; 2 uses
  %.not.i.i156 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i156, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gd = load i8, ptr %i.k, align 1, !tbaa !240, !range !148, !noundef !77
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = load ptr, ptr %i.ad, align 8, !tbaa !246 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !157
  %..i.i.i = select i1 %i.ge, i64 176, i64 160
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %..i.i.i
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = invoke noundef i64 %i.gi(ptr noundef nonnull align 8 dereferenceable(32) %i.gf)
          to label %.noexc.i unwind label %bb.bp, !inline_history !7

.noexc.i:                                         ; preds = %bb.bm
  %i.gk = sub i64 %i.gj, %i.gc                    ; 2 uses
  %i.gl = load i8, ptr %20, align 8, !tbaa !239, !range !148, !noundef !77
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.noexc.i
  %i.gn = load ptr, ptr %i.ab, align 8, !tbaa !244 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !158
  %i.gp = add i64 %i.go, %i.gk
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !158
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.noexc.i
  %i.gq = load ptr, ptr %i.aa, align 8, !tbaa !245 ; 3 uses
  %.not2.i.i = icmp eq ptr %i.gq, null
  br i1 %.not2.i.i, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i: ; preds = %bb.bo
  %i.gr = load i32, ptr %i.l, align 4, !tbaa !241
  %i.gs = load ptr, ptr %i.gq, align 8, !tbaa !157
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 176
  %i.gu = load ptr, ptr %i.gt, align 8
  invoke void %i.gu(ptr noundef nonnull align 8 dereferenceable(33) %i.gq, i32 noundef %i.gr, i64 noundef %i.gk)
          to label %_ZN7rocksdb13PerfStepTimerD2Ev.exit unwind label %bb.bp, !inline_history !7

bb.bp:                                            ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i, %bb.bm
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #27
  unreachable

_ZN7rocksdb13PerfStepTimerD2Ev.exit:              ; preds = %bb.bl, %bb.bo, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  ret void

bb.bq:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit155, %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit115, %bb.j, %bb.i
  %.pn104 = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %.pn102, %_ZNSt10unique_ptrIN7rocksdb11TableReaderESt14default_deleteIS1_EED2Ev.exit115 ], [ %i.ag, %bb.i ], [ %.pn97.pn, %_ZN7rocksdb6StatusD2Ev.exit155 ]
  call void @_ZN7rocksdb13PerfStepTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  resume { ptr, i32 } %.pn104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load <4 x i8>, ptr %1, align 8, !tbaa !34
  store <4 x i8> %i.a, ptr %0, align 8, !tbaa !34
  store <4 x i8> zeroinitializer, ptr %1, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !150, !range !148, !noundef !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.c, ptr %i.d, align 4, !tbaa !151
  store i8 0, ptr %i.b, align 4, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.f, ptr %i.g, align 1, !tbaa !152
  store i8 0, ptr %i.e, align 1, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !153
  store ptr null, ptr %i.h, align 8, !tbaa !153
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !153  ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !153
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #24
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i, %bb.b, %bb.a
  ret ptr %0
}

declare noundef i64 @_ZN7rocksdb32FragmentedRangeTombstoneIterator26MaxCoveringTombstoneSeqnumERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

declare void @_ZN7rocksdb10GetContext15MarkKeyMayExistEv(ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb7IterKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 4 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !40
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_table_cache.cc:bb.a
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 360), align 8, !tbaa !674
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 384), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 368), align 16, !tbaa !48
  %i.ai = invoke noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #26
          to label %.noexc106.i unwind label %bb.n ; 3 uses

.noexc106.i:                                      ; preds = %.noexc98.i
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 368), align 16, !tbaa !33
  store i64 35, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 384), align 16, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ai, ptr noundef nonnull align 1 dereferenceable(35) @.str.22, i64 35, i1 false)
  store i64 35, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 376), align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 35
  store i8 0, ptr %i.aj, align 1, !tbaa !34
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 400), align 16, !tbaa !674
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 424), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 408), align 8, !tbaa !48
  %i.ak = invoke noalias noundef nonnull dereferenceable(45) ptr @_Znwm(i64 noundef 45) #26
          to label %__cxx_global_var_init.13.exit unwind label %bb.o ; 3 uses

bb.g:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %.noexc50.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %.noexc58.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %.noexc66.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %.noexc74.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %.noexc82.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %.noexc90.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %.noexc98.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %.noexc106.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.923.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 360), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 400), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 80), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 120), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 160), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 200), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 240), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 280), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 320), %bb.m ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ], [ %i.al, %bb.g ], [ %i.am, %bb.h ], [ %i.an, %bb.i ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ], [ %i.aq, %bb.l ], [ %i.ar, %bb.m ]
  br label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i, %bb.p
  %i.au = phi ptr [ %.923.i, %bb.p ], [ %i.av, %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -40 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1: ; preds = %bb.q
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !34
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i

_ZN7rocksdb18OperationStageInfoD2Ev.exit.i:       ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1
  %i.bc = icmp eq ptr %i.av, @_ZN7rocksdbL21global_op_stage_tableE
  br i1 %i.bc, label %common.resume, label %bb.q

__cxx_global_var_init.13.exit:                    ; preds = %.noexc106.i
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 408), align 8, !tbaa !33
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 424), align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.ak, ptr noundef nonnull align 1 dereferenceable(44) @.str.23, i64 44, i1 false)
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 416), align 16, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store i8 0, ptr %i.bd, align 1, !tbaa !34
  %i.be = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.24, ptr null, ptr nonnull @__dso_handle) #25 ; 0 uses
  %i.bf = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.27, ptr null, ptr nonnull @__dso_handle) #25 ; 0 uses
  store i32 0, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, align 16, !tbaa !676
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 8), align 8, !tbaa !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 16), align 16, !tbaa !49
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 29), align 1, !tbaa !34
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 40), align 8, !tbaa !676
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !48
  %i.bg = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #26
          to label %.noexc27.i unwind label %bb.r ; 3 uses

.noexc27.i:                                       ; preds = %__cxx_global_var_init.13.exit
  store ptr %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !33
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), align 16, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bg, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, i64 16, i1 false)
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 56), align 8, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i8 0, ptr %i.bh, align 1, !tbaa !34
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 80), align 16, !tbaa !676
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !48
  %i.bi = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %__cxx_global_var_init.28.exit unwind label %bb.s ; 3 uses

bb.r:                                             ; preds = %__cxx_global_var_init.13.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %.noexc27.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.413.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 80), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 40), %bb.r ]
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bk, %bb.s ], [ %i.bj, %bb.r ]
  br label %bb.u

bb.u:                                             ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.i, %bb.t
  %i.bl = phi ptr [ %.413.i, %bb.t ], [ %i.bm, %_ZN7rocksdb17OperationPropertyD2Ev.exit.i ] ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -40 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %bb.u
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !34
  %i.bs = add i64 %i.br, 1
  tail call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #24
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.i

_ZN7rocksdb17OperationPropertyD2Ev.exit.i:        ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  %i.bt = icmp eq ptr %i.bm, @_ZN7rocksdbL31compaction_operation_propertiesE
  br i1 %i.bt, label %common.resume, label %bb.u

__cxx_global_var_init.28.exit:                    ; preds = %.noexc27.i
  store ptr %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !33
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.bi, ptr noundef nonnull align 1 dereferenceable(23) @.str.31, i64 23, i1 false)
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 96), align 16, !tbaa !49
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 23
  store i8 0, ptr %i.bu, align 1, !tbaa !34
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 120), align 8, !tbaa !676
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 128), align 16, !tbaa !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), ptr noundef nonnull align 1 dereferenceable(15) @.str.32, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 136), align 8, !tbaa !49
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 159), align 1, !tbaa !34
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 160), align 16, !tbaa !676
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 168), align 8, !tbaa !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 176), align 16, !tbaa !49
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 193), align 1, !tbaa !34
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 200), align 8, !tbaa !676
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 208), align 16, !tbaa !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 216), align 8, !tbaa !49
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 236), align 4, !tbaa !34
  %i.bv = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.35, ptr null, ptr nonnull @__dso_handle) #25 ; 0 uses
  %i.bw = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.38, ptr null, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

declare extern_weak void @_ZTHN7rocksdb12perf_contextE() #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

declare extern_weak void @_ZTHN7rocksdb10perf_levelE() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1>, i1 immarg) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { cold "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { cold }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null, null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{!8, !270}
!9 = distinct !{!9, !270}
!10 = distinct !{null, null}
!11 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!12 = distinct !{!12, !270}
!13 = distinct !{null, null}
!14 = distinct !{ptr @_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!15 = distinct !{!15, !270}
!16 = distinct !{ptr @_ZN7rocksdb25FSRandomAccessFileWrapperD2Ev, null, null}
!17 = distinct !{ptr @_ZN7rocksdb30FSRandomAccessFileOwnerWrapperD2Ev, null, null}
!18 = distinct !{ptr @_ZN7rocksdb30FSRandomAccessFileOwnerWrapperD2Ev, ptr @_ZN7rocksdb25FSRandomAccessFileWrapperD2Ev, null, null}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{i32 7, !"frame-pointer", i32 4}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"any pointer", !24, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!31 = !{!"long", !24, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !31, i64 8, !24, i64 16}
!33 = !{!32, !29, i64 0}
!34 = !{!24, !24, i64 0}
!35 = !{!"bool", !24, i64 0}
!36 = !{!"_ZTSSt5arrayIN7rocksdb5SliceELm5EE", !24, i64 0}
!37 = !{!"_ZTSN7rocksdb7IterKeyE", !29, i64 0, !29, i64 8, !31, i64 16, !31, i64 24, !24, i64 32, !35, i64 71, !24, i64 72, !29, i64 112, !31, i64 120, !36, i64 128}
!38 = !{!37, !29, i64 0}
!39 = !{!37, !29, i64 8}
!40 = !{!37, !31, i64 16}
!41 = !{!37, !31, i64 24}
!42 = !{!37, !35, i64 71}
!43 = !{!37, !29, i64 112}
!44 = !{!37, !31, i64 120}
!45 = !{!"_ZTSN7rocksdb5SliceE", !29, i64 0, !31, i64 8}
!46 = !{!45, !29, i64 0}
!47 = !{!45, !31, i64 8}
!48 = !{!30, !29, i64 0}
!49 = !{!32, !31, i64 8}
!50 = !{!"_ZTSSt10_Head_baseILm0EPKcLb0EE", !29, i64 0}
!51 = !{!50, !29, i64 0}
!52 = !{!"p1 _ZTSN7rocksdb16ImmutableOptionsE", !28, i64 0}
!53 = !{!"p1 _ZTSN7rocksdb11FileOptionsE", !28, i64 0}
!54 = !{!"p1 _ZTSN7rocksdb5CacheE", !28, i64 0}
!55 = !{!"_ZTSN7rocksdb18BaseCacheInterfaceIPNS_5CacheEEE", !54, i64 0}
!56 = !{!"_ZTSN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEEE", !55, i64 0}
!57 = !{!"_ZTSSt13__atomic_baseIbE", !35, i64 0}
!58 = !{!"_ZTSSt6atomicIbE", !57, i64 0}
!59 = !{!"p1 _ZTSN7rocksdb16BlockCacheTracerE", !28, i64 0}
!60 = !{!"p1 _ZTSN7rocksdb19CacheAlignedWrapperINS_4port5MutexEEE", !28, i64 0}
!61 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEELb0EE", !60, i64 0}
!62 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEESt14default_deleteIA_S4_EEE", !61, i64 0}
!63 = !{!"_ZTSSt5tupleIJPN7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEESt14default_deleteIA_S4_EEE", !62, i64 0}
!64 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEESt14default_deleteIA_S4_EE", !63, i64 0}
!65 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEESt14default_deleteIA_S4_ELb1ELb1EE", !64, i64 0}
!66 = !{!"_ZTSSt10unique_ptrIA_N7rocksdb19CacheAlignedWrapperINS0_4port5MutexEEESt14default_deleteIS5_EE", !65, i64 0}
!67 = !{!"_ZTSN7rocksdb15SliceNPHasher64E"}
!68 = !{!"_ZTSN7rocksdb7StripedINS_19CacheAlignedWrapperINS_4port5MutexEEENS_5SliceENS_15SliceNPHasher64EEE", !31, i64 0, !66, i64 8, !67, i64 16}
!69 = !{!"p1 _ZTSN7rocksdb8IOTracerE", !28, i64 0}
!70 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0}
!71 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0}
!72 = !{!"_ZTSSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EE", !69, i64 0, !71, i64 8}
!73 = !{!"_ZTSSt10shared_ptrIN7rocksdb8IOTracerEE", !72, i64 0}
!74 = !{!"p1 _ZTSN7rocksdb10BlobSourceE", !28, i64 0}
!75 = !{!"_ZTSN7rocksdb10TableCacheE", !52, i64 0, !53, i64 8, !56, i64 16, !32, i64 24, !35, i64 56, !35, i64 57, !58, i64 58, !59, i64 64, !68, i64 72, !73, i64 96, !32, i64 112, !74, i64 144}
!76 = !{!75, !52, i64 0}
!77 = !{}
!78 = !{i64 8}
!79 = !{!"_ZTSSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0, !71, i64 8}
!80 = !{!79, !54, i64 0}
!81 = !{!"_ZTSN7rocksdb15GetContextStatsE", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !31, i64 104, !31, i64 112, !31, i64 120, !31, i64 128, !31, i64 136, !31, i64 144, !31, i64 152, !31, i64 160, !31, i64 168, !31, i64 176, !31, i64 184, !31, i64 192, !31, i64 200, !31, i64 208, !31, i64 216, !31, i64 224}
!82 = !{!"p1 _ZTSN7rocksdb10ComparatorE", !28, i64 0}
!83 = !{!"p1 _ZTSN7rocksdb13MergeOperatorE", !28, i64 0}
!84 = !{!"p1 _ZTSN7rocksdb6LoggerE", !28, i64 0}
!85 = !{!"p1 _ZTSN7rocksdb10StatisticsE", !28, i64 0}
!86 = !{!"_ZTSN7rocksdb10GetContext8GetStateE", !24, i64 0}
!87 = !{!"p1 _ZTSN7rocksdb9Cleanable7CleanupE", !28, i64 0}
!88 = !{!"_ZTSN7rocksdb9Cleanable7CleanupE", !28, i64 0, !28, i64 8, !28, i64 16, !87, i64 24}
!89 = !{!"_ZTSN7rocksdb9CleanableE", !88, i64 0}
!90 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0}
!91 = !{!"_ZTSN7rocksdb13PinnableSliceE", !45, i64 0, !89, i64 16, !32, i64 48, !90, i64 80, !35, i64 88}
!92 = !{!"p1 _ZTSN7rocksdb13PinnableSliceE", !28, i64 0}
!93 = !{!"p1 _ZTSN7rocksdb19PinnableWideColumnsE", !28, i64 0}
!94 = !{!"p1 bool", !28, i64 0}
!95 = !{!"p1 _ZTSN7rocksdb12MergeContextE", !28, i64 0}
!96 = !{!"p1 long", !28, i64 0}
!97 = !{!"p1 _ZTSN7rocksdb11SystemClockE", !28, i64 0}
!98 = !{!"p1 _ZTSN7rocksdb22PinnedIteratorsManagerE", !28, i64 0}
!99 = !{!"p1 _ZTSN7rocksdb12ReadCallbackE", !28, i64 0}
!100 = !{!"p1 _ZTSN7rocksdb11BlobFetcherE", !28, i64 0}
!101 = !{!"_ZTSN7rocksdb10GetContextE", !81, i64 0, !82, i64 232, !83, i64 240, !84, i64 248, !85, i64 256, !86, i64 264, !45, i64 272, !91, i64 288, !92, i64 384, !93, i64 392, !90, i64 400, !35, i64 408, !94, i64 416, !95, i64 424, !96, i64 432, !97, i64 440, !96, i64 448, !90, i64 456, !98, i64 464, !99, i64 472, !35, i64 480, !35, i64 481, !94, i64 488, !31, i64 496, !100, i64 504}
!102 = !{!101, !96, i64 448}
!103 = !{!"_ZTSN7rocksdb6Status4CodeE", !24, i64 0}
!104 = !{!"_ZTSN7rocksdb6Status7SubCodeE", !24, i64 0}
!105 = !{!"_ZTSN7rocksdb6Status8SeverityE", !24, i64 0}
!106 = !{!"_ZTSSt11_Tuple_implILm0EJPKcSt14default_deleteIA_S0_EEE", !50, i64 0}
!107 = !{!"_ZTSSt5tupleIJPKcSt14default_deleteIA_S0_EEE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_implIKcSt14default_deleteIA_S0_EE", !107, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_dataIKcSt14default_deleteIA_S0_ELb1ELb1EE", !108, i64 0}
!110 = !{!"_ZTSSt10unique_ptrIA_KcSt14default_deleteIS1_EE", !109, i64 0}
!111 = !{!"_ZTSN7rocksdb6StatusE", !103, i64 0, !104, i64 1, !105, i64 2, !35, i64 3, !35, i64 4, !24, i64 5, !110, i64 8}
!112 = !{!111, !103, i64 0}
!113 = !{!"p1 _ZTSN7rocksdb11TableReaderE", !28, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"p1 _ZTSN7rocksdb24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE11TypedHandleE", !28, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!75, !53, i64 8}
!118 = !{!"p1 _ZTSN7rocksdb8SnapshotE", !28, i64 0}
!119 = !{!"p1 _ZTSN7rocksdb5SliceE", !28, i64 0}
!120 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !31, i64 0}
!121 = !{!"_ZTSN7rocksdb8ReadTierE", !24, i64 0}
!122 = !{!"_ZTSN7rocksdb3Env10IOPriorityE", !24, i64 0}
!123 = !{!"_ZTSSt22_Optional_payload_baseImE", !24, i64 0, !35, i64 8}
!124 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !123, i64 0}
!125 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !124, i64 0}
!126 = !{!"_ZTSSt8optionalImE", !125, i64 0}
!127 = !{!"_ZTSSt14_Function_base", !24, i64 0, !28, i64 16}
!128 = !{!"_ZTSSt8functionIFbRKN7rocksdb15TablePropertiesEEE", !127, i64 0, !28, i64 24}
!129 = !{!"p1 _ZTSN7rocksdb23UserDefinedIndexFactoryE", !28, i64 0}
!130 = !{!"p1 _ZTSN7rocksdb29ReadScopedBlockBufferProviderE", !28, i64 0}
!131 = !{!"_ZTSN7rocksdb3Env10IOActivityE", !24, i64 0}
!132 = !{!"_ZTSN7rocksdb11ReadOptionsE", !118, i64 0, !119, i64 8, !119, i64 16, !120, i64 24, !120, i64 32, !121, i64 40, !122, i64 44, !31, i64 48, !126, i64 56, !35, i64 72, !35, i64 73, !35, i64 74, !35, i64 75, !35, i64 76, !31, i64 80, !31, i64 88, !119, i64 96, !119, i64 104, !35, i64 112, !35, i64 113, !35, i64 114, !35, i64 115, !35, i64 116, !35, i64 117, !35, i64 118, !128, i64 120, !35, i64 152, !35, i64 153, !35, i64 154, !129, i64 160, !130, i64 168, !131, i64 176, !90, i64 184}
!133 = !{!132, !121, i64 40}
!134 = !{!"_ZTSSt13__atomic_baseIPN7rocksdb11TableReaderEE", !113, i64 0}
!135 = !{!"_ZTSSt6atomicIPN7rocksdb11TableReaderEE", !134, i64 0}
!136 = !{!"p1 _ZTSN7rocksdb5Cache6HandleE", !28, i64 0}
!137 = !{!"_ZTSN7rocksdb17PinnedTableReaderE", !135, i64 0, !136, i64 8}
!138 = !{!"_ZTSN7rocksdb14FileDescriptorE", !137, i64 0, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40}
!139 = !{!"_ZTSN7rocksdb11InternalKeyE", !32, i64 0}
!140 = !{!"_ZTSSt13__atomic_baseImE", !31, i64 0}
!141 = !{!"_ZTSSt6atomicImE", !140, i64 0}
!142 = !{!"_ZTSN7rocksdb16FileSampledStatsE", !141, i64 0, !141, i64 8}
!143 = !{!"_ZTSN7rocksdb11TemperatureE", !24, i64 0}
!144 = !{!"_ZTSSt5arrayImLm2EE", !24, i64 0}
!145 = !{!"_ZTSN7rocksdb12FileMetaDataE", !138, i64 0, !139, i64 48, !139, i64 80, !142, i64 112, !31, i64 128, !31, i64 136, !31, i64 144, !31, i64 152, !31, i64 160, !31, i64 168, !31, i64 176, !25, i64 184, !35, i64 188, !35, i64 189, !35, i64 190, !143, i64 191, !31, i64 192, !31, i64 200, !31, i64 208, !31, i64 216, !32, i64 224, !32, i64 256, !144, i64 288, !31, i64 304, !35, i64 312, !32, i64 320, !32, i64 352, !32, i64 384, !35, i64 416}
!146 = !{!145, !143, i64 191}
!147 = !{!75, !35, i64 57}
!148 = !{i8 0, i8 2}
!149 = !{!103, !103, i64 0}
!150 = !{!35, !35, i64 0}
!151 = !{!111, !35, i64 4}
!152 = !{!111, !24, i64 5}
!153 = !{!29, !29, i64 0}
!154 = !{!101, !96, i64 432}
!155 = !{!132, !35, i64 74}
!156 = !{!"vtable pointer", !23, i64 0}
!157 = !{!156, !156, i64 0}
!158 = !{!31, !31, i64 0}
!159 = !{!101, !90, i64 400}
!160 = !{!"_ZTSN7rocksdb20InternalIteratorBaseINS_5SliceEEE", !89, i64 8}
end_hunk_1
