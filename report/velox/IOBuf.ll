inline.NumInlined: 545
inline.NumDeleted: 270
begin_hunk_0_@_ZN5folly5IOBuf14moveToFbStringEv:bb.a
  %.not.i.i16 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !3836
  store ptr %i.am, ptr %0, align 8, !tbaa !3929
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.aq, align 8, !tbaa !3929
  %i.ar = add i64 %i.ap, 9223372036854775807
  %i.as = or i64 %i.ar, -9223372036854775808
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.as, ptr %i.at, align 8, !tbaa !3930
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPcmmNS_23AcquireMallocatedStringE.exit

bb.k:                                             ; preds = %bb.i
  tail call void @free(ptr noundef %i.am) #35
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 23, ptr %i.au, align 1, !tbaa !3929
  store i8 0, ptr %0, align 8, !tbaa !3929
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPcmmNS_23AcquireMallocatedStringE.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPcmmNS_23AcquireMallocatedStringE.exit: ; preds = %bb.j, %bb.k
  %.not11 = icmp eq ptr @_Z14io_buf_free_cbPvm, null
  br i1 %.not11, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPcmmNS_23AcquireMallocatedStringE.exit
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !3803 ; 2 uses
  %.not12 = icmp eq ptr %i.av, null
  br i1 %.not12, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %.not13 = icmp eq ptr %i.ax, null
  br i1 %.not13, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !3806
  %i.az = ptrtoint ptr %i.ax to i64
  tail call void @_Z14io_buf_free_cbPvm(ptr noundef %i.ay, i64 noundef %i.az) #35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEC2EPcmmNS_23AcquireMallocatedStringE.exit
  %.not.i17.not = icmp eq ptr %.0, null
  br i1 %.not.i17.not, label %_ZN5folly5IOBuf10SharedInfo27invokeAndDeleteEachObserverEPNS0_27SharedInfoObserverEntryBaseENS_11FunctionRefIFvRS2_EEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr null, ptr %i.bc, align 8, !tbaa !28
  br label %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i

_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i: ; preds = %bb.p, %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i
  %.011.i = phi ptr [ %.0, %bb.p ], [ %i.be, %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %i.bf = load ptr, ptr %.011.i, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(24) %.011.i) #35, !call_target !3932, !inline_history !3933
  %i.bi = load ptr, ptr %.011.i, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.011.i) #35, !call_target !32, !inline_history !3926
  %.not9.i = icmp eq ptr %i.be, null
  br i1 %.not9.i, label %_ZN5folly5IOBuf10SharedInfo27invokeAndDeleteEachObserverEPNS0_27SharedInfoObserverEntryBaseENS_11FunctionRefIFvRS2_EEE.exit, label %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i, !llvm.loop !3765

_ZN5folly5IOBuf10SharedInfo27invokeAndDeleteEachObserverEPNS0_27SharedInfoObserverEntryBaseENS_11FunctionRefIFvRS2_EEE.exit: ; preds = %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i, %bb.o
  %.not14 = icmp eq i8 %.04, 0
  br i1 %.not14, label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5folly5IOBuf10SharedInfo27invokeAndDeleteEachObserverEPNS0_27SharedInfoObserverEntryBaseENS_11FunctionRefIFvRS2_EEE.exit
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !3803 ; 5 uses
  switch i8 %.04, label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit [
    i8 2, label %bb.t
    i8 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 32) #37
  br label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit

bb.t:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -56
  %i.bo = icmp eq ptr %i.bn, %1
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -62
  store atomic i8 1, ptr %i.bp monotonic, align 1
  br label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 -64
  tail call void @_ZN5folly5IOBuf24decrementStorageRefcountEPNS0_11HeapStorageE(ptr noundef nonnull %i.bq) #35
  br label %_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit

