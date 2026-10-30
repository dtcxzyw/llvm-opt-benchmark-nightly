Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sygus_sampler?download=true
inline.NumInlined: 3210
inline.NumDeleted: 1336
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

_ZN4cvc58internal4expr9NodeValue3incEv.exit:      ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers12SygusSampler14getRandomValueENS0_8TypeNodeE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(792) %1, ptr noundef align 8 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode.723", align 8 ; 4 uses
  %4 = alloca %"struct.std::__detail::_AllocNode.723", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.cvc5::internal::BitVector", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::FloatingPoint", align 8 ; 8 uses
  %7 = alloca %"class.std::unordered_set.559", align 8 ; 19 uses
  %8 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %9 = alloca %"class.std::vector.64", align 8    ; 12 uses
  %10 = alloca %"class.cvc5::internal::String", align 8 ; 9 uses
  %11 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %12 = alloca %"class.cvc5::internal::Rational", align 8 ; 9 uses
  %13 = alloca %"class.std::vector.33", align 8   ; 14 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %15 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %16 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %17 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %19 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate.442", align 8 ; 2 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate.442", align 8 ; 2 uses
  %25 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 11 uses
  %26 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %28 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %29 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %30 = alloca %"class.cvc5::internal::Rational", align 8 ; 8 uses
  %31 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %32 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %33 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %34 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %i.d = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 11 uses
  %i.e = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isBooleanEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.f = load i8, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4cvc58internal6Random9getRandomEv.exit, !prof !373

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4cvc58internal6RandomC1Em(ptr noundef nonnull align 8 dereferenceable(2544) @_ZZN4cvc58internal6Random9getRandomEvE9s_current, i64 noundef 0)
  %i.h = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4cvc58internal6RandomD1Ev, ptr nonnull @_ZZN4cvc58internal6Random9getRandomEvE9s_current, ptr nonnull @__dso_handle) #16 ; 0 uses
  store i8 1, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  br label %_ZN4cvc58internal6Random9getRandomEv.exit

_ZN4cvc58internal6Random9getRandomEv.exit:        ; preds = %bb.b, %bb.c
  %i.i = tail call noundef nonnull align 8 dereferenceable(2544) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4cvc58internal6Random9getRandomEvE9s_current)
  %i.j = tail call noundef zeroext i1 @_ZN4cvc58internal6Random12pickWithProbEd(ptr noundef nonnull align 8 dereferenceable(2544) %i.i, double noundef 5.000000e-01)
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %i.a, align 1, !tbaa !474
  call void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ip

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode11isBitVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.l, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef i32 @_ZNK4cvc58internal8TypeNode16getBitVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN4cvc58internal7Sampler13pickBvUniformEj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::BitVector") align 8 %5, i32 noundef %i.m)
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_9BitVectorEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #25
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit:             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ip

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN4cvc58internal9BitVectorD2Ev.exit146 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #25
  unreachable

_ZN4cvc58internal9BitVectorD2Ev.exit146:          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.iq

bb.j:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode15isFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.u, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.v = tail call noundef i32 @_ZNK4cvc58internal8TypeNode28getFloatingPointExponentSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.w = tail call noundef i32 @_ZNK4cvc58internal8TypeNode31getFloatingPointSignificandSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.x = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 344
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !326, !nonnull !327, !align !328
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 596
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !475, !range !367, !noundef !327
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN4cvc58internal7Sampler13pickFpUniformEjj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::FloatingPoint") align 8 %6, i32 noundef %i.v, i32 noundef %i.w)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @_ZN4cvc58internal7Sampler12pickFpBiasedEjj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::FloatingPoint") align 8 %6, i32 noundef %i.v, i32 noundef %i.w)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_13FloatingPointEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN4cvc58internal13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ip

bb.p:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.iq

bb.q:                                             ; preds = %bb.j
  %i.ae = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode8isStringEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.ae, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.af, label %bb.s, label %bb.fs

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ag = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode8isStringEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.ag, label %bb.t, label %bb.az

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !137
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.u, label %bb.az

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.am, ptr %7, align 8, !tbaa !392
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 1, ptr %i.an, align 8, !tbaa !393
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ap, align 8, !tbaa !394
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 2 uses
  %.not326 = icmp eq ptr %i.as, %i.at
  br i1 %.not326, label %._crit_edge330, label %.lr.ph329

._crit_edge330.loopexit:                          ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.pre365.a = load i64, ptr %.phi.trans.insert, align 8, !tbaa !395
  %i.au = icmp eq i64 %.pre365.a, 0
  br label %._crit_edge330

._crit_edge330:                                   ; preds = %._crit_edge330.loopexit, %bb.u
  %35 = phi i1 [ %i.au, %._crit_edge330.loopexit ], [ true, %bb.u ]
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 0, ptr %i.c, align 4, !tbaa !131
  br label %.preheader

