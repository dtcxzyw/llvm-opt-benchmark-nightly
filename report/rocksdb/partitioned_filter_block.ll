Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/partitioned_filter_block?download=true
inline.NumInlined: 1577
inline.NumDeleted: 789
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK7rocksdb28PartitionedFilterBlockReader17MayMatchPartitionEPNS_15MultiGetContext5RangeEPKNS_14SliceTransformENS_11BlockHandleEPNS_23BlockCacheLookupContextERKNS_11ReadOptionsEMNS_21FullFilterBlockReaderEFvS3_S6_S9_SC_E:bb.a
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.ab = add nuw i64 %storemerge3.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.f
  br i1 %exitcond.not.i.i, label %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit, label %scalar.ph, !llvm.loop !504

_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit: ; preds = %bb.b, %scalar.ph, %middle.block, %vector.early.exit, %bb.a
  %storemerge.lcssa.i.i = phi i64 [ %i.c, %bb.a ], [ %i.f, %middle.block ], [ %i.y, %vector.early.exit ], [ %storemerge3.i.i, %scalar.ph ], [ %i.f, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 3584
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %storemerge.lcssa.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !192
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !217
  invoke void @_ZNK7rocksdb28PartitionedFilterBlockReader23GetFilterPartitionBlockEPNS_18FilePrefetchBufferERKNS_11BlockHandleEPNS_10GetContextEPNS_23BlockCacheLookupContextERKNS_11ReadOptionsEPNS_13CachableEntryINS_21ParsedFullFilterBlockEEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ag, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(192) %6, ptr noundef nonnull %9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit
  %i.ah = load i8, ptr %10, align 8, !tbaa !126
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %bb.q, !prof !164

bb.d:                                             ; preds = %_ZNK7rocksdb15MultiGetContext5Range5beginEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit23

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !148
  invoke void @_ZN7rocksdb21FullFilterBlockReaderC1EPKNS_15BlockBasedTableEONS_13CachableEntryINS_21ParsedFullFilterBlockEEE(ptr noundef nonnull align 8 dereferenceable(57) %11, ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(25) %9)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds i8, ptr %11, i64 %.unpack15 ; 2 uses
  %i.an = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.ap = getelementptr i8, ptr %i.ao, i64 %.unpack
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %i.ar = load ptr, ptr %i.aq, align 8, !nosanitize !101
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.f
  %i.at = inttoptr i64 %.unpack to ptr
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.au = phi ptr [ %i.ar, %bb.g ], [ %i.at, %bb.i ]
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(57) %i.am, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(192) %6)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN7rocksdb23FilterBlockReaderCommonINS_21ParsedFullFilterBlockEEE, i64 16), ptr %11, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l, !prof !136

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !168 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull %i.ax, i1 noundef zeroext false)
          to label %_ZN7rocksdb23FilterBlockReaderCommonINS_21ParsedFullFilterBlockEED2Ev.exit unwind label %bb.p, !inline_history !169 ; 0 uses

bb.m:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !170, !range !100, !noundef !101
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.n, label %_ZN7rocksdb23FilterBlockReaderCommonINS_21ParsedFullFilterBlockEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !171 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN7rocksdb23FilterBlockReaderCommonINS_21ParsedFullFilterBlockEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN7rocksdb21ParsedFullFilterBlockD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bh) #21, !inline_history !169
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 56) #22, !inline_history !169
  br label %_ZN7rocksdb23FilterBlockReaderCommonINS_21ParsedFullFilterBlockEED2Ev.exit

bb.p:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #23, !inline_history !169
  unreachable

_ZN7rocksdb23FilterBlockReaderCommonINS_21ParsedFullFilterBlockEED2Ev.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %_ZN7rocksdb23FilterBlockReaderCommonINS_21ParsedFullFilterBlockEED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !89 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i19, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.q, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !167 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i20, label %bb.s, label %bb.r, !prof !136

bb.r:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !168 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 184
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(80) %i.bq, ptr noundef nonnull %i.bo, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit unwind label %bb.v ; 0 uses

bb.s:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !170, !range !100, !noundef !101
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.t, label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %9, align 8, !tbaa !171   ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN7rocksdb21ParsedFullFilterBlockD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.by) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 56) #22
  br label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit

bb.v:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #23
  unreachable

_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit: ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  ret void

