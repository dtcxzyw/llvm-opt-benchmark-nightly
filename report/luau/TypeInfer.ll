Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeInfer?download=true
inline.NumInlined: 13252
inline.NumDeleted: 4925
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau11TypeChecker9checkExprERKSt10shared_ptrINS_5ScopeEERKNS_15AstExprFunctionESt8optionalIPKNS_4TypeEE:bb.a
bb.d:                                             ; preds = %_ZN4Luau11TypeChecker8quantifyERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeENS_8LocationE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.m, align 8, !tbaa !311
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !312
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !291
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #35, !inline_history !22
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !291
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #35, !inline_history !22
  br label %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !288
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.i, label %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit, !prof !313

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #35
  br label %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit

_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit: ; preds = %_ZN4Luau11TypeChecker8quantifyERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeENS_8LocationE.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret void

bb.j:                                             ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit.i, %bb.b, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau11TypeChecker9checkExprERKSt10shared_ptrINS_5ScopeEERKNS_12AstExprTableESt8optionalIPKNS_4TypeEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::WithPredicate.472") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr %4, i8 %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.Luau::RecursionCounter", align 8 ; 6 uses
  %7 = alloca %"class.std::vector.703", align 8   ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"struct.Luau::TypeIterator", align 8 ; 15 uses
  %10 = alloca %"struct.Luau::TypeIterator", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.Luau::UnionType", align 8 ; 10 uses
  %13 = alloca %"struct.Luau::WithPredicate.472", align 8 ; 8 uses
  %14 = alloca %"struct.Luau::WithPredicate.472", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1896 ; 2 uses
  call void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.c)
  %i.d = load i32, ptr @_ZN4FInt23LuauCheckRecursionLimitE, align 8, !tbaa !455 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 8, !tbaa !286
  %.not = icmp slt i32 %i.f, %i.d
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  invoke void @_ZN4Luau11TypeChecker25reportErrorCodeTooComplexERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.g)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !539
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !643
  store ptr %i.k, ptr %0, align 8, !tbaa !641
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  br label %bb.cs

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.f:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !935  ; 4 uses
  %i.q = icmp ugt i64 %i.p, 576460752303423487
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #38
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.f
  store i64 0, ptr %7, align 8
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.r = shl nuw nsw i64 %i.p, 4                  ; 3 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #37
          to label %.noexc125 unwind label %bb.m  ; 5 uses

.noexc125:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.s, ptr %7, align 8, !tbaa !937
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.p
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.s, i64 %i.r
  br label %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i

_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i, %.noexc125
  %i.u = phi ptr [ %i.s, %.noexc125 ], [ null, %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ]
  %.sink.i = phi ptr [ %i.t, %.noexc125 ], [ null, %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc125 ], [ null, %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sink.i, ptr %i.w, align 8, !tbaa !1556
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.v, align 8, !tbaa !1557
  %i.x = trunc nuw i8 %5 to i1
  br i1 %i.x, label %bb.h, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i
  %i.y = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %4)
          to label %bb.i unwind label %.loopexit.split-lp315.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr %i.y, align 8, !tbaa !545
  %i.aa = icmp eq i32 %i.z, 9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.aa, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, label %bb.n

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !725
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

bb.k:                                             ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !645, !range !104, !noundef !105
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.l, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !269
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !269
  br label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

bb.m:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKN4Luau4TypeES4_ESaIS5_EED2Ev.exit214

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.an = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %4)
          to label %bb.o unwind label %.loopexit.split-lp315.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %.not.i.i126 = icmp eq ptr %i.an, null
  br i1 %.not.i.i126, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !545
  %i.ap = icmp eq i32 %i.ao, 13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = select i1 %i.ap, ptr %i.aq, ptr null
  br label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.o, %bb.p, %bb.k, %bb.l, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i
  %.sroa.0270.0 = phi ptr [ undef, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.al, %bb.l ], [ undef, %bb.k ], [ undef, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ undef, %bb.p ], [ undef, %bb.o ]
  %15 = phi i1 [ false, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ true, %bb.l ], [ false, %bb.k ], [ false, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ false, %bb.p ], [ false, %bb.o ]
  %.sroa.8.0 = phi i8 [ 0, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ 1, %bb.l ], [ 0, %bb.k ], [ 0, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ 0, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %.sroa.0275.0 = phi ptr [ undef, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.aj, %bb.l ], [ undef, %bb.k ], [ undef, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ undef, %bb.p ], [ undef, %bb.o ] ; 2 uses
  %.285 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ null, %bb.l ], [ null, %bb.k ], [ null, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ %i.ar, %bb.p ], [ null, %bb.o ] ; 3 uses
  %.175 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIPKN4Luau4TypeES4_ESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.ab, %bb.l ], [ %i.ab, %bb.k ], [ null, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ null, %bb.p ], [ null, %bb.o ] ; 3 uses
  %i.as = load i64, ptr %i.o, align 8, !tbaa !935
  %.not363 = icmp eq i64 %i.as, 0
  br i1 %.not363, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %.not95 = icmp eq ptr %.175, null
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.175, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.175, i64 8 ; 6 uses
  %.not96 = icmp eq ptr %.285, null
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 24
  br label %bb.q