.lr.ph329:                                        ; preds = %bb.u, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0293.0327 = phi ptr [ %i.cg, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.as, %bb.u ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0293.0327, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.ag

bb.v:                                             ; preds = %.lr.ph329
  %i.ax = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode8isStringEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.ay = load ptr, ptr %8, align 8, !tbaa !45    ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.ba = and i64 %i.az, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ba, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.x, !prof !122

bb.x:                                             ; preds = %bb.w
  %i.bb = add i64 %i.az, 1152920405095219200
  %i.bc = and i64 %i.bb, 1152920405095219200      ; 2 uses
  %i.bd = and i64 %i.az, -1152920405095219201
  %i.be = or disjoint i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.ay, align 8
  %i.bf = icmp eq i64 %i.bc, 0
  br i1 %i.bf, label %bb.y, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !122

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br i1 %i.ax, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit152, label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit152: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !121
  %i.bj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6StringEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit unwind label %.loopexit.split-lp315.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit152
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !129 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !128 ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i.i, label %.noexc155, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit
  %i.bq = icmp ugt i64 %i.bp, 9223372036854775804
  br i1 %i.bq, label %.noexc.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !122

.noexc.i.i:                                       ; preds = %bb.aa
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc154 unwind label %.loopexit.split-lp315.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc154:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.aa
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #24
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge unwind label %.loopexit.split-lp315.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !137 ; 3 uses
  %.pre364 = load ptr, ptr %i.bk, align 8, !tbaa !137 ; 2 uses
  %.pre369.a = ptrtoint ptr %.pre364 to i64
  %.pre370 = ptrtoint ptr %.pre to i64
  %i.bs = icmp eq ptr %.pre364, %.pre
  br label %.noexc155

.noexc155:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit
  %.pre-phi371 = phi i64 [ %.pre370, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge ], [ %i.bo, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ]
  %.pre-phi = phi i64 [ %.pre369.a, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge ], [ %i.bn, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ]
  %.not299324 = phi i1 [ %i.bs, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge ], [ true, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ]
  %i.bt = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge ], [ %i.bm, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ] ; 2 uses
  %i.bu = phi ptr [ %i.br, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge ], [ null, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ] ; 8 uses
  %i.bv = sub i64 %.pre-phi, %.pre-phi371         ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.ab, label %bb.ac, !prof !127

