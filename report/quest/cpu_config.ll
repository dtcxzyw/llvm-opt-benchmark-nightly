Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/cpu_config?download=true
begin_hunk_0_@_Z24cpu_getCurrentNumThreadsv:bb.a
bb.a:
  %i.a = tail call i32 @omp_get_num_threads()
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_Z25getNumPagesToContainArraylx(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sitofp i64 %1 to double
  %i.b = sitofp i64 %0 to double
  %i.c = fdiv double %i.a, %i.b
  %i.d = tail call double @llvm.ceil.f64(double %i.c)
  %i.e = fptosi double %i.d to i64
  ret i64 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: mustprogress uwtable
define noundef i64 @_Z15cpu_getPageSizev() local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12 ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @sysconf(i32 noundef 30) #6 ; 3 uses
  store i64 %i.c, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12
  %i.d = icmp slt i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_Z10isPowerOf2x.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Z27error_gettingPageSizeFailedv()
  %.pr = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12 ; 2 uses
  %i.e = icmp sgt i64 %.pr, 0
  br i1 %i.e, label %_Z10isPowerOf2x.exit, label %_Z10isPowerOf2x.exit.thread

_Z10isPowerOf2x.exit:                             ; preds = %bb.b, %bb.c
  %i.f = phi i64 [ %.pr, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.g = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %i.f)
  %i.h = icmp samesign ult i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %_Z10isPowerOf2x.exit.thread

_Z10isPowerOf2x.exit.thread:                      ; preds = %bb.c, %_Z10isPowerOf2x.exit
  tail call void @_Z26error_pageSizeNotAPowerOf2v()
  %.pre = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %_Z10isPowerOf2x.exit.thread, %_Z10isPowerOf2x.exit
  %i.i = phi i64 [ %.pre, %_Z10isPowerOf2x.exit.thread ], [ %i.f, %_Z10isPowerOf2x.exit ] ; 2 uses
  %i.j = and i64 %i.i, 15
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Z33error_pageSizeNotAMultipleOfQcompv()
  %.pre2 = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi i64 [ %i.a, %bb.a ], [ %.pre2, %bb.e ], [ %i.i, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #5

declare void @_Z27error_gettingPageSizeFailedv() local_unnamed_addr #9

declare void @_Z26error_pageSizeNotAPowerOf2v() local_unnamed_addr #9

declare void @_Z33error_pageSizeNotAMultipleOfQcompv() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_Z14cpu_allocArrayx(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 16) #21
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z18cpu_allocNumaArrayx(i64 noundef %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12 ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %_Z15cpu_getPageSizev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @sysconf(i32 noundef 30) #6 ; 3 uses
  store i64 %i.d, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_Z10isPowerOf2x.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_Z27error_gettingPageSizeFailedv()
  %.pr.i = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12 ; 2 uses
  %i.f = icmp sgt i64 %.pr.i, 0
  br i1 %i.f, label %_Z10isPowerOf2x.exit.i, label %_Z10isPowerOf2x.exit.thread.i

_Z10isPowerOf2x.exit.i:                           ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %.pr.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.i = icmp samesign ult i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %_Z10isPowerOf2x.exit.thread.i

_Z10isPowerOf2x.exit.thread.i:                    ; preds = %_Z10isPowerOf2x.exit.i, %bb.c
  tail call void @_Z26error_pageSizeNotAPowerOf2v()
  %.pre.i = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %_Z10isPowerOf2x.exit.thread.i, %_Z10isPowerOf2x.exit.i
  %i.j = phi i64 [ %.pre.i, %_Z10isPowerOf2x.exit.thread.i ], [ %i.g, %_Z10isPowerOf2x.exit.i ] ; 2 uses
  %i.k = and i64 %i.j, 15
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_Z15cpu_getPageSizev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Z33error_pageSizeNotAMultipleOfQcompv()
  %.pre2.i = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12
  br label %_Z15cpu_getPageSizev.exit

_Z15cpu_getPageSizev.exit:                        ; preds = %bb.a, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.b, %bb.a ], [ %.pre2.i, %bb.e ], [ %i.j, %bb.d ] ; 4 uses
  %i.l = shl i64 %0, 4                            ; 2 uses
  %.not = icmp sgt i64 %i.l, %.0.i
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_Z15cpu_getPageSizev.exit
  %i.m = tail call noalias noundef ptr @calloc(i64 noundef %0, i64 noundef 16) #21
  br label %.loopexit

bb.g:                                             ; preds = %_Z15cpu_getPageSizev.exit
  %i.n = load atomic i8, ptr @_ZGVZ18cpu_allocNumaArrayxE8numNodes acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.k, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ18cpu_allocNumaArrayxE8numNodes) #6
  %.not46 = icmp eq i32 %i.p, 0
  br i1 %.not46, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = invoke i32 @numa_num_configured_nodes()
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  store i32 %i.q, ptr @_ZZ18cpu_allocNumaArrayxE8numNodes, align 4, !tbaa !9
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ18cpu_allocNumaArrayxE8numNodes) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g
  %i.r = load i32, ptr @_ZZ18cpu_allocNumaArrayxE8numNodes, align 4, !tbaa !9
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @_Z31error_gettingNumNumaNodesFailedv()
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ18cpu_allocNumaArrayxE8numNodes) #6
  resume { ptr, i32 } %i.t

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.u = sitofp i64 %i.l to double
  %i.v = sitofp i64 %.0.i to double
  %i.w = fdiv double %i.u, %i.v
  %i.x = tail call double @llvm.ceil.f64(double %i.w)
  %i.y = fptosi double %i.x to i64                ; 3 uses
  %i.z = mul nsw i64 %.0.i, %i.y
  %i.aa = tail call ptr @mmap(ptr noundef null, i64 noundef %i.z, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #6 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, inttoptr (i64 -1 to ptr)
  br i1 %i.ab, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load i32, ptr @_ZZ18cpu_allocNumaArrayxE8numNodes, align 4, !tbaa !9 ; 4 uses
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = sext i32 %i.ac to i64                   ; 2 uses
  %i.af = sdiv i64 %i.y, %i.ae
  %i.ag = srem i64 %i.y, %i.ae
  %i.ah = icmp sgt i32 %i.ac, 0
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.p
  %i.ai = ptrtoint ptr %i.aa to i64
  %i.aj = trunc nsw i64 %i.ag to i32
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.03749 = phi i64 [ %i.ai, %.lr.ph ], [ %i.at, %bb.s ] ; 2 uses
  %.03947 = phi i32 [ %i.ac, %.lr.ph ], [ %.140, %bb.s ]
  %i.ak = sub i32 %.03947, %i.aj                  ; 2 uses
  %i.al = icmp slt i32 %i.ak, 1                   ; 2 uses
  %i.am = zext i1 %i.al to i64
  %i.an = add nsw i64 %i.af, %i.am
  %i.ao = mul nsw i64 %i.an, %.0.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ap = shl nuw i64 1, %indvars.iv
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !12
  %i.aq = inttoptr i64 %.03749 to ptr
  %i.ar = call i64 @mbind(ptr noundef %i.aq, i64 noundef %i.ao, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef 0)
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_Z23error_numaBindingFailedv()
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = add i64 %i.ao, %.03749
  %i.au = load i32, ptr @_ZZ18cpu_allocNumaArrayxE8numNodes, align 4 ; 2 uses
  %i.av = select i1 %i.al, i32 %i.au, i32 0
  %.140 = add nsw i32 %i.av, %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.q, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.s, %bb.p, %bb.n, %bb.o, %bb.f
  %.2 = phi ptr [ %i.m, %bb.f ], [ null, %bb.n ], [ %i.aa, %bb.o ], [ %i.aa, %bb.p ], [ %i.aa, %bb.s ]
  ret ptr %.2
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

declare i32 @numa_num_configured_nodes() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

declare void @_Z31error_gettingNumNumaNodesFailedv() local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @mbind(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

declare void @_Z23error_numaBindingFailedv() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef captures(none) %0) local_unnamed_addr #13 {
bb.a:
  tail call void @free(ptr noundef %0) #6
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_Z20cpu_deallocNumaArrayPSt7complexIdEx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl i64 %1, 4                            ; 2 uses
  %i.c = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12 ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %_Z15cpu_getPageSizev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @sysconf(i32 noundef 30) #6 ; 3 uses
  store i64 %i.e, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_Z10isPowerOf2x.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Z27error_gettingPageSizeFailedv()
  %.pr.i = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12 ; 2 uses
  %i.g = icmp sgt i64 %.pr.i, 0
  br i1 %i.g, label %_Z10isPowerOf2x.exit.i, label %_Z10isPowerOf2x.exit.thread.i

_Z10isPowerOf2x.exit.i:                           ; preds = %bb.d, %bb.c
  %i.h = phi i64 [ %.pr.i, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.i = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %i.h)
  %i.j = icmp samesign ult i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %_Z10isPowerOf2x.exit.thread.i

_Z10isPowerOf2x.exit.thread.i:                    ; preds = %_Z10isPowerOf2x.exit.i, %bb.d
  tail call void @_Z26error_pageSizeNotAPowerOf2v()
  %.pre.i = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %_Z10isPowerOf2x.exit.thread.i, %_Z10isPowerOf2x.exit.i
  %i.k = phi i64 [ %.pre.i, %_Z10isPowerOf2x.exit.thread.i ], [ %i.h, %_Z10isPowerOf2x.exit.i ] ; 2 uses
  %i.l = and i64 %i.k, 15
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_Z15cpu_getPageSizev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_Z33error_pageSizeNotAMultipleOfQcompv()
  %.pre2.i = load i64, ptr @_ZZ15cpu_getPageSizevE8pageSize, align 8, !tbaa !12
  br label %_Z15cpu_getPageSizev.exit

_Z15cpu_getPageSizev.exit:                        ; preds = %bb.b, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %.pre2.i, %bb.f ], [ %i.k, %bb.e ] ; 3 uses
  %.not = icmp sgt i64 %i.b, %.0.i
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_Z15cpu_getPageSizev.exit
  tail call void @free(ptr noundef nonnull %0) #6
  br label %bb.j