bb.w:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb23FilterBlockReaderCommonINS_21ParsedFullFilterBlockEED2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %11) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.w ], [ %i.as, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !89 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i21, label %_ZN7rocksdb6StatusD2Ev.exit23, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i22

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i22: ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit23

_ZN7rocksdb6StatusD2Ev.exit23:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i22, %bb.x, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.d ], [ %.pn, %bb.x ], [ %.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7rocksdb28PartitionedFilterBlockReader22ApproximateMemoryUsageEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK7rocksdb23FilterBlockReaderCommonINS_27Block_kFilterPartitionIndexEE33ApproximateFilterBlockMemoryUsageEv(ptr noundef nonnull align 8 dereferenceable(57) %0)
  %i.b = tail call i64 @malloc_usable_size(ptr noundef nonnull %0) #21
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

declare noundef i64 @_ZNK7rocksdb23FilterBlockReaderCommonINS_27Block_kFilterPartitionIndexEE33ApproximateFilterBlockMemoryUsageEv(ptr noundef nonnull align 8 dereferenceable(57)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb28PartitionedFilterBlockReader17CacheDependenciesERKNS_11ReadOptionsEbPNS_18FilePrefetchBufferE(ptr dead_on_unwind noalias nofree writable sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.2", align 8 ; 4 uses
  %6 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, rocksdb::CachableEntry<rocksdb::ParsedFullFilterBlock>>, std::allocator<std::pair<const unsigned long, rocksdb::CachableEntry<rocksdb::ParsedFullFilterBlock>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 4 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  %10 = alloca %"class.rocksdb::Status", align 8  ; 4 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 4 uses
  %12 = alloca %"class.rocksdb::Status", align 8  ; 4 uses
  %13 = alloca %"struct.rocksdb::BlockCacheLookupContext", align 8 ; 16 uses
  %14 = alloca %"class.rocksdb::CachableEntry", align 8 ; 11 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 32 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.rocksdb::IndexBlockIter", align 8 ; 88 uses
  %18 = alloca %"class.rocksdb::BlockHandle", align 8 ; 11 uses
  %19 = alloca %"struct.rocksdb::IndexValue", align 8 ; 9 uses
  %20 = alloca %"struct.rocksdb::IndexValue", align 8 ; 9 uses
  %21 = alloca %"class.std::unique_ptr.226", align 8 ; 6 uses
  %22 = alloca %"struct.rocksdb::ReadaheadParams", align 8 ; 7 uses
  %23 = alloca %"class.std::function.240", align 8 ; 11 uses
  %24 = alloca %"struct.rocksdb::IOOptions", align 8 ; 17 uses
  %25 = alloca %"struct.rocksdb::IODebugContext", align 8 ; 27 uses
  %26 = alloca %"class.rocksdb::IOStatus", align 8 ; 9 uses
  %27 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %28 = alloca %"struct.rocksdb::IndexValue", align 8 ; 9 uses
  %29 = alloca %"class.rocksdb::CachableEntry.147", align 16 ; 14 uses
  %30 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store <4 x i8> <i8 9, i8 0, i8 0, i8 14>, ptr %13, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !519
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !81
  store i8 0, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 72
  store i64 0, ptr %i.l, align 8, !tbaa !81
  store i8 0, ptr %i.k, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i8 0, ptr %i.m, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %14, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZNK7rocksdb23FilterBlockReaderCommonINS_27Block_kFilterPartitionIndexEE20GetOrReadFilterBlockEPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_13CachableEntryIS1_EERKNS_11ReadOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = load i8, ptr %15, align 8, !tbaa !126
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !521, !nonnull !101, !align !359
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 592
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !565
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %16, align 8, !tbaa !88
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 3, ptr noundef %i.r, ptr noundef nonnull @.str, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 32), ptr noundef %i.s)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %16, align 8, !tbaa !88    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !82
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq ptr %0, %15
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load <4 x i8>, ptr %15, align 8, !tbaa !82
  store <4 x i8> %i.z, ptr %0, align 8, !tbaa !82
  store <4 x i8> zeroinitializer, ptr %15, align 8, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !127, !range !100, !noundef !101
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !128
  store i8 0, ptr %i.aa, align 4, !tbaa !128
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 5 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !129
  store i8 0, ptr %i.ad, align 1, !tbaa !129
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !89
  store ptr null, ptr %i.ag, align 8, !tbaa !89
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !89
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit152

bb.h:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.i:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %16, align 8, !tbaa !88   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !82
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.ak, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.cq

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(728) %17, i8 0, i64 632, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 8
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7rocksdb21InternalKeyComparatorE, i64 16), ptr %i.ar, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr null, ptr %i.as, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 80
  store ptr @.str.5, ptr %i.at, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 88
  store i64 0, ptr %i.au, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 108 ; 2 uses
  store i32 0, ptr %i.av, align 4, !tbaa !227
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 144 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !228
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 120
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !229
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 128
  store i64 0, ptr %i.az, align 8, !tbaa !230
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 136
  store i64 39, ptr %i.ba, align 8, !tbaa !231
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 183
  store i8 1, ptr %i.bb, align 1, !tbaa !232
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 224
  %i.bd = getelementptr inbounds nuw i8, ptr %17, i64 184
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !233
  %i.be = getelementptr inbounds nuw i8, ptr %17, i64 232
  store i64 39, ptr %i.be, align 8, !tbaa !234
  %i.bf = getelementptr inbounds nuw i8, ptr %17, i64 240
  store ptr @.str.5, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 248
  store i64 0, ptr %i.bg, align 8, !tbaa !19
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 256
  store ptr @.str.5, ptr %.ptr.1.i.i.i.i, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 264
  store i64 0, ptr %i.bh, align 8, !tbaa !19
  %.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 272
  store ptr @.str.5, ptr %.ptr.2.i.i.i.i, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 280
  store i64 0, ptr %i.bi, align 8, !tbaa !19
  %.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 288
  store ptr @.str.5, ptr %.ptr.3.i.i.i.i, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 296
  store i64 0, ptr %i.bj, align 8, !tbaa !19
  %.ptr.4.i.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 304
  store ptr @.str.5, ptr %.ptr.4.i.i.i.i, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 312
  store i64 0, ptr %i.bk, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 320
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 352 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb28PartitionedFilterBlockReader17CacheDependenciesERKNS_11ReadOptionsEbPNS_18FilePrefetchBufferE:bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 264
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !571, !range !100, !noundef !101
  %i.fj = trunc nuw i8 %i.fi to i1
  %i.fk = xor i1 %i.fj, true
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 560
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !572
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 576
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !573
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 584
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !574
  invoke void @_ZN7rocksdb18FilePrefetchBufferC2ERKNS_15ReadaheadParamsEbbPNS_10FileSystemEPNS_11SystemClockEPNS_10StatisticsERKSt8functionIFvbRmSB_EENS_23FilePrefetchBufferUsageE(ptr noundef nonnull align 8 dereferenceable(320) %i.ff, ptr noundef nonnull align 8 dereferenceable(48) %22, i1 noundef zeroext %i.fk, i1 noundef zeroext false, ptr noundef %i.fm, ptr noundef %i.fo, ptr noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 3)
          to label %_ZNK7rocksdb15BlockBasedTable3Rep24CreateFilePrefetchBufferERKNS_15ReadaheadParamsEPSt10unique_ptrINS_18FilePrefetchBufferESt14default_deleteIS6_EERKSt8functionIFvbRmSC_EENS_23FilePrefetchBufferUsageE.exit unwind label %bb.t

bb.t:                                             ; preds = %.noexc73
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef 320) #22
  br label %.body

_ZNK7rocksdb15BlockBasedTable3Rep24CreateFilePrefetchBufferERKNS_15ReadaheadParamsEPSt10unique_ptrINS_18FilePrefetchBufferESt14default_deleteIS6_EERKSt8functionIFvbRmSC_EENS_23FilePrefetchBufferUsageE.exit: ; preds = %.noexc73
  store ptr %i.ff, ptr %21, align 8, !tbaa !407
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !408 ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNK7rocksdb15BlockBasedTable3Rep24CreateFilePrefetchBufferERKNS_15ReadaheadParamsEPSt10unique_ptrINS_18FilePrefetchBufferESt14default_deleteIS6_EERKSt8functionIFvbRmSC_EENS_23FilePrefetchBufferUsageE.exit
  %i.fs = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 3)
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #23
  unreachable