bb.ab:                                            ; preds = %.noexc155
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bu, ptr align 4 %i.bt, i64 %i.bv, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc155
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.by = load i32, ptr %i.bt, align 4, !tbaa !131
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !131
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  br i1 %.not299324, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aj, %bb.ae
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.ag:                                            ; preds = %.lr.ph329
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn136 = phi { ptr, i32 } [ %i.cb, %bb.ah ], [ %i.ca, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit158

.loopexit.split-lp315.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit152, %.noexc.i.i
  %lpad.loopexit.split-lp508 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit158

.lr.ph:                                           ; preds = %bb.ae, %bb.aj
  %.sroa.0284.0325 = phi ptr [ %i.ce, %bb.aj ], [ %i.bu, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.cc = load i32, ptr %.sroa.0284.0325, align 4, !tbaa !131
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %7, ptr %4, align 8, !tbaa !477
  %i.cd = invoke { ptr, i8 } @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKjSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.aj unwind label %bb.ak     ; 0 uses

bb.aj:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0284.0325, i64 4 ; 2 uses
  %.not299 = icmp eq ptr %i.ce, %i.bz
  br i1 %.not299, label %._crit_edge, label %.lr.ph

bb.ak:                                            ; preds = %.lr.ph
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.not.i.i.i157 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIjSaIjEED2Ev.exit158, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit158

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.af, %._crit_edge, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.cg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0293.0327) #28 ; 2 uses
  %.not = icmp eq ptr %i.cg, %i.at
  br i1 %.not, label %._crit_edge330.loopexit, label %.lr.ph329

.preheader:                                       ; preds = %._crit_edge330, %bb.aq
  %36 = phi i1 [ %35, %._crit_edge330 ], [ false, %bb.aq ]
  %i.ch = load i64, ptr %i.av, align 8, !tbaa !395
  %.not.not.i.i = icmp eq i64 %i.ch, 0
  %.promoted = load i32, ptr %i.c, align 4        ; 3 uses
  %i.ci = load i64, ptr %i.an, align 8            ; 3 uses
  %i.cj = load ptr, ptr %7, align 8               ; 2 uses
  br i1 %.not.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit.loopexit.us
  %i.ck = phi i32 [ %i.co, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit.loopexit.us ], [ %.promoted, %.preheader ] ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.preheader.split.us
  %.sroa.06.0.in.i.i.us = phi ptr [ %i.ao, %.preheader.split.us ], [ %.sroa.06.0.i.i.us, %bb.an ]
  %.sroa.06.0.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.us, align 8, !tbaa !126 ; 3 uses
  %.not.i.i160.us = icmp eq ptr %.sroa.06.0.i.i.us, null
  br i1 %.not.i.i160.us, label %.loopexit307.split.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !131
  %i.cn = icmp eq i32 %i.ck, %i.cm
  br i1 %i.cn, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit.loopexit.us, label %bb.am, !llvm.loop !467

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit.loopexit.us: ; preds = %bb.an
  %i.co = add i32 %i.ck, 1                        ; 2 uses
  store i32 %i.co, ptr %i.c, align 4, !tbaa !131
  br label %.preheader.split.us, !llvm.loop !468

.preheader.split:                                 ; preds = %.preheader
  %i.cp = zext i32 %.promoted to i64
  %i.cq = urem i64 %i.cp, %i.ci                   ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !396 ; 2 uses
  %.not.i.i.i.i159331 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i159331, label %.loopexit307.split.us, label %.lr.ph332

.lr.ph332:                                        ; preds = %.preheader.split, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit
  %i.ct = phi ptr [ %i.dk, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit ], [ %i.cs, %.preheader.split ]
  %i.cu = phi i64 [ %i.di, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit ], [ %i.cq, %.preheader.split ]
  %i.cv = phi i32 [ %i.dg, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit ], [ %.promoted, %.preheader.split ] ; 3 uses
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !126 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !131
  %i.cz = icmp eq i32 %i.cv, %i.cy
  br i1 %i.cz, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, label %.lr.ph.i.i.i.i

bb.ao:                                            ; preds = %bb.ap
  %i.da = icmp eq i32 %i.cv, %i.dd
  br i1 %i.da, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, label %.lr.ph.i.i.i.i, !llvm.loop !469

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph332, %bb.ao
  %.020.i.i.i.i = phi ptr [ %i.db, %bb.ao ], [ %i.cw, %.lr.ph332 ]
  %i.db = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !126 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not18.i.i.i.i, label %.loopexit307.split.us, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !131 ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = urem i64 %i.de, %i.ci
  %.not19.i.i.i.i = icmp eq i64 %i.df, %i.cu
  br i1 %.not19.i.i.i.i, label %bb.ao, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !469

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ap
  br label %.loopexit307.split.us, !llvm.loop !469

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit: ; preds = %bb.ao, %.lr.ph332
  %i.dg = add i32 %i.cv, 1                        ; 3 uses
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !131
  %i.dh = zext i32 %i.dg to i64
  %i.di = urem i64 %i.dh, %i.ci                   ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !396 ; 2 uses
  %.not.i.i.i.i159 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i159, label %.loopexit307.split.us, label %.lr.ph332, !llvm.loop !468

.loopexit307.split.us:                            ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, %.lr.ph.i.i.i.i, %bb.am, %.preheader.split, %..loopexit_crit_edge21.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %7, ptr %3, align 8, !tbaa !477
  %i.dl = invoke { ptr, i8 } @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKjSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.aq unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aq:                                            ; preds = %.loopexit307.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %36, label %.preheader, label %bb.ar, !llvm.loop !470

bb.ar:                                            ; preds = %bb.aq
  %i.dm = load ptr, ptr %i.ao, align 8, !tbaa !397 ; 2 uses
  %.not298334 = icmp eq ptr %i.dm, null
  br i1 %.not298334, label %._crit_edge338.thread, label %.lr.ph337

._crit_edge338.thread:                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i

.lr.ph337:                                        ; preds = %bb.ar
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  %.pre366.a = load ptr, ptr %i.aj, align 8, !tbaa !129
  %.pre367.a = load ptr, ptr %i.dn, align 8, !tbaa !389
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph337, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.do = phi ptr [ %.pre367.a, %.lr.ph337 ], [ %i.em, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %i.dp = phi ptr [ %.pre366.a, %.lr.ph337 ], [ %i.en, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.sroa.0277.0335 = phi ptr [ %i.dm, %.lr.ph337 ], [ %i.eo, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0277.0335, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !131 ; 2 uses
  %.not.i166 = icmp eq ptr %i.dp, %i.do
  br i1 %.not.i166, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !131
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  store ptr %i.ds, ptr %i.aj, align 8, !tbaa !129
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.au:                                            ; preds = %bb.as
  %i.dt = load ptr, ptr %i.ah, align 8, !tbaa !128 ; 4 uses
  %i.du = ptrtoint ptr %i.do to i64
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 5 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775804
  br i1 %i.dx, label %bb.av, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #27
          to label %.noexc168 unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc168:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.au
  %i.dy = ashr exact i64 %i.dw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 2305843009213693951)
  %i.ec = select i1 %i.ea, i64 2305843009213693951, i64 %i.eb ; 3 uses
  %.not.i.i.i167 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i167)
  %i.ed = shl nuw nsw i64 %i.ec, 2
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #24
          to label %.noexc169 unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc169:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.dw ; 2 uses
  store i32 %i.dr, ptr %i.ef, align 4, !tbaa !131
  %i.eg = icmp sgt i64 %i.dw, 0
  br i1 %i.eg, label %bb.aw, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.aw:                                            ; preds = %.noexc169
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ee, ptr align 4 %i.dt, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.aw, %.noexc169
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ei = load ptr, ptr %i.dn, align 8, !tbaa !389
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = sub i64 %i.ej, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.ek) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ax, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ee, ptr %i.ah, align 8, !tbaa !128
  store ptr %i.eh, ptr %i.aj, align 8, !tbaa !129
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec ; 2 uses
  store ptr %i.el, ptr %i.dn, align 8, !tbaa !389
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.at
  %i.em = phi ptr [ %i.el, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.do, %bb.at ]
  %i.en = phi ptr [ %i.eh, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.ds, %bb.at ]
  %i.eo = load ptr, ptr %.sroa.0277.0335, align 8, !tbaa !126 ; 2 uses
  %.not298 = icmp eq ptr %i.eo, null
  br i1 %.not298, label %._crit_edge338, label %bb.as

.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %.loopexit307.split.us, %bb.av
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit158

._crit_edge338:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pre368 = load ptr, ptr %i.ao, align 8, !tbaa !397 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %.not5.i.i.i.i = icmp eq ptr %.pre368, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i181

.lr.ph.i.i.i.i181:                                ; preds = %._crit_edge338, %.lr.ph.i.i.i.i181
  %.06.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i181 ], [ %.pre368, %._crit_edge338 ] ; 2 uses
  %i.ep = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !126 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #26
  %.not.i.i.i.i182 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i182, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i181, !llvm.loop !12

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i181, %._crit_edge338.thread, %._crit_edge338
  %i.eq = load ptr, ptr %7, align 8, !tbaa !392
  %i.er = load i64, ptr %i.an, align 8, !tbaa !393
  %i.es = shl i64 %i.er, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.eq, i8 0, i64 %i.es, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.et = load ptr, ptr %7, align 8, !tbaa !392   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.am
  br i1 %i.eu, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ev = load i64, ptr %i.an, align 8, !tbaa !393
  %i.ew = shl i64 %i.ev, 3
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #26
  br label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.az

