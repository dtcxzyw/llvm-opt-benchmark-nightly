Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/reader?download=true
inline.NumInlined: 10873
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS0_14IpcReadOptionsE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #36, !inline_history !16
  br label %_ZNSt12__shared_ptrIN5arrow2io8internal14ReadRangeCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow2io8internal14ReadRangeCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !159

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #36
  br label %_ZNSt12__shared_ptrIN5arrow2io8internal14ReadRangeCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io8internal14ReadRangeCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt11make_sharedIN5arrow2io8internal14ReadRangeCacheEJRPNS1_16RandomAccessFileERKNS1_9IOContextERKNS1_12CacheOptionsEEESt10shared_ptrIT_EDpOT0_.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %bb.a
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !341
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !329
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ai, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.al = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 %3, ptr %i.ao, align 8, !tbaa !344
  %i.ap = call noundef ptr @_ZN5arrow8internal16GetCpuThreadPoolEv()
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !339, !noalias !808 ; 9 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow2io8internal14ReadRangeCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 6 uses
  %i.av = load atomic i32, ptr %i.au monotonic, align 8, !noalias !808
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.06.i.i.i.i.i = phi i32 [ %i.av, %bb.i ], [ %i.az, %bb.k ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = add nsw i32 %.06.i.i.i.i.i, 1
  %i.ax = cmpxchg weak ptr %i.au, i32 %.06.i.i.i.i.i, i32 %i.aw acq_rel monotonic, align 8, !noalias !808 ; 2 uses
  %i.ay = extractvalue { i32, i1 } %i.ax, 1
  %i.az = extractvalue { i32, i1 } %i.ax, 0
  br i1 %i.ay, label %_ZNSt23enable_shared_from_thisIN5arrow3ipc21RecordBatchFileReaderEE16shared_from_thisEv.exit, label %bb.j, !llvm.loop !20

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.j, %_ZNSt12__shared_ptrIN5arrow2io8internal14ReadRangeCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ba = call ptr @__cxa_allocate_exception(i64 8) #36, !noalias !808 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.ba, align 8, !tbaa !158, !noalias !808
  call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #38, !noalias !808
  unreachable

_ZNSt23enable_shared_from_thisIN5arrow3ipc21RecordBatchFileReaderEE16shared_from_thisEv.exit: ; preds = %bb.k
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !340, !noalias !808 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZSt20dynamic_pointer_castIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplENS1_21RecordBatchFileReaderEESt10shared_ptrIT_EOS5_IT0_E.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt23enable_shared_from_thisIN5arrow3ipc21RecordBatchFileReaderEE16shared_from_thisEv.exit
  %i.bd = call ptr @__dynamic_cast(ptr nonnull %i.bb, ptr nonnull @_ZTIN5arrow3ipc21RecordBatchFileReaderE, ptr nonnull @_ZTIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplE, i64 0) #36, !noalias !809 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.not.i, label %_ZSt20dynamic_pointer_castIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplENS1_21RecordBatchFileReaderEESt10shared_ptrIT_EOS5_IT0_E.exit, label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZSt20dynamic_pointer_castIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplENS1_21RecordBatchFileReaderEESt10shared_ptrIT_EOS5_IT0_E.exit: ; preds = %bb.l, %_ZNSt23enable_shared_from_thisIN5arrow3ipc21RecordBatchFileReaderEE16shared_from_thisEv.exit
  %i.be = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplENS1_21RecordBatchFileReaderEESt10shared_ptrIT_EOS5_IT0_E.exit
  store i32 0, ptr %i.au, align 8, !tbaa !155
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !156
  %i.bi = load ptr, ptr %i.as, align 8, !tbaa !158
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #36, !inline_history !21
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !158
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #36, !inline_history !21
  br label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplENS1_21RecordBatchFileReaderEESt10shared_ptrIT_EOS5_IT0_E.exit
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i16 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i16, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.au, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.p:                                             ; preds = %bb.n
  %i.bq = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i18 = phi i32 [ %i.bg, %bb.o ], [ %i.bq, %bb.p ]
  %i.br = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.br, label %bb.q, label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !159

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #36
  br label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.q
  %.sroa.6.048 = phi ptr [ null, %bb.q ], [ %i.as, %bb.l ], [ null, %bb.m ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17 ] ; 17 uses
  %.sroa.039.047 = phi ptr [ null, %bb.q ], [ %i.bd, %bb.l ], [ null, %bb.m ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl15ReadFooterAsyncEPNS_8internal8ExecutorE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(513) %1, ptr noundef %i.ap)
          to label %bb.r unwind label %bb.bt

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %.sroa.039.047, ptr %12, align 8, !tbaa !283
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.sroa.6.048, ptr %i.bs, align 8, !tbaa !151
  %.not.i.i.i19 = icmp eq ptr %.sroa.6.048, null  ; 2 uses
  br i1 %.not.i.i.i19, label %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.048, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i20 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i20, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !95
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !95
  br label %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit

bb.u:                                             ; preds = %bb.s
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit

_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit: ; preds = %bb.r, %bb.t, %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.by, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !167 ; 2 uses
  %i.cc = load ptr, ptr %i.ak, align 8, !tbaa !168 ; 3 uses
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 4 uses
  %.not.i.i.i.i.i21 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i.i.i.i.i21, label %.noexc22, label %bb.v

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit
  %i.cg = icmp ugt i64 %i.cf, 9223372036854775804
  br i1 %i.cg, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !159

.noexc.i.i.i:                                     ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.bu

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.v
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #39
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc22_crit_edge unwind label %bb.bu

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc22_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !162 ; 2 uses
  %.pre56 = load ptr, ptr %i.ca, align 8, !tbaa !162
  %.pre57 = ptrtoint ptr %.pre56 to i64
  %.pre58 = ptrtoint ptr %.pre to i64
  br label %.noexc22

.noexc22:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc22_crit_edge, %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit
  %.pre-phi59 = phi i64 [ %.pre58, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc22_crit_edge ], [ %i.ce, %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre57, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc22_crit_edge ], [ %i.cd, %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit ] ; 2 uses
  %i.ci = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc22_crit_edge ], [ %i.cc, %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit ] ; 2 uses
  %i.cj = phi ptr [ %i.ch, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i..noexc22_crit_edge ], [ null, %_ZNSt10shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplEEC2ERKS4_.exit ] ; 9 uses
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !168
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cf
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !332
  %i.cn = sub i64 %.pre-phi, %.pre-phi59          ; 29 uses
  %i.co = icmp sgt i64 %i.cn, 4
  br i1 %i.co, label %bb.w, label %bb.x, !prof !137

