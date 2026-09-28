Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/CacheLocality?download=true
inline.NumInlined: 1618
inline.NumDeleted: 786
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5folly10coreMallocEmmm:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load atomic i8, ptr @_ZGVZN5folly10coreMallocEmmmE10allocators acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly10coreMallocEmmmE10allocators) #34
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.idx = phi i64 [ %.add.1, %.preheader ], [ 0, %bb.b ] ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @_ZZN5folly10coreMallocEmmmE10allocators, i64 %.idx ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.ptr, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %.ptr, i8 0, i64 64, i1 false)
  store i64 8, ptr %i.f, align 16, !tbaa !289
  %i.g = getelementptr inbounds nuw i8, ptr %.ptr, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %.ptr, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, i8 0, i64 88, i1 false)
  store i64 16, ptr %i.h, align 16, !tbaa !289
  %i.i = getelementptr inbounds nuw i8, ptr %.ptr, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %.ptr, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, i8 0, i64 88, i1 false)
  store i64 32, ptr %i.j, align 16, !tbaa !289
  %i.k = getelementptr inbounds nuw i8, ptr %.ptr, i64 264
  %i.l = getelementptr inbounds nuw i8, ptr %.ptr, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, i8 0, i64 88, i1 false)
  store i64 64, ptr %i.l, align 16, !tbaa !289
  %i.m = getelementptr inbounds nuw i8, ptr %.ptr, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr @_ZZN5folly10coreMallocEmmmE10allocators, i64 %.idx ; 9 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %.ptr.1, i8 0, i64 64, i1 false)
  store i64 8, ptr %i.o, align 16, !tbaa !289
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 456
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, i8 0, i64 88, i1 false)
  store i64 16, ptr %i.q, align 16, !tbaa !289
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 552
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.r, i8 0, i64 88, i1 false)
  store i64 32, ptr %i.s, align 16, !tbaa !289
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 648
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.t, i8 0, i64 88, i1 false)
  store i64 64, ptr %i.u, align 16, !tbaa !289
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 744
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.add.1 = add nuw nsw i64 %.idx, 768            ; 2 uses
  %i.w = icmp eq i64 %.add.1, 98304
  br i1 %i.w, label %bb.c, label %.preheader

bb.c:                                             ; preds = %.preheader
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly10coreMallocEmmmE10allocators) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.x = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v()
  %i.y = load i64, ptr %i.x, align 8, !tbaa !46
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 256)
  %i.z = mul i64 %.sroa.speculated.i, %2
  %i.aa = udiv i64 %i.z, %1
  %i.ab = getelementptr inbounds nuw [384 x i8], ptr @_ZZN5folly10coreMallocEmmmE10allocators, i64 %i.aa
  %i.ac = icmp ult i64 %0, 9
  br i1 %i.ac, label %_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp ult i64 %0, 17
  br i1 %i.ad, label %_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ult i64 %0, 33
  br i1 %i.ae, label %_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.thread.i, label %_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.i

_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.i: ; preds = %bb.f
  %i.af = icmp ult i64 %0, 65
  br i1 %i.af, label %_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.thread.i, label %bb.w

_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.thread.i: ; preds = %_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.i, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.extract.trunc14.i = phi i64 [ 3, %_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.i ], [ 2, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %i.ab, i64 %.sroa.0.0.extract.trunc14.i ; 13 uses
  %i.ah = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(96) %i.ag) #34 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.thread.i
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.ah) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i:      ; preds = %_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.thread.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !104 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !105
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !104
  br label %bb.v

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 7 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !290 ; 4 uses
  %.not8.i.i = icmp eq ptr %i.am, null
  br i1 %.not8.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 127
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ar = load i64, ptr %i.aq, align 16, !tbaa !46 ; 2 uses
  br i1 %i.ap, label %bb.k, label %._crit_edge.i.i

bb.k:                                             ; preds = %bb.j
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 16)
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.as ; 2 uses
  store ptr %i.at, ptr %i.al, align 8, !tbaa !290
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %bb.j
  %i.au = phi ptr [ %i.at, %bb.k ], [ %i.am, %bb.j ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !291
  %.not9.i.i = icmp ugt ptr %i.av, %i.ax
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i
  store ptr %i.av, ptr %i.al, align 8, !tbaa !290
  br label %bb.v

bb.m:                                             ; preds = %._crit_edge.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr null, ptr %i.b, align 8, !tbaa !105
  %i.ay = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 4096) #34 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = tail call ptr @__errno_location() #39   ; 2 uses
  br i1 %i.az, label %_ZN5folly14aligned_mallocEmm.exit.i.i.i, label %_ZN5folly14aligned_mallocEmm.exit.thread.i.i.i

