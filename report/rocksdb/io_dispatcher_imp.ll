Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/io_dispatcher_imp?download=true
inline.NumInlined: 3493
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb16IODispatcherImpl4Impl17PrepareIORequestsERKSt10shared_ptrINS_5IOJobEERKSt6vectorImSaImEERKS7_INS_11BlockHandleESaISC_EEPS7_INS_13FSReadRequestESaISH_EEPS7_IS9_SaIS9_EEPmSO_:bb.a

_ZNSt6vectorIN7rocksdb13FSReadRequestESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.r, %bb.s
  %i.di = phi ptr [ %i.dh, %bb.r ], [ %.pre72, %bb.s ] ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -96
  store i64 %i.cy, ptr %i.dj, align 8, !tbaa !467
  %reass.sub = sub i64 %i.cz, %i.cy
  %i.dk = add i64 %reass.sub, 5
  %i.dl = add i64 %i.dk, %i.db                    ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -88
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !468
  %i.dn = getelementptr inbounds i8, ptr %i.di, i64 -80
  store ptr null, ptr %i.dn, align 8, !tbaa !469
  %i.do = add i64 %i.dl, %.04665                  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.054.064, i64 24 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ae
  br i1 %i.dq, label %._crit_edge68, label %bb.q

bb.t:                                             ; preds = %._crit_edge68
  store i64 %.046.lcssa, ptr %6, align 8, !tbaa !62
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge68
  %.not50 = icmp eq ptr %7, null
  br i1 %.not50, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %.0.lcssa, ptr %7, align 8, !tbaa !62
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb16IODispatcherImpl4Impl14ExecuteAsyncIOERKSt10shared_ptrINS_5IOJobEERKS2_INS_7ReadSetEERSt6vectorINS_13FSReadRequestESaISC_EERKSB_ISB_ImSaImEESaISH_EEPNS_6StatusE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.3") align 8 captures(none) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef captures(none) initializes((0, 6)) %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, std::shared_ptr<rocksdb::AsyncIOState>>, std::allocator<std::pair<const unsigned long, std::shared_ptr<rocksdb::AsyncIOState>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr.66", align 8 ; 6 uses
  %9 = alloca %"class.std::unique_ptr.66", align 8 ; 6 uses
  %10 = alloca %"class.std::function.346", align 16 ; 10 uses
  %11 = alloca %"class.std::unique_ptr.66", align 8 ; 6 uses
  %12 = alloca %"struct.rocksdb::IOOptions", align 8 ; 16 uses
  %13 = alloca %"class.rocksdb::IOStatus", align 8 ; 9 uses
  %14 = alloca %"class.std::shared_ptr.42", align 8 ; 10 uses
  %15 = alloca %"class.std::function.346", align 16 ; 15 uses
  %16 = alloca %"struct.rocksdb::AlignedBufferAllocationContext", align 8 ; 7 uses
  %17 = alloca %"class.std::function.346", align 8 ; 8 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %19 = alloca %"class.rocksdb::IOStatus", align 8 ; 10 uses
  %20 = alloca %"class.std::function.349", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %6, i8 0, i64 6, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !133
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #25
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit, %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !165    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !186
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !192  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store i64 0, ptr %12, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.j, align 8, !tbaa !475
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 4, ptr %i.k, align 4, !tbaa !476
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 7, ptr %i.l, align 8, !tbaa !477
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 3 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !478
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  store i64 1, ptr %i.o, align 8, !tbaa !479
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.r, i8 0, i64 19, i1 false)
  store i8 -1, ptr %i.s, align 1, !tbaa !480
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 360 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !481
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  invoke void @_ZNK7rocksdb22RandomAccessFileReader16PrepareIOOptionsERKNS_11ReadOptionsERNS_9IOOptionsEPNS_14IODebugContextE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %13, ptr noundef nonnull align 8 dereferenceable(202) %i.u, ptr noundef nonnull align 8 dereferenceable(192) %i.v, ptr noundef nonnull align 8 dereferenceable(84) %12, ptr noundef null)
          to label %_ZN7rocksdb6StatusC2EOS0_.exit unwind label %bb.e

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.w = load <4 x i8>, ptr %13, align 8, !tbaa !142
  %i.x = load i8, ptr %13, align 8, !tbaa !482
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.z = load i8, ptr %i.y, align 4, !tbaa !380, !range !157, !noundef !158
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !142
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !133 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.ae = icmp eq i8 %i.x, 0
  br i1 %i.ae, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  store <4 x i8> %i.w, ptr %6, align 8, !tbaa !142
  store i8 %i.z, ptr %i.a, align 4, !tbaa !352
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %.not.i.i88 = icmp eq ptr %i.ad, null           ; 2 uses
  br i1 %.not.i.i88, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.66") align 8 %11, ptr noundef nonnull %i.ad)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !133
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.af = phi ptr [ %.pre.i, %.noexc ], [ null, %bb.b ]
  store ptr null, ptr %11, align 8, !tbaa !133
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !133 ; 2 uses
  store ptr %i.af, ptr %i.c, align 8, !tbaa !133
  %.not.i.i.i.i.i89 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i89, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #25
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !133 ; 2 uses
  %.not.i12.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i12.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i90

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i90: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #25
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i90, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %.not.i.i88, label %_ZN7rocksdb6StatusD2Ev.exit189, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i187

bb.e:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit184

bb.f:                                             ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !481 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !485 ; 2 uses
  %.not.i.i91 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i91, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !492, !range !157, !noundef !158
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !502
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i

_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i:   ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.an, %bb.h ], [ %i.ap, %bb.i ] ; 2 uses
  %i.aq = load ptr, ptr %.0.i.i, align 8, !tbaa !132
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i)
          to label %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit unwind label %bb.j, !inline_history !17 ; 4 uses

_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit: ; preds = %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.av = load ptr, ptr %2, align 8, !tbaa !165
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !305, !nonnull !158, !align !306
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 264
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !362, !range !157, !noundef !158
  %i.az = trunc nuw i8 %i.ay to i1                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 832
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !363
  %.not.i93 = icmp eq ptr %i.bb, null
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  %i.bd = invoke noundef zeroext i1 @_ZN7rocksdb34ShouldUseDataBlockCacheForIteratorERKNS_22BlockBasedTableOptionsERKNS_11ReadOptionsEb(ptr noundef nonnull align 8 dereferenceable(312) %i.au, ptr noundef nonnull align 8 dereferenceable(192) %i.bc, i1 noundef zeroext %i.az)
          to label %.noexc94 unwind label %bb.j

.noexc94:                                         ; preds = %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit
  %i.be = invoke { ptr, i8 } @_ZN7rocksdb32GetReadScopedBlockBufferProviderERKNS_11ReadOptionsEb(ptr noundef nonnull align 8 dereferenceable(192) %i.bc, i1 noundef zeroext %i.az)
          to label %_ZN7rocksdbL21GetReadScopedIOConfigERKNS_22BlockBasedTableOptionsERKNS_10JobOptionsEbbb.exit unwind label %bb.j ; 2 uses

