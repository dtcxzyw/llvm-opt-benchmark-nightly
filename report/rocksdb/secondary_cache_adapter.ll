Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/secondary_cache_adapter?download=true
inline.NumInlined: 1048
inline.NumDeleted: 509
begin_hunk_0_@_ZN7rocksdb25CacheWithSecondaryAdapter7ReleaseEPNS_5Cache6HandleEb:bb.a
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #25
  unreachable

bb.o:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit23, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7rocksdb6StatusD2Ev.exit23 ], [ %i.bj, %bb.j ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit24 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit24:                 ; preds = %bb.o
  resume { ptr, i32 } %.pn.pn

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.m, %bb.b, %bb.c, %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !51 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 184
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef %1, i1 noundef zeroext %2)
  ret i1 %i.bx
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb25CacheWithSecondaryAdapter5ValueEPNS_5Cache6HandleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef %1)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb25CacheWithSecondaryAdapter29StartAsyncLookupOnMySecondaryERNS_5Cache17AsyncLookupHandleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(74) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.17", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i8, ptr %i.g, align 8, !tbaa !133, !range !49, !noundef !50
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !134
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.17") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.d, ptr noundef %i.f, i1 noundef zeroext false, i1 noundef zeroext %i.i, ptr noundef %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
  %i.p = load ptr, ptr %2, align 8, !tbaa !108    ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.p, ptr %i.q, align 8, !tbaa !135
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.r, ptr %i.s, align 8, !tbaa !136
  br label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb25CacheWithSecondaryAdapter16StartAsyncLookupERNS_5Cache17AsyncLookupHandleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(74) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.17", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(74) %1)
  %i.f = tail call noundef zeroext i1 @_ZN7rocksdb5Cache17AsyncLookupHandle9IsPendingEv(ptr noundef nonnull align 8 dereferenceable(74) %1)
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = icmp ne ptr %i.j, null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i1 [ false, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN7rocksdb25CacheWithSecondaryAdapter18ProcessDummyResultEPPNS_5Cache6HandleEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull %i.n), !inline_history !125
  %i.t = icmp eq ptr %i.s, @_ZN7rocksdb12_GLOBAL__N_16kDummyE
  br i1 %i.t, label %bb.f, label %_ZN7rocksdb25CacheWithSecondaryAdapter18ProcessDummyResultEPPNS_5Cache6HandleEb.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef %i.v, i1 noundef zeroext %i.l), !inline_history !125 ; 0 uses
  store ptr null, ptr %i.m, align 8, !tbaa !104
  br label %_ZN7rocksdb25CacheWithSecondaryAdapter18ProcessDummyResultEPPNS_5Cache6HandleEb.exit

_ZN7rocksdb25CacheWithSecondaryAdapter18ProcessDummyResultEPPNS_5Cache6HandleEb.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !133, !range !49, !noundef !50
  %i.ac = or i8 %i.ab, %.0.i
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !133
  %i.ad = tail call noundef ptr @_ZN7rocksdb5Cache17AsyncLookupHandle6ResultEv(ptr noundef nonnull align 8 dereferenceable(74) %1)
  %i.ae = icmp eq ptr %i.ad, null
  %or.cond = and i1 %i.l, %i.ae
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN7rocksdb25CacheWithSecondaryAdapter18ProcessDummyResultEPPNS_5Cache6HandleEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !132
  %i.ak = load i8, ptr %i.aa, align 8, !tbaa !133, !range !49, !noundef !50
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !134
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.17") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(74) %1, ptr noundef %i.ah, ptr noundef %i.aj, i1 noundef zeroext false, i1 noundef zeroext %i.al, ptr noundef %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.ao), !inline_history !137
  %i.as = load ptr, ptr %2, align 8, !tbaa !108   ; 2 uses
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZN7rocksdb25CacheWithSecondaryAdapter29StartAsyncLookupOnMySecondaryERNS_5Cache17AsyncLookupHandleE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.as, ptr %i.at, align 8, !tbaa !135
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.au, ptr %i.av, align 8, !tbaa !136
  br label %_ZN7rocksdb25CacheWithSecondaryAdapter29StartAsyncLookupOnMySecondaryERNS_5Cache17AsyncLookupHandleE.exit