bb.w:                                             ; preds = %bb.u, %_ZNK7rocksdb15BlockBasedTable3Rep24CreateFilePrefetchBufferERKNS_15ReadaheadParamsEPSt10unique_ptrINS_18FilePrefetchBufferESt14default_deleteIS6_EERKSt8functionIFvbRmSC_EENS_23FilePrefetchBufferUsageE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  store i64 0, ptr %24, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i8 0, ptr %i.fv, align 8, !tbaa !579
  %i.fw = getelementptr inbounds nuw i8, ptr %24, i64 12
  store i32 4, ptr %i.fw, align 4, !tbaa !580
  %i.fx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i8 7, ptr %i.fx, align 8, !tbaa !581
  %i.fy = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %24, i64 72 ; 3 uses
  store ptr %i.fz, ptr %i.fy, align 8, !tbaa !413
  %i.ga = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 5 uses
  store i64 1, ptr %i.ga, align 8, !tbaa !414
  %i.gb = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gc, align 8, !tbaa !159
  %i.gd = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %24, i64 83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.gd, i8 0, i64 19, i1 false)
  store i8 -1, ptr %i.ge, align 1, !tbaa !582
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  %i.gf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.gf, ptr %25, align 8, !tbaa !80
  %i.gg = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.gg, align 8, !tbaa !81
  store i8 0, ptr %i.gf, align 8, !tbaa !82
  %i.gh = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 3 uses
  store i32 0, ptr %i.gh, align 8, !tbaa !583
  %i.gi = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 3 uses
  store ptr null, ptr %i.gi, align 8, !tbaa !415
  %i.gj = getelementptr inbounds nuw i8, ptr %25, i64 56
  store ptr %i.gh, ptr %i.gj, align 8, !tbaa !584
  %i.gk = getelementptr inbounds nuw i8, ptr %25, i64 64
  store ptr %i.gh, ptr %i.gk, align 8, !tbaa !585
  %i.gl = getelementptr inbounds nuw i8, ptr %25, i64 72
  store i64 0, ptr %i.gl, align 8, !tbaa !586
  %i.gm = getelementptr inbounds nuw i8, ptr %25, i64 80 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %25, i64 96 ; 6 uses
  store ptr %i.gn, ptr %i.gm, align 8, !tbaa !80
  %i.go = getelementptr inbounds nuw i8, ptr %25, i64 88
  store i64 0, ptr %i.go, align 8, !tbaa !81
  store i8 0, ptr %i.gn, align 8, !tbaa !82
  %i.gp = getelementptr inbounds nuw i8, ptr %25, i64 112
  %i.gq = getelementptr inbounds nuw i8, ptr %25, i64 200 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %25, i64 216 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.gp, i8 0, i64 88, i1 false)
  store ptr %i.gr, ptr %i.gq, align 8, !tbaa !80
  %i.gs = getelementptr inbounds nuw i8, ptr %25, i64 208
  store i64 0, ptr %i.gs, align 8, !tbaa !81
  store i8 0, ptr %i.gr, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 360 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !587
  invoke void @_ZNK7rocksdb22RandomAccessFileReader16PrepareIOOptionsERKNS_11ReadOptionsERNS_9IOOptionsEPNS_14IODebugContextE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %26, ptr noundef nonnull align 8 dereferenceable(202) %i.gu, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(84) %24, ptr noundef nonnull %25)
          to label %bb.x unwind label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.gw = load <4 x i8>, ptr %26, align 8, !tbaa !82
  store <4 x i8> %i.gw, ptr %15, align 8, !tbaa !82
  store <4 x i8> zeroinitializer, ptr %26, align 8, !tbaa !82
  %i.gx = getelementptr inbounds nuw i8, ptr %26, i64 4 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 4, !tbaa !127, !range !100, !noundef !101
  %i.gz = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  store i8 %i.gy, ptr %i.gz, align 4, !tbaa !128
  store i8 0, ptr %i.gx, align 4, !tbaa !128
  %i.ha = getelementptr inbounds nuw i8, ptr %26, i64 5 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !82
  %i.hc = getelementptr inbounds nuw i8, ptr %15, i64 5 ; 4 uses
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !129
  store i8 0, ptr %i.ha, align 1, !tbaa !129
  %i.hd = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !89
  store ptr null, ptr %i.hd, align 8, !tbaa !89
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !89 ; 2 uses
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !89
  %.not.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.hg) #22
  %.pr = load ptr, ptr %i.hd, align 8, !tbaa !89  ; 2 uses
  %.not.i.i75 = icmp eq ptr %.pr, null
  br i1 %.not.i.i75, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #22
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.x, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  %i.hh = load i8, ptr %15, align 8, !tbaa !126   ; 2 uses
  %i.hi = icmp eq i8 %i.hh, 0
  br i1 %i.hi, label %bb.y, label %.thread

bb.y:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %i.hj = load ptr, ptr %i.gt, align 8, !tbaa !587
  invoke void @_ZN7rocksdb18FilePrefetchBuffer8PrefetchERKNS_9IOOptionsEPNS_22RandomAccessFileReaderEmm(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %27, ptr noundef nonnull align 8 dereferenceable(320) %i.ff, ptr noundef nonnull align 8 dereferenceable(84) %24, ptr noundef %i.hj, i64 noundef %i.dy, i64 noundef %i.es)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.hk = load <4 x i8>, ptr %27, align 8, !tbaa !82
  store <4 x i8> %i.hk, ptr %15, align 8, !tbaa !82
  store <4 x i8> zeroinitializer, ptr %27, align 8, !tbaa !82
  %i.hl = getelementptr inbounds nuw i8, ptr %27, i64 4 ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 4, !tbaa !127, !range !100, !noundef !101
  store i8 %i.hm, ptr %i.gz, align 4, !tbaa !128
  store i8 0, ptr %i.hl, align 4, !tbaa !128
  %i.hn = getelementptr inbounds nuw i8, ptr %27, i64 5 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !82
  store i8 %i.ho, ptr %i.hc, align 1, !tbaa !129
  store i8 0, ptr %i.hn, align 1, !tbaa !129
  %i.hp = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !89
  store ptr null, ptr %i.hp, align 8, !tbaa !89
  %i.hr = load ptr, ptr %i.he, align 8, !tbaa !89 ; 2 uses
  store ptr %i.hq, ptr %i.he, align 8, !tbaa !89
  %.not.i.i.i.i.i77 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i.i77, label %_ZN7rocksdb6StatusaSEOS0_.exit79.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit79

_ZN7rocksdb6StatusaSEOS0_.exit79:                 ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.hr) #22
  %.pr169 = load ptr, ptr %i.hp, align 8, !tbaa !89 ; 2 uses
  %.not.i.i80 = icmp eq ptr %.pr169, null
  br i1 %.not.i.i80, label %_ZN7rocksdb6StatusaSEOS0_.exit79.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i81

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i81: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit79
  call void @_ZdaPv(ptr noundef nonnull %.pr169) #22
  br label %_ZN7rocksdb6StatusaSEOS0_.exit79.thread

bb.aa:                                            ; preds = %bb.j
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ab:                                            ; preds = %.noexc, %bb.l, %bb.k
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ac:                                            ; preds = %bb.n
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.ci

bb.ad:                                            ; preds = %.noexc62, %_ZNK7rocksdb14IndexBlockIter5valueEv.exit
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ae:                                            ; preds = %bb.p
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.ci

.loopexit176:                                     ; preds = %bb.bw, %.noexc130
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %32, ptr %i.mh, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %.noexc102, %bb.by
  %lpad.loopexit.split-lp258 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.s
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.hx, %bb.af ], [ %i.fr, %bb.t ]
  %i.hy = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !408 ; 2 uses
  %.not.i83 = icmp eq ptr %i.hz, null
  br i1 %.not.i83, label %_ZNSt14_Function_baseD2Ev.exit84, label %bb.ag