bb.h:                                             ; preds = %_Z15cpu_getPageSizev.exit
  %i.m = sitofp i64 %i.b to double
  %i.n = sitofp i64 %.0.i to double
  %i.o = fdiv double %i.m, %i.n
  %i.p = tail call double @llvm.ceil.f64(double %i.o)
  %i.q = fptosi double %i.p to i64
  %i.r = mul nsw i64 %.0.i, %i.q
  %i.s = tail call i32 @munmap(ptr noundef nonnull %0, i64 noundef %i.r) #6
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_Z25error_numaUnmappingFailedv()
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_Z25error_numaUnmappingFailedv() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @_Z29cpu_allocAndInitMatrixWrapperPSt7complexIdEx(ptr noundef %0, i64 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl i64 %1, 3
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #22 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = icmp sgt i64 %1, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.f = icmp ult i64 %1, 4
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, 9223372036854775804
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.017 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.g = mul nuw nsw i64 %.017, %1
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.017
  store ptr %i.h, ptr %i.i, align 8, !tbaa !17
  %i.j = or disjoint i64 %.017, 1                 ; 2 uses
  %i.k = mul nuw nsw i64 %i.j, %1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.j
  store ptr %i.l, ptr %i.m, align 8, !tbaa !17
  %i.n = or disjoint i64 %.017, 2                 ; 2 uses
  %i.o = mul nuw nsw i64 %i.n, %1
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.n
  store ptr %i.p, ptr %i.q, align 8, !tbaa !17
  %i.r = or disjoint i64 %.017, 3                 ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, %1
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.r
  store ptr %i.t, ptr %i.u, align 8, !tbaa !17
  %i.v = add nuw nsw i64 %.017, 4                 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !20

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.017.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.v, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.017.epil = phi i64 [ %i.z, %.lr.ph.epil ], [ %.017.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.w = mul nuw nsw i64 %.017.epil, %1
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.017.epil
  store ptr %i.x, ptr %i.y, align 8, !tbaa !17
  %i.z = add nuw nsw i64 %.017.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !21

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.preheader ], [ %i.c, %.lr.ph.epil ], [ %i.c, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.1
end_hunk_0
