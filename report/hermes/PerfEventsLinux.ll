Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/PerfEventsLinux?download=true
inline.NumInlined: 43
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes2vm15instrumentation11PerfCounter17endAndInsertStatsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !23
  %i.bi = load ptr, ptr %2, align 8, !tbaa !37
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bc, i64 noundef 0, ptr noundef %i.bi, i64 noundef %i.bh) #9 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvh11raw_ostream5flushEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_.exit
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.bk = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.h
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bm = load i64, ptr %i.h, align 8, !tbaa !25
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi i1 [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.2 = phi i1 [ %.1, %bb.n ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm15instrumentation10PerfEvents5beginEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %struct.perf_event_attr, align 8    ; 24 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = load i32, ptr @_ZN6hermes2vm15instrumentationL8countersE, align 16, !tbaa !19 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false)
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 16), align 16, !tbaa !7
  store i32 %i.g, ptr %0, align 8, !tbaa !12
  store i32 136, ptr %i.b, align 4, !tbaa !16
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 24), align 8, !tbaa !17
  store i64 %i.h, ptr %i.c, align 8, !tbaa !18
  store i64 97, ptr %i.d, align 8
  %i.i = call i64 (i64, ...) @syscall(i64 noundef 298, ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #9
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  store i32 %i.j, ptr @_ZN6hermes2vm15instrumentationL8countersE, align 16, !tbaa !19
  %.not.i = icmp eq i32 %i.j, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.not.i, label %_ZN6hermes2vm15instrumentation11PerfCounter5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ %i.e, %bb.a ]
  %i.l = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.k, i64 noundef 9219, i32 noundef 0) #9 ; 0 uses
  %i.m = load i32, ptr @_ZN6hermes2vm15instrumentationL8countersE, align 16, !tbaa !19
  %i.n = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.m, i64 noundef 9216, i32 noundef 0) #9 ; 0 uses
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 32), align 16, !tbaa !19 ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false)
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 48), align 16, !tbaa !7
  store i32 %i.q, ptr %0, align 8, !tbaa !12
  store i32 136, ptr %i.b, align 4, !tbaa !16
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 56), align 8, !tbaa !17
  store i64 %i.r, ptr %i.c, align 8, !tbaa !18
  store i64 97, ptr %i.d, align 8
  %i.s = call i64 (i64, ...) @syscall(i64 noundef 298, ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #9
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 32), align 16, !tbaa !19
  %.not.i.1 = icmp eq i32 %i.t, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.not.i.1, label %_ZN6hermes2vm15instrumentation11PerfCounter5beginEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i32 [ %i.t, %bb.d ], [ %i.o, %bb.c ]
  %i.v = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.u, i64 noundef 9219, i32 noundef 0) #9 ; 0 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 32), align 16, !tbaa !19
  %i.x = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.w, i64 noundef 9216, i32 noundef 0) #9 ; 0 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 64), align 16, !tbaa !19 ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false)
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 80), align 16, !tbaa !7
  store i32 %i.aa, ptr %0, align 8, !tbaa !12
  store i32 136, ptr %i.b, align 4, !tbaa !16
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 88), align 8, !tbaa !17
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !18
  store i64 97, ptr %i.d, align 8
  %i.ac = call i64 (i64, ...) @syscall(i64 noundef 298, ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #9
  %i.ad = trunc i64 %i.ac to i32                  ; 3 uses
  store i32 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 64), align 16, !tbaa !19
  %.not.i.2 = icmp eq i32 %i.ad, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.not.i.2, label %_ZN6hermes2vm15instrumentation11PerfCounter5beginEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = phi i32 [ %i.ad, %bb.f ], [ %i.y, %bb.e ]
  %i.af = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ae, i64 noundef 9219, i32 noundef 0) #9 ; 0 uses
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 64), align 16, !tbaa !19
  %i.ah = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ag, i64 noundef 9216, i32 noundef 0) #9 ; 0 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 96), align 16, !tbaa !19 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false)
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 112), align 16, !tbaa !7
  store i32 %i.ak, ptr %0, align 8, !tbaa !12
  store i32 136, ptr %i.b, align 4, !tbaa !16
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 120), align 8, !tbaa !17
  store i64 %i.al, ptr %i.c, align 8, !tbaa !18
  store i64 97, ptr %i.d, align 8
  %i.am = call i64 (i64, ...) @syscall(i64 noundef 298, ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #9
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  store i32 %i.an, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 96), align 16, !tbaa !19
  %.not.i.3 = icmp eq i32 %i.an, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.not.i.3, label %_ZN6hermes2vm15instrumentation11PerfCounter5beginEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi i32 [ %i.an, %bb.h ], [ %i.ai, %bb.g ]
  %i.ap = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ao, i64 noundef 9219, i32 noundef 0) #9 ; 0 uses
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 96), align 16, !tbaa !19
  %i.ar = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.aq, i64 noundef 9216, i32 noundef 0) #9 ; 0 uses
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 128), align 16, !tbaa !19 ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i8 0, i64 120, i1 false)
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 144), align 16, !tbaa !7
  store i32 %i.au, ptr %0, align 8, !tbaa !12
  store i32 136, ptr %i.b, align 4, !tbaa !16
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 152), align 8, !tbaa !17
  store i64 %i.av, ptr %i.c, align 8, !tbaa !18
  store i64 97, ptr %i.d, align 8
  %i.aw = call i64 (i64, ...) @syscall(i64 noundef 298, ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #9
  %i.ax = trunc i64 %i.aw to i32                  ; 3 uses
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 128), align 16, !tbaa !19
  %.not.i.4 = icmp eq i32 %i.ax, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.not.i.4, label %_ZN6hermes2vm15instrumentation11PerfCounter5beginEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ay = phi i32 [ %i.ax, %bb.j ], [ %i.as, %bb.i ]
  %i.az = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ay, i64 noundef 9219, i32 noundef 0) #9 ; 0 uses
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 128), align 16, !tbaa !19
  %i.bb = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ba, i64 noundef 9216, i32 noundef 0) #9 ; 0 uses
  br label %_ZN6hermes2vm15instrumentation11PerfCounter5beginEv.exit