_ZN7rocksdbL21GetReadScopedIOConfigERKNS_22BlockBasedTableOptionsERKNS_10JobOptionsEbbb.exit: ; preds = %.noexc94
  %21 = extractvalue { ptr, i8 } %i.be, 0         ; 2 uses
  %22 = extractvalue { ptr, i8 } %i.be, 1
  %23 = trunc nuw i8 %22 to i1
  %spec.select.i = and i1 %.not.i93, %23
  %not.10.i = xor i1 %i.bd, true
  %24 = select i1 %not.10.i, i1 %spec.select.i, i1 false ; 3 uses
  %i.bf = zext i1 %24 to i8
  %i.bg = and i1 %i.at, %24                       ; 2 uses
  %not..i = xor i1 %i.at, true
  %i.bh = and i1 %24, %not..i
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !457
  %i.bk = load ptr, ptr %4, align 8, !tbaa !458
  %.not71.not284.not = icmp eq ptr %i.bj, %i.bk
  br i1 %.not71.not284.not, label %._crit_edge288, label %.lr.ph287

.lr.ph287:                                        ; preds = %_ZN7rocksdbL21GetReadScopedIOConfigERKNS_22BlockBasedTableOptionsERKNS_10JobOptionsEbbb.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 5 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %20, i64 24
  %or.cond = xor i1 %i.at, %i.bg
  %i.bv = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 5 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.c, %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i, %.noexc94, %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.k:                                             ; preds = %.lr.ph287, %_ZNSt12__shared_ptrIN7rocksdb12AsyncIOStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.jt4
  %.sroa.23313.0 = phi ptr [ %i.ad, %.lr.ph287 ], [ %i.hi, %_ZNSt12__shared_ptrIN7rocksdb12AsyncIOStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.jt4 ] ; 9 uses
  %.057285 = phi i64 [ 0, %.lr.ph287 ], [ %i.nw, %_ZNSt12__shared_ptrIN7rocksdb12AsyncIOStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.jt4 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.cc = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #24
          to label %bb.l unwind label %bb.p       ; 30 uses

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 1, ptr %i.cd, align 8, !tbaa !140, !noalias !643
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 1, ptr %i.ce, align 4, !tbaa !141, !noalias !643
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb12AsyncIOStateESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cc, align 8, !tbaa !132, !noalias !643
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.cf, i8 0, i64 184, i1 false), !noalias !643
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 216 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, i8 0, i64 48, i1 false), !noalias !643
  store ptr @.str.6, ptr %i.cj, align 8, !tbaa !160, !noalias !643
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 296
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ck, i8 0, i64 14, i1 false), !noalias !643
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, i8 0, i64 72, i1 false), !noalias !643
  store ptr %i.cc, ptr %i.bl, align 8, !tbaa !138, !alias.scope !643
  store ptr %i.cf, ptr %14, align 8, !tbaa !644, !alias.scope !643
  %i.cm = load ptr, ptr %4, align 8, !tbaa !458
  %i.cn = getelementptr inbounds nuw [96 x i8], ptr %i.cm, i64 %.057285
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !467
  store i64 %i.co, ptr %i.cg, align 8, !tbaa !356
  store i8 %i.bf, ptr %i.ch, align 8, !tbaa !357
  %i.cp = load ptr, ptr %5, align 8, !tbaa !461
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.057285
  %i.cr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.m unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.cs = load ptr, ptr %4, align 8, !tbaa !458
  %i.ct = getelementptr inbounds nuw [96 x i8], ptr %i.cs, i64 %.057285 ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 264 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cu, ptr noundef nonnull align 8 dereferenceable(96) %i.ct, i64 40, i1 false)
  %.not.i.i97 = icmp eq ptr %i.cu, %i.ct
  br i1 %.not.i.i97, label %_ZN7rocksdb13FSReadRequestaSEOS0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 40 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 304
  %i.cx = load i8, ptr %i.cv, align 8, !tbaa !482
  store i8 %i.cx, ptr %i.cw, align 8, !tbaa !185
  store i8 0, ptr %i.cv, align 8, !tbaa !185
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 41 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !503
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 305
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !504
  store i8 0, ptr %i.cy, align 1, !tbaa !504
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 43
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !505, !range !157, !noundef !158
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cc, i64 307
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !505
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  %i.df = load i8, ptr %i.de, align 4, !tbaa !352, !range !157, !noundef !158
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cc, i64 308
  store i8 %i.df, ptr %i.dg, align 4, !tbaa !352
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 45 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !353
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 309
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !353
  store i8 0, ptr %i.dh, align 1, !tbaa !353
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 312 ; 2 uses
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !133
  store ptr null, ptr %i.dk, align 8, !tbaa !133
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !133 ; 2 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !133
  %.not.i.i.i.i.i.i98 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i98, label %_ZN7rocksdb13FSReadRequestaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i99

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i99: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #25
  br label %_ZN7rocksdb13FSReadRequestaSEOS0_.exit

_ZN7rocksdb13FSReadRequestaSEOS0_.exit:           ; preds = %bb.m, %bb.n, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i99
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 320
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.dq = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.do, ptr noundef nonnull align 8 dereferenceable(40) %i.dp) #22 ; 0 uses
  %i.dr = load ptr, ptr %i.i, align 8, !tbaa !305, !nonnull !158, !align !306
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 576 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cc, i64 360
  %i.du = load <2 x ptr>, ptr %i.ds, align 8, !tbaa !123
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !645 ; 3 uses
  store <2 x ptr> %i.du, ptr %i.dt, align 8, !tbaa !123
  %.not.i100 = icmp eq ptr %i.dv, null
  br i1 %.not.i100, label %_ZN7rocksdbL24GetIODispatcherNowMicrosEPNS_11SystemClockE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN7rocksdb13FSReadRequestaSEOS0_.exit
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !132
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 152
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef i64 %i.dy(ptr noundef nonnull align 8 dereferenceable(32) %i.dv)
          to label %_ZN7rocksdbL24GetIODispatcherNowMicrosEPNS_11SystemClockE.exit unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !9