_ZN5folly5IOBuf10SharedInfo14releaseStorageEPS0_NS1_11StorageTypeEPS1_.exit: ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %_ZN5folly5IOBuf10SharedInfo27invokeAndDeleteEachObserverEPNS0_27SharedInfoObserverEntryBaseENS_11FunctionRefIFvRS2_EEE.exit
  store ptr null, ptr %i.a, align 8, !tbaa !3803
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.br, align 8, !tbaa !3805
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK5folly5IOBuf6cbeginEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::IOBuf::Iterator") align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #30 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !3934
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !3937
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3806 ; 2 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !3809
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store ptr %i.d, ptr %i.b, align 8, !tbaa !3808
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !3808
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZNK5folly5IOBuf4cendEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::IOBuf::Iterator") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly5IOBuf10fromStringESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3938   ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3939
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3942 ; 2 uses
  tail call void @_ZN5folly5IOBuf17takeOwnershipImplEPvmmmPFvS1_S1_ES1_bNS0_19TakeOwnershipOptionEPNSt3pmr15memory_resourceE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %i.b, i64 noundef %i.d, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull @"_ZZN5folly5IOBuf10fromStringESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EEEN3$_08__invokeEPvSC_", ptr noundef nonnull %i.a, i1 noundef zeroext true, i32 noundef 0, ptr noundef null)
  store ptr null, ptr %1, align 8, !tbaa !3938
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN5folly5IOBuf10fromStringESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EEEN3$_08__invokeEPvSC_"(ptr nofree readnone captures(none) %0, ptr noundef %1) #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %"_ZZN5folly5IOBuf10fromStringESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EEENK3$_0clEPvSC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !3939   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !3929
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 32) #37
  br label %"_ZZN5folly5IOBuf10fromStringESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EEENK3$_0clEPvSC_.exit"

