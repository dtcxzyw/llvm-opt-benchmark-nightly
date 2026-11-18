Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/polynomial?download=true
inline.NumInlined: 6687
inline.NumDeleted: 1176
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN10polynomial7manager3divEPKNS_8monomialES3_:bb.a
bb.d:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !73
  %.not.i.i.i = icmp ult i32 %i.y, %i.aa
  %i.ab = add i32 %.02639.i.i.i9, 1
  br i1 %.not.i.i.i, label %_ZN10polynomial7manager3imp3divEPKNS_8monomialES4_.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ac = icmp ult i32 %i.u, %i.v
  br i1 %i.ac, label %bb.f, label %_ZN10polynomial7manager3imp3divEPKNS_8monomialES4_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.02639.i.i.i9, %bb.e ] ; 2 uses
  %i.ad = icmp eq i32 %.3.i.i.i, %i.k
  br i1 %i.ad, label %._ZN10polynomial7manager3imp3divEPKNS_8monomialES4_.exit.loopexit_crit_edge, label %.lr.ph.i.i.i, !llvm.loop !365

._ZN10polynomial7manager3imp3divEPKNS_8monomialES4_.exit.loopexit_crit_edge: ; preds = %bb.f
  br label %_ZN10polynomial7manager3imp3divEPKNS_8monomialES4_.exit, !llvm.loop !365

_ZN10polynomial7manager3imp3divEPKNS_8monomialES4_.exit: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i, %._ZN10polynomial7manager3imp3divEPKNS_8monomialES4_.exit.loopexit_crit_edge, %bb.a, %bb.b, %bb.c, %.preheader.i.i.i
  %.0.i.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ true, %.preheader.i.i.i ], [ true, %._ZN10polynomial7manager3imp3divEPKNS_8monomialES4_.exit.loopexit_crit_edge ], [ false, %.lr.ph.preheader.i.i.i ], [ false, %.lr.ph.i.i.i ], [ false, %bb.d ], [ false, %bb.e ]
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10polynomial7manager3divEPKNS_8monomialES3_R7obj_refIS1_S0_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.d = tail call noundef zeroext i1 @_ZN10polynomial16monomial_manager3divEPKNS_8monomialES3_R7obj_refIS1_NS_7managerEE(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10polynomial7manager20newton_interpolationEjjPK3mpzPKPNS_10polynomialER7obj_refIS4_S0_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.polynomial::manager::imp::newton_interpolator", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN10polynomial7manager3imp19newton_interpolatorC2ERS1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(824) %i.a)
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  invoke void @_ZN10polynomial7manager3imp19newton_interpolator2mkEjR7obj_refINS_10polynomialES0_E(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN10polynomial7manager3imp20newton_interpolationEjjPK3mpzPKPNS_10polynomialER7obj_refIS5_S0_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.d, %bb.a
  %.01214.i = phi i32 [ 0, %bb.a ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = zext i32 %.01214.i to i64                ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.b
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  invoke void @_ZN10polynomial7manager3imp19newton_interpolator3addERK3mpzPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef %i.e)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.01214.i, 1                     ; 2 uses
  %.not.i = icmp ugt i32 %i.f, %2
  br i1 %.not.i, label %bb.b, label %bb.c, !llvm.loop !366

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.b
  %lpad.loopexit.split-lp6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10polynomial7manager3imp19newton_interpolatorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %lpad.loopexit.split-lp6

_ZN10polynomial7manager3imp20newton_interpolationEjjPK3mpzPKPNS_10polynomialER7obj_refIS5_S0_E.exit: ; preds = %bb.b
  call void @_ZN10polynomial7manager3imp19newton_interpolatorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10polynomial7manager3gcdEPKNS_8monomialES3_RPS1_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.m = tail call noundef zeroext i1 @_ZN10polynomial16monomial_manager8gcd_coreEjPKNS_5powerEjS3_RNS_12tmp_monomialES5_S5_(ptr noundef nonnull align 8 dereferenceable(192) %i.c, i32 noundef %i.e, ptr noundef nonnull %i.f, i32 noundef %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %i.l)
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.k)
  store ptr %i.n, ptr %3, align 8, !tbaa !176
  %i.o = tail call noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.l)
  store ptr %i.o, ptr %4, align 8, !tbaa !176
  %i.p = tail call noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.j)
  br label %_ZN10polynomial7manager3imp3gcdEPKNS_8monomialES4_RPS2_S6_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %2, ptr %3, align 8, !tbaa !176
  store ptr %1, ptr %4, align 8, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !158
  br label %_ZN10polynomial7manager3imp3gcdEPKNS_8monomialES4_RPS2_S6_.exit

_ZN10polynomial7manager3imp3gcdEPKNS_8monomialES4_RPS2_S6_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.r, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10polynomial7manager5unifyEPKNS_8monomialES3_RPS1_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.m = tail call noundef zeroext i1 @_ZN10polynomial16monomial_manager8gcd_coreEjPKNS_5powerEjS3_RNS_12tmp_monomialES5_S5_(ptr noundef nonnull align 8 dereferenceable(192) %i.c, i32 noundef %i.e, ptr noundef nonnull %i.f, i32 noundef %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %i.l) ; 2 uses
  br i1 %i.m, label %bb.b, label %_ZN10polynomial7manager3imp5unifyEPKNS_8monomialES4_RPS2_S6_.exit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.k)
  store ptr %i.n, ptr %3, align 8, !tbaa !176
  %i.o = tail call noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.l)
  store ptr %i.o, ptr %4, align 8, !tbaa !176
  br label %_ZN10polynomial7manager3imp5unifyEPKNS_8monomialES4_RPS2_S6_.exit

_ZN10polynomial7manager3imp5unifyEPKNS_8monomialES4_RPS2_S6_.exit: ; preds = %bb.a, %bb.b
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10polynomial7manager2pwEPKNS_8monomialEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 4 uses
  switch i32 %2, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %_ZN10polynomial7manager3imp2pwEPKNS_8monomialEj.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158
  br label %_ZN10polynomial7manager3imp2pwEPKNS_8monomialEj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !77   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !187
  %i.k = icmp ugt i32 %i.g, %i.j
  %.pre.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !186 ; 3 uses
  br i1 %i.k, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i: ; preds = %bb.c
  %i.l = shl i32 %i.g, 1
  tail call void @_ZN6memory10deallocateEPv(ptr noundef %.pre.pre.i.i)
  %i.m = shl i32 %i.g, 4
  %i.n = add i32 %i.m, 20
  %i.o = zext i32 %i.n to i64
  %i.p = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.o) ; 4 uses
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.p, align 4, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 0, ptr %i.q, align 4, !tbaa !185
  store ptr %i.p, ptr %i.h, align 8, !tbaa !186
  store i32 %i.l, ptr %i.i, align 8, !tbaa !187
  br label %.lr.ph.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i, %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i
  %.pre28.i.i = phi ptr [ %i.p, %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i ], [ %.pre.pre.i.i, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre28.i.i, i64 20 ; 5 uses
  %wide.trip.count.i.i = zext i32 %i.g to i64     ; 6 uses
  %min.iters.check = icmp ult i32 %i.g, 22
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.t = shl nuw nsw i64 %wide.trip.count.i.i, 3  ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 16                 ; 2 uses
  %i.v = getelementptr i8, ptr %.pre28.i.i, i64 %i.u
  %i.w = getelementptr i8, ptr %1, i64 %i.u
  %3 = getelementptr nuw i8, ptr %.pre28.i.i, i64 24
  %4 = add nuw nsw i64 %i.t, 20                   ; 2 uses
  %5 = getelementptr i8, ptr %.pre28.i.i, i64 %4
  %i.x = getelementptr i8, ptr %1, i64 24
  %6 = getelementptr i8, ptr %1, i64 %4
  %bound0 = icmp ult ptr %i.s, %i.w
  %bound1 = icmp ult ptr %i.r, %i.v
  %found.conflict = and i1 %bound0, %bound1
  %bound010 = icmp ult ptr %3, %6
  %bound111 = icmp ult ptr %i.x, %5
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 4294967294 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index
  %wide.vec = load <4 x i32>, ptr %i.y, align 4, !tbaa !69 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec13 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.z = mul <2 x i32> %strided.vec13, %broadcast.splat
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index
  %interleaved.vec = shufflevector <2 x i32> %strided.vec, <2 x i32> %i.z, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.aa, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i.ph
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !72
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !73
  %i.ah = mul i32 %i.ag, %2
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.ph ; 2 uses
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !73
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ak = add nsw i64 %wide.trip.count.i.i, -1
  %i.al = icmp eq i64 %indvars.iv.i.i.ph, %i.ak
  br i1 %i.al, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i
  %.pre29.i.i = phi ptr [ %.pre.pre.i.i, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i ], [ %.pre28.i.i, %middle.block ], [ %.pre28.i.i, %scalar.ph ], [ %.pre28.i.i, %scalar.ph.prol.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.pre29.i.i, i64 12
  store i32 %i.g, ptr %i.am, align 4, !tbaa !77
  %i.an = tail call noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.h)
  br label %_ZN10polynomial7manager3imp2pwEPKNS_8monomialEj.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !72
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !73
  %i.at = mul i32 %i.as, %2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i ; 2 uses
  store i32 %i.ap, ptr %i.au, align 4, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !73
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !72
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bb = mul i32 %i.ba, %2
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i ; 2 uses
  store i32 %i.ax, ptr %i.bc, align 4, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !73
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !368

_ZN10polynomial7manager3imp2pwEPKNS_8monomialEj.exit: ; preds = %bb.a, %bb.b, %._crit_edge.i.i
  %.020.i.i = phi ptr [ %i.e, %bb.b ], [ %i.an, %._crit_edge.i.i ], [ %1, %bb.a ]
  ret ptr %.020.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN10polynomial7manager7mk_zeroEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10polynomial7manager8mk_constER3mpz(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !93     ; 4 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159
  br label %_ZN10polynomial7manager3imp8mk_constER3mpz.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 1
  %i.j = icmp eq i8 %i.i, 0
  %i.k = icmp eq i32 %i.c, 1
  %i.l = and i1 %i.k, %i.j
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 528
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203
  br label %_ZN10polynomial7manager3imp8mk_constER3mpz.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !150
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !158  ; 3 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !176
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !198
  %i.u = call noundef ptr @_ZN10polynomial7manager3imp18mk_polynomial_coreEjP3mpzPKPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN10polynomial7manager3imp8mk_constER3mpz.exit

_ZN10polynomial7manager3imp8mk_constER3mpz.exit:  ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.n, %bb.d ], [ %i.u, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN10polynomial7manager3imp8mk_constERK8rational(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class._scoped_numeral.43, align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !200
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.c, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4                          ; 2 uses
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !90
  store i32 %i.l, ptr %i.c, align 8, !tbaa !90
  store i8 %i.f, ptr %i.d, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.j

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !182, !range !189, !noundef !98
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit unwind label %bb.j

_ZN13mpzzp_manager3setER3mpzRKS0_.exit:           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.d
  %i.q = load i32, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159
end_hunk_0
begin_hunk_1_@_ZN10polynomial7manager3imp10substituteEPKNS_10polynomialEjPKjPK3mpz:bb.a
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !173 ; 2 uses
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !68  ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = icmp ult i32 %i.af, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.al = zext i32 %i.af to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.al
  store i32 -1, ptr %i.am, align 4, !tbaa !69
  br label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i

_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i: ; preds = %bb.e, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %bb.d
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !161
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !204
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !162
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !176 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 464
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !150
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !198
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !198
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.av, ptr noundef nonnull %i.at)
          to label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i: ; preds = %bb.f, %.noexc
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !10

_ZN10polynomial7manager3imp10som_buffer5resetEv.exit: ; preds = %bb.c, %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i, %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !174 ; 2 uses
  %.not92 = icmp eq i32 %i.bb, 0
  br i1 %.not92, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 464
  %wide.trip.count112 = zext i32 %i.bb to i64
  br label %bb.j

._crit_edge91:                                    ; preds = %bb.y, %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit
  invoke void @_ZN10polynomial7manager3imp10som_buffer12remove_zerosEb(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i1 noundef zeroext false)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %._crit_edge91
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !204
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !161 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc51
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !69
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i:             ; preds = %bb.g, %.noexc51
  %.0.i.i = phi i32 [ %i.br, %bb.g ], [ 0, %.noexc51 ]
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !162
  %i.bt = invoke noundef ptr @_ZN10polynomial7manager3imp18mk_polynomial_coreEjP3mpzPKPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.bm, i32 noundef %.0.i.i, ptr noundef %i.bo, ptr noundef %i.bs)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !161 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i49, label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i50, label %bb.h

bb.h:                                             ; preds = %.noexc52
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4
  store i32 0, ptr %i.bv, align 4, !tbaa !69
  br label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i50

_ZN6vectorI3mpzLb0EjE5resetEv.exit.i50:           ; preds = %bb.h, %.noexc52
  %i.bw = load ptr, ptr %i.n, align 8, !tbaa !162 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.bw, null
  br i1 %.not.i2.i, label %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i50
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4
  store i32 0, ptr %i.bx, align 4, !tbaa !69
  br label %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit

bb.j:                                             ; preds = %.lr.ph90, %bb.y
  %indvars.iv109 = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next110, %bb.y ] ; 3 uses
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !175
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv109
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !176 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !77 ; 10 uses
  %i.cd = load ptr, ptr %i.bd, align 8, !tbaa !177
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv109 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i8, ptr %i.cf, align 4
  %i.ch = and i8 %i.cg, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cj = load i32, ptr %i.ce, align 8, !tbaa !90
  store i32 %i.cj, ptr %i.c, align 8, !tbaa !90
  %i.ck = load i8, ptr %i.d, align 4
  %i.cl = and i8 %i.ck, -2
  store i8 %i.cl, ptr %i.d, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.l, %bb.k
  %i.cn = load i8, ptr %i.be, align 8, !tbaa !182, !range !189, !noundef !98
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13mpzzp_manager3setER3mpzRKS0_.exit:           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.m
  %i.cp = load i32, ptr %i.bf, align 8, !tbaa !187
  %i.cq = icmp ugt i32 %i.cc, %i.cp
  br i1 %i.cq, label %bb.n, label %_ZN10polynomial12tmp_monomial7reserveEj.exit

bb.n:                                             ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  %i.cr = shl i32 %i.cc, 1
  %i.cs = load ptr, ptr %i.az, align 8, !tbaa !186
  invoke void @_ZN6memory10deallocateEPv(ptr noundef %i.cs)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.n
  %i.ct = shl i32 %i.cc, 4
  %i.cu = add i32 %i.ct, 20
  %i.cv = zext i32 %i.cu to i64
  %i.cw = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.cv)
          to label %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN10polynomial12tmp_monomial7reserveEj.exit.thread: ; preds = %.noexc55
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.cw, align 4, !tbaa !69
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i32 0, ptr %i.cx, align 4, !tbaa !185
  store ptr %i.cw, ptr %i.az, align 8, !tbaa !186
  store i32 %i.cr, ptr %i.bf, align 8, !tbaa !187
  br label %.lr.ph

_ZN10polynomial12tmp_monomial7reserveEj.exit:     ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  %.not93 = icmp eq i32 %i.cc, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread, %_ZN10polynomial12tmp_monomial7reserveEj.exit
  %i.cy = getelementptr i8, ptr %i.ca, i64 20     ; 9 uses
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext i32 %i.cc to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.db = load ptr, ptr %i.az, align 8, !tbaa !186 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 20 ; 8 uses
  %wide.trip.count107 = zext i32 %i.cc to i64     ; 6 uses
  %min.iters.check = icmp ult i32 %i.cc, 8
  br i1 %min.iters.check, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us
  %i.dd = shl nuw nsw i64 %wide.trip.count107, 3  ; 2 uses
  %i.de = add nuw nsw i64 %i.dd, 16               ; 2 uses
  %i.df = getelementptr i8, ptr %i.db, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.ca, i64 %i.de
  %7 = getelementptr nuw i8, ptr %i.db, i64 24
  %8 = add nuw nsw i64 %i.dd, 20                  ; 2 uses
  %9 = getelementptr i8, ptr %i.db, i64 %8
  %i.dh = getelementptr i8, ptr %i.ca, i64 24
  %10 = getelementptr i8, ptr %i.ca, i64 %8
  %bound0 = icmp ult ptr %i.dc, %i.dg
  %bound1 = icmp ult ptr %i.cy, %i.df
  %found.conflict = and i1 %bound0, %bound1
  %bound0149 = icmp ult ptr %7, %10
  %bound1150 = icmp ult ptr %i.dh, %9
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx = or i1 %found.conflict, %found.conflict151
  br i1 %conflict.rdx, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count107, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.di = or disjoint i64 %index, 2               ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.di
  %wide.vec = load <4 x i32>, ptr %i.dj, align 4, !tbaa !69
  %wide.vec153 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !69
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.di
  store <4 x i32> %wide.vec, ptr %i.dl, align 4, !tbaa !69
  store <4 x i32> %wide.vec153, ptr %i.dm, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !457

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count107
  br i1 %cmp.n, label %._crit_edge, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.preheader

_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.preheader: ; preds = %vector.memcheck, %.lr.ph.split.us, %middle.block
  %indvars.iv102.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count107, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol.loopexit, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol

_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol: ; preds = %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.preheader, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol
  %indvars.iv102.prol = phi i64 [ %indvars.iv.next103.prol, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol ], [ %indvars.iv102.ph, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol ], [ 0, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.preheader ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv102.prol
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv102.prol
  %i.dq = load <2 x i32>, ptr %i.do, align 4, !tbaa !69
  store <2 x i32> %i.dq, ptr %i.dp, align 4, !tbaa !69
  %indvars.iv.next103.prol = add nuw nsw i64 %indvars.iv102.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol.loopexit, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol, !llvm.loop !458

_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol.loopexit: ; preds = %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.preheader
  %indvars.iv102.unr = phi i64 [ %indvars.iv102.ph, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.preheader ], [ %indvars.iv.next103.prol, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol ]
  %i.dr = sub nsw i64 %indvars.iv102.ph, %wide.trip.count107
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %._crit_edge, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us

_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us: ; preds = %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol.loopexit, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103.3, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us ], [ %indvars.iv102.unr, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol.loopexit ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv102
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv102
  %i.dv = load <2 x i32>, ptr %i.dt, align 4, !tbaa !69
  store <2 x i32> %i.dv, ptr %i.du, align 4, !tbaa !69
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next103
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next103
  %i.dy = load <2 x i32>, ptr %i.dw, align 4, !tbaa !69
  store <2 x i32> %i.dy, ptr %i.dx, align 4, !tbaa !69
  %indvars.iv.next103.1 = add nuw nsw i64 %indvars.iv102, 2 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next103.1
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next103.1
  %i.eb = load <2 x i32>, ptr %i.dz, align 4, !tbaa !69
  store <2 x i32> %i.eb, ptr %i.ea, align 4, !tbaa !69
  %indvars.iv.next103.2 = add nuw nsw i64 %indvars.iv102, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next103.2
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next103.2
  %i.ee = load <2 x i32>, ptr %i.ec, align 4, !tbaa !69
  store <2 x i32> %i.ee, ptr %i.ed, align 4, !tbaa !69
  %indvars.iv.next103.3 = add nuw nsw i64 %indvars.iv102, 4 ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %indvars.iv.next103.3, %wide.trip.count107
  br i1 %exitcond108.not.3, label %._crit_edge, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us, !llvm.loop !459

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol.loopexit, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us, %middle.block, %_ZN10polynomial12tmp_monomial7reserveEj.exit
  %.037.lcssa = phi i32 [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit ], [ %i.cc, %middle.block ], [ %i.cc, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us.prol.loopexit ], [ %i.cc, %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread.us ], [ %.1, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ]
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !186
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 %.037.lcssa, ptr %i.eg, align 4, !tbaa !77
  %i.eh = load ptr, ptr %i.bl, align 8, !tbaa !150
  %i.ei = invoke noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.eh, ptr noundef nonnull align 8 dereferenceable(12) %i.az)
          to label %_ZN10polynomial7manager3imp11mk_monomialERNS_12tmp_monomialE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 3 uses
  %.03787 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.1, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 7 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !72 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load i32, ptr %i.em, align 4, !tbaa !73 ; 2 uses
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !68  ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i:            ; preds = %.lr.ph.split
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 -4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !69
  %.not.i.i.i = icmp ult i32 %i.ek, %i.er
  br i1 %.not.i.i.i, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread

_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i
  %i.es = zext i32 %i.ek to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.es
  %.0.i.sroa.speculate.load..i.i = load i32, ptr %i.et, align 4, !tbaa !69 ; 2 uses
  %.not = icmp eq i32 %.0.i.sroa.speculate.load..i.i, -1
  br i1 %.not, label %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNK10polynomial7manager3imp14scoped_var_posclEj.exit
  %i.eu = zext i32 %.0.i.sroa.speculate.load..i.i to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.eu
  invoke void @_ZN13mpzzp_manager5powerERK3mpzjRS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i32 noundef %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.p
  %i.ex = load i8, ptr %i.be, align 8, !tbaa !182, !range !189, !noundef !98
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.q

bb.q:                                             ; preds = %.noexc58
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.q
  %i.fa = load ptr, ptr %i.b, align 8, !tbaa !97, !nonnull !98, !align !99 ; 3 uses
  %i.fb = load i8, ptr %i.bi, align 4
  %i.fc = and i8 %i.fb, 1
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.r, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.r:                                             ; preds = %.noexc69
  %i.fe = load i8, ptr %i.d, align 4              ; 2 uses
  %i.ff = and i8 %i.fe, 1
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.r
  %i.fh = load i32, ptr %i.bh, align 8, !tbaa !90
  %i.fi = load i32, ptr %i.c, align 8, !tbaa !90
  %i.fj = icmp slt i32 %i.fh, %i.fi
  br i1 %i.fj, label %bb.s, label %bb.t

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.r, %.noexc69
  %i.fk = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %i.fl = icmp slt i32 %i.fk, 0
  %.pre12.i = load ptr, ptr %i.b, align 8, !tbaa !97 ; 2 uses
  br i1 %i.fl, label %bb.s, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc70
  %.pre10.i = load i8, ptr %i.d, align 4
  br label %bb.t

bb.s:                                             ; preds = %.noexc70, %.split.i
  %i.fm = phi ptr [ %i.fa, %.split.i ], [ %.pre12.i, %.noexc70 ]
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.fn = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.fe, %.split.i ]
  %i.fo = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.fa, %.split.i ] ; 2 uses
  %i.fp = and i8 %i.fn, 1
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.u, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.fr = load i8, ptr %i.bk, align 4
  %i.fs = and i8 %i.fr, 1
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.u
  %i.fu = load i32, ptr %i.c, align 8, !tbaa !90
  %i.fv = load i32, ptr %i.bj, align 8, !tbaa !90
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.v, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.u, %bb.t
  %i.fx = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc72
  %.pre11.i = load ptr, ptr %i.b, align 8, !tbaa !97
  br label %bb.v

bb.v:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
end_hunk_1
begin_hunk_2_@_ZN6vectorIPN10polynomial10polynomialELb0EjED2Ev:bb.a
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11upolynomial7managerD1Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312)) unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13mpzzp_managerD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN11mpz_managerILb0EE3delER3mpz.exit unwind label %bb.b

