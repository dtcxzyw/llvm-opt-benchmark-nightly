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
  br label %bb.it

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
  br label %bb.it

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
  br label %bb.iu

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
  br label %bb.it

bb.p:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal13FloatingPointD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.iu

bb.q:                                             ; preds = %bb.j
  %i.ae = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode8isStringEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.ae, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.af, label %bb.s, label %bb.fw

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ag = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode8isStringEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.ag, label %bb.t, label %bb.bb

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !137
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.u, label %bb.bb

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
  %.not334 = icmp eq ptr %i.as, %i.at
  br i1 %.not334, label %._crit_edge338, label %.lr.ph337

._crit_edge338.loopexit:                          ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.pre360.a = load i64, ptr %.phi.trans.insert, align 8, !tbaa !395
  %i.au = icmp eq i64 %.pre360.a, 0
  br label %._crit_edge338

._crit_edge338:                                   ; preds = %._crit_edge338.loopexit, %bb.u
  %35 = phi i1 [ %i.au, %._crit_edge338.loopexit ], [ true, %bb.u ]
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 0, ptr %i.c, align 4, !tbaa !131
  br label %.preheader

.lr.ph337:                                        ; preds = %bb.u, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0293.0335 = phi ptr [ %i.cg, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.as, %bb.u ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0293.0335, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.ag

bb.v:                                             ; preds = %.lr.ph337
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
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit unwind label %.loopexit319 ; 3 uses

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
          to label %.noexc154 unwind label %.loopexit.split-lp320

.noexc154:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.aa
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #24
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge unwind label %.loopexit319

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !137 ; 3 uses
  %.pre359 = load ptr, ptr %i.bk, align 8, !tbaa !137 ; 2 uses
  %.pre364.a = ptrtoint ptr %.pre359 to i64
  %.pre365 = ptrtoint ptr %.pre to i64
  %i.bs = icmp eq ptr %.pre359, %.pre
  br label %.noexc155

.noexc155:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit
  %.pre-phi366 = phi i64 [ %.pre365, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge ], [ %i.bo, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ]
  %.pre-phi = phi i64 [ %.pre364.a, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge ], [ %i.bn, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ]
  %.not299332 = phi i1 [ %i.bs, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge ], [ true, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ]
  %i.bt = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge ], [ %i.bm, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ] ; 2 uses
  %i.bu = phi ptr [ %i.br, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc155_crit_edge ], [ null, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_6StringEEERKT_v.exit ] ; 8 uses
  %i.bv = sub i64 %.pre-phi, %.pre-phi366         ; 4 uses
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
  br i1 %.not299332, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aj, %bb.ae
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bp) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.ag:                                            ; preds = %.lr.ph337
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

.loopexit319:                                     ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit152, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit158

.loopexit.split-lp320:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit158

.lr.ph:                                           ; preds = %bb.ae, %bb.aj
  %.sroa.0284.0333 = phi ptr [ %i.ce, %bb.aj ], [ %i.bu, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.cc = load i32, ptr %.sroa.0284.0333, align 4, !tbaa !131
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %7, ptr %4, align 8, !tbaa !477
  %i.cd = invoke { ptr, i8 } @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKjSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.aj unwind label %bb.ak     ; 0 uses

bb.aj:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0284.0333, i64 4 ; 2 uses
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
  %i.cg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0293.0335) #28 ; 2 uses
  %.not = icmp eq ptr %i.cg, %i.at
  br i1 %.not, label %._crit_edge338.loopexit, label %.lr.ph337

.preheader:                                       ; preds = %._crit_edge338, %bb.aq
  %36 = phi i1 [ %35, %._crit_edge338 ], [ false, %bb.aq ]
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
  br i1 %.not.i.i160.us, label %.loopexit315.split.us, label %bb.an

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
  %.not.i.i.i.i159339 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i159339, label %.loopexit315.split.us, label %.lr.ph340