bb.ag:                                            ; preds = %.body
  %i.ia = invoke noundef zeroext i1 %i.hz(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit84 unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %i.ib, 0
  call void @__clang_call_terminate(ptr %i.ic) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit84:                 ; preds = %.body, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %.loopexit.split-lp

bb.ai:                                            ; preds = %bb.w
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %bb.ap

bb.aj:                                            ; preds = %bb.y
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %bb.ap

_ZN7rocksdb6StatusaSEOS0_.exit79.thread:          ; preds = %bb.z, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i81, %_ZN7rocksdb6StatusaSEOS0_.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  %.pr171 = load i8, ptr %15, align 8, !tbaa !126 ; 2 uses
  %i.if = icmp eq i8 %.pr171, 0
  br i1 %i.if, label %.critedge, label %.thread

.thread:                                          ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread, %_ZN7rocksdb6StatusaSEOS0_.exit79.thread
  %i.ig = phi i8 [ %.pr171, %_ZN7rocksdb6StatusaSEOS0_.exit79.thread ], [ %i.hh, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ]
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ih, align 8, !tbaa !79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i85 = icmp eq ptr %0, %15
  br i1 %.not.i.i85, label %_ZN7rocksdb6StatusC2EOS0_.exit88, label %bb.ak

bb.ak:                                            ; preds = %.thread
  store i8 %i.ig, ptr %0, align 8, !tbaa !126
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ij = load <4 x i8>, ptr %i.gv, align 1, !tbaa !82
  store <4 x i8> zeroinitializer, ptr %15, align 8, !tbaa !82
  store <4 x i8> %i.ij, ptr %i.ii, align 1, !tbaa !82
  store i8 0, ptr %i.gz, align 4, !tbaa !128
  %i.ik = load i8, ptr %i.hc, align 1, !tbaa !82
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !129
  store i8 0, ptr %i.hc, align 1, !tbaa !129
  %i.im = load ptr, ptr %i.he, align 8, !tbaa !89
  store ptr null, ptr %i.he, align 8, !tbaa !89
  store ptr %i.im, ptr %i.ih, align 8, !tbaa !89
  br label %_ZN7rocksdb6StatusC2EOS0_.exit88

_ZN7rocksdb6StatusC2EOS0_.exit88:                 ; preds = %bb.ak, %.thread
  %i.in = load ptr, ptr %i.gq, align 8, !tbaa !88 ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.gr
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit88
  %i.ip = load i64, ptr %i.gr, align 8, !tbaa !82
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %25, i64 128 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i89, label %_ZNSt3anyD2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke void %i.is(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #23
  unreachable

_ZNSt3anyD2Ev.exit.i:                             ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.iv = load ptr, ptr %i.gm, align 8, !tbaa !88 ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.gn
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt3anyD2Ev.exit.i
  %i.ix = load i64, ptr %i.gn, align 8, !tbaa !82
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt3anyD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.iz = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.ja = load ptr, ptr %i.gi, align 8, !tbaa !415
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, ptr noundef %i.ja)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i unwind label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.jd = load ptr, ptr %25, align 8, !tbaa !88   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.gf
  br i1 %i.je, label %_ZN7rocksdb14IODebugContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i
  %i.jf = load i64, ptr %i.gf, align 8, !tbaa !82
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #22
  br label %_ZN7rocksdb14IODebugContextD2Ev.exit

_ZN7rocksdb14IODebugContextD2Ev.exit:             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %i.jh = load ptr, ptr %i.gb, align 8, !tbaa !418 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb14IODebugContextD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ji, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.jh, %_ZN7rocksdb14IODebugContextD2Ev.exit ] ; 6 uses
  %i.ji = load ptr, ptr %.06.i.i.i, align 8, !tbaa !372 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !88 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !82
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.jq = load ptr, ptr %i.jj, align 8, !tbaa !88 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !82
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #22
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #22
  %.not.i.i.i153 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i153, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZN7rocksdb14IODebugContextD2Ev.exit
  %i.jv = load ptr, ptr %i.fy, align 8, !tbaa !413
  %i.jw = load i64, ptr %i.ga, align 8, !tbaa !414
  %i.jx = shl i64 %i.jw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jv, i8 0, i64 %i.jx, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false)
  %i.jy = load ptr, ptr %i.fy, align 8, !tbaa !413 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.fz
  br i1 %i.jz, label %.loopexit175.thread, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.ka = load i64, ptr %i.ga, align 8, !tbaa !414
  %i.kb = shl i64 %i.ka, 3
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #22
  br label %.loopexit175.thread

.loopexit175.thread:                              ; preds = %bb.ao, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %_ZNKSt14default_deleteIN7rocksdb18FilePrefetchBufferEEclEPS1_.exit.i

bb.ap:                                            ; preds = %bb.aj, %bb.ai
  %.pn42 = phi { ptr, i32 } [ %i.id, %bb.ai ], [ %i.ie, %bb.aj ]
  call void @_ZN7rocksdb14IODebugContextD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.fy) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %.loopexit.split-lp

.critedge:                                        ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit79.thread
  %i.kc = load ptr, ptr %i.gq, align 8, !tbaa !88 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.gr
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90: ; preds = %.critedge
  %i.ke = load i64, ptr %i.gr, align 8, !tbaa !82
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90
  %i.kg = getelementptr inbounds nuw i8, ptr %25, i64 128 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !417 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i92, label %_ZNSt3anyD2Ev.exit.i93, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91
  invoke void %i.kh(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.kg, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit.i93 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #23
  unreachable

_ZNSt3anyD2Ev.exit.i93:                           ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91
  %i.kk = load ptr, ptr %i.gm, align 8, !tbaa !88 ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.gn
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i94: ; preds = %_ZNSt3anyD2Ev.exit.i93
  %i.km = load i64, ptr %i.gn, align 8, !tbaa !82
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i95: ; preds = %_ZNSt3anyD2Ev.exit.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i94
  %i.ko = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.kp = load ptr, ptr %i.gi, align 8, !tbaa !415
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ko, ptr noundef %i.kp)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i96 unwind label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i95
  %i.kq = landingpad { ptr, i32 }
          catch ptr null
  %i.kr = extractvalue { ptr, i32 } %i.kq, 0
  call void @__clang_call_terminate(ptr %i.kr) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i95
  %i.ks = load ptr, ptr %25, align 8, !tbaa !88   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.gf
  br i1 %i.kt, label %_ZN7rocksdb14IODebugContextD2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i97: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i96
  %i.ku = load i64, ptr %i.gf, align 8, !tbaa !82
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #22
  br label %_ZN7rocksdb14IODebugContextD2Ev.exit101

_ZN7rocksdb14IODebugContextD2Ev.exit101:          ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %i.kw = load ptr, ptr %i.gb, align 8, !tbaa !418 ; 2 uses
  %.not5.i.i.i154 = icmp eq ptr %i.kw, null
  br i1 %.not5.i.i.i154, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i162, label %.lr.ph.i.i.i155

.lr.ph.i.i.i155:                                  ; preds = %_ZN7rocksdb14IODebugContextD2Ev.exit101, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i160
  %.06.i.i.i156 = phi ptr [ %i.kx, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i160 ], [ %i.kw, %_ZN7rocksdb14IODebugContextD2Ev.exit101 ] ; 6 uses
  %i.kx = load ptr, ptr %.06.i.i.i156, align 8, !tbaa !372 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.06.i.i.i156, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %.06.i.i.i156, i64 40
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !88 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.06.i.i.i156, i64 56 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i157: ; preds = %.lr.ph.i.i.i155
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !82
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i158: ; preds = %.lr.ph.i.i.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i157
  %i.lf = load ptr, ptr %i.ky, align 8, !tbaa !88 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.06.i.i.i156, i64 24 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i158
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !82
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #22
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i160

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i156, i64 noundef 80) #22
  %.not.i.i.i161 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i161, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i162, label %.lr.ph.i.i.i155, !llvm.loop !3

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i162: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i160, %_ZN7rocksdb14IODebugContextD2Ev.exit101
  %i.lk = load ptr, ptr %i.fy, align 8, !tbaa !413
  %i.ll = load i64, ptr %i.ga, align 8, !tbaa !414
  %i.lm = shl i64 %i.ll, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.lk, i8 0, i64 %i.lm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false)
  %i.ln = load ptr, ptr %i.fy, align 8, !tbaa !413 ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.fz
  br i1 %i.lo, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit165, label %bb.at

bb.at:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i162
  %i.lp = load i64, ptr %i.ga, align 8, !tbaa !414
  %i.lq = shl i64 %i.lp, 3
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #22
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit165

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit165: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i162, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit165, %bb.r
  %i.lr = phi ptr [ %i.ff, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit165 ], [ null, %bb.r ] ; 4 uses
  %i.ls = load ptr, ptr %17, align 8, !tbaa !24
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 224
  %i.lu = load ptr, ptr %i.lt, align 8
  invoke void %i.lu(ptr noundef nonnull align 8 dereferenceable(632) %17)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !375