_ZN7rocksdbL24GetIODispatcherNowMicrosEPNS_11SystemClockE.exit: ; preds = %_ZN7rocksdb13FSReadRequestaSEOS0_.exit, %bb.o
  %i.ea = phi i64 [ 0, %_ZN7rocksdb13FSReadRequestaSEOS0_.exit ], [ %i.dz, %bb.o ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cc, i64 376
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !195
  %i.ec = load ptr, ptr %5, align 8, !tbaa !461
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %.057285 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !358 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !358 ; 2 uses
  %i.eh = icmp eq ptr %i.ee, %i.eg
  br i1 %i.eh, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN7rocksdbL24GetIODispatcherNowMicrosEPNS_11SystemClockE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cc, i64 248 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !376
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cc, i64 240 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cc, i64 256 ; 3 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit, %_ZN7rocksdbL24GetIODispatcherNowMicrosEPNS_11SystemClockE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store ptr %i.ek, ptr %16, align 8, !tbaa !509
  store ptr null, ptr %i.bm, align 8, !tbaa !510
  br i1 %i.bg, label %bb.u, label %bb.ac

bb.p:                                             ; preds = %bb.k
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  %i.em = phi ptr [ %i.fo, %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ %.pre, %.lr.ph.preheader ] ; 5 uses
  %.sroa.0223.0266 = phi ptr [ %i.fp, %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit ], [ %i.ee, %.lr.ph.preheader ] ; 2 uses
  %i.en = load i64, ptr %.sroa.0223.0266, align 8, !tbaa !62
  %i.eo = load ptr, ptr %2, align 8, !tbaa !165
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !355
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.en ; 2 uses
  %i.er = load ptr, ptr %i.ej, align 8, !tbaa !511
  %.not.i102 = icmp eq ptr %i.em, %i.er
  br i1 %.not.i102, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !tbaa.struct !375
  %i.es = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !376
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  store ptr %i.et, ptr %.phi.trans.insert, align 8, !tbaa !376
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.r:                                             ; preds = %.lr.ph
  %i.eu = load ptr, ptr %i.ei, align 8, !tbaa !355 ; 5 uses
  %i.ev = ptrtoint ptr %i.em to i64
  %i.ew = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ex = sub i64 %i.ev, %i.ew                    ; 3 uses
  %i.ey = icmp eq i64 %i.ex, 9223372036854775792
  br i1 %i.ey, label %bb.s, label %_ZNKSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
          to label %.noexc104 unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.ez = ashr exact i64 %i.ex, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ez, i64 1)
  %i.fa = add nsw i64 %.sroa.speculated.i.i.i, %i.ez ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.ez
  %i.fc = call i64 @llvm.umin.i64(i64 %i.fa, i64 576460752303423487)
  %i.fd = select i1 %i.fb, i64 576460752303423487, i64 %i.fc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fd, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fe = shl nuw nsw i64 %i.fd, 4
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #24
          to label %.noexc105 unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !tbaa.struct !375
  %.not10.i.i.i.i.i = icmp eq ptr %i.eu, %i.em
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc105, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i ], [ %i.ff, %.noexc105 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i ], [ %i.eu, %.noexc105 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !375, !alias.scope !646
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i103 = icmp eq ptr %i.fh, %i.em
  br i1 %.not.i.i.i.i.i103, label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !640

_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc105
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ff, %.noexc105 ], [ %i.fi, %.lr.ph.i.i.i.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.fk = load ptr, ptr %i.ej, align 8, !tbaa !511
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fm) #25
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ff, ptr %i.ei, align 8, !tbaa !355
  store ptr %i.fj, ptr %.phi.trans.insert, align 8, !tbaa !376
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fd
  store ptr %i.fn, ptr %i.ej, align 8, !tbaa !511
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.q
  %i.fo = phi ptr [ %i.fj, %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.et, %bb.q ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0223.0266, i64 8 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.eg
  br i1 %i.fq, label %._crit_edge, label %.lr.ph

.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN7rocksdb11BlockHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.o, %bb.l, %bb.s
  %lpad.loopexit.split-lp660 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp245.loopexit.split-lp

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN7rocksdb36MakeReadScopedAlignedBufferAllocatorESt8optionalISt17reference_wrapperINS_29ReadScopedBlockBufferProviderEEEPNS2_5LeaseE(ptr dead_on_unwind nonnull writable sret(%"class.std::function.346") align 8 %17, ptr %21, i8 1, ptr noundef nonnull %i.cf)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, i8 0, i64 24, i1 false)
  %i.fr = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !123
  %i.fs = load ptr, ptr %i.bn, align 8, !tbaa !135
  %.not.i.i.not.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEC2EOS6_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 16, i1 false), !tbaa.struct !512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEC2EOS6_.exit.i

_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEC2EOS6_.exit.i: ; preds = %bb.w, %bb.v
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %10, align 16, !tbaa !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, ptr noundef nonnull align 16 dereferenceable(32) %15, i64 16, i1 false), !tbaa.struct !512
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %15, align 16, !tbaa !142
  %i.ft = load <2 x ptr>, ptr %i.bp, align 16, !tbaa !123
  %i.fu = load ptr, ptr %i.bp, align 16, !tbaa !123 ; 2 uses
  store <2 x ptr> %i.ft, ptr %i.bo, align 16, !tbaa !123
  store <2 x ptr> %i.fr, ptr %i.bp, align 16, !tbaa !123
  %.not.i.i106 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i106, label %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit.thread, label %bb.x

_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit.thread: ; preds = %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEC2EOS6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.x:                                             ; preds = %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEC2EOS6_.exit.i
  %i.fv = invoke noundef zeroext i1 %i.fu(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #26
  unreachable

_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit: ; preds = %bb.x
  %.pre320 = load ptr, ptr %i.bn, align 8, !tbaa !135 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %.not.i107 = icmp eq ptr %.pre320, null
  br i1 %.not.i107, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit
  %i.fy = invoke noundef zeroext i1 %.pre320(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit.thread, %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  store ptr %15, ptr %i.bm, align 8, !tbaa !510
  br label %bb.ac

bb.ab:                                            ; preds = %bb.u
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %.body

bb.ac:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %._crit_edge
  %.056 = phi ptr [ %16, %_ZNSt14_Function_baseD2Ev.exit ], [ null, %._crit_edge ]
  br i1 %i.at, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cc, i64 280
  store ptr null, ptr %i.gc, align 8, !tbaa !647
  br label %bb.ao

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.bh, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cc, i64 272
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !648
  invoke void @_ZN7rocksdb29AllocateReadScopedBlockBufferERNS_29ReadScopedBlockBufferProviderEmmPNS0_5LeaseE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %i.ge, i64 noundef 1, ptr noundef nonnull %i.cf)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.gf = load <4 x i8>, ptr %18, align 8, !tbaa !142
  %i.gg = load i8, ptr %18, align 8, !tbaa !482
  store <4 x i8> zeroinitializer, ptr %18, align 8, !tbaa !142
  %i.gh = load i8, ptr %i.bq, align 4, !tbaa !380, !range !157, !noundef !158
  store i8 0, ptr %i.bq, align 4, !tbaa !352
  %i.gi = load i8, ptr %i.br, align 1, !tbaa !142
  store i8 0, ptr %i.br, align 1, !tbaa !353
  %i.gj = load ptr, ptr %i.bs, align 8, !tbaa !133 ; 5 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !133
  %.not.i.i.i.i.i109 = icmp eq ptr %.sroa.23313.0, null
  br i1 %.not.i.i.i.i.i109, label %_ZN7rocksdb6StatusaSEOS0_.exit112.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit112

_ZN7rocksdb6StatusaSEOS0_.exit112:                ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %.sroa.23313.0) #25
  %.pr231 = load ptr, ptr %i.bs, align 8, !tbaa !133 ; 2 uses
  %.not.i.i113 = icmp eq ptr %.pr231, null
  br i1 %.not.i.i113, label %_ZN7rocksdb6StatusaSEOS0_.exit112.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit112
  call void @_ZdaPv(ptr noundef nonnull %.pr231) #25
  br label %_ZN7rocksdb6StatusaSEOS0_.exit112.thread