_ZN11mpz_managerILb0EE3delER3mpz.exit:            ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN11mpz_managerILb0EE3delER3mpz.exit1 unwind label %bb.b

_ZN11mpz_managerILb0EE3delER3mpz.exit1:           ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit
  %i.e = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZN11mpz_managerILb0EE3delER3mpz.exit2 unwind label %bb.b

_ZN11mpz_managerILb0EE3delER3mpz.exit2:           ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit1
  %i.g = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_ZN11mpz_managerILb0EE3delER3mpz.exit3 unwind label %bb.b

_ZN11mpz_managerILb0EE3delER3mpz.exit3:           ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit2
  %i.i = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN11mpz_managerILb0EE3delER3mpz.exit4 unwind label %bb.b

_ZN11mpz_managerILb0EE3delER3mpz.exit4:           ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit3
  %i.k = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZN11mpz_managerILb0EE3delER3mpz.exit5 unwind label %bb.b

_ZN11mpz_managerILb0EE3delER3mpz.exit5:           ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit4
  %i.m = load ptr, ptr %0, align 8, !tbaa !97, !nonnull !98, !align !99
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_ZN11mpz_managerILb0EE3delER3mpz.exit6 unwind label %bb.b

_ZN11mpz_managerILb0EE3delER3mpz.exit6:           ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit5
  ret void

bb.b:                                             ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit5, %_ZN11mpz_managerILb0EE3delER3mpz.exit4, %_ZN11mpz_managerILb0EE3delER3mpz.exit3, %_ZN11mpz_managerILb0EE3delER3mpz.exit2, %_ZN11mpz_managerILb0EE3delER3mpz.exit1, %_ZN11mpz_managerILb0EE3delER3mpz.exit, %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #28
  unreachable
}

declare void @_ZN11upolynomial12core_managerC2ER8reslimitR11mpz_managerILb0EE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(600)) unnamed_addr #2

declare void @_ZN22small_object_allocatorC1EPKc(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIN10polynomial5powerELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !263    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIN10polynomial5powerELb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIN10polynomial5powerELb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIN10polynomial5powerELb0EjE7destroyEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !261    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE12delete_tableEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE12delete_tableEv.exit unwind label %bb.c

_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE12delete_tableEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.f = zext i32 %i.d to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = tail call noundef i32 @_Z11string_hashSt17basic_string_viewIcSt11char_traitsIcEEj(i64 %i.g, ptr nonnull %i.e, i32 noundef 11)
  %i.i = load ptr, ptr %1, align 8, !tbaa !186    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.h, ptr %i.j, align 4, !tbaa !185
  store ptr %i.i, ptr %i.a, align 8, !tbaa !176
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !176  ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !193
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77
  %i.s = shl i32 %i.r, 3
  %i.t = add i32 %i.s, 20
  %i.u = zext i32 %i.t to i64
  %i.v = call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.p, i64 noundef %i.u) ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i:               ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i:        ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i, %bb.b
  %i.ad = load i32, ptr %i.w, align 8, !tbaa !184 ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.w, align 8, !tbaa !184
  br label %_ZN6id_gen2mkEv.exit

_ZN6vectorIjLb0EjE4backEv.exit.i:                 ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i
  %i.af = add i32 %i.ab, -1                       ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !69
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !69
  br label %_ZN6id_gen2mkEv.exit

_ZN6id_gen2mkEv.exit:                             ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, %_ZN6vectorIjLb0EjE4backEv.exit.i
  %.0.i = phi i32 [ %i.ad, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i ], [ %i.ai, %_ZN6vectorIjLb0EjE4backEv.exit.i ]
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !176 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 20     ; 8 uses
  store i32 0, ptr %i.v, align 4, !tbaa !198
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %.0.i, ptr %i.am, align 4, !tbaa !173
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store i32 0, ptr %i.an, align 4, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ap = load <2 x i32>, ptr %i.ak, align 4, !tbaa !69
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !77 ; 3 uses
  store <2 x i32> %i.ap, ptr %i.ao, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN10polynomial8monomialC2EjjPKNS_5powerEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6id_gen2mkEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 8 uses
  %wide.trip.count.i = zext i32 %i.aq to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %i.aq, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.as = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 16               ; 2 uses
  %i.au = getelementptr i8, ptr %i.v, i64 %i.at
  %i.av = getelementptr i8, ptr %i.aj, i64 %i.at
  %2 = getelementptr i8, ptr %i.v, i64 24
  %3 = add nuw nsw i64 %i.as, 20                  ; 2 uses
  %4 = getelementptr i8, ptr %i.v, i64 %3
  %i.aw = getelementptr i8, ptr %i.aj, i64 24
  %5 = getelementptr i8, ptr %i.aj, i64 %3
  %bound0 = icmp ult ptr %i.ar, %i.av
  %bound1 = icmp ult ptr %i.al, %i.au
  %found.conflict = and i1 %bound0, %bound1
  %bound024 = icmp ult ptr %2, %5
  %bound125 = icmp ult ptr %i.aw, %4
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx = or i1 %found.conflict, %found.conflict26
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi27 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.ax = or disjoint i64 %index, 2               ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ax
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ax
  %wide.vec = load <4 x i32>, ptr %i.ay, align 4, !tbaa !69 ; 2 uses
  %strided.vec28 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec29 = load <4 x i32>, ptr %i.az, align 4, !tbaa !69 ; 2 uses
  %strided.vec31 = shufflevector <4 x i32> %wide.vec29, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  store <4 x i32> %wide.vec, ptr %i.ba, align 4, !tbaa !69
  store <4 x i32> %wide.vec29, ptr %i.bb, align 4, !tbaa !69
  %i.bc = add <2 x i32> %strided.vec28, %vec.phi  ; 2 uses
  %i.bd = add <2 x i32> %strided.vec31, %vec.phi27 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !495

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bd, %i.bc
  %i.bf = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.bf, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bg = phi i32 [ %i.bm, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.prol ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.prol
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !73
  %i.bl = load <2 x i32>, ptr %i.bh, align 4, !tbaa !69
  store <2 x i32> %i.bl, ptr %i.bi, align 4, !tbaa !69
  %i.bm = add i32 %i.bk, %i.bg                    ; 3 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !496

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa33.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.bm, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.bm, %scalar.ph.prol ]
  %i.bn = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.bf, %middle.block ], [ %.lcssa33.unr, %scalar.ph.prol.loopexit ], [ %i.cn, %scalar.ph ]
  store i32 %.lcssa, ptr %i.an, align 4, !tbaa !78
  br label %_ZN10polynomial8monomialC2EjjPKNS_5powerEj.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bp = phi i32 [ %i.cn, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !73
  %i.bu = load <2 x i32>, ptr %i.bq, align 4, !tbaa !69
  store <2 x i32> %i.bu, ptr %i.br, align 4, !tbaa !69
  %i.bv = add i32 %i.bt, %i.bp
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !73
  %i.ca = load <2 x i32>, ptr %i.bw, align 4, !tbaa !69
  store <2 x i32> %i.ca, ptr %i.bx, align 4, !tbaa !69
  %i.cb = add i32 %i.bz, %i.bv
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !73
  %i.cg = load <2 x i32>, ptr %i.cc, align 4, !tbaa !69
  store <2 x i32> %i.cg, ptr %i.cd, align 4, !tbaa !69
  %i.ch = add i32 %i.cf, %i.cb
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next.i.2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !73
  %i.cm = load <2 x i32>, ptr %i.ci, align 4, !tbaa !69
  store <2 x i32> %i.cm, ptr %i.cj, align 4, !tbaa !69
  %i.cn = add i32 %i.cl, %i.ch                    ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !497

_ZN10polynomial8monomialC2EjjPKNS_5powerEj.exit:  ; preds = %_ZN6id_gen2mkEv.exit, %._crit_edge.i
  store ptr %i.v, ptr %i.l, align 8, !tbaa !176
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN10polynomial8monomialC2EjjPKNS_5powerEj.exit
  %.0 = phi ptr [ %i.v, %_ZN10polynomial8monomialC2EjjPKNS_5powerEj.exit ], [ %i.m, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  %.not.i = icmp eq ptr %i.b, null
  %.pre33 = load ptr, ptr %0, align 8, !tbaa !261 ; 3 uses
  br i1 %.not.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !258
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.pre33, i64 %i.g
  %i.i = icmp ult ptr %i.d, %i.h
  br i1 %i.i, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit
  tail call void @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE12expand_tableEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !261
  br label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread

_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit
  %i.j = phi ptr [ %.pre33, %bb.a ], [ %.pre, %bb.b ], [ %.pre33, %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !274
  %i.m = add i32 %i.l, -1
  %i.n = load ptr, ptr %1, align 8, !tbaa !176    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !185  ; 2 uses
  %i.q = and i32 %i.p, %i.m
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.r ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !260
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !77   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = icmp eq i32 %i.y, 0
  %wide.trip.count.i.i = zext i32 %i.y to i64
  br label %bb.d

bb.c:                                             ; preds = %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE14has_free_cellsEv.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load <2 x i32>, ptr %i.ac, align 8, !tbaa !69
  %i.ae = add <2 x i32> %i.ad, splat (i32 1)
  store <2 x i32> %i.ae, ptr %i.ac, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.af, align 8, !tbaa !275
  store ptr null, ptr %i.s, align 8, !tbaa !260
  br label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit

bb.d:                                             ; preds = %.preheader, %.loopexit
  %.023 = phi ptr [ %i.ax, %.loopexit ], [ %i.s, %.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !176 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !77
  %.not.i.i = icmp eq i32 %i.aj, %i.y
  br i1 %.not.i.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !185
  %.not14.i.i = icmp eq i32 %i.al, %i.p
  br i1 %.not14.i.i, label %.preheader.i.i, label %.loopexit

.preheader.i.i:                                   ; preds = %bb.e
  br i1 %i.ab, label %_ZNK10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE6equalsERKS2_S7_.exit.loopexit36, label %.lr.ph.i.i

end_hunk_2
begin_hunk_3_@_ZN10polynomial16monomial_manager7convertEPKNS_8monomialE:bb.a
.thread:                                          ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.pre.i.i20 = load ptr, ptr %i.p, align 8, !tbaa !186
  %i.q = getelementptr inbounds nuw i8, ptr %.pre.i.i20, i64 12
  store i32 %i.c, ptr %i.q, align 4, !tbaa !77
  br label %_ZN10polynomial16monomial_manager11mk_monomialEjPKNS_5powerE.exit

.thread.i.i:                                      ; preds = %._crit_edge13
  %i.r = shl i32 %i.c, 1
  tail call void @_ZN6memory10deallocateEPv(ptr noundef %.pre.i.i)
  %i.s = shl i32 %i.c, 4
  %i.t = add i32 %i.s, 20
  %i.u = zext i32 %i.t to i64
  %i.v = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.u) ; 6 uses
  store i32 0, ptr %i.v, align 4, !tbaa !198
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 -1, ptr %i.w, align 4, !tbaa !173
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 0, ptr %i.x, align 4, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 0, ptr %i.y, align 4, !tbaa !185
  store ptr %i.v, ptr %i.l, align 8, !tbaa !186
  store i32 %i.r, ptr %i.m, align 8, !tbaa !187
  br label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %._crit_edge13, %.thread.i.i
  %.pre.i.i.sink = phi ptr [ %i.v, %.thread.i.i ], [ %.pre.i.i, %._crit_edge13 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i.i.sink, i64 12
  store i32 %i.c, ptr %i.z, align 4, !tbaa !77
  %.idx6.pn.in.i.i = zext i32 %i.c to i64
  %.idx6.pn.i.i = shl nuw nsw i64 %.idx6.pn.in.i.i, 3 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx6.pn.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre.i.i.sink, i64 20 ; 3 uses
  %i.ac = add nsw i64 %.idx6.pn.i.i, -8           ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 72
  %i.af = ptrtoaddr ptr %.pre.i.i.sink to i64
  %i.ag = sub i64 %i.a, %i.af
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader.i.i
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ab, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.k, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ak ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.k, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 4
  %wide.load25 = load <2 x i64>, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load25, ptr %i.am, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN10polynomial16monomial_manager11mk_monomialEjPKNS_5powerE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i.preheader.i.i, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.preheader.i.i ], [ %i.ai, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.preheader.i.i ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ao = load i64, ptr %.0810.i.i.i.i.i, align 4
  store i64 %i.ao, ptr %.011.i.i.i.i.i, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZN10polynomial16monomial_manager11mk_monomialEjPKNS_5powerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !540

_ZN10polynomial16monomial_manager11mk_monomialEjPKNS_5powerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.thread
  %i.ar = phi ptr [ %i.p, %.thread ], [ %i.l, %middle.block ], [ %i.l, %.lr.ph.i.i.i.i.i ]
  %i.as = tail call noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.ar)
  ret ptr %i.as

bb.b:                                             ; preds = %bb.d, %.lr.ph12.new
  %indvars.iv = phi i64 [ 0, %.lr.ph12.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.lcssa16 = phi i32 [ %.promoted14, %.lr.ph12.new ], [ %.lcssa15.1, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph12.new ], [ %niter.next.1, %bb.d ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !72 ; 2 uses
  %.not9 = icmp ult i32 %i.au, %.lcssa16
  br i1 %.not9, label %bb.c, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.av = add i32 %.lcssa16, 1
  %i.aw = add i32 %i.au, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.av, i32 %i.aw) ; 2 uses
  store i32 %umax, ptr %i.e, align 8, !tbaa !197
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader, %bb.b
  %.lcssa15 = phi i32 [ %umax, %.lr.ph.preheader ], [ %.lcssa16, %bb.b ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72 ; 2 uses
  %.not9.1 = icmp ult i32 %i.az, %.lcssa15
  br i1 %.not9.1, label %bb.d, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bb.c
  %i.ba = add i32 %.lcssa15, 1
  %i.bb = add i32 %i.az, 1
  %umax.1 = tail call i32 @llvm.umax.i32(i32 %i.ba, i32 %i.bb) ; 2 uses
  store i32 %umax.1, ptr %i.e, align 8, !tbaa !197
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.preheader.1, %bb.c
  %.lcssa15.1 = phi i32 [ %umax.1, %.lr.ph.preheader.1 ], [ %.lcssa15, %bb.c ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge13.unr-lcssa, label %bb.b, !llvm.loop !541
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial16monomial_manager3mulEjPKNS_5powerEjS3_RNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(12) %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = add i32 %3, %1                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !187
  %i.d = icmp ugt i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN10polynomial12tmp_monomial7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %i.a, 1
  %i.f = load ptr, ptr %5, align 8, !tbaa !186
  tail call void @_ZN6memory10deallocateEPv(ptr noundef %i.f)
  %i.g = shl i32 %i.a, 4
  %i.h = add i32 %i.g, 20
  %i.i = zext i32 %i.h to i64
  %i.j = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.i) ; 3 uses
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.j, align 4, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.k, align 4, !tbaa !185
  store ptr %i.j, ptr %5, align 8, !tbaa !186
  store i32 %i.e, ptr %i.b, align 8, !tbaa !187
  br label %_ZN10polynomial12tmp_monomial7reserveEj.exit

_ZN10polynomial12tmp_monomial7reserveEj.exit:     ; preds = %bb.a, %bb.b
  %i.l = icmp eq i32 %1, 0
  br i1 %i.l, label %_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge, label %.lr.ph

_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge: ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit
  %.pre90.pre = load ptr, ptr %5, align 8, !tbaa !186
  br label %.preheader

.preheader:                                       ; preds = %bb.h, %_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge
  %.pre90 = phi ptr [ %.pre90.pre, %_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge ], [ %.pre9092, %bb.h ] ; 9 uses
  %.050.lcssa = phi i32 [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge ], [ %.252, %bb.h ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit..preheader_crit_edge ], [ %i.gi, %bb.h ] ; 8 uses
  %i.m = icmp ult i32 %.050.lcssa, %3
  br i1 %i.m, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.pre90, i64 20 ; 7 uses
  %i.o = zext i32 %.050.lcssa to i64              ; 8 uses
  %wide.trip.count88 = zext i32 %3 to i64         ; 7 uses
  %i.p = sub nsw i64 %wide.trip.count88, %i.o     ; 3 uses
  %min.iters.check148 = icmp ult i64 %i.p, 38
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.scevcheck131

vector.scevcheck131:                              ; preds = %.lr.ph75
  %i.q = xor i64 %i.o, -1
  %i.r = add nsw i64 %i.q, %wide.trip.count88     ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = xor i32 %.0.lcssa, -1
  %i.u = icmp ult i32 %i.t, %i.s
  %i.v = icmp ugt i64 %i.r, 4294967295
  %i.w = or i1 %i.u, %i.v
  br i1 %i.w, label %scalar.ph147.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %vector.scevcheck131
  %i.x = shl nuw nsw i64 %i.o, 3                  ; 4 uses
  %i.y = getelementptr i8, ptr %4, i64 %i.x
  %i.z = shl nuw nsw i64 %wide.trip.count88, 3    ; 2 uses
  %i.aa = getelementptr i8, ptr %4, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4
  %i.ac = zext i32 %.0.lcssa to i64               ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 3                ; 2 uses
  %i.ae = getelementptr i8, ptr %.pre90, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 20
  %i.ag = add nuw nsw i64 %i.ac, %wide.trip.count88
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 16
  %i.aj = sub nsw i64 %i.ai, %i.x
  %i.ak = getelementptr i8, ptr %.pre90, i64 %i.aj
  %6 = getelementptr i8, ptr %.pre90, i64 %i.ad
  %7 = getelementptr i8, ptr %6, i64 24
  %8 = add nuw nsw i64 %i.ah, 20
  %9 = sub nsw i64 %8, %i.x
  %i.al = getelementptr i8, ptr %.pre90, i64 %9
  %10 = getelementptr i8, ptr %4, i64 %i.x
  %11 = getelementptr i8, ptr %10, i64 4
  %i.am = getelementptr i8, ptr %4, i64 %i.z
  %bound0150 = icmp ult ptr %i.y, %i.ak
  %bound1151 = icmp ult ptr %i.af, %i.ab
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0153 = icmp ult ptr %7, %i.am
  %bound1154 = icmp ult ptr %11, %i.al
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %found.conflict152, %found.conflict155
  br i1 %conflict.rdx156, label %scalar.ph147.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck149
  %n.vec158 = and i64 %i.p, -4                    ; 4 uses
  %i.an = add nsw i64 %n.vec158, %i.o
  %i.ao = trunc i64 %n.vec158 to i32
  %i.ap = add i32 %.0.lcssa, %i.ao                ; 2 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next169, %vector.body159 ] ; 3 uses
  %i.aq = add nuw i64 %index160, %i.o             ; 2 uses
  %i.ar = trunc i64 %index160 to i32
  %i.as = add i32 %.0.lcssa, %i.ar                ; 2 uses
  %i.at = add i32 %i.as, 2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aq
  %i.av = getelementptr [8 x i8], ptr %4, i64 %i.aq
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = zext i32 %i.as to i64
  %i.ay = zext i32 %i.at to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ax
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ay
  %wide.vec161 = load <4 x i32>, ptr %i.au, align 4, !tbaa !69
  %wide.vec164 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !69
  store <4 x i32> %wide.vec161, ptr %i.az, align 4, !tbaa !69
  store <4 x i32> %wide.vec164, ptr %i.ba, align 4, !tbaa !69
  %index.next169 = add nuw i64 %index160, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next169, %n.vec158
  br i1 %i.bb, label %middle.block170, label %vector.body159, !llvm.loop !542

middle.block170:                                  ; preds = %vector.body159
  %cmp.n171 = icmp eq i64 %i.p, %n.vec158
  br i1 %cmp.n171, label %.loopexit, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %vector.memcheck149, %vector.scevcheck131, %.lr.ph75, %middle.block170
  %indvars.iv85.ph = phi i64 [ %i.o, %vector.memcheck149 ], [ %i.o, %vector.scevcheck131 ], [ %i.o, %.lr.ph75 ], [ %i.an, %middle.block170 ] ; 4 uses
  %.174.ph = phi i32 [ %.0.lcssa, %vector.memcheck149 ], [ %.0.lcssa, %vector.scevcheck131 ], [ %.0.lcssa, %.lr.ph75 ], [ %i.ap, %middle.block170 ] ; 2 uses
  %i.bc = sub nsw i64 %wide.trip.count88, %indvars.iv85.ph
  %xtraiter179 = and i64 %i.bc, 3                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %scalar.ph147.prol.loopexit, label %scalar.ph147.prol

scalar.ph147.prol:                                ; preds = %scalar.ph147.preheader, %scalar.ph147.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %scalar.ph147.prol ], [ %indvars.iv85.ph, %scalar.ph147.preheader ] ; 2 uses
  %.174.prol = phi i32 [ %i.bh, %scalar.ph147.prol ], [ %.174.ph, %scalar.ph147.preheader ] ; 2 uses
  %prol.iter181 = phi i64 [ %prol.iter181.next, %scalar.ph147.prol ], [ 0, %scalar.ph147.preheader ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv85.prol
  %i.be = zext i32 %.174.prol to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.be
  %i.bg = load <2 x i32>, ptr %i.bd, align 4, !tbaa !69
  store <2 x i32> %i.bg, ptr %i.bf, align 4, !tbaa !69
  %indvars.iv.next86.prol = add nuw nsw i64 %indvars.iv85.prol, 1 ; 2 uses
  %i.bh = add i32 %.174.prol, 1                   ; 3 uses
  %prol.iter181.next = add i64 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i64 %prol.iter181.next, %xtraiter179
  br i1 %prol.iter181.cmp.not, label %scalar.ph147.prol.loopexit, label %scalar.ph147.prol, !llvm.loop !543

scalar.ph147.prol.loopexit:                       ; preds = %scalar.ph147.prol, %scalar.ph147.preheader
  %.lcssa.unr = phi i32 [ poison, %scalar.ph147.preheader ], [ %i.bh, %scalar.ph147.prol ]
  %indvars.iv85.unr = phi i64 [ %indvars.iv85.ph, %scalar.ph147.preheader ], [ %indvars.iv.next86.prol, %scalar.ph147.prol ]
  %.174.unr = phi i32 [ %.174.ph, %scalar.ph147.preheader ], [ %i.bh, %scalar.ph147.prol ]
  %i.bi = sub nsw i64 %indvars.iv85.ph, %wide.trip.count88
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %.loopexit, label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.prol.loopexit, %scalar.ph147
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %scalar.ph147 ], [ %indvars.iv85.unr, %scalar.ph147.prol.loopexit ] ; 5 uses
  %.174 = phi i32 [ %i.cg, %scalar.ph147 ], [ %.174.unr, %scalar.ph147.prol.loopexit ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv85
  %i.bl = zext i32 %.174 to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !69
  store <2 x i32> %i.bn, ptr %i.bm, align 4, !tbaa !69
  %i.bo = add i32 %.174, 1
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv85
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = zext i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.br
  %i.bt = load <2 x i32>, ptr %i.bq, align 4, !tbaa !69
  store <2 x i32> %i.bt, ptr %i.bs, align 4, !tbaa !69
  %i.bu = add i32 %.174, 2
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv85
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bx
  %i.bz = load <2 x i32>, ptr %i.bw, align 4, !tbaa !69
  store <2 x i32> %i.bz, ptr %i.by, align 4, !tbaa !69
  %i.ca = add i32 %.174, 3
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv85
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = zext i32 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cd
  %i.cf = load <2 x i32>, ptr %i.cc, align 4, !tbaa !69
  store <2 x i32> %i.cf, ptr %i.ce, align 4, !tbaa !69
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %i.cg = add i32 %.174, 4                        ; 2 uses
  %exitcond89.not.3 = icmp eq i64 %indvars.iv.next86.3, %wide.trip.count88
  br i1 %exitcond89.not.3, label %.loopexit, label %scalar.ph147, !llvm.loop !544

.lr.ph:                                           ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit, %bb.h
  %.067 = phi i32 [ %i.gi, %bb.h ], [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit ] ; 11 uses
  %.05066 = phi i32 [ %.252, %bb.h ], [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit ] ; 5 uses
  %.05365 = phi i32 [ %.255, %bb.h ], [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit ] ; 6 uses
  %i.ch = icmp eq i32 %.05066, %3
  br i1 %i.ch, label %.preheader60, label %bb.c

.preheader60:                                     ; preds = %.lr.ph
  %i.ci = icmp ult i32 %.05365, %1
  %.pre = load ptr, ptr %5, align 8, !tbaa !186   ; 9 uses
  br i1 %i.ci, label %.lr.ph71, label %.loopexit

.lr.ph71:                                         ; preds = %.preheader60
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 20 ; 7 uses
  %i.ck = zext i32 %.05365 to i64                 ; 8 uses
  %wide.trip.count = zext i32 %1 to i64           ; 7 uses
  %i.cl = sub nsw i64 %wide.trip.count, %i.ck     ; 3 uses
  %min.iters.check = icmp ult i64 %i.cl, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph71
  %i.cm = xor i64 %i.ck, -1
  %i.cn = add nsw i64 %i.cm, %wide.trip.count     ; 2 uses
  %i.co = trunc i64 %i.cn to i32
  %i.cp = xor i32 %.067, -1
  %i.cq = icmp ult i32 %i.cp, %i.co
  %i.cr = icmp ugt i64 %i.cn, 4294967295
  %i.cs = or i1 %i.cq, %i.cr
  br i1 %i.cs, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ct = shl nuw nsw i64 %i.ck, 3                ; 4 uses
  %i.cu = getelementptr i8, ptr %2, i64 %i.ct
  %i.cv = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.cw = getelementptr i8, ptr %2, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4
  %i.cy = zext i32 %.067 to i64                   ; 2 uses
  %i.cz = shl nuw nsw i64 %i.cy, 3                ; 2 uses
  %i.da = getelementptr i8, ptr %.pre, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 20
  %i.dc = add nuw nsw i64 %wide.trip.count, %i.cy
  %i.dd = shl nuw nsw i64 %i.dc, 3                ; 2 uses
  %i.de = add nuw nsw i64 %i.dd, 16
  %i.df = sub nsw i64 %i.de, %i.ct
  %i.dg = getelementptr i8, ptr %.pre, i64 %i.df
  %12 = getelementptr i8, ptr %.pre, i64 %i.cz
  %13 = getelementptr i8, ptr %12, i64 24
  %14 = add nuw nsw i64 %i.dd, 20
  %15 = sub nsw i64 %14, %i.ct
  %i.dh = getelementptr i8, ptr %.pre, i64 %15
  %16 = getelementptr i8, ptr %2, i64 %i.ct
  %17 = getelementptr i8, ptr %16, i64 4
  %i.di = getelementptr i8, ptr %2, i64 %i.cv
  %bound0 = icmp ult ptr %i.cu, %i.dg
  %bound1 = icmp ult ptr %i.db, %i.cx
  %found.conflict = and i1 %bound0, %bound1
  %bound0122 = icmp ult ptr %13, %i.di
  %bound1123 = icmp ult ptr %17, %i.dh
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx = or i1 %found.conflict, %found.conflict124
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, -4                      ; 4 uses
  %i.dj = add nsw i64 %n.vec, %i.ck
  %i.dk = trunc i64 %n.vec to i32
  %i.dl = add i32 %.067, %i.dk                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = add nuw i64 %index, %i.ck               ; 2 uses
  %i.dn = trunc i64 %index to i32
  %i.do = add i32 %.067, %i.dn                    ; 2 uses
  %i.dp = add i32 %i.do, 2
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dm
  %i.dr = getelementptr [8 x i8], ptr %2, i64 %i.dm
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %i.dt = zext i32 %i.do to i64
  %i.du = zext i32 %i.dp to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dt
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.du
  %wide.vec = load <4 x i32>, ptr %i.dq, align 4, !tbaa !69
  %wide.vec126 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !69
  store <4 x i32> %wide.vec, ptr %i.dv, align 4, !tbaa !69
  store <4 x i32> %wide.vec126, ptr %i.dw, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph71, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ck, %vector.memcheck ], [ %i.ck, %vector.scevcheck ], [ %i.ck, %.lr.ph71 ], [ %i.dj, %middle.block ] ; 4 uses
  %.270.ph = phi i32 [ %.067, %vector.memcheck ], [ %.067, %vector.scevcheck ], [ %.067, %.lr.ph71 ], [ %i.dl, %middle.block ] ; 2 uses
  %i.dy = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.dy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.270.prol = phi i32 [ %i.ed, %scalar.ph.prol ], [ %.270.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.ea = zext i32 %.270.prol to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ea
  %i.ec = load <2 x i32>, ptr %i.dz, align 4, !tbaa !69
  store <2 x i32> %i.ec, ptr %i.eb, align 4, !tbaa !69
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.ed = add i32 %.270.prol, 1                   ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !546

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa175.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ed, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.270.unr = phi i32 [ %.270.ph, %scalar.ph.preheader ], [ %i.ed, %scalar.ph.prol ]
  %i.ee = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.270 = phi i32 [ %i.fc, %scalar.ph ], [ %.270.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.eh = zext i32 %.270 to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.eh
  %i.ej = load <2 x i32>, ptr %i.eg, align 4, !tbaa !69
  store <2 x i32> %i.ej, ptr %i.ei, align 4, !tbaa !69
  %i.ek = add i32 %.270, 1
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = zext i32 %i.ek to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.en
  %i.ep = load <2 x i32>, ptr %i.em, align 4, !tbaa !69
  store <2 x i32> %i.ep, ptr %i.eo, align 4, !tbaa !69
  %i.eq = add i32 %.270, 2
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = zext i32 %i.eq to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.et
  %i.ev = load <2 x i32>, ptr %i.es, align 4, !tbaa !69
  store <2 x i32> %i.ev, ptr %i.eu, align 4, !tbaa !69
  %i.ew = add i32 %.270, 3
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = zext i32 %i.ew to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ez
  %i.fb = load <2 x i32>, ptr %i.ey, align 4, !tbaa !69
  store <2 x i32> %i.fb, ptr %i.fa, align 4, !tbaa !69
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.fc = add i32 %.270, 4                        ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !547

bb.c:                                             ; preds = %.lr.ph
  %i.fd = zext i32 %.05365 to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fd ; 3 uses
  %i.ff = zext i32 %.05066 to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ff ; 3 uses
  %i.fh = load i32, ptr %i.fe, align 4, !tbaa !72 ; 4 uses
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !72 ; 3 uses
  %i.fj = icmp eq i32 %i.fh, %i.fi
  br i1 %i.fj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !73
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !73
  %i.fo = add i32 %i.fn, %i.fl
  %i.fp = load ptr, ptr %5, align 8, !tbaa !186   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  %i.fr = zext i32 %.067 to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fr ; 2 uses
  store i32 %i.fh, ptr %i.fs, align 4, !tbaa !72
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 %i.fo, ptr %i.ft, align 4, !tbaa !73
  %i.fu = add i32 %.05365, 1
  %i.fv = add i32 %.05066, 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.fw = icmp ult i32 %i.fh, %i.fi
  %i.fx = load ptr, ptr %5, align 8, !tbaa !186   ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 20
  %i.fz = zext i32 %.067 to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fz ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  br i1 %i.fw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.fh, ptr %i.ga, align 4, !tbaa !72
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !73
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !73
  %i.ge = add i32 %.05365, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 %i.fi, ptr %i.ga, align 4, !tbaa !72
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !73
  store i32 %i.gg, ptr %i.gb, align 4, !tbaa !73
  %i.gh = add i32 %.05066, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.pre9092 = phi ptr [ %i.fp, %bb.d ], [ %i.fx, %bb.f ], [ %i.fx, %bb.g ]
  %.255 = phi i32 [ %i.fu, %bb.d ], [ %i.ge, %bb.f ], [ %.05365, %bb.g ] ; 2 uses
  %.252 = phi i32 [ %i.fv, %bb.d ], [ %.05066, %bb.f ], [ %i.gh, %bb.g ] ; 2 uses
  %i.gi = add i32 %.067, 1                        ; 2 uses
  %i.gj = icmp eq i32 %.255, %1
  br i1 %i.gj, label %.preheader, label %.lr.ph, !llvm.loop !548

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %scalar.ph147.prol.loopexit, %scalar.ph147, %middle.block, %middle.block170, %.preheader60, %.preheader
  %i.gk = phi ptr [ %.pre90, %middle.block170 ], [ %.pre90, %.preheader ], [ %.pre, %.preheader60 ], [ %.pre, %middle.block ], [ %.pre90, %scalar.ph147.prol.loopexit ], [ %.pre90, %scalar.ph147 ], [ %.pre, %scalar.ph ], [ %.pre, %scalar.ph.prol.loopexit ]
  %.3 = phi i32 [ %i.ap, %middle.block170 ], [ %.0.lcssa, %.preheader ], [ %.067, %.preheader60 ], [ %i.dl, %middle.block ], [ %i.cg, %scalar.ph147 ], [ %.lcssa.unr, %scalar.ph147.prol.loopexit ], [ %.lcssa175.unr, %scalar.ph.prol.loopexit ], [ %i.fc, %scalar.ph ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i32 %.3, ptr %i.gl, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10polynomial16monomial_manager3divEPKNS_8monomialES3_R7obj_refIS1_NS_7managerEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !78
  %i.e = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %1, %2
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158  ; 6 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i: ; preds = %bb.c
  %i.i = load i32, ptr %i.h, align 4, !tbaa !198
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i, %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !220    ; 4 uses
  %.not.i4.i = icmp eq ptr %i.k, null
  br i1 %.not.i4.i, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !222, !nonnull !98, !align !99
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 464
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !150
  %i.q = load i32, ptr %i.k, align 4, !tbaa !198
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.k, align 4, !tbaa !198
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.p, ptr noundef nonnull %i.k)
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = tail call noundef zeroext i1 @_ZN10polynomial16monomial_manager8div_coreILb1EEEbjPKNS_5powerEjS4_RNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %i.v, ptr noundef nonnull %i.w, i32 noundef %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(12) %i.t)
  br i1 %i.aa, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.t) ; 6 uses
  %.not.i16 = icmp eq ptr %i.ab, null
  br i1 %.not.i16, label %bb.i, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i17

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i17: ; preds = %bb.h
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !198
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !198
  br label %bb.i

bb.i:                                             ; preds = %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i17, %bb.h
  %i.ae = load ptr, ptr %3, align 8, !tbaa !220   ; 4 uses
  %.not.i4.i18 = icmp eq ptr %i.ae, null
  br i1 %.not.i4.i18, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !222, !nonnull !98, !align !99
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !93
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 464
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !150
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !198
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.aj, ptr noundef nonnull %i.ae)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %i.h, %bb.f ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.ab, %bb.i ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ]
  store ptr %.sink, ptr %3, align 8, !tbaa !220
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.g, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ true, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10polynomial16monomial_manager8div_coreILb1EEEbjPKNS_5powerEjS4_RNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(12) %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !187
  %i.c = icmp ugt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZN10polynomial12tmp_monomial7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %1, 1
  %i.e = load ptr, ptr %5, align 8, !tbaa !186
  tail call void @_ZN6memory10deallocateEPv(ptr noundef %i.e)
  %i.f = shl i32 %1, 4
  %i.g = add i32 %i.f, 20
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.h) ; 3 uses
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.i, align 4, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 0, ptr %i.j, align 4, !tbaa !185
  store ptr %i.i, ptr %5, align 8, !tbaa !186
  store i32 %i.d, ptr %i.a, align 8, !tbaa !187
  br label %_ZN10polynomial12tmp_monomial7reserveEj.exit

