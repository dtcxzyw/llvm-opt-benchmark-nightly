Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeInfer?download=true
inline.NumInlined: 13252
inline.NumDeleted: 4925
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZZN4Luau11TypeChecker31checkBlockWithoutRecursionCheckERKSt10shared_ptrINS_5ScopeEERKNS_12AstStatBlockEENK3$_0clEPNS_7AstStatE":bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #35
  br label %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit36

_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit36: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEEC2ERKS7_.exit31
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %common.resume

bb.ai:                                            ; preds = %bb.r, %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit36, %_ZNSt4pairIPKN4Luau4TypeESt10shared_ptrINS0_5ScopeEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i8 } @_ZN4Luau11TypeChecker20getIndexTypeFromTypeERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i1 noundef zeroext %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call { ptr, i8 } @_ZN4Luau11TypeChecker24getIndexTypeFromTypeImplERKSt10shared_ptrINS_5ScopeEEPKNS_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i1 noundef zeroext %5)
  ret { ptr, i8 } %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau11TypeChecker22checkFunctionSignatureERKSt10shared_ptrINS_5ScopeEEiRKNS_15AstExprFunctionESt8optionalINS_8LocationEES9_IPKNS_4TypeEESF_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.515") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(188) %4, ptr nofree noundef readonly byval(%"class.std::optional") align 8 captures(none) %5, ptr nofree noundef readnone byval(%"class.std::optional.473") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.std::optional.473") align 8 captures(none) %7) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.Luau::TypePackVar", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::shared_ptr.133", align 16 ; 24 uses
  %10 = alloca %"struct.Luau::TypeIterator", align 8 ; 15 uses
  %11 = alloca %"struct.Luau::TypeIterator", align 8 ; 11 uses
  %12 = alloca %"struct.Luau::GenericTypeDefinitions", align 8 ; 17 uses
  %13 = alloca %"struct.std::pair.587", align 8   ; 13 uses
  %14 = alloca %"struct.std::pair.587", align 8   ; 14 uses
  %15 = alloca %"class.std::vector.85", align 8   ; 5 uses
  %16 = alloca %"class.std::initializer_list", align 8 ; 5 uses
  %17 = alloca %"struct.Luau::Binding", align 8   ; 15 uses
  %18 = alloca %"struct.Luau::Symbol", align 8    ; 6 uses
  %19 = alloca %"struct.Luau::TypePackIterator", align 8 ; 11 uses
  %20 = alloca %"struct.Luau::TypePackIterator", align 8 ; 8 uses
  %21 = alloca %"struct.Luau::TypePackIterator", align 8 ; 5 uses
  %22 = alloca %"struct.Luau::TypePackIterator", align 8 ; 5 uses
  %23 = alloca %"struct.Luau::Binding", align 8   ; 15 uses
  %24 = alloca %"struct.Luau::Symbol", align 8    ; 6 uses
  %25 = alloca %"struct.Luau::TypePackVar", align 8 ; 10 uses
  %26 = alloca %"class.Luau::Variant.531", align 8 ; 11 uses
  %27 = alloca %"struct.Luau::FunctionDefinition", align 8 ; 19 uses
  %.sroa.0445 = alloca %"struct.Luau::Location", align 8 ; 4 uses
  %28 = alloca %"class.std::vector.85", align 16  ; 17 uses
  %29 = alloca %"class.std::vector.90", align 8   ; 21 uses
  %30 = alloca %"struct.Luau::FunctionType", align 8 ; 7 uses
  %31 = alloca %"class.std::vector.85", align 16  ; 5 uses
  %32 = alloca %"class.std::vector.90", align 8   ; 6 uses
  %33 = alloca %"class.std::optional.591", align 8 ; 12 uses
  %34 = alloca %"class.std::optional.660", align 8 ; 13 uses
  %35 = alloca %"struct.Luau::FunctionArgument", align 8 ; 10 uses
  %36 = alloca %"class.std::optional.660", align 8 ; 14 uses
  %37 = alloca %"struct.Luau::FunctionArgument", align 8 ; 14 uses
  %38 = alloca %"struct.Luau::AstAttr::DeprecatedInfo", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  call void @_ZN4Luau11TypeChecker18childFunctionScopeERKSt10shared_ptrINS_5ScopeEERKNS_8LocationEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.133") align 8 %9, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i32 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !577, !range !104, !noundef !105
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %7, align 8, !tbaa !269    ; 2 uses
  %i.i = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.h)
          to label %bb.c unwind label %bb.j       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.i, align 8, !tbaa !545
  %i.k = icmp eq i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br i1 %i.k, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.h)
          to label %bb.f unwind label %bb.j       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %.not.i.i230 = icmp eq ptr %i.m, null
  br i1 %.not.i.i230, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.m, align 8, !tbaa !545
  %i.o = icmp eq i32 %i.n, 13
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.o, label %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  invoke void @_ZN4Luau5beginEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %10, ptr noundef nonnull %i.p)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  invoke void @_ZN4Luau3endEPKNS_9UnionTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypeIterator") align 8 %11, ptr noundef nonnull %i.p)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader unwind label %bb.l

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit:  ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i
  %.0117 = phi ptr [ %.2508, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i ], [ null, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit.preheader ] ; 5 uses
  %i.v = load i64, ptr %i.q, align 8, !tbaa !832
  %i.w = icmp eq i64 %i.v, 0                      ; 2 uses
  %i.x = load i64, ptr %i.r, align 8, !tbaa !832
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  %brmerge.i.i = select i1 %i.w, i1 true, i1 %i.y
  br i1 %brmerge.i.i, label %bb.i, label %.split

.split:                                           ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %i.z = load ptr, ptr %10, align 8, !tbaa !833
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !834
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %11, align 8, !tbaa !833
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !834
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !837
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !837
  %i.ah = icmp eq ptr %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp eq i64 %i.aj, %i.al
  %i.an = select i1 %i.ah, i1 %i.am, i1 false
  br i1 %i.an, label %bb.r, label %bb.m

bb.i:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit
  %.mux.i.i = select i1 %i.w, i1 %i.y, i1 false
  br i1 %.mux.i.i, label %bb.r, label %bb.m

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

bb.k:                                             ; preds = %_ZN4Luau3getINS_9UnionTypeEEEPKT_PKNS_4TypeE.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.l:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.m:                                             ; preds = %.split, %bb.i
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %.noexc unwind label %.loopexit.split-lp549.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  %i.ar = load ptr, ptr %10, align 8, !tbaa !833
  %i.as = load i64, ptr %i.s, align 8, !tbaa !834
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.at, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.au = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %.sroa.0.0.copyload.i)
          to label %.noexc231 unwind label %.loopexit.split-lp549.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc231:                                        ; preds = %.noexc
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !294
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.4.0.copyload.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !269
  %i.ay = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ax)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit unwind label %.loopexit.split-lp549.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit:  ; preds = %.noexc231
  %i.az = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ay)
          to label %bb.n unwind label %.loopexit.split-lp549.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.n:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %.not.i.i233 = icmp eq ptr %i.az, null
  br i1 %.not.i.i233, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234.thread, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234: ; preds = %bb.n
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !545
  %i.bb = icmp ne i32 %i.ba, 8                    ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not171 = icmp eq ptr %.0117, null             ; 2 uses
  %i.bd = xor i1 %i.bb, true
  %i.be = and i1 %.not171, %i.bd
  %spec.select229 = select i1 %i.be, ptr %i.bc, ptr null
  %cond = select i1 %i.bb, i1 true, i1 %.not171
  %.2 = select i1 %i.bb, ptr %.0117, ptr %spec.select229 ; 2 uses
  br i1 %cond, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234.thread, label %bb.r

.loopexit.split-lp549.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, %.noexc231, %.noexc, %bb.m, %_ZN4Luau12TypeIteratorINS_9UnionTypeEEdeEv.exit
  %lpad.loopexit.split-lp828 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #35
  br label %bb.u

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234.thread: ; preds = %bb.n, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234
  %.2508 = phi ptr [ %.2, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234 ], [ %.0117, %bb.n ]
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !832
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234.thread
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !834
  br label %bb.o