bb.w:                                             ; preds = %.noexc22
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cj, ptr align 4 %i.ci, i64 %i.cn, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %.noexc22
  %i.cp = icmp eq i64 %i.cn, 4
  br i1 %i.cp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cq = load i32, ptr %i.ci, align 4, !tbaa !95
  store i32 %i.cq, ptr %i.cj, align 4, !tbaa !95
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cr = getelementptr inbounds i8, ptr %i.cj, i64 %i.cn
  store ptr %i.cr, ptr %i.ck, align 8, !tbaa !167
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !812
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !812
  invoke void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.512") align 8 %9)
          to label %bb.aa unwind label %bb.ac, !noalias !812

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !812
  invoke void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ab unwind label %bb.ad, !noalias !812

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load ptr, ptr %8, align 8, !tbaa !347, !noalias !812 ; 5 uses
  store ptr null, ptr %8, align 8, !tbaa !347, !noalias !812
  store ptr %i.ct, ptr %0, align 8, !tbaa !347, !alias.scope !812
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !151, !noalias !812 ; 7 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !151, !alias.scope !812
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !347, !noalias !812 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !812
  %.not.i.i.i23 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i23, label %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i: ; preds = %bb.ab
  %i.cx = load ptr, ptr %.pre.i.i, align 8, !tbaa !158, !noalias !812
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !812
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(72) %.pre.i.i) #36, !noalias !812, !inline_history !804
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i

bb.ac:                                            ; preds = %bb.z
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i