_ZN10polynomial12tmp_monomial7reserveEj.exit:     ; preds = %bb.a, %bb.b
  %i.k = icmp ult i32 %1, %3
  br i1 %i.k, label %.critedge, label %.preheader72

.preheader72:                                     ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit
  %i.l = icmp eq i32 %3, 0
  br i1 %i.l, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader72
  %i.m = zext i32 %1 to i64
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %.critedge, label %.lr.ph97

.preheader.loopexit:                              ; preds = %bb.i
  %indvars = trunc i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader72
  %.056.lcssa = phi i32 [ 0, %.preheader72 ], [ %indvars, %.preheader.loopexit ] ; 2 uses
  %.050.lcssa = phi i32 [ 0, %.preheader72 ], [ %.5, %.preheader.loopexit ] ; 8 uses
  %i.o = icmp ult i32 %.056.lcssa, %1
  %.pre = load ptr, ptr %5, align 8, !tbaa !186   ; 6 uses
  br i1 %i.o, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %.pre, i64 20 ; 7 uses
  %i.q = zext i32 %.056.lcssa to i64              ; 8 uses
  %wide.trip.count = zext i32 %1 to i64           ; 7 uses
  %i.r = sub nsw i64 %wide.trip.count, %i.q       ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 38
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph81
  %i.s = xor i64 %i.q, -1
  %i.t = add nsw i64 %i.s, %wide.trip.count       ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = xor i32 %.050.lcssa, -1
  %i.w = icmp ult i32 %i.v, %i.u
  %i.x = icmp ugt i64 %i.t, 4294967295
  %i.y = or i1 %i.w, %i.x
  br i1 %i.y, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.z = shl nuw nsw i64 %i.q, 3                  ; 4 uses
  %i.aa = getelementptr i8, ptr %2, i64 %i.z
  %i.ab = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.ac = getelementptr i8, ptr %2, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4
  %i.ae = zext i32 %.050.lcssa to i64             ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 3                ; 2 uses
  %i.ag = getelementptr i8, ptr %.pre, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 20
  %i.ai = add nuw nsw i64 %i.ae, %wide.trip.count
  %i.aj = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, 16
  %i.al = sub nsw i64 %i.ak, %i.z
  %i.am = getelementptr i8, ptr %.pre, i64 %i.al
  %6 = getelementptr i8, ptr %.pre, i64 %i.af
  %7 = getelementptr i8, ptr %6, i64 24
  %8 = add nuw nsw i64 %i.aj, 20
  %9 = sub nsw i64 %8, %i.z
  %i.an = getelementptr i8, ptr %.pre, i64 %9
  %10 = getelementptr i8, ptr %2, i64 %i.z
  %11 = getelementptr i8, ptr %10, i64 4
  %i.ao = getelementptr i8, ptr %2, i64 %i.ab
  %bound0 = icmp ult ptr %i.aa, %i.am
  %bound1 = icmp ult ptr %i.ah, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  %bound0109 = icmp ult ptr %7, %i.ao
  %bound1110 = icmp ult ptr %11, %i.an
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx = or i1 %found.conflict, %found.conflict111
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, -4                       ; 4 uses
  %i.ap = add nsw i64 %n.vec, %i.q
  %i.aq = trunc i64 %n.vec to i32
  %i.ar = add i32 %.050.lcssa, %i.aq              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = add nuw i64 %index, %i.q                ; 2 uses
  %i.at = trunc i64 %index to i32
  %i.au = add i32 %.050.lcssa, %i.at              ; 2 uses
  %i.av = add i32 %i.au, 2
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.as
  %i.ax = getelementptr [8 x i8], ptr %2, i64 %i.as
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = zext i32 %i.au to i64
  %i.ba = zext i32 %i.av to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.az
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ba
  %wide.vec = load <4 x i32>, ptr %i.aw, align 4, !tbaa !69
  %wide.vec113 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !69
  store <4 x i32> %wide.vec, ptr %i.bb, align 4, !tbaa !69
  store <4 x i32> %wide.vec113, ptr %i.bc, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !549

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph81, %middle.block
  %indvars.iv84.ph = phi i64 [ %i.q, %vector.memcheck ], [ %i.q, %vector.scevcheck ], [ %i.q, %.lr.ph81 ], [ %i.ap, %middle.block ] ; 4 uses
  %.15180.ph = phi i32 [ %.050.lcssa, %vector.memcheck ], [ %.050.lcssa, %vector.scevcheck ], [ %.050.lcssa, %.lr.ph81 ], [ %i.ar, %middle.block ] ; 2 uses
  %i.be = sub nsw i64 %wide.trip.count, %indvars.iv84.ph
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv84.prol = phi i64 [ %indvars.iv.next85.prol, %scalar.ph.prol ], [ %indvars.iv84.ph, %scalar.ph.preheader ] ; 2 uses
  %.15180.prol = phi i32 [ %i.bj, %scalar.ph.prol ], [ %.15180.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84.prol
  %i.bg = zext i32 %.15180.prol to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bg
  %i.bi = load <2 x i32>, ptr %i.bf, align 4, !tbaa !69
  store <2 x i32> %i.bi, ptr %i.bh, align 4, !tbaa !69
  %indvars.iv.next85.prol = add nuw nsw i64 %indvars.iv84.prol, 1 ; 2 uses
  %i.bj = add i32 %.15180.prol, 1                 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !550

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.bj, %scalar.ph.prol ]
  %indvars.iv84.unr = phi i64 [ %indvars.iv84.ph, %scalar.ph.preheader ], [ %indvars.iv.next85.prol, %scalar.ph.prol ]
  %.15180.unr = phi i32 [ %.15180.ph, %scalar.ph.preheader ], [ %i.bj, %scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv84.ph, %wide.trip.count
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.3, %scalar.ph ], [ %indvars.iv84.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.15180 = phi i32 [ %i.ci, %scalar.ph ], [ %.15180.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84
  %i.bn = zext i32 %.15180 to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bn
  %i.bp = load <2 x i32>, ptr %i.bm, align 4, !tbaa !69
  store <2 x i32> %i.bp, ptr %i.bo, align 4, !tbaa !69
  %i.bq = add i32 %.15180, 1
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = zext i32 %i.bq to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bt
  %i.bv = load <2 x i32>, ptr %i.bs, align 4, !tbaa !69
  store <2 x i32> %i.bv, ptr %i.bu, align 4, !tbaa !69
  %i.bw = add i32 %.15180, 2
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = zext i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bz
  %i.cb = load <2 x i32>, ptr %i.by, align 4, !tbaa !69
  store <2 x i32> %i.cb, ptr %i.ca, align 4, !tbaa !69
  %i.cc = add i32 %.15180, 3
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = zext i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cf
  %i.ch = load <2 x i32>, ptr %i.ce, align 4, !tbaa !69
  store <2 x i32> %i.ch, ptr %i.cg, align 4, !tbaa !69
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
  %i.ci = add i32 %.15180, 4                      ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next85.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !551

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %.151.lcssa = phi i32 [ %.050.lcssa, %.preheader ], [ %i.ar, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ci, %scalar.ph ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 %.151.lcssa, ptr %i.cj, align 4, !tbaa !77
  br label %.critedge

.lr.ph:                                           ; preds = %bb.i
  %i.ck = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %i.ck, label %.critedge, label %.lr.ph97, !llvm.loop !552

.lr.ph97:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0527696 = phi i32 [ %.355, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0507795 = phi i32 [ %.5, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv94 ; 3 uses
  %i.cm = zext i32 %.0527696 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !72 ; 4 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !72 ; 2 uses
  %i.cq = icmp eq i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph97
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !73 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !73 ; 3 uses
  %.not = icmp ult i32 %i.cs, %i.cu
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cv = icmp ugt i32 %i.cs, %i.cu
  br i1 %i.cv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cw = sub nuw i32 %i.cs, %i.cu
  %i.cx = load ptr, ptr %5, align 8, !tbaa !186
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %i.cz = zext i32 %.0507795 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  store i32 %i.co, ptr %i.da, align 4, !tbaa !72
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 %i.cw, ptr %i.db, align 4, !tbaa !73
  %i.dc = add i32 %.0507795, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %i.dc, %bb.e ], [ %.0507795, %bb.d ]
  %i.dd = add i32 %.0527696, 1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph97
  %i.de = icmp ult i32 %i.co, %i.cp
  br i1 %i.de, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.df = load ptr, ptr %5, align 8, !tbaa !186
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.dh = zext i32 %.0507795 to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh ; 2 uses
  store i32 %i.co, ptr %i.di, align 4, !tbaa !72
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !73
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !73
  %i.dm = add i32 %.0507795, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.355 = phi i32 [ %.0527696, %bb.h ], [ %i.dd, %bb.f ] ; 2 uses
  %.5 = phi i32 [ %i.dm, %bb.h ], [ %.2, %bb.f ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv94, 1 ; 3 uses
  %i.dn = icmp eq i32 %.355, %3
  br i1 %i.dn, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !552

.critedge:                                        ; preds = %.lr.ph, %bb.g, %bb.c, %.lr.ph.preheader, %_ZN10polynomial12tmp_monomial7reserveEj.exit, %._crit_edge
  %.465 = phi i1 [ false, %_ZN10polynomial12tmp_monomial7reserveEj.exit ], [ true, %._crit_edge ], [ false, %.lr.ph.preheader ], [ false, %bb.c ], [ false, %bb.g ], [ false, %.lr.ph ]
  ret i1 %.465
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp19newton_interpolatorC2ERS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(824) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !293
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !206, !nonnull !98, !align !99
  %i.i = ptrtoint ptr %i.h to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_3
begin_hunk_4_@_ZN10polynomial7manager3imp19newton_interpolator2mkEjR7obj_refINS_10polynomialES0_E:bb.a
          cleanup
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z, %bb.v, %bb.u, %bb.q, %bb.p, %_ZN13mpzzp_manager3negER3mpz.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %.loopexit.split-lp

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit: ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i.i, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i, %._crit_edge
  %i.dd = load ptr, ptr %7, align 8, !tbaa !202, !nonnull !98, !align !99
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #28
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %.not.i.i43 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i43, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.di = load i32, ptr %i.ai, align 8, !tbaa !107
  %i.dj = add i32 %i.di, -1                       ; 2 uses
  store i32 %i.dj, ptr %i.ai, align 8, !tbaa !107
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ae, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.dh, ptr noundef nonnull %i.ai)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit: ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.not.i.i45 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i45, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit47, label %bb.ag

bb.ag:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.do = load i32, ptr %i.aj, align 8, !tbaa !107
  %i.dp = add i32 %i.do, -1                       ; 2 uses
  store i32 %i.dp, ptr %i.aj, align 8, !tbaa !107
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ah, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit47

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.dn, ptr noundef nonnull %i.aj)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit47 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit47: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.ab ], [ %lpad.loopexit.split-lp63, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10polynomial16monomial_manager8gcd_coreEjPKNS_5powerEjS3_RNS_12tmp_monomialES5_S5_(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %3, i32 %1) ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !187
  %i.c = icmp ugt i32 %.sroa.speculated, %i.b
  br i1 %i.c, label %bb.b, label %_ZN10polynomial12tmp_monomial7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  %i.d = shl i32 %.sroa.speculated, 1
  %i.e = load ptr, ptr %5, align 8, !tbaa !186
  tail call void @_ZN6memory10deallocateEPv(ptr noundef %i.e)
  %i.f = shl i32 %.sroa.speculated, 4
  %i.g = add i32 %i.f, 20
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.h) ; 3 uses
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.i, align 4, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 0, ptr %i.j, align 4, !tbaa !185
  store ptr %i.i, ptr %5, align 8, !tbaa !186
  store i32 %i.d, ptr %i.a, align 8, !tbaa !187
  br label %_ZN10polynomial12tmp_monomial7reserveEj.exit

_ZN10polynomial12tmp_monomial7reserveEj.exit:     ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !187
  %i.m = icmp ugt i32 %3, %i.l
  br i1 %i.m, label %bb.c, label %_ZN10polynomial12tmp_monomial7reserveEj.exit109

bb.c:                                             ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit
  %i.n = shl i32 %3, 1
  %i.o = load ptr, ptr %6, align 8, !tbaa !186
  tail call void @_ZN6memory10deallocateEPv(ptr noundef %i.o)
  %i.p = shl i32 %3, 4
  %i.q = add i32 %i.p, 20
  %i.r = zext i32 %i.q to i64
  %i.s = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.r) ; 3 uses
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.s, align 4, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 0, ptr %i.t, align 4, !tbaa !185
  store ptr %i.s, ptr %6, align 8, !tbaa !186
  store i32 %i.n, ptr %i.k, align 8, !tbaa !187
  br label %_ZN10polynomial12tmp_monomial7reserveEj.exit109

_ZN10polynomial12tmp_monomial7reserveEj.exit109:  ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !187
  %i.w = icmp ugt i32 %1, %i.v
  br i1 %i.w, label %_ZN10polynomial12tmp_monomial7reserveEj.exit110.thread, label %_ZN10polynomial12tmp_monomial7reserveEj.exit110

_ZN10polynomial12tmp_monomial7reserveEj.exit110.thread: ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit109
  %i.x = shl i32 %1, 1
  %i.y = load ptr, ptr %7, align 8, !tbaa !186
  tail call void @_ZN6memory10deallocateEPv(ptr noundef %i.y)
  %i.z = shl i32 %1, 4
  %i.aa = add i32 %i.z, 20
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ab) ; 3 uses
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.ac, align 4, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 0, ptr %i.ad, align 4, !tbaa !185
  store ptr %i.ac, ptr %7, align 8, !tbaa !186
  store i32 %i.x, ptr %i.u, align 8, !tbaa !187
  br label %.lr.ph.preheader