._crit_edge:                                      ; preds = %bb.co, %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %i.bp = phi ptr [ %i.u, %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit ], [ %i.la, %bb.co ] ; 3 uses
  %i.bq = invoke noundef ptr @_ZN4Luau11TypeChecker14checkExprTableERKSt10shared_ptrINS_5ScopeEERKNS_12AstExprTableERKSt6vectorISt4pairIPKNS_4TypeESD_ESaISE_EESt8optionalISD_E(ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %4, i8 %5)
          to label %bb.cp unwind label %.loopexit.split-lp315.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %.lr.ph, %bb.co
  %.080362 = phi i64 [ 0, %.lr.ph ], [ %i.lw, %bb.co ] ; 5 uses
  %.sroa.8.1361 = phi i8 [ %.sroa.8.0, %.lr.ph ], [ %.sroa.8.2, %bb.co ] ; 5 uses
  %.sroa.0270.1360 = phi ptr [ %.sroa.0270.0, %.lr.ph ], [ %.sroa.0270.2, %bb.co ] ; 5 uses
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !938
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.080362 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !941
  switch i32 %i.bt, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit [
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

bb.s:                                             ; preds = %bb.q, %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !942 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !96
  %i.by = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !75
  %i.bz = icmp ne i32 %i.bx, %i.by
  %.not94295 = icmp eq ptr %i.bv, null
  %.not94 = or i1 %.not94295, %i.bz
  br i1 %.not94, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not95, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !770 ; 4 uses
  store ptr %i.at, ptr %8, align 8, !tbaa !287
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc127 unwind label %.loopexit.split-lp310.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !608
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.w
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc128 unwind label %.loopexit.split-lp310.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc128:                                        ; preds = %.noexc.i
  store ptr %i.cf, ptr %8, align 8, !tbaa !81
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !608
  store i64 %i.cg, ptr %i.at, align 8, !tbaa !288
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc128, %bb.w
  %i.ch = phi ptr [ %i.cf, %.noexc128 ], [ %i.at, %bb.w ] ; 2 uses
  switch i64 %i.cd, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !288
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !288
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr nonnull align 1 %i.cb, i64 %i.cd, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !608 ; 2 uses
  store i64 %i.cj, ptr %i.au, align 8, !tbaa !133
  %i.ck = load ptr, ptr %8, align 8, !tbaa !81
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 0, ptr %i.cl, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.cm = load ptr, ptr %i.av, align 8, !tbaa !760 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cm, null
  %.pre = load ptr, ptr %8, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z
  %i.cn = load i64, ptr %i.au, align 8, !tbaa !133 ; 4 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cp) ; 2 uses
  %i.cq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.cq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !81
  %i.ct = call i32 @memcmp(ptr noundef %i.cs, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.aa
  %i.cu = sub i64 %i.cp, %i.cn
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ct, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.cv = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !761 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.aa, !llvm.loop !16

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.cw = icmp eq ptr %.19.i.i.i, %i.aw
  br i1 %i.cw, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cn) ; 2 uses
  %i.cz = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.cz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !81
  %i.dc = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.db, i64 noundef %.sroa.speculated.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ab
  %i.dd = sub i64 %i.cn, %i.cy
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dd, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.dc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.de = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.de, ptr %i.aw, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.z
  %.sroa.0.0.i.i = phi ptr [ %i.aw, %bb.z ], [ %i.aw, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.df = icmp eq ptr %.pre, %i.at
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.dg = load i64, ptr %i.at, align 8, !tbaa !288
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %.not296 = icmp eq ptr %.sroa.0.0.i.i, %i.aw
  br i1 %.not296, label %bb.ad, label %bb.ac

end_hunk_0
begin_hunk_1_@_ZN4Luau11TypeChecker18checkLValueBindingERKSt10shared_ptrINS_5ScopeEERKNS_16AstExprIndexExprENS_12ValueContextE:bb.a
  %.not.i.i.i1200 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i1200, label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %.loopexit946
  call void @_ZdlPv(ptr noundef nonnull %i.tb) #35
  br label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit

_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit: ; preds = %.loopexit946, %bb.cz
  %i.tc = load ptr, ptr %27, align 8, !tbaa !1010
  %i.td = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.te = load i64, ptr %i.td, align 8, !tbaa !1014
  %i.tf = shl i64 %i.te, 4
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tf) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  %i.tg = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !1018 ; 2 uses
  %.not.i.i.i1201 = icmp eq ptr %i.th, null
  br i1 %.not.i.i.i1201, label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit1202, label %bb.da

bb.da:                                            ; preds = %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.th) #35
  br label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit1202

_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit1202: ; preds = %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit, %bb.da
  %i.ti = load ptr, ptr %26, align 8, !tbaa !1010
  %i.tj = load i64, ptr %i.om, align 8, !tbaa !1014
  %i.tk = shl i64 %i.tj, 4
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tk) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br i1 %.0.i.i4441169, label %.split886, label %.thread876

.loopexit.split-lp942.loopexit.split-lp:          ; preds = %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter476
  %.sroa.39.9 = phi ptr [ %.sroa.39.6, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter476 ], [ %.sroa.39.8, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.39.7.ph.ph, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.39.6, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.01320.9 = phi ptr [ %.sroa.01320.6, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter476 ], [ %.sroa.01320.8, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.01320.7.ph.ph, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.01320.6, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn311 = phi { ptr, i32 } [ %i.rb, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter476 ], [ %lpad.loopexit1471, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit1473, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1474, %.loopexit.split-lp942.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %27) #35
  br label %bb.db

bb.db:                                            ; preds = %.loopexit.split-lp942.loopexit.split-lp, %bb.ch
  %.sroa.39.10 = phi ptr [ %.sroa.39.9, %.loopexit.split-lp942.loopexit.split-lp ], [ %.sroa.39.18, %bb.ch ]
  %.sroa.01320.10 = phi ptr [ %.sroa.01320.9, %.loopexit.split-lp942.loopexit.split-lp ], [ %.sroa.22.8, %bb.ch ]
  %.pn311.pn = phi { ptr, i32 } [ %.pn311, %.loopexit.split-lp942.loopexit.split-lp ], [ %i.ph, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  call void @_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %26) #35
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cg
  %.sroa.39.11 = phi ptr [ %.sroa.39.10, %bb.db ], [ %.sroa.39.18, %bb.cg ]
  %.sroa.01320.11 = phi ptr [ %.sroa.01320.10, %bb.db ], [ %.sroa.22.8, %bb.cg ]
  %.pn311.pn.pn = phi { ptr, i32 } [ %.pn311.pn, %bb.db ], [ %i.pg, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit580

.thread845:                                       ; preds = %.thread821, %.thread728
  %.not281737826.ph851.ph = phi i1 [ %.not281733, %.thread821 ], [ %.not281, %.thread728 ]
  %..i734828.ph850.ph = phi ptr [ %..i734827, %.thread821 ], [ %..i, %.thread728 ]
  %i.tl = call noundef ptr @_ZN4Luau19getMutableTableTypeEPKNS_4TypeE(ptr noundef %i.aw) ; 2 uses
  %.not300.not = icmp eq ptr %i.tl, null
  br i1 %.not300.not, label %bb.dd, label %_ZNKSt6vectorIPN4Luau9TableTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i1204

_ZNKSt6vectorIPN4Luau9TableTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i1204: ; preds = %.thread845
  %i.tm = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37 ; 4 uses
  store ptr %i.tl, ptr %i.tm, align 8, !tbaa !1679
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 4 uses
  br i1 %.not281737826.ph851.ph, label %.thread1409, label %.lr.ph

bb.dd:                                            ; preds = %.thread845
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  %i.to = load ptr, ptr %i.d, align 8, !tbaa !682
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  store i32 3, ptr %31, align 8, !tbaa !303
  %i.tq = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.tr = ptrtoint ptr %i.aw to i64               ; 2 uses
  store i64 %i.tr, ptr %i.tq, align 8, !tbaa !269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %30, ptr noundef nonnull align 4 dereferenceable(16) %i.tp, i64 16, i1 false), !tbaa.struct !506
  %i.ts = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 4 uses
  store ptr %i.tt, ptr %i.ts, align 8, !tbaa !287
  %i.tu = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i64 0, ptr %i.tu, align 8, !tbaa !133
  store i8 0, ptr %i.tt, align 8, !tbaa !288
  %i.tv = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  store i32 3, ptr %i.tv, align 8, !tbaa !303
  %i.tw = getelementptr inbounds nuw i8, ptr %30, i64 56 ; 2 uses
  store i64 %i.tr, ptr %i.tw, align 8, !tbaa !269
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !347 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 928
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !509
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit1220, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ty, i64 856
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.uc, ptr noundef nonnull align 8 dereferenceable(184) %30)
          to label %.noexc1218 unwind label %.body1217

.noexc1218:                                       ; preds = %bb.de
  %i.ud = load ptr, ptr %i.tx, align 8, !tbaa !347 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 864
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !536
  %i.uh = getelementptr inbounds i8, ptr %i.ug, i64 -168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.uh, ptr noundef nonnull align 8 dereferenceable(32) %i.ue)
          to label %.noexc1218._ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit1220_crit_edge unwind label %.body1217