_ZN7rocksdb25CacheWithSecondaryAdapter29StartAsyncLookupOnMySecondaryERNS_5Cache17AsyncLookupHandleE.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb25CacheWithSecondaryAdapter18ProcessDummyResultEPPNS_5Cache6HandleEb.exit, %_ZN7rocksdb25CacheWithSecondaryAdapter29StartAsyncLookupOnMySecondaryERNS_5Cache17AsyncLookupHandleE.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN7rocksdb5Cache17AsyncLookupHandle9IsPendingEv(ptr noundef nonnull align 8 dereferenceable(74)) local_unnamed_addr #1

declare noundef ptr @_ZN7rocksdb5Cache17AsyncLookupHandle6ResultEv(ptr noundef nonnull align 8 dereferenceable(74)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb25CacheWithSecondaryAdapter7WaitAllEPNS_5Cache17AsyncLookupHandleEm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.17", align 8 ; 4 uses
  %4 = alloca %"class.std::vector.30", align 8    ; 6 uses
  %5 = alloca %"class.std::unique_ptr.17", align 8 ; 5 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit68, label %.preheader145

.preheader145:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44
  %i.c = icmp eq ptr %.sroa.0110.1, %.sroa.10115.1
  br i1 %i.c, label %.preheader, label %bb.o

bb.c:                                             ; preds = %.preheader145, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44
  %.028203 = phi i64 [ 0, %.preheader145 ], [ %i.am, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44 ] ; 2 uses
  %.sroa.15.0202 = phi ptr [ null, %.preheader145 ], [ %.sroa.15.1, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44 ] ; 7 uses
  %.sroa.10115.0201 = phi ptr [ null, %.preheader145 ], [ %.sroa.10115.1, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44 ] ; 5 uses
  %.sroa.0110.0200 = phi ptr [ null, %.preheader145 ], [ %.sroa.0110.1, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44 ] ; 9 uses
  %.sroa.20.0199 = phi ptr [ null, %.preheader145 ], [ %.sroa.20.1.a, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44 ] ; 8 uses
  %.sroa.12.0198 = phi ptr [ null, %.preheader145 ], [ %.sroa.12.1.a, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44 ] ; 6 uses
  %.sroa.0121.0197 = phi ptr [ null, %.preheader145 ], [ %.sroa.0121.1.a, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44 ] ; 10 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %.028203 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %.sroa.12.0198, %.sroa.20.0199
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %.sroa.12.0198, align 8, !tbaa !138
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = ptrtoint ptr %.sroa.20.0199 to i64
  %i.j = ptrtoint ptr %.sroa.0121.0197 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %.invoke, label %_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.g, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #28
          to label %.cont unwind label %.loopexit.split-lp147

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #26
          to label %.noexc34 unwind label %.loopexit146 ; 4 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %i.d, ptr %i.t, align 8, !tbaa !138
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.h, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.h:                                             ; preds = %.noexc34
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %.sroa.0121.0197, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.h, %.noexc34
  %.not.i17.i.i = icmp eq ptr %.sroa.0121.0197, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0197, i64 noundef %i.k) #27
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f
  %.sroa.0121.5.a = phi ptr [ %i.s, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0121.0197, %bb.f ]
  %.pn141 = phi ptr [ %i.t, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.12.0198, %bb.f ]
  %.sroa.20.5 = phi ptr [ %i.v, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.20.0199, %bb.f ]
  %.sroa.12.4 = getelementptr inbounds nuw i8, ptr %.pn141, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !136
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44

.loopexit146:                                     ; preds = %_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i36
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72

.loopexit.split-lp147:                            ; preds = %.invoke
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72

bb.j:                                             ; preds = %bb.d
  %.not.i35 = icmp eq ptr %.sroa.10115.0201, %.sroa.15.0202
  br i1 %.not.i35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.d, ptr %.sroa.10115.0201, align 8, !tbaa !138
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.10115.0201, i64 8
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44