bb.ad:                                            ; preds = %bb.aa
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %9, align 8, !tbaa !347, !noalias !812 ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i4.i.i, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i: ; preds = %bb.ad
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !158, !noalias !812
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !812
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(72) %i.dc) #36, !noalias !812, !inline_history !804
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i

common.resume.i:                                  ; preds = %.body11.i, %bb.ai, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i ], [ %eh.lpad-body12.i, %.body11.i ], [ %i.du, %bb.ai ]
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  call fastcc void @_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS0_14IpcReadOptionsEENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %12) #36
  br label %bb.bv

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i, %bb.ad, %bb.ac
  %.pn.i.i = phi { ptr, i32 } [ %i.da, %bb.ac ], [ %i.db, %bb.ad ], [ %i.db, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !812
  br label %common.resume.i

_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !812
  store ptr %.sroa.039.047, ptr %10, align 8, !tbaa !283, !noalias !810
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.bs, align 8, !tbaa !151, !noalias !810
  store ptr null, ptr %12, align 8, !tbaa !283, !noalias !810
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dh, ptr noundef nonnull align 8 dereferenceable(88) %i.by, i64 16, i1 false), !noalias !810
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi, %.pre-phi59 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.ae

.thread:                                          ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i
  store ptr null, ptr %i.di, align 8, !tbaa !168, !noalias !810
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.dk = getelementptr inbounds i8, ptr null, i64 %i.cn ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !332, !noalias !810
  br label %bb.aj

bb.ae:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i
  %i.dm = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.dm, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !159

.noexc.i.i.i.i.i:                                 ; preds = %bb.ae
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i.i unwind label %bb.ai, !noalias !810

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.ae
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #39
          to label %.noexc4.i.i unwind label %bb.ai, !noalias !810 ; 7 uses

.noexc4.i.i:                                      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.dn, ptr %i.di, align 8, !tbaa !168, !noalias !810
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.cn ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !332, !noalias !810
  %i.dr = icmp samesign ugt i64 %i.cn, 4
  br i1 %i.dr, label %bb.af, label %bb.ag, !prof !160

bb.af:                                            ; preds = %.noexc4.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dn, ptr align 4 %i.cj, i64 %i.cn, i1 false), !noalias !810
  br label %bb.aj

bb.ag:                                            ; preds = %.noexc4.i.i
  %i.ds = icmp eq i64 %i.cn, 4
  br i1 %i.ds, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dt = load i32, ptr %i.cj, align 4, !tbaa !95, !noalias !810
  store i32 %i.dt, ptr %i.dn, align 4, !tbaa !95, !noalias !810
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt12__shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.sroa.6.048) #36, !noalias !810
  br label %common.resume.i

bb.aj:                                            ; preds = %.thread, %bb.ah, %bb.ag, %bb.af
  %i.dv = phi i1 [ false, %bb.ah ], [ false, %bb.ag ], [ true, %bb.af ], [ false, %.thread ] ; 5 uses
  %i.dw = phi ptr [ %i.dp, %bb.ah ], [ %i.dp, %bb.ag ], [ %i.dp, %bb.af ], [ %i.dk, %.thread ]
  %i.dx = phi ptr [ %i.do, %bb.ah ], [ %i.do, %bb.ag ], [ %i.do, %bb.af ], [ %i.dj, %.thread ]
  %i.dy = phi ptr [ %i.dn, %bb.ah ], [ %i.dn, %bb.ag ], [ %i.dn, %bb.af ], [ null, %.thread ] ; 4 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !167, !noalias !810
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %i.cs, i64 48, i1 false), !noalias !810
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  store ptr %i.ct, ptr %i.ea, align 8, !tbaa !345, !noalias !810
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 120 ; 2 uses
  store ptr %i.cw, ptr %i.eb, align 8, !tbaa !151, !noalias !810
  %.not.i.i.i.i.i24 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i24, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153, !noalias !810
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !95, !noalias !810
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !95, !noalias !810
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.eg = atomicrmw volatile add ptr %i.ec, i32 1 acq_rel, align 4, !noalias !810 ; 0 uses
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i