.noexc1218._ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit1220_crit_edge: ; preds = %.noexc1218
  %.pre2000 = load i32, ptr %i.tv, align 8, !tbaa !303
  %i.ui = sext i32 %.pre2000 to i64
  br label %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit1220

_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit1220: ; preds = %.noexc1218._ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit1220_crit_edge, %bb.dd
  %i.uj = phi i64 [ %i.ui, %.noexc1218._ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit1220_crit_edge ], [ 3, %bb.dd ]
  %i.uk = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.uj
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !82
  invoke void %i.ul(ptr noundef nonnull %i.tw)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1222 unwind label %bb.df

bb.df:                                            ; preds = %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit1220
  %i.um = landingpad { ptr, i32 }
          catch ptr null
  %i.un = extractvalue { ptr, i32 } %i.um, 0
  call void @__clang_call_terminate(ptr %i.un) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1222: ; preds = %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit1220
  %i.uo = load ptr, ptr %i.ts, align 8, !tbaa !81 ; 2 uses
  %i.up = icmp eq ptr %i.uo, %i.tt
  br i1 %i.up, label %_ZN4Luau9TypeErrorD2Ev.exit1225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1223: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1222
  %i.uq = load i64, ptr %i.tt, align 8, !tbaa !288
  %i.ur = add i64 %i.uq, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.ur) #36
  br label %_ZN4Luau9TypeErrorD2Ev.exit1225

_ZN4Luau9TypeErrorD2Ev.exit1225:                  ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1223
  %i.us = load i32, ptr %31, align 8, !tbaa !303
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.ut
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !82
  invoke void %i.uv(ptr noundef nonnull %i.tq)
          to label %.thread876.thread unwind label %bb.dg

bb.dg:                                            ; preds = %_ZN4Luau9TypeErrorD2Ev.exit1225
  %i.uw = landingpad { ptr, i32 }
          catch ptr null
  %i.ux = extractvalue { ptr, i32 } %i.uw, 0
  call void @__clang_call_terminate(ptr %i.ux) #34
  unreachable

.thread876.thread:                                ; preds = %_ZN4Luau9TypeErrorD2Ev.exit1225
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !539
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 168
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !643
  br label %_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit

.body1217:                                        ; preds = %.noexc1218, %bb.de
  %i.vc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau9TypeErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %30) #35
  %i.vd = load i32, ptr %31, align 8, !tbaa !303
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !82
  invoke void %i.vg(ptr noundef nonnull %i.tq)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter495 unwind label %bb.dh

bb.dh:                                            ; preds = %.body1217
  %i.vh = landingpad { ptr, i32 }
          catch ptr null
  %i.vi = extractvalue { ptr, i32 } %i.vh, 0
  call void @__clang_call_terminate(ptr %i.vi) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter495: ; preds = %.body1217
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  br label %_ZNSt6vectorIPN4Luau9TableTypeESaIS2_EED2Ev.exit660

.split886:                                        ; preds = %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit1202
  br i1 %.not281733, label %.sink.split, label %bb.di

.split:                                           ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit1192
  br i1 %.not281733, label %.sink.split, label %bb.di

.thread1409:                                      ; preds = %_ZNKSt6vectorIPN4Luau9TableTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i1204
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #35
  %i.vj = getelementptr inbounds nuw i8, ptr %38, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %38, i8 0, i64 32, i1 false)
  br label %.lr.ph969

bb.di:                                            ; preds = %.split, %.split886
  %.sroa.39.13 = phi ptr [ %.sroa.39.6, %.split886 ], [ %.sroa.39.0, %.split ] ; 2 uses
  %.sroa.22.5 = phi ptr [ %.sroa.22.2, %.split886 ], [ %.sroa.22.0, %.split ] ; 3 uses
  %.sroa.01320.13 = phi ptr [ %.sroa.01320.6, %.split886 ], [ %.sroa.01320.0, %.split ] ; 3 uses
  %43 = phi i1 [ false, %.split886 ], [ true, %.split ]
  %.3264883 = phi i8 [ 0, %.split886 ], [ 1, %.split ] ; 2 uses
  %.not964 = icmp eq ptr %.sroa.01320.13, %.sroa.22.5
  br i1 %.not964, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt6vectorIPN4Luau9TableTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i1204, %bb.di
  %..i7348288378821373 = phi ptr [ %..i734827, %bb.di ], [ %..i734828.ph850.ph, %_ZNKSt6vectorIPN4Luau9TableTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i1204 ]
  %.32648831371 = phi i8 [ %.3264883, %bb.di ], [ 1, %_ZNKSt6vectorIPN4Luau9TableTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i1204 ] ; 2 uses
  %44 = phi i1 [ %43, %bb.di ], [ true, %_ZNKSt6vectorIPN4Luau9TableTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i1204 ]
  %.sroa.01320.131365 = phi ptr [ %.sroa.01320.13, %bb.di ], [ %i.tm, %_ZNKSt6vectorIPN4Luau9TableTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i1204 ] ; 8 uses
  %.sroa.22.51363 = phi ptr [ %.sroa.22.5, %bb.di ], [ %i.tn, %_ZNKSt6vectorIPN4Luau9TableTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i1204 ] ; 3 uses
  %.sroa.39.131358 = phi ptr [ %.sroa.39.13, %bb.di ], [ %i.tn, %_ZNKSt6vectorIPN4Luau9TableTypeESaIS2_EE12_M_check_lenEmPKc.exit.i.i1204 ] ; 7 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %..i7348288378821373, i64 32 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 5 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.vn = icmp eq i32 %3, 0
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.vq = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %33, i64 8
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit
  %.sroa.42.1 = phi i64 [ 0, %.lr.ph ], [ %.sroa.42.2, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit ] ; 8 uses
  %.sroa.27.1 = phi i64 [ 0, %.lr.ph ], [ %.sroa.27.5, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit ] ; 15 uses
  %.sroa.01843.1 = phi ptr [ null, %.lr.ph ], [ %.sroa.01843.5, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit ] ; 16 uses
  %.sroa.0697.0965 = phi ptr [ %.sroa.01320.131365, %.lr.ph ], [ %i.adb, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit ] ; 2 uses
  %i.vs = load ptr, ptr %.sroa.0697.0965, align 8, !tbaa !1679 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #35
  %i.vt = load ptr, ptr %i.vk, align 8, !tbaa !770 ; 4 uses
  store ptr %i.vl, ptr %32, align 8, !tbaa !287
  %i.vu = icmp eq ptr %i.vt, null
  br i1 %i.vu, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc498 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc498:                                        ; preds = %bb.dk
  unreachable