_ZN6hermes2vm15instrumentation11PerfCounter5beginEv.exit: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.not.lcssa = phi i1 [ false, %bb.b ], [ true, %bb.k ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.h ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm15instrumentation10PerfEvents17endAndInsertStatsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6hermes2vm15instrumentation11PerfCounter17endAndInsertStatsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6hermes2vm15instrumentationL8countersE, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN6hermes2vm15instrumentation11PerfCounter17endAndInsertStatsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 32), ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN6hermes2vm15instrumentation11PerfCounter17endAndInsertStatsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 64), ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef zeroext i1 @_ZN6hermes2vm15instrumentation11PerfCounter17endAndInsertStatsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 96), ptr noundef nonnull align 8 dereferenceable(32) %0)
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_ZN6hermes2vm15instrumentation11PerfCounter17endAndInsertStatsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN6hermes2vm15instrumentationL8countersE, i64 128), ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ %i.e, %bb.e ], [ false, %bb.c ]
  ret i1 %.lcssa
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 16}
!8 = !{!"_ZTSN6hermes2vm15instrumentation11PerfCounterE", !4, i64 0, !9, i64 8, !4, i64 16, !11, i64 24}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!13, !4, i64 0}
!13 = !{!"_ZTS15perf_event_attr", !4, i64 0, !4, i64 4, !14, i64 8, !5, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 40, !14, i64 40, !14, i64 40, !14, i64 40, !14, i64 40, !14, i64 40, !14, i64 40, !14, i64 41, !14, i64 41, !14, i64 41, !14, i64 41, !14, i64 41, !14, i64 41, !14, i64 41, !14, i64 41, !14, i64 42, !14, i64 42, !14, i64 42, !14, i64 42, !14, i64 42, !14, i64 42, !14, i64 42, !14, i64 43, !14, i64 43, !14, i64 43, !14, i64 43, !14, i64 43, !14, i64 43, !14, i64 43, !14, i64 43, !14, i64 44, !14, i64 44, !14, i64 44, !14, i64 44, !14, i64 44, !14, i64 44, !14, i64 44, !5, i64 48, !4, i64 52, !5, i64 56, !5, i64 64, !14, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !14, i64 96, !4, i64 104, !15, i64 108, !15, i64 110, !4, i64 112, !4, i64 116, !14, i64 120, !14, i64 128}
!14 = !{!"long long", !5, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!13, !4, i64 4}
!17 = !{!8, !11, i64 24}
!18 = !{!13, !14, i64 8}
!19 = !{!8, !4, i64 0}
!20 = !{!11, !11, i64 0}
!21 = !{!22, !9, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!23 = !{!24, !11, i64 8}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !11, i64 8, !5, i64 16}
!25 = !{!5, !5, i64 0}
!26 = !{!27, !28, i64 32}
!27 = !{!"_ZTSN4llvh11raw_ostreamE", !9, i64 8, !9, i64 16, !9, i64 24, !28, i64 32}
!28 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !6, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!33 = !{!8, !9, i64 8}
!34 = !{!27, !9, i64 16}
!35 = !{!27, !9, i64 24}
!36 = !{!27, !9, i64 8}
!37 = !{!24, !9, i64 0}
end_hunk_0