_ZN5folly14aligned_mallocEmm.exit.thread.i.i.i:   ; preds = %bb.m
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  store ptr null, ptr %i.al, align 8, !tbaa !290
  br label %bb.n

_ZN5folly14aligned_mallocEmm.exit.i.i.i:          ; preds = %bb.m
  store i32 0, ptr %i.ba, align 4, !tbaa !66
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !105 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  store ptr %i.bb, ptr %i.al, align 8, !tbaa !290
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5folly14aligned_mallocEmm.exit.i.i.i, %_ZN5folly14aligned_mallocEmm.exit.thread.i.i.i
  invoke void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #17
          to label %.noexc.i.i unwind label %bb.u

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_ZN5folly14aligned_mallocEmm.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4096
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.bc, ptr %i.bd, align 16, !tbaa !291
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !292 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 88 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !293
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bb, ptr %i.bg, align 8, !tbaa !105
  %i.bj = load ptr, ptr %i.bf, align 16, !tbaa !292
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.bf, align 16, !tbaa !292
  br label %_ZN5folly12_GLOBAL__N_115SimpleAllocator12allocateHardEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !294 ; 4 uses
  %i.bm = ptrtoint ptr %i.bg to i64
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.r, label %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #35
          to label %.noexc10.i.i unwind label %bb.u

.noexc10.i.i:                                     ; preds = %bb.r
  unreachable

_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %3 = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bt = select i1 %i.bs, i64 1152921504606846975, i64 %3 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #36
          to label %.noexc11.i.i unwind label %bb.u ; 4 uses

.noexc11.i.i:                                     ; preds = %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bo ; 2 uses
  store ptr %i.bb, ptr %i.bw, align 8, !tbaa !105
  %i.bx = icmp sgt i64 %i.bo, 0
  br i1 %i.bx, label %bb.s, label %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i.i

bb.s:                                             ; preds = %.noexc11.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %i.bl, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i.i

_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i.i: ; preds = %bb.s, %.noexc11.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i.i
  %i.bz = load ptr, ptr %i.bh, align 8, !tbaa !293
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cb) #37
  br label %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.t, %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i.i.i
  store ptr %i.bv, ptr %i.be, align 8, !tbaa !294
  store ptr %i.by, ptr %i.bf, align 16, !tbaa !292
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cc, ptr %i.bh, align 8, !tbaa !293
  br label %_ZN5folly12_GLOBAL__N_115SimpleAllocator12allocateHardEv.exit.i.i

_ZN5folly12_GLOBAL__N_115SimpleAllocator12allocateHardEv.exit.i.i: ; preds = %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i.i.i, %bb.p
  %i.cd = load ptr, ptr %i.al, align 8, !tbaa !290 ; 2 uses
  store ptr %i.ag, ptr %i.cd, align 8, !tbaa !107
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.cf = load i64, ptr %i.ce, align 16, !tbaa !46 ; 2 uses
  %4 = call i64 @llvm.umin.i64(i64 %i.cf, i64 16)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store ptr %i.ch, ptr %i.al, align 8, !tbaa !290
  br label %bb.v

bb.u:                                             ; preds = %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.r, %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %5 = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(96) %i.ag) #34 ; 0 uses
  resume { ptr, i32 } %i.ci

bb.v:                                             ; preds = %_ZN5folly12_GLOBAL__N_115SimpleAllocator12allocateHardEv.exit.i.i, %bb.l, %bb.h
  %.0.i.i = phi ptr [ %i.aj, %bb.h ], [ %i.au, %bb.l ], [ %i.cg, %_ZN5folly12_GLOBAL__N_115SimpleAllocator12allocateHardEv.exit.i.i ]
  %6 = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(96) %i.ag) #34 ; 0 uses
  br label %_ZN5folly12_GLOBAL__N_19Allocator8allocateEm.exit

bb.w:                                             ; preds = %_ZN5folly12_GLOBAL__N_19Allocator9sizeClassEm.exit.i
  %i.cj = add i64 %0, 127
  %i.ck = and i64 %i.cj, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr null, ptr %i.a, align 8, !tbaa !105
  %i.cl = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef %i.ck) #34 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  %i.cn = tail call ptr @__errno_location() #39   ; 2 uses
  br i1 %i.cm, label %_ZN5folly14aligned_mallocEmm.exit.i, label %_ZN5folly14aligned_mallocEmm.exit.thread.i