_ZN7rocksdb6StatusaSEOS0_.exit112.thread:         ; preds = %bb.ag, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114, %_ZN7rocksdb6StatusaSEOS0_.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.gk = icmp eq i8 %i.gg, 0
  br i1 %i.gk, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit112.thread
  store <4 x i8> %i.gf, ptr %6, align 8, !tbaa !142
  store i8 %i.gh, ptr %i.a, align 4, !tbaa !352
  store i8 %i.gi, ptr %i.b, align 1, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %.not.i.i118 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i118, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.66") align 8 %9, ptr noundef nonnull %i.gj)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc126:                                        ; preds = %bb.ai
  %.pre.i119 = load ptr, ptr %9, align 8, !tbaa !133
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc126, %bb.ah
  %i.gl = phi ptr [ %.pre.i119, %.noexc126 ], [ null, %bb.ah ]
  store ptr null, ptr %9, align 8, !tbaa !133
  %i.gm = load ptr, ptr %i.c, align 8, !tbaa !133 ; 2 uses
  store ptr %i.gl, ptr %i.c, align 8, !tbaa !133
  %.not.i.i.i.i.i120 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i120, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i125, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i121

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i121: ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.gm) #25
  %.pr.i122 = load ptr, ptr %9, align 8, !tbaa !133 ; 2 uses
  %.not.i12.i123 = icmp eq ptr %.pr.i122, null
  br i1 %.not.i12.i123, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i125, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i124

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i124: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i121
  call void @_ZdaPv(ptr noundef nonnull %.pr.i122) #25
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i125

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i125: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i124, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i121, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZN7rocksdb6StatusaSERKS0_.exit127.jt1

bb.ak:                                            ; preds = %bb.af
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body

bb.al:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit112.thread
  %i.go = load ptr, ptr %14, align 8, !tbaa !75   ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !649
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 264
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !647
  br label %bb.ao

bb.am:                                            ; preds = %bb.ae
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cc, i64 272
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !648
  %i.gt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gs) #24
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cc, i64 40 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !133 ; 2 uses
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !133
  %.not.i.i128 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i128, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.gv) #25
  %.pre321 = load ptr, ptr %i.gu, align 8, !tbaa !133
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %bb.an, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.gw = phi ptr [ %i.gt, %bb.an ], [ %.pre321, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cc, i64 280
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !647
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, %bb.ad
  %i.gy = phi ptr [ %i.cf, %bb.ad ], [ %i.go, %bb.al ], [ %i.cf, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit ] ; 5 uses
  %.sroa.23313.1 = phi ptr [ %.sroa.23313.0, %bb.ad ], [ %i.gj, %bb.al ], [ %.sroa.23313.0, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.gz = load ptr, ptr %i.t, align 8, !tbaa !481
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRN7rocksdb13FSReadRequestEPvEZNS0_16IODispatcherImpl4Impl14ExecuteAsyncIOERKSt10shared_ptrINS0_5IOJobEERKS7_INS0_7ReadSetEERSt6vectorIS1_SaIS1_EERKSG_ISG_ImSaImEESaISL_EEPNS0_6StatusEE3$_0E9_M_invokeERKSt9_Any_dataS2_OS3_", ptr %i.bu, align 8, !tbaa !651
  store ptr @"_ZNSt17_Function_handlerIFvRN7rocksdb13FSReadRequestEPvEZNS0_16IODispatcherImpl4Impl14ExecuteAsyncIOERKSt10shared_ptrINS0_5IOJobEERKS7_INS0_7ReadSetEERSt6vectorIS1_SaIS1_EERKSG_ISG_ImSaImEESaISL_EEPNS0_6StatusEE3$_0E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation", ptr %i.bt, align 8, !tbaa !135
end_hunk_0
begin_hunk_1_@_ZN7rocksdb16IODispatcherImpl4Impl14ExecuteAsyncIOERKSt10shared_ptrINS_5IOJobEERKS2_INS_7ReadSetEERSt6vectorINS_13FSReadRequestESaISC_EERKSB_ISB_ImSaImEESaISH_EEPNS_6StatusE:bb.a
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.po) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i199

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i198
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i195, i64 noundef 80) #25
  %.not.i.i.i200 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i200, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i201, label %.lr.ph.i.i.i194, !llvm.loop !18

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i201: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i199, %_ZN7rocksdb6StatusD2Ev.exit189
  %i.pp = load ptr, ptr %i.m, align 8, !tbaa !478
  %i.pq = load i64, ptr %i.o, align 8, !tbaa !479
  %i.pr = shl i64 %i.pq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.pp, i8 0, i64 %i.pr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.ps = load ptr, ptr %i.m, align 8, !tbaa !478 ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.n
  br i1 %i.pt, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNSt6vectorImSaImEED2Ev.exit.sink.split

_ZNSt6vectorImSaImEED2Ev.exit.sink.split:         ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i201, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %.sink = phi ptr [ %i.oy, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i ], [ %i.ps, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i201 ]
  %i.pu = load i64, ptr %i.o, align 8, !tbaa !479
  %i.pv = shl i64 %i.pu, 3
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.pv) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.sink.split, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i201, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  ret void

bb.cq:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit184
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !147
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = ptrtoint ptr %i.pa to i64
  %i.qa = sub i64 %i.py, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %i.pa, i64 noundef %i.qa) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit191