_ZNSt6vectorIjSaIjEED2Ev.exit158:                 ; preds = %.loopexit.split-lp315.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ai, %bb.al, %bb.ak, %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn138.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp505, %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn136, %bb.ai ], [ %i.cf, %bb.al ], [ %i.cf, %bb.ak ], [ %lpad.loopexit.split-lp508, %.loopexit.split-lp315.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.iq

bb.az:                                            ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ex = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode8isStringEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ex, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !129
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !128
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 2
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.fg = phi i64 [ %i.ff, %bb.bb ], [ 10, %bb.ba ] ; 6 uses
  %i.fh = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4cvc58internal6Random9getRandomEvE9s_current) ; 3 uses
  %i.fi = add nsw i64 %i.fg, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %.not.i.i.i187 = icmp eq i64 %i.fg, 0
  %i.fk = zext i64 %i.fg to i128                  ; 2 uses
  %i.fl = sub nsw i64 0, %i.fg
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.outer

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.outer:     ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.bc
  %.ph = phi ptr [ %i.he, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ null, %bb.bc ] ; 3 uses
  %.ph481 = phi ptr [ %i.hd, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ null, %bb.bc ]
  %.ph482 = phi ptr [ %i.ha, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ null, %bb.bc ] ; 9 uses
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.outer, %bb.bo
  %i.fp = phi ptr [ %i.gp, %bb.bo ], [ %.ph481, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.outer ] ; 4 uses
  %i.fq = load i8, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.bd, label %bb.be, !prof !373

bb.bd:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  invoke void @_ZN4cvc58internal6RandomC1Em(ptr noundef nonnull align 8 dereferenceable(2544) @_ZZN4cvc58internal6Random9getRandomEvE9s_current, i64 noundef 0)
          to label %.noexc183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc183:                                        ; preds = %bb.bd
  %i.fs = call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4cvc58internal6RandomD1Ev, ptr nonnull @_ZZN4cvc58internal6Random9getRandomEvE9s_current, ptr nonnull @__dso_handle) #16 ; 0 uses
  store i8 1, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  br label %bb.be

bb.be:                                            ; preds = %.noexc183, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ft = invoke noundef zeroext i1 @_ZN4cvc58internal6Random12pickWithProbEd(ptr noundef nonnull align 8 dereferenceable(2544) %i.fh, double noundef 5.000000e-01)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  br i1 %i.ft, label %bb.bg, label %bb.bt
end_hunk_0
