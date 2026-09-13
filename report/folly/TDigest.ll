Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/TDigest?download=true
inline.NumInlined: 1033
inline.NumDeleted: 399
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5folly7TDigestC2ESt6vectorINS0_8CentroidESaIS2_EEddddm:bb.a
  store <2 x ptr> %i.al, ptr %0, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !32
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %9, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly7TDigestaSEOS0_.exit.thread, label %_ZN5folly7TDigestaSEOS0_.exit

_ZN5folly7TDigestaSEOS0_.exit.thread:             ; preds = %_ZN5folly7TDigest5mergeENS_5RangeIPKS0_EE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false)
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestaSEOS0_.exit:                    ; preds = %_ZN5folly7TDigest5mergeENS_5RangeIPKS0_EE.exit
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ar) #24
  %.pr = load ptr, ptr %9, align 16, !tbaa !31    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZN5folly7TDigestD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly7TDigestaSEOS0_.exit
  %i.at = load ptr, ptr %i.am, align 16, !tbaa !32
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %.pr to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.aw) #24
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %_ZN5folly7TDigestaSEOS0_.exit.thread, %_ZN5folly7TDigestaSEOS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !31  ; 3 uses
  %.not.i.i.i.i.i13 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i13, label %_ZN5folly7TDigestD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !32
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #24
  br label %_ZN5folly7TDigestD2Ev.exit.i

_ZN5folly7TDigestD2Ev.exit.i:                     ; preds = %bb.g, %_ZN5folly7TDigestD2Ev.exit
  %i.bd = load ptr, ptr %7, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i.i.1.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.1.i, label %_ZNSt5arrayIN5folly7TDigestELm2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly7TDigestD2Ev.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !32
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #24
  br label %_ZNSt5arrayIN5folly7TDigestELm2EED2Ev.exit

_ZNSt5arrayIN5folly7TDigestELm2EED2Ev.exit:       ; preds = %_ZN5folly7TDigestD2Ev.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %8, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !32
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #24
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit15

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit15: ; preds = %bb.i, %bb.j
  %i.bp = load ptr, ptr %7, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i16, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit15
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !32
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #24
  br label %.loopexit