_ZNSt6vectorImSaImEED2Ev.exit191:                 ; preds = %_ZN7rocksdb6StatusD2Ev.exit184, %bb.cq
  resume { ptr, i32 } %.pn74.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb16IODispatcherImpl4Impl13ExecuteSyncIOERKSt10shared_ptrINS_5IOJobEERKS2_INS_7ReadSetEERSt6vectorINS_13FSReadRequestESaISC_EERKSB_ISB_ImSaImEESaISH_EE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::unique_ptr.66", align 8 ; 7 uses
  %7 = alloca %"class.std::function.346", align 16 ; 10 uses
  %8 = alloca %"struct.rocksdb::IOOptions", align 8 ; 16 uses
  %9 = alloca %"class.rocksdb::IOStatus", align 8 ; 13 uses
  %10 = alloca %"class.std::vector.352", align 8  ; 17 uses
  %11 = alloca %"class.std::vector.357", align 8  ; 16 uses
  %12 = alloca %"struct.rocksdb::ReadScopedBlockBufferProvider::Lease", align 8 ; 8 uses
  %13 = alloca %"class.rocksdb::AlignedBuffer", align 8 ; 11 uses
  %14 = alloca %"class.std::function.346", align 16 ; 14 uses
  %15 = alloca %"struct.rocksdb::AlignedBufferAllocationContext", align 8 ; 6 uses
  %16 = alloca %"class.std::function.346", align 8 ; 8 uses
  %17 = alloca %"class.rocksdb::IOStatus", align 8 ; 13 uses
  %18 = alloca %"class.rocksdb::SharedCleanablePtr", align 8 ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !165    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store i64 0, ptr %8, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.g, align 8, !tbaa !475
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.h, align 4, !tbaa !476
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 7, ptr %i.i, align 8, !tbaa !477
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !478
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store i64 1, ptr %i.l, align 8, !tbaa !479
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.o, i8 0, i64 19, i1 false)
  store i8 -1, ptr %i.p, align 1, !tbaa !480
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 360 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !481
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_ZNK7rocksdb22RandomAccessFileReader16PrepareIOOptionsERKNS_11ReadOptionsERNS_9IOOptionsEPNS_14IODebugContextE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %9, ptr noundef nonnull align 8 dereferenceable(202) %i.r, ptr noundef nonnull align 8 dereferenceable(192) %i.s, ptr noundef nonnull align 8 dereferenceable(84) %8, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  store ptr null, ptr %i.t, align 8, !tbaa !162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq ptr %0, %9
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %_ZN7rocksdb6StatusC2EOS0_.exit.thread

_ZN7rocksdb6StatusC2EOS0_.exit.thread:            ; preds = %bb.b
  %i.u = load <4 x i8>, ptr %9, align 8, !tbaa !142
  %i.v = load i8, ptr %9, align 8, !tbaa !482
  store <4 x i8> %i.u, ptr %0, align 8, !tbaa !142
  store <4 x i8> zeroinitializer, ptr %9, align 8, !tbaa !142
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !380, !range !157, !noundef !158
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.x, ptr %i.y, align 4, !tbaa !352
  store i8 0, ptr %i.w, align 4, !tbaa !352
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !142
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !353
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !133
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !133
  br label %bb.d

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !133 ; 2 uses
  %.not.i.i148 = icmp eq ptr %.pre, null
  br i1 %.not.i.i148, label %.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

.thread:                                          ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.e

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #25
  %.pre275 = load i8, ptr %0, align 8, !tbaa !185
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit212

bb.d:                                             ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit.thread, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.af = phi i8 [ %.pre275, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ], [ %i.v, %_ZN7rocksdb6StatusC2EOS0_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.thread, %bb.d
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !133 ; 2 uses
  %.not.i.i152 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i152, label %_ZN7rocksdb6StatusD2Ev.exit154, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i153

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i153: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit154

_ZN7rocksdb6StatusD2Ev.exit154:                   ; preds = %bb.e, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i153
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !481 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !485 ; 2 uses
  %.not.i.i155 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i155, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit154
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !492, !range !157, !noundef !158
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i

bb.h:                                             ; preds = %bb.f, %_ZN7rocksdb6StatusD2Ev.exit154
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !502
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i

_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i:   ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.an, %bb.g ], [ %i.ap, %bb.h ] ; 2 uses
  %i.aq = load ptr, ptr %.0.i.i, align 8, !tbaa !132
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i)
          to label %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit unwind label %bb.q, !inline_history !17 ; 3 uses

_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit: ; preds = %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.av = load ptr, ptr %2, align 8, !tbaa !165
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !305, !nonnull !158, !align !306
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 264
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !362, !range !157, !noundef !158
  %i.az = trunc nuw i8 %i.ay to i1                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !363
  %.not.i = icmp eq ptr %i.bb, null
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  %i.bd = invoke noundef zeroext i1 @_ZN7rocksdb34ShouldUseDataBlockCacheForIteratorERKNS_22BlockBasedTableOptionsERKNS_11ReadOptionsEb(ptr noundef nonnull align 8 dereferenceable(312) %i.au, ptr noundef nonnull align 8 dereferenceable(192) %i.bc, i1 noundef zeroext %i.az)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit
  %i.be = invoke { ptr, i8 } @_ZN7rocksdb32GetReadScopedBlockBufferProviderERKNS_11ReadOptionsEb(ptr noundef nonnull align 8 dereferenceable(192) %i.bc, i1 noundef zeroext %i.az)
          to label %bb.i unwind label %bb.q       ; 2 uses

bb.i:                                             ; preds = %.noexc
  %19 = extractvalue { ptr, i8 } %i.be, 0         ; 2 uses
  %20 = extractvalue { ptr, i8 } %i.be, 1
  %21 = trunc nuw i8 %20 to i1
  %spec.select.i = and i1 %.not.i, %21
  %not.10.i = xor i1 %i.bd, true
  %22 = select i1 %not.10.i, i1 %spec.select.i, i1 false ; 3 uses
  %i.bf = and i1 %i.at, %22                       ; 2 uses
  %not..i = xor i1 %i.at, true
  %i.bg = and i1 %22, %not..i                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %13, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %13, ptr %15, align 8, !tbaa !509
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !510
  br i1 %i.bf, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZN7rocksdb36MakeReadScopedAlignedBufferAllocatorESt8optionalISt17reference_wrapperINS_29ReadScopedBlockBufferProviderEEEPNS2_5LeaseE(ptr dead_on_unwind nonnull writable sret(%"class.std::function.346") align 8 %16, ptr %19, i8 1, ptr noundef nonnull %12)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.bj = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !123
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !135
  %.not.i.i.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEC2EOS6_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 16, i1 false), !tbaa.struct !512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEC2EOS6_.exit.i

_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEC2EOS6_.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %7, align 16, !tbaa !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) %14, i64 16, i1 false), !tbaa.struct !512
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %14, align 16, !tbaa !142
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.bn = load <2 x ptr>, ptr %i.bm, align 16, !tbaa !123
  %i.bo = load ptr, ptr %i.bm, align 16, !tbaa !123 ; 2 uses
  store <2 x ptr> %i.bn, ptr %i.bl, align 16, !tbaa !123
  store <2 x ptr> %i.bj, ptr %i.bm, align 16, !tbaa !123
  %.not.i.i157 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i157, label %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit.thread, label %bb.m

_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit.thread: ; preds = %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEC2EOS6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.m:                                             ; preds = %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEC2EOS6_.exit.i
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #26
  unreachable

