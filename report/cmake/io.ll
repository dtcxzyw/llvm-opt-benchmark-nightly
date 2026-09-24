Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/io?download=true
inline.NumInlined: 584
inline.NumDeleted: 299
begin_hunk_0_@_ZNSt5dequeIhSaIhEE17_M_reallocate_mapEmb:bb.a
_ZSt4copyIPPhS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !71
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !76
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #24
  store ptr %i.aq, ptr %0, align 8, !tbaa !71
  store i64 %i.am, ptr %i.k, align 8, !tbaa !76
  br label %_ZSt4copyIPPhS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPhS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPhS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPhS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !79
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !74   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !79
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !74 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !81
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !82
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_14FileESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_14FileESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(113) %i.a) #23, !inline_history !126
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_14FileESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_14FileESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_14FileESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_14FileD1Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) initializes((0, 16)) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-48, 48) (i8, ptr @_ZTVN12_GLOBAL__N_14FileE, i64 48), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN12_GLOBAL__N_14FileE, i64 144), ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !55, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN12_GLOBAL__N_14FileD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = atomicrmw xchg ptr %i.e, i8 1 seq_cst, align 1
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %_ZN12_GLOBAL__N_14FileD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call i32 @fclose(ptr noundef %i.i), !inline_history !127 ; 0 uses
  br label %_ZN12_GLOBAL__N_14FileD2Ev.exit

_ZN12_GLOBAL__N_14FileD2Ev.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_14FileD0Ev(ptr noundef nonnull align 8 dereferenceable(113) initializes((0, 16)) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-48, 48) (i8, ptr @_ZTVN12_GLOBAL__N_14FileE, i64 48), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN12_GLOBAL__N_14FileE, i64 144), ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !55, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN12_GLOBAL__N_14FileD1Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = atomicrmw xchg ptr %i.e, i8 1 seq_cst, align 1
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %_ZN12_GLOBAL__N_14FileD1Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call i32 @fclose(ptr noundef %i.i), !inline_history !6 ; 0 uses
  br label %_ZN12_GLOBAL__N_14FileD1Ev.exit

_ZN12_GLOBAL__N_14FileD1Ev.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #24
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_14File6isOpenEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) %0) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_14File5closeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !55, !range !77, !noundef !78
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = atomicrmw xchg ptr %i.d, i8 1 seq_cst, align 1
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = tail call i32 @fclose(ptr noundef %i.h)  ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN12_GLOBAL__N_14File4readEPvm(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not1820.not = icmp eq i64 %2, 0
  br i1 %.not1820.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #25
  unreachable

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %.01421 = phi i64 [ %i.h, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ 0, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader ] ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = tail call i32 @fgetc(ptr noundef %i.d)   ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %.lr.ph
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.01421
  store i8 %i.f, ptr %i.g, align 1, !tbaa !26
  %i.h = add nuw i64 %.01421, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %2
  br i1 %exitcond.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit, label %.lr.ph, !llvm.loop !128

_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit:   ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %.014.lcssa.ph = phi i64 [ %2, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %.01421, %.lr.ph ]
  %3 = tail call i64 @llvm.umin.i64(i64 %.014.lcssa.ph, i64 %2)
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader
  %.014.lcssa = phi i64 [ 0, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader ], [ %3, %_ZNSt11unique_lockISt5mutexED2Ev.exit.loopexit ]
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  ret i64 %.014.lcssa
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_14File5writeEPKvm(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %i.d)
  %i.f = icmp eq i64 %i.e, %2                     ; 2 uses
  br i1 %i.f, label %bb.c, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.h = tail call i32 @fflush(ptr noundef %i.g)  ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.c, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define internal void @_ZThn8_N12_GLOBAL__N_14FileD1Ev(ptr nofree noundef captures(none) initializes((-8, 8)) %0) unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds nuw inrange(-48, 48) (i8, ptr @_ZTVN12_GLOBAL__N_14FileE, i64 48), ptr %i.a, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN12_GLOBAL__N_14FileE, i64 144), ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !55, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN12_GLOBAL__N_14FileD1Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = atomicrmw xchg ptr %i.e, i8 1 seq_cst, align 1
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %_ZN12_GLOBAL__N_14FileD1Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call i32 @fclose(ptr noundef %i.i), !inline_history !6 ; 0 uses
  br label %_ZN12_GLOBAL__N_14FileD1Ev.exit

