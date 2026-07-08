inline.NumInlined: 28
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::sys::MemoryBlock" = type { ptr, i64 }

@_ZZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_codeE8PageSize = internal global i64 0, align 8
@_ZGVZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_codeE8PageSize = internal global i64 0, align 8
@_ZZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEjE8PageSize = internal global i64 0, align 8
@_ZGVZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEjE8PageSize = internal global i64 0, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_code(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvh::sys::MemoryBlock", align 8 ; 5 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #8 ; 2 uses
  store i32 0, ptr %3, align 8, !tbaa !3
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.a, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !7
  %i.b = icmp eq i64 %0, 0
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZGVZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_codeE8PageSize acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %switch.lookup, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_codeE8PageSize) #9
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i32 @_ZN4llvh3sys7Process11getPageSizeEv() #9
  %i.g = zext i32 %i.f to i64
  store i64 %i.g, ptr @_ZZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_codeE8PageSize, align 8, !tbaa !11
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_codeE8PageSize) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_codeE8PageSize) #9
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load i64, ptr @_ZZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_codeE8PageSize, align 8, !tbaa !11 ; 6 uses
  %i.j = add i64 %0, -1
  %i.k = add i64 %i.j, %i.i
  %i.l = udiv i64 %i.k, %i.i                      ; 3 uses
  %i.m = tail call noundef range(i32 1, 8) i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 8) ; 2 uses
  %.not33 = icmp eq ptr %1, null
  br i1 %.not33, label %.thread46, label %bb.e

bb.e:                                             ; preds = %switch.lookup
  %i.n = load ptr, ptr %1, align 8, !tbaa !13
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !15
  %i.r = add i64 %i.q, %i.o                       ; 4 uses
  %.not34 = icmp eq i64 %i.r, 0
  br i1 %.not34, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = urem i64 %i.r, %i.i                      ; 2 uses
  %.not35 = icmp eq i64 %i.s, 0
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add i64 %i.r, %i.i
  %i.u = sub i64 %i.t, %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0 = phi i64 [ %i.u, %bb.g ], [ %i.r, %bb.f ], [ 0, %bb.e ]
  %i.v = inttoptr i64 %.0 to ptr
  %i.w = mul i64 %i.l, %i.i
  %i.x = tail call ptr @mmap(ptr noundef %i.v, i64 noundef %i.w, i32 noundef %i.m, i32 noundef 34, i32 noundef -1, i64 noundef 0) #9 ; 2 uses
  %i.y = icmp eq ptr %i.x, inttoptr (i64 -1 to ptr)
  br i1 %i.y, label %bb.i, label %bb.j