_ZN5folly14aligned_mallocEmm.exit.thread.i:       ; preds = %bb.w
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.x

_ZN5folly14aligned_mallocEmm.exit.i:              ; preds = %bb.w
  store i32 0, ptr %i.cn, align 4, !tbaa !66
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %bb.x, label %_ZN5folly12_GLOBAL__N_19Allocator8allocateEm.exit

bb.x:                                             ; preds = %_ZN5folly14aligned_mallocEmm.exit.i, %_ZN5folly14aligned_mallocEmm.exit.thread.i
  call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #17
  unreachable

_ZN5folly12_GLOBAL__N_19Allocator8allocateEm.exit: ; preds = %bb.v, %_ZN5folly14aligned_mallocEmm.exit.i
  %.1.i = phi ptr [ %.0.i.i, %bb.v ], [ %i.co, %_ZN5folly14aligned_mallocEmm.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !25
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #21 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5folly8coreFreeEPv(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN5folly12_GLOBAL__N_19Allocator10deallocateEPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 127
  %.not4.i = icmp eq i64 %i.b, 0
  br i1 %.not4.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %i.a, -4096
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 4096, !tbaa !107 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #34 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly12_GLOBAL__N_115SimpleAllocator10deallocateEPv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #35
  unreachable

_ZN5folly12_GLOBAL__N_115SimpleAllocator10deallocateEPv.exit.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  store ptr %i.h, ptr %0, align 8, !tbaa !105
  store ptr %0, ptr %i.g, align 8, !tbaa !104
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #34 ; 0 uses
  br label %_ZN5folly12_GLOBAL__N_19Allocator10deallocateEPv.exit

bb.e:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %0) #34
  br label %_ZN5folly12_GLOBAL__N_19Allocator10deallocateEPv.exit

_ZN5folly12_GLOBAL__N_19Allocator10deallocateEPv.exit: ; preds = %bb.a, %_ZN5folly12_GLOBAL__N_115SimpleAllocator10deallocateEPv.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18CoreAllocatorGuardC2Emm(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  store i64 %1, ptr %0, align 8, !tbaa !109
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !110
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_119gCoreAllocatorGuardE) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %.not.not = icmp eq ptr %i.c, null
  br i1 %.not.not, label %.critedge, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.36, i32 noundef 769)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.39, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.40, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #38
  unreachable

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #38
  unreachable

