Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/main?download=true
inline.NumInlined: 2325
inline.NumDeleted: 1332
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE31has_other_live_sentinels_lockedEv:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !61 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.bt, ptr %4, align 8, !tbaa !60, !alias.scope !290
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !65
  store i64 %i.ca, ptr %i.y, align 8, !tbaa !65, !alias.scope !290
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !61
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cb = phi i64 [ %i.bx, %bb.s ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.cb, ptr %i.z, align 8, !tbaa !61, !alias.scope !290
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !60
  store i64 0, ptr %i.cc, align 8, !tbaa !61
  store i8 0, ptr %i.bu, align 8, !tbaa !65
  %i.cd = load ptr, ptr %5, align 8, !tbaa !60    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.w
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  %i.cf = load i64, ptr %i.w, align 8, !tbaa !65
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ch = load ptr, ptr %4, align 8, !tbaa !60
  %i.ci = call i32 @unlink(ptr noundef %i.ch) #25 ; 0 uses
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !133 ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load atomic i32, ptr %i.ck monotonic, align 4 ; 2 uses
  %.old1.not.i = icmp eq i32 %i.cl, 0
  br i1 %.old1.not.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %.0.i26 = phi i32 [ %i.cr, %.preheader.i ], [ %i.cl, %bb.t ] ; 2 uses
  %i.cm = load ptr, ptr %i.aa, align 8, !tbaa !133
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = add i32 %.0.i26, -1
  %i.cp = cmpxchg weak ptr %i.cn, i32 %.0.i26, i32 %i.co acq_rel monotonic, align 4 ; 2 uses
  %i.cq = extractvalue { i32, i1 } %i.cp, 1
  %i.cr = extractvalue { i32, i1 } %i.cp, 0       ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  %or.cond.i = select i1 %i.cq, i1 true, i1 %i.cs
  br i1 %or.cond.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit, label %.preheader.i, !llvm.loop !6

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit: ; preds = %.preheader.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.t
  %i.ct = load ptr, ptr %4, align 8, !tbaa !60    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.y
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit
  %i.cv = load i64, ptr %i.y, align 8, !tbaa !65
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit.thread

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit.thread: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %bb.o
  %i.cx = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ false, %bb.o ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ true, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit ], [ true, %bb.q ]
  %.2 = phi i1 [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ %.0, %bb.o ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ true, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cy = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.u
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit.thread
  %i.da = load i64, ptr %i.u, align 8, !tbaa !65
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.213 = phi i1 [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ]
  %.3 = phi i1 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  %i.dc = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.s
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.u
  %i.de = load i64, ptr %i.s, align 8, !tbaa !65
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.213, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34
  %.445 = phi i1 [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34 ], [ %.0, %bb.e ]
  %i.dg = call i32 @closedir(ptr noundef nonnull %i.d) ; 0 uses
  %i.dh = load ptr, ptr %1, align 8, !tbaa !60    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.i
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.thread
  %i.dj = load i64, ptr %i.i, align 8, !tbaa !65
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.015 = phi i1 [ %.445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ false, %bb.a ]
  ret i1 %.015
}