_ZN12_GLOBAL__N_14FileD1Ev.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_ZThn8_N12_GLOBAL__N_14FileD0Ev(ptr noundef initializes((-8, 8)) %0) unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-48, 48) (i8, ptr @_ZTVN12_GLOBAL__N_14FileE, i64 48), ptr %i.a, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN12_GLOBAL__N_14FileE, i64 144), ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !55, !range !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN12_GLOBAL__N_14FileD0Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = atomicrmw xchg ptr %i.e, i8 1 seq_cst, align 1
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %_ZN12_GLOBAL__N_14FileD0Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call i32 @fclose(ptr noundef %i.i), !inline_history !129 ; 0 uses
  br label %_ZN12_GLOBAL__N_14FileD0Ev.exit

_ZN12_GLOBAL__N_14FileD0Ev.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(113) %i.a, i64 noundef 120) #24, !inline_history !130
  ret void
}

; Function Attrs: uwtable
define internal noundef zeroext i1 @_ZThn8_N12_GLOBAL__N_14File5writeEPKvm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = tail call i64 @fwrite(ptr noundef readonly %1, i64 noundef 1, i64 noundef %2, ptr noundef %i.d)
  %i.f = icmp eq i64 %i.e, %2                     ; 2 uses
  br i1 %i.f, label %bb.c, label %_ZN12_GLOBAL__N_14File5writeEPKvm.exit

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.h = tail call i32 @fflush(ptr noundef %i.g)  ; 0 uses
  br label %_ZN12_GLOBAL__N_14File5writeEPKvm.exit

_ZN12_GLOBAL__N_14File5writeEPKvm.exit:           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, %bb.c
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  ret i1 %i.f
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_19ReaderSpyESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_19ReaderSpyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #23, !inline_history !131
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_19ReaderSpyESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_19ReaderSpyESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_19ReaderSpyESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_19ReaderSpyD1Ev(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-48, 40) (i8, ptr @_ZTVN12_GLOBAL__N_19ReaderSpyE, i64 48), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19WriterSpyD1Ev:bb.a

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN3dap6WriterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.z, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !18
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23, !inline_history !137
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23, !inline_history !137
  br label %_ZN12_GLOBAL__N_19WriterSpyD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i3.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i5.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.an, label %bb.m, label %_ZN12_GLOBAL__N_19WriterSpyD2Ev.exit, !prof !70

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #23, !inline_history !136
  br label %_ZN12_GLOBAL__N_19WriterSpyD2Ev.exit

_ZN12_GLOBAL__N_19WriterSpyD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN3dap6WriterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_19WriterSpyD0Ev(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #12 align 2 {
bb.a:
  tail call void @_ZN12_GLOBAL__N_19WriterSpyD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_19WriterSpy6isOpenEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr i8, ptr %i.c, i64 -48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_19WriterSpy5closeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr i8, ptr %i.c, i64 -48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_19WriterSpy5writeEPKvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %1, i64 noundef %2) ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !57
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !61   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.l, ptr %i.a, align 8, !tbaa !58
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !60
  %i.o = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.o, ptr %i.i, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.p = phi ptr [ %i.n, %.noexc.i ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !26
  store i8 %i.q, ptr %i.p, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.r = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !61
  %i.t = load ptr, ptr %3, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.v = load i64, ptr %i.s, align 8, !tbaa !61
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.v, i64 noundef 0, ptr noundef %1, i64 noundef %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67   ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !60
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !61
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.z, i64 noundef %i.aa)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit
  %i.af = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.i
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !26
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendIPKcvEERS4_T_S9_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.i
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.am = load i64, ptr %i.i, align 8, !tbaa !26
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.aj