bb.o:                                             ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.lr.ph.i.i
  %i.bh = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.cd, %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i ]
  %i.bi = load ptr, ptr %10, align 8, !tbaa !833
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !608
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !608
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !838
  %i.bo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_9UnionTypeE(ptr noundef %i.bn)
          to label %.noexc236 unwind label %.loopexit.split-lp549.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc236:                                        ; preds = %bb.o
  %i.bp = load i64, ptr %i.bk, align 8, !tbaa !608
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !546
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !294
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3
  %.not.i.i235 = icmp ult i64 %i.bp, %i.bw
  br i1 %.not.i.i235, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.p

bb.p:                                             ; preds = %.noexc236
  %i.bx = load i64, ptr %i.s, align 8, !tbaa !834
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  store i64 %i.by, ptr %i.s, align 8, !tbaa !834
  %i.bz = load i64, ptr %i.q, align 8, !tbaa !832
  %i.ca = add i64 %i.bz, -1                       ; 2 uses
  store i64 %i.ca, ptr %i.q, align 8, !tbaa !832
  %i.cb = load i64, ptr %i.u, align 8, !tbaa !839
  %i.cc = icmp eq i64 %i.by, %i.cb
  br i1 %i.cc, label %bb.q, label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %i.s, align 8, !tbaa !834
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i

_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i: ; preds = %bb.q, %bb.p
  %i.cd = phi i64 [ 0, %bb.q ], [ %i.by, %bb.p ]
  %i.ce = icmp eq i64 %i.ca, 0
  br i1 %i.ce, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i, label %bb.o

_ZN4Luau12TypeIteratorINS_9UnionTypeEE7advanceEv.exit.i: ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_9UnionTypeEmESaIS5_EE9pop_frontEv.exit.i.i, %.noexc236, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234.thread
  invoke void @_ZN4Luau12TypeIteratorINS_9UnionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %_ZN4Luau12TypeIteratorINS_9UnionTypeEEppEv.exit unwind label %.loopexit.split-lp549.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.split, %bb.i, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234
  %.3 = phi ptr [ %.2, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit234 ], [ %.0117, %bb.i ], [ %.0117, %.split ]
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !843 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #35
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit:  ; preds = %bb.r, %bb.s
  %i.ch = load ptr, ptr %11, align 8, !tbaa !833
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !839
  %i.ck = shl i64 %i.cj, 4
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !843 ; 2 uses
  %.not.i.i.i238 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i238, label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit239, label %bb.t

bb.t:                                             ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.cm) #35
  br label %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit239

_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit239: ; preds = %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit, %bb.t
  %i.cn = load ptr, ptr %10, align 8, !tbaa !833
  %i.co = load i64, ptr %i.u, align 8, !tbaa !839
  %i.cp = shl i64 %i.co, 4
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cp) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit

bb.u:                                             ; preds = %.loopexit.split-lp549.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn172.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp828, %.loopexit.split-lp549.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #35
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.k
  %.pn172.pn.pn = phi { ptr, i32 } [ %.pn172.pn, %bb.u ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.ii

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.f, %bb.g, %bb.d, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit239, %bb.a
  %.6 = phi ptr [ null, %bb.a ], [ %i.l, %bb.d ], [ %.3, %_ZN4Luau12TypeIteratorINS_9UnionTypeEED2Ev.exit239 ], [ null, %bb.g ], [ null, %bb.f ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 64
  invoke void @_ZN4Luau11TypeChecker18createGenericTypesERKSt10shared_ptrINS_5ScopeEESt8optionalINS_9TypeLevelEERKNS_7AstNodeERKNS_8AstArrayIPNS_14AstGenericTypeEEERKNSC_IPNS_18AstGenericTypePackEEEb(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::GenericTypeDefinitions") align 8 %12, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 undef, i8 0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !844 ; 2 uses
  %.not178 = icmp eq ptr %i.ct, null
  br i1 %.not178, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = invoke noundef ptr @_ZN4Luau11TypeChecker15resolveTypePackERKSt10shared_ptrINS_5ScopeEERKNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(28) %i.ct)
          to label %_ZN4Luau11TypeChecker13freshTypePackERKSt10shared_ptrINS_5ScopeEE.exit246 unwind label %bb.cd

bb.y:                                             ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.z:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !347
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 928
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !509
  %spec.select.i = icmp ult i32 %i.cz, 2
  br i1 %spec.select.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 1872
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !284
  br label %_ZN4Luau11TypeChecker13freshTypePackERKSt10shared_ptrINS_5ScopeEE.exit246

bb.ab:                                            ; preds = %bb.z
  %.not179 = icmp eq ptr %.6, null
  br i1 %.not179, label %bb.ap, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %.6, i64 104
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !537
  %i.de = getelementptr inbounds nuw i8, ptr %.6, i64 112
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !537
  %i.dg = icmp eq ptr %i.dd, %i.df
  br i1 %i.dg, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %.6, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !708
  %i.dj = getelementptr inbounds nuw i8, ptr %.6, i64 136
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !708
  %i.dl = icmp eq ptr %i.di, %i.dk
  br i1 %i.dl, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.dm = getelementptr inbounds nuw i8, ptr %.6, i64 216
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !677
  invoke void @_ZN4Luau7flattenEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.587") align 8 %13, ptr noundef %i.dn)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !515, !range !104, !noundef !105
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !546
  %i.du = load ptr, ptr %13, align 8, !tbaa !294  ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp eq i64 %i.dx, 8
  br i1 %i.dy, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !269
  %i.ea = invoke noundef zeroext i1 @_ZN4Luau5isNilEPKNS_4TypeE(ptr noundef %i.dz)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ea, label %bb.aj, label %._crit_edge609

._crit_edge609:                                   ; preds = %bb.ai
  %.sroa.252.0.copyload.pre = load i8, ptr %i.dp, align 8
  br label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.eb = load ptr, ptr %9, align 16, !tbaa !309
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 120
  %.sroa.0.0.copyload.i240 = load i64, ptr %i.ec, align 8, !tbaa !75
  %i.ed = invoke noundef ptr @_ZN4Luau11TypeChecker13freshTypePackENS_9TypeLevelE(ptr noundef nonnull readonly align 8 dereferenceable(2040) %1, i64 %.sroa.0.0.copyload.i240)
          to label %_ZN4Luau11TypeChecker13freshTypePackERKSt10shared_ptrINS_5ScopeEE.exit unwind label %bb.al

bb.ak:                                            ; preds = %bb.ae
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit

bb.al:                                            ; preds = %bb.aj, %bb.an, %bb.ah
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %13, align 8, !tbaa !294  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !295
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #36
  br label %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit

bb.an:                                            ; preds = %._crit_edge609, %bb.ag, %bb.af
  %.sroa.252.0.copyload = phi i8 [ %.sroa.252.0.copyload.pre, %._crit_edge609 ], [ 0, %bb.ag ], [ 1, %bb.af ]
  %.sroa.051.0.copyload = load ptr, ptr %i.do, align 8
  %i.em = invoke noundef ptr @_ZN4Luau11TypeChecker11addTypePackERKSt6vectorIPKNS_4TypeESaIS4_EESt8optionalIPKNS_11TypePackVarEE(ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %.sroa.051.0.copyload, i8 %.sroa.252.0.copyload)
          to label %_ZN4Luau11TypeChecker13freshTypePackERKSt10shared_ptrINS_5ScopeEE.exit unwind label %bb.al

_ZN4Luau11TypeChecker13freshTypePackERKSt10shared_ptrINS_5ScopeEE.exit: ; preds = %bb.aj, %bb.an
  %.0157 = phi ptr [ %i.em, %bb.an ], [ %i.ed, %bb.aj ]
  %i.en = load ptr, ptr %13, align 8, !tbaa !294  ; 3 uses
  %.not.i.i.i.i242 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i242, label %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit243, label %bb.ao

bb.ao:                                            ; preds = %_ZN4Luau11TypeChecker13freshTypePackERKSt10shared_ptrINS_5ScopeEE.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !295
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #36
  br label %_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit243

_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit243: ; preds = %_ZN4Luau11TypeChecker13freshTypePackERKSt10shared_ptrINS_5ScopeEE.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %_ZN4Luau11TypeChecker13freshTypePackERKSt10shared_ptrINS_5ScopeEE.exit246

_ZNSt4pairISt6vectorIPKN4Luau4TypeESaIS4_EESt8optionalIPKNS1_11TypePackVarEEED2Ev.exit: ; preds = %bb.am, %bb.al, %bb.ak
  %.pn180 = phi { ptr, i32 } [ %i.ee, %bb.ak ], [ %i.ef, %bb.al ], [ %i.ef, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit431

bb.ap:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.et = load ptr, ptr %9, align 16, !tbaa !309
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 120
  %.sroa.0.0.copyload.i244 = load i64, ptr %i.eu, align 8, !tbaa !75
  %i.ev = invoke noundef ptr @_ZN4Luau11TypeChecker13freshTypePackENS_9TypeLevelE(ptr noundef nonnull readonly align 8 dereferenceable(2040) %1, i64 %.sroa.0.0.copyload.i244)
          to label %_ZN4Luau11TypeChecker13freshTypePackERKSt10shared_ptrINS_5ScopeEE.exit246 unwind label %bb.cd
end_hunk_0
begin_hunk_1_@_ZN4Luau11TypeChecker17checkCallOverloadERKSt10shared_ptrINS_5ScopeEERKNS_11AstExprCallEPKNS_4TypeEPKNS_11TypePackVarESE_PNS_8TypePackEPKSt6vectorINS_8LocationESaISI_EERKNS_13WithPredicateISE_EERSH_ISB_SaISB_EEST_RSH_INS_18OverloadErrorEntryESaISU_EE:bb.a
          to label %bb.aq unwind label %bb.aw     ; 0 uses

bb.aq:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.fw = load ptr, ptr %i.fp, align 8, !tbaa !539
  %i.fx = invoke noundef ptr @_ZNK4Luau12BuiltinTypes21errorRecoveryTypePackEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(272) %i.fw, ptr noundef %5)
          to label %_ZN4Luau11TypeChecker21errorRecoveryTypePackEPKNS_11TypePackVarE.exit unwind label %bb.aw

_ZN4Luau11TypeChecker21errorRecoveryTypePackEPKNS_11TypePackVarE.exit: ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.fy = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #37
          to label %bb.ar unwind label %bb.aw     ; 3 uses

bb.ar:                                            ; preds = %_ZN4Luau11TypeChecker21errorRecoveryTypePackEPKNS_11TypePackVarE.exit
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !582, !noalias !1727
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i8 0, i64 24, i1 false), !noalias !1727
  store ptr %i.fy, ptr %0, align 8, !tbaa !1024, !alias.scope !1727
  br label %bb.ch

bb.as:                                            ; preds = %bb.am
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.an
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau9TypeErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %24) #35
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn122 = phi { ptr, i32 } [ %i.gb, %bb.at ], [ %i.ga, %bb.as ]
  %i.gc = load i32, ptr %25, align 8, !tbaa !303
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !82
  invoke void %i.gf(ptr noundef nonnull %i.fh)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter167 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter167: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  br label %bb.cj