bb.dl:                                            ; preds = %bb.dj
  %i.vv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vt) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.vv, ptr %i.b, align 8, !tbaa !608
  %i.vw = icmp ugt i64 %i.vv, 15
  br i1 %i.vw, label %.noexc.i497, label %._crit_edge.i.i496

.noexc.i497:                                      ; preds = %bb.dl
  %i.vx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc499 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc499:                                        ; preds = %.noexc.i497
  store ptr %i.vx, ptr %32, align 8, !tbaa !81
  %i.vy = load i64, ptr %i.b, align 8, !tbaa !608
  store i64 %i.vy, ptr %i.vl, align 8, !tbaa !288
  br label %._crit_edge.i.i496

._crit_edge.i.i496:                               ; preds = %.noexc499, %bb.dl
  %i.vz = phi ptr [ %i.vx, %.noexc499 ], [ %i.vl, %bb.dl ] ; 2 uses
  switch i64 %i.vv, label %bb.dn [
    i64 1, label %bb.dm
    i64 0, label %bb.do
  ]

bb.dm:                                            ; preds = %._crit_edge.i.i496
  %i.wa = load i8, ptr %i.vt, align 1, !tbaa !288
  store i8 %i.wa, ptr %i.vz, align 1, !tbaa !288
  br label %bb.do

bb.dn:                                            ; preds = %._crit_edge.i.i496
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vz, ptr nonnull align 1 %i.vt, i64 %i.vv, i1 false)
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %._crit_edge.i.i496
  %i.wb = load i64, ptr %i.b, align 8, !tbaa !608 ; 2 uses
  store i64 %i.wb, ptr %i.vm, align 8, !tbaa !133
  %i.wc = load ptr, ptr %32, align 8, !tbaa !81
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.wb
  store i8 0, ptr %i.wd, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.we = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !760 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vs, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.wf, null
  %.pre1000 = load ptr, ptr %32, align 8          ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.do
  %i.wh = load i64, ptr %i.vm, align 8, !tbaa !133 ; 4 uses
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.wf, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.wg, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.wi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.wh, i64 %i.wj) ; 2 uses
  %i.wk = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.wk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.dp
  %i.wl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !81
  %i.wn = call i32 @memcmp(ptr noundef %i.wm, ptr noundef %.pre1000, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.wn, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.dp
  %i.wo = sub i64 %i.wj, %i.wh
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.wo, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.wn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.wp = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.wp, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.wp, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !761 ; 2 uses
  %.not.i.i.i501 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i501, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.dp, !llvm.loop !30

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.wq = icmp eq ptr %.19.i.i.i, %i.wg
  br i1 %i.wq, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.wr = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ws, i64 %i.wh) ; 2 uses
  %i.wt = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.wt, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.dq
  %i.wu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !81
  %i.ww = call i32 @memcmp(ptr noundef %.pre1000, ptr noundef %i.wv, i64 noundef %.sroa.speculated.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ww, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.dq
  %i.wx = sub i64 %i.wh, %i.ws
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.wx, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ww, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.wy = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.wy, ptr %i.wg, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.do
  %.sroa.0.0.i.i = phi ptr [ %i.wg, %bb.do ], [ %i.wg, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.wz = icmp eq ptr %.pre1000, %i.vl
  br i1 %i.wz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.xa = load i64, ptr %i.vl, align 8, !tbaa !288
  %i.xb = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %.pre1000, i64 noundef %i.xb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i502
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #35
  %.not919 = icmp eq ptr %.sroa.0.0.i.i, %i.wg
  br i1 %.not919, label %bb.ee, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit504
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.xd = invoke noundef ptr @_ZNK4Luau8Property15type_DEPRECATEDEv(ptr noundef nonnull align 8 dereferenceable(176) %i.xc)
          to label %bb.ds unwind label %bb.fa     ; 6 uses

bb.ds:                                            ; preds = %bb.dr
  %i.xe = mul i64 %.sroa.27.1, 3
  %i.xf = lshr i64 %i.xe, 2
  %.not.i.i505 = icmp ult i64 %.sroa.42.1, %i.xf
  br i1 %.not.i.i505, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.xg = icmp eq i64 %.sroa.42.1, 0
  %i.xh = icmp eq ptr %i.xd, null
  %or.cond = or i1 %i.xg, %i.xh
  br i1 %or.cond, label %.loopexit.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xi = add i64 %.sroa.27.1, -1                 ; 2 uses
  %i.xj = ptrtoint ptr %i.xd to i64
  %i.xk = mul i64 %i.xj, -4658895280553007687     ; 2 uses
  %i.xl = lshr i64 %i.xk, 31
  %i.xm = xor i64 %i.xl, %i.xk
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dx, %bb.du
  %.pn.i.i.i = phi i64 [ %i.xm, %bb.du ], [ %i.xs, %bb.dx ]
  %.01832.i.i.i = phi i64 [ 0, %bb.du ], [ %i.xr, %bb.dx ]
  %.01933.i.i.i = and i64 %.pn.i.i.i, %i.xi       ; 2 uses
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.1, i64 %.01933.i.i.i
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !269 ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.xd
  br i1 %i.xp, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.xq = icmp eq ptr %i.xo, null
  br i1 %i.xq, label %.loopexit.i.i, label %bb.dx
end_hunk_1
begin_hunk_2_@_ZN4Luau11TypeChecker18checkLValueBindingERKSt10shared_ptrINS_5ScopeEERKNS_16AstExprIndexExprENS_12ValueContextE:bb.a
  br i1 %.not.i.i.i525, label %.loopexit.i.i526, label %bb.eq, !llvm.loop !40

.loopexit.i.i526:                                 ; preds = %bb.es, %bb.er, %bb.eo
  %i.abe = icmp eq i64 %.sroa.27.1, 0             ; 2 uses
  %i.abf = shl i64 %.sroa.27.1, 1                 ; 2 uses
  %spec.select.i1226 = select i1 %i.abe, i64 16, i64 %i.abf ; 4 uses
  %.not.i.i1227 = icmp eq i64 %spec.select.i1226, 0
  br i1 %.not.i.i1227, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.i1234, label %.lr.ph.preheader.i.i.i1228

.lr.ph.preheader.i.i.i1228:                       ; preds = %.loopexit.i.i526
  %i.abg = shl i64 %spec.select.i1226, 3          ; 2 uses
  %i.abh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abg) #39
          to label %.lr.ph.i.i.i1230.preheader unwind label %bb.fa ; 2 uses

.lr.ph.i.i.i1230.preheader:                       ; preds = %.lr.ph.preheader.i.i.i1228
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.abh, i8 0, i64 %i.abg, i1 false), !tbaa !269
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.i1234

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.i1234: ; preds = %.lr.ph.i.i.i1230.preheader, %.loopexit.i.i526
  %.sroa.0.0.i1235 = phi ptr [ null, %.loopexit.i.i526 ], [ %i.abh, %.lr.ph.i.i.i1230.preheader ] ; 6 uses
  br i1 %i.abe, label %._crit_edge28.i1250, label %.lr.ph27.i1238