_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i: ; preds = %bb.am, %bb.al, %bb.aj
  %.val.i = load ptr, ptr %11, align 8, !tbaa !345, !noalias !810
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !810
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !810
  store ptr %.sroa.039.047, ptr %7, align 8, !tbaa !283, !noalias !810
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.dg, align 8, !tbaa !151, !noalias !810
  store ptr %.sroa.6.048, ptr %i.eh, align 8, !tbaa !151, !noalias !810
  store ptr null, ptr %10, align 8, !tbaa !283, !noalias !810
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.thread, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #39
          to label %.noexc4.i.i.i.i unwind label %bb.aq, !noalias !810 ; 6 uses

.noexc4.i.i.i.i:                                  ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !168, !noalias !810
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.cn ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.em, ptr %i.en, align 8, !tbaa !332, !noalias !810
  br i1 %i.dv, label %bb.an, label %bb.ao, !prof !137

.noexc4.i.i.i.i.thread:                           ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i
  store ptr null, ptr %i.ej, align 8, !tbaa !168, !noalias !810
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr null, i64 %i.cn ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !332, !noalias !810
  br i1 %i.dv, label %bb.an, label %_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS5_14IpcReadOptionsEEUlvE_NS3_17PassthruOnFailureISE_EEEC2EOSH_.exit.i.i, !prof !137

bb.an:                                            ; preds = %.noexc4.i.i.i.i.thread, %.noexc4.i.i.i.i
  %i.er = phi ptr [ %i.ep, %.noexc4.i.i.i.i.thread ], [ %i.em, %.noexc4.i.i.i.i ]
  %i.es = phi ptr [ %i.eo, %.noexc4.i.i.i.i.thread ], [ %i.el, %.noexc4.i.i.i.i ]
  %i.et = phi ptr [ null, %.noexc4.i.i.i.i.thread ], [ %i.ek, %.noexc4.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.et, ptr align 4 %i.dy, i64 %i.cn, i1 false), !noalias !810
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS5_14IpcReadOptionsEEUlvE_NS3_17PassthruOnFailureISE_EEEC2EOSH_.exit.i.i

bb.ao:                                            ; preds = %.noexc4.i.i.i.i
  %i.eu = icmp eq i64 %i.cn, 4
  br i1 %i.eu, label %bb.ap, label %_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS5_14IpcReadOptionsEEUlvE_NS3_17PassthruOnFailureISE_EEEC2EOSH_.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.ev = load i32, ptr %i.dy, align 4, !tbaa !95, !noalias !810
  store i32 %i.ev, ptr %i.ek, align 4, !tbaa !95, !noalias !810
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS5_14IpcReadOptionsEEUlvE_NS3_17PassthruOnFailureISE_EEEC2EOSH_.exit.i.i

bb.aq:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt12__shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.sroa.6.048) #36, !noalias !810
  br label %.body11.i

_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS5_14IpcReadOptionsEEUlvE_NS3_17PassthruOnFailureISE_EEEC2EOSH_.exit.i.i: ; preds = %.noexc4.i.i.i.i.thread, %bb.ap, %bb.ao, %bb.an
  %i.ex = phi ptr [ %i.em, %bb.ap ], [ %i.em, %bb.ao ], [ %i.er, %bb.an ], [ %i.ep, %.noexc4.i.i.i.i.thread ]
  %i.ey = phi ptr [ %i.el, %bb.ap ], [ %i.el, %bb.ao ], [ %i.es, %bb.an ], [ %i.eo, %.noexc4.i.i.i.i.thread ]
  %i.ez = phi ptr [ %i.ek, %bb.ap ], [ %i.ek, %bb.ao ], [ %i.et, %bb.an ], [ null, %.noexc4.i.i.i.i.thread ] ; 4 uses
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !167, !noalias !810
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fa, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 48, i1 false), !noalias !810
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  store ptr %i.ct, ptr %i.fb, align 8, !tbaa !345, !noalias !810
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  store ptr null, ptr %i.eb, align 8, !tbaa !151, !noalias !810
  store ptr %i.cw, ptr %i.fc, align 8, !tbaa !151, !noalias !810
  store ptr null, ptr %i.ea, align 8, !tbaa !345, !noalias !810
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !810
  %i.fd = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #39
          to label %.noexc.i10.i unwind label %bb.bc, !noalias !810 ; 14 uses