_ZN10polynomial12tmp_monomial7reserveEj.exit110:  ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit109
  %i.ae = icmp eq i32 %1, 0
  br i1 %i.ae, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit110.thread, %_ZN10polynomial12tmp_monomial7reserveEj.exit110
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.o
  %i.af = trunc nuw i8 %.199 to i1
  br i1 %i.af, label %.preheader, label %._crit_edge.thread

.preheader:                                       ; preds = %._crit_edge
  %i.ag = icmp ult i32 %.294, %3
  %.pre166 = load ptr, ptr %7, align 8, !tbaa !186 ; 6 uses
  br i1 %i.ag, label %.lr.ph149, label %._crit_edge150

.lr.ph149:                                        ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre166, i64 20 ; 7 uses
  %i.ai = zext i32 %.294 to i64                   ; 8 uses
  %wide.trip.count164 = zext i32 %3 to i64        ; 7 uses
  %i.aj = sub nsw i64 %wide.trip.count164, %i.ai  ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph149
  %i.ak = xor i64 %i.ai, -1
  %i.al = add nsw i64 %i.ak, %wide.trip.count164  ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = xor i32 %.3, -1
  %i.ao = icmp ult i32 %i.an, %i.am
  %i.ap = icmp ugt i64 %i.al, 4294967295
  %i.aq = or i1 %i.ao, %i.ap
  br i1 %i.aq, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ar = shl nuw nsw i64 %i.ai, 3                ; 4 uses
  %i.as = getelementptr i8, ptr %4, i64 %i.ar
  %i.at = shl nuw nsw i64 %wide.trip.count164, 3  ; 2 uses
  %i.au = getelementptr i8, ptr %4, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = zext i32 %.3 to i64                     ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 3                ; 2 uses
  %i.ay = getelementptr i8, ptr %.pre166, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 20
  %i.ba = add nuw nsw i64 %i.aw, %wide.trip.count164
  %i.bb = shl nuw nsw i64 %i.ba, 3                ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 16
  %i.bd = sub nsw i64 %i.bc, %i.ar
  %i.be = getelementptr i8, ptr %.pre166, i64 %i.bd
  %8 = getelementptr i8, ptr %.pre166, i64 %i.ax
  %9 = getelementptr i8, ptr %8, i64 24
  %10 = add nuw nsw i64 %i.bb, 20
  %11 = sub nsw i64 %10, %i.ar
  %i.bf = getelementptr i8, ptr %.pre166, i64 %11
  %12 = getelementptr i8, ptr %4, i64 %i.ar
  %13 = getelementptr i8, ptr %12, i64 4
  %i.bg = getelementptr i8, ptr %4, i64 %i.at
  %bound0 = icmp ult ptr %i.as, %i.be
  %bound1 = icmp ult ptr %i.az, %i.av
  %found.conflict = and i1 %bound0, %bound1
  %bound0211 = icmp ult ptr %9, %i.bg
  %bound1212 = icmp ult ptr %13, %i.bf
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx = or i1 %found.conflict, %found.conflict213
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -4                      ; 4 uses
  %i.bh = add nsw i64 %n.vec, %i.ai
  %i.bi = trunc i64 %n.vec to i32
  %i.bj = add i32 %.3, %i.bi                      ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = add nuw i64 %index, %i.ai               ; 2 uses
  %i.bl = trunc i64 %index to i32
  %i.bm = add i32 %.3, %i.bl                      ; 2 uses
  %i.bn = add i32 %i.bm, 2
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bk
  %i.bp = getelementptr [8 x i8], ptr %4, i64 %i.bk
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = zext i32 %i.bm to i64
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.br
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bs
  %wide.vec = load <4 x i32>, ptr %i.bo, align 4, !tbaa !69
  %wide.vec215 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !69
  store <4 x i32> %wide.vec, ptr %i.bt, align 4, !tbaa !69
  store <4 x i32> %wide.vec215, ptr %i.bu, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge150, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph149, %middle.block
  %indvars.iv161.ph = phi i64 [ %i.ai, %vector.memcheck ], [ %i.ai, %vector.scevcheck ], [ %i.ai, %.lr.ph149 ], [ %i.bh, %middle.block ] ; 4 uses
  %.186148.ph = phi i32 [ %.3, %vector.memcheck ], [ %.3, %vector.scevcheck ], [ %.3, %.lr.ph149 ], [ %i.bj, %middle.block ] ; 2 uses
  %i.bw = sub nsw i64 %wide.trip.count164, %indvars.iv161.ph
  %xtraiter = and i64 %i.bw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv161.prol = phi i64 [ %indvars.iv.next162.prol, %scalar.ph.prol ], [ %indvars.iv161.ph, %scalar.ph.preheader ] ; 2 uses
  %.186148.prol = phi i32 [ %i.cb, %scalar.ph.prol ], [ %.186148.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv161.prol
  %i.by = zext i32 %.186148.prol to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.by
  %i.ca = load <2 x i32>, ptr %i.bx, align 4, !tbaa !69
  store <2 x i32> %i.ca, ptr %i.bz, align 4, !tbaa !69
  %indvars.iv.next162.prol = add nuw nsw i64 %indvars.iv161.prol, 1 ; 2 uses
  %i.cb = add i32 %.186148.prol, 1                ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !557

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa268.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.cb, %scalar.ph.prol ]
  %indvars.iv161.unr = phi i64 [ %indvars.iv161.ph, %scalar.ph.preheader ], [ %indvars.iv.next162.prol, %scalar.ph.prol ]
  %.186148.unr = phi i32 [ %.186148.ph, %scalar.ph.preheader ], [ %i.cb, %scalar.ph.prol ]
  %i.cc = sub nsw i64 %indvars.iv161.ph, %wide.trip.count164
  %i.cd = icmp ugt i64 %i.cc, -4
  br i1 %i.cd, label %._crit_edge150, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.3, %scalar.ph ], [ %indvars.iv161.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.186148 = phi i32 [ %i.da, %scalar.ph ], [ %.186148.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv161
  %i.cf = zext i32 %.186148 to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cf
  %i.ch = load <2 x i32>, ptr %i.ce, align 4, !tbaa !69
  store <2 x i32> %i.ch, ptr %i.cg, align 4, !tbaa !69
  %i.ci = add i32 %.186148, 1
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv161
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = zext i32 %i.ci to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cl
  %i.cn = load <2 x i32>, ptr %i.ck, align 4, !tbaa !69
  store <2 x i32> %i.cn, ptr %i.cm, align 4, !tbaa !69
  %i.co = add i32 %.186148, 2
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv161
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = zext i32 %i.co to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cr
  %i.ct = load <2 x i32>, ptr %i.cq, align 4, !tbaa !69
  store <2 x i32> %i.ct, ptr %i.cs, align 4, !tbaa !69
  %i.cu = add i32 %.186148, 3
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv161
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = zext i32 %i.cu to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cx
  %i.cz = load <2 x i32>, ptr %i.cw, align 4, !tbaa !69
  store <2 x i32> %i.cz, ptr %i.cy, align 4, !tbaa !69
  %indvars.iv.next162.3 = add nuw nsw i64 %indvars.iv161, 4 ; 2 uses
  %i.da = add i32 %.186148, 4                     ; 2 uses
  %exitcond165.not.3 = icmp eq i64 %indvars.iv.next162.3, %wide.trip.count164
  br i1 %exitcond165.not.3, label %._crit_edge150, label %scalar.ph, !llvm.loop !558

._crit_edge150:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %.186.lcssa = phi i32 [ %.3, %.preheader ], [ %i.bj, %middle.block ], [ %.lcssa268.unr, %scalar.ph.prol.loopexit ], [ %i.da, %scalar.ph ]
  %i.db = load ptr, ptr %6, align 8, !tbaa !186
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 %.391, ptr %i.dc, align 4, !tbaa !77
  br label %._crit_edge.thread.sink.split

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.0137 = phi i32 [ %.2, %bb.o ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %.085136 = phi i32 [ %.3, %bb.o ], [ 0, %.lr.ph.preheader ] ; 8 uses
  %.088135 = phi i32 [ %.391, %bb.o ], [ 0, %.lr.ph.preheader ] ; 15 uses
  %.092134 = phi i32 [ %.294, %bb.o ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.095133 = phi i32 [ %.297, %bb.o ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.098132 = phi i8 [ %.199, %bb.o ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.dd = icmp eq i32 %.092134, %3
  br i1 %i.dd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.de = trunc nuw i8 %.098132 to i1
  br i1 %i.de, label %.preheader125, label %._crit_edge.thread

.preheader125:                                    ; preds = %bb.d
  %i.df = icmp ult i32 %.095133, %1
  %.pre = load ptr, ptr %6, align 8, !tbaa !186   ; 6 uses
  br i1 %i.df, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %.preheader125
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre, i64 20 ; 7 uses
  %i.dh = zext i32 %.095133 to i64                ; 8 uses
  %wide.trip.count = zext i32 %1 to i64           ; 7 uses
  %i.di = sub nsw i64 %wide.trip.count, %i.dh     ; 3 uses
  %min.iters.check242 = icmp ult i64 %i.di, 30
  br i1 %min.iters.check242, label %scalar.ph241.preheader, label %vector.scevcheck220

vector.scevcheck220:                              ; preds = %.lr.ph144
  %i.dj = xor i64 %i.dh, -1
  %i.dk = add nsw i64 %i.dj, %wide.trip.count     ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = xor i32 %.088135, -1
  %i.dn = icmp ult i32 %i.dm, %i.dl
  %i.do = icmp ugt i64 %i.dk, 4294967295
  %i.dp = or i1 %i.dn, %i.do
  br i1 %i.dp, label %scalar.ph241.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %vector.scevcheck220
  %i.dq = shl nuw nsw i64 %i.dh, 3                ; 4 uses
  %i.dr = getelementptr i8, ptr %2, i64 %i.dq
  %i.ds = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.dt = getelementptr i8, ptr %2, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -4
  %i.dv = zext i32 %.088135 to i64                ; 2 uses
  %i.dw = shl nuw nsw i64 %i.dv, 3                ; 2 uses
  %i.dx = getelementptr i8, ptr %.pre, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 20
  %i.dz = add nuw nsw i64 %i.dv, %wide.trip.count
  %i.ea = shl nuw nsw i64 %i.dz, 3                ; 2 uses
  %i.eb = add nuw nsw i64 %i.ea, 16
  %i.ec = sub nsw i64 %i.eb, %i.dq
  %i.ed = getelementptr i8, ptr %.pre, i64 %i.ec
  %14 = getelementptr i8, ptr %.pre, i64 %i.dw
  %15 = getelementptr i8, ptr %14, i64 24
  %16 = add nuw nsw i64 %i.ea, 20
  %17 = sub nsw i64 %16, %i.dq
  %i.ee = getelementptr i8, ptr %.pre, i64 %17
  %18 = getelementptr i8, ptr %2, i64 %i.dq
  %19 = getelementptr i8, ptr %18, i64 4
  %i.ef = getelementptr i8, ptr %2, i64 %i.ds
  %bound0244 = icmp ult ptr %i.dr, %i.ed
  %bound1245 = icmp ult ptr %i.dy, %i.du
  %found.conflict246 = and i1 %bound0244, %bound1245
  %bound0247 = icmp ult ptr %15, %i.ef
  %bound1248 = icmp ult ptr %19, %i.ee
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %found.conflict246, %found.conflict249
  br i1 %conflict.rdx250, label %scalar.ph241.preheader, label %vector.ph251

vector.ph251:                                     ; preds = %vector.memcheck243
  %n.vec252 = and i64 %i.di, -4                   ; 4 uses
  %i.eg = add nsw i64 %n.vec252, %i.dh
  %i.eh = trunc i64 %n.vec252 to i32
  %i.ei = add i32 %.088135, %i.eh                 ; 2 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next263, %vector.body253 ] ; 3 uses
  %i.ej = add nuw i64 %index254, %i.dh            ; 2 uses
  %i.ek = trunc i64 %index254 to i32
  %i.el = add i32 %.088135, %i.ek                 ; 2 uses
  %i.em = add i32 %i.el, 2
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ej
  %i.eo = getelementptr [8 x i8], ptr %2, i64 %i.ej
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %i.eq = zext i32 %i.el to i64
  %i.er = zext i32 %i.em to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.eq
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.er
  %wide.vec255 = load <4 x i32>, ptr %i.en, align 4, !tbaa !69
  %wide.vec258 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !69
  store <4 x i32> %wide.vec255, ptr %i.es, align 4, !tbaa !69
  store <4 x i32> %wide.vec258, ptr %i.et, align 4, !tbaa !69
  %index.next263 = add nuw i64 %index254, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next263, %n.vec252
  br i1 %i.eu, label %middle.block264, label %vector.body253, !llvm.loop !559

middle.block264:                                  ; preds = %vector.body253
  %cmp.n265 = icmp eq i64 %i.di, %n.vec252
  br i1 %cmp.n265, label %._crit_edge145, label %scalar.ph241.preheader

scalar.ph241.preheader:                           ; preds = %vector.memcheck243, %vector.scevcheck220, %.lr.ph144, %middle.block264
  %indvars.iv.ph = phi i64 [ %i.dh, %vector.memcheck243 ], [ %i.dh, %vector.scevcheck220 ], [ %i.dh, %.lr.ph144 ], [ %i.eg, %middle.block264 ] ; 4 uses
  %.189143.ph = phi i32 [ %.088135, %vector.memcheck243 ], [ %.088135, %vector.scevcheck220 ], [ %.088135, %.lr.ph144 ], [ %i.ei, %middle.block264 ] ; 2 uses
  %i.ev = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter274 = and i64 %i.ev, 3                 ; 2 uses
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod275.not, label %scalar.ph241.prol.loopexit, label %scalar.ph241.prol

scalar.ph241.prol:                                ; preds = %scalar.ph241.preheader, %scalar.ph241.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph241.prol ], [ %indvars.iv.ph, %scalar.ph241.preheader ] ; 2 uses
  %.189143.prol = phi i32 [ %i.fa, %scalar.ph241.prol ], [ %.189143.ph, %scalar.ph241.preheader ] ; 2 uses
  %prol.iter276 = phi i64 [ %prol.iter276.next, %scalar.ph241.prol ], [ 0, %scalar.ph241.preheader ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.ex = zext i32 %.189143.prol to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ex
  %i.ez = load <2 x i32>, ptr %i.ew, align 4, !tbaa !69
  store <2 x i32> %i.ez, ptr %i.ey, align 4, !tbaa !69
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.fa = add i32 %.189143.prol, 1                ; 3 uses
  %prol.iter276.next = add i64 %prol.iter276, 1   ; 2 uses
  %prol.iter276.cmp.not = icmp eq i64 %prol.iter276.next, %xtraiter274
  br i1 %prol.iter276.cmp.not, label %scalar.ph241.prol.loopexit, label %scalar.ph241.prol, !llvm.loop !560

scalar.ph241.prol.loopexit:                       ; preds = %scalar.ph241.prol, %scalar.ph241.preheader
  %.lcssa.unr = phi i32 [ poison, %scalar.ph241.preheader ], [ %i.fa, %scalar.ph241.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph241.preheader ], [ %indvars.iv.next.prol, %scalar.ph241.prol ]
  %.189143.unr = phi i32 [ %.189143.ph, %scalar.ph241.preheader ], [ %i.fa, %scalar.ph241.prol ]
  %i.fb = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %._crit_edge145, label %scalar.ph241

scalar.ph241:                                     ; preds = %scalar.ph241.prol.loopexit, %scalar.ph241
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph241 ], [ %indvars.iv.unr, %scalar.ph241.prol.loopexit ] ; 5 uses
  %.189143 = phi i32 [ %i.fz, %scalar.ph241 ], [ %.189143.unr, %scalar.ph241.prol.loopexit ] ; 5 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.fe = zext i32 %.189143 to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fe
  %i.fg = load <2 x i32>, ptr %i.fd, align 4, !tbaa !69
  store <2 x i32> %i.fg, ptr %i.ff, align 4, !tbaa !69
  %i.fh = add i32 %.189143, 1
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = zext i32 %i.fh to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fk
  %i.fm = load <2 x i32>, ptr %i.fj, align 4, !tbaa !69
  store <2 x i32> %i.fm, ptr %i.fl, align 4, !tbaa !69
  %i.fn = add i32 %.189143, 2
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = zext i32 %i.fn to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fq
  %i.fs = load <2 x i32>, ptr %i.fp, align 4, !tbaa !69
  store <2 x i32> %i.fs, ptr %i.fr, align 4, !tbaa !69
  %i.ft = add i32 %.189143, 3
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = zext i32 %i.ft to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fw
  %i.fy = load <2 x i32>, ptr %i.fv, align 4, !tbaa !69
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !69
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.fz = add i32 %.189143, 4                     ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge145, label %scalar.ph241, !llvm.loop !561

._crit_edge145:                                   ; preds = %scalar.ph241.prol.loopexit, %scalar.ph241, %middle.block264, %.preheader125
  %.189.lcssa = phi i32 [ %.088135, %.preheader125 ], [ %i.ei, %middle.block264 ], [ %.lcssa.unr, %scalar.ph241.prol.loopexit ], [ %i.fz, %scalar.ph241 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 %.189.lcssa, ptr %i.ga, align 4, !tbaa !77
  %i.gb = load ptr, ptr %7, align 8, !tbaa !186
  br label %._crit_edge.thread.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.gc = zext i32 %.095133 to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gc ; 4 uses
  %i.ge = zext i32 %.092134 to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ge ; 4 uses
  %i.gg = load i32, ptr %i.gd, align 4, !tbaa !72 ; 6 uses
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !72 ; 3 uses
  %i.gi = icmp eq i32 %i.gg, %i.gh
  br i1 %i.gi, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !73 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !73 ; 4 uses
  %i.gn = icmp ugt i32 %i.gk, %i.gm
  br i1 %i.gn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.go = sub nuw i32 %i.gk, %i.gm
  %i.gp = load ptr, ptr %6, align 8, !tbaa !186
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  %i.gr = zext i32 %.088135 to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gr ; 2 uses
  store i32 %i.gg, ptr %i.gs, align 4, !tbaa !72
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i32 %i.go, ptr %i.gt, align 4, !tbaa !73
  %i.gu = load ptr, ptr %5, align 8, !tbaa !186
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %i.gw = zext i32 %.0137 to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gw
  %i.gy = load <2 x i32>, ptr %i.gf, align 4, !tbaa !69
  store <2 x i32> %i.gy, ptr %i.gx, align 4, !tbaa !69
  %i.gz = add i32 %.088135, 1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ha = icmp ugt i32 %i.gm, %i.gk
  br i1 %i.ha, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.hb = sub nuw i32 %i.gm, %i.gk
  %i.hc = load ptr, ptr %7, align 8, !tbaa !186
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  %i.he = zext i32 %.085136 to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.he ; 2 uses
  store i32 %i.gg, ptr %i.hf, align 4, !tbaa !72
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store i32 %i.hb, ptr %i.hg, align 4, !tbaa !73
  %i.hh = load ptr, ptr %5, align 8, !tbaa !186
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 20
  %i.hj = zext i32 %.0137 to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = load <2 x i32>, ptr %i.gd, align 4, !tbaa !69
  store <2 x i32> %i.hl, ptr %i.hk, align 4, !tbaa !69
  %i.hm = add i32 %.085136, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.hn = load ptr, ptr %5, align 8, !tbaa !186
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  %i.hp = zext i32 %.0137 to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hp ; 2 uses
  store i32 %i.gg, ptr %i.hq, align 4, !tbaa !72
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store i32 %i.gk, ptr %i.hr, align 4, !tbaa !73
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.290 = phi i32 [ %i.gz, %bb.g ], [ %.088135, %bb.i ], [ %.088135, %bb.j ]
  %.287 = phi i32 [ %.085136, %bb.g ], [ %i.hm, %bb.i ], [ %.085136, %bb.j ]
  %.1 = add i32 %.0137, 1
  %i.hs = add i32 %.095133, 1
  %i.ht = add i32 %.092134, 1
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  %i.hu = icmp ult i32 %i.gg, %i.gh
  br i1 %i.hu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hv = load ptr, ptr %6, align 8, !tbaa !186
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  %i.hx = zext i32 %.088135 to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hx ; 2 uses
  store i32 %i.gg, ptr %i.hy, align 4, !tbaa !72
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !73
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !73
  %i.ic = add i32 %.088135, 1
  %i.id = add i32 %.095133, 1
end_hunk_4
begin_hunk_5_@_ZN10polynomial7manager3imp20pseudo_division_coreILb1ELb0ELb0EEEvPKNS_10polynomialES5_jRjR7obj_refIS3_S0_ES9_PKNS_10var2degreeE:bb.a
  %i.qh = icmp eq i32 %.4.i.i, -1
  br i1 %i.qh, label %_ZNK10polynomial8monomial9degree_ofEj.exit, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i
  %.pre.i = zext i32 %.4.i.i to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i, %bb.ce
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i ], [ %i.pa, %bb.ce ]
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %.pre-phi.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !73
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit

_ZNK10polynomial8monomial9degree_ofEj.exit:       ; preds = %bb.cj, %.preheader.i.i, %.preheader.i.i.1, %.preheader.i.i.2, %.preheader.i.i.3, %.preheader.i.i.4, %.lr.ph414.5, %.preheader.i.i.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i, %_ZN10polynomial7manager3imp10checkpointEv.exit197
  %.0.i = phi i32 [ %i.qk, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i ], [ 0, %_ZNK10polynomial8monomial8index_ofEj.exit.i ], [ 0, %_ZN10polynomial7manager3imp10checkpointEv.exit197 ], [ 0, %.preheader.i.i.preheader ], [ 0, %.preheader.i.i ], [ 0, %.lr.ph414.5 ], [ 0, %.preheader.i.i.4 ], [ 0, %.preheader.i.i.3 ], [ 0, %.preheader.i.i.2 ], [ 0, %.preheader.i.i.1 ], [ 0, %bb.cj ]
  %i.ql = icmp eq i32 %.0.i, %.122.i148
  br i1 %i.ql, label %bb.ck, label %bb.dl

bb.ck:                                            ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.qm = load ptr, ptr %i.fk, align 8, !tbaa !206, !nonnull !98, !align !99
  store ptr null, ptr %13, align 8, !tbaa !220
  store ptr %i.qm, ptr %i.gt, align 8, !tbaa !80
  %i.qn = load ptr, ptr %i.gu, align 8, !tbaa !150 ; 6 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 136 ; 6 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 144 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !187
  %i.qr = icmp ugt i32 %i.ow, %i.qq
  br i1 %i.qr, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i: ; preds = %bb.ck
  %i.qs = shl i32 %i.ow, 1
  %i.qt = load ptr, ptr %i.qo, align 8, !tbaa !186
  invoke void @_ZN6memory10deallocateEPv(ptr noundef %i.qt)
          to label %.noexc203 unwind label %bb.dk

.noexc203:                                        ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i
  %i.qu = shl i32 %i.ow, 4
  %i.qv = add i32 %i.qu, 20
  %i.qw = zext i32 %i.qv to i64
  %i.qx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.qw)
          to label %.noexc204 unwind label %bb.dk ; 3 uses

.noexc204:                                        ; preds = %.noexc203
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.qx, align 4, !tbaa !69
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  store i32 0, ptr %i.qy, align 4, !tbaa !185
  store ptr %i.qx, ptr %i.qo, align 8, !tbaa !186
  store i32 %i.qs, ptr %i.qp, align 8, !tbaa !187
  br label %.lr.ph.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i: ; preds = %bb.ck
  br i1 %i.ox, label %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i, %.noexc204
  %i.qz = getelementptr inbounds nuw i8, ptr %i.or, i64 20
  %wide.trip.count.i.i = zext i32 %i.ow to i64
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cp, %.lr.ph.i.i
  %indvars.iv.i.i200 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i202, %bb.cp ] ; 2 uses
  %.02731.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2.i.i, %bb.cp ] ; 4 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv.i.i200 ; 3 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !72 ; 2 uses
  %.not.i.i201 = icmp eq i32 %3, %i.rb
  br i1 %.not.i.i201, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.rc = load ptr, ptr %i.qo, align 8, !tbaa !186
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 20
  %i.re = zext i32 %.02731.i.i to i64
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.re ; 2 uses
  store i32 %i.rb, ptr %i.rf, align 4, !tbaa !72
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !73
  br label %.sink.split.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !73 ; 2 uses
  %i.rk = icmp ult i32 %.122.i95, %i.rj
  br i1 %i.rk, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.rl = sub nuw i32 %i.rj, %.122.i95
  %i.rm = load ptr, ptr %i.qo, align 8, !tbaa !186
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 20
  %i.ro = zext i32 %.02731.i.i to i64
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %i.ro ; 2 uses
  store i32 %3, ptr %i.rp, align 4, !tbaa !72
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.co, %bb.cm
  %.sink41.i.i = phi ptr [ %i.rp, %bb.co ], [ %i.rf, %bb.cm ]
  %.sink.i.i = phi i32 [ %i.rl, %bb.co ], [ %i.rh, %bb.cm ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.sink41.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.rq, align 4, !tbaa !73
  %i.rr = add i32 %.02731.i.i, 1
  br label %bb.cp

bb.cp:                                            ; preds = %.sink.split.i.i, %bb.cn
  %.2.i.i = phi i32 [ %.02731.i.i, %bb.cn ], [ %i.rr, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i202 = add nuw nsw i64 %indvars.iv.i.i200, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i202, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i, label %bb.cl, !llvm.loop !49

_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i: ; preds = %bb.cp, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i
  %.027.lcssa.i.i = phi i32 [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i ], [ %.2.i.i, %bb.cp ] ; 2 uses
  %i.rs = load ptr, ptr %i.qo, align 8, !tbaa !186 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 12
  store i32 %.027.lcssa.i.i, ptr %i.rt, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 20
  %i.rv = zext i32 %.027.lcssa.i.i to i64
  %i.rw = shl nuw nsw i64 %i.rv, 3
  %i.rx = invoke noundef i32 @_Z11string_hashSt17basic_string_viewIcSt11char_traitsIcEEj(i64 %i.rw, ptr nonnull %i.ru, i32 noundef 11)
          to label %.noexc235 unwind label %bb.dk

.noexc235:                                        ; preds = %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i
  %i.ry = load ptr, ptr %i.qo, align 8, !tbaa !186 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store i32 %i.rx, ptr %i.rz, align 4, !tbaa !185
  store ptr %i.ry, ptr %i.a, align 8, !tbaa !176
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  %i.sb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.sa, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc236 unwind label %bb.dk ; 2 uses

.noexc236:                                        ; preds = %.noexc235
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !176 ; 3 uses
  %i.sd = load ptr, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %.not.i226 = icmp eq ptr %i.sc, %i.sd
  br i1 %.not.i226, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.noexc236
  %i.se = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !193
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 12
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !77
  %i.si = shl i32 %i.sh, 3
  %i.sj = add i32 %i.si, 20
  %i.sk = zext i32 %i.sj to i64
  %i.sl = invoke noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.sf, i64 noundef %i.sk)
          to label %.noexc237 unwind label %bb.dk ; 10 uses

.noexc237:                                        ; preds = %bb.cq
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qn, i64 88 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qn, i64 96
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !68 ; 3 uses
  %i.sp = icmp eq ptr %i.so, null
  br i1 %i.sp, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i:             ; preds = %.noexc237
  %i.sq = getelementptr inbounds i8, ptr %i.so, i64 -4 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !69 ; 2 uses
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i:      ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i, %.noexc237
  %i.st = load i32, ptr %i.sm, align 8, !tbaa !184 ; 2 uses
  %i.su = add i32 %i.st, 1
  store i32 %i.su, ptr %i.sm, align 8, !tbaa !184
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6vectorIjLb0EjE4backEv.exit.i.i:               ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i
  %i.sv = add i32 %i.sr, -1                       ; 2 uses
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !69
  store i32 %i.sv, ptr %i.sq, align 4, !tbaa !69
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6id_gen2mkEv.exit.i:                           ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i
  %.0.i.i228 = phi i32 [ %i.st, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i ], [ %i.sy, %_ZN6vectorIjLb0EjE4backEv.exit.i.i ]
  %i.sz = load ptr, ptr %i.a, align 8, !tbaa !176 ; 5 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 12 ; 2 uses
  %i.tb = getelementptr i8, ptr %i.sz, i64 20     ; 8 uses
  store i32 0, ptr %i.sl, align 4, !tbaa !198
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  store i32 %.0.i.i228, ptr %i.tc, align 4, !tbaa !173
  %i.td = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 2 uses
  store i32 0, ptr %i.td, align 4, !tbaa !78
  %i.te = getelementptr inbounds nuw i8, ptr %i.sl, i64 12
  %i.tf = load <2 x i32>, ptr %i.ta, align 4, !tbaa !69
  %i.tg = load i32, ptr %i.ta, align 4, !tbaa !77 ; 3 uses
  store <2 x i32> %i.tf, ptr %i.te, align 4, !tbaa !69
  %.not.i.i229 = icmp eq i32 %i.tg, 0
  br i1 %.not.i.i229, label %.thread, label %.lr.ph.i.i230

.lr.ph.i.i230:                                    ; preds = %_ZN6id_gen2mkEv.exit.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.sl, i64 20 ; 8 uses
  %wide.trip.count.i.i231 = zext i32 %i.tg to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.tg, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i230
  %i.ti = shl nuw nsw i64 %wide.trip.count.i.i231, 3 ; 2 uses
  %i.tj = add nuw nsw i64 %i.ti, 16               ; 2 uses
  %i.tk = getelementptr i8, ptr %i.sl, i64 %i.tj
  %i.tl = getelementptr i8, ptr %i.sz, i64 %i.tj
  %14 = getelementptr i8, ptr %i.sl, i64 24
  %15 = add nuw nsw i64 %i.ti, 20                 ; 2 uses
  %16 = getelementptr i8, ptr %i.sl, i64 %15
  %i.tm = getelementptr i8, ptr %i.sz, i64 24
  %17 = getelementptr i8, ptr %i.sz, i64 %15
  %bound0 = icmp ult ptr %i.th, %i.tl
  %bound1 = icmp ult ptr %i.tb, %i.tk
  %found.conflict = and i1 %bound0, %bound1
  %bound0427 = icmp ult ptr %14, %17
  %bound1428 = icmp ult ptr %i.tm, %16
  %found.conflict429 = and i1 %bound0427, %bound1428
  %conflict.rdx = or i1 %found.conflict, %found.conflict429
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i231, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ts, %vector.body ]
  %vec.phi430 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.tt, %vector.body ]
  %i.tn = or disjoint i64 %index, 2               ; 2 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %index
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.tn
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %index
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.tn
  %wide.vec = load <4 x i32>, ptr %i.to, align 4, !tbaa !69 ; 2 uses
  %strided.vec431 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec432 = load <4 x i32>, ptr %i.tp, align 4, !tbaa !69 ; 2 uses
  %strided.vec434 = shufflevector <4 x i32> %wide.vec432, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  store <4 x i32> %wide.vec, ptr %i.tq, align 4, !tbaa !69
  store <4 x i32> %wide.vec432, ptr %i.tr, align 4, !tbaa !69
  %i.ts = add <2 x i32> %strided.vec431, %vec.phi ; 2 uses
  %i.tt = add <2 x i32> %strided.vec434, %vec.phi430 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tu = icmp eq i64 %index.next, %n.vec
  br i1 %i.tu, label %middle.block, label %vector.body, !llvm.loop !691

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.tt, %i.ts
  %i.tv = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i231
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i230, %middle.block
  %indvars.iv.i.i232.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i230 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i230 ], [ %i.tv, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i231, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i232.prol = phi i64 [ %indvars.iv.next.i.i233.prol, %scalar.ph.prol ], [ %indvars.iv.i.i232.ph, %scalar.ph.preheader ] ; 3 uses
  %i.tw = phi i32 [ %i.uc, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.i.i232.prol ; 2 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.i.i232.prol
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 4
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !73
  %i.ub = load <2 x i32>, ptr %i.tx, align 4, !tbaa !69
  store <2 x i32> %i.ub, ptr %i.ty, align 4, !tbaa !69
  %i.uc = add i32 %i.ua, %i.tw                    ; 3 uses
  %indvars.iv.next.i.i233.prol = add nuw nsw i64 %indvars.iv.i.i232.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !692

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa453.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.uc, %scalar.ph.prol ]
  %indvars.iv.i.i232.unr = phi i64 [ %indvars.iv.i.i232.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i233.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.uc, %scalar.ph.prol ]
  %i.ud = sub nsw i64 %indvars.iv.i.i232.ph, %wide.trip.count.i.i231
  %i.ue = icmp ugt i64 %i.ud, -4
  br i1 %i.ue, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa398 = phi i32 [ %i.tv, %middle.block ], [ %.lcssa453.unr, %scalar.ph.prol.loopexit ], [ %i.vd, %scalar.ph ]
  store i32 %.lcssa398, ptr %i.td, align 4, !tbaa !78
  br label %.thread

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i232 = phi i64 [ %indvars.iv.next.i.i233.3, %scalar.ph ], [ %indvars.iv.i.i232.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.uf = phi i32 [ %i.vd, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.i.i232 ; 2 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.i.i232
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !73
  %i.uk = load <2 x i32>, ptr %i.ug, align 4, !tbaa !69
  store <2 x i32> %i.uk, ptr %i.uh, align 4, !tbaa !69
  %i.ul = add i32 %i.uj, %i.uf
  %indvars.iv.next.i.i233 = add nuw nsw i64 %indvars.iv.i.i232, 1 ; 2 uses
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.next.i.i233 ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.next.i.i233
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !73
  %i.uq = load <2 x i32>, ptr %i.um, align 4, !tbaa !69
  store <2 x i32> %i.uq, ptr %i.un, align 4, !tbaa !69
  %i.ur = add i32 %i.up, %i.ul
  %indvars.iv.next.i.i233.1 = add nuw nsw i64 %indvars.iv.i.i232, 2 ; 2 uses
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.next.i.i233.1 ; 2 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.next.i.i233.1
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !73
  %i.uw = load <2 x i32>, ptr %i.us, align 4, !tbaa !69
  store <2 x i32> %i.uw, ptr %i.ut, align 4, !tbaa !69
  %i.ux = add i32 %i.uv, %i.ur
  %indvars.iv.next.i.i233.2 = add nuw nsw i64 %indvars.iv.i.i232, 3 ; 2 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.next.i.i233.2 ; 2 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.next.i.i233.2
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 4
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !73
  %i.vc = load <2 x i32>, ptr %i.uy, align 4, !tbaa !69
  store <2 x i32> %i.vc, ptr %i.uz, align 4, !tbaa !69
  %i.vd = add i32 %i.vb, %i.ux                    ; 2 uses
  %indvars.iv.next.i.i233.3 = add nuw nsw i64 %indvars.iv.i.i232, 4 ; 2 uses
  %exitcond.not.i.i234.3 = icmp eq i64 %indvars.iv.next.i.i233.3, %wide.trip.count.i.i231
  br i1 %exitcond.not.i.i234.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !693

.thread:                                          ; preds = %_ZN6id_gen2mkEv.exit.i, %._crit_edge.i.i
  store ptr %i.sl, ptr %i.sb, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

bb.cr:                                            ; preds = %.noexc236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not.i206 = icmp eq ptr %i.sc, null
  br i1 %.not.i206, label %bb.cs, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i: ; preds = %.thread, %bb.cr
  %.0.i227262 = phi ptr [ %i.sl, %.thread ], [ %i.sc, %bb.cr ] ; 3 uses
  %i.ve = load i32, ptr %.0.i227262, align 4, !tbaa !198
  %i.vf = add i32 %i.ve, 1
  store i32 %i.vf, ptr %.0.i227262, align 4, !tbaa !198
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i
  %.0.i227263 = phi ptr [ %.0.i227262, %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i ], [ null, %bb.cr ]
  store ptr %.0.i227263, ptr %13, align 8, !tbaa !220
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.vh = load i8, ptr %i.vg, align 4
  %i.vi = and i8 %i.vh, 1
  %i.vj = icmp eq i8 %i.vi, 0
  br i1 %i.vj, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.vk = load i32, ptr %i.ou, align 8, !tbaa !90
  store i32 %i.vk, ptr %i.ff, align 8, !tbaa !90
  %i.vl = load i8, ptr %i.fg, align 4
  %i.vm = and i8 %i.vl, -2
  store i8 %i.vm, ptr %i.fg, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.cu:                                            ; preds = %bb.cs
  %i.vn = load ptr, ptr %i.fe, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.vn, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.ou)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.dk

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.cu, %bb.ct
  %i.vo = load i8, ptr %i.gv, align 8, !tbaa !182, !range !189, !noundef !98
  %i.vp = trunc nuw i8 %i.vo to i1
  br i1 %i.vp, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.vq = load ptr, ptr %i.fe, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.vq, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %.noexc238 unwind label %bb.dk

.noexc238:                                        ; preds = %bb.cv
  %i.vr = load ptr, ptr %i.fe, align 8, !tbaa !97, !nonnull !98, !align !99 ; 3 uses
  %i.vs = load i8, ptr %i.gy, align 4
  %i.vt = and i8 %i.vs, 1
  %i.vu = icmp eq i8 %i.vt, 0
  br i1 %i.vu, label %bb.cw, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.cw:                                            ; preds = %.noexc238
  %i.vv = load i8, ptr %i.fg, align 4             ; 2 uses
  %i.vw = and i8 %i.vv, 1
  %i.vx = icmp eq i8 %i.vw, 0
  br i1 %i.vx, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.cw
  %i.vy = load i32, ptr %i.gx, align 8, !tbaa !90
  %i.vz = load i32, ptr %i.ff, align 8, !tbaa !90
  %i.wa = icmp slt i32 %i.vy, %i.vz
  br i1 %i.wa, label %bb.cx, label %bb.cy

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.cw, %.noexc238
  %i.wb = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.vr, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %.noexc239 unwind label %bb.dk

.noexc239:                                        ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %i.wc = icmp slt i32 %i.wb, 0
  %.pre12.i = load ptr, ptr %i.fe, align 8, !tbaa !97 ; 2 uses
  br i1 %i.wc, label %bb.cx, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc239
  %.pre10.i = load i8, ptr %i.fg, align 4
  br label %bb.cy

bb.cx:                                            ; preds = %.noexc239, %.split.i
  %i.wd = phi ptr [ %i.vr, %.split.i ], [ %.pre12.i, %.noexc239 ]
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.wd, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit unwind label %bb.dk

bb.cy:                                            ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.we = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.vv, %.split.i ]
  %i.wf = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.vr, %.split.i ] ; 2 uses
  %i.wg = and i8 %i.we, 1
  %i.wh = icmp eq i8 %i.wg, 0