declare i32 @shm_unlink(ptr noundef) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @flock(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_consistent(ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #16

declare ptr @readdir(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #16

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.134, align 1            ; 3 uses
  %3 = alloca %class.anon.134, align 1            ; 3 uses
  %4 = alloca %"class.std::unique_ptr.180", align 8 ; 5 uses
  %5 = alloca %"class.std::thread", align 8       ; 6 uses
  %6 = alloca %class.anon.134, align 1            ; 3 uses
  %7 = alloca %class.anon.178, align 8            ; 5 uses
  %8 = alloca %"struct.Stockfish::SystemWideSharedConstant", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 152
  %i.f = load i8, ptr %i.e, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i, label %bb.b, !prof !89

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(160) %.05.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !86
  br label %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit

_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !71      ; 5 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %12 = load i8, ptr %11, align 8, !tbaa !147, !range !121, !noundef !122
  %13 = trunc nuw i8 %12 to i1
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %10, align 8
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %14 = icmp ugt i64 %i.m, 48
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit.thread, label %bb.h

_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit.thread: ; preds = %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %0, ptr %7, align 8, !tbaa !151
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.n, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %5, align 8, !tbaa !294
  %i.o = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEEE, i64 16), ptr %i.o, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %10, ptr %i.p, align 8, !tbaa !153
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %7, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !154
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !44
  store ptr %i.o, ptr %4, align 8, !tbaa !296
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 %4, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #25
  %i.q = load ptr, ptr %4, align 8, !tbaa !296    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS1_28LazyNumaReplicatedSystemWideINS1_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS7_St14default_deleteIS7_EEEUlvE_EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit.thread
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #25, !inline_history !291
  br label %_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS1_28LazyNumaReplicatedSystemWideINS1_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS7_St14default_deleteIS7_EEEUlvE_EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i

_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS1_28LazyNumaReplicatedSystemWideINS1_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS7_St14default_deleteIS7_EEEUlvE_EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i, %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #25
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %5, align 8, !tbaa !44
  %.not.i.i6 = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i6, label %_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS_28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS5_St14default_deleteIS5_EEEUlvE_EEvmOT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS1_28LazyNumaReplicatedSystemWideINS1_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS7_St14default_deleteIS7_EEEUlvE_EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i
  call void @_ZSt9terminatev() #29
  unreachable

_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS_28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS5_St14default_deleteIS5_EEEUlvE_EEvmOT_.exit: ; preds = %_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS1_28LazyNumaReplicatedSystemWideINS1_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS7_St14default_deleteIS7_EEEUlvE_EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.v = load ptr, ptr %10, align 8, !tbaa !106
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 48                  ; 4 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !86  ; 3 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 160               ; 3 uses
  %i.ag = icmp ugt i64 %i.z, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS_28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS5_St14default_deleteIS5_EEEUlvE_EEvmOT_.exit
  %i.ah = sub nuw nsw i64 %i.z, %i.af
  call void @_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ah)
  br label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE6resizeEm.exit

bb.e:                                             ; preds = %_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS_28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS5_St14default_deleteIS5_EEEUlvE_EEvmOT_.exit
  %i.ai = icmp ult i64 %i.z, %i.af
  br i1 %i.ai, label %bb.f, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw [160 x i8], ptr %i.ab, i64 %i.z ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.aa, %i.aj
  br i1 %.not.i.i7, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %bb.f, %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11
  %.05.i.i.i.i9 = phi ptr [ %i.am, %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11 ], [ %i.aj, %bb.f ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i9, i64 152
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i.i10 = icmp eq i8 %i.al, -1
  br i1 %.not.i.i.i.i.i.i.i.i10, label %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11, label %bb.g, !prof !89

bb.g:                                             ; preds = %.lr.ph.i.i.i.i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(160) %.05.i.i.i.i9)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11

_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11: ; preds = %bb.g, %.lr.ph.i.i.i.i8
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i9, i64 160 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.am, %i.aa
  br i1 %.not.i.i.i.i12, label %_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i13, label %.lr.ph.i.i.i.i8, !llvm.loop !1

_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i13: ; preds = %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !86
  br label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE6resizeEm.exit

bb.h:                                             ; preds = %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.an = load ptr, ptr %1, align 8, !tbaa !114
  %i.ao = call noundef i64 @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE17get_discriminatorEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 0)
  call void @_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2ERKS3_m(ptr noundef nonnull align 8 dereferenceable(160) %8, ptr noundef nonnull align 64 dereferenceable(137849344) %i.an, i64 noundef %i.ao)
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !86  ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !91
  %.not.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 152 ; 2 uses
  store i8 -1, ptr %i.as, align 8, !tbaa !88
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 152 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !88  ; 3 uses
  switch i8 %i.au, label %bb.m [
    i8 0, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i
    i8 1, label %bb.j
    i8 2, label %bb.l
    i8 -1, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 144 ; 2 uses
  store i8 0, ptr %i.aw, align 8, !tbaa !120
  %i.ax = load i8, ptr %i.av, align 8, !tbaa !120, !range !121, !noundef !122
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(160) %i.ap, ptr noundef nonnull align 8 dereferenceable(160) %8) #25
  store i8 1, ptr %i.aw, align 8, !tbaa !120
  %.pre.i.i.i.i.i.i.i = load i8, ptr %i.at, align 8, !tbaa !88
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !86
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i