bb.l:                                             ; preds = %bb.j
  %i.x = ptrtoint ptr %.sroa.15.0202 to i64
  %i.y = ptrtoint ptr %.sroa.0110.0200 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %.invoke, label %_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i36

_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i36: ; preds = %bb.l
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i37 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i37, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i38 = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i38)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #26
          to label %.noexc43 unwind label %.loopexit146 ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i36
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store ptr %i.d, ptr %i.ai, align 8, !tbaa !138
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.m, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i39

bb.m:                                             ; preds = %.noexc43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %.sroa.0110.0200, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i39

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i39: ; preds = %bb.m, %.noexc43
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.not.i17.i.i40 = icmp eq ptr %.sroa.0110.0200, null
  br i1 %.not.i17.i.i40, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i41, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i39
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0110.0200, i64 noundef %i.z) #27
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i41

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i41: ; preds = %bb.n, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i39
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit44: ; preds = %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i41, %bb.k, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit, %bb.c
  %.sroa.0121.1.a = phi ptr [ %.sroa.0121.0197, %bb.c ], [ %.sroa.0121.5.a, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.0121.0197, %bb.k ], [ %.sroa.0121.0197, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i41 ] ; 4 uses
  %.sroa.12.1.a = phi ptr [ %.sroa.12.0198, %bb.c ], [ %.sroa.12.4, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.12.0198, %bb.k ], [ %.sroa.12.0198, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i41 ] ; 3 uses
  %.sroa.20.1.a = phi ptr [ %.sroa.20.0199, %bb.c ], [ %.sroa.20.5, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.20.0199, %bb.k ], [ %.sroa.20.0199, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i41 ] ; 4 uses
  %.sroa.0110.1 = phi ptr [ %.sroa.0110.0200, %bb.c ], [ %.sroa.0110.0200, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.0110.0200, %bb.k ], [ %i.ah, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i41 ] ; 14 uses
  %.sroa.10115.1 = phi ptr [ %.sroa.10115.0201, %bb.c ], [ %.sroa.10115.0201, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit ], [ %i.w, %bb.k ], [ %i.ak, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i41 ] ; 3 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0202, %bb.c ], [ %.sroa.15.0202, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.15.0202, %bb.k ], [ %i.al, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i41 ] ; 10 uses
  %i.am = add nuw i64 %.028203, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %2
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !140

bb.o:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 384
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull %1, i64 noundef %2)
          to label %.lr.ph unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72

.preheader:                                       ; preds = %bb.ab, %bb.b
  %.sroa.0121.2.lcssa.a = phi ptr [ %.sroa.0121.1.a, %bb.b ], [ %.sroa.0121.3.a, %bb.ab ] ; 11 uses
  %.sroa.12.2.lcssa = phi ptr [ %.sroa.12.1.a, %bb.b ], [ %.sroa.12.3, %bb.ab ] ; 3 uses
  %.sroa.20.2.lcssa = phi ptr [ %.sroa.20.1.a, %bb.b ], [ %.sroa.20.3, %bb.ab ] ; 6 uses
  %i.at = icmp eq ptr %.sroa.0121.2.lcssa.a, %.sroa.12.2.lcssa ; 2 uses
  br i1 %i.at, label %._crit_edge, label %.lr.ph214

.lr.ph:                                           ; preds = %bb.o, %bb.ab
  %.sroa.0102.0207 = phi ptr [ %i.cf, %bb.ab ], [ %.sroa.0110.1, %bb.o ] ; 2 uses
  %.sroa.20.2206 = phi ptr [ %.sroa.20.3, %bb.ab ], [ %.sroa.20.1.a, %bb.o ] ; 7 uses
  %.sroa.12.2205 = phi ptr [ %.sroa.12.3, %bb.ab ], [ %.sroa.12.1.a, %bb.o ] ; 5 uses
  %.sroa.0121.2204 = phi ptr [ %.sroa.0121.3.a, %bb.ab ], [ %.sroa.0121.1.a, %bb.o ] ; 9 uses
  %i.au = load ptr, ptr %.sroa.0102.0207, align 8, !tbaa !138 ; 13 uses
  %i.av = invoke noundef ptr @_ZN7rocksdb5Cache17AsyncLookupHandle6ResultEv(ptr noundef nonnull align 8 dereferenceable(74) %i.au)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %.lr.ph
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !127
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !132
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !133, !range !49, !noundef !50
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !134
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 73
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 168
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.17") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(74) %i.au, ptr noundef %i.az, ptr noundef %i.bb, i1 noundef zeroext false, i1 noundef zeroext %i.be, ptr noundef %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.bh)
          to label %.noexc46 unwind label %.loopexit, !inline_history !137