"_ZZN5folly5IOBuf10fromStringESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EEENK3$_0clEPvSC_.exit": ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly5IOBuf6getIovEv(ptr dead_on_unwind noalias writable sret(%"class.folly::fbvector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.iovec, align 8              ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04.i = phi i64 [ 1, %bb.a ], [ %i.a, %bb.b ]  ; 2 uses
  %.pn.i = phi ptr [ %1, %bb.a ], [ %.0.i, %bb.b ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !3801 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  %i.a = add i64 %.04.i, 1
  br i1 %.not.i, label %_ZNK5folly5IOBuf18countChainElementsEv.exit, label %bb.b, !llvm.loop !3876

_ZNK5folly5IOBuf18countChainElementsEv.exit:      ; preds = %bb.b
  invoke void @_ZN5folly8fbvectorI5iovecSaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.04.i)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %_ZNK5folly5IOBuf18countChainElementsEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.0.i3 = phi ptr [ %1, %bb.c ], [ %i.m, %bb.h ] ; 4 uses
  %i.e = load i64, ptr %.0.i3, align 8, !tbaa !3809
  %.not.i4 = icmp eq i64 %i.e, 0
  br i1 %.not.i4, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3806
  store ptr %i.g, ptr %2, align 8, !tbaa !3943
  %3 = load i64, ptr %.0.i3, align 8, !tbaa !3809
  store i64 %3, ptr %i.b, align 8, !tbaa !3945
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !3946 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !3950
  %.not.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !3951
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !3946
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.c, align 8, !tbaa !3946
  br label %_ZN5folly8fbvectorI5iovecSaIS1_EE9push_backEOS1_.exit.i

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN5folly8fbvectorI5iovecSaIS1_EE16emplace_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN5folly8fbvectorI5iovecSaIS1_EE9push_backEOS1_.exit.i unwind label %.loopexit

_ZN5folly8fbvectorI5iovecSaIS1_EE9push_backEOS1_.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.h

bb.h:                                             ; preds = %_ZN5folly8fbvectorI5iovecSaIS1_EE9push_backEOS1_.exit.i, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i3, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3801 ; 2 uses
  %.not8.i = icmp eq ptr %i.m, %1
  br i1 %.not8.i, label %_ZNK5folly5IOBuf11appendToIovEPNS_8fbvectorI5iovecSaIS2_EEE.exit, label %bb.d, !llvm.loop !3952

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %_ZNK5folly5IOBuf18countChainElementsEv.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !3953   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.n) #35
  br label %_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit

_ZN5folly8fbvectorI5iovecSaIS1_EED2Ev.exit:       ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNK5folly5IOBuf11appendToIovEPNS_8fbvectorI5iovecSaIS2_EEE.exit: ; preds = %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8fbvectorI5iovecSaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3950
  %i.c = load ptr, ptr %0, align 8, !tbaa !3954   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  %.not = icmp ugt i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN5folly8fbvectorI5iovecSaIS1_EE16reserve_in_placeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  br i1 %i.h, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = shl i64 %1, 4                            ; 5 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %bb.f, !prof !3783

bb.f:                                             ; preds = %bb.e
  %i.l = icmp sgt i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.e
  %i.m = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #38
  br i1 %i.m, label %bb.g, label %_ZN5folly14goodMallocSizeEm.exit

bb.g:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %bb.f
  %i.n = tail call i64 @nallocx(i64 noundef %i.i, i32 noundef 0) #35 ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not.i, i64 %i.i, i64 %i.n
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %bb.d, %bb.f, %_ZN5folly10canNallocxEv.exit.i, %bb.g
  %.0.i = phi i64 [ 0, %bb.d ], [ %i.o, %bb.g ], [ %i.i, %_ZN5folly10canNallocxEv.exit.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.p = lshr i64 %.0.i, 4
  %i.q = and i64 %.0.i, -16
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #39 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZN5folly8fbvectorI5iovecSaIS1_EE10M_allocateEm.exit

bb.h:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #15
  unreachable

_ZN5folly8fbvectorI5iovecSaIS1_EE10M_allocateEm.exit: ; preds = %_ZN5folly14goodMallocSizeEm.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !3954   ; 4 uses
  %.not.i.i.i8 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i8, label %_ZN5folly6detail14ScopeGuardImplIZNS_8fbvectorI5iovecSaIS3_EE7reserveEmEUlvE_Lb1EED2Ev.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5folly8fbvectorI5iovecSaIS1_EE10M_allocateEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3946
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.s, i64 %i.x, i1 false)
  tail call void @free(ptr noundef nonnull %i.s) #35
  %.pre = load ptr, ptr %0, align 8, !tbaa !3954
  %i.y = ptrtoint ptr %.pre to i64
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_8fbvectorI5iovecSaIS3_EE7reserveEmEUlvE_Lb1EED2Ev.exit.thread

_ZN5folly6detail14ScopeGuardImplIZNS_8fbvectorI5iovecSaIS3_EE7reserveEmEUlvE_Lb1EED2Ev.exit.thread: ; preds = %_ZN5folly8fbvectorI5iovecSaIS1_EE10M_allocateEm.exit, %bb.i
  %i.z = phi i64 [ 0, %_ZN5folly8fbvectorI5iovecSaIS1_EE10M_allocateEm.exit ], [ %i.y, %bb.i ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !3950
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3946
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.z
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 %i.ae
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !3946
  store ptr %i.r, ptr %0, align 8, !tbaa !3954
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.a, %_ZN5folly6detail14ScopeGuardImplIZNS_8fbvectorI5iovecSaIS3_EE7reserveEmEUlvE_Lb1EED2Ev.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly5IOBuf11appendToIovEPNS_8fbvectorI5iovecSaIS2_EEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %struct.iovec, align 8              ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.l, %bb.f ]    ; 4 uses
  %i.d = load i64, ptr %.0, align 8, !tbaa !3809
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3806
  store ptr %i.f, ptr %2, align 8, !tbaa !3943
  %3 = load i64, ptr %.0, align 8, !tbaa !3809
  store i64 %3, ptr %i.a, align 8, !tbaa !3945
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !3946 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !3950
  %.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !3951
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !3946
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.b, align 8, !tbaa !3946
  br label %_ZN5folly8fbvectorI5iovecSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZN5folly8fbvectorI5iovecSaIS1_EE16emplace_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN5folly8fbvectorI5iovecSaIS1_EE9push_backEOS1_.exit

_ZN5folly8fbvectorI5iovecSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.f

bb.f:                                             ; preds = %_ZN5folly8fbvectorI5iovecSaIS1_EE9push_backEOS1_.exit, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3801 ; 2 uses
  %.not8 = icmp eq ptr %i.l, %0
  br i1 %.not8, label %bb.g, label %bb.b, !llvm.loop !3952

bb.g:                                             ; preds = %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly8fbvectorI5iovecSaIS1_EE16reserve_in_placeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i = icmp eq i8 %i.a, 0
  br i1 %.not.i.i, label %_ZN5folly13usingJEMallocEv.exit, label %bb.b, !prof !3783

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.i

_ZN5folly13usingJEMallocEv.exit:                  ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() #38
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %_ZN5folly13usingJEMallocEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3950
  %i.f = load ptr, ptr %0, align 8, !tbaa !3954
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 4096
  br i1 %i.j, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = shl i64 %1, 4                            ; 5 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %bb.f, !prof !3783

bb.f:                                             ; preds = %bb.e
  %i.n = icmp sgt i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.e
  %i.o = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #38
  br i1 %i.o, label %bb.g, label %_ZN5folly14goodMallocSizeEm.exit

bb.g:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %bb.f
  %i.p = tail call i64 @nallocx(i64 noundef %i.k, i32 noundef 0) #35 ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i, i64 %i.k, i64 %i.p
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %bb.d, %bb.f, %_ZN5folly10canNallocxEv.exit.i, %bb.g
  %.0.i = phi i64 [ 0, %bb.d ], [ %i.q, %bb.g ], [ %i.k, %_ZN5folly10canNallocxEv.exit.i ], [ %i.k, %bb.f ] ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !3954
  %i.s = tail call i64 @xallocx(ptr noundef %i.r, i64 noundef %.0.i, i64 noundef 0, i32 noundef 0) #35
  %i.t = icmp eq i64 %i.s, %.0.i
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !3954
  %i.v = lshr i64 %.0.i, 4
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v
  store ptr %i.w, ptr %i.d, align 8, !tbaa !3950
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h, %_ZN5folly14goodMallocSizeEm.exit, %bb.c, %_ZN5folly13usingJEMallocEv.exit
  %.1 = phi i1 [ false, %_ZN5folly13usingJEMallocEv.exit ], [ false, %bb.c ], [ false, %_ZN5folly14goodMallocSizeEm.exit ], [ true, %bb.h ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8fbvectorI5iovecSaIS1_EE16emplace_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3946
  %i.d = load ptr, ptr %0, align 8, !tbaa !3954   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3950 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 4                   ; 3 uses
  %i.n = icmp eq ptr %i.j, %i.d
  br i1 %i.n, label %_ZNK5folly8fbvectorI5iovecSaIS1_EE23computePushBackCapacityEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %i.m, 256
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = ashr exact i64 %i.l, 3
  br label %_ZNK5folly8fbvectorI5iovecSaIS1_EE23computePushBackCapacityEv.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %i.m, 8192
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = ashr exact i64 %i.l, 3
  br label %_ZNK5folly8fbvectorI5iovecSaIS1_EE23computePushBackCapacityEv.exit

bb.f:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i64 %i.m, 3
  %i.t = add nuw nsw i64 %i.s, 1
  %i.u = lshr i64 %i.t, 1
  br label %_ZNK5folly8fbvectorI5iovecSaIS1_EE23computePushBackCapacityEv.exit

_ZNK5folly8fbvectorI5iovecSaIS1_EE23computePushBackCapacityEv.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.u, %bb.f ], [ %i.p, %bb.c ], [ %i.r, %bb.e ], [ 4, %bb.a ]
  %i.v = call noundef zeroext i1 @_ZN5folly8fbvectorI5iovecSaIS1_EE24emplace_back_aux_xallocxERmmmRPS1_S5_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.h, i64 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.d)
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5folly8fbvectorI5iovecSaIS1_EE23computePushBackCapacityEv.exit
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !3946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !3951
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !3946
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.b, align 8, !tbaa !3946
  br label %bb.l