_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit: ; preds = %bb.m
  %.pre276 = load ptr, ptr %i.bi, align 8, !tbaa !135 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.not.i158 = icmp eq ptr %.pre276, null
  br i1 %.not.i158, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit
  %i.bs = invoke noundef zeroext i1 %.pre276(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit.thread, %_ZNSt8functionIFN7rocksdb6StatusEmmPNS0_13AlignedBuffer18ExternalAllocationEEEaSEOS6_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  store ptr %14, ptr %i.bh, align 8, !tbaa !510
  br label %bb.s

bb.q:                                             ; preds = %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i, %.noexc, %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit212

bb.r:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.i
  br i1 %i.at, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr %4, align 8, !tbaa !466   ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !466 ; 3 uses
  %i.ca = icmp eq ptr %i.bx, %i.bz
  br i1 %i.ca, label %.critedge136, label %.lr.ph257

.lr.ph257:                                        ; preds = %bb.t, %.lr.ph257
  %.sroa.0231.0255 = phi ptr [ %i.cc, %.lr.ph257 ], [ %i.bx, %bb.t ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0231.0255, i64 16
  store ptr null, ptr %i.cb, align 8, !tbaa !469
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0231.0255, i64 96 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bz
  br i1 %i.cd, label %.critedge136, label %.lr.ph257

bb.u:                                             ; preds = %bb.s
  br i1 %i.bg, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !457
  %i.cg = load ptr, ptr %4, align 8, !tbaa !458
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 96                ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !521 ; 3 uses
  %i.cn = load ptr, ptr %10, align 8, !tbaa !522  ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sdiv exact i64 %i.cq, 24                ; 3 uses
  %i.cs = icmp ugt i64 %i.ck, %i.cr
  br i1 %i.cs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ct = sub nuw nsw i64 %i.ck, %i.cr
  invoke void @_ZNSt6vectorIN7rocksdb29ReadScopedBlockBufferProvider5LeaseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.ct)
          to label %_ZNSt6vectorIN7rocksdb29ReadScopedBlockBufferProvider5LeaseESaIS2_EE6resizeEm.exit unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %i.cu = icmp ult i64 %i.ck, %i.cr
  br i1 %i.cu, label %bb.y, label %_ZNSt6vectorIN7rocksdb29ReadScopedBlockBufferProvider5LeaseESaIS2_EE6resizeEm.exit

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ck ; 3 uses
  %.not.i.i159 = icmp eq ptr %i.cm, %i.cv
  br i1 %.not.i.i159, label %_ZNSt6vectorIN7rocksdb29ReadScopedBlockBufferProvider5LeaseESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i ], [ %i.cv, %bb.y ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  call void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cw) #22
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cx, %i.cm
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.cv, ptr %i.cl, align 8, !tbaa !521
  br label %_ZNSt6vectorIN7rocksdb29ReadScopedBlockBufferProvider5LeaseESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN7rocksdb29ReadScopedBlockBufferProvider5LeaseESaIS2_EE6resizeEm.exit: ; preds = %bb.w, %bb.x, %bb.y, %_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.cy = load ptr, ptr %i.ce, align 8, !tbaa !457 ; 2 uses
  %i.cz = load ptr, ptr %4, align 8, !tbaa !458   ; 2 uses
  %.not252.not = icmp eq ptr %i.cy, %i.cz
  br i1 %.not252.not, label %.critedge136, label %.lr.ph254.preheader

.lr.ph254.preheader:                              ; preds = %_ZNSt6vectorIN7rocksdb29ReadScopedBlockBufferProvider5LeaseESaIS2_EE6resizeEm.exit
  %.pre277 = load ptr, ptr %10, align 8, !tbaa !522
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %_ZN7rocksdb6StatusD2Ev.exit166
  %i.da = phi ptr [ %i.dj, %_ZN7rocksdb6StatusD2Ev.exit166 ], [ %.pre277, %.lr.ph254.preheader ]
  %i.db = phi ptr [ %i.dm, %_ZN7rocksdb6StatusD2Ev.exit166 ], [ %i.cz, %.lr.ph254.preheader ]
  %.0104253 = phi i64 [ %i.dp, %_ZN7rocksdb6StatusD2Ev.exit166 ], [ 0, %.lr.ph254.preheader ] ; 5 uses
  %i.dc = getelementptr inbounds nuw [96 x i8], ptr %i.db, i64 %.0104253
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !468
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %.0104253
  invoke void @_ZN7rocksdb29AllocateReadScopedBlockBufferERNS_29ReadScopedBlockBufferProviderEmmPNS0_5LeaseE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %i.de, i64 noundef 1, ptr noundef nonnull %i.df)
          to label %bb.z unwind label %.loopexit

.loopexit:                                        ; preds = %.lr.ph254
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.w, %bb.al, %bb.ao
  %.sroa.0234.0.ph = phi ptr [ null, %bb.w ], [ null, %._crit_edge ], [ %.sroa.0234.1, %bb.ao ], [ %.sroa.0234.1, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph254
  %i.dg = load i8, ptr %0, align 8, !tbaa !185
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %bb.aa, label %.critedge138

bb.aa:                                            ; preds = %bb.z
  %i.di = load ptr, ptr %i.t, align 8, !tbaa !133 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.di, null
  br i1 %.not.i.i164, label %_ZN7rocksdb6StatusD2Ev.exit166, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i165

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i165: ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.di) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit166

_ZN7rocksdb6StatusD2Ev.exit166:                   ; preds = %bb.aa, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i165
  %i.dj = load ptr, ptr %10, align 8, !tbaa !522  ; 2 uses
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %.0104253
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !664
  %i.dm = load ptr, ptr %4, align 8, !tbaa !458   ; 3 uses
  %i.dn = getelementptr inbounds nuw [96 x i8], ptr %i.dm, i64 %.0104253
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !469
  %i.dp = add nuw i64 %.0104253, 1                ; 2 uses
  %i.dq = load ptr, ptr %i.ce, align 8, !tbaa !457 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dm to i64
end_hunk_1
begin_hunk_2_@_ZN7rocksdb16IODispatcherImpl4Impl13ExecuteSyncIOERKSt10shared_ptrINS_5IOJobEERKS2_INS_7ReadSetEERSt6vectorINS_13FSReadRequestESaISC_EERKSB_ISB_ImSaImEESaISH_EE:bb.a
  %i.go = load <4 x i8>, ptr %i.gn, align 1, !tbaa !142
  store <4 x i8> %i.go, ptr %i.gm, align 1, !tbaa !142
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0219.0258, i64 45
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !353
  store i8 %i.gr, ptr %i.gp, align 1, !tbaa !353
  store ptr null, ptr %i.t, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0219.0258, i64 48
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !133 ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i181, label %.thread.i, label %bb.ah

.thread.i:                                        ; preds = %bb.ag
  store ptr null, ptr %i.t, align 8, !tbaa !133
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.66") align 8 %6, ptr noundef nonnull %i.gt)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !133
  %.pre16.i = load ptr, ptr %i.t, align 8, !tbaa !133 ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !133
  store ptr %.pre.i, ptr %i.t, align 8, !tbaa !133
  %.not.i.i.i.i.i = icmp eq ptr %.pre16.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %.pre16.i) #25
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !133  ; 2 uses
  %.not.i11.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i11.i, label %bb.ak, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i182

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i182: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.gv = load ptr, ptr %i.t, align 8, !tbaa !133 ; 2 uses
  %.not.i12.i = icmp eq ptr %i.gv, null
  br i1 %.not.i12.i, label %.body, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i: ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.gv) #25
  br label %.body