bb.g:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %i.g
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{ptr @_ZN12_GLOBAL__N_12RWD1Ev, null, ptr @_ZNSt12__shared_ptrIN3dap6WriterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZN12_GLOBAL__N_12RWD1Ev, null}
!2 = distinct !{ptr @_ZN12_GLOBAL__N_12RWD1Ev, null, ptr @_ZNSt12__shared_ptrIN3dap6ReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{null, null}
!4 = distinct !{!4, !75}
!5 = distinct !{ptr @_ZN12_GLOBAL__N_14PipeD1Ev, null}
!6 = distinct !{ptr @_ZN12_GLOBAL__N_14FileD1Ev, null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 8, !13, i64 12}
!17 = !{!16, !13, i64 8}
!18 = !{!16, !13, i64 12}
!19 = !{!"vtable pointer", !11, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"any pointer", !12, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!23 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!21, !21, i64 0}
!26 = !{!12, !12, i64 0}
!27 = !{!13, !13, i64 0}
!28 = !{!"p1 _ZTSN3dap12ReaderWriterE", !21, i64 0}
!29 = !{!"_ZTSSt12__shared_ptrIN3dap12ReaderWriterELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !23, i64 8}
!30 = !{!29, !28, i64 0}
!31 = !{!"_ZTSN3dap6ReaderE"}
!32 = !{!"_ZTSN3dap6WriterE"}
!33 = !{!"_ZTSN3dap12ReaderWriterE", !31, i64 0, !32, i64 8}
!34 = !{!"_ZTSSt12__mutex_base", !12, i64 0}
!35 = !{!"_ZTSSt5mutex", !34, i64 0}
!36 = !{!"_ZTSSt9__condvar", !12, i64 0}
!37 = !{!"_ZTSSt18condition_variable", !36, i64 0}
!38 = !{!"any p2 pointer", !21, i64 0}
!39 = !{!"p2 omnipotent char", !38, i64 0}
!40 = !{!"long", !12, i64 0}
!41 = !{!"p1 omnipotent char", !21, i64 0}
!42 = !{!"_ZTSSt15_Deque_iteratorIhRhPhE", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24}
!43 = !{!"_ZTSNSt11_Deque_baseIhSaIhEE16_Deque_impl_dataE", !39, i64 0, !40, i64 8, !42, i64 16, !42, i64 48}
!44 = !{!"_ZTSNSt11_Deque_baseIhSaIhEE11_Deque_implE", !43, i64 0}
!45 = !{!"_ZTSSt11_Deque_baseIhSaIhEE", !44, i64 0}
!46 = !{!"_ZTSSt5dequeIhSaIhEE", !45, i64 0}
!47 = !{!"bool", !12, i64 0}
!48 = !{!"_ZTSN12_GLOBAL__N_14PipeE", !33, i64 0, !35, i64 16, !37, i64 56, !46, i64 104, !47, i64 184}
!49 = !{!48, !47, i64 184}
!50 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!51 = !{!"_ZTSSt13__atomic_baseIbE", !47, i64 0}
!52 = !{!"_ZTSSt6atomicIbE", !51, i64 0}
!53 = !{!"_ZTSN12_GLOBAL__N_14FileE", !33, i64 0, !50, i64 16, !47, i64 24, !35, i64 32, !35, i64 72, !52, i64 112}
!54 = !{!53, !50, i64 16}
!55 = !{!53, !47, i64 24}
!56 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !41, i64 0}
!57 = !{!56, !41, i64 0}
!58 = !{!40, !40, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !56, i64 0, !40, i64 8, !12, i64 16}
!60 = !{!59, !41, i64 0}
!61 = !{!59, !40, i64 8}
!62 = !{!"p1 _ZTSN3dap6ReaderE", !21, i64 0}
!63 = !{!"_ZTSSt12__shared_ptrIN3dap6ReaderELN9__gnu_cxx12_Lock_policyE2EE", !62, i64 0, !23, i64 8}
!64 = !{!63, !62, i64 0}
!65 = !{!"p1 _ZTSN3dap6WriterE", !21, i64 0}
!66 = !{!"_ZTSSt12__shared_ptrIN3dap6WriterELN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0, !23, i64 8}
!67 = !{!66, !65, i64 0}
!68 = !{!"_ZTSSt9type_info", !41, i64 8}
!69 = !{!68, !41, i64 8}
!70 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!71 = !{!43, !39, i64 0}
!72 = !{!43, !39, i64 40}
!73 = !{!43, !39, i64 72}
!74 = !{!41, !41, i64 0}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!43, !40, i64 8}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!42, !39, i64 24}
!80 = !{!42, !41, i64 0}
!81 = !{!42, !41, i64 8}
!82 = !{!42, !41, i64 16}
!83 = !{!43, !41, i64 16}
!84 = !{!43, !41, i64 48}
!85 = distinct !{!85, !"_ZSt11make_sharedIN12_GLOBAL__N_12RWEJRKSt10shared_ptrIN3dap6ReaderEERKS2_INS3_6WriterEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_"}
!86 = distinct !{!86, !85, !"_ZSt11make_sharedIN12_GLOBAL__N_12RWEJRKSt10shared_ptrIN3dap6ReaderEERKS2_INS3_6WriterEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_: argument 0"}
!87 = !{!86}
!88 = distinct !{!88, !"_ZSt11make_sharedIN12_GLOBAL__N_14PipeEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!89 = distinct !{!89, !88, !"_ZSt11make_sharedIN12_GLOBAL__N_14PipeEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!90 = !{!89}
!91 = distinct !{!91, !"_ZSt11make_sharedIN12_GLOBAL__N_14FileEJRP8_IO_FILERbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!92 = distinct !{!92, !91, !"_ZSt11make_sharedIN12_GLOBAL__N_14FileEJRP8_IO_FILERbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!93 = !{!92}
!94 = distinct !{!94, !"_ZSt11make_sharedIN12_GLOBAL__N_14FileEJRP8_IO_FILEbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_"}
!95 = distinct !{!95, !94, !"_ZSt11make_sharedIN12_GLOBAL__N_14FileEJRP8_IO_FILEbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_: argument 0"}
!96 = !{!95}
!97 = distinct !{!97, !"_ZSt11make_sharedIN12_GLOBAL__N_19ReaderSpyEJRKSt10shared_ptrIN3dap6ReaderEERKS2_INS3_6WriterEERPKcEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_"}
!98 = distinct !{!98, !97, !"_ZSt11make_sharedIN12_GLOBAL__N_19ReaderSpyEJRKSt10shared_ptrIN3dap6ReaderEERKS2_INS3_6WriterEERPKcEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESG_E4typeEEDpOT0_: argument 0"}
!99 = !{!98}
!100 = distinct !{!100, !"_ZSt11make_sharedIN12_GLOBAL__N_19WriterSpyEJRKSt10shared_ptrIN3dap6WriterEES7_RPKcEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!101 = distinct !{!101, !100, !"_ZSt11make_sharedIN12_GLOBAL__N_19WriterSpyEJRKSt10shared_ptrIN3dap6WriterEES7_RPKcEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!102 = !{!101}
!103 = distinct !{null}
!104 = distinct !{null}
!105 = distinct !{null, ptr @_ZNSt12__shared_ptrIN3dap6WriterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!106 = distinct !{null}
!107 = distinct !{null, ptr @_ZNSt12__shared_ptrIN3dap6ReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!108 = !{ptr @_ZN12_GLOBAL__N_12RW5writeEPKvm}
!109 = distinct !{null}
!110 = distinct !{null}
!111 = distinct !{!111, !75}
!112 = distinct !{!112, !75}
!113 = distinct !{!113, !75}
!114 = !{!"p1 _ZTSSt5mutex", !21, i64 0}
!115 = !{!"_ZTSSt11unique_lockISt5mutexE", !114, i64 0, !47, i64 8}
!116 = !{!115, !114, i64 0}
!117 = !{!115, !47, i64 8}
!118 = !{!43, !41, i64 32}
!119 = !{!43, !41, i64 24}
!120 = distinct !{!120, !75}
!121 = !{!43, !41, i64 64}
!122 = distinct !{ptr @_ZN12_GLOBAL__N_14PipeD0Ev, ptr @_ZN12_GLOBAL__N_14PipeD1Ev, null}
!123 = !{ptr @_ZN12_GLOBAL__N_14PipeD0Ev}
!124 = distinct !{!124, !75}
!125 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!126 = distinct !{null}
!127 = distinct !{null}
!128 = distinct !{!128, !75}
!129 = distinct !{ptr @_ZN12_GLOBAL__N_14FileD0Ev, ptr @_ZN12_GLOBAL__N_14FileD1Ev, null}
!130 = !{ptr @_ZN12_GLOBAL__N_14FileD0Ev}
!131 = distinct !{null}
!132 = distinct !{null}
!133 = distinct !{null, ptr @_ZNSt12__shared_ptrIN3dap6WriterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!134 = distinct !{null, ptr @_ZNSt12__shared_ptrIN3dap6ReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!135 = distinct !{null}
!136 = distinct !{null}
!137 = distinct !{null, ptr @_ZNSt12__shared_ptrIN3dap6WriterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
end_hunk_1