.critedge:                                        ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8, !tbaa !112
  ret void
}

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5folly18CoreAllocatorGuardD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(16) %0) unnamed_addr #29 align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_119gCoreAllocatorGuardE)
  store ptr null, ptr %i.a, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5folly6detail19coreMallocFromGuardEm(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly12_GLOBAL__N_119gCoreAllocatorGuardE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !36

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.36, i32 noundef 781)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.41, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.42, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #38
  unreachable

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #38
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !110
  %i.j = tail call noundef ptr @_ZN5folly10coreMallocEmmm(i64 noundef %0, i64 noundef %i.g, i64 noundef %i.i)
  ret ptr %i.j
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CacheLocality.cpp() #30 section ".text.startup" {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) acquire, align 8
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %__cxx_global_var_init.exit, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly14AccessSpreaderISt6atomicE10initializeERNS2_11GlobalStateE(ptr noundef nonnull align 8 dereferenceable(65800) @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state) ; 0 uses
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.d = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65792) monotonic, align 8
  %i.e = call noundef i32 %i.d(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null), !inline_history !295 ; 0 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !66
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 65536), i64 %i.h
  %i.j = load atomic i8, ptr %i.i monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #32

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nounwind }
attributes #35 = { noreturn }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { builtin nounwind }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!23}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = distinct !{!3, !41}
!4 = distinct !{!4, !41}
!5 = distinct !{!5, !41}
!6 = distinct !{!6, !41}
!7 = distinct !{!7, !41}
!8 = distinct !{!8, !41}
!9 = distinct !{!9, !41}
!10 = distinct !{!10, !41}
!11 = distinct !{!11, !41}
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 7, !"openmp", i32 51}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!"__libc_errno", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"vtable pointer", !19, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"long", !20, i64 0}
!27 = !{!"any pointer", !20, i64 0}
!28 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!29, !28, i64 8}
!31 = !{!29, !28, i64 0}
!32 = !{!20, !20, i64 0}
!33 = !{!"p1 omnipotent char", !27, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !26, i64 8, !20, i64 16}
!38 = !{!37, !33, i64 0}
!39 = !{!37, !26, i64 8}
!40 = !{!29, !28, i64 16}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"p1 long", !27, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!43, !42, i64 0}
!45 = !{!43, !42, i64 16}
!46 = !{!26, !26, i64 0}
!47 = !{!43, !42, i64 8}
!48 = !{!"p1 _ZTSSt6vectorImSaImEE", !27, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!49, !48, i64 0}
!51 = !{!49, !48, i64 8}
!52 = !{!49, !48, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !43, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseImSaImEE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorImSaImEE", !54, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE12_Vector_implE", !49, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseISt6vectorImSaImEESaIS2_EE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIS_ImSaImEESaIS1_EE", !57, i64 0}
!59 = !{!"_ZTSN5folly13CacheLocalityE", !26, i64 0, !55, i64 8, !55, i64 32, !58, i64 56}
!60 = !{!59, !26, i64 0}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!48, !48, i64 0}
!63 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!64 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !27, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!21, !21, i64 0}
!67 = !{!33, !33, i64 0}
!68 = !{!42, !42, i64 0}
!69 = !{!"p1 _ZTSSt5tupleIJmmmEE", !27, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseISt5tupleIJmmmEESaIS1_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!70, !69, i64 8}
!72 = !{!70, !69, i64 16}
!73 = !{!"_ZTSSt10_Head_baseILm2EmLb0EE", !26, i64 0}
!74 = !{!73, !26, i64 0}
!75 = !{!"_ZTSSt10_Head_baseILm1EmLb0EE", !26, i64 0}
!76 = !{!75, !26, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EmLb0EE", !26, i64 0}
!78 = !{!77, !26, i64 0}
!79 = !{!70, !69, i64 0}
!80 = !{!"branch_weights", i32 1, i32 1048575}
!81 = !{!"_ZTSN5folly17LLCAccessSpreaderE", !27, i64 0, !26, i64 8, !55, i64 16}
!82 = !{!81, !27, i64 0}
!83 = !{!"any p2 pointer", !27, i64 0}
!84 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !83, i64 0}
!85 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !27, i64 0}
!86 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !85, i64 0}
!87 = !{!"float", !20, i64 0}
!88 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !87, i64 0, !26, i64 8}
!89 = !{!"_ZTSSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !84, i64 0, !26, i64 8, !86, i64 16, !26, i64 24, !88, i64 32, !85, i64 48}
!90 = !{!89, !84, i64 0}
!91 = !{!89, !26, i64 8}
!92 = !{!89, !26, i64 24}
!93 = !{!81, !26, i64 8}
!94 = !{!89, !85, i64 16}
!95 = !{!86, !85, i64 0}
!96 = !{!85, !85, i64 0}
!97 = !{!"_ZTSSt12__mutex_base", !20, i64 0}
!98 = !{!"_ZTSSt5mutex", !97, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!100 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE12_Vector_implE", !99, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIPvSaIS0_EE", !100, i64 0}
!102 = !{!"_ZTSSt6vectorIPvSaIS0_EE", !101, i64 0}
!103 = !{!"_ZTSN5folly12_GLOBAL__N_115SimpleAllocatorE", !98, i64 0, !33, i64 40, !33, i64 48, !27, i64 56, !26, i64 64, !102, i64 72}
!104 = !{!103, !27, i64 56}
!105 = !{!27, !27, i64 0}
!106 = !{!"p1 _ZTSN5folly12_GLOBAL__N_115SimpleAllocatorE", !27, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"_ZTSN5folly18CoreAllocatorGuardE", !26, i64 0, !26, i64 8}
!109 = !{!108, !26, i64 0}
!110 = !{!108, !26, i64 8}
!111 = !{!"p1 _ZTSN5folly18CoreAllocatorGuardE", !27, i64 0}
!112 = !{!111, !111, i64 0}
!113 = distinct !{null}
!114 = distinct !{!114, !41}
!115 = !{!"_ZTSSt13_Ios_Fmtflags", !20, i64 0}
!116 = !{!"_ZTSSt12_Ios_Iostate", !20, i64 0}
!117 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!118 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !26, i64 8}
!119 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!120 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!121 = !{!"_ZTSSt6locale", !120, i64 0}
!122 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !115, i64 24, !116, i64 28, !116, i64 32, !117, i64 40, !118, i64 48, !20, i64 64, !21, i64 192, !119, i64 200, !121, i64 208}
!123 = !{!122, !116, i64 32}
!124 = !{!"p1 _ZTSSo", !27, i64 0}
!125 = !{!"bool", !20, i64 0}
!126 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !27, i64 0}
!127 = !{!"p1 _ZTSSt5ctypeIcE", !27, i64 0}
!128 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!129 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!130 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !122, i64 0, !124, i64 216, !20, i64 224, !125, i64 225, !126, i64 232, !127, i64 240, !128, i64 248, !129, i64 256}
!131 = !{!130, !127, i64 240}
!132 = !{!"_ZTSNSt6locale5facetE", !21, i64 8}
!133 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!134 = !{!"p1 int", !27, i64 0}
!135 = !{!"p1 short", !27, i64 0}
!136 = !{!"_ZTSSt5ctypeIcE", !132, i64 0, !133, i64 16, !125, i64 24, !134, i64 32, !134, i64 40, !135, i64 48, !20, i64 56, !20, i64 57, !20, i64 313, !20, i64 569}
!137 = !{!136, !20, i64 56}
!138 = distinct !{!138, !41}
!139 = distinct !{!139, !41}
!140 = distinct !{!140, !41}
!141 = distinct !{!141, !41, !146, !147}
!142 = distinct !{!142, !41, !147, !146}
!143 = distinct !{!143, !41}
!144 = distinct !{!144, !61}
!145 = distinct !{!145, !41}
!146 = !{!"llvm.loop.isvectorized", i32 1}
!147 = !{!"llvm.loop.unroll.runtime.disable"}
!148 = distinct !{!148, !41}
!149 = distinct !{!149, !41}
!150 = distinct !{!150, !41}
!151 = distinct !{!151, !41}
!152 = distinct !{!152, !41}
!153 = distinct !{!153, !41}
!154 = distinct !{!154, !41}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !41}
!157 = distinct !{!157, !"_ZN3fmt2v96formatIJPcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSB_"}
!158 = distinct !{!158, !157, !"_ZN3fmt2v96formatIJPcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSB_: argument 0"}
!159 = distinct !{!159, !"_ZN3fmt2v96formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr6detail18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_"}
!160 = distinct !{!160, !159, !"_ZN3fmt2v96formatIZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEvE18FMT_COMPILE_STRINGJRmETnNSt9enable_ifIXsr6detail18is_compiled_stringIT_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringINSC_9char_typeES5_ISH_ESaISH_EEERKSC_DpOT0_: argument 0"}
!161 = distinct !{!161, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!162 = distinct !{!162, !161, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!163 = distinct !{!163, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!164 = distinct !{!164, !163, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!165 = distinct !{!165, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE"}
!166 = distinct !{!166, !165, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE: argument 0"}
!167 = distinct !{!167, !"_ZN3fmt2v96formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSE_"}
!168 = distinct !{!168, !167, !"_ZN3fmt2v96formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSE_: argument 0"}
!169 = distinct !{!169, !"_ZN3fmt2v916make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJRSt17basic_string_viewIcSt11char_traitsIcEERPcEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpOSG_"}
!170 = distinct !{!170, !169, !"_ZN3fmt2v916make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJRSt17basic_string_viewIcSt11char_traitsIcEERPcEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpOSG_: argument 0"}
!171 = distinct !{!171, !41}
!172 = distinct !{!172, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!173 = distinct !{!173, !172, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!174 = distinct !{!174, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!175 = distinct !{!175, !174, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!176 = distinct !{!176, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE"}
!177 = distinct !{!177, !176, !"_ZZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_2clEiRKNSt7__cxx1112basic_stringIcS3_SaIcEEE: argument 0"}
!178 = distinct !{!178, !"_ZN3fmt2v96formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSE_"}
!179 = distinct !{!179, !178, !"_ZN3fmt2v96formatIJRSt17basic_string_viewIcSt11char_traitsIcEEPcEEENSt7__cxx1112basic_stringIcS4_SaIcEEENS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSE_: argument 0"}
!180 = distinct !{!180, !"_ZN3fmt2v916make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJRSt17basic_string_viewIcSt11char_traitsIcEERPcEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpOSG_"}
!181 = distinct !{!181, !180, !"_ZN3fmt2v916make_format_argsINS0_20basic_format_contextINS0_8appenderEcEEJRSt17basic_string_viewIcSt11char_traitsIcEERPcEEENS0_16format_arg_storeIT_JDpNSt9remove_cvINSt16remove_referenceIT0_E4typeEE4typeEEEEDpOSG_: argument 0"}
!182 = distinct !{!182, !"_ZN3fmt2v96formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_19basic_format_stringIcJDpNS0_13type_identityIT_E4typeEEEEDpOSC_"}
end_hunk_0