bb.h:                                             ; preds = %_ZNK5folly8fbvectorI5iovecSaIS1_EE23computePushBackCapacityEv.exit
  %i.z = load i64, ptr %i.a, align 8, !tbaa !3807 ; 2 uses
  %i.aa = lshr i64 %i.z, 4
  %i.ab = and i64 %i.z, -16
  %i.ac = call noalias ptr @malloc(i64 noundef %i.ab) #39 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZN5folly8fbvectorI5iovecSaIS1_EE10M_allocateEm.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #15
  unreachable

_ZN5folly8fbvectorI5iovecSaIS1_EE10M_allocateEm.exit: ; preds = %bb.h
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !3946
  %i.ae = load ptr, ptr %0, align 8, !tbaa !3954  ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_8fbvectorI5iovecSaIS3_EE16emplace_back_auxIJS3_EEEvDpOT_EUlvE_Lb1EED2Ev.exit.thread, label %bb.j

_ZN5folly6detail14ScopeGuardImplIZNS_8fbvectorI5iovecSaIS3_EE16emplace_back_auxIJS3_EEEvDpOT_EUlvE_Lb1EED2Ev.exit.thread: ; preds = %_ZN5folly8fbvectorI5iovecSaIS1_EE10M_allocateEm.exit
  %i.ag = ashr i64 %i.af, 4
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ag ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !3951
  br label %bb.k

bb.j:                                             ; preds = %_ZN5folly8fbvectorI5iovecSaIS1_EE10M_allocateEm.exit
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.af, %i.ai                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.ae, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aj ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !3951
  call void @free(ptr noundef nonnull %i.ae) #35
  br label %bb.k

bb.k:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_8fbvectorI5iovecSaIS3_EE16emplace_back_auxIJS3_EEEvDpOT_EUlvE_Lb1EED2Ev.exit.thread, %bb.j
  %.pn = phi ptr [ %i.ah, %_ZN5folly6detail14ScopeGuardImplIZNS_8fbvectorI5iovecSaIS3_EE16emplace_back_auxIJS3_EEEvDpOT_EUlvE_Lb1EED2Ev.exit.thread ], [ %i.ak, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  store ptr %i.ac, ptr %0, align 8, !tbaa !3954
  store ptr %i.al, ptr %i.b, align 8, !tbaa !3946
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.am, ptr %i.i, align 8, !tbaa !3950
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void
}
end_hunk_0