.thread46:                                        ; preds = %switch.lookup
  %i.z = mul i64 %i.l, %i.i
  %i.aa = tail call ptr @mmap(ptr noundef null, i64 noundef %i.z, i32 noundef %i.m, i32 noundef 34, i32 noundef -1, i64 noundef 0) #9 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, inttoptr (i64 -1 to ptr)
  br i1 %i.ab, label %.thread48, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call { ptr, i64 } @_ZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_code(i64 noundef %0, ptr noundef null, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  br label %bb.n

.thread48:                                        ; preds = %.thread46
  %i.af = tail call ptr @__errno_location() #8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #8
  store i32 %i.ag, ptr %3, align 8, !tbaa !3
  store ptr %i.ah, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !7
  br label %bb.n

bb.j:                                             ; preds = %.thread46, %bb.h
  %i.ai = phi ptr [ %i.aa, %.thread46 ], [ %i.x, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.ai, ptr %4, align 8, !tbaa !13
  %i.aj = load i64, ptr @_ZZN4llvh3sys6Memory20allocateMappedMemoryEmPKNS0_11MemoryBlockEjRSt10error_codeE8PageSize, align 8, !tbaa !11
  %i.ak = mul i64 %i.aj, %i.l                     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !15
  %i.am = and i32 %2, 67108864
  %.not36 = icmp eq i32 %i.am, 0
  br i1 %.not36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = call { i32, ptr } @_ZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEj(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2) ; 2 uses
  %i.ao = extractvalue { i32, ptr } %i.an, 0      ; 2 uses
  %i.ap = extractvalue { i32, ptr } %i.an, 1      ; 2 uses
  store i32 %i.ao, ptr %3, align 8, !tbaa !3
  store ptr %i.ap, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !7
  %i.aq = icmp ne ptr %i.ap, %i.a
  %i.ar = icmp ne i32 %i.ao, 0
  %.not3.i = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %.not3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.6.0 = phi i64 [ %i.ak, %bb.l ], [ 0, %bb.k ]
  %.sroa.044.0 = phi ptr [ %i.ai, %bb.l ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.i, %.thread48, %bb.m
  %.sroa.6.1 = phi i64 [ %.sroa.6.0, %bb.m ], [ 0, %.thread48 ], [ %i.ae, %bb.i ], [ 0, %bb.a ]
  %.sroa.044.1 = phi ptr [ %.sroa.044.0, %bb.m ], [ null, %.thread48 ], [ %i.ad, %bb.i ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

declare noundef i32 @_ZN4llvh3sys7Process11getPageSizeEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEjE8PageSize acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEjE8PageSize) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZN4llvh3sys7Process11getPageSizeEv() #9
  %i.e = zext i32 %i.d to i64
  store i64 %i.e, ptr @_ZZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEjE8PageSize, align 8, !tbaa !11
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEjE8PageSize) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEjE8PageSize) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #8
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %bb.h, label %switch.lookup

bb.h:                                             ; preds = %bb.g
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #8
  br label %bb.m

switch.lookup:                                    ; preds = %bb.g
  %i.n = tail call noundef range(i32 1, 8) i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 8)
  %i.o = load i64, ptr @_ZZN4llvh3sys6Memory19protectMappedMemoryERKNS0_11MemoryBlockEjE8PageSize, align 8, !tbaa !11 ; 2 uses
  %i.p = sub i64 0, %i.o                          ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.o, -1                         ; 2 uses
  %i.u = add i64 %i.t, %i.s
  %i.v = and i64 %i.u, %i.p                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = add i64 %i.t, %i.x
  %i.z = and i64 %i.y, %i.p
  %i.aa = inttoptr i64 %i.v to ptr
  %i.ab = sub i64 %i.z, %i.v
  %i.ac = tail call i32 @mprotect(ptr noundef %i.aa, i64 noundef %i.ab, i32 noundef %i.n) #9
  %.not17 = icmp eq i32 %i.ac, 0
  br i1 %.not17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %switch.lookup
  %i.ad = tail call ptr @__errno_location() #8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #8
  br label %bb.m

bb.j:                                             ; preds = %switch.lookup
  %i.ag = and i32 %1, 67108864
  %.not16 = icmp eq i32 %i.ag, 0
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %0, align 8, !tbaa !13
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !15
  tail call void @_ZN4llvh3sys27ValgrindDiscardTranslationsEPKvm(ptr noundef %i.ah, i64 noundef %i.ai) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #8
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.h, %bb.f
  %.sroa.5.0 = phi ptr [ %i.l, %bb.f ], [ %i.m, %bb.h ], [ %i.aj, %bb.l ], [ %i.af, %bb.i ]
  %.sroa.0.0 = phi i32 [ 0, %bb.f ], [ 22, %bb.h ], [ 0, %bb.l ], [ %i.ae, %bb.i ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.5.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys6Memory19releaseMappedMemoryERNS0_11MemoryBlockE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @munmap(ptr noundef nonnull %i.a, i64 noundef %i.d) #9
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.4.0 = phi ptr [ %i.f, %bb.c ], [ %i.k, %bb.f ], [ %i.j, %bb.e ]
  %.sroa.0.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ %i.i, %bb.e ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys6Memory26InvalidateInstructionCacheEPKvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvh3sys27ValgrindDiscardTranslationsEPKvm(ptr noundef %0, i64 noundef %1) #9
  ret void
}

declare void @_ZN4llvh3sys27ValgrindDiscardTranslationsEPKvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { nounwind }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSNSt3_V214error_categoryE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14, !9, i64 0}
!14 = !{!"_ZTSN4llvh3sys11MemoryBlockE", !9, i64 0, !12, i64 8}
!15 = !{!14, !12, i64 8}
end_hunk_0