end_hunk_5
begin_hunk_6_@_ZN10polynomial7manager3imp20pseudo_division_coreILb0ELb0ELb0EEEvPKNS_10polynomialES5_jRjR7obj_refIS3_S0_ES9_PKNS_10var2degreeE:bb.a
  %i.pb = icmp eq i32 %.4.i.i, -1
  br i1 %i.pb, label %_ZNK10polynomial8monomial9degree_ofEj.exit, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i
  %.pre.i = zext i32 %.4.i.i to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i, %bb.bs
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i ], [ %i.nu, %bb.bs ]
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %.pre-phi.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !73
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit

_ZNK10polynomial8monomial9degree_ofEj.exit:       ; preds = %bb.bx, %.preheader.i.i, %.preheader.i.i.1, %.preheader.i.i.2, %.preheader.i.i.3, %.preheader.i.i.4, %.lr.ph388.5, %.preheader.i.i.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i, %_ZN10polynomial7manager3imp10checkpointEv.exit178
  %.0.i = phi i32 [ %i.pe, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i ], [ 0, %_ZNK10polynomial8monomial8index_ofEj.exit.i ], [ 0, %_ZN10polynomial7manager3imp10checkpointEv.exit178 ], [ 0, %.preheader.i.i.preheader ], [ 0, %.preheader.i.i ], [ 0, %.lr.ph388.5 ], [ 0, %.preheader.i.i.4 ], [ 0, %.preheader.i.i.3 ], [ 0, %.preheader.i.i.2 ], [ 0, %.preheader.i.i.1 ], [ 0, %bb.bx ]
  %i.pf = icmp eq i32 %.0.i, %.122.i136
  br i1 %i.pf, label %bb.by, label %bb.cz

bb.by:                                            ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.pg = load ptr, ptr %i.fk, align 8, !tbaa !206, !nonnull !98, !align !99
  store ptr null, ptr %11, align 8, !tbaa !220
  store ptr %i.pg, ptr %i.gt, align 8, !tbaa !80
  %i.ph = load ptr, ptr %i.gu, align 8, !tbaa !150 ; 6 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 136 ; 6 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 144 ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !187
  %i.pl = icmp ugt i32 %i.nq, %i.pk
  br i1 %i.pl, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i: ; preds = %bb.by
  %i.pm = shl i32 %i.nq, 1
  %i.pn = load ptr, ptr %i.pi, align 8, !tbaa !186
  invoke void @_ZN6memory10deallocateEPv(ptr noundef %i.pn)
          to label %.noexc184 unwind label %bb.cy

.noexc184:                                        ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i
  %i.po = shl i32 %i.nq, 4
  %i.pp = add i32 %i.po, 20
  %i.pq = zext i32 %i.pp to i64
  %i.pr = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.pq)
          to label %.noexc185 unwind label %bb.cy ; 3 uses

.noexc185:                                        ; preds = %.noexc184
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.pr, align 4, !tbaa !69
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store i32 0, ptr %i.ps, align 4, !tbaa !185
  store ptr %i.pr, ptr %i.pi, align 8, !tbaa !186
  store i32 %i.pm, ptr %i.pj, align 8, !tbaa !187
  br label %.lr.ph.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i: ; preds = %bb.by
  br i1 %i.nr, label %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i, %.noexc185
  %i.pt = getelementptr inbounds nuw i8, ptr %i.nl, i64 20
  %wide.trip.count.i.i = zext i32 %i.nq to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cd, %.lr.ph.i.i
  %indvars.iv.i.i181 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i183, %bb.cd ] ; 2 uses
  %.02731.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2.i.i, %bb.cd ] ; 4 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %indvars.iv.i.i181 ; 3 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !72 ; 2 uses
  %.not.i.i182 = icmp eq i32 %3, %i.pv
  br i1 %.not.i.i182, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pw = load ptr, ptr %i.pi, align 8, !tbaa !186
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 20
  %i.py = zext i32 %.02731.i.i to i64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.py ; 2 uses
  store i32 %i.pv, ptr %i.pz, align 4, !tbaa !72
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !73
  br label %.sink.split.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !73 ; 2 uses
  %i.qe = icmp ult i32 %.122.i83, %i.qd
  br i1 %i.qe, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.qf = sub nuw i32 %i.qd, %.122.i83
  %i.qg = load ptr, ptr %i.pi, align 8, !tbaa !186
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 20
  %i.qi = zext i32 %.02731.i.i to i64
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %i.qi ; 2 uses
  store i32 %3, ptr %i.qj, align 4, !tbaa !72
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.cc, %bb.ca
  %.sink41.i.i = phi ptr [ %i.qj, %bb.cc ], [ %i.pz, %bb.ca ]
  %.sink.i.i = phi i32 [ %i.qf, %bb.cc ], [ %i.qb, %bb.ca ]
  %i.qk = getelementptr inbounds nuw i8, ptr %.sink41.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.qk, align 4, !tbaa !73
  %i.ql = add i32 %.02731.i.i, 1
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split.i.i, %bb.cb
  %.2.i.i = phi i32 [ %.02731.i.i, %bb.cb ], [ %i.ql, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i183 = add nuw nsw i64 %indvars.iv.i.i181, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i183, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i, label %bb.bz, !llvm.loop !49

_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i: ; preds = %bb.cd, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i
  %.027.lcssa.i.i = phi i32 [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i ], [ %.2.i.i, %bb.cd ] ; 2 uses
  %i.qm = load ptr, ptr %i.pi, align 8, !tbaa !186 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  store i32 %.027.lcssa.i.i, ptr %i.qn, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 20
  %i.qp = zext i32 %.027.lcssa.i.i to i64
  %i.qq = shl nuw nsw i64 %i.qp, 3
  %i.qr = invoke noundef i32 @_Z11string_hashSt17basic_string_viewIcSt11char_traitsIcEEj(i64 %i.qq, ptr nonnull %i.qo, i32 noundef 11)
          to label %.noexc215 unwind label %bb.cy

.noexc215:                                        ; preds = %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i
  %i.qs = load ptr, ptr %i.pi, align 8, !tbaa !186 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store i32 %i.qr, ptr %i.qt, align 4, !tbaa !185
  store ptr %i.qs, ptr %i.a, align 8, !tbaa !176
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.qv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.qu, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc216 unwind label %bb.cy ; 2 uses

.noexc216:                                        ; preds = %.noexc215
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !176 ; 3 uses
  %i.qx = load ptr, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %.not.i206 = icmp eq ptr %i.qw, %i.qx
  br i1 %.not.i206, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.noexc216
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !193
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 12
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !77
  %i.rc = shl i32 %i.rb, 3
  %i.rd = add i32 %i.rc, 20
  %i.re = zext i32 %i.rd to i64
  %i.rf = invoke noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.qz, i64 noundef %i.re)
          to label %.noexc217 unwind label %bb.cy ; 10 uses