.noexc46:                                         ; preds = %bb.r
  %i.bl = load ptr, ptr %3, align 8, !tbaa !108   ; 2 uses
  %.not.i45 = icmp eq ptr %i.bl, null
  br i1 %.not.i45, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc46
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !135
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !136
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.noexc46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bp = invoke noundef zeroext i1 @_ZN7rocksdb5Cache17AsyncLookupHandle9IsPendingEv(ptr noundef nonnull align 8 dereferenceable(74) %i.au)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %bb.t
  br i1 %i.bp, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %.not.i47 = icmp eq ptr %.sroa.12.2205, %.sroa.20.2206
  br i1 %.not.i47, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.au, ptr %.sroa.12.2205, align 8, !tbaa !138
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit56

bb.x:                                             ; preds = %bb.v
  %i.bq = ptrtoint ptr %.sroa.20.2206 to i64
  %i.br = ptrtoint ptr %.sroa.0121.2204 to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.y, label %_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i48

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #28
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i48: ; preds = %bb.x
  %i.bu = ashr exact i64 %i.bs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i49 = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i49, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846975)
  %i.by = select i1 %i.bw, i64 1152921504606846975, i64 %i.bx ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.by, 0
  call void @llvm.assume(i1 %.not.i.i.i50)
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #26
          to label %.noexc55 unwind label %.loopexit ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i48
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bs ; 2 uses
  store ptr %i.au, ptr %i.cb, align 8, !tbaa !138
  %i.cc = icmp sgt i64 %i.bs, 0
  br i1 %i.cc, label %bb.z, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i51

bb.z:                                             ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr align 8 %.sroa.0121.2204, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i51

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i51: ; preds = %bb.z, %.noexc55
  %.not.i17.i.i52 = icmp eq ptr %.sroa.0121.2204, null
  br i1 %.not.i17.i.i52, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i53, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i51
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.2204, i64 noundef %i.bs) #27
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i53

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i53: ; preds = %bb.aa, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i51
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit56

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit56: ; preds = %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i53, %bb.w
  %.sroa.0121.6.a = phi ptr [ %i.ca, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i53 ], [ %.sroa.0121.2204, %bb.w ]
  %.pn = phi ptr [ %i.cb, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i53 ], [ %.sroa.12.2205, %bb.w ]
  %.sroa.20.6 = phi ptr [ %i.cd, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i53 ], [ %.sroa.20.2206, %bb.w ]
  %.sroa.12.5 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store ptr null, ptr %i.ce, align 8, !tbaa !136
  br label %bb.ab

.loopexit:                                        ; preds = %.lr.ph, %bb.t, %bb.r, %_ZNKSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i48
  %lpad.loopexit142 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72

bb.ab:                                            ; preds = %bb.u, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit56, %bb.q
  %.sroa.0121.3.a = phi ptr [ %.sroa.0121.6.a, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit56 ], [ %.sroa.0121.2204, %bb.u ], [ %.sroa.0121.2204, %bb.q ] ; 2 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.5, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit56 ], [ %.sroa.12.2205, %bb.u ], [ %.sroa.12.2205, %bb.q ] ; 2 uses
  %.sroa.20.3 = phi ptr [ %.sroa.20.6, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EE9push_backERKS3_.exit56 ], [ %.sroa.20.2206, %bb.u ], [ %.sroa.20.2206, %bb.q ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0102.0207, i64 8 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %.sroa.10115.1
  br i1 %i.cg, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit, %.preheader
  %.sroa.088.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.088.2, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit ]
  %.sroa.10.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.10.1, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.14.2, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit ]
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  store ptr %.sroa.088.0.lcssa, ptr %4, align 8, !tbaa !142
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.10.0.lcssa, ptr %i.ci, align 8, !tbaa !146
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %.sroa.14.0.lcssa, ptr %i.cj, align 8, !tbaa !147
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 192
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 %4)
          to label %bb.ah unwind label %bb.al