.lr.ph27.i1238:                                   ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.i1234
  %i.abi = add i64 %i.abf, -1                     ; 3 uses
  br label %bb.eu

._crit_edge28.i1250:                              ; preds = %bb.ex, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.i1234
  %.not.i11.i1251 = icmp eq ptr %.sroa.01843.1, null
  br i1 %.not.i11.i1251, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i528, label %bb.et

bb.et:                                            ; preds = %._crit_edge28.i1250
  call void @_ZdlPv(ptr noundef nonnull %.sroa.01843.1) #35
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i528

bb.eu:                                            ; preds = %bb.ex, %.lr.ph27.i1238
  %.026.i1239 = phi i64 [ 0, %.lr.ph27.i1238 ], [ %i.acd, %bb.ex ] ; 2 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.1, i64 %.026.i1239
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !269 ; 5 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.abm = ptrtoint ptr %i.abk to i64
  %i.abn = mul i64 %i.abm, -4658895280553007687   ; 2 uses
  %i.abo = lshr i64 %i.abn, 31
  %i.abp = xor i64 %i.abo, %i.abn
  %.02136.i22.i1240 = and i64 %i.abp, %i.abi      ; 3 uses
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i1235, i64 %.02136.i22.i1240
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !269 ; 2 uses
  %i.abs = icmp eq ptr %i.abr, null
  br i1 %i.abs, label %._crit_edge.i1246, label %.lr.ph.i1241

._crit_edge.i1246:                                ; preds = %bb.ew, %bb.ev
  %.02136.i.lcssa21.i1247 = phi i64 [ %.02136.i22.i1240, %bb.ev ], [ %.02136.i.i1245, %bb.ew ]
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i1235, i64 %.02136.i.lcssa21.i1247 ; 2 uses
  store ptr %i.abk, ptr %i.abt, align 8, !tbaa !269
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i1248

.lr.ph.i1241:                                     ; preds = %bb.ev, %bb.ew
  %i.abu = phi ptr [ %i.abz, %bb.ew ], [ %i.abr, %bb.ev ]
  %.02136.i24.i1242 = phi i64 [ %.02136.i.i1245, %bb.ew ], [ %.02136.i22.i1240, %bb.ev ] ; 2 uses
  %.02035.i23.i1243 = phi i64 [ %i.abw, %bb.ew ], [ 0, %bb.ev ]
  %i.abv = icmp eq ptr %i.abu, %i.abk
  br i1 %i.abv, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.loopexit.i, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph.i1241
  %i.abw = add i64 %.02035.i23.i1243, 1           ; 3 uses
  %i.abx = add i64 %i.abw, %.02136.i24.i1242
  %.not.i12.i1244 = icmp ule i64 %i.abw, %i.abi
  call void @llvm.assume(i1 %.not.i12.i1244)
  %.02136.i.i1245 = and i64 %i.abx, %i.abi        ; 3 uses
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i1235, i64 %.02136.i.i1245
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !269 ; 2 uses
  %i.aca = icmp eq ptr %i.abz, null
  br i1 %i.aca, label %._crit_edge.i1246, label %.lr.ph.i1241

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.loopexit.i: ; preds = %.lr.ph.i1241
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i1235, i64 %.02136.i24.i1242
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i1248

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i1248: ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.loopexit.i, %._crit_edge.i1246
  %i.acc = phi ptr [ %i.abt, %._crit_edge.i1246 ], [ %i.acb, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.loopexit.i ]
  store ptr %i.abk, ptr %i.acc, align 8, !tbaa !269
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i1248, %bb.eu
  %i.acd = add nuw i64 %.026.i1239, 1             ; 2 uses
  %exitcond.not.i1249 = icmp eq i64 %i.acd, %.sroa.27.1
  br i1 %exitcond.not.i1249, label %._crit_edge28.i1250, label %bb.eu, !llvm.loop !41

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i528: ; preds = %bb.eq, %._crit_edge28.i1250, %bb.et, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit
  %.sroa.27.3 = phi i64 [ %.sroa.27.1, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit ], [ %spec.select.i1226, %._crit_edge28.i1250 ], [ %spec.select.i1226, %bb.et ], [ %.sroa.27.1, %bb.eq ] ; 3 uses
  %.sroa.01843.3 = phi ptr [ %.sroa.01843.1, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit ], [ %.sroa.0.0.i1235, %._crit_edge28.i1250 ], [ %.sroa.0.0.i1235, %bb.et ], [ %.sroa.01843.1, %bb.eq ] ; 5 uses
  %i.ace = add i64 %.sroa.27.3, -1                ; 3 uses
  %i.acf = ptrtoint ptr %i.zs to i64
  %i.acg = mul i64 %i.acf, -4658895280553007687   ; 2 uses
  %i.ach = lshr i64 %i.acg, 31
  %i.aci = xor i64 %i.ach, %i.acg
  %.02136.i6.i529 = and i64 %i.ace, %i.aci        ; 3 uses
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.3, i64 %.02136.i6.i529
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !269 ; 2 uses
  %i.acl = icmp eq ptr %i.ack, null
  br i1 %i.acl, label %._crit_edge.i535, label %.lr.ph.i530

