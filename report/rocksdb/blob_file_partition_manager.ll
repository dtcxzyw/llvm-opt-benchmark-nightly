Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/blob_file_partition_manager?download=true
inline.NumInlined: 2618
inline.NumDeleted: 1382
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7rocksdb24BlobFilePartitionManager9WriteBlobERKNS_12WriteOptionsEjNS_15CompressionTypeERKNS_5SliceES7_PmS8_S8_RKNS_23BlobDirectWriteSettingsEPKj:bb.a
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bh
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !34
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.bm

.body:                                            ; preds = %bb.av, %_ZN7rocksdb6StatusD2Ev.exit.i, %bb.ba
  %.pn76.pn = phi { ptr, i32 } [ %i.hm, %bb.ba ], [ %i.ha, %bb.av ], [ %.pn.i, %_ZN7rocksdb6StatusD2Ev.exit.i ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.eb)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit126 unwind label %bb.bi

bb.bi:                                            ; preds = %.body
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #32
  unreachable

bb.bj:                                            ; preds = %.noexc124, %bb.bc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit135

bb.bk:                                            ; preds = %bb.bf
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.bl:                                            ; preds = %bb.bg
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jf = load ptr, ptr %24, align 8, !tbaa !33   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.bl
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !34
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.bk
  %.pn81 = phi { ptr, i32 } [ %i.jd, %bb.bk ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.je, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.jk = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !171 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i133, label %_ZN7rocksdb6StatusD2Ev.exit135, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i134

bb.bm:                                            ; preds = %bb.bd, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.thread155
  store ptr null, ptr %i.hx, align 8, !tbaa !199, !alias.scope !495
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !495
  %i.jm = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !171 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i130, label %_ZN7rocksdb6StatusD2Ev.exit132, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i131

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i131: ; preds = %bb.bm
  call void @_ZdaPv(ptr noundef nonnull %i.jn) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit132

_ZN7rocksdb6StatusD2Ev.exit132:                   ; preds = %bb.bm, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  call void @_ZdaPv(ptr noundef nonnull %i.jl) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit135

_ZN7rocksdb6StatusD2Ev.exit135:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %bb.bj
  %.pn83.pn = phi { ptr, i32 } [ %i.jc, %bb.bj ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn81, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %_ZN7rocksdb9MutexLockD2Ev.exit126

.critedge92:                                      ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i.i
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.eb)
          to label %_ZN7rocksdb6StatusD2Ev.exit unwind label %bb.bn

bb.bn:                                            ; preds = %.critedge92
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #32
  unreachable

.critedge:                                        ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.eb)
          to label %_ZN7rocksdb6StatusD2Ev.exit unwind label %bb.bo

bb.bo:                                            ; preds = %.critedge
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #32
  unreachable

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.critedge, %.critedge92, %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit, %bb.ab, %_ZN7rocksdb6StatusD2Ev.exit132
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.js = load ptr, ptr %19, align 8, !tbaa !487
  call void @free(ptr noundef %i.js) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  ret void

_ZN7rocksdb9MutexLockD2Ev.exit126:                ; preds = %bb.au, %.body, %bb.at, %_ZN7rocksdb6StatusD2Ev.exit135, %bb.z, %bb.aa
  %.pn83.pn.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.z ], [ %i.dh, %bb.aa ], [ %.pn76.pn, %.body ], [ %.pn83.pn, %_ZN7rocksdb6StatusD2Ev.exit135 ], [ %i.gy, %bb.at ], [ %i.gz, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.jt = load ptr, ptr %19, align 8, !tbaa !487
  call void @free(ptr noundef %i.jt) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  resume { ptr, i32 } %.pn83.pn.pn.pn
}

declare void @_ZN7rocksdb29LegacyForceBuiltinCompressionERNS_10CompressorEPNS_10ManagedPtrINS0_11WorkingAreaES0_XadL_ZNS0_18ReleaseWorkingAreaEPS3_EEEENS_5SliceEPNS_14GrowableBufferE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr, i64, ptr noundef) local_unnamed_addr #4