.noexc102:                                        ; preds = %bb.au
  invoke void @_ZN7rocksdb9BlockIterINS_10IndexValueEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(632) %17)
          to label %_ZN7rocksdb9BlockIterINS_10IndexValueEE11SeekToFirstEv.exit104.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7rocksdb9BlockIterINS_10IndexValueEE11SeekToFirstEv.exit104.preheader: ; preds = %.noexc102
  %i.lv = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.lw = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.lx = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.ly = getelementptr inbounds nuw i8, ptr %17, i64 633
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ma = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.mb = getelementptr inbounds nuw i8, ptr %30, i64 4 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %30, i64 5 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %15, i64 5 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %.not.i.i120 = icmp eq ptr %0, %15
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.mo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  %.promoted = load ptr, ptr %i.mh, align 8
  %.not174 = icmp eq ptr %i.lr, null
  %spec.select = select i1 %.not174, ptr %4, ptr %i.lr
  br label %_ZN7rocksdb9BlockIterINS_10IndexValueEE11SeekToFirstEv.exit104

_ZN7rocksdb9BlockIterINS_10IndexValueEE11SeekToFirstEv.exit104: ; preds = %_ZN7rocksdb9BlockIterINS_10IndexValueEE11SeekToFirstEv.exit104.preheader, %.noexc130
  %31 = phi ptr [ %.promoted, %_ZN7rocksdb9BlockIterINS_10IndexValueEE11SeekToFirstEv.exit104.preheader ], [ %32, %.noexc130 ] ; 10 uses
  %i.mr = load i32, ptr %i.av, align 4, !tbaa !227
  %i.ms = load i32, ptr %i.lv, align 8, !tbaa !363
  %i.mt = icmp ult i32 %i.ms, %i.mr
  br i1 %i.mt, label %bb.av, label %bb.bx

bb.av:                                            ; preds = %_ZN7rocksdb9BlockIterINS_10IndexValueEE11SeekToFirstEv.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.mu = load i8, ptr %i.dj, align 8, !tbaa !365, !range !100, !noalias !588, !noundef !101
  %i.mv = trunc nuw i8 %i.mu to i1
  %i.mw = load ptr, ptr %i.dm, align 8, !noalias !588
  %.not.i.i105 = icmp ne ptr %i.mw, null
  %or.cond.not5.i106 = select i1 %i.mv, i1 true, i1 %.not.i.i105
  %i.mx = load i8, ptr %i.do, align 8, !range !100, !noalias !588
  %i.my = trunc nuw i8 %i.mx to i1
  %or.cond4.i107 = select i1 %or.cond.not5.i106, i1 true, i1 %i.my
  br i1 %or.cond4.i107, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 32, i1 false), !tbaa.struct !366
  br label %_ZNK7rocksdb14IndexBlockIter5valueEv.exit112

bb.ax:                                            ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 -1, i64 16, i1 false), !alias.scope !588
  store ptr @.str.5, ptr %i.lw, align 8, !tbaa !18, !alias.scope !588
  store i64 0, ptr %i.lx, align 8, !tbaa !19, !alias.scope !588
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !131, !noalias !588
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !588
  %i.mz = load i8, ptr %i.ly, align 1, !tbaa !367, !range !100, !noalias !588, !noundef !101
  %i.na = trunc nuw i8 %i.mz to i1
  invoke void @_ZN7rocksdb10IndexValue10DecodeFromEPNS_5SliceEbPKNS_11BlockHandleE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull %7, i1 noundef zeroext %i.na, ptr noundef null)
          to label %.noexc111 unwind label %bb.bb

.noexc111:                                        ; preds = %bb.ax
  %i.nb = load ptr, ptr %i.lz, align 8, !tbaa !89, !noalias !588 ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i108, label %_ZN7rocksdb6StatusD2Ev.exit.i110, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i109

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i109: ; preds = %.noexc111
  call void @_ZdaPv(ptr noundef nonnull %i.nb) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit.i110

_ZN7rocksdb6StatusD2Ev.exit.i110:                 ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i109, %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !588
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !588
  br label %_ZNK7rocksdb14IndexBlockIter5valueEv.exit112

_ZNK7rocksdb14IndexBlockIter5valueEv.exit112:     ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i110, %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false), !tbaa.struct !135
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %29, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  %i.nc = load ptr, ptr %i.a, align 8, !tbaa !148
  invoke void @_ZNK7rocksdb15BlockBasedTable28MaybeReadBlockAndLoadToCacheINS_21ParsedFullFilterBlockEEENSt9enable_ifIXooeqsrT_15kCacheEntryRoleLNS_14CacheEntryRoleE13ELb1EENS_6StatusEE4typeEPNS_18FilePrefetchBufferERKNS_11ReadOptionsERKNS_11BlockHandleENS_10UnownedPtrINS_12DecompressorEEEbPNS_13CachableEntryIS4_EEPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_13BlockContentsEbb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %i.nc, ptr noundef %spec.select, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr null, i1 noundef zeroext false, ptr noundef nonnull %29, ptr noundef null, ptr noundef nonnull %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %_ZNK7rocksdb14IndexBlockIter5valueEv.exit112
  %i.nd = load <4 x i8>, ptr %30, align 8, !tbaa !82
  store <4 x i8> %i.nd, ptr %15, align 8, !tbaa !82
  store <4 x i8> zeroinitializer, ptr %30, align 8, !tbaa !82
  %i.ne = load i8, ptr %i.mb, align 4, !tbaa !127, !range !100, !noundef !101
  store i8 %i.ne, ptr %i.mc, align 4, !tbaa !128
  store i8 0, ptr %i.mb, align 4, !tbaa !128
  %i.nf = load i8, ptr %i.md, align 1, !tbaa !82
  store i8 %i.nf, ptr %i.me, align 1, !tbaa !129
  store i8 0, ptr %i.md, align 1, !tbaa !129
  %i.ng = load ptr, ptr %i.mf, align 8, !tbaa !89
  store ptr null, ptr %i.mf, align 8, !tbaa !89
  %i.nh = load ptr, ptr %i.mg, align 8, !tbaa !89 ; 2 uses
  store ptr %i.ng, ptr %i.mg, align 8, !tbaa !89
  %.not.i.i.i.i.i114 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i.i.i114, label %_ZN7rocksdb6StatusaSEOS0_.exit116.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit116

_ZN7rocksdb6StatusaSEOS0_.exit116:                ; preds = %bb.ay
  call void @_ZdaPv(ptr noundef nonnull %i.nh) #22
  %.pr172 = load ptr, ptr %i.mf, align 8, !tbaa !89 ; 2 uses
  %.not.i.i117 = icmp eq ptr %.pr172, null
  br i1 %.not.i.i117, label %_ZN7rocksdb6StatusaSEOS0_.exit116.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i118

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i118: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit116
  call void @_ZdaPv(ptr noundef nonnull %.pr172) #22
  br label %_ZN7rocksdb6StatusaSEOS0_.exit116.thread

_ZN7rocksdb6StatusaSEOS0_.exit116.thread:         ; preds = %bb.ay, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i118, %_ZN7rocksdb6StatusaSEOS0_.exit116
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.ni = load i8, ptr %15, align 8, !tbaa !126   ; 2 uses
  %i.nj = icmp eq i8 %i.ni, 0                     ; 2 uses
  br i1 %i.nj, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit116.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  br i1 %.not.i.i120, label %_ZN7rocksdb6StatusC2EOS0_.exit123thread-pre-split, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 %i.ni, ptr %0, align 8, !tbaa !126
  %i.nk = load <4 x i8>, ptr %i.ma, align 1, !tbaa !82
  store <4 x i8> zeroinitializer, ptr %15, align 8, !tbaa !82
  store <4 x i8> %i.nk, ptr %i.mi, align 1, !tbaa !82
  store i8 0, ptr %i.mc, align 4, !tbaa !128
  %i.nl = load i8, ptr %i.me, align 1, !tbaa !82
  store i8 %i.nl, ptr %i.mk, align 1, !tbaa !129
  store i8 0, ptr %i.me, align 1, !tbaa !129
  %i.nm = load ptr, ptr %i.mg, align 8, !tbaa !89
  store ptr null, ptr %i.mg, align 8, !tbaa !89
  br label %_ZN7rocksdb6StatusC2EOS0_.exit123thread-pre-split