.lr.ph214:                                        ; preds = %.preheader, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit
  %.sroa.085.0213 = phi ptr [ %i.df, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.0121.2.lcssa.a, %.preheader ] ; 2 uses
  %.sroa.14.0212 = phi ptr [ %.sroa.14.2, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit ], [ null, %.preheader ] ; 3 uses
  %.sroa.10.0211 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit ], [ null, %.preheader ] ; 3 uses
  %.sroa.088.0210 = phi ptr [ %.sroa.088.2, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit ], [ null, %.preheader ] ; 7 uses
  %i.cn = load ptr, ptr %.sroa.085.0213, align 8, !tbaa !138
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56 ; 2 uses
  %.not.i57 = icmp eq ptr %.sroa.10.0211, %.sroa.14.0212
  br i1 %.not.i57, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph214
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !108
  store ptr %i.cp, ptr %.sroa.10.0211, align 8, !tbaa !108
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit

bb.ad:                                            ; preds = %.lr.ph214
  %i.cq = ptrtoint ptr %.sroa.14.0212 to i64
  %i.cr = ptrtoint ptr %.sroa.088.0210 to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 7 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.ae, label %_ZNKSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #28
          to label %.noexc61 unwind label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70.loopexit.split-lp

.noexc61:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i58 = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i58, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i.i59 = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i.i59)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #26
          to label %.noexc62 unwind label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70.loopexit ; 4 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cs ; 2 uses
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !108
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !108
  %i.dd = icmp sgt i64 %i.cs, 0
  br i1 %i.dd, label %bb.af, label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.af:                                            ; preds = %.noexc62
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr align 8 %.sroa.088.0210, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.af, %.noexc62
  %.not.i17.i.i60 = icmp eq ptr %.sroa.088.0210, null
  br i1 %.not.i17.i.i60, label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0210, i64 noundef %i.cs) #27
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ac
  %.sroa.088.2 = phi ptr [ %i.da, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.088.0210, %bb.ac ] ; 2 uses
  %.pn140 = phi ptr [ %i.db, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.10.0211, %bb.ac ]
  %.sroa.14.2 = phi ptr [ %i.de, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.14.0212, %bb.ac ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn140, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.085.0213, i64 8 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %.sroa.12.2.lcssa
  br i1 %i.dg, label %._crit_edge, label %.lr.ph214

bb.ah:                                            ; preds = %._crit_edge
  %i.dh = load ptr, ptr %4, align 8, !tbaa !142   ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit65, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.di = load ptr, ptr %i.cj, align 8, !tbaa !147
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dl) #27
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit65

_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit65: ; preds = %bb.ai, %bb.ah
  br i1 %i.at, label %._crit_edge220, label %.lr.ph219

._crit_edge220:                                   ; preds = %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit65
  %.not.i.i.i66 = icmp eq ptr %.sroa.0110.1, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge220
  %i.dm = ptrtoint ptr %.sroa.15.1 to i64
  %i.dn = ptrtoint ptr %.sroa.0110.1 to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0110.1, i64 noundef %i.do) #27
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit: ; preds = %._crit_edge220, %bb.aj
  %.not.i.i.i67 = icmp eq ptr %.sroa.0121.2.lcssa.a, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit68, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit
  %i.dp = ptrtoint ptr %.sroa.20.2.lcssa to i64
  %i.dq = ptrtoint ptr %.sroa.0121.2.lcssa.a to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.2.lcssa.a, i64 noundef %i.dr) #27
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit68

bb.al:                                            ; preds = %._crit_edge
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %4, align 8, !tbaa !142   ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = load ptr, ptr %i.cj, align 8, !tbaa !147
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #27
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72

_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70.loopexit: ; preds = %_ZNKSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70

_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70.loopexit.split-lp: ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70

_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70: ; preds = %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70.loopexit.split-lp, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %.sroa.088.0210, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0210, i64 noundef %i.cs) #27
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72