.noexc217:                                        ; preds = %bb.ce
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ph, i64 88 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ph, i64 96
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !68 ; 3 uses
  %i.rj = icmp eq ptr %i.ri, null
  br i1 %i.rj, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i:             ; preds = %.noexc217
  %i.rk = getelementptr inbounds i8, ptr %i.ri, i64 -4 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !69 ; 2 uses
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i:      ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i, %.noexc217
  %i.rn = load i32, ptr %i.rg, align 8, !tbaa !184 ; 2 uses
  %i.ro = add i32 %i.rn, 1
  store i32 %i.ro, ptr %i.rg, align 8, !tbaa !184
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6vectorIjLb0EjE4backEv.exit.i.i:               ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i
  %i.rp = add i32 %i.rl, -1                       ; 2 uses
  %i.rq = zext i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !69
  store i32 %i.rp, ptr %i.rk, align 4, !tbaa !69
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6id_gen2mkEv.exit.i:                           ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i
  %.0.i.i208 = phi i32 [ %i.rn, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i ], [ %i.rs, %_ZN6vectorIjLb0EjE4backEv.exit.i.i ]
  %i.rt = load ptr, ptr %i.a, align 8, !tbaa !176 ; 5 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 12 ; 2 uses
  %i.rv = getelementptr i8, ptr %i.rt, i64 20     ; 8 uses
  store i32 0, ptr %i.rf, align 4, !tbaa !198
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  store i32 %.0.i.i208, ptr %i.rw, align 4, !tbaa !173
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rf, i64 8 ; 2 uses
  store i32 0, ptr %i.rx, align 4, !tbaa !78
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rf, i64 12
  %i.rz = load <2 x i32>, ptr %i.ru, align 4, !tbaa !69
  %i.sa = load i32, ptr %i.ru, align 4, !tbaa !77 ; 3 uses
  store <2 x i32> %i.rz, ptr %i.ry, align 4, !tbaa !69
  %.not.i.i209 = icmp eq i32 %i.sa, 0
  br i1 %.not.i.i209, label %.thread, label %.lr.ph.i.i210

.lr.ph.i.i210:                                    ; preds = %_ZN6id_gen2mkEv.exit.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rf, i64 20 ; 8 uses
  %wide.trip.count.i.i211 = zext i32 %i.sa to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.sa, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i210
  %i.sc = shl nuw nsw i64 %wide.trip.count.i.i211, 3 ; 2 uses
  %i.sd = add nuw nsw i64 %i.sc, 16               ; 2 uses
  %i.se = getelementptr i8, ptr %i.rf, i64 %i.sd
  %i.sf = getelementptr i8, ptr %i.rt, i64 %i.sd
  %12 = getelementptr i8, ptr %i.rf, i64 24
  %13 = add nuw nsw i64 %i.sc, 20                 ; 2 uses
  %14 = getelementptr i8, ptr %i.rf, i64 %13
  %i.sg = getelementptr i8, ptr %i.rt, i64 24
  %15 = getelementptr i8, ptr %i.rt, i64 %13
  %bound0 = icmp ult ptr %i.sb, %i.sf
  %bound1 = icmp ult ptr %i.rv, %i.se
  %found.conflict = and i1 %bound0, %bound1
  %bound0401 = icmp ult ptr %12, %15
  %bound1402 = icmp ult ptr %i.sg, %14
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx = or i1 %found.conflict, %found.conflict403
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i211, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.sm, %vector.body ]
  %vec.phi404 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.sn, %vector.body ]
  %i.sh = or disjoint i64 %index, 2               ; 2 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %index
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.sh
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %index
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.sh
  %wide.vec = load <4 x i32>, ptr %i.si, align 4, !tbaa !69 ; 2 uses
  %strided.vec405 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec406 = load <4 x i32>, ptr %i.sj, align 4, !tbaa !69 ; 2 uses
  %strided.vec408 = shufflevector <4 x i32> %wide.vec406, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  store <4 x i32> %wide.vec, ptr %i.sk, align 4, !tbaa !69
  store <4 x i32> %wide.vec406, ptr %i.sl, align 4, !tbaa !69
  %i.sm = add <2 x i32> %strided.vec405, %vec.phi ; 2 uses
  %i.sn = add <2 x i32> %strided.vec408, %vec.phi404 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.so = icmp eq i64 %index.next, %n.vec
  br i1 %i.so, label %middle.block, label %vector.body, !llvm.loop !696

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.sn, %i.sm
  %i.sp = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i211
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i210, %middle.block
  %indvars.iv.i.i212.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i210 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i210 ], [ %i.sp, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i211, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i212.prol = phi i64 [ %indvars.iv.next.i.i213.prol, %scalar.ph.prol ], [ %indvars.iv.i.i212.ph, %scalar.ph.preheader ] ; 3 uses
  %i.sq = phi i32 [ %i.sw, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv.i.i212.prol ; 2 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv.i.i212.prol
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.su = load i32, ptr %i.st, align 4, !tbaa !73
  %i.sv = load <2 x i32>, ptr %i.sr, align 4, !tbaa !69
  store <2 x i32> %i.sv, ptr %i.ss, align 4, !tbaa !69
  %i.sw = add i32 %i.su, %i.sq                    ; 3 uses
  %indvars.iv.next.i.i213.prol = add nuw nsw i64 %indvars.iv.i.i212.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !697

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa427.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.sw, %scalar.ph.prol ]
  %indvars.iv.i.i212.unr = phi i64 [ %indvars.iv.i.i212.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i213.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.sw, %scalar.ph.prol ]
  %i.sx = sub nsw i64 %indvars.iv.i.i212.ph, %wide.trip.count.i.i211
  %i.sy = icmp ugt i64 %i.sx, -4
  br i1 %i.sy, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa372 = phi i32 [ %i.sp, %middle.block ], [ %.lcssa427.unr, %scalar.ph.prol.loopexit ], [ %i.tx, %scalar.ph ]
  store i32 %.lcssa372, ptr %i.rx, align 4, !tbaa !78
  br label %.thread

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i212 = phi i64 [ %indvars.iv.next.i.i213.3, %scalar.ph ], [ %indvars.iv.i.i212.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.sz = phi i32 [ %i.tx, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv.i.i212 ; 2 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv.i.i212
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !73
  %i.te = load <2 x i32>, ptr %i.ta, align 4, !tbaa !69
  store <2 x i32> %i.te, ptr %i.tb, align 4, !tbaa !69
  %i.tf = add i32 %i.td, %i.sz
  %indvars.iv.next.i.i213 = add nuw nsw i64 %indvars.iv.i.i212, 1 ; 2 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv.next.i.i213 ; 2 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv.next.i.i213
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !73
  %i.tk = load <2 x i32>, ptr %i.tg, align 4, !tbaa !69
  store <2 x i32> %i.tk, ptr %i.th, align 4, !tbaa !69
  %i.tl = add i32 %i.tj, %i.tf
  %indvars.iv.next.i.i213.1 = add nuw nsw i64 %indvars.iv.i.i212, 2 ; 2 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv.next.i.i213.1 ; 2 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv.next.i.i213.1
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !73
  %i.tq = load <2 x i32>, ptr %i.tm, align 4, !tbaa !69
  store <2 x i32> %i.tq, ptr %i.tn, align 4, !tbaa !69
  %i.tr = add i32 %i.tp, %i.tl
  %indvars.iv.next.i.i213.2 = add nuw nsw i64 %indvars.iv.i.i212, 3 ; 2 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv.next.i.i213.2 ; 2 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv.next.i.i213.2
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !73
  %i.tw = load <2 x i32>, ptr %i.ts, align 4, !tbaa !69
  store <2 x i32> %i.tw, ptr %i.tt, align 4, !tbaa !69
  %i.tx = add i32 %i.tv, %i.tr                    ; 2 uses
  %indvars.iv.next.i.i213.3 = add nuw nsw i64 %indvars.iv.i.i212, 4 ; 2 uses
  %exitcond.not.i.i214.3 = icmp eq i64 %indvars.iv.next.i.i213.3, %wide.trip.count.i.i211
  br i1 %exitcond.not.i.i214.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !698

.thread:                                          ; preds = %_ZN6id_gen2mkEv.exit.i, %._crit_edge.i.i
  store ptr %i.rf, ptr %i.qv, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

bb.cf:                                            ; preds = %.noexc216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not.i187 = icmp eq ptr %i.qw, null
  br i1 %.not.i187, label %bb.cg, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i: ; preds = %.thread, %bb.cf
  %.0.i207242 = phi ptr [ %i.rf, %.thread ], [ %i.qw, %bb.cf ] ; 3 uses
  %i.ty = load i32, ptr %.0.i207242, align 4, !tbaa !198
  %i.tz = add i32 %i.ty, 1
  store i32 %i.tz, ptr %.0.i207242, align 4, !tbaa !198
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i
  %.0.i207243 = phi ptr [ %.0.i207242, %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i ], [ null, %bb.cf ]
  store ptr %.0.i207243, ptr %11, align 8, !tbaa !220
  %i.ua = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.ub = load i8, ptr %i.ua, align 4
  %i.uc = and i8 %i.ub, 1
  %i.ud = icmp eq i8 %i.uc, 0
  br i1 %i.ud, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ue = load i32, ptr %i.no, align 8, !tbaa !90
  store i32 %i.ue, ptr %i.ff, align 8, !tbaa !90
  %i.uf = load i8, ptr %i.fg, align 4
  %i.ug = and i8 %i.uf, -2
  store i8 %i.ug, ptr %i.fg, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.uh = load ptr, ptr %i.fe, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.uh, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.no)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.cy

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.ci, %bb.ch
  %i.ui = load i8, ptr %i.gv, align 8, !tbaa !182, !range !189, !noundef !98
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.uk = load ptr, ptr %i.fe, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.uk, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %.noexc218 unwind label %bb.cy

.noexc218:                                        ; preds = %bb.cj
  %i.ul = load ptr, ptr %i.fe, align 8, !tbaa !97, !nonnull !98, !align !99 ; 3 uses
  %i.um = load i8, ptr %i.gy, align 4
  %i.un = and i8 %i.um, 1
  %i.uo = icmp eq i8 %i.un, 0
  br i1 %i.uo, label %bb.ck, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.ck:                                            ; preds = %.noexc218
  %i.up = load i8, ptr %i.fg, align 4             ; 2 uses
  %i.uq = and i8 %i.up, 1
  %i.ur = icmp eq i8 %i.uq, 0
  br i1 %i.ur, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.ck
  %i.us = load i32, ptr %i.gx, align 8, !tbaa !90
  %i.ut = load i32, ptr %i.ff, align 8, !tbaa !90
  %i.uu = icmp slt i32 %i.us, %i.ut
  br i1 %i.uu, label %bb.cl, label %bb.cm

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.ck, %.noexc218
  %i.uv = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ul, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %.noexc219 unwind label %bb.cy

.noexc219:                                        ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %i.uw = icmp slt i32 %i.uv, 0
  %.pre12.i = load ptr, ptr %i.fe, align 8, !tbaa !97 ; 2 uses
  br i1 %i.uw, label %bb.cl, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc219
  %.pre10.i = load i8, ptr %i.fg, align 4
  br label %bb.cm

bb.cl:                                            ; preds = %.noexc219, %.split.i
  %i.ux = phi ptr [ %i.ul, %.split.i ], [ %.pre12.i, %.noexc219 ]
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ux, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit unwind label %bb.cy

bb.cm:                                            ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.uy = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.up, %.split.i ]
  %i.uz = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.ul, %.split.i ] ; 2 uses
  %i.va = and i8 %i.uy, 1
  %i.vb = icmp eq i8 %i.va, 0
end_hunk_6
begin_hunk_7_@_ZN10polynomial7manager3imp20pseudo_division_coreILb1ELb1ELb0EEEvPKNS_10polynomialES5_jRjR7obj_refIS3_S0_ES9_PKNS_10var2degreeE:bb.a
  %i.sj = icmp eq i32 %.4.i.i, -1
  br i1 %i.sj, label %_ZNK10polynomial8monomial9degree_ofEj.exit, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i
  %.pre.i = zext i32 %.4.i.i to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i, %bb.cy
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i ], [ %i.rc, %bb.cy ]
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.qt, i64 %.pre-phi.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !73
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit

_ZNK10polynomial8monomial9degree_ofEj.exit:       ; preds = %bb.dd, %.preheader.i.i, %.preheader.i.i.1, %.preheader.i.i.2, %.preheader.i.i.3, %.preheader.i.i.4, %.lr.ph505.5, %.preheader.i.i.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i, %_ZN10polynomial7manager3imp10checkpointEv.exit244
  %.0.i = phi i32 [ %i.sm, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i ], [ 0, %_ZNK10polynomial8monomial8index_ofEj.exit.i ], [ 0, %_ZN10polynomial7manager3imp10checkpointEv.exit244 ], [ 0, %.preheader.i.i.preheader ], [ 0, %.preheader.i.i ], [ 0, %.lr.ph505.5 ], [ 0, %.preheader.i.i.4 ], [ 0, %.preheader.i.i.3 ], [ 0, %.preheader.i.i.2 ], [ 0, %.preheader.i.i.1 ], [ 0, %bb.dd ]
  %i.sn = icmp eq i32 %.0.i, %.122.i185
  br i1 %i.sn, label %bb.de, label %bb.eg

bb.de:                                            ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.so = load ptr, ptr %i.gw, align 8, !tbaa !206, !nonnull !98, !align !99
  store ptr null, ptr %16, align 8, !tbaa !220
  store ptr %i.so, ptr %i.if, align 8, !tbaa !80
  %i.sp = load ptr, ptr %i.ig, align 8, !tbaa !150 ; 6 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 136 ; 6 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 144 ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !187
  %i.st = icmp ugt i32 %i.qy, %i.ss
  br i1 %i.st, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i: ; preds = %bb.de
  %i.su = shl i32 %i.qy, 1
  %i.sv = load ptr, ptr %i.sq, align 8, !tbaa !186
  invoke void @_ZN6memory10deallocateEPv(ptr noundef %i.sv)
          to label %.noexc250 unwind label %bb.ef

.noexc250:                                        ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i
  %i.sw = shl i32 %i.qy, 4
  %i.sx = add i32 %i.sw, 20
  %i.sy = zext i32 %i.sx to i64
  %i.sz = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.sy)
          to label %.noexc251 unwind label %bb.ef ; 3 uses

.noexc251:                                        ; preds = %.noexc250
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.sz, align 4, !tbaa !69
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  store i32 0, ptr %i.ta, align 4, !tbaa !185
  store ptr %i.sz, ptr %i.sq, align 8, !tbaa !186
  store i32 %i.su, ptr %i.sr, align 8, !tbaa !187
  br label %.lr.ph.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i: ; preds = %bb.de
  br i1 %i.qz, label %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i, %.noexc251
  %i.tb = getelementptr inbounds nuw i8, ptr %i.qt, i64 20
  %wide.trip.count.i.i = zext i32 %i.qy to i64
  br label %bb.df

bb.df:                                            ; preds = %bb.dj, %.lr.ph.i.i
  %indvars.iv.i.i247 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i249, %bb.dj ] ; 2 uses
  %.02731.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2.i.i, %bb.dj ] ; 4 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv.i.i247 ; 3 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !72 ; 2 uses
  %.not.i.i248 = icmp eq i32 %3, %i.td
  br i1 %.not.i.i248, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.te = load ptr, ptr %i.sq, align 8, !tbaa !186
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 20
  %i.tg = zext i32 %.02731.i.i to i64
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.tg ; 2 uses
  store i32 %i.td, ptr %i.th, align 4, !tbaa !72
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !73
  br label %.sink.split.i.i

bb.dh:                                            ; preds = %bb.df
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !73 ; 2 uses
  %i.tm = icmp ult i32 %.122.i123, %i.tl
  br i1 %i.tm, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.tn = sub nuw i32 %i.tl, %.122.i123
  %i.to = load ptr, ptr %i.sq, align 8, !tbaa !186
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 20
  %i.tq = zext i32 %.02731.i.i to i64
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %i.tq ; 2 uses
  store i32 %3, ptr %i.tr, align 4, !tbaa !72
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.di, %bb.dg
  %.sink41.i.i = phi ptr [ %i.tr, %bb.di ], [ %i.th, %bb.dg ]
  %.sink.i.i = phi i32 [ %i.tn, %bb.di ], [ %i.tj, %bb.dg ]
  %i.ts = getelementptr inbounds nuw i8, ptr %.sink41.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.ts, align 4, !tbaa !73
  %i.tt = add i32 %.02731.i.i, 1
  br label %bb.dj

bb.dj:                                            ; preds = %.sink.split.i.i, %bb.dh
  %.2.i.i = phi i32 [ %.02731.i.i, %bb.dh ], [ %i.tt, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i249 = add nuw nsw i64 %indvars.iv.i.i247, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i249, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i, label %bb.df, !llvm.loop !49

_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i: ; preds = %bb.dj, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i
  %.027.lcssa.i.i = phi i32 [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i ], [ %.2.i.i, %bb.dj ] ; 2 uses
  %i.tu = load ptr, ptr %i.sq, align 8, !tbaa !186 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 12
  store i32 %.027.lcssa.i.i, ptr %i.tv, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 20
  %i.tx = zext i32 %.027.lcssa.i.i to i64
  %i.ty = shl nuw nsw i64 %i.tx, 3
  %i.tz = invoke noundef i32 @_Z11string_hashSt17basic_string_viewIcSt11char_traitsIcEEj(i64 %i.ty, ptr nonnull %i.tw, i32 noundef 11)
          to label %.noexc297 unwind label %bb.ef

.noexc297:                                        ; preds = %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i
  %i.ua = load ptr, ptr %i.sq, align 8, !tbaa !186 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store i32 %i.tz, ptr %i.ub, align 4, !tbaa !185
  store ptr %i.ua, ptr %i.a, align 8, !tbaa !176
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sp, i64 24
  %i.ud = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.uc, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc298 unwind label %bb.ef ; 2 uses

.noexc298:                                        ; preds = %.noexc297
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !176 ; 3 uses
  %i.uf = load ptr, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %.not.i288 = icmp eq ptr %i.ue, %i.uf
  br i1 %.not.i288, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.noexc298
  %i.ug = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !193
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 12
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !77
  %i.uk = shl i32 %i.uj, 3
  %i.ul = add i32 %i.uk, 20
  %i.um = zext i32 %i.ul to i64
  %i.un = invoke noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.uh, i64 noundef %i.um)
          to label %.noexc299 unwind label %bb.ef ; 10 uses

.noexc299:                                        ; preds = %bb.dk
  %i.uo = getelementptr inbounds nuw i8, ptr %i.sp, i64 88 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.sp, i64 96
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !68 ; 3 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i:             ; preds = %.noexc299
  %i.us = getelementptr inbounds i8, ptr %i.uq, i64 -4 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !69 ; 2 uses
  %i.uu = icmp eq i32 %i.ut, 0
  br i1 %i.uu, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i:      ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i, %.noexc299
  %i.uv = load i32, ptr %i.uo, align 8, !tbaa !184 ; 2 uses
  %i.uw = add i32 %i.uv, 1
  store i32 %i.uw, ptr %i.uo, align 8, !tbaa !184
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6vectorIjLb0EjE4backEv.exit.i.i:               ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i
  %i.ux = add i32 %i.ut, -1                       ; 2 uses
  %i.uy = zext i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.uy
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !69
  store i32 %i.ux, ptr %i.us, align 4, !tbaa !69
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6id_gen2mkEv.exit.i:                           ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i
  %.0.i.i290 = phi i32 [ %i.uv, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i ], [ %i.va, %_ZN6vectorIjLb0EjE4backEv.exit.i.i ]
  %i.vb = load ptr, ptr %i.a, align 8, !tbaa !176 ; 5 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 12 ; 2 uses
  %i.vd = getelementptr i8, ptr %i.vb, i64 20     ; 8 uses
  store i32 0, ptr %i.un, align 4, !tbaa !198
  %i.ve = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  store i32 %.0.i.i290, ptr %i.ve, align 4, !tbaa !173
  %i.vf = getelementptr inbounds nuw i8, ptr %i.un, i64 8 ; 2 uses
  store i32 0, ptr %i.vf, align 4, !tbaa !78
  %i.vg = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  %i.vh = load <2 x i32>, ptr %i.vc, align 4, !tbaa !69
  %i.vi = load i32, ptr %i.vc, align 4, !tbaa !77 ; 3 uses
  store <2 x i32> %i.vh, ptr %i.vg, align 4, !tbaa !69
  %.not.i.i291 = icmp eq i32 %i.vi, 0
  br i1 %.not.i.i291, label %.thread, label %.lr.ph.i.i292