._crit_edge.i535:                                 ; preds = %bb.ey, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i528
  %.02136.i.lcssa5.i536 = phi i64 [ %.02136.i6.i529, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i528 ], [ %.02136.i.i534, %bb.ey ]
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.3, i64 %.02136.i.lcssa5.i536
  store ptr %i.zs, ptr %i.acm, align 8, !tbaa !269
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit.sink.split

.lr.ph.i530:                                      ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i528, %bb.ey
  %i.acn = phi ptr [ %i.acs, %bb.ey ], [ %i.ack, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i528 ]
  %.02136.i8.i531 = phi i64 [ %.02136.i.i534, %bb.ey ], [ %.02136.i6.i529, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i528 ]
  %.02035.i7.i532 = phi i64 [ %i.acp, %bb.ey ], [ 0, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i528 ]
  %i.aco = icmp eq ptr %i.acn, %i.zs
  br i1 %i.aco, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph.i530
  %i.acp = add i64 %.02035.i7.i532, 1             ; 3 uses
  %i.acq = add i64 %i.acp, %.02136.i8.i531
  %.not.i3.i533 = icmp ule i64 %i.acp, %i.ace
  call void @llvm.assume(i1 %.not.i3.i533)
  %.02136.i.i534 = and i64 %i.acq, %i.ace         ; 3 uses
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.3, i64 %.02136.i.i534
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !269 ; 2 uses
  %i.act = icmp eq ptr %i.acs, null
  br i1 %i.act, label %._crit_edge.i535, label %.lr.ph.i530

.loopexit.split-lp928.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i514, %bb.eg
  %lpad.loopexit.split-lp2328 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