.critedge140:                                     ; preds = %.lr.ph259
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0219.0258, i64 96 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.gh
  br i1 %i.gx, label %.critedge142, label %.lr.ph259

bb.ak:                                            ; preds = %.thread.i, %bb.ai, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge138

.critedge142:                                     ; preds = %.critedge140, %_ZN7rocksdb6StatusD2Ev.exit180
  br i1 %i.bf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.critedge142
  %i.gy = ptrtoint ptr %i.gh to i64
  %i.gz = ptrtoint ptr %i.gg to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = sdiv exact i64 %i.ha, 96
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 16
  invoke void @_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.hb, ptr noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6assignEmRKS1_.exit unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %.critedge142
  br i1 %i.bg, label %bb.an, label %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6assignEmRKS1_.exit

bb.an:                                            ; preds = %bb.am
  %i.hd = ptrtoint ptr %i.gh to i64
  %i.he = ptrtoint ptr %i.gg to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = sdiv exact i64 %i.hf, 96                ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !528 ; 3 uses
  %i.hj = load ptr, ptr %11, align 8, !tbaa !529  ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = ashr exact i64 %i.hm, 3                 ; 3 uses
  %i.ho = icmp ugt i64 %i.hg, %i.hn
  br i1 %i.ho, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hp = sub nuw nsw i64 %i.hg, %i.hn
  invoke void @_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.hp)
          to label %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6resizeEm.exit unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %bb.an
  %i.hq = icmp ult i64 %i.hg, %i.hn
  br i1 %i.hq, label %bb.aq, label %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6resizeEm.exit

bb.aq:                                            ; preds = %bb.ap
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hg ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.hi, %i.hr
  br i1 %.not.i.i184, label %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i185

.lr.ph.i.i.i.i185:                                ; preds = %bb.aq, %.lr.ph.i.i.i.i185
  %.05.i.i.i.i186 = phi ptr [ %i.hs, %.lr.ph.i.i.i.i185 ], [ %i.hr, %bb.aq ] ; 2 uses
  call void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i186) #22
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i186, i64 8 ; 2 uses
  %.not.i.i.i.i187 = icmp eq ptr %i.hs, %i.hi
  br i1 %.not.i.i.i.i187, label %_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i185, !llvm.loop !20

_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i185
  store ptr %i.hr, ptr %i.hh, align 8, !tbaa !528
  br label %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6resizeEm.exit: ; preds = %bb.ao, %bb.ap, %bb.aq, %_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !521
  %i.hv = load ptr, ptr %10, align 8, !tbaa !522  ; 2 uses
  %.not268 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not268, label %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6assignEmRKS1_.exit, label %.lr.ph261

.lr.ph261:                                        ; preds = %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6resizeEm.exit, %.lr.ph261
  %i.hw = phi ptr [ %i.ie, %.lr.ph261 ], [ %i.hv, %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6resizeEm.exit ]
  %.098260 = phi i64 [ %i.ic, %.lr.ph261 ], [ 0, %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6resizeEm.exit ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %.098260
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %11, align 8, !tbaa !529
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.098260
  %i.ib = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7rocksdb18SharedCleanablePtraSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, ptr noundef nonnull align 8 dereferenceable(8) %i.hy) #22 ; 0 uses
  %i.ic = add nuw i64 %.098260, 1                 ; 2 uses
  %i.id = load ptr, ptr %i.ht, align 8, !tbaa !521
  %i.ie = load ptr, ptr %10, align 8, !tbaa !522  ; 2 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = sdiv exact i64 %i.ih, 24
  %i.ij = icmp ult i64 %i.ic, %i.ii
  br i1 %i.ij, label %.lr.ph261, label %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6assignEmRKS1_.exit, !llvm.loop !660

_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6assignEmRKS1_.exit: ; preds = %.lr.ph261, %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6resizeEm.exit, %bb.al, %bb.am
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !462 ; 2 uses
  %i.im = load ptr, ptr %5, align 8, !tbaa !461   ; 2 uses
  %.not127265.not = icmp eq ptr %i.il, %i.im
  br i1 %.not127265.not, label %.critedge147, label %.lr.ph267

.lr.ph267:                                        ; preds = %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6assignEmRKS1_.exit
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph267, %.critedge145
  %i.io = phi ptr [ %i.im, %.lr.ph267 ], [ %i.jx, %.critedge145 ] ; 2 uses
  %i.ip = phi ptr [ %i.il, %.lr.ph267 ], [ %i.jy, %.critedge145 ]
  %.097266 = phi i64 [ 0, %.lr.ph267 ], [ %i.jz, %.critedge145 ] ; 5 uses
  %i.iq = load ptr, ptr %4, align 8, !tbaa !458
  %i.ir = getelementptr inbounds nuw [96 x i8], ptr %i.iq, i64 %.097266 ; 2 uses
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.io, i64 %.097266 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !358 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !358 ; 2 uses
  %i.iw = icmp eq ptr %i.it, %i.iv
  br i1 %i.iw, label %.critedge145, label %.lr.ph264

.lr.ph264:                                        ; preds = %bb.ar
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph264, %_ZN7rocksdb6StatusD2Ev.exit194
  %.sroa.0215.0262 = phi ptr [ %i.it, %.lr.ph264 ], [ %i.jv, %_ZN7rocksdb6StatusD2Ev.exit194 ] ; 3 uses
  %i.iy = load ptr, ptr %2, align 8, !tbaa !165
  %i.iz = load i64, ptr %.sroa.0215.0262, align 8, !tbaa !62
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !355
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %i.iz
  %i.jc = load i64, ptr %i.ir, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.jd = load ptr, ptr %i.in, align 8, !tbaa !528
  %i.je = load ptr, ptr %11, align 8, !tbaa !529  ; 2 uses
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = ashr exact i64 %i.jh, 3
  %i.jj = icmp ult i64 %.097266, %i.ji
  br i1 %i.jj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.097266
  invoke void @_ZN7rocksdb18SharedCleanablePtrC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.jk)
          to label %bb.av unwind label %bb.aw