bb.aw:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy, %bb.ae, %bb.ad, %bb.ab, %_ZN4Luau8TypePackD2Ev.exit, %.noexc, %bb.ac, %_ZN4Luau11TypeChecker21errorRecoveryTypePackEPKNS_11TypePackVarE.exit, %bb.aq
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %thread-pre-split.thread
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fa, i64 232
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1031 ; 3 uses
  %.not = icmp eq ptr %i.gk, null
  br i1 %.not, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #35
  %i.gl = load ptr, ptr %9, align 8, !tbaa !582
  store ptr %i.gl, ptr %27, align 8, !tbaa !582
  %i.gm = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 8
  invoke void @_ZNSt6vectorIN4Luau7VariantIJNS0_15TruthyPredicateENS0_12IsAPredicateENS0_18TypeGuardPredicateENS0_11EqPredicateENS0_12AndPredicateENS0_11OrPredicateENS0_12NotPredicateEEEESaIS9_EEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr noundef nonnull align 8 dereferenceable(24) %i.gn)
          to label %_ZN4Luau13WithPredicateIPKNS_11TypePackVarEEC2ERKS4_.exit unwind label %bb.ba

_ZN4Luau13WithPredicateIPKNS_11TypePackVarEEC2ERKS4_.exit: ; preds = %bb.ax
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !291
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void %i.gp(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.760") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(92) %3, ptr noundef nonnull align 8 %27)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZN4Luau13WithPredicateIPKNS_11TypePackVarEEC2ERKS4_.exit
  call void @_ZN4Luau13WithPredicateIPKNS_11TypePackVarEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %27) #35
  %i.gq = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.gr = load i8, ptr %i.gq, align 16, !tbaa !1033, !range !104, !noundef !105
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  %i.gt = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #37
          to label %bb.bd unwind label %bb.bc     ; 3 uses

bb.ba:                                            ; preds = %bb.ax
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bb:                                            ; preds = %_ZN4Luau13WithPredicateIPKNS_11TypePackVarEEC2ERKS4_.exit
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau13WithPredicateIPKNS_11TypePackVarEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %27) #35
  br label %bb.be

bb.bc:                                            ; preds = %bb.az
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseIN4Luau13WithPredicateIPKNS0_11TypePackVarEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #35
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.gx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.gy = load <2 x ptr>, ptr %26, align 16, !tbaa !82, !noalias !1728
  store <2 x ptr> %i.gy, ptr %i.gt, align 8, !tbaa !82, !noalias !1728
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.hb = load <2 x ptr>, ptr %i.ha, align 16, !tbaa !561, !noalias !1728
  store <2 x ptr> %i.hb, ptr %i.gz, align 8, !tbaa !561, !noalias !1728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i8 0, i64 24, i1 false), !noalias !1728
  store ptr %i.gt, ptr %0, align 8, !tbaa !1024, !alias.scope !1728
  call void @_ZNSt14_Optional_baseIN4Luau13WithPredicateIPKNS0_11TypePackVarEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %bb.ch

bb.be:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.pn124 = phi { ptr, i32 } [ %i.gw, %bb.bc ], [ %i.gv, %bb.bb ], [ %i.gu, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %bb.cj

.critedge:                                        ; preds = %bb.ay
  call void @_ZNSt14_Optional_baseIN4Luau13WithPredicateIPKNS0_11TypePackVarEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %bb.bf

bb.bf:                                            ; preds = %.critedge, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.he = load ptr, ptr %2, align 8, !tbaa !309, !noalias !1729
  invoke void @_ZN4Luau7UnifierC1ENS_7NotNullINS_10NormalizerEEENS1_INS_5ScopeEEERKNS_8LocationENS_8VarianceEPNS_6TxnLogE(ptr noundef nonnull align 8 dereferenceable(288) %28, ptr nonnull %i.hd, ptr %i.he, ptr noundef nonnull align 4 dereferenceable(16) %i.hc, i32 noundef 0, ptr noundef null)
          to label %_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit unwind label %bb.bi

_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit: ; preds = %bb.bf
  %i.hf = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fa, i64 224
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !677
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  invoke void @_ZN4Luau11TypeChecker17checkArgumentListERKSt10shared_ptrINS_5ScopeEERKNS_7AstExprERNS_7UnifierEPKNS_11TypePackVarESD_RKSt6vectorINS_8LocationESaISF_EE(ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(28) %i.hf, ptr noundef nonnull align 8 dereferenceable(288) %28, ptr noundef %5, ptr noundef %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit
  %i.hi = load ptr, ptr %29, align 8, !tbaa !675  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hj = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !676
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hn) #36
  br label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit:   ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  %i.ho = getelementptr inbounds nuw i8, ptr %28, i64 168 ; 4 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !536
  %i.hq = getelementptr inbounds nuw i8, ptr %28, i64 176 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !536
  %i.hs = icmp eq ptr %i.hp, %i.hr
  br i1 %i.hs, label %bb.bl, label %bb.ce

bb.bi:                                            ; preds = %bb.bf
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bj:                                            ; preds = %_ZN4Luau11TypeChecker9mkUnifierERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %29, align 8, !tbaa !675  ; 3 uses
  %.not.i.i.i171 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit172, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hw = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !676
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.ia) #36
  br label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit172

_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit172: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  br label %bb.cf