.lr.ph340:                                        ; preds = %.preheader.split, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit
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

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph340, %bb.ao
  %.020.i.i.i.i = phi ptr [ %i.db, %bb.ao ], [ %i.cw, %.lr.ph340 ]
  %i.db = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !126 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not18.i.i.i.i, label %.loopexit315.split.us, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !131 ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = urem i64 %i.de, %i.ci
  %.not19.i.i.i.i = icmp eq i64 %i.df, %i.cu
  br i1 %.not19.i.i.i.i, label %bb.ao, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !469

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ap
  br label %.loopexit315.split.us, !llvm.loop !469

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit: ; preds = %bb.ao, %.lr.ph340
  %i.dg = add i32 %i.cv, 1                        ; 3 uses
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !131
  %i.dh = zext i32 %i.dg to i64
  %i.di = urem i64 %i.dh, %i.ci                   ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !396 ; 2 uses
  %.not.i.i.i.i159 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i159, label %.loopexit315.split.us, label %.lr.ph340, !llvm.loop !468

.loopexit315.split.us:                            ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, %.lr.ph.i.i.i.i, %bb.am, %.preheader.split, %..loopexit_crit_edge21.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %7, ptr %3, align 8, !tbaa !477
  %i.dl = invoke { ptr, i8 } @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKjSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.aq unwind label %bb.ar     ; 0 uses

bb.aq:                                            ; preds = %.loopexit315.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %36, label %.preheader, label %bb.as, !llvm.loop !470

bb.ar:                                            ; preds = %.loopexit315.split.us
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.as:                                            ; preds = %bb.aq
  %i.dn = load ptr, ptr %i.ao, align 8, !tbaa !397 ; 2 uses
  %.not298342 = icmp eq ptr %i.dn, null
  br i1 %.not298342, label %._crit_edge346.thread, label %.lr.ph345

._crit_edge346.thread:                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i

.lr.ph345:                                        ; preds = %bb.as
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  %.pre361.a = load ptr, ptr %i.aj, align 8, !tbaa !129
  %.pre362.a = load ptr, ptr %i.do, align 8, !tbaa !389
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph345, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.dp = phi ptr [ %.pre362.a, %.lr.ph345 ], [ %i.en, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %i.dq = phi ptr [ %.pre361.a, %.lr.ph345 ], [ %i.eo, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 3 uses
  %.sroa.0277.0343 = phi ptr [ %i.dn, %.lr.ph345 ], [ %i.ep, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0277.0343, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !131 ; 2 uses
  %.not.i166 = icmp eq ptr %i.dq, %i.dp
  br i1 %.not.i166, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !131
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  store ptr %i.dt, ptr %i.aj, align 8, !tbaa !129
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.av:                                            ; preds = %bb.at
  %i.du = load ptr, ptr %i.ah, align 8, !tbaa !128 ; 4 uses
  %i.dv = ptrtoint ptr %i.dp to i64
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 5 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775804
  br i1 %i.dy, label %bb.aw, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #27
          to label %.noexc168 unwind label %.loopexit.split-lp311

.noexc168:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.av
  %i.dz = ashr exact i64 %i.dx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 2305843009213693951)
  %i.ed = select i1 %i.eb, i64 2305843009213693951, i64 %i.ec ; 3 uses
  %.not.i.i.i167 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i167)
  %i.ee = shl nuw nsw i64 %i.ed, 2
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #24
          to label %.noexc169 unwind label %.loopexit310 ; 4 uses

.noexc169:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.dx ; 2 uses
  store i32 %i.ds, ptr %i.eg, align 4, !tbaa !131
  %i.eh = icmp sgt i64 %i.dx, 0
  br i1 %i.eh, label %bb.ax, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.ax:                                            ; preds = %.noexc169
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr align 4 %i.du, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.ax, %.noexc169
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !389
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.el) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ay, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ef, ptr %i.ah, align 8, !tbaa !128
  store ptr %i.ei, ptr %i.aj, align 8, !tbaa !129
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ed ; 2 uses
  store ptr %i.em, ptr %i.do, align 8, !tbaa !389
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.au
  %i.en = phi ptr [ %i.em, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.dp, %bb.au ]
  %i.eo = phi ptr [ %i.ei, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.dt, %bb.au ]
  %i.ep = load ptr, ptr %.sroa.0277.0343, align 8, !tbaa !126 ; 2 uses
  %.not298 = icmp eq ptr %i.ep, null
  br i1 %.not298, label %._crit_edge346, label %bb.at