.lr.ph.i.i292:                                    ; preds = %_ZN6id_gen2mkEv.exit.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.un, i64 20 ; 8 uses
  %wide.trip.count.i.i293 = zext i32 %i.vi to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.vi, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i292
  %i.vk = shl nuw nsw i64 %wide.trip.count.i.i293, 3 ; 2 uses
  %i.vl = add nuw nsw i64 %i.vk, 16               ; 2 uses
  %i.vm = getelementptr i8, ptr %i.un, i64 %i.vl
  %i.vn = getelementptr i8, ptr %i.vb, i64 %i.vl
  %17 = getelementptr i8, ptr %i.un, i64 24
  %18 = add nuw nsw i64 %i.vk, 20                 ; 2 uses
  %19 = getelementptr i8, ptr %i.un, i64 %18
  %i.vo = getelementptr i8, ptr %i.vb, i64 24
  %20 = getelementptr i8, ptr %i.vb, i64 %18
  %bound0 = icmp ult ptr %i.vj, %i.vn
  %bound1 = icmp ult ptr %i.vd, %i.vm
  %found.conflict = and i1 %bound0, %bound1
  %bound0518 = icmp ult ptr %17, %20
  %bound1519 = icmp ult ptr %i.vo, %19
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx = or i1 %found.conflict, %found.conflict520
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i293, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.vu, %vector.body ]
  %vec.phi521 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.vv, %vector.body ]
  %i.vp = or disjoint i64 %index, 2               ; 2 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %index
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.vp
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %index
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.vp
  %wide.vec = load <4 x i32>, ptr %i.vq, align 4, !tbaa !69 ; 2 uses
  %strided.vec522 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec523 = load <4 x i32>, ptr %i.vr, align 4, !tbaa !69 ; 2 uses
  %strided.vec525 = shufflevector <4 x i32> %wide.vec523, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  store <4 x i32> %wide.vec, ptr %i.vs, align 4, !tbaa !69
  store <4 x i32> %wide.vec523, ptr %i.vt, align 4, !tbaa !69
  %i.vu = add <2 x i32> %strided.vec522, %vec.phi ; 2 uses
  %i.vv = add <2 x i32> %strided.vec525, %vec.phi521 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vw = icmp eq i64 %index.next, %n.vec
  br i1 %i.vw, label %middle.block, label %vector.body, !llvm.loop !701

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.vv, %i.vu
  %i.vx = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i293
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i292, %middle.block
  %indvars.iv.i.i294.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i292 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i292 ], [ %i.vx, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i293, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i294.prol = phi i64 [ %indvars.iv.next.i.i295.prol, %scalar.ph.prol ], [ %indvars.iv.i.i294.ph, %scalar.ph.preheader ] ; 3 uses
  %i.vy = phi i32 [ %i.we, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %indvars.iv.i.i294.prol ; 2 uses
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv.i.i294.prol
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !73
  %i.wd = load <2 x i32>, ptr %i.vz, align 4, !tbaa !69
  store <2 x i32> %i.wd, ptr %i.wa, align 4, !tbaa !69
  %i.we = add i32 %i.wc, %i.vy                    ; 3 uses
  %indvars.iv.next.i.i295.prol = add nuw nsw i64 %indvars.iv.i.i294.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !702

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa547.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.we, %scalar.ph.prol ]
  %indvars.iv.i.i294.unr = phi i64 [ %indvars.iv.i.i294.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i295.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.we, %scalar.ph.prol ]
  %i.wf = sub nsw i64 %indvars.iv.i.i294.ph, %wide.trip.count.i.i293
  %i.wg = icmp ugt i64 %i.wf, -4
  br i1 %i.wg, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa489 = phi i32 [ %i.vx, %middle.block ], [ %.lcssa547.unr, %scalar.ph.prol.loopexit ], [ %i.xf, %scalar.ph ]
  store i32 %.lcssa489, ptr %i.vf, align 4, !tbaa !78
  br label %.thread

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i294 = phi i64 [ %indvars.iv.next.i.i295.3, %scalar.ph ], [ %indvars.iv.i.i294.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.wh = phi i32 [ %i.xf, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %indvars.iv.i.i294 ; 2 uses
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv.i.i294
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !73
  %i.wm = load <2 x i32>, ptr %i.wi, align 4, !tbaa !69
  store <2 x i32> %i.wm, ptr %i.wj, align 4, !tbaa !69
  %i.wn = add i32 %i.wl, %i.wh
  %indvars.iv.next.i.i295 = add nuw nsw i64 %indvars.iv.i.i294, 1 ; 2 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %indvars.iv.next.i.i295 ; 2 uses
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv.next.i.i295
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !73
  %i.ws = load <2 x i32>, ptr %i.wo, align 4, !tbaa !69
  store <2 x i32> %i.ws, ptr %i.wp, align 4, !tbaa !69
  %i.wt = add i32 %i.wr, %i.wn
  %indvars.iv.next.i.i295.1 = add nuw nsw i64 %indvars.iv.i.i294, 2 ; 2 uses
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %indvars.iv.next.i.i295.1 ; 2 uses
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv.next.i.i295.1
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !73
  %i.wy = load <2 x i32>, ptr %i.wu, align 4, !tbaa !69
  store <2 x i32> %i.wy, ptr %i.wv, align 4, !tbaa !69
  %i.wz = add i32 %i.wx, %i.wt
  %indvars.iv.next.i.i295.2 = add nuw nsw i64 %indvars.iv.i.i294, 3 ; 2 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %indvars.iv.next.i.i295.2 ; 2 uses
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv.next.i.i295.2
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !73
  %i.xe = load <2 x i32>, ptr %i.xa, align 4, !tbaa !69
  store <2 x i32> %i.xe, ptr %i.xb, align 4, !tbaa !69
  %i.xf = add i32 %i.xd, %i.wz                    ; 2 uses
  %indvars.iv.next.i.i295.3 = add nuw nsw i64 %indvars.iv.i.i294, 4 ; 2 uses
  %exitcond.not.i.i296.3 = icmp eq i64 %indvars.iv.next.i.i295.3, %wide.trip.count.i.i293
  br i1 %exitcond.not.i.i296.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !703

.thread:                                          ; preds = %_ZN6id_gen2mkEv.exit.i, %._crit_edge.i.i
  store ptr %i.un, ptr %i.ud, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

bb.dl:                                            ; preds = %.noexc298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not.i253 = icmp eq ptr %i.ue, null
  br i1 %.not.i253, label %bb.dm, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i: ; preds = %.thread, %bb.dl
  %.0.i289324 = phi ptr [ %i.un, %.thread ], [ %i.ue, %bb.dl ] ; 3 uses
  %i.xg = load i32, ptr %.0.i289324, align 4, !tbaa !198
  %i.xh = add i32 %i.xg, 1
  store i32 %i.xh, ptr %.0.i289324, align 4, !tbaa !198
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i
  %.0.i289325 = phi ptr [ %.0.i289324, %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i ], [ null, %bb.dl ] ; 2 uses
  store ptr %.0.i289325, ptr %16, align 8, !tbaa !220
  invoke void @_ZN10polynomial7manager3imp10som_buffer3addERK3mpzPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(32) %i.ib, ptr noundef nonnull align 8 dereferenceable(16) %i.qw, ptr noundef %.0.i289325)
          to label %bb.dn unwind label %bb.ef

bb.dn:                                            ; preds = %bb.dm
  %i.xi = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %i.xj = load i8, ptr %i.xi, align 4
  %i.xk = and i8 %i.xj, 1
  %i.xl = icmp eq i8 %i.xk, 0
  br i1 %i.xl, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.xm = load i32, ptr %i.qw, align 8, !tbaa !90
  store i32 %i.xm, ptr %i.gr, align 8, !tbaa !90
  %i.xn = load i8, ptr %i.gs, align 4
  %i.xo = and i8 %i.xn, -2
  store i8 %i.xo, ptr %i.gs, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.dp:                                            ; preds = %bb.dn
  %i.xp = load ptr, ptr %i.gq, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.xp, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.qw)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.ef

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.dp, %bb.do
  %i.xq = load i8, ptr %i.ih, align 8, !tbaa !182, !range !189, !noundef !98
  %i.xr = trunc nuw i8 %i.xq to i1
  br i1 %i.xr, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.xs = load ptr, ptr %i.gq, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.xs, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 8 dereferenceable(16) %i.gr)
          to label %.noexc300 unwind label %bb.ef

.noexc300:                                        ; preds = %bb.dq
  %i.xt = load ptr, ptr %i.gq, align 8, !tbaa !97, !nonnull !98, !align !99 ; 3 uses
  %i.xu = load i8, ptr %i.ik, align 4
  %i.xv = and i8 %i.xu, 1
  %i.xw = icmp eq i8 %i.xv, 0
  br i1 %i.xw, label %bb.dr, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.dr:                                            ; preds = %.noexc300
  %i.xx = load i8, ptr %i.gs, align 4             ; 2 uses
  %i.xy = and i8 %i.xx, 1
  %i.xz = icmp eq i8 %i.xy, 0
  br i1 %i.xz, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.dr
  %i.ya = load i32, ptr %i.ij, align 8, !tbaa !90
  %i.yb = load i32, ptr %i.gr, align 8, !tbaa !90
  %i.yc = icmp slt i32 %i.ya, %i.yb
  br i1 %i.yc, label %bb.ds, label %bb.dt

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.dr, %.noexc300
  %i.yd = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.xt, ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull align 8 dereferenceable(16) %i.gr)
          to label %.noexc301 unwind label %bb.ef

.noexc301:                                        ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %i.ye = icmp slt i32 %i.yd, 0
  %.pre12.i = load ptr, ptr %i.gq, align 8, !tbaa !97 ; 2 uses
  br i1 %i.ye, label %bb.ds, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc301
  %.pre10.i = load i8, ptr %i.gs, align 4
  br label %bb.dt

bb.ds:                                            ; preds = %.noexc301, %.split.i
  %i.yf = phi ptr [ %i.xt, %.split.i ], [ %.pre12.i, %.noexc301 ]
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.yf, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 8 dereferenceable(16) %i.gr)
          to label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit unwind label %bb.ef

bb.dt:                                            ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
end_hunk_7
begin_hunk_8_@_ZN10polynomial7manager3imp20pseudo_division_coreILb0ELb1ELb0EEEvPKNS_10polynomialES5_jRjR7obj_refIS3_S0_ES9_PKNS_10var2degreeE:bb.a
  %i.pl = icmp eq i32 %.4.i.i, -1
  br i1 %i.pl, label %_ZNK10polynomial8monomial9degree_ofEj.exit, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i
  %.pre.i = zext i32 %.4.i.i to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i, %bb.bv
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i ], [ %i.oe, %bb.bv ]
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %.pre-phi.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !73
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit

_ZNK10polynomial8monomial9degree_ofEj.exit:       ; preds = %bb.ca, %.preheader.i.i, %.preheader.i.i.1, %.preheader.i.i.2, %.preheader.i.i.3, %.preheader.i.i.4, %.lr.ph448.5, %.preheader.i.i.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i, %_ZN10polynomial7manager3imp10checkpointEv.exit199
  %.0.i = phi i32 [ %i.po, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i ], [ 0, %_ZNK10polynomial8monomial8index_ofEj.exit.i ], [ 0, %_ZN10polynomial7manager3imp10checkpointEv.exit199 ], [ 0, %.preheader.i.i.preheader ], [ 0, %.preheader.i.i ], [ 0, %.lr.ph448.5 ], [ 0, %.preheader.i.i.4 ], [ 0, %.preheader.i.i.3 ], [ 0, %.preheader.i.i.2 ], [ 0, %.preheader.i.i.1 ], [ 0, %bb.ca ]
  %i.pp = icmp eq i32 %.0.i, %.122.i157
  br i1 %i.pp, label %bb.cb, label %bb.dd

bb.cb:                                            ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.pq = load ptr, ptr %i.ft, align 8, !tbaa !206, !nonnull !98, !align !99
  store ptr null, ptr %11, align 8, !tbaa !220
  store ptr %i.pq, ptr %i.hc, align 8, !tbaa !80
  %i.pr = load ptr, ptr %i.hd, align 8, !tbaa !150 ; 6 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 136 ; 6 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 144 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !187
  %i.pv = icmp ugt i32 %i.oa, %i.pu
  br i1 %i.pv, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i: ; preds = %bb.cb
  %i.pw = shl i32 %i.oa, 1
  %i.px = load ptr, ptr %i.ps, align 8, !tbaa !186
  invoke void @_ZN6memory10deallocateEPv(ptr noundef %i.px)
          to label %.noexc205 unwind label %bb.dc

.noexc205:                                        ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i
  %i.py = shl i32 %i.oa, 4
  %i.pz = add i32 %i.py, 20
  %i.qa = zext i32 %i.pz to i64
  %i.qb = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.qa)
          to label %.noexc206 unwind label %bb.dc ; 3 uses

.noexc206:                                        ; preds = %.noexc205
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.qb, align 4, !tbaa !69
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  store i32 0, ptr %i.qc, align 4, !tbaa !185
  store ptr %i.qb, ptr %i.ps, align 8, !tbaa !186
  store i32 %i.pw, ptr %i.pt, align 8, !tbaa !187
  br label %.lr.ph.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i: ; preds = %bb.cb
  br i1 %i.ob, label %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i, %.noexc206
  %i.qd = getelementptr inbounds nuw i8, ptr %i.nv, i64 20
  %wide.trip.count.i.i = zext i32 %i.oa to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cg, %.lr.ph.i.i
  %indvars.iv.i.i202 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i204, %bb.cg ] ; 2 uses
  %.02731.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2.i.i, %bb.cg ] ; 4 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv.i.i202 ; 3 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !72 ; 2 uses
  %.not.i.i203 = icmp eq i32 %3, %i.qf
  br i1 %.not.i.i203, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qg = load ptr, ptr %i.ps, align 8, !tbaa !186
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 20
  %i.qi = zext i32 %.02731.i.i to i64
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %i.qi ; 2 uses
  store i32 %i.qf, ptr %i.qj, align 4, !tbaa !72
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !73
  br label %.sink.split.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !73 ; 2 uses
  %i.qo = icmp ult i32 %.122.i100, %i.qn
  br i1 %i.qo, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.qp = sub nuw i32 %i.qn, %.122.i100
  %i.qq = load ptr, ptr %i.ps, align 8, !tbaa !186
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 20
  %i.qs = zext i32 %.02731.i.i to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.qs ; 2 uses
  store i32 %3, ptr %i.qt, align 4, !tbaa !72
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.cf, %bb.cd
  %.sink41.i.i = phi ptr [ %i.qt, %bb.cf ], [ %i.qj, %bb.cd ]
  %.sink.i.i = phi i32 [ %i.qp, %bb.cf ], [ %i.ql, %bb.cd ]
  %i.qu = getelementptr inbounds nuw i8, ptr %.sink41.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.qu, align 4, !tbaa !73
  %i.qv = add i32 %.02731.i.i, 1
  br label %bb.cg

bb.cg:                                            ; preds = %.sink.split.i.i, %bb.ce
  %.2.i.i = phi i32 [ %.02731.i.i, %bb.ce ], [ %i.qv, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i204 = add nuw nsw i64 %indvars.iv.i.i202, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i204, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i, label %bb.cc, !llvm.loop !49

_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i: ; preds = %bb.cg, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i
  %.027.lcssa.i.i = phi i32 [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i ], [ %.2.i.i, %bb.cg ] ; 2 uses
  %i.qw = load ptr, ptr %i.ps, align 8, !tbaa !186 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 12
  store i32 %.027.lcssa.i.i, ptr %i.qx, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 20
  %i.qz = zext i32 %.027.lcssa.i.i to i64
  %i.ra = shl nuw nsw i64 %i.qz, 3
  %i.rb = invoke noundef i32 @_Z11string_hashSt17basic_string_viewIcSt11char_traitsIcEEj(i64 %i.ra, ptr nonnull %i.qy, i32 noundef 11)
          to label %.noexc251 unwind label %bb.dc

.noexc251:                                        ; preds = %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i
  %i.rc = load ptr, ptr %i.ps, align 8, !tbaa !186 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  store i32 %i.rb, ptr %i.rd, align 4, !tbaa !185
  store ptr %i.rc, ptr %i.a, align 8, !tbaa !176
  %i.re = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.rf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.re, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc252 unwind label %bb.dc ; 2 uses

.noexc252:                                        ; preds = %.noexc251
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !176 ; 3 uses
  %i.rh = load ptr, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %.not.i242 = icmp eq ptr %i.rg, %i.rh
  br i1 %.not.i242, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.noexc252
  %i.ri = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !193
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 12
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !77
  %i.rm = shl i32 %i.rl, 3
  %i.rn = add i32 %i.rm, 20
  %i.ro = zext i32 %i.rn to i64
  %i.rp = invoke noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.rj, i64 noundef %i.ro)
          to label %.noexc253 unwind label %bb.dc ; 10 uses

.noexc253:                                        ; preds = %bb.ch
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pr, i64 88 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pr, i64 96
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !68 ; 3 uses
  %i.rt = icmp eq ptr %i.rs, null
  br i1 %i.rt, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i:             ; preds = %.noexc253
  %i.ru = getelementptr inbounds i8, ptr %i.rs, i64 -4 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !69 ; 2 uses
  %i.rw = icmp eq i32 %i.rv, 0
  br i1 %i.rw, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i:      ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i, %.noexc253
  %i.rx = load i32, ptr %i.rq, align 8, !tbaa !184 ; 2 uses
  %i.ry = add i32 %i.rx, 1
  store i32 %i.ry, ptr %i.rq, align 8, !tbaa !184
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6vectorIjLb0EjE4backEv.exit.i.i:               ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i
  %i.rz = add i32 %i.rv, -1                       ; 2 uses
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !69
  store i32 %i.rz, ptr %i.ru, align 4, !tbaa !69
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6id_gen2mkEv.exit.i:                           ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i
  %.0.i.i244 = phi i32 [ %i.rx, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i ], [ %i.sc, %_ZN6vectorIjLb0EjE4backEv.exit.i.i ]
  %i.sd = load ptr, ptr %i.a, align 8, !tbaa !176 ; 5 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 12 ; 2 uses
  %i.sf = getelementptr i8, ptr %i.sd, i64 20     ; 8 uses
  store i32 0, ptr %i.rp, align 4, !tbaa !198
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  store i32 %.0.i.i244, ptr %i.sg, align 4, !tbaa !173
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rp, i64 8 ; 2 uses
  store i32 0, ptr %i.sh, align 4, !tbaa !78
  %i.si = getelementptr inbounds nuw i8, ptr %i.rp, i64 12
  %i.sj = load <2 x i32>, ptr %i.se, align 4, !tbaa !69
  %i.sk = load i32, ptr %i.se, align 4, !tbaa !77 ; 3 uses
  store <2 x i32> %i.sj, ptr %i.si, align 4, !tbaa !69
  %.not.i.i245 = icmp eq i32 %i.sk, 0
  br i1 %.not.i.i245, label %.thread, label %.lr.ph.i.i246

.lr.ph.i.i246:                                    ; preds = %_ZN6id_gen2mkEv.exit.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rp, i64 20 ; 8 uses
  %wide.trip.count.i.i247 = zext i32 %i.sk to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.sk, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i246
  %i.sm = shl nuw nsw i64 %wide.trip.count.i.i247, 3 ; 2 uses
  %i.sn = add nuw nsw i64 %i.sm, 16               ; 2 uses
  %i.so = getelementptr i8, ptr %i.rp, i64 %i.sn
  %i.sp = getelementptr i8, ptr %i.sd, i64 %i.sn
  %12 = getelementptr i8, ptr %i.rp, i64 24
  %13 = add nuw nsw i64 %i.sm, 20                 ; 2 uses
  %14 = getelementptr i8, ptr %i.rp, i64 %13
  %i.sq = getelementptr i8, ptr %i.sd, i64 24
  %15 = getelementptr i8, ptr %i.sd, i64 %13
  %bound0 = icmp ult ptr %i.sl, %i.sp
  %bound1 = icmp ult ptr %i.sf, %i.so
  %found.conflict = and i1 %bound0, %bound1
  %bound0461 = icmp ult ptr %12, %15
  %bound1462 = icmp ult ptr %i.sq, %14
  %found.conflict463 = and i1 %bound0461, %bound1462
  %conflict.rdx = or i1 %found.conflict, %found.conflict463
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i247, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.sw, %vector.body ]
  %vec.phi464 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.sx, %vector.body ]
  %i.sr = or disjoint i64 %index, 2               ; 2 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %index
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.sr
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %index
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.sr
  %wide.vec = load <4 x i32>, ptr %i.ss, align 4, !tbaa !69 ; 2 uses
  %strided.vec465 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec466 = load <4 x i32>, ptr %i.st, align 4, !tbaa !69 ; 2 uses
  %strided.vec468 = shufflevector <4 x i32> %wide.vec466, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  store <4 x i32> %wide.vec, ptr %i.su, align 4, !tbaa !69
  store <4 x i32> %wide.vec466, ptr %i.sv, align 4, !tbaa !69
  %i.sw = add <2 x i32> %strided.vec465, %vec.phi ; 2 uses
  %i.sx = add <2 x i32> %strided.vec468, %vec.phi464 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sy = icmp eq i64 %index.next, %n.vec
  br i1 %i.sy, label %middle.block, label %vector.body, !llvm.loop !707

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.sx, %i.sw
  %i.sz = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i247
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i246, %middle.block
  %indvars.iv.i.i248.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i246 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i246 ], [ %i.sz, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i247, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i248.prol = phi i64 [ %indvars.iv.next.i.i249.prol, %scalar.ph.prol ], [ %indvars.iv.i.i248.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ta = phi i32 [ %i.tg, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.i.i248.prol ; 2 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.i.i248.prol
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %i.te = load i32, ptr %i.td, align 4, !tbaa !73
  %i.tf = load <2 x i32>, ptr %i.tb, align 4, !tbaa !69
  store <2 x i32> %i.tf, ptr %i.tc, align 4, !tbaa !69
  %i.tg = add i32 %i.te, %i.ta                    ; 3 uses
  %indvars.iv.next.i.i249.prol = add nuw nsw i64 %indvars.iv.i.i248.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !708

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa490.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.tg, %scalar.ph.prol ]
  %indvars.iv.i.i248.unr = phi i64 [ %indvars.iv.i.i248.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i249.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.tg, %scalar.ph.prol ]
  %i.th = sub nsw i64 %indvars.iv.i.i248.ph, %wide.trip.count.i.i247
  %i.ti = icmp ugt i64 %i.th, -4
  br i1 %i.ti, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa432 = phi i32 [ %i.sz, %middle.block ], [ %.lcssa490.unr, %scalar.ph.prol.loopexit ], [ %i.uh, %scalar.ph ]
  store i32 %.lcssa432, ptr %i.sh, align 4, !tbaa !78
  br label %.thread

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i248 = phi i64 [ %indvars.iv.next.i.i249.3, %scalar.ph ], [ %indvars.iv.i.i248.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.tj = phi i32 [ %i.uh, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.i.i248 ; 2 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.i.i248
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !73
  %i.to = load <2 x i32>, ptr %i.tk, align 4, !tbaa !69
  store <2 x i32> %i.to, ptr %i.tl, align 4, !tbaa !69
  %i.tp = add i32 %i.tn, %i.tj
  %indvars.iv.next.i.i249 = add nuw nsw i64 %indvars.iv.i.i248, 1 ; 2 uses
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.next.i.i249 ; 2 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.next.i.i249
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !73
  %i.tu = load <2 x i32>, ptr %i.tq, align 4, !tbaa !69
  store <2 x i32> %i.tu, ptr %i.tr, align 4, !tbaa !69
  %i.tv = add i32 %i.tt, %i.tp
  %indvars.iv.next.i.i249.1 = add nuw nsw i64 %indvars.iv.i.i248, 2 ; 2 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.next.i.i249.1 ; 2 uses
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.next.i.i249.1
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !73
  %i.ua = load <2 x i32>, ptr %i.tw, align 4, !tbaa !69
  store <2 x i32> %i.ua, ptr %i.tx, align 4, !tbaa !69
  %i.ub = add i32 %i.tz, %i.tv
  %indvars.iv.next.i.i249.2 = add nuw nsw i64 %indvars.iv.i.i248, 3 ; 2 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.next.i.i249.2 ; 2 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv.next.i.i249.2
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !73
  %i.ug = load <2 x i32>, ptr %i.uc, align 4, !tbaa !69
  store <2 x i32> %i.ug, ptr %i.ud, align 4, !tbaa !69
  %i.uh = add i32 %i.uf, %i.ub                    ; 2 uses
  %indvars.iv.next.i.i249.3 = add nuw nsw i64 %indvars.iv.i.i248, 4 ; 2 uses
  %exitcond.not.i.i250.3 = icmp eq i64 %indvars.iv.next.i.i249.3, %wide.trip.count.i.i247
  br i1 %exitcond.not.i.i250.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !709

.thread:                                          ; preds = %_ZN6id_gen2mkEv.exit.i, %._crit_edge.i.i
  store ptr %i.rp, ptr %i.rf, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

bb.ci:                                            ; preds = %.noexc252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not.i208 = icmp eq ptr %i.rg, null
  br i1 %.not.i208, label %bb.cj, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i: ; preds = %.thread, %bb.ci
  %.0.i243278 = phi ptr [ %i.rp, %.thread ], [ %i.rg, %bb.ci ] ; 3 uses
  %i.ui = load i32, ptr %.0.i243278, align 4, !tbaa !198
  %i.uj = add i32 %i.ui, 1
  store i32 %i.uj, ptr %.0.i243278, align 4, !tbaa !198
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i
  %.0.i243279 = phi ptr [ %.0.i243278, %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i ], [ null, %bb.ci ] ; 2 uses
  store ptr %.0.i243279, ptr %11, align 8, !tbaa !220
  invoke void @_ZN10polynomial7manager3imp10som_buffer3addERK3mpzPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(32) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %i.ny, ptr noundef %.0.i243279)
          to label %bb.ck unwind label %bb.dc

bb.ck:                                            ; preds = %bb.cj
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.ul = load i8, ptr %i.uk, align 4
  %i.um = and i8 %i.ul, 1
  %i.un = icmp eq i8 %i.um, 0
  br i1 %i.un, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.uo = load i32, ptr %i.ny, align 8, !tbaa !90
  store i32 %i.uo, ptr %i.fo, align 8, !tbaa !90
  %i.up = load i8, ptr %i.fp, align 4
  %i.uq = and i8 %i.up, -2
  store i8 %i.uq, ptr %i.fp, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.ur = load ptr, ptr %i.fn, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ur, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.ny)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.dc

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.cm, %bb.cl
  %i.us = load i8, ptr %i.he, align 8, !tbaa !182, !range !189, !noundef !98
  %i.ut = trunc nuw i8 %i.us to i1
  br i1 %i.ut, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.uu = load ptr, ptr %i.fn, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.uu, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %i.fo)
          to label %.noexc254 unwind label %bb.dc

.noexc254:                                        ; preds = %bb.cn
  %i.uv = load ptr, ptr %i.fn, align 8, !tbaa !97, !nonnull !98, !align !99 ; 3 uses
  %i.uw = load i8, ptr %i.hh, align 4
  %i.ux = and i8 %i.uw, 1
  %i.uy = icmp eq i8 %i.ux, 0
  br i1 %i.uy, label %bb.co, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.co:                                            ; preds = %.noexc254
  %i.uz = load i8, ptr %i.fp, align 4             ; 2 uses
  %i.va = and i8 %i.uz, 1
  %i.vb = icmp eq i8 %i.va, 0
  br i1 %i.vb, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.co
  %i.vc = load i32, ptr %i.hg, align 8, !tbaa !90
  %i.vd = load i32, ptr %i.fo, align 8, !tbaa !90
  %i.ve = icmp slt i32 %i.vc, %i.vd
  br i1 %i.ve, label %bb.cp, label %bb.cq

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.co, %.noexc254
  %i.vf = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.uv, ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 8 dereferenceable(16) %i.fo)
          to label %.noexc255 unwind label %bb.dc