bb.bl:                                            ; preds = %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit
  %i.ib = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fa, i64 216
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !672
  invoke void @_ZN4Luau11TypeChecker17checkArgumentListERKSt10shared_ptrINS_5ScopeEERKNS_7AstExprERNS_7UnifierEPKNS_11TypePackVarESD_RKSt6vectorINS_8LocationESaISF_EE(ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(28) %i.ib, ptr noundef nonnull align 8 dereferenceable(288) %28, ptr noundef %.076272, ptr noundef %i.id, ptr noundef nonnull align 8 dereferenceable(24) %.078270)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  %i.ie = load ptr, ptr %i.ho, align 8, !tbaa !536 ; 2 uses
  %i.if = load ptr, ptr %i.hq, align 8, !tbaa !536 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %bb.ca, label %.preheader

.preheader:                                       ; preds = %bb.bm
  %i.ih = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 7 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.ik = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %30, i64 56 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %30, i64 88
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN4Luau9TypeErrorD2Ev.exit, %.preheader
  %.sroa.0187.0234 = phi ptr [ %i.ie, %.preheader ], [ %32, %_ZN4Luau9TypeErrorD2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %30, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.0187.0234, i64 16, i1 false), !tbaa.struct !506
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0187.0234, i64 16
  store ptr %i.ii, ptr %i.ih, align 8, !tbaa !287
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !81 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0187.0234, i64 24
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !133 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.ip, ptr %i.a, align 8, !tbaa !608
  %i.iq = icmp ugt i64 %i.ip, 15
  br i1 %i.iq, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bn
  %i.ir = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ih, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc175 unwind label %bb.bs ; 2 uses

.noexc175:                                        ; preds = %.noexc.i.i
  store ptr %i.ir, ptr %i.ih, align 8, !tbaa !81
  %i.is = load i64, ptr %i.a, align 8, !tbaa !608
  store i64 %i.is, ptr %i.ii, align 8, !tbaa !288
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc175, %bb.bn
  %i.it = phi ptr [ %i.ir, %.noexc175 ], [ %i.ii, %bb.bn ] ; 2 uses
  switch i64 %i.ip, label %bb.bp [
    i64 1, label %bb.bo
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bo:                                            ; preds = %._crit_edge.i.i.i
  %i.iu = load i8, ptr %i.in, align 1, !tbaa !288
  store i8 %i.iu, ptr %i.it, align 1, !tbaa !288
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bp:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr align 1 %i.in, i64 %i.ip, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bp, %bb.bo, %._crit_edge.i.i.i
  %i.iv = load i64, ptr %i.a, align 8, !tbaa !608 ; 2 uses
  store i64 %i.iv, ptr %i.ij, align 8, !tbaa !133
  %i.iw = load ptr, ptr %i.ih, align 8, !tbaa !81
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iv
  store i8 0, ptr %i.ix, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0187.0234, i64 48
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !303 ; 2 uses
  store i32 %i.iz, ptr %i.ik, align 8, !tbaa !303
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr @_ZZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEC1ERKS1T_E5table, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !82
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0187.0234, i64 56
  invoke void %i.jc(ptr noundef nonnull %i.il, ptr noundef nonnull %i.jd)
          to label %bb.br unwind label %bb.bq, !inline_history !19

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jf = load ptr, ptr %i.ih, align 8, !tbaa !81 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.ii
  br i1 %i.jg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bq
  %i.jh = load i64, ptr %i.ii, align 8, !tbaa !288
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #36
  br label %.body

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.jj = load i32, ptr %i.ik, align 8, !tbaa !303 ; 2 uses
  %.not226 = icmp eq i32 %i.jj, 8
  %i.jk = load i32, ptr %.sroa.gep, align 8
  %i.jl = icmp eq i32 %i.jk, 0
  %i.jm = select i1 %.not226, i1 %i.jl, i1 false  ; 2 uses
  %i.jn = sext i32 %i.jj to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.jn
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !82
  invoke void %i.jp(ptr noundef nonnull %i.il)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter177 unwind label %bb.bt

bb.bs:                                            ; preds = %.noexc.i.i
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bt:                                            ; preds = %bb.br
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter177: ; preds = %bb.br
  %i.jt = load ptr, ptr %i.ih, align 8, !tbaa !81 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.ii
  br i1 %i.ju, label %_ZN4Luau9TypeErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter177
  %i.jv = load i64, ptr %i.ii, align 8, !tbaa !288
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #36
  br label %_ZN4Luau9TypeErrorD2Ev.exit

_ZN4Luau9TypeErrorD2Ev.exit:                      ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  %32 = getelementptr inbounds nuw i8, ptr %.sroa.0187.0234, i64 184 ; 2 uses
  %.not225 = icmp eq ptr %32, %i.if
  %or.cond = select i1 %i.jm, i1 true, i1 %.not225
  br i1 %or.cond, label %.invoke.a, label %bb.bn

.body:                                            ; preds = %bb.bq, %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn126 = phi { ptr, i32 } [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.jq, %bb.bs ], [ %i.je, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  br label %bb.cf

.invoke.a:                                        ; preds = %_ZN4Luau9TypeErrorD2Ev.exit
  %33 = select i1 %i.jm, ptr %11, ptr %10
  invoke void @_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %.invoke.a, %bb.cc, %bb.bl, %bb.ca
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bv:                                            ; preds = %.invoke.a
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  %i.jx = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !852
  store ptr %i.jy, ptr %31, align 8, !tbaa !852
  %i.jz = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.kb = load <2 x i64>, ptr %i.ka, align 8, !tbaa !608
  store <2 x i64> %i.kb, ptr %i.jz, align 8, !tbaa !608
  %i.kc = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !853
  store ptr %i.ke, ptr %i.kc, align 8, !tbaa !853
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.jx, i8 0, i64 24, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %31, i64 40
  %i.kg = getelementptr inbounds nuw i8, ptr %28, i64 72 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !854
  store ptr %i.kh, ptr %i.kf, align 8, !tbaa !854
  %i.ki = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.kj = getelementptr inbounds nuw i8, ptr %28, i64 80
  %i.kk = load <2 x i64>, ptr %i.kj, align 8, !tbaa !608
  store <2 x i64> %i.kk, ptr %i.ki, align 8, !tbaa !608
  %i.kl = getelementptr inbounds nuw i8, ptr %31, i64 64
  %i.km = getelementptr inbounds nuw i8, ptr %28, i64 96
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !855
  store ptr %i.kn, ptr %i.kl, align 8, !tbaa !855
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.kg, i8 0, i64 24, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %31, i64 80
  %i.kp = getelementptr inbounds nuw i8, ptr %28, i64 112
  %i.kq = getelementptr inbounds nuw i8, ptr %28, i64 120
  %i.kr = load <2 x ptr>, ptr %i.kp, align 8, !tbaa !82
  store <2 x ptr> %i.kr, ptr %i.ko, align 8, !tbaa !82
  %i.ks = getelementptr inbounds nuw i8, ptr %31, i64 96
  %i.kt = getelementptr inbounds nuw i8, ptr %28, i64 128
  %i.ku = load <2 x ptr>, ptr %i.kt, align 8, !tbaa !856
  store <2 x ptr> %i.ku, ptr %i.ks, align 8, !tbaa !856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, i8 0, i64 24, i1 false)
  %i.kv = getelementptr inbounds nuw i8, ptr %31, i64 112
  %i.kw = getelementptr inbounds nuw i8, ptr %28, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, ptr noundef nonnull align 8 dereferenceable(16) %i.kw, i64 16, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %31, i64 128 ; 2 uses
  %i.ky = load <2 x ptr>, ptr %i.ho, align 8, !tbaa !536
  store <2 x ptr> %i.ky, ptr %i.kx, align 8, !tbaa !536
  %i.kz = getelementptr inbounds nuw i8, ptr %31, i64 144
  %i.la = getelementptr inbounds nuw i8, ptr %28, i64 184
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !586
  store ptr %i.lb, ptr %i.kz, align 8, !tbaa !586
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, i8 0, i64 24, i1 false)
  %i.lc = getelementptr inbounds nuw i8, ptr %31, i64 152
  invoke void @_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr noundef nonnull align 8 dereferenceable(24) %.077271)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ld = getelementptr inbounds nuw i8, ptr %31, i64 176
  store ptr %i.fd, ptr %i.ld, align 8, !tbaa !1036
  %i.le = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau18OverloadErrorEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(184) %31)
          to label %_ZNSt6vectorIN4Luau18OverloadErrorEntryESaIS1_EE9push_backEOS1_.exit unwind label %bb.by ; 0 uses