.lr.ph219:                                        ; preds = %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit65, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit
  %.sroa.081.0218 = phi ptr [ %i.es, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit ], [ %.sroa.0121.2.lcssa.a, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit65 ] ; 2 uses
  %i.dy = load ptr, ptr %.sroa.081.0218, align 8, !tbaa !138 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !135 ; 7 uses
  store ptr %i.ea, ptr %5, align 8, !tbaa !108
  store ptr null, ptr %i.dz, align 8, !tbaa !135
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !127
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !148
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !134
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !133, !range !49, !noundef !50
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 73
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !149, !range !49, !noundef !50
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = invoke noundef ptr @_ZN7rocksdb25CacheWithSecondaryAdapter7PromoteEOSt10unique_ptrINS_26SecondaryCacheResultHandleESt14default_deleteIS2_EERKNS_5SliceEPKNS_5Cache15CacheItemHelperENSA_8PriorityEPNS_10StatisticsEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef %i.ec, i32 noundef %i.ee, ptr noundef %i.eg, i1 noundef zeroext %i.ej, i1 noundef zeroext %i.em)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.lr.ph219
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !150
  %.not.i73 = icmp eq ptr %i.ea, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i: ; preds = %bb.ao
  %i.ep = load ptr, ptr %i.ea, align 8, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #24, !inline_history !126
  br label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ao, %_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.081.0218, i64 8 ; 2 uses
  %i.et = icmp eq ptr %i.es, %.sroa.12.2.lcssa
  br i1 %i.et, label %._crit_edge220, label %.lr.ph219

bb.ap:                                            ; preds = %.lr.ph219
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %.not.i74 = icmp eq ptr %i.ea, null
  br i1 %.not.i74, label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit76, label %_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i75

_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i75: ; preds = %bb.ap
  %i.ev = load ptr, ptr %i.ea, align 8, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #24, !inline_history !126
  br label %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit76

_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit76: ; preds = %bb.ap, %_ZNKSt14default_deleteIN7rocksdb26SecondaryCacheResultHandleEEclEPS1_.exit.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit68: ; preds = %bb.ak, %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit, %bb.a
  ret void