declare void @_ZN7rocksdb13BlobLogWriter9AddRecordERKNS_12WriteOptionsERKNS_5SliceES6_PmS7_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb24BlobFilePartitionManager23RotateCurrentGenerationEv(ptr noundef nonnull align 8 dereferenceable(856) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.rocksdb::BlobFilePartitionManager::GenerationBatch", align 8 ; 14 uses
  %2 = alloca %"struct.rocksdb::BlobFilePartitionManager::DeferredFile", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef 0)
          to label %_ZNSt6vectorIN7rocksdb24BlobFilePartitionManager10SealedFileESaIS2_EE5clearEv.exit unwind label %bb.b

_ZNSt6vectorIN7rocksdb24BlobFilePartitionManager10SealedFileESaIS2_EE5clearEv.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !217
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !217
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !160
  store ptr %i.h, ptr %i.e, align 8, !tbaa !160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !240  ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7rocksdb24BlobFilePartitionManager10SealedFileESaIS2_EE5clearEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f, %_ZNSt6vectorIN7rocksdb24BlobFilePartitionManager10SealedFileESaIS2_EE5clearEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.s = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager15GenerationBatchESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.029.034 = phi ptr [ %i.j, %.lr.ph ], [ %i.al, %bb.f ] ; 4 uses
  %i.u = load ptr, ptr %.sroa.029.034, align 8, !tbaa !142
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  %i.w = load ptr, ptr %.sroa.029.034, align 8, !tbaa !142 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  store ptr null, ptr %i.w, align 8, !tbaa !162
  %i.y = load ptr, ptr %2, align 8, !tbaa !162    ; 3 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !162
  %.not.i.i.i.i16 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i16, label %_ZNSt10unique_ptrIN7rocksdb13BlobLogWriterESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZN7rocksdb13BlobLogWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.y) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 48) #29
  %.pre = load ptr, ptr %.sroa.029.034, align 8, !tbaa !142
  br label %_ZNSt10unique_ptrIN7rocksdb13BlobLogWriterESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN7rocksdb13BlobLogWriterESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i.i.i.i
  %i.z = phi ptr [ %i.w, %bb.d ], [ %.pre, %_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i.i.i.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %3 = call <5 x i64> @llvm.masked.load.v5i64.p0(ptr nonnull align 8 %i.aa, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x i64> poison), !tbaa !145
  %4 = shufflevector <5 x i64> %3, <5 x i64> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  store <4 x i64> %4, ptr %i.n, align 8, !tbaa !145
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !496
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !497
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !162 ; 3 uses
  store ptr null, ptr %i.z, align 8, !tbaa !162
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb24BlobFilePartitionManager19ResetPartitionStateEPNS0_9PartitionE.exit, label %_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb13BlobLogWriterESt14default_deleteIS1_EEaSEOS4_.exit
  call void @_ZN7rocksdb13BlobLogWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ad) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 48) #29
  br label %_ZN7rocksdb24BlobFilePartitionManager19ResetPartitionStateEPNS0_9PartitionE.exit

_ZN7rocksdb24BlobFilePartitionManager19ResetPartitionStateEPNS0_9PartitionE.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb13BlobLogWriterESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(54) %i.aa, i8 0, i64 54, i1 false)
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !245 ; 3 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !498
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -48
  %.not.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i, label %bb.e, label %_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread

_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread: ; preds = %_ZN7rocksdb24BlobFilePartitionManager19ResetPartitionStateEPNS0_9PartitionE.exit
  %i.ah = load i64, ptr %2, align 8, !tbaa !162
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !162
  store ptr null, ptr %2, align 8, !tbaa !162
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !245
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr %i.ak, ptr %i.p, align 8, !tbaa !245
  br label %_ZN7rocksdb24BlobFilePartitionManager12DeferredFileD2Ev.exit

bb.e:                                             ; preds = %_ZN7rocksdb24BlobFilePartitionManager19ResetPartitionStateEPNS0_9PartitionE.exit
  invoke void @_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.g