_ZNSt6vectorIN4Luau18OverloadErrorEntryESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.bw
  call void @_ZN4Luau18OverloadErrorEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %bb.ce

bb.bx:                                            ; preds = %bb.bv
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.kx) #35
  call void @_ZN4Luau6TxnLogD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %31) #35
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.lg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau18OverloadErrorEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %31) #35
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn129 = phi { ptr, i32 } [ %i.lg, %bb.by ], [ %i.lf, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %bb.cf

bb.ca:                                            ; preds = %bb.bm
  %i.lh = getelementptr inbounds nuw i8, ptr %28, i64 32
  invoke void @_ZN4Luau6TxnLog6commitEv(ptr noundef nonnull align 8 dereferenceable(128) %i.lh)
          to label %bb.cb unwind label %bb.bu

bb.cb:                                            ; preds = %bb.ca
  %i.li = load ptr, ptr %i.b, align 8, !tbaa !269
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !347
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  store ptr %3, ptr %i.c, align 8, !tbaa !1022
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstNodeEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.ll, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.li, ptr %i.lm, align 8, !tbaa !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  %i.ln = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #37
          to label %_ZSt11make_uniqueIN4Luau13WithPredicateIPKNS0_11TypePackVarEEEJRS4_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.bu ; 3 uses

_ZSt11make_uniqueIN4Luau13WithPredicateIPKNS0_11TypePackVarEEEJRS4_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.cc
  store ptr %5, ptr %i.ln, align 8, !tbaa !582, !noalias !1730
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lo, i8 0, i64 24, i1 false), !noalias !1730
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  br label %bb.cf

bb.ce:                                            ; preds = %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit, %_ZSt11make_uniqueIN4Luau13WithPredicateIPKNS0_11TypePackVarEEEJRS4_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNSt6vectorIN4Luau18OverloadErrorEntryESaIS1_EE9push_backEOS1_.exit
  %.sink = phi ptr [ %i.ln, %_ZSt11make_uniqueIN4Luau13WithPredicateIPKNS0_11TypePackVarEEEJRS4_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ], [ null, %_ZNSt6vectorIN4Luau18OverloadErrorEntryESaIS1_EE9push_backEOS1_.exit ], [ null, %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit ]
  store ptr %.sink, ptr %0, align 8, !tbaa !1024
  call void @_ZN4Luau7UnifierD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.ch

bb.cf:                                            ; preds = %.body, %bb.bu, %bb.bz, %bb.cd, %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit172
  %.pn132 = phi { ptr, i32 } [ %.pn126, %.body ], [ %i.lp, %bb.cd ], [ %i.hu, %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit172 ], [ %.pn129, %bb.bz ], [ %34, %bb.bu ]
  call void @_ZN4Luau7UnifierD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %28) #35
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bi
  %.pn132.pn = phi { ptr, i32 } [ %.pn132, %bb.cf ], [ %i.ht, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.cj

bb.ch:                                            ; preds = %bb.bd, %bb.ce, %bb.ar
  %i.lq = load ptr, ptr %16, align 8, !tbaa !675  ; 3 uses
  %.not.i.i.i183 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit184, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lr = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !676
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lq to i64
  %i.lv = sub i64 %i.lt, %i.lu
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %i.lv) #36
  br label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit184

_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit184: ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.cl

bb.cj:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter167, %bb.aw, %bb.be, %bb.cg, %_ZN4Luau8TypePackD2Ev.exit162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %.pn132.pn.pn.pn = phi { ptr, i32 } [ %.pn124, %bb.be ], [ %.pn132.pn, %bb.cg ], [ %.pn112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn122, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter167 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %.pn115.pn, %_ZN4Luau8TypePackD2Ev.exit162 ], [ %i.gi, %bb.aw ]
  %i.lw = load ptr, ptr %16, align 8, !tbaa !675  ; 3 uses
  %.not.i.i.i185 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i185, label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit186, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lx = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !676
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lw to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.mb) #36
  br label %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit186

_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit186: ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.cm

bb.cl:                                            ; preds = %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit184, %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit, %_ZN4Luau3getINS_9NeverTypeEEEPKT_PKNS_4TypeE.exit, %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit, %_ZN4Luau3getINS_7AnyTypeEEEPKT_PKNS_4TypeE.exit
  ret void

bb.cm:                                            ; preds = %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit186, %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit145
  %.pn137.pn = phi { ptr, i32 } [ %.pn137, %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit145 ], [ %.pn132.pn.pn.pn, %_ZNSt6vectorIN4Luau8LocationESaIS1_EED2Ev.exit186 ]
  resume { ptr, i32 } %.pn137.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationERKNS_14UnifierOptionsE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Luau::Unifier", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %3, align 8, !tbaa !309, !noalias !1733
  call void @_ZN4Luau7UnifierC1ENS_7NotNullINS_10NormalizerEEENS1_INS_5ScopeEEERKNS_8LocationENS_8VarianceEPNS_6TxnLogE(ptr noundef nonnull align 8 dereferenceable(288) %6, ptr nonnull %i.a, ptr %i.b, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 0, ptr noundef null)
  %i.c = load i8, ptr %5, align 1, !tbaa !639, !range !104, !noundef !105
  %i.d = trunc nuw i8 %i.c to i1
  invoke void @_ZN4Luau7Unifier8tryUnifyEPKNS_4TypeES3_bbPKNS_12DenseHashSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISA_ESt8equal_toISA_EEE(ptr noundef nonnull align 8 dereferenceable(288) %6, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.d, i1 noundef zeroext false, ptr noundef null)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  invoke void @_ZN4Luau6TxnLog6commitEv(ptr noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !536  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !536  ; 2 uses
  %.not8.i = icmp eq ptr %i.g, %i.i
  br i1 %.not8.i, label %_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !347
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 928
  %i.m = load i32, ptr %i.l, align 8, !tbaa !509
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i
  %.sroa.05.09.i = phi ptr [ %i.y, %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !347  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 928
  %i.q = load i32, ptr %i.p, align 8, !tbaa !509
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 856
  invoke void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.05.09.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !347  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 864
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !536
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i: ; preds = %.noexc, %.lr.ph.split.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 184 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i, label %_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit.loopexit, label %.lr.ph.split.i, !llvm.loop !9

_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit.loopexit: ; preds = %_ZN4Luau11TypeChecker11reportErrorERKNS_9TypeErrorE.exit.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !536
  %.pre9 = load ptr, ptr %i.h, align 8, !tbaa !536
  %i.z = icmp eq ptr %.pre, %.pre9
  br label %_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit

_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit: ; preds = %_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit.loopexit, %.lr.ph.i, %bb.c
  %i.aa = phi i1 [ %i.z, %_ZN4Luau11TypeChecker12reportErrorsERKSt6vectorINS_9TypeErrorESaIS2_EE.exit.loopexit ], [ false, %.lr.ph.i ], [ true, %bb.c ]
  call void @_ZN4Luau7UnifierD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret i1 %i.aa

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %bb.d, %bb.b, %bb.a
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau7UnifierD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %lpad.loopexit.split-lp12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EERS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !537    ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !546  ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !295
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !269
  store ptr %i.j, ptr %i.f, align 8, !tbaa !269
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !546
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !269
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !269
  store ptr %i.o, ptr %i.f, align 8, !tbaa !269
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.p, ptr %i.e, align 8, !tbaa !546
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f, !prof !765

bb.e:                                             ; preds = %bb.d
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.l, i64 %i.r, i1 false)
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !294
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %i.r, 8
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !269
  store ptr %i.x, ptr %i.n, align 8, !tbaa !269
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.pre = phi ptr [ %i.a, %bb.g ], [ %i.a, %bb.f ], [ %.pre.pre, %bb.e ]
  store ptr %i.m, ptr %i.l, align 8, !tbaa !269
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.z = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.aa = sub i64 %i.z, %i.c                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
end_hunk_1
begin_hunk_2_@_ZN4Luau11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS_5ScopeEERKNS_7AstTypeE:bb.a
"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEENS1_IPNS2_21GenericTypeDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_2EbT_SQ_T0_SR_T1_.exit": ; preds = %.lr.ph.i.i.i, %bb.lf, %.loopexit
  %.0.i.i = phi i1 [ false, %.loopexit ], [ true, %bb.lf ], [ %i.bqx, %.lr.ph.i.i.i ]
  %i.bra = load ptr, ptr %38, align 8, !tbaa !708 ; 4 uses
  %i.brb = ptrtoint ptr %i.bqk to i64
  %i.brc = ptrtoint ptr %i.bra to i64
  %i.brd = sub i64 %i.brb, %i.brc
  %i.bre = ashr exact i64 %i.brd, 3
  %i.brf = ptrtoint ptr %i.bqi to i64
  %i.brg = ptrtoint ptr %i.bqj to i64
  %i.brh = sub i64 %i.brf, %i.brg
  %i.bri = sdiv exact i64 %i.brh, 24
  %.not.i.i1030 = icmp eq i64 %i.bre, %i.bri
  br i1 %.not.i.i1030, label %bb.lg, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread"

bb.lg:                                            ; preds = %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEENS1_IPNS2_21GenericTypeDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_2EbT_SQ_T0_SR_T1_.exit"
  %.not7.i.i.i1032 = icmp eq ptr %i.bra, %i.bqk
  br i1 %.not7.i.i.i1032, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit", label %.lr.ph.i.i.i1033

.lr.ph.i.i.i1033:                                 ; preds = %bb.lg, %bb.lh
  %.sroa.0.09.i.i.i1034 = phi ptr [ %i.brl, %bb.lh ], [ %i.bqj, %bb.lg ] ; 2 uses
  %.sroa.04.08.i.i.i1035 = phi ptr [ %i.brk, %bb.lh ], [ %i.bra, %bb.lg ] ; 2 uses
  %.val.i.i.i1036 = load ptr, ptr %.sroa.04.08.i.i.i1035, align 8, !tbaa !285
  %.val1.i.i.i1037 = load ptr, ptr %.sroa.0.09.i.i.i1034, align 8, !tbaa !710
  %i.brj = icmp eq ptr %.val.i.i.i1036, %.val1.i.i.i1037
  br i1 %i.brj, label %bb.lh, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread"

bb.lh:                                            ; preds = %.lr.ph.i.i.i1033
  %i.brk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i1035, i64 8 ; 2 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i1034, i64 24
  %.not.i.i.i1038 = icmp eq ptr %i.brk, %i.bqk
  br i1 %.not.i.i.i1038, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit", label %.lr.ph.i.i.i1033, !llvm.loop !1806

"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit": ; preds = %bb.lh, %bb.lg
  br i1 %.0.i.i, label %bb.li, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread"

bb.li:                                            ; preds = %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit"
  %i.brm = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.brn = load ptr, ptr %i.brm, align 16, !tbaa !527
  br label %bb.lj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i1009, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i1019, %bb.gx, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.go, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.fn, %.noexc792, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i800, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.gt, %bb.gr, %bb.gm, %bb.gv, %.invoke2469, %bb.hi, %_ZNKSt6vectorIPKN4Luau11TypePackVarESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i867, %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread"
  %lpad.loopexit.split-lp3415 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread": ; preds = %.lr.ph.i.i.i1033, %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEENS1_IPNS2_21GenericTypeDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_2EbT_SQ_T0_SR_T1_.exit", %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit"
  %i.bro = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.brp = invoke noundef ptr @_ZN4Luau11TypeChecker18instantiateTypeFunERKSt10shared_ptrINS_5ScopeEERKNS_7TypeFunERKSt6vectorIPKNS_4TypeESaISC_EERKS9_IPKNS_11TypePackVarESaISJ_EERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(76) %9, ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 4 dereferenceable(16) %i.bro)
          to label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread._crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread._crit_edge": ; preds = %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread"
  %.pre1955 = load ptr, ptr %38, align 8, !tbaa !292
  br label %bb.lj