.noexc.i10.i:                                     ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS5_14IpcReadOptionsEEUlvE_NS3_17PassthruOnFailureISE_EEEC2EOSH_.exit.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !noalias !810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i64 16, i1 false), !noalias !810
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.thread, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i10.i
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #39
          to label %.noexc4.i.i.i.i.i.i unwind label %bb.au, !noalias !810 ; 6 uses

.noexc4.i.i.i.i.i.i:                              ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !168, !noalias !810
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fh, i64 %i.cn ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !332, !noalias !810
  br i1 %i.dv, label %bb.ar, label %bb.as, !prof !137

.noexc4.i.i.i.i.i.i.thread:                       ; preds = %.noexc.i10.i
  store ptr null, ptr %i.fg, align 8, !tbaa !168, !noalias !810
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr null, i64 %i.cn ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !332, !noalias !810
  br i1 %i.dv, label %bb.ar, label %.thread79, !prof !137

bb.ar:                                            ; preds = %.noexc4.i.i.i.i.i.i.thread, %.noexc4.i.i.i.i.i.i
  %i.fo = phi ptr [ %i.fm, %.noexc4.i.i.i.i.i.i.thread ], [ %i.fj, %.noexc4.i.i.i.i.i.i ]
  %i.fp = phi ptr [ %i.fl, %.noexc4.i.i.i.i.i.i.thread ], [ %i.fi, %.noexc4.i.i.i.i.i.i ]
  %i.fq = phi ptr [ null, %.noexc4.i.i.i.i.i.i.thread ], [ %i.fh, %.noexc4.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fq, ptr align 4 %i.ez, i64 %i.cn, i1 false), !noalias !810
  br label %.thread79

bb.as:                                            ; preds = %.noexc4.i.i.i.i.i.i
  %i.fr = icmp eq i64 %i.cn, 4
  br i1 %i.fr, label %bb.at, label %.thread79

bb.at:                                            ; preds = %bb.as
  %i.fs = load i32, ptr %i.ez, align 4, !tbaa !95, !noalias !810
  store i32 %i.fs, ptr %i.fh, align 4, !tbaa !95, !noalias !810
  br label %.thread79

bb.au:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt12__shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.sroa.6.048) #36, !noalias !810
  br label %.body.i.i.i

.thread79:                                        ; preds = %.noexc4.i.i.i.i.i.i.thread, %bb.at, %bb.as, %bb.ar
  %i.fu = phi ptr [ %i.fj, %bb.at ], [ %i.fj, %bb.as ], [ %i.fo, %bb.ar ], [ %i.fm, %.noexc4.i.i.i.i.i.i.thread ]
  %i.fv = phi ptr [ %i.fi, %bb.at ], [ %i.fi, %bb.as ], [ %i.fp, %bb.ar ], [ %i.fl, %.noexc4.i.i.i.i.i.i.thread ]
  %i.fw = phi ptr [ %i.fh, %bb.at ], [ %i.fh, %bb.as ], [ %i.fq, %bb.ar ], [ null, %.noexc4.i.i.i.i.i.i.thread ] ; 4 uses
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !167, !noalias !810
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fx, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 48, i1 false), !noalias !810
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 112
  store ptr %i.ct, ptr %i.fy, align 8, !tbaa !345, !noalias !810
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr null, ptr %i.fc, align 8, !tbaa !151, !noalias !810
  store ptr %i.cw, ptr %i.fz, align 8, !tbaa !151, !noalias !810
  store ptr null, ptr %i.fb, align 8, !tbaa !345, !noalias !810
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNSE_14IpcReadOptionsEEUlvE_NSA_17PassthruOnFailureISN_EEEEEEEE, i64 16), ptr %i.fd, align 8, !tbaa !158, !noalias !810
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %.sroa.039.047, ptr %i.ga, align 8, !tbaa !283, !noalias !810
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  store ptr null, ptr %i.fe, align 8, !tbaa !151, !noalias !810
  store ptr %.sroa.6.048, ptr %i.gb, align 8, !tbaa !151, !noalias !810
  store ptr null, ptr %5, align 8, !tbaa !283, !noalias !810
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i64 16, i1 false), !noalias !810
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fd, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i8 0, i64 24, i1 false), !noalias !810
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i:                                    ; preds = %.thread79
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.gf = getelementptr inbounds i8, ptr null, i64 %i.cn ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false), !noalias !810
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !332, !noalias !810
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread79
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #39
          to label %.noexc4.i.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !810 ; 5 uses