.loopexit310:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit312 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp311:                            ; preds = %bb.aw
  %lpad.loopexit.split-lp313 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

._crit_edge346:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.pre363 = load ptr, ptr %i.ao, align 8, !tbaa !397 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %.not5.i.i.i.i = icmp eq ptr %.pre363, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i181

.lr.ph.i.i.i.i181:                                ; preds = %._crit_edge346, %.lr.ph.i.i.i.i181
  %.06.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i181 ], [ %.pre363, %._crit_edge346 ] ; 2 uses
  %i.eq = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !126 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #26
  %.not.i.i.i.i182 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i182, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i181, !llvm.loop !12

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i181, %._crit_edge346.thread, %._crit_edge346
  %i.er = load ptr, ptr %7, align 8, !tbaa !392
  %i.es = load i64, ptr %i.an, align 8, !tbaa !393
  %i.et = shl i64 %i.es, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.er, i8 0, i64 %i.et, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.eu = load ptr, ptr %7, align 8, !tbaa !392   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.am
  br i1 %i.ev, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ew = load i64, ptr %i.an, align 8, !tbaa !393
  %i.ex = shl i64 %i.ew, 3
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #26
  br label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.bb

bb.ba:                                            ; preds = %.loopexit310, %.loopexit.split-lp311, %bb.ar
  %.pn133.pn = phi { ptr, i32 } [ %i.dm, %bb.ar ], [ %lpad.loopexit312, %.loopexit310 ], [ %lpad.loopexit.split-lp313, %.loopexit.split-lp311 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit158

_ZNSt6vectorIjSaIjEED2Ev.exit158:                 ; preds = %.loopexit319, %.loopexit.split-lp320, %bb.ai, %bb.al, %bb.ak, %bb.ba
  %.pn138.pn.pn = phi { ptr, i32 } [ %.pn133.pn, %bb.ba ], [ %.pn136, %bb.ai ], [ %i.cf, %bb.al ], [ %i.cf, %bb.ak ], [ %lpad.loopexit321, %.loopexit319 ], [ %lpad.loopexit.split-lp322, %.loopexit.split-lp320 ]
  call void @_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.iu

bb.bb:                                            ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ey = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode8isStringEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.bc unwind label %.loopexit.split-lp301

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.ey, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !129
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !128
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 2
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.fh = phi i64 [ %i.fg, %bb.bd ], [ 10, %bb.bc ] ; 6 uses
  %i.fi = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4cvc58internal6Random9getRandomEvE9s_current) ; 3 uses
  %i.fj = add nsw i64 %i.fh, -1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 3 uses
  %.not.i.i.i187 = icmp eq i64 %i.fh, 0
  %i.fl = zext i64 %i.fh to i128                  ; 2 uses
  %i.fm = sub nsw i64 0, %i.fh
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.outer

_ZNSt6vectorIjSaIjEE9push_backEOj.exit.outer:     ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.be
  %.ph = phi ptr [ %i.hf, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ null, %bb.be ] ; 3 uses
  %.ph474 = phi ptr [ %i.he, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ null, %bb.be ]
  %.ph475 = phi ptr [ %i.hb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ null, %bb.be ] ; 9 uses
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.outer, %bb.bq
  %i.fq = phi ptr [ %i.gq, %bb.bq ], [ %.ph474, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit.outer ] ; 4 uses
  %i.fr = load i8, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.bf, label %bb.bg, !prof !373

bb.bf:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
end_hunk_0