.noexc255:                                        ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %i.vg = icmp slt i32 %i.vf, 0
  %.pre12.i = load ptr, ptr %i.fn, align 8, !tbaa !97 ; 2 uses
  br i1 %i.vg, label %bb.cp, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc255
  %.pre10.i = load i8, ptr %i.fp, align 4
  br label %bb.cq

bb.cp:                                            ; preds = %.noexc255, %.split.i
  %i.vh = phi ptr [ %i.uv, %.split.i ], [ %.pre12.i, %.noexc255 ]
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.vh, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %i.fo)
          to label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit unwind label %bb.dc

bb.cq:                                            ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
end_hunk_8
begin_hunk_9_@_ZN10polynomial7manager3imp20pseudo_division_coreILb1ELb1ELb1EEEvPKNS_10polynomialES5_jRjR7obj_refIS3_S0_ES9_PKNS_10var2degreeE:bb.a
  %i.ud = icmp eq i32 %.4.i.i, -1
  br i1 %i.ud, label %_ZNK10polynomial8monomial9degree_ofEj.exit, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i
  %.pre.i = zext i32 %.4.i.i to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i, %bb.do
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i ], [ %i.sw, %bb.do ]
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %.pre-phi.i
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !73
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit

_ZNK10polynomial8monomial9degree_ofEj.exit:       ; preds = %bb.dt, %.preheader.i.i, %.preheader.i.i.1, %.preheader.i.i.2, %.preheader.i.i.3, %.preheader.i.i.4, %.lr.ph595.5, %.preheader.i.i.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i, %_ZN10polynomial7manager3imp10checkpointEv.exit274
  %.0.i = phi i32 [ %i.ug, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i ], [ 0, %_ZNK10polynomial8monomial8index_ofEj.exit.i ], [ 0, %_ZN10polynomial7manager3imp10checkpointEv.exit274 ], [ 0, %.preheader.i.i.preheader ], [ 0, %.preheader.i.i ], [ 0, %.lr.ph595.5 ], [ 0, %.preheader.i.i.4 ], [ 0, %.preheader.i.i.3 ], [ 0, %.preheader.i.i.2 ], [ 0, %.preheader.i.i.1 ], [ 0, %bb.dt ]
  %i.uh = icmp eq i32 %.0.i, %.122.i201
  br i1 %i.uh, label %bb.du, label %bb.ew

bb.du:                                            ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.ui = load ptr, ptr %i.hg, align 8, !tbaa !206, !nonnull !98, !align !99
  store ptr null, ptr %16, align 8, !tbaa !220
  store ptr %i.ui, ptr %i.ip, align 8, !tbaa !80
  %i.uj = load ptr, ptr %i.iq, align 8, !tbaa !150 ; 6 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 136 ; 6 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 144 ; 2 uses
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !187
  %i.un = icmp ugt i32 %i.ss, %i.um
  br i1 %i.un, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i, label %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i: ; preds = %bb.du
  %i.uo = shl i32 %i.ss, 1
  %i.up = load ptr, ptr %i.uk, align 8, !tbaa !186
  invoke void @_ZN6memory10deallocateEPv(ptr noundef %i.up)
          to label %.noexc280 unwind label %bb.ev

.noexc280:                                        ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i
  %i.uq = shl i32 %i.ss, 4
  %i.ur = add i32 %i.uq, 20
  %i.us = zext i32 %i.ur to i64
  %i.ut = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.us)
          to label %.noexc281 unwind label %bb.ev ; 3 uses

.noexc281:                                        ; preds = %.noexc280
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %i.ut, align 4, !tbaa !69
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  store i32 0, ptr %i.uu, align 4, !tbaa !185
  store ptr %i.ut, ptr %i.uk, align 8, !tbaa !186
  store i32 %i.uo, ptr %i.ul, align 8, !tbaa !187
  br label %.lr.ph.i.i

_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i: ; preds = %bb.du
  br i1 %i.st, label %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i, %.noexc281
  %i.uv = getelementptr inbounds nuw i8, ptr %i.sn, i64 20
  %wide.trip.count.i.i = zext i32 %i.ss to i64
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dz, %.lr.ph.i.i
  %indvars.iv.i.i277 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i279, %bb.dz ] ; 2 uses
  %.02731.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.2.i.i, %bb.dz ] ; 4 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %indvars.iv.i.i277 ; 3 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !72 ; 2 uses
  %.not.i.i278 = icmp eq i32 %3, %i.ux
  br i1 %.not.i.i278, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.uy = load ptr, ptr %i.uk, align 8, !tbaa !186
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 20
  %i.va = zext i32 %.02731.i.i to i64
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.va ; 2 uses
  store i32 %i.ux, ptr %i.vb, align 4, !tbaa !72
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !73
  br label %.sink.split.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !73 ; 2 uses
  %i.vg = icmp ult i32 %.122.i134, %i.vf
  br i1 %i.vg, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.vh = sub nuw i32 %i.vf, %.122.i134
  %i.vi = load ptr, ptr %i.uk, align 8, !tbaa !186
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 20
  %i.vk = zext i32 %.02731.i.i to i64
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.vk ; 2 uses
  store i32 %3, ptr %i.vl, align 4, !tbaa !72
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.dy, %bb.dw
  %.sink41.i.i = phi ptr [ %i.vl, %bb.dy ], [ %i.vb, %bb.dw ]
  %.sink.i.i = phi i32 [ %i.vh, %bb.dy ], [ %i.vd, %bb.dw ]
  %i.vm = getelementptr inbounds nuw i8, ptr %.sink41.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.vm, align 4, !tbaa !73
  %i.vn = add i32 %.02731.i.i, 1
  br label %bb.dz

bb.dz:                                            ; preds = %.sink.split.i.i, %bb.dx
  %.2.i.i = phi i32 [ %.02731.i.i, %bb.dx ], [ %i.vn, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i279 = add nuw nsw i64 %indvars.iv.i.i277, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i279, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i, label %bb.dv, !llvm.loop !49

_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i: ; preds = %bb.dz, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i
  %.027.lcssa.i.i = phi i32 [ 0, %_ZN10polynomial12tmp_monomial7reserveEj.exit.i.i ], [ %.2.i.i, %bb.dz ] ; 2 uses
  %i.vo = load ptr, ptr %i.uk, align 8, !tbaa !186 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 12
  store i32 %.027.lcssa.i.i, ptr %i.vp, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 20
  %i.vr = zext i32 %.027.lcssa.i.i to i64
  %i.vs = shl nuw nsw i64 %i.vr, 3
  %i.vt = invoke noundef i32 @_Z11string_hashSt17basic_string_viewIcSt11char_traitsIcEEj(i64 %i.vs, ptr nonnull %i.vq, i32 noundef 11)
          to label %.noexc356 unwind label %bb.ev

.noexc356:                                        ; preds = %_ZN10polynomial16monomial_manager7div_x_kEPKNS_8monomialEjj.exit.i
  %i.vu = load ptr, ptr %i.uk, align 8, !tbaa !186 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  store i32 %i.vt, ptr %i.vv, align 4, !tbaa !185
  store ptr %i.vu, ptr %i.a, align 8, !tbaa !176
  %i.vw = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  %i.vx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10chashtableIPN10polynomial8monomialENS1_9hash_procENS1_7eq_procEE19insert_if_not_thereERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.vw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc357 unwind label %bb.ev ; 2 uses

.noexc357:                                        ; preds = %.noexc356
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !176 ; 3 uses
  %i.vz = load ptr, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %.not.i347 = icmp eq ptr %i.vy, %i.vz
  br i1 %.not.i347, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %.noexc357
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !193
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 12
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !77
  %i.we = shl i32 %i.wd, 3
  %i.wf = add i32 %i.we, 20
  %i.wg = zext i32 %i.wf to i64
  %i.wh = invoke noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.wb, i64 noundef %i.wg)
          to label %.noexc358 unwind label %bb.ev ; 10 uses

.noexc358:                                        ; preds = %bb.ea
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uj, i64 88 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.uj, i64 96
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !68 ; 3 uses
  %i.wl = icmp eq ptr %i.wk, null
  br i1 %i.wl, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i:             ; preds = %.noexc358
  %i.wm = getelementptr inbounds i8, ptr %i.wk, i64 -4 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !69 ; 2 uses
  %i.wo = icmp eq i32 %i.wn, 0
  br i1 %i.wo, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i:      ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i, %.noexc358
  %i.wp = load i32, ptr %i.wi, align 8, !tbaa !184 ; 2 uses
  %i.wq = add i32 %i.wp, 1
  store i32 %i.wq, ptr %i.wi, align 8, !tbaa !184
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6vectorIjLb0EjE4backEv.exit.i.i:               ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i
  %i.wr = add i32 %i.wn, -1                       ; 2 uses
  %i.ws = zext i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.ws
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !69
  store i32 %i.wr, ptr %i.wm, align 4, !tbaa !69
  br label %_ZN6id_gen2mkEv.exit.i

_ZN6id_gen2mkEv.exit.i:                           ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i
  %.0.i.i349 = phi i32 [ %i.wp, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i ], [ %i.wu, %_ZN6vectorIjLb0EjE4backEv.exit.i.i ]
  %i.wv = load ptr, ptr %i.a, align 8, !tbaa !176 ; 5 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 12 ; 2 uses
  %i.wx = getelementptr i8, ptr %i.wv, i64 20     ; 8 uses
  store i32 0, ptr %i.wh, align 4, !tbaa !198
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wh, i64 4
  store i32 %.0.i.i349, ptr %i.wy, align 4, !tbaa !173
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wh, i64 8 ; 2 uses
  store i32 0, ptr %i.wz, align 4, !tbaa !78
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wh, i64 12
  %i.xb = load <2 x i32>, ptr %i.ww, align 4, !tbaa !69
  %i.xc = load i32, ptr %i.ww, align 4, !tbaa !77 ; 3 uses
  store <2 x i32> %i.xb, ptr %i.xa, align 4, !tbaa !69
  %.not.i.i350 = icmp eq i32 %i.xc, 0
  br i1 %.not.i.i350, label %.thread, label %.lr.ph.i.i351

.lr.ph.i.i351:                                    ; preds = %_ZN6id_gen2mkEv.exit.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wh, i64 20 ; 8 uses
  %wide.trip.count.i.i352 = zext i32 %i.xc to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.xc, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i351
  %i.xe = shl nuw nsw i64 %wide.trip.count.i.i352, 3 ; 2 uses
  %i.xf = add nuw nsw i64 %i.xe, 16               ; 2 uses
  %i.xg = getelementptr i8, ptr %i.wh, i64 %i.xf
  %i.xh = getelementptr i8, ptr %i.wv, i64 %i.xf
  %17 = getelementptr i8, ptr %i.wh, i64 24
  %18 = add nuw nsw i64 %i.xe, 20                 ; 2 uses
  %19 = getelementptr i8, ptr %i.wh, i64 %18
  %i.xi = getelementptr i8, ptr %i.wv, i64 24
  %20 = getelementptr i8, ptr %i.wv, i64 %18
  %bound0 = icmp ult ptr %i.xd, %i.xh
  %bound1 = icmp ult ptr %i.wx, %i.xg
  %found.conflict = and i1 %bound0, %bound1
  %bound0608 = icmp ult ptr %17, %20
  %bound1609 = icmp ult ptr %i.xi, %19
  %found.conflict610 = and i1 %bound0608, %bound1609
  %conflict.rdx = or i1 %found.conflict, %found.conflict610
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i352, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.xo, %vector.body ]
  %vec.phi611 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.xp, %vector.body ]
  %i.xj = or disjoint i64 %index, 2               ; 2 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %index
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %i.xj
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %index
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.xj
  %wide.vec = load <4 x i32>, ptr %i.xk, align 4, !tbaa !69 ; 2 uses
  %strided.vec612 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec613 = load <4 x i32>, ptr %i.xl, align 4, !tbaa !69 ; 2 uses
  %strided.vec615 = shufflevector <4 x i32> %wide.vec613, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  store <4 x i32> %wide.vec, ptr %i.xm, align 4, !tbaa !69
  store <4 x i32> %wide.vec613, ptr %i.xn, align 4, !tbaa !69
  %i.xo = add <2 x i32> %strided.vec612, %vec.phi ; 2 uses
  %i.xp = add <2 x i32> %strided.vec615, %vec.phi611 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.xq = icmp eq i64 %index.next, %n.vec
  br i1 %i.xq, label %middle.block, label %vector.body, !llvm.loop !792

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.xp, %i.xo
  %i.xr = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i352
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i351, %middle.block
  %indvars.iv.i.i353.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i351 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i351 ], [ %i.xr, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i352, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i353.prol = phi i64 [ %indvars.iv.next.i.i354.prol, %scalar.ph.prol ], [ %indvars.iv.i.i353.ph, %scalar.ph.preheader ] ; 3 uses
  %i.xs = phi i32 [ %i.xy, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %indvars.iv.i.i353.prol ; 2 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.i.i353.prol
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !73
  %i.xx = load <2 x i32>, ptr %i.xt, align 4, !tbaa !69
  store <2 x i32> %i.xx, ptr %i.xu, align 4, !tbaa !69
  %i.xy = add i32 %i.xw, %i.xs                    ; 3 uses
  %indvars.iv.next.i.i354.prol = add nuw nsw i64 %indvars.iv.i.i353.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !793

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa642.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.xy, %scalar.ph.prol ]
  %indvars.iv.i.i353.unr = phi i64 [ %indvars.iv.i.i353.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i354.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.xy, %scalar.ph.prol ]
  %i.xz = sub nsw i64 %indvars.iv.i.i353.ph, %wide.trip.count.i.i352
  %i.ya = icmp ugt i64 %i.xz, -4
  br i1 %i.ya, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa579 = phi i32 [ %i.xr, %middle.block ], [ %.lcssa642.unr, %scalar.ph.prol.loopexit ], [ %i.yz, %scalar.ph ]
  store i32 %.lcssa579, ptr %i.wz, align 4, !tbaa !78
  br label %.thread

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i353 = phi i64 [ %indvars.iv.next.i.i354.3, %scalar.ph ], [ %indvars.iv.i.i353.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.yb = phi i32 [ %i.yz, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %indvars.iv.i.i353 ; 2 uses
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.i.i353
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !73
  %i.yg = load <2 x i32>, ptr %i.yc, align 4, !tbaa !69
  store <2 x i32> %i.yg, ptr %i.yd, align 4, !tbaa !69
  %i.yh = add i32 %i.yf, %i.yb
  %indvars.iv.next.i.i354 = add nuw nsw i64 %indvars.iv.i.i353, 1 ; 2 uses
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %indvars.iv.next.i.i354 ; 2 uses
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next.i.i354
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !73
  %i.ym = load <2 x i32>, ptr %i.yi, align 4, !tbaa !69
  store <2 x i32> %i.ym, ptr %i.yj, align 4, !tbaa !69
  %i.yn = add i32 %i.yl, %i.yh
  %indvars.iv.next.i.i354.1 = add nuw nsw i64 %indvars.iv.i.i353, 2 ; 2 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %indvars.iv.next.i.i354.1 ; 2 uses
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next.i.i354.1
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !73
  %i.ys = load <2 x i32>, ptr %i.yo, align 4, !tbaa !69
  store <2 x i32> %i.ys, ptr %i.yp, align 4, !tbaa !69
  %i.yt = add i32 %i.yr, %i.yn
  %indvars.iv.next.i.i354.2 = add nuw nsw i64 %indvars.iv.i.i353, 3 ; 2 uses
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %indvars.iv.next.i.i354.2 ; 2 uses
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next.i.i354.2
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !73
  %i.yy = load <2 x i32>, ptr %i.yu, align 4, !tbaa !69
  store <2 x i32> %i.yy, ptr %i.yv, align 4, !tbaa !69
  %i.yz = add i32 %i.yx, %i.yt                    ; 2 uses
  %indvars.iv.next.i.i354.3 = add nuw nsw i64 %indvars.iv.i.i353, 4 ; 2 uses
  %exitcond.not.i.i355.3 = icmp eq i64 %indvars.iv.next.i.i354.3, %wide.trip.count.i.i352
  br i1 %exitcond.not.i.i355.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !794

.thread:                                          ; preds = %_ZN6id_gen2mkEv.exit.i, %._crit_edge.i.i
  store ptr %i.wh, ptr %i.vx, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

bb.eb:                                            ; preds = %.noexc357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not.i283 = icmp eq ptr %i.vy, null
  br i1 %.not.i283, label %bb.ec, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i: ; preds = %.thread, %bb.eb
  %.0.i348383 = phi ptr [ %i.wh, %.thread ], [ %i.vy, %bb.eb ] ; 3 uses
  %i.za = load i32, ptr %.0.i348383, align 4, !tbaa !198
  %i.zb = add i32 %i.za, 1
  store i32 %i.zb, ptr %.0.i348383, align 4, !tbaa !198
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i
  %.0.i348384 = phi ptr [ %.0.i348383, %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i ], [ null, %bb.eb ] ; 2 uses
  store ptr %.0.i348384, ptr %16, align 8, !tbaa !220
  invoke void @_ZN10polynomial7manager3imp10som_buffer3addERK3mpzPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(32) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %i.sq, ptr noundef %.0.i348384)
          to label %bb.ed unwind label %bb.ev

bb.ed:                                            ; preds = %bb.ec
  %i.zc = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.zd = load i8, ptr %i.zc, align 4
  %i.ze = and i8 %i.zd, 1
  %i.zf = icmp eq i8 %i.ze, 0
  br i1 %i.zf, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.zg = load i32, ptr %i.sq, align 8, !tbaa !90
  store i32 %i.zg, ptr %i.hb, align 8, !tbaa !90
  %i.zh = load i8, ptr %i.hc, align 4
  %i.zi = and i8 %i.zh, -2
  store i8 %i.zi, ptr %i.hc, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.ef:                                            ; preds = %bb.ed
  %i.zj = load ptr, ptr %i.ha, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.zj, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.sq)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.ev

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.ef, %bb.ee
  %i.zk = load i8, ptr %i.ir, align 8, !tbaa !182, !range !189, !noundef !98
  %i.zl = trunc nuw i8 %i.zk to i1
  br i1 %i.zl, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.eg

bb.eg:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.zm = load ptr, ptr %i.ha, align 8, !tbaa !97, !nonnull !98, !align !99
  invoke void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.zm, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(16) %i.hb)
          to label %.noexc359 unwind label %bb.ev

.noexc359:                                        ; preds = %bb.eg
  %i.zn = load ptr, ptr %i.ha, align 8, !tbaa !97, !nonnull !98, !align !99 ; 3 uses
  %i.zo = load i8, ptr %i.iu, align 4
  %i.zp = and i8 %i.zo, 1
  %i.zq = icmp eq i8 %i.zp, 0
  br i1 %i.zq, label %bb.eh, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.eh:                                            ; preds = %.noexc359
  %i.zr = load i8, ptr %i.hc, align 4             ; 2 uses
  %i.zs = and i8 %i.zr, 1
  %i.zt = icmp eq i8 %i.zs, 0
  br i1 %i.zt, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.eh
  %i.zu = load i32, ptr %i.it, align 8, !tbaa !90
  %i.zv = load i32, ptr %i.hb, align 8, !tbaa !90
  %i.zw = icmp slt i32 %i.zu, %i.zv
  br i1 %i.zw, label %bb.ei, label %bb.ej

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.eh, %.noexc359
  %i.zx = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.zn, ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef nonnull align 8 dereferenceable(16) %i.hb)
          to label %.noexc360 unwind label %bb.ev

.noexc360:                                        ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %i.zy = icmp slt i32 %i.zx, 0
  %.pre12.i = load ptr, ptr %i.ha, align 8, !tbaa !97 ; 2 uses
  br i1 %i.zy, label %bb.ei, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc360
  %.pre10.i = load i8, ptr %i.hc, align 4
  br label %bb.ej

bb.ei:                                            ; preds = %.noexc360, %.split.i
  %i.zz = phi ptr [ %i.zn, %.split.i ], [ %.pre12.i, %.noexc360 ]
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.zz, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(16) %i.hb)
          to label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit unwind label %bb.ev

bb.ej:                                            ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
end_hunk_9