bb.lj:                                            ; preds = %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread._crit_edge", %bb.li
  %i.brq = phi ptr [ %i.bra, %bb.li ], [ %.pre1955, %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread._crit_edge" ] ; 3 uses
  %.0256 = phi ptr [ %i.brn, %bb.li ], [ %i.brp, %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread._crit_edge" ]
  %.not.i.i.i1039 = icmp eq ptr %i.brq, null
  br i1 %.not.i.i.i1039, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.brr = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !293
  %i.brt = ptrtoint ptr %i.brs to i64
  %i.bru = ptrtoint ptr %i.brq to i64
  %i.brv = sub i64 %i.brt, %i.bru
  call void @_ZdlPvm(ptr noundef nonnull %i.brq, i64 noundef %i.brv) #36
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %bb.lj, %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #35
  %i.brw = load ptr, ptr %37, align 8, !tbaa !294 ; 3 uses
  %.not.i.i.i1040 = icmp eq ptr %i.brw, null
  br i1 %.not.i.i.i1040, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.ll

bb.ll:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.brx = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.bry = load ptr, ptr %i.brx, align 8, !tbaa !295
  %i.brz = ptrtoint ptr %i.bry to i64
  %i.bsa = ptrtoint ptr %i.brw to i64
  %i.bsb = sub i64 %i.brz, %i.bsa
  call void @_ZdlPvm(ptr noundef nonnull %i.brw, i64 noundef %i.bsb) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #35
  %i.bsc = load ptr, ptr %36, align 8, !tbaa !294 ; 3 uses
  %.not.i.i.i1041 = icmp eq ptr %i.bsc, null
  br i1 %.not.i.i.i1041, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1042, label %bb.lm

bb.lm:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.bsd = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !295
  %i.bsf = ptrtoint ptr %i.bse to i64
  %i.bsg = ptrtoint ptr %i.bsc to i64
  %i.bsh = sub i64 %i.bsf, %i.bsg
  call void @_ZdlPvm(ptr noundef nonnull %i.bsc, i64 noundef %i.bsh) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1042

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1042: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  br label %_ZN4Luau11TypeChecker17errorRecoveryTypeEPKNS_4TypeE.exit

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN4Luau12GenericErrorD2Ev.exit847, %bb.je, %bb.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005
  %.pn539.pn.pn = phi { ptr, i32 } [ %.pn523.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %.pn536.pn, %_ZN4Luau12GenericErrorD2Ev.exit847 ], [ %i.bde, %bb.jo ], [ %.pn528.pn, %bb.je ], [ %lpad.loopexit.split-lp3415, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bsi = load ptr, ptr %38, align 8, !tbaa !292 ; 3 uses
  %.not.i.i.i1043 = icmp eq ptr %i.bsi, null
  br i1 %.not.i.i.i1043, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit1044, label %bb.ln

bb.ln:                                            ; preds = %.loopexit.split-lp
  %i.bsj = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.bsk = load ptr, ptr %i.bsj, align 8, !tbaa !293
  %i.bsl = ptrtoint ptr %i.bsk to i64
  %i.bsm = ptrtoint ptr %i.bsi to i64
  %i.bsn = sub i64 %i.bsl, %i.bsm
  call void @_ZdlPvm(ptr noundef nonnull %i.bsi, i64 noundef %i.bsn) #36
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit1044

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit1044: ; preds = %.loopexit.split-lp, %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #35
  %i.bso = load ptr, ptr %37, align 8, !tbaa !294 ; 3 uses
  %.not.i.i.i1045 = icmp eq ptr %i.bso, null
  br i1 %.not.i.i.i1045, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1046, label %bb.lo

bb.lo:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit1044
  %i.bsp = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !295
  %i.bsr = ptrtoint ptr %i.bsq to i64
  %i.bss = ptrtoint ptr %i.bso to i64
  %i.bst = sub i64 %i.bsr, %i.bss
  call void @_ZdlPvm(ptr noundef nonnull %i.bso, i64 noundef %i.bst) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1046

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1046: ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit1044, %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #35
  %i.bsu = load ptr, ptr %36, align 8, !tbaa !294 ; 3 uses
  %.not.i.i.i1047 = icmp eq ptr %i.bsu, null
  br i1 %.not.i.i.i1047, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1048, label %bb.lp

bb.lp:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1046
  %i.bsv = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.bsw = load ptr, ptr %i.bsv, align 8, !tbaa !295
  %i.bsx = ptrtoint ptr %i.bsw to i64
  %i.bsy = ptrtoint ptr %i.bsu to i64
  %i.bsz = sub i64 %i.bsx, %i.bsy
  call void @_ZdlPvm(ptr noundef nonnull %i.bsu, i64 noundef %i.bsz) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1048

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1048: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1046, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  br label %bb.lt

_ZN4Luau11TypeChecker17errorRecoveryTypeEPKNS_4TypeE.exit: ; preds = %_ZN4Luau12GenericErrorD2Ev.exit, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1042, %bb.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit724, %bb.cl, %_ZN4Luau15ToStringOptionsD2Ev.exit
  %.1 = phi ptr [ %i.acd, %bb.eg ], [ %.0256, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1042 ], [ %i.rd, %bb.cl ], [ %i.abh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit724 ], [ %i.kf, %_ZN4Luau15ToStringOptionsD2Ev.exit ], [ %i.ix, %_ZN4Luau12GenericErrorD2Ev.exit ]
  %i.bta = load i8, ptr %i.ae, align 16, !tbaa !694, !range !104, !noundef !105
  %i.btb = trunc nuw i8 %i.bta to i1
  store i8 0, ptr %i.ae, align 16, !tbaa !694
  br i1 %i.btb, label %bb.lq, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit1052

bb.lq:                                            ; preds = %_ZN4Luau11TypeChecker17errorRecoveryTypeEPKNS_4TypeE.exit
  %i.btc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.btd = load ptr, ptr %i.btc, align 8, !tbaa !634 ; 3 uses
  %.not.i.i.i.i.i.i.i.i1049 = icmp eq ptr %i.btd, null
  br i1 %.not.i.i.i.i.i.i.i.i1049, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i1050, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bte = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.btf = load ptr, ptr %i.bte, align 8, !tbaa !635
  %i.btg = ptrtoint ptr %i.btf to i64
  %i.bth = ptrtoint ptr %i.btd to i64
  %i.bti = sub i64 %i.btg, %i.bth
  call void @_ZdlPvm(ptr noundef nonnull %i.btd, i64 noundef %i.bti) #36
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i1050

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i1050: ; preds = %bb.lr, %bb.lq
  %i.btj = load ptr, ptr %9, align 16, !tbaa !632 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i1051 = icmp eq ptr %i.btj, null
  br i1 %.not.i.i.i1.i.i.i.i.i1051, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit1052, label %bb.ls

bb.ls:                                            ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i1050
  %i.btk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.btl = load ptr, ptr %i.btk, align 16, !tbaa !633
  %i.btm = ptrtoint ptr %i.btl to i64
  %i.btn = ptrtoint ptr %i.btj to i64
  %i.bto = sub i64 %i.btm, %i.btn
  call void @_ZdlPvm(ptr noundef nonnull %i.btj, i64 noundef %i.bto) #36
  br label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit1052

_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit1052: ; preds = %_ZN4Luau11TypeChecker17errorRecoveryTypeEPKNS_4TypeE.exit, %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i1050, %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.uf

bb.lt:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1048, %_ZN4Luau12GenericErrorD2Ev.exit791, %bb.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, %bb.bo, %_ZN4Luau12GenericErrorD2Ev.exit591, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565
  %.pn539.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626 ], [ %.pn509.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727 ], [ %.pn502.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ], [ %.pn500, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ %i.ahz, %bb.fh ], [ %.pn497.pn, %_ZN4Luau12GenericErrorD2Ev.exit591 ], [ %.pn491.pn.pn.pn, %bb.bo ], [ %.pn512.pn, %_ZN4Luau12GenericErrorD2Ev.exit791 ], [ %.pn539.pn.pn, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1048 ]
  call void @_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1322

bb.lu:                                            ; preds = %bb.a
  %i.btp = load i32, ptr @_ZN4Luau7AstRttiINS_12AstTypeTableEE5valueE, align 4, !tbaa !75
  %.not1572 = icmp eq i32 %i.ac, %i.btp           ; 2 uses
  %..i1053 = select i1 %.not1572, ptr %2, ptr null
  br i1 %.not1572, label %bb.lv, label %bb.op

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #35
  %i.btq = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  store i32 0, ptr %i.btq, align 8, !tbaa !822
  %i.btr = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  store ptr null, ptr %i.btr, align 8, !tbaa !760
  %i.bts = getelementptr inbounds nuw i8, ptr %49, i64 24
  store ptr %i.btq, ptr %i.bts, align 8, !tbaa !819
  %i.btt = getelementptr inbounds nuw i8, ptr %49, i64 32
  store ptr %i.btq, ptr %i.btt, align 8, !tbaa !820
  %i.btu = getelementptr inbounds nuw i8, ptr %49, i64 40
  store i64 0, ptr %i.btu, align 8, !tbaa !821
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #35
  %i.btv = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 2 uses
  store i8 0, ptr %i.btv, align 8, !tbaa !645
  %i.btw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.btx = load ptr, ptr %i.btw, align 8, !tbaa !1825 ; 2 uses
  %i.bty = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.btz = load i64, ptr %i.bty, align 8, !tbaa !1826 ; 2 uses
  %.idx1825 = mul nuw nsw i64 %i.btz, 56
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btx, i64 %.idx1825
  %.not4591800 = icmp eq i64 %i.btz, 0
  br i1 %.not4591800, label %._crit_edge1805, label %.lr.ph1804

.lr.ph1804:                                       ; preds = %bb.lv
  %i.bub = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.buc = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  %i.bud = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.bue = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.buf = getelementptr inbounds nuw i8, ptr %61, i64 32 ; 5 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.buh = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 7 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.buj = getelementptr inbounds nuw i8, ptr %57, i64 136 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %57, i64 104
  %i.bul = getelementptr inbounds nuw i8, ptr %57, i64 120 ; 2 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %57, i64 80 ; 2 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %57, i64 88
  %i.buo = getelementptr inbounds nuw i8, ptr %57, i64 96
  %i.bup = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.buq = getelementptr inbounds nuw i8, ptr %57, i64 24 ; 2 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 4 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.but = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.buu = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 11 uses
  %i.buv = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 4 uses
  %i.buw = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 4 uses
  %i.bux = getelementptr inbounds nuw i8, ptr %55, i64 24 ; 3 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.buz = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 11 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 4 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 4 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %52, i64 24 ; 3 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %52, i64 16
  br label %bb.lw

._crit_edge1805:                                  ; preds = %bb.nj, %bb.lv
  %i.bve = getelementptr inbounds nuw i8, ptr %..i1053, i64 48 ; 2 uses
  %i.bvf = load ptr, ptr %i.bve, align 8, !tbaa !753 ; 7 uses
  %.not460 = icmp eq ptr %i.bvf, null
  br i1 %.not460, label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.nk

bb.lw:                                            ; preds = %.lr.ph1804, %bb.nj
  %.03471801 = phi ptr [ %i.btx, %.lr.ph1804 ], [ %i.ccd, %bb.nj ] ; 9 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %.03471801, i64 32
  %i.bvh = load i32, ptr %i.bvg, align 8, !tbaa !1828 ; 2 uses
  switch i32 %i.bvh, label %bb.ne [
    i32 1, label %bb.lx
    i32 2, label %bb.me
    i32 3, label %bb.ml
  ]

bb.lx:                                            ; preds = %bb.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #35
  %i.bvi = getelementptr inbounds nuw i8, ptr %.03471801, i64 52
  %i.bvj = load i8, ptr %i.bvi, align 4, !tbaa !732, !range !104, !noundef !105
  %i.bvk = trunc nuw i8 %i.bvj to i1
  br i1 %i.bvk, label %.cont1461.then, label %.cont1461.cont

.cont1461.then:                                   ; preds = %bb.lx
  %i.bvl = getelementptr inbounds nuw i8, ptr %.03471801, i64 36
  %i.bvm = load <2 x i64>, ptr %i.bvl, align 4, !tbaa !75
  br label %.cont1461.cont

.cont1461.cont:                                   ; preds = %bb.lx, %.cont1461.then
  %i.bvn = phi <2 x i64> [ %i.bvm, %.cont1461.then ], [ zeroinitializer, %bb.lx ]
  store <2 x i64> %i.bvn, ptr %51, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #35
  store ptr %i.buz, ptr %53, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #35
  store i64 28, ptr %i.q, align 8, !tbaa !608
  %i.bvo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc1057 unwind label %bb.mb ; 2 uses

.noexc1057:                                       ; preds = %.cont1461.cont
  store ptr %i.bvo, ptr %53, align 8, !tbaa !81
  %i.bvp = load i64, ptr %i.q, align 8, !tbaa !608 ; 3 uses
  store i64 %i.bvp, ptr %i.buz, align 8, !tbaa !288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.bvo, ptr noundef nonnull align 1 dereferenceable(28) @.str.149, i64 28, i1 false)
  store i64 %i.bvp, ptr %i.bva, align 8, !tbaa !133
  %i.bvq = load ptr, ptr %53, align 8, !tbaa !81
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 %i.bvp
  store i8 0, ptr %i.bvr, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #35
  store i32 18, ptr %52, align 8, !tbaa !303
  store ptr %i.bvc, ptr %i.bvb, align 8, !tbaa !287
  %i.bvs = load ptr, ptr %53, align 8, !tbaa !81  ; 2 uses
  %i.bvt = icmp eq ptr %i.bvs, %i.buz
  br i1 %i.bvt, label %bb.ly, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059

bb.ly:                                            ; preds = %.noexc1057
  %i.bvu = load i64, ptr %i.bva, align 8, !tbaa !133 ; 3 uses
  %i.bvv = icmp ult i64 %i.bvu, 16
  call void @llvm.assume(i1 %i.bvv)
  %i.bvw = add nuw nsw i64 %i.bvu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bvc, ptr noundef nonnull align 8 dereferenceable(1) %i.buz, i64 %i.bvw, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059: ; preds = %.noexc1057
  store ptr %i.bvs, ptr %i.bvb, align 8, !tbaa !81
  %i.bvx = load i64, ptr %i.buz, align 8, !tbaa !288
  store i64 %i.bvx, ptr %i.bvc, align 8, !tbaa !288
  %.pre1916 = load i64, ptr %i.bva, align 8, !tbaa !133
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061: ; preds = %bb.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059
  %i.bvy = phi i64 [ %i.bvu, %bb.ly ], [ %.pre1916, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059 ]
  store i64 %i.bvy, ptr %i.bvd, align 8, !tbaa !133
  store ptr %i.buz, ptr %53, align 8, !tbaa !81
  store i64 0, ptr %i.bva, align 8, !tbaa !133
  store i8 0, ptr %i.buz, align 8, !tbaa !288
  invoke void @_ZN4Luau11TypeChecker11reportErrorERKNS_8LocationENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 4 dereferenceable(16) %51, ptr noundef nonnull align 8 %52)
          to label %bb.lz unwind label %bb.mc