_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.e
  %.pre35 = load ptr, ptr %2, align 8, !tbaa !162 ; 3 uses
  %.not.i.i17 = icmp eq ptr %.pre35, null
  br i1 %.not.i.i17, label %_ZN7rocksdb24BlobFilePartitionManager12DeferredFileD2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i.i: ; preds = %_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  call void @_ZN7rocksdb13BlobLogWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.pre35) #18
  call void @_ZdlPvm(ptr noundef nonnull %.pre35, i64 noundef 48) #29
  br label %_ZN7rocksdb24BlobFilePartitionManager12DeferredFileD2Ev.exit

_ZN7rocksdb24BlobFilePartitionManager12DeferredFileD2Ev.exit: ; preds = %_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.thread, %_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit, %_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN7rocksdb24BlobFilePartitionManager12DeferredFileD2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.029.034, i64 8 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.l
  br i1 %i.am, label %._crit_edge, label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb24BlobFilePartitionManager12DeferredFileD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.l

bb.h:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !158 ; 3 uses
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !159 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb24BlobFilePartitionManager10SealedFileES2_EvT_S4_RSaIT0_E.exit.i.i25, label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %bb.h, %_ZSt8_DestroyIN7rocksdb24BlobFilePartitionManager10SealedFileEEvPT_.exit.i.i.i.i23
  %.05.i.i.i.i19 = phi ptr [ %i.bc, %_ZSt8_DestroyIN7rocksdb24BlobFilePartitionManager10SealedFileEEvPT_.exit.i.i.i.i23 ], [ %i.ao, %bb.h ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i19, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i19, i64 72 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i18
  %i.au = load i64, ptr %i.as, align 8, !tbaa !34
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i20
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i19, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i19, i64 40 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyIN7rocksdb24BlobFilePartitionManager10SealedFileEEvPT_.exit.i.i.i.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i21
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !34
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #29
  br label %_ZSt8_DestroyIN7rocksdb24BlobFilePartitionManager10SealedFileEEvPT_.exit.i.i.i.i23

_ZSt8_DestroyIN7rocksdb24BlobFilePartitionManager10SealedFileEEvPT_.exit.i.i.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i22
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i19, i64 104 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bc, %i.ap
  br i1 %.not.i.i.i.i24, label %_ZSt8_DestroyIPN7rocksdb24BlobFilePartitionManager10SealedFileES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i18, !llvm.loop !2

_ZSt8_DestroyIPN7rocksdb24BlobFilePartitionManager10SealedFileES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb24BlobFilePartitionManager10SealedFileEEvPT_.exit.i.i.i.i23
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !158
  br label %_ZSt8_DestroyIPN7rocksdb24BlobFilePartitionManager10SealedFileES2_EvT_S4_RSaIT0_E.exit.i.i25

_ZSt8_DestroyIPN7rocksdb24BlobFilePartitionManager10SealedFileES2_EvT_S4_RSaIT0_E.exit.i.i25: ; preds = %_ZSt8_DestroyIPN7rocksdb24BlobFilePartitionManager10SealedFileES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.h
  %i.bd = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7rocksdb24BlobFilePartitionManager10SealedFileES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ao, %bb.h ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i, label %_ZN7rocksdb24BlobFilePartitionManager15GenerationBatchD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb24BlobFilePartitionManager10SealedFileES2_EvT_S4_RSaIT0_E.exit.i.i25
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !160
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #29
  br label %_ZN7rocksdb24BlobFilePartitionManager15GenerationBatchD2Ev.exit

_ZN7rocksdb24BlobFilePartitionManager15GenerationBatchD2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb24BlobFilePartitionManager10SealedFileES2_EvT_S4_RSaIT0_E.exit.i.i25, %bb.i
  call void @_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(104) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN7rocksdb24BlobFilePartitionManager15GenerationBatchD2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #32
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %_ZN7rocksdb24BlobFilePartitionManager15GenerationBatchD2Ev.exit
  ret void

bb.k:                                             ; preds = %._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.an, %bb.g ], [ %i.bk, %bb.k ]
  call void @_ZN7rocksdb24BlobFilePartitionManager15GenerationBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %1) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.t, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit28 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #32
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit28:                 ; preds = %bb.m
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb24BlobFilePartitionManager12DeferredFileD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb13BlobLogWriterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN7rocksdb13BlobLogWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #29
  br label %_ZNSt10unique_ptrIN7rocksdb13BlobLogWriterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb13BlobLogWriterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7rocksdb13BlobLogWriterEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZNSt5dequeIN7rocksdb24BlobFilePartitionManager15GenerationBatchESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !501
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -104
  %.not = icmp eq ptr %i.b, %i.e
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseIN7rocksdb24BlobFilePartitionManager12DeferredFileESaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 noundef 0)
  %i.f = load ptr, ptr %1, align 8, !tbaa !247
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atIN7rocksdb24BlobFilePartitionManager15GenerationBatchEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <4 x ptr>, ptr %i.g, align 8, !tbaa !128
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load <4 x ptr>, ptr %i.h, align 8, !tbaa !128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i8 0, i64 80, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 80, i1 false), !tbaa.struct !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !250
  store <4 x ptr> %i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !128
  store <4 x ptr> %i.j, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  br label %_ZSt12construct_atIN7rocksdb24BlobFilePartitionManager15GenerationBatchEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZSt12construct_atIN7rocksdb24BlobFilePartitionManager15GenerationBatchEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit: ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_blob_file_partition_manager.cc:bb.a
  store i64 34, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 336), align 16, !tbaa !119
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 34
  store i8 0, ptr %i.ah, align 1, !tbaa !34
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 360), align 8, !tbaa !780
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 384), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 368), align 16, !tbaa !118
  %i.ai = invoke noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #30
          to label %.noexc106.i unwind label %bb.n ; 3 uses