.noexc4.i.i.i.i.i.i.i:                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.gh, ptr %i.gd, align 8, !tbaa !168, !noalias !810
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fd, i64 48 ; 4 uses
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !167, !noalias !810
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.cn ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !332, !noalias !810
  br i1 %i.dv, label %bb.av, label %bb.aw, !prof !160

bb.av:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gh, ptr align 4 %i.fw, i64 %i.cn, i1 false), !noalias !810
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i.i

bb.aw:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  %i.gl = icmp eq i64 %i.cn, 4
  br i1 %i.gl, label %bb.ax, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.gm = load i32, ptr %i.fw, align 4, !tbaa !95, !noalias !810
  store i32 %i.gm, ptr %i.gh, align 4, !tbaa !95, !noalias !810
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !tbaa !151, !noalias !810
  call fastcc void @_ZNSt12__shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.val.i.i.i.i.i.i.i) #36, !noalias !810
  call fastcc void @_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS5_14IpcReadOptionsEEUlvE_NS3_17PassthruOnFailureISE_EEED2Ev(ptr noundef nonnull readonly align 8 dead_on_return(128) dereferenceable(128) %5) #36, !noalias !810
  br label %.body.i.i.i

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i.i: ; preds = %bb.ax, %bb.aw, %bb.av, %.thread.i.i.i
  %i.go = phi ptr [ %i.gj, %bb.av ], [ %i.gj, %bb.aw ], [ %i.gj, %bb.ax ], [ %i.gf, %.thread.i.i.i ]
  %i.gp = phi ptr [ %i.gi, %bb.av ], [ %i.gi, %bb.aw ], [ %i.gi, %bb.ax ], [ %i.ge, %.thread.i.i.i ]
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !167, !noalias !810
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gq, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 48, i1 false), !noalias !810
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fd, i64 120
  store ptr %i.ct, ptr %i.gr, align 8, !tbaa !345, !noalias !810
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fd, i64 128
  store ptr %i.cw, ptr %i.gs, align 8, !tbaa !151, !noalias !810
  store ptr %i.fd, ptr %6, align 8, !tbaa !349, !noalias !810
  %.not.i.i.i.i.i.i.i7.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i7.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.cn) #37, !noalias !810
  br label %bb.az

.body.i.i.i:                                      ; preds = %.body.i.i.i.i, %bb.au
  %.pn.i.i.i = phi { ptr, i32 } [ %i.gn, %.body.i.i.i.i ], [ %i.ft, %bb.au ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 136) #37, !noalias !810
  br label %.body.i.i

bb.az:                                            ; preds = %bb.ay, %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !810
  invoke void @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %.val.i, ptr noundef nonnull %6, i32 0, ptr null)
          to label %bb.ba unwind label %bb.bd, !noalias !810

bb.ba:                                            ; preds = %bb.az
  %i.gt = load ptr, ptr %6, align 8, !tbaa !349, !noalias !810 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i25, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i: ; preds = %bb.ba
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !158, !noalias !810
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !810
  call void %i.gw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gt) #36, !noalias !810, !inline_history !805
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i, %bb.ba
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.cn) #37, !noalias !810
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i

bb.bc:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS5_14IpcReadOptionsEEUlvE_NS3_17PassthruOnFailureISE_EEEC2EOSH_.exit.i.i
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bd:                                            ; preds = %bb.az
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %6, align 8, !tbaa !349, !noalias !810 ; 3 uses
  %.not.i.i9.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i9.i.i, label %.body.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i10.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i10.i.i: ; preds = %bb.bd
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !158, !noalias !810
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !810
  call void %i.hc(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gz) #36, !noalias !810, !inline_history !805
  br label %.body.i.i