bb.lz:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061
  %i.bvz = load i32, ptr %52, align 8, !tbaa !303
  %i.bwa = sext i32 %i.bvz to i64
  %i.bwb = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bwa
  %i.bwc = load ptr, ptr %i.bwb, align 8, !tbaa !82
  invoke void %i.bwc(ptr noundef nonnull %i.bvb)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063 unwind label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bwd = landingpad { ptr, i32 }
          catch ptr null
  %i.bwe = extractvalue { ptr, i32 } %i.bwd, 0
  call void @__clang_call_terminate(ptr %i.bwe) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063: ; preds = %bb.lz
  %i.bwf = load ptr, ptr %53, align 8, !tbaa !81  ; 2 uses
  %i.bwg = icmp eq ptr %i.bwf, %i.buz
  br i1 %i.bwg, label %_ZN4Luau12GenericErrorD2Ev.exit1066, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1064

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1064: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063
  %i.bwh = load i64, ptr %i.buz, align 8, !tbaa !288
  %i.bwi = add i64 %i.bwh, 1
  call void @_ZdlPvm(ptr noundef %i.bwf, i64 noundef %i.bwi) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1066

_ZN4Luau12GenericErrorD2Ev.exit1066:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1064
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #35
  br label %bb.nj

bb.mb:                                            ; preds = %.cont1461.cont
  %i.bwj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit1071