bb.bb:                                            ; preds = %bb.ax
  %i.nn = landingpad { ptr, i32 }
          cleanup
  store ptr %31, ptr %i.mh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %.loopexit.split-lp

bb.bc:                                            ; preds = %_ZNK7rocksdb14IndexBlockIter5valueEv.exit112
  %i.no = landingpad { ptr, i32 }
          cleanup
  store ptr %31, ptr %i.mh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %.body125

bb.bd:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit116.thread
  %i.np = load ptr, ptr %29, align 16, !tbaa !171
  %.not = icmp eq ptr %i.np, null
  br i1 %.not, label %_ZN7rocksdb6StatusC2EOS0_.exit123thread-pre-split, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nq = load ptr, ptr %i.ml, align 16, !tbaa !167 ; 2 uses
  %i.nr = icmp ne ptr %i.nq, null
  %or.cond = and i1 %3, %i.nr
  br i1 %or.cond, label %bb.bf, label %_ZN7rocksdb6StatusC2EOS0_.exit123

bb.bf:                                            ; preds = %bb.be
  %i.ns = load i64, ptr %18, align 8, !tbaa !370  ; 5 uses
  %i.nt = load i64, ptr %i.mn, align 8, !tbaa !158 ; 2 uses
  %i.nu = urem i64 %i.ns, %i.nt                   ; 3 uses
  %i.nv = load ptr, ptr %i.mm, align 8, !tbaa !157
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nu
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !371 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !372 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !130
  %i.ob = icmp eq i64 %i.ns, %i.oa
  br i1 %i.ob, label %.loopexit, label %.lr.ph.i.i.i.i

bb.bh:                                            ; preds = %bb.bi
  %i.oc = icmp eq i64 %i.ns, %i.of
  br i1 %i.oc, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !2

.lr.ph.i.i.i.i:                                   ; preds = %bb.bg, %bb.bh
  %.020.i.i.i.i = phi ptr [ %i.od, %bb.bh ], [ %i.ny, %bb.bg ]
  %i.od = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !372 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.od, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !130 ; 2 uses
  %i.og = urem i64 %i.of, %i.nt
  %.not19.i.i.i.i = icmp eq i64 %i.og, %i.nu
  br i1 %.not19.i.i.i.i, label %bb.bh, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.bi
  br label %.loopexit.i.i, !llvm.loop !2

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.mm, ptr %6, align 8, !tbaa !589
  %i.oh = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %.noexc124 unwind label %bb.bq ; 5 uses

.noexc124:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.oh, align 8, !tbaa !372
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i64 %i.ns, ptr %i.oi, align 8, !tbaa !591
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oj, i8 0, i64 32, i1 false)
  store ptr %i.oh, ptr %i.mo, align 8, !tbaa !422
  %i.ok = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN7rocksdb13CachableEntryINS2_21ParsedFullFilterBlockEEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.mm, i64 noundef %i.nu, i64 noundef %i.ns, ptr noundef nonnull %i.oh, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb13CachableEntryINS2_21ParsedFullFilterBlockEEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.bj

_ZNSt10_HashtableImSt4pairIKmN7rocksdb13CachableEntryINS2_21ParsedFullFilterBlockEEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc124
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.loopexit

bb.bj:                                            ; preds = %.noexc124
  %i.ol = landingpad { ptr, i32 }
          cleanup
  store ptr %31, ptr %i.mh, align 8
  call void @_ZNSt10_HashtableImSt4pairIKmN7rocksdb13CachableEntryINS2_21ParsedFullFilterBlockEEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body125

.loopexit:                                        ; preds = %bb.bh, %_ZNSt10_HashtableImSt4pairIKmN7rocksdb13CachableEntryINS2_21ParsedFullFilterBlockEEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.bg
  %.pn.i.i = phi ptr [ %i.ok, %_ZNSt10_HashtableImSt4pairIKmN7rocksdb13CachableEntryINS2_21ParsedFullFilterBlockEEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.ny, %bb.bg ], [ %i.od, %bb.bh ] ; 5 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 3 uses
  %i.om = icmp eq ptr %.1.i.i, %29
  br i1 %i.om, label %_ZN7rocksdb6StatusC2EOS0_.exit123thread-pre-split, label %bb.bk, !prof !136

bb.bk:                                            ; preds = %.loopexit
  %i.on = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !167 ; 2 uses
  %.not.i.i127 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i127, label %bb.bm, label %bb.bl, !prof !136

bb.bl:                                            ; preds = %bb.bk
  %i.op = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !168 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !24
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 184
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = invoke noundef zeroext i1 %i.ot(ptr noundef nonnull align 8 dereferenceable(80) %i.oq, ptr noundef nonnull %i.oo, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEE15ReleaseResourceEb.exit.i unwind label %bb.bp ; 0 uses

bb.bm:                                            ; preds = %bb.bk
  %i.ov = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 40
  %i.ow = load i8, ptr %i.ov, align 8, !tbaa !170, !range !100, !noundef !101
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.bn, label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEE15ReleaseResourceEb.exit.i

bb.bn:                                            ; preds = %bb.bm
  %i.oy = load ptr, ptr %.1.i.i, align 8, !tbaa !171 ; 3 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEE15ReleaseResourceEb.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7rocksdb21ParsedFullFilterBlockD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.oy) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef 56) #22
  br label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEE15ReleaseResourceEb.exit.i

bb.bp:                                            ; preds = %bb.bl
  %i.pa = landingpad { ptr, i32 }
          catch ptr null
  store ptr %31, ptr %i.mh, align 8
  %i.pb = extractvalue { ptr, i32 } %i.pa, 0
  call void @__clang_call_terminate(ptr %i.pb) #23
  unreachable

_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEE15ReleaseResourceEb.exit.i: ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl
  %i.pc = load <2 x ptr>, ptr %29, align 16, !tbaa !94
  store <2 x ptr> %i.pc, ptr %.1.i.i, align 8, !tbaa !94
  %i.pd = load ptr, ptr %i.ml, align 16, !tbaa !167
  store ptr %i.pd, ptr %i.on, align 8, !tbaa !167
  %i.pe = load i8, ptr %i.mq, align 8, !tbaa !170, !range !100, !noundef !101
  %i.pf = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 40
  store i8 %i.pe, ptr %i.pf, align 8, !tbaa !170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %29, i8 0, i64 25, i1 false)
  br label %_ZN7rocksdb6StatusC2EOS0_.exit123

bb.bq:                                            ; preds = %.loopexit.i.i
  %i.pg = landingpad { ptr, i32 }
          cleanup
  store ptr %31, ptr %i.mh, align 8
  br label %.body125

_ZN7rocksdb6StatusC2EOS0_.exit123thread-pre-split: ; preds = %bb.bd, %bb.ba, %bb.az, %.loopexit
  %.ph = phi ptr [ %31, %bb.bd ], [ %i.nm, %bb.ba ], [ null, %bb.az ], [ %31, %.loopexit ]
  %.pr252 = load ptr, ptr %i.ml, align 16, !tbaa !167
  br label %_ZN7rocksdb6StatusC2EOS0_.exit123