.body.i.i:                                        ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i10.i.i, %bb.bd, %bb.bc, %.body.i.i.i
  %.pn.i9.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.gx, %bb.bc ], [ %i.gy, %bb.bd ], [ %i.gy, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i10.i.i ]
  call fastcc void @_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS5_14IpcReadOptionsEEUlvE_NS3_17PassthruOnFailureISE_EEED2Ev(ptr noundef nonnull readonly align 8 dead_on_return(128) dereferenceable(128) %7) #36, !noalias !810
  br label %.body11.i

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i: ; preds = %bb.bb, %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !810
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !810
  %.not.i.i.i.i.i.i15.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i15.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.cn) #37, !noalias !810
  br label %bb.bf

.body11.i:                                        ; preds = %.body.i.i, %bb.aq
  %eh.lpad-body12.i = phi { ptr, i32 } [ %.pn.i9.i, %.body.i.i ], [ %i.ew, %bb.aq ]
  call fastcc void @_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS5_14IpcReadOptionsEEUlvE_NS3_17PassthruOnFailureISE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %10) #36, !noalias !810
  br label %common.resume.i

bb.bf:                                            ; preds = %bb.be, %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.not.i.i.i.i.i26 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i26, label %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS0_14IpcReadOptionsEENUlvE_D2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cf) #37
  br label %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS0_14IpcReadOptionsEENUlvE_D2Ev.exit

_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS0_14IpcReadOptionsEENUlvE_D2Ev.exit: ; preds = %bb.bf, %bb.bg
  %i.hd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !151 ; 8 uses
  %.not.i.i.i30 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i30, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS0_14IpcReadOptionsEENUlvE_D2Ev.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 4 uses
  %i.hg = load atomic i64, ptr %i.hf acquire, align 8 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 4294967297
  %i.hi = trunc i64 %i.hg to i32                  ; 2 uses
  br i1 %i.hh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.hf, align 8, !tbaa !155
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i32 0, ptr %i.hj, align 4, !tbaa !156
  %i.hk = load ptr, ptr %i.he, align 8, !tbaa !158
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #36, !inline_history !18
  %i.hn = load ptr, ptr %i.he, align 8, !tbaa !158
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #36, !inline_history !18
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.hq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i31 = icmp eq i8 %i.hq, 0
  br i1 %.not.i.i.i.i31, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hr = add nsw i32 %i.hi, -1
  store i32 %i.hr, ptr %i.hf, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32

bb.bl:                                            ; preds = %bb.bj
  %i.hs = atomicrmw volatile add ptr %i.hf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i33 = phi i32 [ %i.hi, %bb.bk ], [ %i.hs, %bb.bl ]
  %i.ht = icmp eq i32 %.0.i.i.i.i.i33, 1
  br i1 %i.ht, label %bb.bm, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, !prof !159

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #36
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit:   ; preds = %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9OpenAsyncEPNS_2io16RandomAccessFileElRKNS0_14IpcReadOptionsEENUlvE_D2Ev.exit, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br i1 %.not.i.i.i19, label %_ZNSt12__shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.6.048, i64 8 ; 4 uses
  %i.hv = load atomic i64, ptr %i.hu acquire, align 8 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 4294967297
  %i.hx = trunc i64 %i.hv to i32                  ; 2 uses
  br i1 %i.hw, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.hu, align 8, !tbaa !155
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.6.048, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !156
  %i.hz = load ptr, ptr %.sroa.6.048, align 8, !tbaa !158
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.048) #36, !inline_history !15
  %i.ic = load ptr, ptr %.sroa.6.048, align 8, !tbaa !158
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.048) #36, !inline_history !15
  br label %_ZNSt12__shared_ptrIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bp:                                            ; preds = %bb.bn
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i35 = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i35, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ig = add nsw i32 %i.hx, -1
end_hunk_0