bb.l:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZNSt5arrayIN5folly7TDigestELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit15, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %i.bj, %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit15 ], [ %i.bj, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bw = load ptr, ptr %0, align 8, !tbaa !31    ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit19, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #24
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit19

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit19: ; preds = %.loopexit, %bb.m
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %_ZNSt5arrayIN5folly7TDigestELm2EED2Ev.exit, %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EEaSEOS4_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN5folly7TDigest5mergeENS_5RangeIPKS0_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5arrayIN5folly7TDigestELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5folly7TDigestD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.1, label %_ZN5folly7TDigestD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24
  br label %_ZN5folly7TDigestD2Ev.exit.1

_ZN5folly7TDigestD2Ev.exit.1:                     ; preds = %bb.c, %_ZN5folly7TDigestD2Ev.exit
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly7TDigest5mergeENS_5RangeIPKdEE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::(anonymous namespace)::Buffer", align 8 ; 6 uses
  %i.a = alloca [700 x double], align 16          ; 8 uses
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 9 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 3 uses
  %i.f = icmp ugt i64 %i.e, 700
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = shl i64 %i.d, 1
  %i.h = add i64 %i.g, 18432                      ; 3 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #26 ; 6 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %_ZN5folly12_GLOBAL__N_16BufferC2Em.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #11
  unreachable

_ZN5folly12_GLOBAL__N_16BufferC2Em.exit:          ; preds = %bb.b
  store ptr %i.i, ptr %4, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.h, ptr %i.j, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 18432 ; 4 uses
  %i.l = icmp sgt i64 %i.d, 8
  br i1 %i.l, label %bb.d, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit, !prof !39

bb.d:                                             ; preds = %_ZN5folly12_GLOBAL__N_16BufferC2Em.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit

_ZSt4copyIPKdPdET0_T_S4_S3_.exit:                 ; preds = %_ZN5folly12_GLOBAL__N_16BufferC2Em.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.d ; 2 uses
  invoke void @_ZN5folly6detail17double_radix_sortEmPmPdS2_(i64 noundef %i.e, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  invoke void @_ZNK5folly7TDigest5mergeENS_19sorted_equivalent_tENS_5RangeIPKdEE(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull %i.k, ptr nonnull %i.m)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly11canSdallocxEv.exit.i.i, label %.split.i.i, !prof !40

.split.i.i:                                       ; preds = %bb.f
  %i.o = icmp sgt i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

_ZN5folly11canSdallocxEv.exit.i.i:                ; preds = %bb.f
  %i.p = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #27
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @sdallocx(ptr noundef nonnull %i.i, i64 noundef %i.h, i32 noundef 0) #23
  br label %_ZN5folly12_GLOBAL__N_16BufferD2Ev.exit

bb.h:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @free(ptr noundef nonnull %i.i) #23
  br label %_ZN5folly12_GLOBAL__N_16BufferD2Ev.exit

_ZN5folly12_GLOBAL__N_16BufferD2Ev.exit:          ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.o

bb.i:                                             ; preds = %bb.e, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN5folly12_GLOBAL__N_16BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.q

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.r = icmp sgt i64 %i.d, 8
  br i1 %i.r, label %bb.k, label %bb.l, !prof !39

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit22

bb.l:                                             ; preds = %bb.j
  %i.s = icmp eq i64 %i.d, 8
  br i1 %i.s, label %bb.m, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit22

bb.m:                                             ; preds = %bb.l
  %i.t = load double, ptr %2, align 8, !tbaa !33
  store double %i.t, ptr %i.a, align 16, !tbaa !33
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit22

_ZSt4copyIPKdPdET0_T_S4_S3_.exit22:               ; preds = %bb.k, %bb.l, %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 3 uses
  %.not.i.i23 = icmp eq ptr %3, %2
  br i1 %.not.i.i23, label %_ZSt4sortIPdEvT_S1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit22
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, i64 noundef %i.x)
  call void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.u)
  br label %_ZSt4sortIPdEvT_S1_.exit

_ZSt4sortIPdEvT_S1_.exit:                         ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit22, %bb.n
  call void @_ZNK5folly7TDigest5mergeENS_19sorted_equivalent_tENS_5RangeIPKdEE(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull %i.a, ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4sortIPdEvT_S1_.exit, %_ZN5folly12_GLOBAL__N_16BufferD2Ev.exit
  ret void
}

declare void @_ZN5folly6detail17double_radix_sortEmPmPdS2_(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly7TDigest5mergeENS_19sorted_equivalent_tENS_5RangeIPKdEE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !31     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, !prof !40

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #29
  %.pre = load ptr, ptr %1, align 8, !tbaa !34
  %.pre7 = load ptr, ptr %i.b, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.j = phi ptr [ %i.c, %bb.b ], [ %.pre7, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.d, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.b ], [ %i.i, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !32
  %i.p = icmp eq ptr %i.k, %i.j
  br i1 %i.p, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !41
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.j
  br i1 %i.s, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN5folly7TDigestC2ERKS0_.exit:                   ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.l, %bb.d ], [ %i.r, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26   ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.z, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.aa = icmp ugt i64 %i.w, 576460752303423487
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.ac = shl nuw nsw i64 %i.w, 4
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29
          to label %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.k ; 3 uses

_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE11_M_allocateEm.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ad, ptr %4, align 8, !tbaa !31
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.w
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !32
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5folly7TDigest8CentroidESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.g
  invoke void @_ZNK5folly7TDigest11mergeValuesERS0_NS_5RangeIPKdEERSt6vectorINS0_8CentroidESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE7reserveEm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly7TDigest8CentroidESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) #23 ; 0 uses
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit: ; preds = %bb.i, %bb.h
  %i.am = load ptr, ptr %4, align 8, !tbaa !31    ; 3 uses
end_hunk_0