bb.l:                                             ; preds = %bb.i
  %i.az = load i64, ptr %8, align 8, !tbaa !114
  store i64 %i.az, ptr %i.ap, align 8, !tbaa !114
  store ptr null, ptr %8, align 8, !tbaa !114
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i

bb.m:                                             ; preds = %bb.i
  unreachable

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.i
  %i.ba = phi ptr [ %i.ap, %bb.i ], [ %i.ap, %bb.i ], [ %i.ap, %bb.j ], [ %.pre.i, %bb.k ], [ %i.ap, %bb.l ]
  %i.bb = phi i8 [ %i.au, %bb.i ], [ %i.au, %bb.i ], [ 1, %bb.j ], [ %.pre.i.i.i.i.i.i.i, %bb.k ], [ 2, %bb.l ]
  store i8 %i.bb, ptr %i.as, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  store ptr %i.bc, ptr %i.c, align 8, !tbaa !86
  br label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

bb.n:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(160) %8)
  br label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i, %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !88
  %.not.i.i.i14 = icmp eq i8 %i.be, -1
  br i1 %.not.i.i.i14, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEED2Ev.exit, label %bb.o, !prof !89

bb.o:                                             ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(160) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEED2Ev.exit

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEED2Ev.exit: ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i13, %bb.f, %bb.e, %bb.d, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEED2Ev.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE17get_discriminatorEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.Stockfish::NumaConfig", align 8 ; 11 uses
  %3 = alloca %"class.std::variant.202", align 8  ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.c, align 8, !tbaa !156
  call void @_ZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEb(ptr dead_on_unwind nonnull writable sret(%"class.Stockfish::NumaConfig") align 8 %2, ptr noundef nonnull align 8 dereferenceable(9) %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i.i, label %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.k, %bb.a ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.l, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44
  %i.o = icmp ult i64 %i.n, %i.i                  ; 3 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.l
  br i1 %i.p, label %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit.thread, label %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit

_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.q = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %.not = icmp ult i64 %i.i, %i.q
  br i1 %.not, label %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit.thread, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit, %.lr.ph.i.i.i.i7
  %.012.i.i.i.i8 = phi ptr [ %.1.i.i.i.i13, %.lr.ph.i.i.i.i7 ], [ %i.k, %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit ] ; 5 uses
  %.0811.i.i.i.i9 = phi ptr [ %.19.i.i.i.i10, %.lr.ph.i.i.i.i7 ], [ %i.l, %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i8, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44
  %i.t = icmp ult i64 %i.s, %i.i                  ; 4 uses
  %.19.i.i.i.i10 = select i1 %i.t, ptr %.0811.i.i.i.i9, ptr %.012.i.i.i.i8 ; 2 uses
  %.1.in.v.i.i.i.i11 = select i1 %i.t, i64 24, i64 16
  %.1.in.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i8, i64 %.1.in.v.i.i.i.i11
  %.1.i.i.i.i13 = load ptr, ptr %.1.in.i.i.i.i12, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.1.i.i.i.i13, null
  br i1 %.not.i.i.i.i14, label %_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i7, !llvm.loop !8
end_hunk_0
begin_hunk_1_@_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.d, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36
  %i.eh = phi ptr [ %i.aa, %bb.d ], [ %i.ea, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ei = phi ptr [ %i.ab, %bb.d ], [ %i.eb, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ej = phi ptr [ %i.ac, %bb.d ], [ %i.ec, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %.promoted61 = phi ptr [ %i.ad, %bb.d ], [ %.promoted62, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 16 ; 2 uses
  %.not50 = icmp eq ptr %i.ek, %i.j
  br i1 %.not50, label %._crit_edge.loopexit, label %bb.d

bb.ai:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.276", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.279", align 1    ; 3 uses
  %5 = alloca %"class.std::map.267", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.a, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !54
  %i.f = load ptr, ptr %1, align 8, !tbaa !184    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184  ; 2 uses
  %.not85100 = icmp eq ptr %i.f, %i.h
  br i1 %.not85100, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !410
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.j, align 8, !tbaa !50, !alias.scope !410
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !51, !alias.scope !410
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.l, align 8, !tbaa !52, !alias.scope !410
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.m, align 8, !tbaa !53, !alias.scope !410
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, i8 0, i64 17, i1 false), !alias.scope !410
  %.not86120 = icmp eq ptr %i.i, %i.a
  br i1 %.not86120, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.sroa.080.0101 = phi ptr [ %i.ba, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.f, %bb.a ] ; 10 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.t = load i64, ptr %.sroa.080.0101, align 8, !tbaa !44 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %i.w = icmp ult i64 %i.v, %i.t                  ; 3 uses
  %.19.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, label %bb.b, !llvm.loop !402

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.b
  %i.x = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.x, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.y = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %.critedge.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i ], [ %i.a, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %.sroa.080.0101, ptr %3, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aa = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.aa, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !182 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.af = load i64, ptr %.sroa.080.0101, align 8, !tbaa !179
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !179
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 40
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !55
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ag, ptr %i.aq, align 8, !tbaa !170
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 48 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.as, ptr %i.at, align 8, !tbaa !54
  store ptr null, ptr %i.ah, align 8, !tbaa !51
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !52
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !53
  store i64 0, ptr %i.ar, align 8, !tbaa !54
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr null, ptr %i.au, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 0, ptr %i.ax, align 8, !tbaa !54
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

_ZN9Stockfish8L3DomainC2EOS0_.exit.i:             ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.ak, %bb.e ]
  store i32 %.sink.i.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %i.ay, ptr %i.ab, align 8, !tbaa !182
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.g:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.080.0101)
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %_ZN9Stockfish8L3DomainC2EOS0_.exit.i, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 56 ; 2 uses
  %.not85 = icmp eq ptr %i.ba, %i.h
  br i1 %.not85, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge125:                                   ; preds = %._crit_edge118, %._crit_edge
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !51
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.h:                                             ; preds = %.lr.ph124, %._crit_edge118
  %.035122 = phi i64 [ 0, %.lr.ph124 ], [ %.136.lcssa, %._crit_edge118 ] ; 2 uses
  %.sroa.076.0121 = phi ptr [ %i.i, %.lr.ph124 ], [ %i.er, %._crit_edge118 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.076.0121, i64 40 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.076.0121, i64 48 ; 5 uses
  %.pre137 = load ptr, ptr %i.bd, align 8, !tbaa !182
  %.pre138 = load ptr, ptr %i.bc, align 8, !tbaa !185
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge106, %bb.h
  %i.be = phi ptr [ %i.ej, %._crit_edge106 ], [ %.pre138, %bb.h ] ; 3 uses
  %i.bf = phi ptr [ %i.ek, %._crit_edge106 ], [ %.pre137, %bb.h ] ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ugt i64 %i.bi, 56
  br i1 %i.bj, label %.lr.ph105, label %.preheader

._crit_edge106:                                   ; preds = %bb.r
  br i1 %.1, label %bb.i, label %.preheader, !llvm.loop !403

.preheader:                                       ; preds = %bb.i, %._crit_edge106
  %i.bk = phi ptr [ %i.ek, %._crit_edge106 ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bl = phi ptr [ %i.ej, %._crit_edge106 ], [ %i.be, %bb.i ] ; 2 uses
  %.not87114 = icmp eq ptr %i.bl, %i.bk
  br i1 %.not87114, label %._crit_edge118, label %.lr.ph117

.lr.ph105:                                        ; preds = %bb.i, %bb.r
  %i.bm = phi ptr [ %i.ej, %bb.r ], [ %i.be, %bb.i ] ; 4 uses
  %i.bn = phi ptr [ %i.ek, %bb.r ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bo = phi i64 [ %i.el, %bb.r ], [ 1, %bb.i ]  ; 3 uses
  %.0103 = phi i64 [ %i.bo, %bb.r ], [ 0, %bb.i ] ; 2 uses
  %.034102 = phi i1 [ %.1, %bb.r ], [ false, %bb.i ]
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %.0103 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !54
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %i.bo ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !54
  %i.bv = add i64 %i.bu, %i.br
  %.not = icmp ugt i64 %i.bv, %2
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %.lr.ph105
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !52 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %.not21.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not21.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i, %.lr.ph.i43
  %.sroa.013.022.i = phi ptr [ %i.bx, %.lr.ph.i43 ], [ %i.cc, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i ] ; 3 uses
  %i.cc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.013.022.i) #27 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 32 ; 2 uses
  %.02022.i.i = load ptr, ptr %i.bz, align 8, !tbaa !55 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !44 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.l ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !44 ; 2 uses
  %i.ch = icmp ult i64 %i.ce, %i.cg               ; 2 uses
  %.in.v.i.i = select i1 %i.ch, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i44 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i44, label %._crit_edge.i.i, label %bb.l, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.l
  br i1 %i.ch, label %._crit_edge.thread.i.i, label %bb.n

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.k
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.ca, %bb.k ] ; 4 uses
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !52
  %i.cj = icmp eq ptr %.019.lcssa29.i.i, %i.ci
  br i1 %i.cj, label %select.unfold.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i
  %i.ck = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #27
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %.pre.i47 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !44
  %.pre23.i = load i64, ptr %i.cd, align 8, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %i.cl = phi i64 [ %.pre23.i, %bb.m ], [ %i.ce, %._crit_edge.i.i ]
  %i.cm = phi i64 [ %.pre.i47, %bb.m ], [ %i.cg, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.m ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.cn = icmp ult i64 %i.cm, %i.cl
  br i1 %i.cn, label %select.unfold.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

select.unfold.i:                                  ; preds = %bb.n, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.n ] ; 3 uses
  %i.co = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.013.022.i, ptr noundef nonnull align 8 dereferenceable(32) %i.by) #25 ; 2 uses
  %i.cp = load i64, ptr %i.bt, align 8, !tbaa !54
  %i.cq = add i64 %i.cp, -1
  store i64 %i.cq, ptr %i.bt, align 8, !tbaa !54
  %i.cr = icmp eq ptr %.sroa.4.0.i.ph.i, %i.ca
  br i1 %i.cr, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, label %bb.o

bb.o:                                             ; preds = %select.unfold.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !44
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !44
  %i.cw = icmp ult i64 %i.cu, %i.cv
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i: ; preds = %bb.o, %select.unfold.i
  %i.cx = phi i1 [ %i.cw, %bb.o ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cx, ptr noundef nonnull %i.co, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ca) #25
  %i.cy = load i64, ptr %i.bq, align 8, !tbaa !54
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.bq, align 8, !tbaa !54
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, %bb.n
  %.not.i45 = icmp eq ptr %i.cc, %i.by
  br i1 %.not.i45, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, label %bb.k, !llvm.loop !404

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i
  %.pre139 = load ptr, ptr %i.bc, align 8, !tbaa !184
  %.pre140 = load ptr, ptr %i.bd, align 8, !tbaa !184
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, %bb.j
  %i.da = phi ptr [ %.pre140, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bn, %bb.j ] ; 4 uses
  %i.db = phi ptr [ %.pre139, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bm, %bb.j ]
  %i.dc = getelementptr inbounds [56 x i8], ptr %i.db, i64 %.0103 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 112 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dd, %i.da
  br i1 %.not.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.di = udiv exact i64 %i.dg, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ec, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.di, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.pn = phi ptr [ %.0811.i.i.i.i.i.i.i, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dc, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.eb, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 56 ; 2 uses
  %i.dj = load i64, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !179
  store i64 %i.dj, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !179
  %i.dk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 80 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !51
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 72 ; 4 uses
  store ptr null, ptr %i.dl, align 8, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 88 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 96
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !53
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 104 ; 2 uses
  store i64 0, ptr %i.dq, align 8, !tbaa !54
  %i.dr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !50
  store i32 %i.du, ptr %i.dn, align 8, !tbaa !50
  store ptr %i.ds, ptr %i.dl, align 8, !tbaa !51
  %i.dv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.dx = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !55
  store <2 x ptr> %i.dx, ptr %i.do, align 8, !tbaa !55
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dn, ptr %i.dy, align 8, !tbaa !170
  %i.dz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !54
  store i64 %i.ea, ptr %i.dq, align 8, !tbaa !54
  store ptr null, ptr %i.dr, align 8, !tbaa !51
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !52
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !53
  store i64 0, ptr %i.dz, align 8, !tbaa !54
  br label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i

_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.ec = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ed = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !405

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bd, align 8, !tbaa !182
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i
  %i.ee = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.da, %bb.p ], [ %i.da, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit ] ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -56
  store ptr %i.ef, ptr %i.bd, align 8, !tbaa !182
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -48
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 -32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !51
end_hunk_1