.noexc106.i:                                      ; preds = %.noexc98.i
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 368), align 16, !tbaa !33
  store i64 35, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 384), align 16, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ai, ptr noundef nonnull align 1 dereferenceable(35) @.str.22, i64 35, i1 false)
  store i64 35, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 376), align 8, !tbaa !119
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 35
  store i8 0, ptr %i.aj, align 1, !tbaa !34
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 400), align 16, !tbaa !780
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 424), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 408), align 8, !tbaa !118
  %i.ak = invoke noalias noundef nonnull dereferenceable(45) ptr @_Znwm(i64 noundef 45) #30
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
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #29
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i

_ZN7rocksdb18OperationStageInfoD2Ev.exit.i:       ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1
  %i.bc = icmp eq ptr %i.av, @_ZN7rocksdbL21global_op_stage_tableE
  br i1 %i.bc, label %common.resume, label %bb.q

__cxx_global_var_init.13.exit:                    ; preds = %.noexc106.i
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 408), align 8, !tbaa !33
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 424), align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.ak, ptr noundef nonnull align 1 dereferenceable(44) @.str.23, i64 44, i1 false)
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 416), align 16, !tbaa !119
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store i8 0, ptr %i.bd, align 1, !tbaa !34
  %i.be = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.24, ptr null, ptr nonnull @__dso_handle) #18 ; 0 uses
  %i.bf = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.27, ptr null, ptr nonnull @__dso_handle) #18 ; 0 uses
  store i32 0, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, align 16, !tbaa !782
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 8), align 8, !tbaa !118
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 16), align 16, !tbaa !119
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 29), align 1, !tbaa !34
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 40), align 8, !tbaa !782
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !118
  %i.bg = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #30
          to label %.noexc27.i unwind label %bb.r ; 3 uses

.noexc27.i:                                       ; preds = %__cxx_global_var_init.13.exit
  store ptr %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !33
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), align 16, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bg, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, i64 16, i1 false)
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 56), align 8, !tbaa !119
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i8 0, ptr %i.bh, align 1, !tbaa !34
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 80), align 16, !tbaa !782
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !118
  %i.bi = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
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
  tail call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #29
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.i

_ZN7rocksdb17OperationPropertyD2Ev.exit.i:        ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  %i.bt = icmp eq ptr %i.bm, @_ZN7rocksdbL31compaction_operation_propertiesE
  br i1 %i.bt, label %common.resume, label %bb.u