_ZN7rocksdb6StatusC2EOS0_.exit123:                ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit123thread-pre-split, %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEE15ReleaseResourceEb.exit.i, %bb.be
  %i.ph = phi ptr [ %.pr252, %_ZN7rocksdb6StatusC2EOS0_.exit123thread-pre-split ], [ null, %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEE15ReleaseResourceEb.exit.i ], [ %i.nq, %bb.be ] ; 2 uses
  %32 = phi ptr [ %.ph, %_ZN7rocksdb6StatusC2EOS0_.exit123thread-pre-split ], [ %31, %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEE15ReleaseResourceEb.exit.i ], [ %31, %bb.be ] ; 4 uses
  %.not.i.i128 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i128, label %bb.bs, label %bb.br, !prof !136

bb.br:                                            ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit123
  %i.pi = load ptr, ptr %i.mp, align 8, !tbaa !168 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !24
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 184
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = invoke noundef zeroext i1 %i.pl(ptr noundef nonnull align 8 dereferenceable(80) %i.pi, ptr noundef nonnull %i.ph, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit unwind label %bb.bv ; 0 uses

bb.bs:                                            ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit123
  %i.pn = load i8, ptr %i.mq, align 8, !tbaa !170, !range !100, !noundef !101
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %bb.bt, label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit

bb.bt:                                            ; preds = %bb.bs
  %i.pp = load ptr, ptr %29, align 16, !tbaa !171 ; 3 uses
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN7rocksdb21ParsedFullFilterBlockD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.pp) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef 56) #22
  br label %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit

bb.bv:                                            ; preds = %bb.br
  %i.pr = landingpad { ptr, i32 }
          catch ptr null
  store ptr %32, ptr %i.mh, align 8
  %i.ps = extractvalue { ptr, i32 } %i.pr, 0
  call void @__clang_call_terminate(ptr %i.ps) #23
  unreachable

_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit: ; preds = %bb.br, %bb.bs, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br i1 %i.nj, label %bb.bw, label %.loopexit175

bb.bw:                                            ; preds = %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit
  %i.pt = load ptr, ptr %17, align 8, !tbaa !24
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 256
  %i.pv = load ptr, ptr %i.pu, align 8
  invoke void %i.pv(ptr noundef nonnull align 8 dereferenceable(632) %17)
          to label %.noexc130 unwind label %.loopexit176, !inline_history !423

.noexc130:                                        ; preds = %bb.bw
  invoke void @_ZN7rocksdb9BlockIterINS_10IndexValueEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(632) %17)
          to label %_ZN7rocksdb9BlockIterINS_10IndexValueEE11SeekToFirstEv.exit104 unwind label %.loopexit176

.body125:                                         ; preds = %bb.bq, %bb.bj, %bb.bc
  %.pn45 = phi { ptr, i32 } [ %i.no, %bb.bc ], [ %i.ol, %bb.bj ], [ %i.pg, %bb.bq ]
  call void @_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %.loopexit.split-lp

bb.bx:                                            ; preds = %_ZN7rocksdb9BlockIterINS_10IndexValueEE11SeekToFirstEv.exit104
  store ptr %31, ptr %i.mh, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.pw = getelementptr inbounds nuw i8, ptr %17, i64 544
  %i.px = load <4 x i8>, ptr %i.pw, align 8, !tbaa !82, !noalias !592
  store <4 x i8> %i.px, ptr %0, align 8, !tbaa !82, !alias.scope !592
  %i.py = getelementptr inbounds nuw i8, ptr %17, i64 548
  %i.pz = load i8, ptr %i.py, align 4, !tbaa !128, !range !100, !noalias !592, !noundef !101
  store i8 %i.pz, ptr %i.mj, align 4, !tbaa !128, !alias.scope !592
  %i.qa = getelementptr inbounds nuw i8, ptr %17, i64 549
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !129, !noalias !592
  store i8 %i.qb, ptr %i.mk, align 1, !tbaa !129, !alias.scope !592
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !592
  %i.qc = load ptr, ptr %i.cc, align 8, !tbaa !89, !noalias !592 ; 2 uses
  %.not.i.i.i132 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i.i132, label %_ZNK7rocksdb9BlockIterINS_10IndexValueEE6statusEv.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %5, ptr noundef nonnull %i.qc)
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %bb.by
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !89, !noalias !592
  br label %_ZNK7rocksdb9BlockIterINS_10IndexValueEE6statusEv.exit

_ZNK7rocksdb9BlockIterINS_10IndexValueEE6statusEv.exit: ; preds = %bb.bx, %.noexc133
  %storemerge.i = phi ptr [ %.pre.i.i, %.noexc133 ], [ null, %bb.bx ]
  store ptr %storemerge.i, ptr %i.mh, align 8, !tbaa !89, !alias.scope !592
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !592
  br label %.loopexit175.a

.loopexit175:                                     ; preds = %_ZN7rocksdb13CachableEntryINS_21ParsedFullFilterBlockEED2Ev.exit
  store ptr %32, ptr %i.mh, align 8
  br label %.loopexit175.a

.loopexit175.a:                                   ; preds = %.loopexit175, %_ZNK7rocksdb9BlockIterINS_10IndexValueEE6statusEv.exit
  %.not.i134 = icmp eq ptr %i.lr, null
  br i1 %.not.i134, label %_ZNSt10unique_ptrIN7rocksdb18FilePrefetchBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb18FilePrefetchBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb18FilePrefetchBufferEEclEPS1_.exit.i: ; preds = %.loopexit175.thread, %.loopexit175.a
  %i.qd = phi ptr [ %i.ff, %.loopexit175.thread ], [ %i.lr, %.loopexit175.a ] ; 2 uses
  call void @_ZN7rocksdb18FilePrefetchBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %i.qd) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef 320) #22
  br label %_ZNSt10unique_ptrIN7rocksdb18FilePrefetchBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb18FilePrefetchBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %.loopexit175.a, %_ZNKSt14default_deleteIN7rocksdb18FilePrefetchBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.qe = load ptr, ptr %i.ck, align 8, !tbaa !88 ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.cl
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135: ; preds = %_ZNSt10unique_ptrIN7rocksdb18FilePrefetchBufferESt14default_deleteIS1_EED2Ev.exit
  %i.qg = load i64, ptr %i.cl, align 8, !tbaa !82
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136: ; preds = %_ZNSt10unique_ptrIN7rocksdb18FilePrefetchBufferESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135
  %i.qi = load ptr, ptr %i.dm, align 8, !tbaa !368 ; 11 uses
  %.not.i.i137 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i137, label %_ZN7rocksdb14IndexBlockIterD2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !229 ; 3 uses
  %i.ql = load ptr, ptr %i.qi, align 8, !tbaa !228 ; 4 uses
  %i.qm = icmp eq ptr %i.qk, %i.ql
  br i1 %i.qm, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store i64 0, ptr %i.qn, align 8, !tbaa !230
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qi, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i138 = icmp eq ptr %i.ql, %i.qo
  br i1 %.not.i.i.i.i.i.i138, label %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qp = icmp eq ptr %i.ql, null
  br i1 %i.qp, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZdaPv(ptr noundef nonnull %i.ql) #22
  %.pre.pre.i.i.i.i.i = load ptr, ptr %i.qj, align 8, !tbaa !229
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pre.i.i.i.i.i = phi ptr [ %.pre.pre.i.i.i.i.i, %bb.cd ], [ %i.qk, %bb.cc ]
  store ptr %i.qo, ptr %i.qi, align 8, !tbaa !228
  br label %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i.i.i.i.i