bb.mc:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061
  %i.bwk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bwl = load i32, ptr %52, align 8, !tbaa !303
  %i.bwm = sext i32 %i.bwl to i64
  %i.bwn = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bwm
  %i.bwo = load ptr, ptr %i.bwn, align 8, !tbaa !82
  invoke void %i.bwo(ptr noundef nonnull %i.bvb)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068 unwind label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.bwp = landingpad { ptr, i32 }
          catch ptr null
  %i.bwq = extractvalue { ptr, i32 } %i.bwp, 0
  call void @__clang_call_terminate(ptr %i.bwq) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068: ; preds = %bb.mc
  %i.bwr = load ptr, ptr %53, align 8, !tbaa !81  ; 2 uses
  %i.bws = icmp eq ptr %i.bwr, %i.buz
  br i1 %i.bws, label %_ZN4Luau12GenericErrorD2Ev.exit1071, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068
  %i.bwt = load i64, ptr %i.buz, align 8, !tbaa !288
  %i.bwu = add i64 %i.bwt, 1
  call void @_ZdlPvm(ptr noundef %i.bwr, i64 noundef %i.bwu) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1071

_ZN4Luau12GenericErrorD2Ev.exit1071:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069, %bb.mb
  %.pn481 = phi { ptr, i32 } [ %i.bwj, %bb.mb ], [ %i.bwk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069 ], [ %i.bwk, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #35
  br label %bb.oo

bb.me:                                            ; preds = %bb.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #35
  %i.bwv = getelementptr inbounds nuw i8, ptr %.03471801, i64 52
  %i.bww = load i8, ptr %i.bwv, align 4, !tbaa !732, !range !104, !noundef !105
  %i.bwx = trunc nuw i8 %i.bww to i1
  br i1 %i.bwx, label %.cont1454.then, label %.cont1454.cont

.cont1454.then:                                   ; preds = %bb.me
  %i.bwy = getelementptr inbounds nuw i8, ptr %.03471801, i64 36
  %i.bwz = load <2 x i64>, ptr %i.bwy, align 4, !tbaa !75
  br label %.cont1454.cont

.cont1454.cont:                                   ; preds = %bb.me, %.cont1454.then
  %i.bxa = phi <2 x i64> [ %i.bwz, %.cont1454.then ], [ zeroinitializer, %bb.me ]
  store <2 x i64> %i.bxa, ptr %54, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #35
  store ptr %i.buu, ptr %56, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #35
  store i64 29, ptr %i.p, align 8, !tbaa !608
  %i.bxb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc1080 unwind label %bb.mi ; 2 uses

.noexc1080:                                       ; preds = %.cont1454.cont
  store ptr %i.bxb, ptr %56, align 8, !tbaa !81
  %i.bxc = load i64, ptr %i.p, align 8, !tbaa !608 ; 3 uses
  store i64 %i.bxc, ptr %i.buu, align 8, !tbaa !288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.bxb, ptr noundef nonnull align 1 dereferenceable(29) @.str.150, i64 29, i1 false)
  store i64 %i.bxc, ptr %i.buv, align 8, !tbaa !133
  %i.bxd = load ptr, ptr %56, align 8, !tbaa !81
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxd, i64 %i.bxc
  store i8 0, ptr %i.bxe, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #35
  store i32 18, ptr %55, align 8, !tbaa !303
  store ptr %i.bux, ptr %i.buw, align 8, !tbaa !287
  %i.bxf = load ptr, ptr %56, align 8, !tbaa !81  ; 2 uses
  %i.bxg = icmp eq ptr %i.bxf, %i.buu
  br i1 %i.bxg, label %bb.mf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082

bb.mf:                                            ; preds = %.noexc1080
  %i.bxh = load i64, ptr %i.buv, align 8, !tbaa !133 ; 3 uses
  %i.bxi = icmp ult i64 %i.bxh, 16
  call void @llvm.assume(i1 %i.bxi)
  %i.bxj = add nuw nsw i64 %i.bxh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bux, ptr noundef nonnull align 8 dereferenceable(1) %i.buu, i64 %i.bxj, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082: ; preds = %.noexc1080
  store ptr %i.bxf, ptr %i.buw, align 8, !tbaa !81
  %i.bxk = load i64, ptr %i.buu, align 8, !tbaa !288
  store i64 %i.bxk, ptr %i.bux, align 8, !tbaa !288
  %.pre1915 = load i64, ptr %i.buv, align 8, !tbaa !133
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084: ; preds = %bb.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082
end_hunk_2