_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72: ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit146, %.loopexit.split-lp147, %bb.am, %bb.al, %bb.an, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit76, %bb.p
  %.sroa.0110.0180 = phi ptr [ %.sroa.0110.1, %bb.am ], [ %.sroa.0110.1, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit76 ], [ %.sroa.0110.1, %bb.p ], [ %.sroa.0110.0200, %.loopexit.split-lp147 ], [ %.sroa.0110.1, %bb.an ], [ %.sroa.0110.1, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70 ], [ %.sroa.0110.1, %bb.al ], [ %.sroa.0110.0200, %.loopexit146 ], [ %.sroa.0110.1, %.loopexit ], [ %.sroa.0110.1, %.loopexit.split-lp ] ; 3 uses
  %.sroa.15.0170 = phi ptr [ %.sroa.15.1, %bb.am ], [ %.sroa.15.1, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit76 ], [ %.sroa.15.1, %bb.p ], [ %.sroa.15.0202, %.loopexit.split-lp147 ], [ %.sroa.15.1, %bb.an ], [ %.sroa.15.1, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70 ], [ %.sroa.15.1, %bb.al ], [ %.sroa.15.0202, %.loopexit146 ], [ %.sroa.15.1, %.loopexit ], [ %.sroa.15.1, %.loopexit.split-lp ]
  %.sroa.0121.4.a = phi ptr [ %.sroa.0121.2.lcssa.a, %bb.am ], [ %.sroa.0121.2.lcssa.a, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit76 ], [ %.sroa.0121.1.a, %bb.p ], [ %.sroa.0121.0197, %.loopexit.split-lp147 ], [ %.sroa.0121.2.lcssa.a, %bb.an ], [ %.sroa.0121.2.lcssa.a, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70 ], [ %.sroa.0121.2.lcssa.a, %bb.al ], [ %.sroa.0121.0197, %.loopexit146 ], [ %.sroa.0121.2204, %.loopexit ], [ %.sroa.0121.2204, %.loopexit.split-lp ] ; 3 uses
  %.sroa.20.4 = phi ptr [ %.sroa.20.2.lcssa, %bb.am ], [ %.sroa.20.2.lcssa, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit76 ], [ %.sroa.20.1.a, %bb.p ], [ %.sroa.20.0199, %.loopexit.split-lp147 ], [ %.sroa.20.2.lcssa, %bb.an ], [ %.sroa.20.2.lcssa, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70 ], [ %.sroa.20.2.lcssa, %bb.al ], [ %.sroa.20.0199, %.loopexit146 ], [ %.sroa.20.2206, %.loopexit ], [ %.sroa.20.2206, %.loopexit.split-lp ]
  %.pn32 = phi { ptr, i32 } [ %i.ds, %bb.am ], [ %i.eu, %_ZNSt10unique_ptrIN7rocksdb26SecondaryCacheResultHandleESt14default_deleteIS1_EED2Ev.exit76 ], [ %i.as, %bb.p ], [ %lpad.loopexit.split-lp149, %.loopexit.split-lp147 ], [ %lpad.phi, %bb.an ], [ %lpad.phi, %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit70 ], [ %i.ds, %bb.al ], [ %lpad.loopexit148, %.loopexit146 ], [ %lpad.loopexit142, %.loopexit ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp ]
  %.not.i.i.i77 = icmp eq ptr %.sroa.0110.0180, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit78, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72
  %i.ey = ptrtoint ptr %.sroa.15.0170 to i64
  %i.ez = ptrtoint ptr %.sroa.0110.0180 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0110.0180, i64 noundef %i.fa) #27
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit78

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit78: ; preds = %_ZNSt6vectorIPN7rocksdb26SecondaryCacheResultHandleESaIS2_EED2Ev.exit72, %bb.aq
  %.not.i.i.i79 = icmp eq ptr %.sroa.0121.4.a, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit80, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit78
  %i.fb = ptrtoint ptr %.sroa.20.4 to i64
  %i.fc = ptrtoint ptr %.sroa.0121.4.a to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.4.a, i64 noundef %i.fd) #27
  br label %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit80

_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit80: ; preds = %_ZNSt6vectorIPN7rocksdb5Cache17AsyncLookupHandleESaIS3_EED2Ev.exit78, %bb.ar
  resume { ptr, i32 } %.pn32
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb25CacheWithSecondaryAdapter19GetPrintableOptionsB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !151  ; 5 uses
  %i.h = icmp sgt i64 %i.g, 9223372036854775788
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #28
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.i = add nsw i64 %i.g, 19                     ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !154    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.m = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.n = load i64, ptr %i.k, align 8, !tbaa !63
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.i, %i.o
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.p, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 19)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.c, %bb.d
  store i64 %i.i, ptr %i.f, align 8, !tbaa !151
  %i.q = load ptr, ptr %0, align 8, !tbaa !154
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 0, ptr %i.r, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %2, align 8, !tbaa !154    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !151  ; 6 uses
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !151 ; 5 uses
  %i.ab = sub i64 9223372036854775807, %i.aa
  %i.ac = icmp ult i64 %i.ab, %i.z
  br i1 %i.ac, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #28
          to label %.noexc8 unwind label %bb.p

.noexc8:                                          ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  %i.ad = add i64 %i.aa, %i.z                     ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.k
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !63
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.ad, %i.ai
  br i1 %.not.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not8.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.z, 1
  br i1 %cond.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.x, align 1, !tbaa !63
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !63
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.z)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.l
  store i64 %i.ad, ptr %i.f, align 8, !tbaa !151
  %i.al = load ptr, ptr %0, align 8, !tbaa !154
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store i8 0, ptr %i.am, align 1, !tbaa !63
  %i.an = load ptr, ptr %2, align 8, !tbaa !154   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !63
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.n:                                             ; preds = %bb.d, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.p:                                             ; preds = %bb.l, %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !154   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.p
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !63
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.o
  %.pn = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.au, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %i.as, %bb.n ]
  %i.ba = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.q
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !63
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK7rocksdb25CacheWithSecondaryAdapter4NameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
end_hunk_0