bb.ez:                                            ; preds = %bb.ek
  %i.acu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acv = load ptr, ptr %33, align 8, !tbaa !81  ; 2 uses
  %i.acw = icmp eq ptr %i.acv, %i.vq
  br i1 %i.acw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %bb.ez
  %i.acx = load i64, ptr %i.vq, align 8, !tbaa !288
  %i.acy = add i64 %i.acx, 1
  call void @_ZdlPvm(ptr noundef %i.acv, i64 noundef %i.acy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %bb.ez, %.loopexit.split-lp928.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540
  %.pn348 = phi { ptr, i32 } [ %i.acu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540 ], [ %lpad.loopexit.split-lp2328, %.loopexit.split-lp928.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.acu, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #35
  br label %bb.gh

bb.fa:                                            ; preds = %.lr.ph.preheader.i.i.i1228, %bb.dr, %.lr.ph.preheader.i.i.i, %bb.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit.sink.split: ; preds = %._crit_edge.i, %._crit_edge.i535
  %.sroa.27.4 = phi i64 [ %.sroa.27.3, %._crit_edge.i535 ], [ %.sroa.27.2, %._crit_edge.i ]
  %.sroa.01843.4 = phi ptr [ %.sroa.01843.3, %._crit_edge.i535 ], [ %.sroa.01843.2, %._crit_edge.i ]
  %i.ada = add i64 %.sroa.42.1, 1
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit: ; preds = %.lr.ph.i, %.lr.ph.i530, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit.sink.split, %bb.ee
  %.sroa.42.2 = phi i64 [ %i.ada, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit.sink.split ], [ %.sroa.42.1, %.lr.ph.i530 ], [ %.sroa.42.1, %bb.ee ], [ %.sroa.42.1, %.lr.ph.i ] ; 2 uses
  %.sroa.27.5 = phi i64 [ %.sroa.27.4, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit.sink.split ], [ %.sroa.27.3, %.lr.ph.i530 ], [ %.sroa.27.1, %bb.ee ], [ %.sroa.27.2, %.lr.ph.i ] ; 18 uses
  %.sroa.01843.5 = phi ptr [ %.sroa.01843.4, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit.sink.split ], [ %.sroa.01843.3, %.lr.ph.i530 ], [ %.sroa.01843.1, %bb.ee ], [ %.sroa.01843.2, %.lr.ph.i ] ; 18 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.0697.0965, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.adb, %.sroa.22.51363
  br i1 %.not, label %._crit_edge, label %bb.dj

._crit_edge:                                      ; preds = %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE6insertERKS3_.exit
  switch i64 %.sroa.42.2, label %bb.fd [
    i64 1, label %bb.fb
    i64 0, label %._crit_edge.thread.thread
  ]

bb.fb:                                            ; preds = %._crit_edge
  %.not.i.i543 = icmp eq i64 %.sroa.27.5, 0
  br i1 %.not.i.i543, label %.split895.thread, label %.lr.ph.i.i544

.lr.ph.i.i544:                                    ; preds = %bb.fb, %bb.fc
  %.04.i.i = phi i64 [ %i.adf, %bb.fc ], [ 0, %bb.fb ] ; 3 uses
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.5, i64 %.04.i.i
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !269
  %i.ade = icmp eq ptr %i.add, null
  br i1 %i.ade, label %bb.fc, label %.split895.thread

bb.fc:                                            ; preds = %.lr.ph.i.i544
  %i.adf = add nuw i64 %.04.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.adf, %.sroa.27.5
  br i1 %exitcond.not.i.i, label %.split895.thread, label %.lr.ph.i.i544, !llvm.loop !1671

.split895.thread:                                 ; preds = %bb.fc, %.lr.ph.i.i544, %bb.fb
  %.0.lcssa.i.i = phi i64 [ 0, %bb.fb ], [ %.sroa.27.5, %bb.fc ], [ %.04.i.i, %.lr.ph.i.i544 ]
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.5, i64 %.0.lcssa.i.i
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !269
  call void @_ZdlPv(ptr noundef nonnull %.sroa.01843.5) #35
  br label %.thread876

bb.fd:                                            ; preds = %._crit_edge
  br i1 %44, label %bb.fe, label %bb.fx

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #35
  %.not.i.i545 = icmp eq i64 %.sroa.27.5, 0
  br i1 %.not.i.i545, label %.loopexit923, label %.lr.ph.i.i546

.lr.ph.i.i546:                                    ; preds = %bb.fe, %bb.ff
  %.04.i.i547 = phi i64 [ %i.adl, %bb.ff ], [ 0, %bb.fe ] ; 3 uses
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.5, i64 %.04.i.i547
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !269
  %i.adk = icmp eq ptr %i.adj, null
  br i1 %i.adk, label %bb.ff, label %.loopexit923

bb.ff:                                            ; preds = %.lr.ph.i.i546
  %i.adl = add nuw i64 %.04.i.i547, 1             ; 2 uses
  %exitcond.not.i.i551 = icmp eq i64 %i.adl, %.sroa.27.5
  br i1 %exitcond.not.i.i551, label %.loopexit923.thread, label %.lr.ph.i.i546, !llvm.loop !1671

.loopexit923.thread:                              ; preds = %bb.ff
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  br label %.loopexit1888

.loopexit923:                                     ; preds = %.lr.ph.i.i546, %bb.fe
  %.0.lcssa.i.i548 = phi i64 [ 0, %bb.fe ], [ %.04.i.i547, %.lr.ph.i.i546 ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %.not1887 = icmp eq i64 %.0.lcssa.i.i548, %.sroa.27.5
  br i1 %.not1887, label %.loopexit1888, label %.lr.ph.split.i.i.i1792

.lr.ph.split.i.i.i1792:                           ; preds = %.loopexit923, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797
  %.06.i.i.i1793 = phi i64 [ %i.adt, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797 ], [ 0, %.loopexit923 ] ; 2 uses
  %.sroa.3.05.i.i.i1794 = phi i64 [ %.lcssa.i.i.i.i1798, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797 ], [ %.0.lcssa.i.i548, %.loopexit923 ] ; 3 uses
  %i.adm = add i64 %.sroa.3.05.i.i.i1794, 1
  %umax.i.i.i.i1795 = call i64 @llvm.umax.i64(i64 %.sroa.27.5, i64 %i.adm) ; 3 uses
  %i.adn = add i64 %umax.i.i.i.i1795, -1          ; 2 uses
  %exitcond.not.i.i.i17962267 = icmp eq i64 %.sroa.3.05.i.i.i1794, %i.adn
  br i1 %exitcond.not.i.i.i17962267, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797, label %.lr.ph2268

bb.fg:                                            ; preds = %.lr.ph2268
  %exitcond.not.i.i.i1796 = icmp eq i64 %i.adp, %i.adn
  br i1 %exitcond.not.i.i.i1796, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797, label %.lr.ph2268, !llvm.loop !1672

.lr.ph2268:                                       ; preds = %.lr.ph.split.i.i.i1792, %bb.fg
  %i.ado = phi i64 [ %i.adp, %bb.fg ], [ %.sroa.3.05.i.i.i1794, %.lr.ph.split.i.i.i1792 ]
  %i.adp = add i64 %i.ado, 1                      ; 4 uses
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.5, i64 %i.adp
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !269
  %i.ads = icmp eq ptr %i.adr, null
  br i1 %i.ads, label %bb.fg, label %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797_crit_edge, !llvm.loop !1672

._ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797_crit_edge: ; preds = %.lr.ph2268
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797, !llvm.loop !1672

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797: ; preds = %bb.fg, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797_crit_edge, %.lr.ph.split.i.i.i1792
  %.lcssa.i.i.i.i1798 = phi i64 [ %umax.i.i.i.i1795, %.lr.ph.split.i.i.i1792 ], [ %i.adp, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797_crit_edge ], [ %umax.i.i.i.i1795, %bb.fg ] ; 2 uses
  %i.adt = add nuw nsw i64 %.06.i.i.i1793, 1      ; 3 uses
  %.not.i.i.i1799 = icmp eq i64 %.lcssa.i.i.i.i1798, %.sroa.27.5
  br i1 %.not.i.i.i1799, label %_ZSt10__distanceIN4Luau6detail14DenseHashTableIPKNS0_4TypeES5_S5_NS1_16ItemInterfaceSetIS5_EENS0_16DenseHashPointerESt8equal_toIS5_EE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i.i1800, label %.lr.ph.split.i.i.i1792, !llvm.loop !1673

_ZSt10__distanceIN4Luau6detail14DenseHashTableIPKNS0_4TypeES5_S5_NS1_16ItemInterfaceSetIS5_EENS0_16DenseHashPointerESt8equal_toIS5_EE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i.i1800: ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i1797
  %i.adu = icmp samesign ugt i64 %.06.i.i.i1793, 1152921504606846974
  br i1 %i.adu, label %bb.fh, label %.lr.ph.split.i.i.i.i.i.i.i.i.preheader.i.i1801

bb.fh:                                            ; preds = %_ZSt10__distanceIN4Luau6detail14DenseHashTableIPKNS0_4TypeES5_S5_NS1_16ItemInterfaceSetIS5_EENS0_16DenseHashPointerESt8equal_toIS5_EE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i.i1800
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #38
          to label %.noexc.i1812 unwind label %bb.fj

.noexc.i1812:                                     ; preds = %bb.fh
  unreachable

.lr.ph.split.i.i.i.i.i.i.i.i.preheader.i.i1801:   ; preds = %_ZSt10__distanceIN4Luau6detail14DenseHashTableIPKNS0_4TypeES5_S5_NS1_16ItemInterfaceSetIS5_EENS0_16DenseHashPointerESt8equal_toIS5_EE8iteratorEENSt15iterator_traitsIT_E15difference_typeESE_SE_St18input_iterator_tag.exit.i.i1800
  %i.adv = shl nuw nsw i64 %i.adt, 3
  %i.adw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adv) #37
          to label %.noexc7.i1803 unwind label %bb.fj ; 3 uses

.noexc7.i1803:                                    ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.preheader.i.i1801
  store ptr %i.adw, ptr %35, align 8, !tbaa !294
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %i.adt
  %i.ady = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %i.adx, ptr %i.ady, align 8, !tbaa !295
  br label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i1804

.lr.ph.split.i.i.i.i.i.i.i.i.i.i1804:             ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809, %.noexc7.i1803
  %.09.i.i.i.i.i.i.i.i.i.i1805 = phi ptr [ %i.aeb, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809 ], [ %i.adw, %.noexc7.i1803 ] ; 2 uses
  %.sroa.4.08.i.i.i.i.i.i.i.i.i.i1806 = phi i64 [ %.lcssa.i.i.i.i.i.i.i.i.i.i.i1810, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809 ], [ %.0.lcssa.i.i548, %.noexc7.i1803 ] ; 4 uses
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.5, i64 %.sroa.4.08.i.i.i.i.i.i.i.i.i.i1806
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !269
  store ptr %i.aea, ptr %.09.i.i.i.i.i.i.i.i.i.i1805, align 8, !tbaa !269
  %i.aeb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i1805, i64 8 ; 2 uses
  %i.aec = add i64 %.sroa.4.08.i.i.i.i.i.i.i.i.i.i1806, 1
  %umax.i.i.i.i.i.i.i.i.i.i.i1807 = call i64 @llvm.umax.i64(i64 %.sroa.27.5, i64 %i.aec) ; 3 uses
  %i.aed = add i64 %umax.i.i.i.i.i.i.i.i.i.i.i1807, -1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i18082272 = icmp eq i64 %.sroa.4.08.i.i.i.i.i.i.i.i.i.i1806, %i.aed
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i18082272, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809, label %.lr.ph2273

bb.fi:                                            ; preds = %.lr.ph2273
  %exitcond.not.i.i.i.i.i.i.i.i.i.i1808 = icmp eq i64 %i.aef, %i.aed
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i1808, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809, label %.lr.ph2273, !llvm.loop !1672

.lr.ph2273:                                       ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i1804, %bb.fi
  %i.aee = phi i64 [ %i.aef, %bb.fi ], [ %.sroa.4.08.i.i.i.i.i.i.i.i.i.i1806, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i1804 ]
  %i.aef = add i64 %i.aee, 1                      ; 4 uses
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01843.5, i64 %i.aef
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !269
  %i.aei = icmp eq ptr %i.aeh, null
  br i1 %i.aei, label %bb.fi, label %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809_crit_edge, !llvm.loop !1672

._ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809_crit_edge: ; preds = %.lr.ph2273
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809, !llvm.loop !1672

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809: ; preds = %bb.fi, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809_crit_edge, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i1804
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i1810 = phi i64 [ %umax.i.i.i.i.i.i.i.i.i.i.i1807, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i1804 ], [ %i.aef, %._ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809_crit_edge ], [ %umax.i.i.i.i.i.i.i.i.i.i.i1807, %bb.fi ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i1811 = icmp eq i64 %.lcssa.i.i.i.i.i.i.i.i.i.i.i1810, %.sroa.27.5
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1811, label %.loopexit1888, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i1804, !llvm.loop !1674

bb.fj:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.preheader.i.i1801, %bb.fh
  %i.aej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aek = load ptr, ptr %35, align 8, !tbaa !294 ; 2 uses
  %.not.i.i8.i1802 = icmp eq ptr %i.aek, null
  br i1 %.not.i.i8.i1802, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit557, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit557.sink.split

.loopexit1888:                                    ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809, %.loopexit923, %.loopexit923.thread
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i1790 = phi ptr [ null, %.loopexit923 ], [ null, %.loopexit923.thread ], [ %i.aeb, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE8iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i1809 ]
  %i.ael = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i1790, ptr %i.ael, align 8, !tbaa !546
  invoke void @_ZN4Luau11reduceUnionERKSt6vectorIPKNS_4TypeESaIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.85") align 8 %34, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %bb.fk unwind label %bb.fn

bb.fk:                                            ; preds = %.loopexit1888
  %i.aem = load ptr, ptr %35, align 8, !tbaa !294 ; 3 uses
  %.not.i.i.i555 = icmp eq ptr %i.aem, null
  br i1 %.not.i.i.i555, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aen = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !295
  %i.aep = ptrtoint ptr %i.aeo to i64
  %i.aeq = ptrtoint ptr %i.aem to i64
  %i.aer = sub i64 %i.aep, %i.aeq
  call void @_ZdlPvm(ptr noundef nonnull %i.aem, i64 noundef %i.aer) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.fk, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  %i.aes = load ptr, ptr %34, align 8, !tbaa !537 ; 6 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !537 ; 3 uses
  %i.aev = icmp eq ptr %i.aes, %i.aeu
  br i1 %i.aev, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !948
  br label %bb.fv

bb.fn:                                            ; preds = %.loopexit1888
  %i.aey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aez = load ptr, ptr %35, align 8, !tbaa !294 ; 2 uses
  %.not.i.i.i556 = icmp eq ptr %i.aez, null
  br i1 %.not.i.i.i556, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit557, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit557.sink.split

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit557.sink.split: ; preds = %bb.fn, %bb.fj
  %.sink2202 = phi ptr [ %i.aek, %bb.fj ], [ %i.aez, %bb.fn ] ; 2 uses
  %.pn325.ph = phi { ptr, i32 } [ %i.aej, %bb.fj ], [ %i.aey, %bb.fn ]
  %i.afa = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !295
  %i.afc = ptrtoint ptr %i.afb to i64
  %i.afd = ptrtoint ptr %.sink2202 to i64
  %i.afe = sub i64 %i.afc, %i.afd
  call void @_ZdlPvm(ptr noundef nonnull %.sink2202, i64 noundef %i.afe) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit557

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit557:  ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit557.sink.split, %bb.fj, %bb.fn
  %.pn325 = phi { ptr, i32 } [ %i.aej, %bb.fj ], [ %i.aey, %bb.fn ], [ %.pn325.ph, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit557.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit562

bb.fo:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.aff = ptrtoint ptr %i.aeu to i64
  %i.afg = ptrtoint ptr %i.aes to i64             ; 2 uses
  %i.afh = sub i64 %i.aff, %i.afg
  %i.afi = icmp eq i64 %i.afh, 8
  br i1 %i.afi, label %.thread, label %bb.fp

.thread:                                          ; preds = %bb.fo
  %i.afj = load ptr, ptr %i.aes, align 8, !tbaa !269
  br label %bb.fw

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #35
  store ptr %i.aes, ptr %36, align 8, !tbaa !294
  %i.afk = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.aeu, ptr %i.afk, align 8, !tbaa !546
  %i.afl = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !295
  store ptr %i.afn, ptr %i.afl, align 8, !tbaa !295
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
end_hunk_2