_ZN7rocksdb7IterKey11ResetBufferEv.exit.i.i.i.i.i: ; preds = %bb.ce, %bb.cb
  %i.qq = phi ptr [ %i.qk, %bb.cb ], [ %.pre.i.i.i.i.i, %bb.ce ]
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  store i64 39, ptr %i.qr, align 8, !tbaa !231
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qi, i64 112
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !233 ; 4 uses
  %i.qu = icmp eq ptr %i.qq, %i.qt
  br i1 %i.qu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i.i.i.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store i64 0, ptr %i.qv, align 8, !tbaa !230
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZN7rocksdb7IterKey11ResetBufferEv.exit.i.i.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 72
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.qt, %i.qw
  %i.qx = icmp eq ptr %i.qt, null
  %or.cond.i.i.i.i.i = or i1 %.not.i1.i.i.i.i.i, %i.qx
  br i1 %or.cond.i.i.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb14IndexBlockIter16GlobalSeqnoStateEEclEPS2_.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %i.qt) #22
  br label %_ZNKSt14default_deleteIN7rocksdb14IndexBlockIter16GlobalSeqnoStateEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb14IndexBlockIter16GlobalSeqnoStateEEclEPS2_.exit.i.i: ; preds = %bb.ch, %bb.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.qi, i64 noundef 216) #22
  br label %_ZN7rocksdb14IndexBlockIterD2Ev.exit

_ZN7rocksdb14IndexBlockIterD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136, %_ZNKSt14default_deleteIN7rocksdb14IndexBlockIter16GlobalSeqnoStateEEclEPS2_.exit.i.i
  call void @_ZN7rocksdb9BlockIterINS_10IndexValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(728) %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

.loopexit.split-lp:                               ; preds = %.loopexit176, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body125, %bb.bb, %bb.ap, %_ZNSt14_Function_baseD2Ev.exit84
  %.pn47 = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt14_Function_baseD2Ev.exit84 ], [ %.pn45, %.body125 ], [ %i.nn, %bb.bb ], [ %.pn42, %bb.ap ], [ %lpad.loopexit, %.loopexit176 ], [ %lpad.loopexit.split-lp258, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN7rocksdb18FilePrefetchBufferESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ad, %bb.ae, %.loopexit.split-lp, %bb.ac
  %.pn47.pn.pn = phi { ptr, i32 } [ %i.hu, %bb.ac ], [ %.pn47, %.loopexit.split-lp ], [ %i.hw, %bb.ae ], [ %i.hv, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ab, %bb.ci
  %.pn47.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ht, %bb.ab ], [ %.pn47.pn.pn, %bb.ci ]
  call void @_ZN7rocksdb14IndexBlockIterD2Ev(ptr noundef nonnull align 8 dead_on_return(721) dereferenceable(728) %17) #21
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.aa
  %.pn47.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn, %bb.cj ], [ %i.hs, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.cq

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %_ZN7rocksdb14IndexBlockIterD2Ev.exit
  %i.qy = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !89 ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.qz, null
  br i1 %.not.i.i140, label %_ZN7rocksdb6StatusD2Ev.exit142, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i141

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i141: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.qz) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit142

_ZN7rocksdb6StatusD2Ev.exit142:                   ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.ra = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !149 ; 2 uses
  %.not.i.i143 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i143, label %bb.cm, label %bb.cl, !prof !136

bb.cl:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit142
  %i.rc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !162 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !24
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 184
  %i.rg = load ptr, ptr %i.rf, align 8
  %i.rh = invoke noundef zeroext i1 %i.rg(ptr noundef nonnull align 8 dereferenceable(80) %i.rd, ptr noundef nonnull %i.rb, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_27Block_kFilterPartitionIndexEED2Ev.exit unwind label %bb.cp ; 0 uses

bb.cm:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit142
  %i.ri = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.rj = load i8, ptr %i.ri, align 8, !tbaa !150, !range !100, !noundef !101
  %i.rk = trunc nuw i8 %i.rj to i1
  br i1 %i.rk, label %bb.cn, label %_ZN7rocksdb13CachableEntryINS_27Block_kFilterPartitionIndexEED2Ev.exit

bb.cn:                                            ; preds = %bb.cm
  %i.rl = load ptr, ptr %14, align 8, !tbaa !163  ; 3 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %_ZN7rocksdb13CachableEntryINS_27Block_kFilterPartitionIndexEED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZN7rocksdb5BlockD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.rl) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef 104) #22
  br label %_ZN7rocksdb13CachableEntryINS_27Block_kFilterPartitionIndexEED2Ev.exit

bb.cp:                                            ; preds = %bb.cl
  %i.rn = landingpad { ptr, i32 }
          catch ptr null
  %i.ro = extractvalue { ptr, i32 } %i.rn, 0
  call void @__clang_call_terminate(ptr %i.ro) #23
  unreachable

_ZN7rocksdb13CachableEntryINS_27Block_kFilterPartitionIndexEED2Ev.exit: ; preds = %bb.cl, %bb.cm, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.rp = load ptr, ptr %i.j, align 8, !tbaa !88  ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.k
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144: ; preds = %_ZN7rocksdb13CachableEntryINS_27Block_kFilterPartitionIndexEED2Ev.exit
  %i.rr = load i64, ptr %i.k, align 8, !tbaa !82
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145: ; preds = %_ZN7rocksdb13CachableEntryINS_27Block_kFilterPartitionIndexEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144
  %i.rt = load ptr, ptr %i.f, align 8, !tbaa !88  ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.g
  br i1 %i.ru, label %_ZN7rocksdb23BlockCacheLookupContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145
  %i.rv = load i64, ptr %i.g, align 8, !tbaa !82
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #22
  br label %_ZN7rocksdb23BlockCacheLookupContextD2Ev.exit

_ZN7rocksdb23BlockCacheLookupContextD2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  ret void

bb.cq:                                            ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn47.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn.pn, %bb.ck ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !89 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i150, label %_ZN7rocksdb6StatusD2Ev.exit152, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i151

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i151: ; preds = %bb.cq
  call void @_ZdaPv(ptr noundef nonnull %i.ry) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit152

_ZN7rocksdb6StatusD2Ev.exit152:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i151, %bb.cq, %bb.g
  %.pn47.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %.pn47.pn.pn.pn.pn.pn.pn, %bb.cq ], [ %.pn47.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZN7rocksdb13CachableEntryINS_27Block_kFilterPartitionIndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN7rocksdb23BlockCacheLookupContextD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  resume { ptr, i32 } %.pn47.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb9BlockIterINS_10IndexValueEE11SeekToFirstEv(ptr noundef nonnull align 8 dereferenceable(632) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %0)
  tail call void @_ZN7rocksdb9BlockIterINS_10IndexValueEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(632) %0)
  ret void
}

declare void @_ZNK7rocksdb22RandomAccessFileReader16PrepareIOOptionsERKNS_11ReadOptionsERNS_9IOOptionsEPNS_14IODebugContextE(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8, ptr noundef nonnull align 8 dereferenceable(202), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) local_unnamed_addr #3

declare void @_ZN7rocksdb18FilePrefetchBuffer8PrefetchERKNS_9IOOptionsEPNS_22RandomAccessFileReaderEmm(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb14IODebugContextD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !82
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !417  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt3anyD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void %i.h(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #23
  unreachable

_ZNSt3anyD2Ev.exit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt3anyD2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !82
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt3anyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !415
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.s)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.v = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

end_hunk_1