__cxx_global_var_init.28.exit:                    ; preds = %.noexc27.i
  store ptr %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !33
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.bi, ptr noundef nonnull align 1 dereferenceable(23) @.str.31, i64 23, i1 false)
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 96), align 16, !tbaa !119
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 23
  store i8 0, ptr %i.bu, align 1, !tbaa !34
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 120), align 8, !tbaa !782
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 128), align 16, !tbaa !118
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), ptr noundef nonnull align 1 dereferenceable(15) @.str.32, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 136), align 8, !tbaa !119
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 159), align 1, !tbaa !34
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 160), align 16, !tbaa !782
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 168), align 8, !tbaa !118
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 176), align 16, !tbaa !119
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 193), align 1, !tbaa !34
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 200), align 8, !tbaa !782
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 208), align 16, !tbaa !118
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 216), align 8, !tbaa !119
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 236), align 4, !tbaa !34
  %i.bv = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.35, ptr null, ptr nonnull @__dso_handle) #18 ; 0 uses
  %i.bw = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.38, ptr null, ptr nonnull @__dso_handle) #18 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x i64> @llvm.masked.load.v5i64.p0(ptr captures(none), <5 x i1>, <5 x i64>) #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { cold "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn }
attributes #32 = { noreturn nounwind }
attributes #33 = { cold }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{!0, !130}
!1 = distinct !{!1, !130}
!2 = distinct !{!2, !130}
!3 = distinct !{!3, !130}
!4 = distinct !{null, null}
!5 = distinct !{!5, !130}
!6 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev, null, null, null, null, null, null, null}
!8 = distinct !{!8, !130}
!9 = distinct !{!9, !130}
!10 = distinct !{null, null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{!14, !130}
!15 = distinct !{null, null}
!16 = distinct !{null, null}
!17 = distinct !{null}
!18 = distinct !{ptr @_ZN7rocksdb26FSWritableFileOwnerWrapperD2Ev, null, null}
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
!35 = !{!"p1 _ZTSN7rocksdb25BlobFilePartitionStrategyE", !28, i64 0}
!36 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0}
!37 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!38 = !{!"_ZTSSt12__shared_ptrIN7rocksdb25BlobFilePartitionStrategyELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !37, i64 8}
!39 = !{!"_ZTSSt10shared_ptrIN7rocksdb25BlobFilePartitionStrategyEE", !38, i64 0}
!40 = !{!"_ZTSSt14_Function_base", !24, i64 0, !28, i64 16}
!41 = !{!"_ZTSSt8functionIFmvEE", !40, i64 0, !28, i64 24}
!42 = !{!"p1 _ZTSN7rocksdb10FileSystemE", !28, i64 0}
!43 = !{!"p1 _ZTSN7rocksdb11SystemClockE", !28, i64 0}
!44 = !{!"p1 _ZTSN7rocksdb10StatisticsE", !28, i64 0}
!45 = !{!"bool", !24, i64 0}
!46 = !{!"p1 _ZTSN7rocksdb11RateLimiterE", !28, i64 0}
!47 = !{!"_ZTSN7rocksdb10EnvOptionsE", !45, i64 0, !45, i64 1, !45, i64 2, !45, i64 3, !45, i64 4, !45, i64 5, !31, i64 8, !45, i64 16, !45, i64 17, !31, i64 24, !31, i64 32, !46, i64 40}
!48 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !31, i64 0}
!49 = !{!"_ZTSN7rocksdb10IOPriorityE", !24, i64 0}
!50 = !{!"_ZTSN7rocksdb3Env10IOPriorityE", !24, i64 0}
!51 = !{!"_ZTSN7rocksdb6IOTypeE", !24, i64 0}
!52 = !{!"any p2 pointer", !28, i64 0}
!53 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !52, i64 0}
!54 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !28, i64 0}
!55 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !54, i64 0}
!56 = !{!"float", !24, i64 0}
!57 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !56, i64 0, !31, i64 8}
!58 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !53, i64 0, !31, i64 8, !55, i64 16, !31, i64 24, !57, i64 32, !54, i64 48}
!59 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !58, i64 0}
!60 = !{!"_ZTSN7rocksdb3Env10IOActivityE", !24, i64 0}
!61 = !{!"_ZTSN7rocksdb9IOOptionsE", !48, i64 0, !49, i64 8, !50, i64 12, !51, i64 16, !59, i64 24, !45, i64 80, !45, i64 81, !45, i64 82, !60, i64 83}
!62 = !{!"_ZTSN7rocksdb11TemperatureE", !24, i64 0}
!63 = !{!"_ZTSN7rocksdb16FileOpenContractE", !24, i64 0}
!64 = !{!"_ZTSN7rocksdb12ChecksumTypeE", !24, i64 0}
!65 = !{!"_ZTSN7rocksdb3Env17WriteLifeTimeHintE", !24, i64 0}
!66 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0}
!67 = !{!"_ZTSN7rocksdb11FileOptionsE", !47, i64 0, !61, i64 48, !62, i64 136, !63, i64 137, !64, i64 138, !65, i64 140, !32, i64 144, !32, i64 176, !66, i64 208}
!68 = !{!"p1 _ZTSN7rocksdb13BlobFileCacheE", !28, i64 0}
!69 = !{!"p1 _ZTSN7rocksdb26BlobFileCompletionCallbackE", !28, i64 0}
!70 = !{!"p1 _ZTSSt10shared_ptrIN7rocksdb13EventListenerEE", !28, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE", !73, i64 0}
!75 = !{!"p1 _ZTSN7rocksdb22FileChecksumGenFactoryE", !28, i64 0}
!76 = !{!"_ZTSSt5arrayImLm1EE", !24, i64 0}
!77 = !{!"_ZTSN7rocksdb12SmallEnumSetINS_8FileTypeELS1_10EEE", !76, i64 0}
!78 = !{!"p1 _ZTSN7rocksdb8IOTracerE", !28, i64 0}
!79 = !{!"_ZTSSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EE", !78, i64 0, !37, i64 8}
!80 = !{!"_ZTSSt10shared_ptrIN7rocksdb8IOTracerEE", !79, i64 0}
!81 = !{!"p1 _ZTSN7rocksdb6LoggerE", !28, i64 0}
!82 = !{!"p1 _ZTSSt10unique_ptrIN7rocksdb24BlobFilePartitionManager9PartitionESt14default_deleteIS2_EE", !28, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN7rocksdb24BlobFilePartitionManager9PartitionESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!84 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN7rocksdb24BlobFilePartitionManager9PartitionESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !83, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN7rocksdb24BlobFilePartitionManager9PartitionESt14default_deleteIS3_EESaIS6_EE", !84, i64 0}
!86 = !{!"_ZTSSt6vectorISt10unique_ptrIN7rocksdb24BlobFilePartitionManager9PartitionESt14default_deleteIS3_EESaIS6_EE", !85, i64 0}
!87 = !{!"_ZTSN7rocksdb4port5MutexE", !24, i64 0}
!88 = !{!"p1 _ZTSN7rocksdb24BlobFilePartitionManager10SealedFileE", !28, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb24BlobFilePartitionManager10SealedFileESaIS2_EE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!90 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb24BlobFilePartitionManager10SealedFileESaIS2_EE12_Vector_implE", !89, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseIN7rocksdb24BlobFilePartitionManager10SealedFileESaIS2_EE", !90, i64 0}
!92 = !{!"_ZTSSt6vectorIN7rocksdb24BlobFilePartitionManager10SealedFileESaIS2_EE", !91, i64 0}
!93 = !{!"p2 _ZTSN7rocksdb24BlobFilePartitionManager15GenerationBatchE", !52, i64 0}
!94 = !{!"p1 _ZTSN7rocksdb24BlobFilePartitionManager15GenerationBatchE", !28, i64 0}
!95 = !{!"_ZTSSt15_Deque_iteratorIN7rocksdb24BlobFilePartitionManager15GenerationBatchERS2_PS2_E", !94, i64 0, !94, i64 8, !94, i64 16, !93, i64 24}
!96 = !{!"_ZTSNSt11_Deque_baseIN7rocksdb24BlobFilePartitionManager15GenerationBatchESaIS2_EE16_Deque_impl_dataE", !93, i64 0, !31, i64 8, !95, i64 16, !95, i64 48}
!97 = !{!"_ZTSNSt11_Deque_baseIN7rocksdb24BlobFilePartitionManager15GenerationBatchESaIS2_EE11_Deque_implE", !96, i64 0}
!98 = !{!"_ZTSSt11_Deque_baseIN7rocksdb24BlobFilePartitionManager15GenerationBatchESaIS2_EE", !97, i64 0}
!99 = !{!"_ZTSSt5dequeIN7rocksdb24BlobFilePartitionManager15GenerationBatchESaIS2_EE", !98, i64 0}
!100 = !{!"_ZTSSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !53, i64 0, !31, i64 8, !55, i64 16, !31, i64 24, !57, i64 32, !54, i64 48}
!101 = !{!"_ZTSSt13unordered_mapImjSt4hashImESt8equal_toImESaISt4pairIKmjEEE", !100, i64 0}
!102 = !{!"_ZTSN7rocksdb4port7RWMutexE", !24, i64 0}
!103 = !{!"_ZTSN7rocksdb24BlobFilePartitionManagerE", !25, i64 0, !39, i64 8, !41, i64 24, !42, i64 56, !43, i64 64, !44, i64 72, !67, i64 80, !32, i64 296, !32, i64 328, !31, i64 360, !45, i64 368, !68, i64 376, !69, i64 384, !74, i64 392, !75, i64 416, !77, i64 424, !80, i64 432, !32, i64 448, !32, i64 480, !81, i64 512, !86, i64 520, !87, i64 544, !92, i64 584, !99, i64 608, !101, i64 688, !101, i64 744, !102, i64 800}
!104 = !{!103, !25, i64 0}
!105 = !{!38, !35, i64 0}
!106 = !{!37, !36, i64 0}
!107 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !25, i64 8, !25, i64 12}
!108 = !{!107, !25, i64 8}
!109 = !{!107, !25, i64 12}
!110 = !{!"vtable pointer", !23, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!"_ZTSSt13__atomic_baseImE", !31, i64 0}
!113 = !{!112, !31, i64 0}
!114 = !{!41, !28, i64 24}
!115 = !{!40, !28, i64 16}
!116 = !{i64 0, i64 16, !34}
!117 = !{!103, !42, i64 56}
!118 = !{!30, !29, i64 0}
!119 = !{!32, !31, i64 8}
!120 = !{!103, !31, i64 360}
!121 = !{!103, !68, i64 376}
!122 = !{!103, !69, i64 384}
!123 = !{!71, !70, i64 8}
!124 = !{!71, !70, i64 0}
!125 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!126 = !{!71, !70, i64 16}
!127 = !{!70, !70, i64 0}
!128 = !{!28, !28, i64 0}
!129 = !{!25, !25, i64 0}
!130 = !{!"llvm.loop.mustprogress"}
!131 = !{!103, !81, i64 512}
!132 = !{!45, !45, i64 0}
!133 = !{i8 0, i8 2}
!134 = !{}
!135 = !{!100, !53, i64 0}
!136 = !{!100, !31, i64 8}
!137 = !{!57, !56, i64 0}
!138 = !{!83, !82, i64 16}
!139 = !{!83, !82, i64 0}
!140 = !{!83, !82, i64 8}
!141 = !{!"p1 _ZTSN7rocksdb24BlobFilePartitionManager9PartitionE", !28, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{!"llvm.loop.isvectorized", i32 1}
!144 = !{!"llvm.loop.unroll.runtime.disable"}
!145 = !{!31, !31, i64 0}
!146 = !{!58, !53, i64 0}
!147 = !{!58, !31, i64 8}
!148 = !{!55, !54, i64 0}
!149 = !{!58, !54, i64 48}
!150 = !{!67, !62, i64 136}
!151 = !{!67, !63, i64 137}
!152 = !{!100, !54, i64 16}
!153 = !{!96, !93, i64 0}
!154 = !{!96, !93, i64 40}
!155 = !{!96, !93, i64 72}
!156 = !{!94, !94, i64 0}
!157 = !{!96, !31, i64 8}
!158 = !{!89, !88, i64 0}
!159 = !{!89, !88, i64 8}
end_hunk_1