bb.au:                                            ; preds = %bb.as
  store ptr null, ptr %18, align 8, !tbaa !354
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.jl = load ptr, ptr %3, align 8, !tbaa !413
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load i64, ptr %.sroa.0215.0262, align 8, !tbaa !62
  %i.jo = load ptr, ptr %i.jm, align 8, !tbaa !54
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.jo, i64 %i.jn
  invoke fastcc void @_ZN7rocksdbL27CreateAndPinBlockFromBufferERKSt10shared_ptrINS_5IOJobEERKNS_11BlockHandleEmRKNS_5SliceERKNS_18SharedCleanablePtrEbRNS_13CachableEntryINS_5BlockEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 noundef %i.jc, ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(8) %18, i1 noundef zeroext %22, ptr noundef nonnull align 8 dereferenceable(25) %i.jp)
          to label %bb.az unwind label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn123 = phi { ptr, i32 } [ %i.jr, %bb.ax ], [ %i.jq, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body

bb.az:                                            ; preds = %bb.av
  call void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.js = load i8, ptr %0, align 8, !tbaa !185
  %i.jt = icmp eq i8 %i.js, 0
  br i1 %i.jt, label %bb.ba, label %.critedge138

bb.ba:                                            ; preds = %bb.az
  %i.ju = load ptr, ptr %i.t, align 8, !tbaa !133 ; 2 uses
  %.not.i.i192 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i192, label %_ZN7rocksdb6StatusD2Ev.exit194, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i193

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i193: ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.ju) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit194

_ZN7rocksdb6StatusD2Ev.exit194:                   ; preds = %bb.ba, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i193
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0215.0262, i64 8 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.iv
  br i1 %i.jw, label %.critedge145.loopexit, label %bb.as

.critedge145.loopexit:                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit194
  %.pre281 = load ptr, ptr %i.ik, align 8, !tbaa !462
  %.pre282 = load ptr, ptr %5, align 8, !tbaa !461
  br label %.critedge145

.critedge145:                                     ; preds = %.critedge145.loopexit, %bb.ar
  %i.jx = phi ptr [ %.pre282, %.critedge145.loopexit ], [ %i.io, %bb.ar ] ; 2 uses
  %i.jy = phi ptr [ %.pre281, %.critedge145.loopexit ], [ %i.ip, %bb.ar ] ; 2 uses
  %i.jz = add nuw i64 %.097266, 1                 ; 2 uses
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jx to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = sdiv exact i64 %i.kc, 24
  %.not127 = icmp ult i64 %i.jz, %i.kd
  br i1 %.not127, label %bb.ar, label %.critedge147, !llvm.loop !661

.critedge147:                                     ; preds = %.critedge145, %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EE6assignEmRKS1_.exit
  store ptr null, ptr %i.t, align 8, !tbaa !162, !alias.scope !665
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !665
  br label %.critedge138

.critedge138:                                     ; preds = %bb.z, %bb.az, %bb.ak, %.critedge147, %bb.ae
  %.sroa.0234.2 = phi ptr [ %.sroa.0234.1, %bb.az ], [ %.sroa.0234.1, %.critedge147 ], [ %.sroa.0234.1, %bb.ak ], [ %.sroa.0234.1, %bb.ae ], [ null, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ke = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.kf = load ptr, ptr %i.ke, align 16, !tbaa !135 ; 2 uses
  %.not.i195 = icmp eq ptr %i.kf, null
  br i1 %.not.i195, label %_ZNSt14_Function_baseD2Ev.exit196, label %bb.bb

bb.bb:                                            ; preds = %.critedge138
  %i.kg = invoke noundef zeroext i1 %i.kf(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit196 unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit196:                ; preds = %.critedge138, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !123 ; 2 uses
  %.not.i.i197 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i197, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.kl, ptr %i.a, align 8, !tbaa !123
  %i.km = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !135
  %.not.i.i.i.i198 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i.i198, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc.i.i unwind label %bb.bj

.noexc.i.i:                                       ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ko = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !136
  invoke void %i.kp(ptr noundef nonnull align 8 dereferenceable(40) %i.kj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNKSt8functionIFvPvEEclES0_.exit.i.i unwind label %bb.bj, !inline_history !5

_ZNKSt8functionIFvPvEEclES0_.exit.i.i:            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt8functionIFvPvEEclES0_.exit.i.i, %_ZNSt14_Function_baseD2Ev.exit196
  store ptr null, ptr %i.kk, align 8, !tbaa !123
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !135 ; 2 uses
  %.not.i.i.i.i.i199 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i.i199, label %_ZN7rocksdb13AlignedBufferD2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ks = invoke noundef zeroext i1 %i.kr(ptr noundef nonnull align 8 dereferenceable(40) %i.kj, ptr noundef nonnull align 8 dereferenceable(40) %i.kj, i32 noundef 3)
          to label %_ZN7rocksdb13AlignedBufferD2Ev.exit unwind label %bb.bi ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #26
  unreachable

bb.bj:                                            ; preds = %bb.bf, %bb.be
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #26
  unreachable

_ZN7rocksdb13AlignedBufferD2Ev.exit:              ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kx = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kx) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ky = load ptr, ptr %11, align 8, !tbaa !529  ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !528 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ky, %i.la
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb13AlignedBufferD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.lb, %.lr.ph.i.i.i ], [ %i.ky, %_ZN7rocksdb13AlignedBufferD2Ev.exit ] ; 2 uses
  call void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #22
  %i.lb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lb, %i.la
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i200 = load ptr, ptr %11, align 8, !tbaa !529
  br label %_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN7rocksdb13AlignedBufferD2Ev.exit
  %i.lc = phi ptr [ %.pr.i200, %_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ky, %_ZN7rocksdb13AlignedBufferD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exit.i
  %i.ld = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !530
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lh) #25
  br label %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb18SharedCleanablePtrES1_EvT_S3_RSaIT0_E.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.li = load ptr, ptr %10, align 8, !tbaa !522  ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !521 ; 2 uses
  %.not4.i.i.i201 = icmp eq ptr %i.li, %i.lk
  br i1 %.not4.i.i.i201, label %_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i202

.lr.ph.i.i.i202:                                  ; preds = %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EED2Ev.exit, %.lr.ph.i.i.i202
  %.05.i.i.i203 = phi ptr [ %i.lm, %.lr.ph.i.i.i202 ], [ %i.li, %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EED2Ev.exit ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.05.i.i.i203, i64 16
  call void @_ZN7rocksdb18SharedCleanablePtrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ll) #22
  %i.lm = getelementptr inbounds nuw i8, ptr %.05.i.i.i203, i64 24 ; 2 uses
  %.not.i.i.i204 = icmp eq ptr %i.lm, %i.lk
  br i1 %.not.i.i.i204, label %_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i202, !llvm.loop !19

_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i202
  %.pr.i205 = load ptr, ptr %10, align 8, !tbaa !522
  br label %_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EED2Ev.exit
  %i.ln = phi ptr [ %.pr.i205, %_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.li, %_ZNSt6vectorIN7rocksdb18SharedCleanablePtrESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i206 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i1.i206, label %_ZNSt6vectorIN7rocksdb29ReadScopedBlockBufferProvider5LeaseESaIS2_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb29ReadScopedBlockBufferProvider5LeaseES2_EvT_S4_RSaIT0_E.exit.i
  %i.lo = getelementptr inbounds nuw i8, ptr %10, i64 16
end_hunk_2
