inline.NumInlined: 516
inline.NumDeleted: 274
begin_hunk_0_@pthread_getattr_np
; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_attr_getstack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat15set_thread_nameEPKc(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 (i32, ...) @prctl(i32 noundef 15, ptr noundef %0) #22 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN6hermes8oscompat15thread_cpu_timeEv() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.a = call i32 @clock_gettime(i32 noundef 3, ptr noundef nonnull %0) #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !90
  %i.d = sdiv i64 %i.c, 1000
  %i.e = load i64, ptr %0, align 8, !tbaa !92
  %i.f = mul nsw i64 %i.e, 1000000
  %i.g = add nsw i64 %i.f, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.g, %bb.b ], [ 9223372036854775807, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  ret i64 %.sroa.0.0
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes8oscompat23thread_page_fault_countEPlS1_(ptr noundef writeonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.rusage, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false)
  %i.a = call i32 @getrusage(i32 noundef 1, ptr noundef nonnull %2) #22
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43
  store i64 %i.d, ptr %0, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !43
  store i64 %i.f, ptr %1, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat11thread_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [100 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = tail call i64 @pthread_self() #21
  %i.d = call i32 @pthread_getname_np(i64 noundef %i.c, ptr noundef nonnull %i.b, i64 noundef 100) #22
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @perror(ptr noundef nonnull @.str.8) #26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !41
  store i8 0, ptr %i.e, align 8, !tbaa !43
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !38
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.h, ptr %i.a, align 8, !tbaa !60
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.c, label %._crit_edge.i.i1

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !61
  %i.k = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.k, ptr %i.g, align 8, !tbaa !43
  br label %._crit_edge.i.i1

._crit_edge.i.i1:                                 ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit2
  ]

bb.d:                                             ; preds = %._crit_edge.i.i1
  %i.m = load i8, ptr %i.b, align 16, !tbaa !43
  store i8 %i.m, ptr %i.l, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit2

bb.e:                                             ; preds = %._crit_edge.i.i1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 16 %i.b, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit2: ; preds = %._crit_edge.i.i1, %bb.d, %bb.e
  %i.n = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !41
  %i.p = load ptr, ptr %0, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit2, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_getname_np(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat17sched_getaffinityEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.30") align 8 initializes((0, 12), (16, 28), (32, 40)) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.cpu_set_t, align 8          ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.e = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #22
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.preheader, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.b:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.f = add nsw i32 %.1, 1                       ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !93     ; 2 uses
  %i.i = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = shl nsw i64 %i.k, 3
  %i.m = add nsw i64 %i.l, %i.am                  ; 2 uses
  %i.n = icmp ugt i64 %i.m, %i.g
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sdiv i32 %i.f, 64
  %.sext = sext i32 %i.o to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.sext
  %i.q = and i64 %i.g, -9223372036854775745
  %i.r = icmp ugt i64 %i.q, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.r, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.p, i64 %storemerge.idx.i.i.i.i
  %i.s = and i32 %i.f, 63
  store ptr %storemerge.i.i.i.i, ptr %i.b, align 8
  store i32 %i.s, ptr %i.c, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.d:                                             ; preds = %bb.b
  %i.t = sub nuw i64 %i.g, %i.m
  call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i, i64 noundef %i.t, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

.preheader:                                       ; preds = %bb.a, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %.sroa.2.0.copyload.i11.i = phi i32 [ %.sroa.2.0.copyload.i.i, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ], [ 0, %bb.a ] ; 4 uses
  %i.u = phi ptr [ %.sroa.0.0.copyload.i.i, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ], [ null, %bb.a ] ; 7 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ], [ 0, %bb.a ] ; 4 uses
  %.01114 = phi i32 [ %.1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ], [ -1, %bb.a ]
  %i.v = lshr i64 %indvars.iv, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !60
  %i.y = and i64 %indvars.iv, 63
  %i.z = lshr i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i1                    ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !97
  %.not.i = icmp eq ptr %i.u, %i.ab
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ac = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.ac, ptr %i.c, align 8, !tbaa !96
  %i.ad = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.ad, label %bb.f, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.c, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !93
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.f, %bb.e
  %i.af = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ag = shl nuw i64 1, %i.af                    ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !60
  %i.ai = or i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !60
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.h:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.aj = xor i64 %i.ag, -1
  %i.ak = load i64, ptr %i.u, align 8, !tbaa !60
  %i.al = and i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.u, align 8, !tbaa !60
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.i:                                             ; preds = %.preheader
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.u, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.aa)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8 ; 4 uses
  %.sroa.2.0.copyload.i.i = load i32, ptr %i.c, align 8 ; 3 uses
  %i.am = zext i32 %.sroa.2.0.copyload.i.i to i64 ; 2 uses
  %i.an = add nsw i64 %i.am, -1                   ; 3 uses
  %i.ao = sdiv i64 %i.an, 64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = and i64 %i.an, -9223372036854775745
  %i.ar = icmp ugt i64 %i.aq, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ar, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ap, i64 %storemerge.idx.i.i.i.i.i
  %i.as = and i64 %i.an, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !60
  %i.av = and i64 %i.at, %i.au
  %.not13 = icmp eq i64 %i.av, 0
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %.not13, i32 %.01114, i32 %i.aw ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !100

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes8oscompat12sched_getcpuEv() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @sched_getcpu() #22
  ret i32 %i.a
}

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define hidden noundef i64 @_ZN6hermes8oscompat17cpu_cycle_counterEv() local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @llvm.readcyclecounter()
  ret i64 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i64 @llvm.readcyclecounter() #12

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes8oscompat7set_envEPKcS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @setenv(ptr noundef %0, ptr noundef %1, i32 noundef 1) #22
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind
declare i32 @setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes8oscompat9unset_envEPKc(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @unsetenv(ptr noundef %0) #22
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nofree nounwind
declare noundef i32 @unsetenv(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8oscompat25SigAltStackLeakSuppressorD2Ev(ptr nonnull readnone align 1 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %struct.stack_t, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = call i32 @sigaltstack(ptr noundef null, ptr noundef nonnull %1) #22
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !101
  store ptr %i.c, ptr @_ZN6hermes8oscompat25SigAltStackLeakSuppressor10stackRoot_E, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaltstack(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #1 align 2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !103    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.p = shl nuw nsw i64 %i.m, 5
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !38
  %i.u = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(8) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.u, ptr %i.a, align 8, !tbaa !60
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !61
end_hunk_0
