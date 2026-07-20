inline.NumInlined: 171859
inline.NumDeleted: 43813
loop-unroll.NumCompletelyUnrolled: 1306
loop-unroll.NumRuntimeUnrolled: 817
loop-unroll.NumUnrolled: 2123
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE11reserveImplEm:bb.a
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = shl nuw nsw i64 1, %i.af
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i: ; preds = %bb.g, %bb.j
  %.pn21.i.i = phi i64 [ %i.ai, %bb.j ], [ 1, %bb.g ] ; 2 uses
  %.0.pn.i.i = phi i64 [ 12, %bb.j ], [ %.sroa.speculated, %bb.g ] ; 2 uses
  %i.aj = mul i64 %.0.pn.i.i, %.pn21.i.i
  %.not.i = icmp eq i64 %i.aa, %i.aj
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.u, i64 noundef %i.z, i64 noundef %.pn21.i.i, i64 noundef %.0.pn.i.i)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit

bb.l:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1615
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = and i8 %i.am, 15
  %i.ao = zext nneg i8 %i.an to i64               ; 2 uses
  %i.ap = shl i64 %i.ao, %i.t                     ; 4 uses
  %.not10 = icmp ugt i64 %.sroa.speculated, %i.ap
  br i1 %.not10, label %bb.m, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = shl nuw i64 1, %i.t
  %i.ar = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.ar, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.as = add i64 %i.ap, 7
  %i.at = lshr i64 %i.as, 3
  %i.au = add i64 %i.at, %i.ap
  %i.av = icmp ugt i64 %.sroa.speculated, %i.au
  br i1 %i.av, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.aw, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.inv.i.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i.i = select i1 %.inv.i.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11

bb.q:                                             ; preds = %bb.m
  %i.ax = add i64 %.sroa.speculated, -1
  %i.ay = udiv i64 %i.ax, 12
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = sub nuw nsw i64 64, %i.az               ; 2 uses
  %i.bb = shl i64 12, %i.ba
  %i.bc = icmp ugt i64 %i.bb, 72057594037927935
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bd = shl nuw nsw i64 1, %i.ba
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11: ; preds = %bb.s, %bb.p, %bb.o, %bb.n
  %.pn21.i.i12 = phi i64 [ %i.bd, %bb.s ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %.0.pn.i.i13 = phi i64 [ 12, %bb.s ], [ %spec.select.i.i, %bb.p ], [ 2, %bb.o ], [ %.sroa.speculated, %bb.n ] ; 2 uses
  %i.be = mul i64 %.0.pn.i.i13, %.pn21.i.i12
  %.not.i14 = icmp eq i64 %i.ap, %i.be
  br i1 %.not.i14, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.aq, i64 noundef %i.ao, i64 noundef %.pn21.i.i12, i64 noundef %.0.pn.i.i13)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5resetEv.exit: ; preds = %bb.t, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, %bb.k, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit.i, %bb.e, %bb.b, %bb.l
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #28 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !78
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #28 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !1615   ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !2312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2133

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2313

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !2128
  store ptr %i.v, ptr %0, align 8, !tbaa !1615
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !2316
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !2321
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !2323
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bl, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042130
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0131
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2135
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !2135
  %i.bk = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bk, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bl = add i64 %.0131, 1
  %i.bm = icmp ult i64 %.1, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !2325

bb.i:                                             ; preds = %bb.h
  %i.bn = add i64 %.1, -1                         ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bn
  %i.bp = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %i.bn, 255                      ; 2 uses
  %i.br = icmp samesign ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = lshr i64 %i.bq, 1
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = or i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %4, 0
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.by

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bx, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cg, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !2326

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bz, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -128 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.cb = icmp slt <16 x i8> %i.ca, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = and i16 %i.cc, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cd, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cd to i32
  %i.ce = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds i8, ptr %.pn59128, i64 -112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cg, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cg = add i64 %.155125, -1                    ; 2 uses
  %i.ch = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.ch, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cj = add i32 %.sroa.8.0124, %i.ci
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  store i64 %i.pf, ptr %i.r, align 8, !tbaa !15472
  store i32 0, ptr %i.t, align 8, !tbaa !15465
  br label %_ZN3fmt3v116detail6bigintlSEi.exit168

_ZN3fmt3v116detail6bigintlSEi.exit168:            ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i228, %.lr.ph.i222, %bb.y, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i163, %._crit_edge.i161, %bb.k, %_ZN3fmt3v116detail6bigintaSIyEEvT_.exit, %bb.ao
  %.off0 = phi i32 [ %extract.t814, %_ZN3fmt3v116detail6bigintaSIyEEvT_.exit ], [ %extract.t816, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i163 ], [ %extract.t814, %bb.ao ], [ %extract.t818, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i228 ], [ %extract.t816, %bb.k ], [ %extract.t816, %._crit_edge.i161 ], [ %extract.t818, %bb.y ], [ %extract.t818, %.lr.ph.i222 ]
  %.289 = phi ptr [ %8, %_ZN3fmt3v116detail6bigintaSIyEEvT_.exit ], [ %.087, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i163 ], [ null, %bb.ao ], [ %.188, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i228 ], [ %.087, %bb.k ], [ %.087, %._crit_edge.i161 ], [ %.188, %bb.y ], [ %.188, %.lr.ph.i222 ] ; 16 uses
  %i.pg = and i32 %.off0, 1                       ; 2 uses
  %i.ph = xor i32 %i.pg, 1                        ; 2 uses
  %.not97 = icmp eq ptr %.289, null               ; 7 uses
  %spec.store.select = select i1 %.not97, ptr %7, ptr %.289 ; 2 uses
  %i.pi = icmp slt i32 %2, 0                      ; 2 uses
  %i.pj = and i32 %1, 2
  %.not98 = icmp eq i32 %i.pj, 0
  br i1 %.not98, label %bb.br, label %bb.ar

bb.ar:                                            ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit168
  %i.pk = load i64, ptr %i.c, align 8, !tbaa !15472 ; 8 uses
  %i.pl = trunc i64 %i.pk to i32
  %i.pm = load i32, ptr %i.e, align 8, !tbaa !15465 ; 3 uses
  %i.pn = add nsw i32 %i.pm, %i.pl                ; 2 uses
  %.289.sroa.gep = getelementptr inbounds nuw i8, ptr %.289, i64 8 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not97, ptr %i.m, ptr %.289.sroa.gep
  %i.po = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !15472
  %i.pp = trunc i64 %i.po to i32
  %.289.sroa.gep501 = getelementptr inbounds nuw i8, ptr %.289, i64 160
  %spec.store.select.sroa.sel502 = select i1 %.not97, ptr %i.o, ptr %.289.sroa.gep501
  %i.pq = load i32, ptr %spec.store.select.sroa.sel502, align 8, !tbaa !15465 ; 3 uses
  %i.pr = add nsw i32 %i.pq, %i.pp                ; 2 uses
  %i.ps = call noundef i32 @llvm.smax.i32(i32 %i.pn, i32 %i.pr) ; 2 uses
  %i.pt = load i64, ptr %i.h, align 8, !tbaa !15472 ; 2 uses
  %i.pu = trunc i64 %i.pt to i32
  %i.pv = load i32, ptr %i.j, align 8, !tbaa !15465 ; 3 uses
  %i.pw = add nsw i32 %i.pv, %i.pu                ; 4 uses
  %i.px = add nsw i32 %i.ps, 1
  %i.py = icmp slt i32 %i.px, %i.pw
  br i1 %i.py, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.pz = icmp sgt i32 %i.ps, %i.pw
  br i1 %i.pz, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.qa = call noundef i32 @llvm.smin.i32(i32 %i.pm, i32 %i.pq)
  %i.qb = call noundef i32 @llvm.smin.i32(i32 %i.qa, i32 %i.pv) ; 2 uses
  %.not.not.not53.i = icmp sgt i32 %i.pw, %i.qb
  br i1 %.not.not.not53.i, label %.lr.ph.i280, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit

.lr.ph.i280:                                      ; preds = %bb.at
  %i.qc = load ptr, ptr %5, align 8
  %i.qd = load ptr, ptr %spec.store.select, align 8
  %i.qe = load ptr, ptr %6, align 8
  %i.qf = sext i32 %i.pv to i64                   ; 3 uses
  %sext.i = shl i64 %i.pt, 32
  %i.qg = ashr exact i64 %sext.i, 32
  %i.qh = add nsw i64 %i.qg, %i.qf
  %i.qi = sext i32 %i.pw to i64
  %i.qj = sext i32 %i.pr to i64
  %i.qk = sext i32 %i.pq to i64                   ; 2 uses
  %i.ql = sext i32 %i.pn to i64
  %i.qm = sext i32 %i.pm to i64                   ; 2 uses
  %i.qn = sext i32 %i.qb to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.az, %.lr.ph.i280
  %indvars.iv.i = phi i64 [ %i.qh, %.lr.ph.i280 ], [ %indvars.iv.next.i, %bb.az ] ; 7 uses
  %.03554.i = phi i64 [ 0, %.lr.ph.i280 ], [ %i.rl, %bb.az ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 5 uses
  %.not.i.i281 = icmp sgt i64 %indvars.iv.i, %i.qm
  %i.qo = icmp sle i64 %indvars.iv.i, %i.ql
  %or.cond.i = and i1 %.not.i.i281, %i.qo
  br i1 %or.cond.i, label %bb.av, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i

bb.av:                                            ; preds = %bb.au
  %i.qp = sub nsw i64 %indvars.iv.next.i, %i.qm
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.qp
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !3
  %i.qs = zext i32 %i.qr to i64
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i:    ; preds = %bb.av, %bb.au
  %i.qt = phi i64 [ %i.qs, %bb.av ], [ 0, %bb.au ]
  %.not.i43.i = icmp sgt i64 %indvars.iv.i, %i.qk
  %i.qu = icmp sle i64 %indvars.iv.i, %i.qj
  %or.cond50.i = and i1 %.not.i43.i, %i.qu
  br i1 %or.cond50.i, label %bb.aw, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i

bb.aw:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i
  %i.qv = sub nsw i64 %indvars.iv.next.i, %i.qk
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !3
  %i.qy = zext i32 %i.qx to i64
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i:  ; preds = %bb.aw, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i
  %i.qz = phi i64 [ %i.qy, %bb.aw ], [ 0, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit.i ]
  %i.ra = add nuw nsw i64 %i.qz, %i.qt            ; 3 uses
  %.not.i45.i = icmp sgt i64 %indvars.iv.i, %i.qf
  %i.rb = icmp sle i64 %indvars.iv.i, %i.qi
  %or.cond51.i = and i1 %.not.i45.i, %i.rb
  br i1 %or.cond51.i, label %bb.ax, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i

bb.ax:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i
  %i.rc = sub nsw i64 %indvars.iv.next.i, %i.qf
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !3
  %i.rf = zext i32 %i.re to i64
  %i.rg = or disjoint i64 %.03554.i, %i.rf
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i:  ; preds = %bb.ax, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i
  %i.rh = phi i64 [ %i.rg, %bb.ax ], [ %.03554.i, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i ] ; 3 uses
  %i.ri = icmp ugt i64 %i.ra, %i.rh
  br i1 %i.ri, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i
  %i.rj = sub nuw nsw i64 %i.rh, %i.ra            ; 2 uses
  %i.rk = icmp ugt i64 %i.rj, 1
  br i1 %i.rk, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rl = shl nuw nsw i64 %i.rj, 32
  %.not.not.not.i = icmp sgt i64 %indvars.iv.next.i, %i.qn
  br i1 %.not.not.not.i, label %bb.au, label %.thread.loopexit.i, !llvm.loop !15498

.thread.loopexit.i:                               ; preds = %bb.az
  %i.rm = icmp ne i64 %i.rh, %i.ra
  %i.rn = sext i1 %i.rm to i32
  br label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit

_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit: ; preds = %bb.ay, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i, %.thread.loopexit.i, %bb.at, %bb.as, %bb.ar
  %.4.i = phi i32 [ 1, %bb.as ], [ -1, %bb.ar ], [ 0, %bb.at ], [ %i.rn, %.thread.loopexit.i ], [ -1, %bb.ay ], [ 1, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i ]
  %i.ro = add nsw i32 %.4.i, %i.ph
  %i.rp = icmp slt i32 %i.ro, 1
  br i1 %i.rp, label %bb.ba, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318

bb.ba:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.rq = load i32, ptr %4, align 4, !tbaa !3
  %i.rr = add nsw i32 %i.rq, -1
  store i32 %i.rr, ptr %4, align 4, !tbaa !3
  %.not14.i.i = icmp eq i64 %i.pk, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i282

.lr.ph.i.i282:                                    ; preds = %bb.ba
  %i.rs = load ptr, ptr %5, align 8, !tbaa !15463 ; 4 uses
  %xtraiter = and i64 %i.pk, 1
  %i.rt = icmp eq i64 %i.pk, 1
  br i1 %i.rt, label %.epil.preheader, label %.lr.ph.i.i282.new

.lr.ph.i.i282.new:                                ; preds = %.lr.ph.i.i282
  %unroll_iter = and i64 %i.pk, -2
  br label %bb.bb

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i282
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i282 ], [ %i.sr, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i282 ], [ %i.sq, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod1898 = trunc i64 %i.pk to i1
  call void @llvm.assume(i1 %lcmp.mod1898)
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.013.i.i.epil.init ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !3
  %i.rw = zext i32 %i.rv to i64
  %i.rx = mul nuw nsw i64 %i.rw, 10
  %i.ry = add nuw nsw i64 %i.rx, %.01112.i.i.epil.init ; 2 uses
  %i.rz = trunc i64 %i.ry to i32
  store i32 %i.rz, ptr %i.ru, align 4, !tbaa !3
  %i.sa = lshr i64 %i.ry, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa1874 = phi i64 [ %i.sq, %._crit_edge.i.i.unr-lcssa ], [ %i.sa, %.epil.preheader ] ; 2 uses
  %i.sb = trunc nuw nsw i64 %.lcssa1874 to i32
  %.not.i.i284 = icmp eq i64 %.lcssa1874, 0
  br i1 %.not.i.i284, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, label %bb.bc

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.i282.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %i.sr, %bb.bb ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %i.sq, %bb.bb ]
  %niter = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %niter.next.1, %bb.bb ]
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.013.i.i ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !3
  %i.se = zext i32 %i.sd to i64
  %i.sf = mul nuw nsw i64 %i.se, 10
  %i.sg = add nuw nsw i64 %i.sf, %.01112.i.i      ; 2 uses
  %i.sh = trunc i64 %i.sg to i32
  store i32 %i.sh, ptr %i.sc, align 4, !tbaa !3
  %i.si = lshr i64 %i.sg, 32
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.013.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !3
  %i.sm = zext i32 %i.sl to i64
  %i.sn = mul nuw nsw i64 %i.sm, 10
  %i.so = add nuw nsw i64 %i.sn, %i.si            ; 2 uses
  %i.sp = trunc i64 %i.so to i32
  store i32 %i.sp, ptr %i.sk, align 4, !tbaa !3
  %i.sq = lshr i64 %i.so, 32                      ; 3 uses
  %i.sr = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.bb, !llvm.loop !15499

bb.bc:                                            ; preds = %._crit_edge.i.i
  %i.ss = add i64 %i.pk, 1                        ; 3 uses
  %i.st = load i64, ptr %i.a, align 8, !tbaa !15464
  %i.su = icmp ugt i64 %i.ss, %i.st
  br i1 %i.su, label %bb.bd, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i285

bb.bd:                                            ; preds = %bb.bc
  %i.sv = load ptr, ptr %i.b, align 8, !tbaa !15461
  invoke void %i.sv(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef %i.ss)
          to label %.noexc290 unwind label %bb.bm, !inline_history !15500

.noexc290:                                        ; preds = %bb.bd
  %.pre.i.i.i287 = load i64, ptr %i.c, align 8, !tbaa !15472 ; 2 uses
  %.pre2.i.i.i288 = add i64 %.pre.i.i.i287, 1
  %.pre.i289 = load ptr, ptr %5, align 8, !tbaa !15463
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i285

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i285: ; preds = %.noexc290, %bb.bc
  %i.sw = phi ptr [ %i.rs, %bb.bc ], [ %.pre.i289, %.noexc290 ]
  %.pre-phi.i.i.i286 = phi i64 [ %i.ss, %bb.bc ], [ %.pre2.i.i.i288, %.noexc290 ]
  %i.sx = phi i64 [ %i.pk, %bb.bc ], [ %.pre.i.i.i287, %.noexc290 ]
  store i64 %.pre-phi.i.i.i286, ptr %i.c, align 8, !tbaa !15472
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.sx
  store i32 %i.sb, ptr %i.sy, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i285, %._crit_edge.i.i, %bb.ba
  br i1 %i.pi, label %bb.be, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318

bb.be:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit
  %i.sz = load i64, ptr %i.m, align 8, !tbaa !15472 ; 7 uses
  %.not14.i.i291 = icmp eq i64 %i.sz, 0
  br i1 %.not14.i.i291, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304, label %.lr.ph.i.i292

.lr.ph.i.i292:                                    ; preds = %bb.be
  %i.ta = load ptr, ptr %7, align 8, !tbaa !15463 ; 4 uses
  %xtraiter1900 = and i64 %i.sz, 1
  %i.tb = icmp eq i64 %i.sz, 1
  br i1 %i.tb, label %.epil.preheader1899, label %.lr.ph.i.i292.new

.lr.ph.i.i292.new:                                ; preds = %.lr.ph.i.i292
  %unroll_iter1904 = and i64 %i.sz, -2
  br label %bb.bf

._crit_edge.i.i296.unr-lcssa:                     ; preds = %bb.bf
  %lcmp.mod1901.not = icmp eq i64 %xtraiter1900, 0
  br i1 %lcmp.mod1901.not, label %._crit_edge.i.i296, label %.epil.preheader1899

.epil.preheader1899:                              ; preds = %._crit_edge.i.i296.unr-lcssa, %.lr.ph.i.i292
  %.013.i.i293.epil.init = phi i64 [ 0, %.lr.ph.i.i292 ], [ %i.tz, %._crit_edge.i.i296.unr-lcssa ]
  %.01112.i.i294.epil.init = phi i64 [ 0, %.lr.ph.i.i292 ], [ %i.ty, %._crit_edge.i.i296.unr-lcssa ]
  %lcmp.mod1903 = trunc i64 %i.sz to i1
  call void @llvm.assume(i1 %lcmp.mod1903)
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %.013.i.i293.epil.init ; 2 uses
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !3
  %i.te = zext i32 %i.td to i64
  %i.tf = mul nuw nsw i64 %i.te, 10
  %i.tg = add nuw nsw i64 %i.tf, %.01112.i.i294.epil.init ; 2 uses
  %i.th = trunc i64 %i.tg to i32
  store i32 %i.th, ptr %i.tc, align 4, !tbaa !3
  %i.ti = lshr i64 %i.tg, 32
  br label %._crit_edge.i.i296

._crit_edge.i.i296:                               ; preds = %._crit_edge.i.i296.unr-lcssa, %.epil.preheader1899
  %.lcssa1873 = phi i64 [ %i.ty, %._crit_edge.i.i296.unr-lcssa ], [ %i.ti, %.epil.preheader1899 ] ; 2 uses
  %i.tj = trunc nuw nsw i64 %.lcssa1873 to i32
  %.not.i.i297 = icmp eq i64 %.lcssa1873, 0
  br i1 %.not.i.i297, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304, label %bb.bg

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.i.i292.new
  %.013.i.i293 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.tz, %bb.bf ] ; 3 uses
  %.01112.i.i294 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.ty, %bb.bf ]
  %niter1905 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %niter1905.next.1, %bb.bf ]
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %.013.i.i293 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !3
  %i.tm = zext i32 %i.tl to i64
  %i.tn = mul nuw nsw i64 %i.tm, 10
  %i.to = add nuw nsw i64 %i.tn, %.01112.i.i294   ; 2 uses
  %i.tp = trunc i64 %i.to to i32
  store i32 %i.tp, ptr %i.tk, align 4, !tbaa !3
  %i.tq = lshr i64 %i.to, 32
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %.013.i.i293
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !3
  %i.tu = zext i32 %i.tt to i64
  %i.tv = mul nuw nsw i64 %i.tu, 10
  %i.tw = add nuw nsw i64 %i.tv, %i.tq            ; 2 uses
  %i.tx = trunc i64 %i.tw to i32
  store i32 %i.tx, ptr %i.ts, align 4, !tbaa !3
  %i.ty = lshr i64 %i.tw, 32                      ; 3 uses
  %i.tz = add nuw i64 %.013.i.i293, 2             ; 2 uses
  %niter1905.next.1 = add i64 %niter1905, 2       ; 2 uses
  %niter1905.ncmp.1 = icmp eq i64 %niter1905.next.1, %unroll_iter1904
  br i1 %niter1905.ncmp.1, label %._crit_edge.i.i296.unr-lcssa, label %bb.bf, !llvm.loop !15499

bb.bg:                                            ; preds = %._crit_edge.i.i296
  %i.ua = add i64 %i.sz, 1                        ; 3 uses
  %i.ub = load i64, ptr %i.k, align 8, !tbaa !15464
  %i.uc = icmp ugt i64 %i.ua, %i.ub
  br i1 %i.uc, label %bb.bh, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298

bb.bh:                                            ; preds = %bb.bg
  %i.ud = load ptr, ptr %i.l, align 8, !tbaa !15461
  invoke void %i.ud(ptr noundef nonnull align 8 dereferenceable(164) %7, i64 noundef %i.ua)
          to label %.noexc303 unwind label %bb.bm, !inline_history !15500

.noexc303:                                        ; preds = %bb.bh
  %.pre.i.i.i300 = load i64, ptr %i.m, align 8, !tbaa !15472 ; 2 uses
  %.pre2.i.i.i301 = add i64 %.pre.i.i.i300, 1
  %.pre.i302 = load ptr, ptr %7, align 8, !tbaa !15463
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298: ; preds = %.noexc303, %bb.bg
  %i.ue = phi ptr [ %i.ta, %bb.bg ], [ %.pre.i302, %.noexc303 ]
  %.pre-phi.i.i.i299 = phi i64 [ %i.ua, %bb.bg ], [ %.pre2.i.i.i301, %.noexc303 ]
  %i.uf = phi i64 [ %i.sz, %bb.bg ], [ %.pre.i.i.i300, %.noexc303 ]
  store i64 %.pre-phi.i.i.i299, ptr %i.m, align 8, !tbaa !15472
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.uf
  store i32 %i.tj, ptr %i.ug, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i298, %._crit_edge.i.i296, %bb.be
  br i1 %.not97, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, label %bb.bi

bb.bi:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304
  %i.uh = load i64, ptr %.289.sroa.gep, align 8, !tbaa !15472 ; 7 uses
  %.not14.i.i305 = icmp eq i64 %i.uh, 0
  br i1 %.not14.i.i305, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, label %.lr.ph.i.i306

.lr.ph.i.i306:                                    ; preds = %bb.bi
  %i.ui = load ptr, ptr %.289, align 8, !tbaa !15463 ; 4 uses
  %xtraiter1907 = and i64 %i.uh, 1
  %i.uj = icmp eq i64 %i.uh, 1
  br i1 %i.uj, label %.epil.preheader1906, label %.lr.ph.i.i306.new

.lr.ph.i.i306.new:                                ; preds = %.lr.ph.i.i306
  %unroll_iter1911 = and i64 %i.uh, -2
  br label %bb.bj

._crit_edge.i.i310.unr-lcssa:                     ; preds = %bb.bj
  %lcmp.mod1908.not = icmp eq i64 %xtraiter1907, 0
  br i1 %lcmp.mod1908.not, label %._crit_edge.i.i310, label %.epil.preheader1906

.epil.preheader1906:                              ; preds = %._crit_edge.i.i310.unr-lcssa, %.lr.ph.i.i306
  %.013.i.i307.epil.init = phi i64 [ 0, %.lr.ph.i.i306 ], [ %i.vh, %._crit_edge.i.i310.unr-lcssa ]
  %.01112.i.i308.epil.init = phi i64 [ 0, %.lr.ph.i.i306 ], [ %i.vg, %._crit_edge.i.i310.unr-lcssa ]
  %lcmp.mod1910 = trunc i64 %i.uh to i1
  call void @llvm.assume(i1 %lcmp.mod1910)
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.013.i.i307.epil.init ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !3
  %i.um = zext i32 %i.ul to i64
  %i.un = mul nuw nsw i64 %i.um, 10
  %i.uo = add nuw nsw i64 %i.un, %.01112.i.i308.epil.init ; 2 uses
  %i.up = trunc i64 %i.uo to i32
  store i32 %i.up, ptr %i.uk, align 4, !tbaa !3
  %i.uq = lshr i64 %i.uo, 32
  br label %._crit_edge.i.i310

._crit_edge.i.i310:                               ; preds = %._crit_edge.i.i310.unr-lcssa, %.epil.preheader1906
  %.lcssa1872 = phi i64 [ %i.vg, %._crit_edge.i.i310.unr-lcssa ], [ %i.uq, %.epil.preheader1906 ] ; 2 uses
  %i.ur = trunc nuw nsw i64 %.lcssa1872 to i32
  %.not.i.i311 = icmp eq i64 %.lcssa1872, 0
  br i1 %.not.i.i311, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, label %bb.bk

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.i306.new
  %.013.i.i307 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.vh, %bb.bj ] ; 3 uses
  %.01112.i.i308 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.vg, %bb.bj ]
  %niter1912 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %niter1912.next.1, %bb.bj ]
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.013.i.i307 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !3
  %i.uu = zext i32 %i.ut to i64
  %i.uv = mul nuw nsw i64 %i.uu, 10
  %i.uw = add nuw nsw i64 %i.uv, %.01112.i.i308   ; 2 uses
  %i.ux = trunc i64 %i.uw to i32
  store i32 %i.ux, ptr %i.us, align 4, !tbaa !3
  %i.uy = lshr i64 %i.uw, 32
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %.013.i.i307
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 4 ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !3
  %i.vc = zext i32 %i.vb to i64
  %i.vd = mul nuw nsw i64 %i.vc, 10
  %i.ve = add nuw nsw i64 %i.vd, %i.uy            ; 2 uses
  %i.vf = trunc i64 %i.ve to i32
  store i32 %i.vf, ptr %i.va, align 4, !tbaa !3
  %i.vg = lshr i64 %i.ve, 32                      ; 3 uses
  %i.vh = add nuw i64 %.013.i.i307, 2             ; 2 uses
  %niter1912.next.1 = add i64 %niter1912, 2       ; 2 uses
  %niter1912.ncmp.1 = icmp eq i64 %niter1912.next.1, %unroll_iter1911
  br i1 %niter1912.ncmp.1, label %._crit_edge.i.i310.unr-lcssa, label %bb.bj, !llvm.loop !15499

bb.bk:                                            ; preds = %._crit_edge.i.i310
  %i.vi = add i64 %i.uh, 1                        ; 3 uses
  %.289.sroa.gep507 = getelementptr inbounds nuw i8, ptr %.289, i64 16
  %i.vj = load i64, ptr %.289.sroa.gep507, align 8, !tbaa !15464
  %i.vk = icmp ugt i64 %i.vi, %i.vj
  br i1 %i.vk, label %bb.bl, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312

bb.bl:                                            ; preds = %bb.bk
  %.289.sroa.gep510 = getelementptr inbounds nuw i8, ptr %.289, i64 24
  %i.vl = load ptr, ptr %.289.sroa.gep510, align 8, !tbaa !15461
  invoke void %i.vl(ptr noundef nonnull align 8 dereferenceable(164) %.289, i64 noundef %i.vi)
          to label %.noexc317 unwind label %bb.bm, !inline_history !15500

.noexc317:                                        ; preds = %bb.bl
  %.pre.i.i.i314 = load i64, ptr %.289.sroa.gep, align 8, !tbaa !15472 ; 2 uses
  %.pre2.i.i.i315 = add i64 %.pre.i.i.i314, 1
  %.pre.i316 = load ptr, ptr %.289, align 8, !tbaa !15463
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312: ; preds = %.noexc317, %bb.bk
  %i.vm = phi ptr [ %i.ui, %bb.bk ], [ %.pre.i316, %.noexc317 ]
  %.pre-phi.i.i.i313 = phi i64 [ %i.vi, %bb.bk ], [ %.pre2.i.i.i315, %.noexc317 ]
  %i.vn = phi i64 [ %i.uh, %bb.bk ], [ %.pre.i.i.i314, %.noexc317 ]
  store i64 %.pre-phi.i.i.i313, ptr %.289.sroa.gep, align 8, !tbaa !15472
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %i.vn
  store i32 %i.ur, ptr %i.vo, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318

bb.bm:                                            ; preds = %bb.du, %bb.bp, %bb.bl, %bb.bh, %bb.bd
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i312, %._crit_edge.i.i310, %bb.bi, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit304, %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.vq = and i32 %1, 4
  %.not99 = icmp eq i32 %i.vq, 0
  br i1 %.not99, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318
  %i.vr = load i32, ptr %4, align 4, !tbaa !3     ; 3 uses
  %i.vs = icmp sgt i32 %i.vr, -1
  %i.vt = sub nsw i32 2147483646, %i.vr
  %i.vu = icmp sgt i32 %2, %i.vt
  %or.cond.i320 = select i1 %i.vs, i1 %i.vu, i1 false
  br i1 %or.cond.i320, label %bb.bo, label %_ZN3fmt3v116detail16adjust_precisionERii.exit

bb.bo:                                            ; preds = %bb.bn
  %i.vv = call ptr @__cxa_allocate_exception(i64 16) #33 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.vv, ptr noundef nonnull @.str.105)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_errorE, i64 16), ptr %i.vv, align 8, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.vv, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %.noexc321 unwind label %bb.bm

.noexc321:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.vw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vv) #33
  br label %.body

_ZN3fmt3v116detail16adjust_precisionERii.exit:    ; preds = %bb.bn
  %i.vx = add i32 %2, 1
  %i.vy = add i32 %i.vx, %i.vr
  br label %bb.br

bb.br:                                            ; preds = %_ZN3fmt3v116detail16adjust_precisionERii.exit, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318, %_ZN3fmt3v116detail6bigintlSEi.exit168
  %.0541 = phi i32 [ %2, %_ZN3fmt3v116detail6bigintlSEi.exit168 ], [ %2, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit318 ], [ %i.vy, %_ZN3fmt3v116detail16adjust_precisionERii.exit ] ; 5 uses
  br i1 %i.pi, label %bb.bs, label %bb.de

bb.bs:                                            ; preds = %bb.br
  %i.vz = load ptr, ptr %3, align 8, !tbaa !1383  ; 3 uses
  %.289.sroa.gep513 = getelementptr inbounds nuw i8, ptr %.289, i64 8 ; 4 uses
  %spec.store.select.sroa.sel514 = select i1 %.not97, ptr %i.m, ptr %.289.sroa.gep513
  %.289.sroa.gep516 = getelementptr inbounds nuw i8, ptr %.289, i64 160
  %spec.store.select.sroa.sel517 = select i1 %.not97, ptr %i.o, ptr %.289.sroa.gep516
  %i.wa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.wc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.289.sroa.gep522 = getelementptr inbounds nuw i8, ptr %.289, i64 16
  %.289.sroa.gep525 = getelementptr inbounds nuw i8, ptr %.289, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bs
  %indvars.iv672 = phi i64 [ 0, %bb.bs ], [ %indvars.iv.next673, %.backedge.backedge ] ; 7 uses
  %i.wd = invoke noundef i32 @_ZN3fmt3v116detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %5, ptr noundef nonnull align 8 dereferenceable(164) %6)
          to label %bb.bt unwind label %bb.ch     ; 3 uses

bb.bt:                                            ; preds = %.backedge
  %i.we = load i64, ptr %i.c, align 8, !tbaa !15472 ; 2 uses
  %i.wf = trunc i64 %i.we to i32                  ; 2 uses
  %i.wg = load i32, ptr %i.e, align 8, !tbaa !15465 ; 3 uses
  %i.wh = add nsw i32 %i.wg, %i.wf                ; 4 uses
  %i.wi = load i64, ptr %i.m, align 8, !tbaa !15472 ; 2 uses
  %i.wj = trunc i64 %i.wi to i32                  ; 2 uses
  %i.wk = load i32, ptr %i.o, align 8, !tbaa !15465
  %i.wl = add nsw i32 %i.wk, %i.wj                ; 2 uses
  %.not.i322 = icmp eq i32 %i.wh, %i.wl
  br i1 %.not.i322, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.wm = icmp sgt i32 %i.wh, %i.wl
  %i.wn = select i1 %i.wm, i32 1, i32 -1
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

bb.bv:                                            ; preds = %bb.bt
  %i.wo = sub nsw i32 %i.wf, %i.wj
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.wo, i32 0)
  %i.wp = load ptr, ptr %5, align 8
  %i.wq = load ptr, ptr %7, align 8
  %sext.i323 = shl i64 %i.we, 32
  %i.wr = ashr exact i64 %sext.i323, 32           ; 3 uses
  %i.ws = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.wi, 32
  %i.wt = ashr exact i64 %sext55.i, 32            ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.wr, i64 %i.ws) ; 2 uses
  %.not35.not.i1634 = icmp sgt i64 %i.wr, %i.ws
  br i1 %.not35.not.i1634, label %.lr.ph1638, label %._crit_edge1639

bb.bw:                                            ; preds = %.lr.ph1638
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i325, %i.ws
  br i1 %.not35.not.i, label %.lr.ph1638, label %._crit_edge1639, !llvm.loop !15501

.lr.ph1638:                                       ; preds = %bb.bv, %bb.bw
  %indvars.iv.i3241636 = phi i64 [ %indvars.iv.next.i325, %bb.bw ], [ %i.wr, %bb.bv ]
  %indvars.iv45.i1635 = phi i64 [ %indvars.iv.next46.i, %bb.bw ], [ %i.wt, %bb.bv ]
  %indvars.iv.next.i325 = add nsw i64 %indvars.iv.i3241636, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i1635, -1 ; 3 uses
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv.next.i325
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !3  ; 2 uses
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.wq, i64 %indvars.iv.next46.i
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !3  ; 2 uses
  %.not37.i = icmp eq i32 %i.wv, %i.wx
  br i1 %.not37.i, label %bb.bw, label %.loopexit.i, !llvm.loop !15501

._crit_edge1639:                                  ; preds = %bb.bw, %bb.bv
  %indvars.iv45.i.lcssa = phi i64 [ %i.wt, %bb.bv ], [ %indvars.iv.next46.i, %bb.bw ] ; 2 uses
  %.not36.i = icmp eq i64 %smin, %indvars.iv45.i.lcssa
  br i1 %.not36.i, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge1639
  %i.wy = icmp sgt i64 %smin, %indvars.iv45.i.lcssa
  %i.wz = select i1 %i.wy, i32 1, i32 -1
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %.lr.ph1638
  %i.xa = icmp ugt i32 %i.wv, %i.wx
  %i.xb = select i1 %i.xa, i32 1, i32 -1
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit: ; preds = %bb.bu, %._crit_edge1639, %bb.bx, %.loopexit.i
  %.3.i = phi i32 [ %i.wn, %bb.bu ], [ 0, %._crit_edge1639 ], [ %i.wz, %bb.bx ], [ %i.xb, %.loopexit.i ]
  %i.xc = icmp sge i32 %.3.i, %i.ph               ; 3 uses
  %i.xd = load i64, ptr %spec.store.select.sroa.sel514, align 8, !tbaa !15472
  %i.xe = trunc i64 %i.xd to i32
  %i.xf = load i32, ptr %spec.store.select.sroa.sel517, align 8, !tbaa !15465 ; 3 uses
  %i.xg = add nsw i32 %i.xf, %i.xe                ; 2 uses
  %i.xh = call noundef i32 @llvm.smax.i32(i32 %i.wh, i32 %i.xg) ; 2 uses
  %i.xi = load i64, ptr %i.h, align 8, !tbaa !15472 ; 2 uses
  %i.xj = trunc i64 %i.xi to i32
  %i.xk = load i32, ptr %i.j, align 8, !tbaa !15465 ; 3 uses
  %i.xl = add nsw i32 %i.xk, %i.xj                ; 4 uses
  %i.xm = add nsw i32 %i.xh, 1
  %i.xn = icmp slt i32 %i.xm, %i.xl
  br i1 %i.xn, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit344, label %bb.by

bb.by:                                            ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit
  %i.xo = icmp sgt i32 %i.xh, %i.xl
  br i1 %i.xo, label %.thread833, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.xp = call noundef i32 @llvm.smin.i32(i32 %i.wg, i32 %i.xf)
  %i.xq = call noundef i32 @llvm.smin.i32(i32 %i.xp, i32 %i.xk) ; 2 uses
  %.not.not.not53.i326 = icmp sgt i32 %i.xl, %i.xq
  br i1 %.not.not.not53.i326, label %.lr.ph.i328, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit344

.lr.ph.i328:                                      ; preds = %bb.bz
  %i.xr = load ptr, ptr %5, align 8
  %i.xs = load ptr, ptr %spec.store.select, align 8
  %i.xt = load ptr, ptr %6, align 8
  %i.xu = sext i32 %i.xk to i64                   ; 3 uses
  %sext.i329 = shl i64 %i.xi, 32
  %i.xv = ashr exact i64 %sext.i329, 32
  %i.xw = add nsw i64 %i.xv, %i.xu
  %i.xx = sext i32 %i.xl to i64
  %i.xy = sext i32 %i.xg to i64
  %i.xz = sext i32 %i.xf to i64                   ; 2 uses
  %i.ya = sext i32 %i.wh to i64
  %i.yb = sext i32 %i.wg to i64                   ; 2 uses
  %i.yc = sext i32 %i.xq to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cf, %.lr.ph.i328
end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  br label %.body

.loopexit.split-lp903:                            ; preds = %bb.cr
  %lpad.loopexit.split-lp905 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ci:                                            ; preds = %bb.cg
  br i1 %i.zd, label %.thread546, label %.thread842

.thread842:                                       ; preds = %.thread833, %bb.ci
  %indvars.iv.next673830840845 = phi i64 [ %indvars.iv.next673, %bb.ci ], [ %indvars.iv.next673827, %.thread833 ] ; 6 uses
  %i.zl = phi i8 [ %i.ze, %bb.ci ], [ %i.zh, %.thread833 ] ; 3 uses
  %i.zm = load i64, ptr %i.c, align 8, !tbaa !15472
  %i.zn = trunc i64 %i.zm to i32
  %i.zo = load i32, ptr %i.e, align 8, !tbaa !15465 ; 3 uses
  %i.zp = add nsw i32 %i.zo, %i.zn                ; 3 uses
  %i.zq = load i64, ptr %i.h, align 8, !tbaa !15472 ; 2 uses
  %i.zr = trunc i64 %i.zq to i32
  %i.zs = load i32, ptr %i.j, align 8, !tbaa !15465 ; 3 uses
  %i.zt = add nsw i32 %i.zs, %i.zr                ; 4 uses
  %i.zu = add nsw i32 %i.zp, 1
  %i.zv = icmp slt i32 %i.zu, %i.zt
  br i1 %i.zv, label %.thread546, label %bb.cj

bb.cj:                                            ; preds = %.thread842
  %i.zw = icmp sgt i32 %i.zp, %i.zt
  br i1 %i.zw, label %.thread546.sink.split, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.zx = call noundef i32 @llvm.smin.i32(i32 %i.zo, i32 %i.zs) ; 2 uses
  %.not.not.not53.i345 = icmp sgt i32 %i.zt, %i.zx
  br i1 %.not.not.not53.i345, label %.lr.ph.i347, label %bb.cq

.lr.ph.i347:                                      ; preds = %bb.ck
  %i.zy = load ptr, ptr %5, align 8
  %i.zz = load ptr, ptr %6, align 8
  %i.aaa = sext i32 %i.zs to i64                  ; 3 uses
  %sext.i348 = shl i64 %i.zq, 32
  %i.aab = ashr exact i64 %sext.i348, 32
  %i.aac = add nsw i64 %i.aab, %i.aaa
  %i.aad = sext i32 %i.zt to i64
  %i.aae = sext i32 %i.zp to i64
  %i.aaf = sext i32 %i.zo to i64                  ; 2 uses
  %i.aag = sext i32 %i.zx to i64
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cp, %.lr.ph.i347
  %indvars.iv.i349 = phi i64 [ %i.aac, %.lr.ph.i347 ], [ %indvars.iv.next.i351, %bb.cp ] ; 5 uses
  %.03554.i350 = phi i64 [ 0, %.lr.ph.i347 ], [ %i.aay, %bb.cp ] ; 2 uses
  %indvars.iv.next.i351 = add nsw i64 %indvars.iv.i349, -1 ; 4 uses
  %.not.i.i352 = icmp sgt i64 %indvars.iv.i349, %i.aaf
  %i.aah = icmp sle i64 %indvars.iv.i349, %i.aae
  %or.cond.i353 = and i1 %.not.i.i352, %i.aah
  br i1 %or.cond.i353, label %bb.cm, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357

bb.cm:                                            ; preds = %bb.cl
  %i.aai = sub nsw i64 %indvars.iv.next.i351, %i.aaf
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.zy, i64 %i.aai
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !3
  %i.aal = zext i32 %i.aak to i64
  %i.aam = shl nuw nsw i64 %i.aal, 1
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357: ; preds = %bb.cl, %bb.cm
  %i.aan = phi i64 [ %i.aam, %bb.cm ], [ 0, %bb.cl ] ; 3 uses
  %.not.i45.i358 = icmp sgt i64 %indvars.iv.i349, %i.aaa
  %i.aao = icmp sle i64 %indvars.iv.i349, %i.aad
  %or.cond51.i359 = and i1 %.not.i45.i358, %i.aao
  br i1 %or.cond51.i359, label %bb.cn, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360

bb.cn:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357
  %i.aap = sub nsw i64 %indvars.iv.next.i351, %i.aaa
  %i.aaq = getelementptr inbounds [4 x i8], ptr %i.zz, i64 %i.aap
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !3
  %i.aas = zext i32 %i.aar to i64
  %i.aat = or disjoint i64 %.03554.i350, %i.aas
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360: ; preds = %bb.cn, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357
  %i.aau = phi i64 [ %i.aat, %bb.cn ], [ %.03554.i350, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i357 ] ; 3 uses
  %i.aav = icmp ugt i64 %i.aan, %i.aau
  br i1 %i.aav, label %.thread546.sink.split, label %bb.co

bb.co:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360
  %i.aaw = sub nuw nsw i64 %i.aau, %i.aan         ; 2 uses
  %i.aax = icmp ugt i64 %i.aaw, 1
  br i1 %i.aax, label %.thread546, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aay = shl nuw nsw i64 %i.aaw, 32
  %.not.not.not.i361 = icmp sgt i64 %indvars.iv.next.i351, %i.aag
  br i1 %.not.not.not.i361, label %bb.cl, label %.thread.loopexit.i362, !llvm.loop !15498

.thread.loopexit.i362:                            ; preds = %bb.cp
  %i.aaz = icmp ne i64 %i.aau, %i.aan
  br label %bb.cq

bb.cq:                                            ; preds = %bb.ck, %.thread.loopexit.i362
  %.4.i346.ph = phi i1 [ false, %bb.ck ], [ %i.aaz, %.thread.loopexit.i362 ]
  %i.aba = and i32 %i.wd, 1
  %.not104 = icmp eq i32 %i.aba, 0
  %or.cond = or i1 %.not104, %.4.i346.ph
  br i1 %or.cond, label %.thread546, label %.thread546.sink.split

.thread546.sink.split:                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360, %bb.cq, %bb.cj, %bb.cg, %.thread833
  %.sink890 = phi i8 [ %i.ze, %bb.cg ], [ %i.zh, %.thread833 ], [ %i.zl, %bb.cq ], [ %i.zl, %bb.cj ], [ %i.zl, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360 ]
  %indvars.iv.next673830839.ph = phi i64 [ %indvars.iv.next673, %bb.cg ], [ %indvars.iv.next673827, %.thread833 ], [ %indvars.iv.next673830840845, %bb.cq ], [ %indvars.iv.next673830840845, %bb.cj ], [ %indvars.iv.next673830840845, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i360 ]
  %i.abb = getelementptr i8, ptr %i.vz, i64 %indvars.iv672
  %i.abc = add i8 %.sink890, 49
  store i8 %i.abc, ptr %i.abb, align 1, !tbaa !13
  br label %.thread546

.thread546:                                       ; preds = %bb.co, %.thread546.sink.split, %.thread842, %bb.cq, %bb.ci
  %indvars.iv.next673830839 = phi i64 [ %indvars.iv.next673, %bb.ci ], [ %indvars.iv.next673830840845, %.thread842 ], [ %indvars.iv.next673830840845, %bb.cq ], [ %indvars.iv.next673830839.ph, %.thread546.sink.split ], [ %indvars.iv.next673830840845, %bb.co ] ; 2 uses
  %i.abd = load i64, ptr %i.wa, align 8, !tbaa !1386 ; 2 uses
  %.not820 = icmp ugt i64 %i.abd, %indvars.iv672
  br i1 %.not820, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.thread546
  %i.abe = load ptr, ptr %i.wb, align 8, !tbaa !1387
  invoke void %i.abe(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %indvars.iv.next673830839)
          to label %.noexc365 unwind label %.loopexit.split-lp903, !inline_history !15502

.noexc365:                                        ; preds = %bb.cr
  %.pre.i364 = load i64, ptr %i.wa, align 8, !tbaa !1386
  br label %bb.cs

bb.cs:                                            ; preds = %.noexc365, %.thread546
  %i.abf = phi i64 [ %i.abd, %.thread546 ], [ %.pre.i364, %.noexc365 ]
  %i.abg = call noundef i64 @llvm.umin.i64(i64 %indvars.iv.next673830839, i64 %i.abf)
  store i64 %i.abg, ptr %i.wc, align 8, !tbaa !1385
  %i.abh = load i32, ptr %4, align 4, !tbaa !3
  %i.abi = trunc nuw nsw i64 %indvars.iv672 to i32
  %i.abj = sub nsw i32 %i.abh, %i.abi
  store i32 %i.abj, ptr %4, align 4, !tbaa !3
  br label %.loopexit

bb.ct:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit344
  %i.abk = load i64, ptr %i.c, align 8, !tbaa !15472 ; 7 uses
  %.not14.i.i366 = icmp eq i64 %i.abk, 0
  br i1 %.not14.i.i366, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379, label %.lr.ph.i.i367

.lr.ph.i.i367:                                    ; preds = %bb.ct
  %i.abl = load ptr, ptr %5, align 8, !tbaa !15463 ; 4 uses
  %xtraiter1928 = and i64 %i.abk, 1
  %i.abm = icmp eq i64 %i.abk, 1
  br i1 %i.abm, label %.epil.preheader1927, label %.lr.ph.i.i367.new

.lr.ph.i.i367.new:                                ; preds = %.lr.ph.i.i367
  %unroll_iter1932 = and i64 %i.abk, -2
  br label %bb.cu

._crit_edge.i.i371.unr-lcssa:                     ; preds = %bb.cu
  %lcmp.mod1929.not = icmp eq i64 %xtraiter1928, 0
  br i1 %lcmp.mod1929.not, label %._crit_edge.i.i371, label %.epil.preheader1927

.epil.preheader1927:                              ; preds = %._crit_edge.i.i371.unr-lcssa, %.lr.ph.i.i367
  %.013.i.i368.epil.init = phi i64 [ 0, %.lr.ph.i.i367 ], [ %i.ack, %._crit_edge.i.i371.unr-lcssa ]
  %.01112.i.i369.epil.init = phi i64 [ 0, %.lr.ph.i.i367 ], [ %i.acj, %._crit_edge.i.i371.unr-lcssa ]
  %lcmp.mod1931 = trunc i64 %i.abk to i1
  call void @llvm.assume(i1 %lcmp.mod1931)
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %.013.i.i368.epil.init ; 2 uses
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !3
  %i.abp = zext i32 %i.abo to i64
  %i.abq = mul nuw nsw i64 %i.abp, 10
  %i.abr = add nuw nsw i64 %i.abq, %.01112.i.i369.epil.init ; 2 uses
  %i.abs = trunc i64 %i.abr to i32
  store i32 %i.abs, ptr %i.abn, align 4, !tbaa !3
  %i.abt = lshr i64 %i.abr, 32
  br label %._crit_edge.i.i371

._crit_edge.i.i371:                               ; preds = %._crit_edge.i.i371.unr-lcssa, %.epil.preheader1927
  %.lcssa1840 = phi i64 [ %i.acj, %._crit_edge.i.i371.unr-lcssa ], [ %i.abt, %.epil.preheader1927 ] ; 2 uses
  %i.abu = trunc nuw nsw i64 %.lcssa1840 to i32
  %.not.i.i372 = icmp eq i64 %.lcssa1840, 0
  br i1 %.not.i.i372, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379, label %bb.cv

bb.cu:                                            ; preds = %bb.cu, %.lr.ph.i.i367.new
  %.013.i.i368 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %i.ack, %bb.cu ] ; 3 uses
  %.01112.i.i369 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %i.acj, %bb.cu ]
  %niter1933 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %niter1933.next.1, %bb.cu ]
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %.013.i.i368 ; 2 uses
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !3
  %i.abx = zext i32 %i.abw to i64
  %i.aby = mul nuw nsw i64 %i.abx, 10
  %i.abz = add nuw nsw i64 %i.aby, %.01112.i.i369 ; 2 uses
  %i.aca = trunc i64 %i.abz to i32
  store i32 %i.aca, ptr %i.abv, align 4, !tbaa !3
  %i.acb = lshr i64 %i.abz, 32
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %.013.i.i368
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 4 ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !3
  %i.acf = zext i32 %i.ace to i64
  %i.acg = mul nuw nsw i64 %i.acf, 10
  %i.ach = add nuw nsw i64 %i.acg, %i.acb         ; 2 uses
  %i.aci = trunc i64 %i.ach to i32
  store i32 %i.aci, ptr %i.acd, align 4, !tbaa !3
  %i.acj = lshr i64 %i.ach, 32                    ; 3 uses
  %i.ack = add nuw i64 %.013.i.i368, 2            ; 2 uses
  %niter1933.next.1 = add i64 %niter1933, 2       ; 2 uses
  %niter1933.ncmp.1 = icmp eq i64 %niter1933.next.1, %unroll_iter1932
  br i1 %niter1933.ncmp.1, label %._crit_edge.i.i371.unr-lcssa, label %bb.cu, !llvm.loop !15499

bb.cv:                                            ; preds = %._crit_edge.i.i371
  %i.acl = add i64 %i.abk, 1                      ; 3 uses
  %i.acm = load i64, ptr %i.a, align 8, !tbaa !15464
  %i.acn = icmp ugt i64 %i.acl, %i.acm
  br i1 %i.acn, label %bb.cw, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i373

bb.cw:                                            ; preds = %bb.cv
  %i.aco = load ptr, ptr %i.b, align 8, !tbaa !15461
  invoke void %i.aco(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef %i.acl)
          to label %.noexc378 unwind label %.loopexit902, !inline_history !15500

.noexc378:                                        ; preds = %bb.cw
  %.pre.i.i.i375 = load i64, ptr %i.c, align 8, !tbaa !15472 ; 2 uses
  %.pre2.i.i.i376 = add i64 %.pre.i.i.i375, 1
  %.pre.i377 = load ptr, ptr %5, align 8, !tbaa !15463
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i373

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i373: ; preds = %.noexc378, %bb.cv
  %i.acp = phi ptr [ %i.abl, %bb.cv ], [ %.pre.i377, %.noexc378 ]
  %.pre-phi.i.i.i374 = phi i64 [ %i.acl, %bb.cv ], [ %.pre2.i.i.i376, %.noexc378 ]
  %i.acq = phi i64 [ %i.abk, %bb.cv ], [ %.pre.i.i.i375, %.noexc378 ]
  store i64 %.pre-phi.i.i.i374, ptr %i.c, align 8, !tbaa !15472
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %i.acq
  store i32 %i.abu, ptr %i.acr, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i373, %._crit_edge.i.i371, %bb.ct
  %i.acs = load i64, ptr %i.m, align 8, !tbaa !15472 ; 7 uses
  %.not14.i.i380 = icmp eq i64 %i.acs, 0
  br i1 %.not14.i.i380, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393, label %.lr.ph.i.i381

.lr.ph.i.i381:                                    ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379
  %i.act = load ptr, ptr %7, align 8, !tbaa !15463 ; 4 uses
  %xtraiter1935 = and i64 %i.acs, 1
  %i.acu = icmp eq i64 %i.acs, 1
  br i1 %i.acu, label %.epil.preheader1934, label %.lr.ph.i.i381.new

.lr.ph.i.i381.new:                                ; preds = %.lr.ph.i.i381
  %unroll_iter1939 = and i64 %i.acs, -2
  br label %bb.cx

._crit_edge.i.i385.unr-lcssa:                     ; preds = %bb.cx
  %lcmp.mod1936.not = icmp eq i64 %xtraiter1935, 0
  br i1 %lcmp.mod1936.not, label %._crit_edge.i.i385, label %.epil.preheader1934

.epil.preheader1934:                              ; preds = %._crit_edge.i.i385.unr-lcssa, %.lr.ph.i.i381
  %.013.i.i382.epil.init = phi i64 [ 0, %.lr.ph.i.i381 ], [ %i.ads, %._crit_edge.i.i385.unr-lcssa ]
  %.01112.i.i383.epil.init = phi i64 [ 0, %.lr.ph.i.i381 ], [ %i.adr, %._crit_edge.i.i385.unr-lcssa ]
  %lcmp.mod1938 = trunc i64 %i.acs to i1
  call void @llvm.assume(i1 %lcmp.mod1938)
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %.013.i.i382.epil.init ; 2 uses
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !3
  %i.acx = zext i32 %i.acw to i64
  %i.acy = mul nuw nsw i64 %i.acx, 10
  %i.acz = add nuw nsw i64 %i.acy, %.01112.i.i383.epil.init ; 2 uses
  %i.ada = trunc i64 %i.acz to i32
  store i32 %i.ada, ptr %i.acv, align 4, !tbaa !3
  %i.adb = lshr i64 %i.acz, 32
  br label %._crit_edge.i.i385

._crit_edge.i.i385:                               ; preds = %._crit_edge.i.i385.unr-lcssa, %.epil.preheader1934
  %.lcssa1841 = phi i64 [ %i.adr, %._crit_edge.i.i385.unr-lcssa ], [ %i.adb, %.epil.preheader1934 ] ; 2 uses
  %i.adc = trunc nuw nsw i64 %.lcssa1841 to i32
  %.not.i.i386 = icmp eq i64 %.lcssa1841, 0
  br i1 %.not.i.i386, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393, label %bb.cy

bb.cx:                                            ; preds = %bb.cx, %.lr.ph.i.i381.new
  %.013.i.i382 = phi i64 [ 0, %.lr.ph.i.i381.new ], [ %i.ads, %bb.cx ] ; 3 uses
  %.01112.i.i383 = phi i64 [ 0, %.lr.ph.i.i381.new ], [ %i.adr, %bb.cx ]
  %niter1940 = phi i64 [ 0, %.lr.ph.i.i381.new ], [ %niter1940.next.1, %bb.cx ]
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %.013.i.i382 ; 2 uses
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !3
  %i.adf = zext i32 %i.ade to i64
  %i.adg = mul nuw nsw i64 %i.adf, 10
  %i.adh = add nuw nsw i64 %i.adg, %.01112.i.i383 ; 2 uses
  %i.adi = trunc i64 %i.adh to i32
  store i32 %i.adi, ptr %i.add, align 4, !tbaa !3
  %i.adj = lshr i64 %i.adh, 32
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %.013.i.i382
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 4 ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !3
  %i.adn = zext i32 %i.adm to i64
  %i.ado = mul nuw nsw i64 %i.adn, 10
  %i.adp = add nuw nsw i64 %i.ado, %i.adj         ; 2 uses
  %i.adq = trunc i64 %i.adp to i32
  store i32 %i.adq, ptr %i.adl, align 4, !tbaa !3
  %i.adr = lshr i64 %i.adp, 32                    ; 3 uses
  %i.ads = add nuw i64 %.013.i.i382, 2            ; 2 uses
  %niter1940.next.1 = add i64 %niter1940, 2       ; 2 uses
  %niter1940.ncmp.1 = icmp eq i64 %niter1940.next.1, %unroll_iter1939
  br i1 %niter1940.ncmp.1, label %._crit_edge.i.i385.unr-lcssa, label %bb.cx, !llvm.loop !15499

bb.cy:                                            ; preds = %._crit_edge.i.i385
  %i.adt = add i64 %i.acs, 1                      ; 3 uses
  %i.adu = load i64, ptr %i.k, align 8, !tbaa !15464
  %i.adv = icmp ugt i64 %i.adt, %i.adu
  br i1 %i.adv, label %bb.cz, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i387

bb.cz:                                            ; preds = %bb.cy
  %i.adw = load ptr, ptr %i.l, align 8, !tbaa !15461
  invoke void %i.adw(ptr noundef nonnull align 8 dereferenceable(164) %7, i64 noundef %i.adt)
          to label %.noexc392 unwind label %.loopexit902, !inline_history !15500

.noexc392:                                        ; preds = %bb.cz
  %.pre.i.i.i389 = load i64, ptr %i.m, align 8, !tbaa !15472 ; 2 uses
  %.pre2.i.i.i390 = add i64 %.pre.i.i.i389, 1
  %.pre.i391 = load ptr, ptr %7, align 8, !tbaa !15463
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i387

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i387: ; preds = %.noexc392, %bb.cy
  %i.adx = phi ptr [ %i.act, %bb.cy ], [ %.pre.i391, %.noexc392 ]
  %.pre-phi.i.i.i388 = phi i64 [ %i.adt, %bb.cy ], [ %.pre2.i.i.i390, %.noexc392 ]
  %i.ady = phi i64 [ %i.acs, %bb.cy ], [ %.pre.i.i.i389, %.noexc392 ]
  store i64 %.pre-phi.i.i.i388, ptr %i.m, align 8, !tbaa !15472
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %i.ady
  store i32 %i.adc, ptr %i.adz, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i387, %._crit_edge.i.i385, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit379
  br i1 %.not97, label %.backedge.backedge, label %bb.da

.backedge.backedge:                               ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393, %bb.da, %._crit_edge.i.i399, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i401
  br label %.backedge, !llvm.loop !15503

bb.da:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit393
  %i.aea = load i64, ptr %.289.sroa.gep513, align 8, !tbaa !15472 ; 7 uses
  %.not14.i.i394 = icmp eq i64 %i.aea, 0
  br i1 %.not14.i.i394, label %.backedge.backedge, label %.lr.ph.i.i395

.lr.ph.i.i395:                                    ; preds = %bb.da
  %i.aeb = load ptr, ptr %.289, align 8, !tbaa !15463 ; 4 uses
  %xtraiter1942 = and i64 %i.aea, 1
  %i.aec = icmp eq i64 %i.aea, 1
  br i1 %i.aec, label %.epil.preheader1941, label %.lr.ph.i.i395.new

.lr.ph.i.i395.new:                                ; preds = %.lr.ph.i.i395
  %unroll_iter1946 = and i64 %i.aea, -2
  br label %bb.db

._crit_edge.i.i399.unr-lcssa:                     ; preds = %bb.db
  %lcmp.mod1943.not = icmp eq i64 %xtraiter1942, 0
  br i1 %lcmp.mod1943.not, label %._crit_edge.i.i399, label %.epil.preheader1941

.epil.preheader1941:                              ; preds = %._crit_edge.i.i399.unr-lcssa, %.lr.ph.i.i395
  %.013.i.i396.epil.init = phi i64 [ 0, %.lr.ph.i.i395 ], [ %i.afa, %._crit_edge.i.i399.unr-lcssa ]
  %.01112.i.i397.epil.init = phi i64 [ 0, %.lr.ph.i.i395 ], [ %i.aez, %._crit_edge.i.i399.unr-lcssa ]
  %lcmp.mod1945 = trunc i64 %i.aea to i1
  call void @llvm.assume(i1 %lcmp.mod1945)
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %.013.i.i396.epil.init ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !3
  %i.aef = zext i32 %i.aee to i64
  %i.aeg = mul nuw nsw i64 %i.aef, 10
  %i.aeh = add nuw nsw i64 %i.aeg, %.01112.i.i397.epil.init ; 2 uses
  %i.aei = trunc i64 %i.aeh to i32
  store i32 %i.aei, ptr %i.aed, align 4, !tbaa !3
  %i.aej = lshr i64 %i.aeh, 32
  br label %._crit_edge.i.i399

._crit_edge.i.i399:                               ; preds = %._crit_edge.i.i399.unr-lcssa, %.epil.preheader1941
  %.lcssa1842 = phi i64 [ %i.aez, %._crit_edge.i.i399.unr-lcssa ], [ %i.aej, %.epil.preheader1941 ] ; 2 uses
  %i.aek = trunc nuw nsw i64 %.lcssa1842 to i32
  %.not.i.i400 = icmp eq i64 %.lcssa1842, 0
  br i1 %.not.i.i400, label %.backedge.backedge, label %bb.dc

bb.db:                                            ; preds = %bb.db, %.lr.ph.i.i395.new
  %.013.i.i396 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %i.afa, %bb.db ] ; 3 uses
  %.01112.i.i397 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %i.aez, %bb.db ]
  %niter1947 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %niter1947.next.1, %bb.db ]
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %.013.i.i396 ; 2 uses
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !3
  %i.aen = zext i32 %i.aem to i64
  %i.aeo = mul nuw nsw i64 %i.aen, 10
  %i.aep = add nuw nsw i64 %i.aeo, %.01112.i.i397 ; 2 uses
  %i.aeq = trunc i64 %i.aep to i32
  store i32 %i.aeq, ptr %i.ael, align 4, !tbaa !3
  %i.aer = lshr i64 %i.aep, 32
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %.013.i.i396
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 4 ; 2 uses
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !3
  %i.aev = zext i32 %i.aeu to i64
  %i.aew = mul nuw nsw i64 %i.aev, 10
  %i.aex = add nuw nsw i64 %i.aew, %i.aer         ; 2 uses
  %i.aey = trunc i64 %i.aex to i32
  store i32 %i.aey, ptr %i.aet, align 4, !tbaa !3
  %i.aez = lshr i64 %i.aex, 32                    ; 3 uses
  %i.afa = add nuw i64 %.013.i.i396, 2            ; 2 uses
  %niter1947.next.1 = add i64 %niter1947, 2       ; 2 uses
  %niter1947.ncmp.1 = icmp eq i64 %niter1947.next.1, %unroll_iter1946
  br i1 %niter1947.ncmp.1, label %._crit_edge.i.i399.unr-lcssa, label %bb.db, !llvm.loop !15499

bb.dc:                                            ; preds = %._crit_edge.i.i399
  %i.afb = add i64 %i.aea, 1                      ; 3 uses
  %i.afc = load i64, ptr %.289.sroa.gep522, align 8, !tbaa !15464
  %i.afd = icmp ugt i64 %i.afb, %i.afc
  br i1 %i.afd, label %bb.dd, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i401

bb.dd:                                            ; preds = %bb.dc
  %i.afe = load ptr, ptr %.289.sroa.gep525, align 8, !tbaa !15461
  invoke void %i.afe(ptr noundef nonnull align 8 dereferenceable(164) %.289, i64 noundef %i.afb)
          to label %.noexc406 unwind label %.loopexit902, !inline_history !15500

.noexc406:                                        ; preds = %bb.dd
  %.pre.i.i.i403 = load i64, ptr %.289.sroa.gep513, align 8, !tbaa !15472 ; 2 uses
  %.pre2.i.i.i404 = add i64 %.pre.i.i.i403, 1
  %.pre.i405 = load ptr, ptr %.289, align 8, !tbaa !15463
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i401

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i401: ; preds = %.noexc406, %bb.dc
  %i.aff = phi ptr [ %i.aeb, %bb.dc ], [ %.pre.i405, %.noexc406 ]
  %.pre-phi.i.i.i402 = phi i64 [ %i.afb, %bb.dc ], [ %.pre2.i.i.i404, %.noexc406 ]
  %i.afg = phi i64 [ %i.aea, %bb.dc ], [ %.pre.i.i.i403, %.noexc406 ]
  store i64 %.pre-phi.i.i.i402, ptr %.289.sroa.gep513, align 8, !tbaa !15472
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %i.afg
  store i32 %i.aek, ptr %i.afh, align 4, !tbaa !3
  br label %.backedge.backedge

bb.de:                                            ; preds = %bb.br
  %i.afi = add i32 %.0541, -1                     ; 4 uses
  %i.afj = load i32, ptr %4, align 4, !tbaa !3
  %i.afk = sub nsw i32 %i.afj, %i.afi
  store i32 %i.afk, ptr %4, align 4, !tbaa !3
  %i.afl = icmp slt i32 %.0541, 1
  br i1 %i.afl, label %bb.df, label %bb.dt

bb.df:                                            ; preds = %bb.de
  %i.afm = icmp eq i32 %.0541, 0
  br i1 %i.afm, label %bb.dg, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440

bb.dg:                                            ; preds = %bb.df
  %i.afn = load i64, ptr %i.h, align 8, !tbaa !15472 ; 8 uses
  %.not14.i.i408 = icmp eq i64 %i.afn, 0
  br i1 %.not14.i.i408, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421, label %.lr.ph.i.i409

.lr.ph.i.i409:                                    ; preds = %bb.dg
  %i.afo = load ptr, ptr %6, align 8, !tbaa !15463 ; 4 uses
  %xtraiter1921 = and i64 %i.afn, 1
  %i.afp = icmp eq i64 %i.afn, 1
  br i1 %i.afp, label %.epil.preheader1920, label %.lr.ph.i.i409.new

.lr.ph.i.i409.new:                                ; preds = %.lr.ph.i.i409
  %unroll_iter1925 = and i64 %i.afn, -2
  br label %bb.dh

._crit_edge.i.i413.unr-lcssa:                     ; preds = %bb.dh
  %lcmp.mod1922.not = icmp eq i64 %xtraiter1921, 0
  br i1 %lcmp.mod1922.not, label %._crit_edge.i.i413, label %.epil.preheader1920

.epil.preheader1920:                              ; preds = %._crit_edge.i.i413.unr-lcssa, %.lr.ph.i.i409
  %.013.i.i410.epil.init = phi i64 [ 0, %.lr.ph.i.i409 ], [ %i.agn, %._crit_edge.i.i413.unr-lcssa ]
  %.01112.i.i411.epil.init = phi i64 [ 0, %.lr.ph.i.i409 ], [ %i.agm, %._crit_edge.i.i413.unr-lcssa ]
  %lcmp.mod1924 = trunc i64 %i.afn to i1
  call void @llvm.assume(i1 %lcmp.mod1924)
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %.013.i.i410.epil.init ; 2 uses
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !3
  %i.afs = zext i32 %i.afr to i64
  %i.aft = mul nuw nsw i64 %i.afs, 10
  %i.afu = add nuw nsw i64 %i.aft, %.01112.i.i411.epil.init ; 2 uses
  %i.afv = trunc i64 %i.afu to i32
  store i32 %i.afv, ptr %i.afq, align 4, !tbaa !3
  %i.afw = lshr i64 %i.afu, 32
  br label %._crit_edge.i.i413

._crit_edge.i.i413:                               ; preds = %._crit_edge.i.i413.unr-lcssa, %.epil.preheader1920
  %.lcssa1864 = phi i64 [ %i.agm, %._crit_edge.i.i413.unr-lcssa ], [ %i.afw, %.epil.preheader1920 ] ; 2 uses
  %i.afx = trunc nuw nsw i64 %.lcssa1864 to i32
  %.not.i.i414 = icmp eq i64 %.lcssa1864, 0
  br i1 %.not.i.i414, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421, label %bb.di

bb.dh:                                            ; preds = %bb.dh, %.lr.ph.i.i409.new
  %.013.i.i410 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %i.agn, %bb.dh ] ; 3 uses
  %.01112.i.i411 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %i.agm, %bb.dh ]
  %niter1926 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %niter1926.next.1, %bb.dh ]
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %.013.i.i410 ; 2 uses
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !3
  %i.aga = zext i32 %i.afz to i64
  %i.agb = mul nuw nsw i64 %i.aga, 10
  %i.agc = add nuw nsw i64 %i.agb, %.01112.i.i411 ; 2 uses
  %i.agd = trunc i64 %i.agc to i32
  store i32 %i.agd, ptr %i.afy, align 4, !tbaa !3
  %i.age = lshr i64 %i.agc, 32
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %.013.i.i410
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 4 ; 2 uses
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !3
  %i.agi = zext i32 %i.agh to i64
  %i.agj = mul nuw nsw i64 %i.agi, 10
  %i.agk = add nuw nsw i64 %i.agj, %i.age         ; 2 uses
  %i.agl = trunc i64 %i.agk to i32
  store i32 %i.agl, ptr %i.agg, align 4, !tbaa !3
  %i.agm = lshr i64 %i.agk, 32                    ; 3 uses
  %i.agn = add nuw i64 %.013.i.i410, 2            ; 2 uses
  %niter1926.next.1 = add i64 %niter1926, 2       ; 2 uses
  %niter1926.ncmp.1 = icmp eq i64 %niter1926.next.1, %unroll_iter1925
  br i1 %niter1926.ncmp.1, label %._crit_edge.i.i413.unr-lcssa, label %bb.dh, !llvm.loop !15499

bb.di:                                            ; preds = %._crit_edge.i.i413
  %i.ago = add i64 %i.afn, 1                      ; 3 uses
  %i.agp = load i64, ptr %i.f, align 8, !tbaa !15464
  %i.agq = icmp ugt i64 %i.ago, %i.agp
  br i1 %i.agq, label %bb.dj, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i415

bb.dj:                                            ; preds = %bb.di
  %i.agr = load ptr, ptr %i.g, align 8, !tbaa !15461
  invoke void %i.agr(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef %i.ago)
          to label %.noexc420 unwind label %bb.dq, !inline_history !15500

.noexc420:                                        ; preds = %bb.dj
  %.pre.i.i.i417 = load i64, ptr %i.h, align 8, !tbaa !15472 ; 2 uses
  %.pre2.i.i.i418 = add i64 %.pre.i.i.i417, 1
  %.pre.i419 = load ptr, ptr %6, align 8, !tbaa !15463
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i415

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i415: ; preds = %.noexc420, %bb.di
  %i.ags = phi ptr [ %i.afo, %bb.di ], [ %.pre.i419, %.noexc420 ]
  %.pre-phi.i.i.i416 = phi i64 [ %i.ago, %bb.di ], [ %.pre2.i.i.i418, %.noexc420 ] ; 2 uses
  %i.agt = phi i64 [ %i.afn, %bb.di ], [ %.pre.i.i.i417, %.noexc420 ]
  store i64 %.pre-phi.i.i.i416, ptr %i.h, align 8, !tbaa !15472
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.agt
  store i32 %i.afx, ptr %i.agu, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i415, %._crit_edge.i.i413, %bb.dg
  %i.agv = phi i64 [ %.pre-phi.i.i.i416, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i415 ], [ %i.afn, %._crit_edge.i.i413 ], [ 0, %bb.dg ] ; 2 uses
  %i.agw = load i64, ptr %i.c, align 8, !tbaa !15472
  %i.agx = trunc i64 %i.agw to i32
  %i.agy = load i32, ptr %i.e, align 8, !tbaa !15465 ; 3 uses
  %i.agz = add nsw i32 %i.agy, %i.agx             ; 3 uses
  %i.aha = trunc i64 %i.agv to i32
  %i.ahb = load i32, ptr %i.j, align 8, !tbaa !15465 ; 3 uses
  %i.ahc = add nsw i32 %i.ahb, %i.aha             ; 4 uses
  %i.ahd = add nsw i32 %i.agz, 1
  %i.ahe = icmp slt i32 %i.ahd, %i.ahc
  br i1 %i.ahe, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dk

bb.dk:                                            ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421
  %i.ahf = icmp sgt i32 %i.agz, %i.ahc
  br i1 %i.ahf, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ahg = call noundef i32 @llvm.smin.i32(i32 %i.agy, i32 %i.ahb) ; 2 uses
  %.not.not.not53.i422 = icmp sgt i32 %i.ahc, %i.ahg
  br i1 %.not.not.not53.i422, label %.lr.ph.i424, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440

.lr.ph.i424:                                      ; preds = %bb.dl
  %i.ahh = load ptr, ptr %5, align 8
  %i.ahi = load ptr, ptr %6, align 8
  %i.ahj = sext i32 %i.ahb to i64                 ; 3 uses
  %sext.i425 = shl i64 %i.agv, 32
  %i.ahk = ashr exact i64 %sext.i425, 32
  %i.ahl = add nsw i64 %i.ahk, %i.ahj
  %i.ahm = sext i32 %i.ahc to i64
  %i.ahn = sext i32 %i.agz to i64
  %i.aho = sext i32 %i.agy to i64                 ; 2 uses
  %i.ahp = sext i32 %i.ahg to i64
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dp, %.lr.ph.i424
  %indvars.iv.i426 = phi i64 [ %i.ahl, %.lr.ph.i424 ], [ %indvars.iv.next.i428, %bb.dp ] ; 5 uses
  %.03554.i427 = phi i64 [ 0, %.lr.ph.i424 ], [ %i.aih, %bb.dp ] ; 2 uses
  %indvars.iv.next.i428 = add nsw i64 %indvars.iv.i426, -1 ; 4 uses
  %.not.i.i429 = icmp sgt i64 %indvars.iv.i426, %i.aho
  %i.ahq = icmp sle i64 %indvars.iv.i426, %i.ahn
  %or.cond.i430 = and i1 %.not.i.i429, %i.ahq
  br i1 %or.cond.i430, label %bb.dn, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434

bb.dn:                                            ; preds = %bb.dm
  %i.ahr = sub nsw i64 %indvars.iv.next.i428, %i.aho
  %i.ahs = getelementptr inbounds [4 x i8], ptr %i.ahh, i64 %i.ahr
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !3
  %i.ahu = zext i32 %i.aht to i64
  %i.ahv = shl nuw nsw i64 %i.ahu, 1
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434: ; preds = %bb.dm, %bb.dn
  %i.ahw = phi i64 [ %i.ahv, %bb.dn ], [ 0, %bb.dm ] ; 2 uses
  %.not.i45.i435 = icmp sgt i64 %indvars.iv.i426, %i.ahj
  %i.ahx = icmp sle i64 %indvars.iv.i426, %i.ahm
  %or.cond51.i436 = and i1 %.not.i45.i435, %i.ahx
  br i1 %or.cond51.i436, label %bb.do, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437

bb.do:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434
  %i.ahy = sub nsw i64 %indvars.iv.next.i428, %i.ahj
  %i.ahz = getelementptr inbounds [4 x i8], ptr %i.ahi, i64 %i.ahy
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !3
  %i.aib = zext i32 %i.aia to i64
  %i.aic = or disjoint i64 %.03554.i427, %i.aib
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437: ; preds = %bb.do, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434
  %i.aid = phi i64 [ %i.aic, %bb.do ], [ %.03554.i427, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i434 ] ; 2 uses
  %i.aie = icmp ugt i64 %i.ahw, %i.aid
  br i1 %i.aie, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dp

bb.dp:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437
  %i.aif = sub nuw nsw i64 %i.aid, %i.ahw         ; 2 uses
  %i.aig = icmp ult i64 %i.aif, 2
  %i.aih = shl nuw nsw i64 %i.aif, 32
  %.not.not.not.i438 = icmp sgt i64 %indvars.iv.next.i428, %i.ahp
  %or.cond563 = select i1 %i.aig, i1 %.not.not.not.i438, i1 false
  br i1 %or.cond563, label %bb.dm, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440, !llvm.loop !15498

bb.dq:                                            ; preds = %bb.dr, %bb.dj
  %i.aii = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440: ; preds = %bb.dp, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437, %bb.dl, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421, %bb.dk, %bb.df
  %.0542 = phi i8 [ 48, %bb.df ], [ 48, %bb.dl ], [ 49, %bb.dk ], [ 48, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit421 ], [ 48, %bb.dp ], [ 49, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i437 ]
  %i.aij = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aik = load i64, ptr %i.aij, align 8, !tbaa !1385 ; 2 uses
  %i.ail = add i64 %i.aik, 1                      ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ain = load i64, ptr %i.aim, align 8, !tbaa !1386
  %i.aio = icmp ugt i64 %i.ail, %i.ain
  br i1 %i.aio, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440
  %i.aip = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !1387
  invoke void %i.aiq(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ail)
          to label %.noexc442 unwind label %bb.dq, !inline_history !15504

.noexc442:                                        ; preds = %bb.dr
  %.pre.i441 = load i64, ptr %i.aij, align 8, !tbaa !1385 ; 2 uses
  %.pre2.i = add i64 %.pre.i441, 1
  br label %bb.ds

bb.ds:                                            ; preds = %.noexc442, %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440
  %.pre-phi.i = phi i64 [ %i.ail, %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440 ], [ %.pre2.i, %.noexc442 ]
  %i.air = phi i64 [ %i.aik, %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit440 ], [ %.pre.i441, %.noexc442 ]
  %i.ais = load ptr, ptr %3, align 8, !tbaa !1383
  store i64 %.pre-phi.i, ptr %i.aij, align 8, !tbaa !1385
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.air
  store i8 %.0542, ptr %i.ait, align 1, !tbaa !13
  br label %.loopexit

bb.dt:                                            ; preds = %bb.de
  %i.aiu = zext nneg i32 %.0541 to i64            ; 4 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aiw = load i64, ptr %i.aiv, align 8, !tbaa !1386 ; 2 uses
  %i.aix = icmp ult i64 %i.aiw, %i.aiu
  br i1 %i.aix, label %bb.du, label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit445

bb.du:                                            ; preds = %bb.dt
  %i.aiy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !1387
  invoke void %i.aiz(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aiu)
          to label %.noexc444 unwind label %bb.bm, !inline_history !15502

.noexc444:                                        ; preds = %bb.du
  %.pre.i443 = load i64, ptr %i.aiv, align 8, !tbaa !1386
  br label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit445

_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit445: ; preds = %bb.dt, %.noexc444
  %i.aja = phi i64 [ %i.aiw, %bb.dt ], [ %.pre.i443, %.noexc444 ]
  %i.ajb = call noundef i64 @llvm.umin.i64(i64 %i.aiu, i64 %i.aja)
  %i.ajc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.ajb, ptr %i.ajc, align 8, !tbaa !1385
  %.not622 = icmp eq i32 %.0541, 1                ; 2 uses
  br i1 %.not622, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit445
  %wide.trip.count = zext nneg i32 %i.afi to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459, %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit445
  %i.ajd = invoke noundef i32 @_ZN3fmt3v116detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %5, ptr noundef nonnull align 8 dereferenceable(164) %6)
          to label %bb.ea unwind label %bb.ek     ; 6 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459 ] ; 2 uses
  %i.aje = invoke noundef i32 @_ZN3fmt3v116detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %5, ptr noundef nonnull align 8 dereferenceable(164) %6)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %.lr.ph
  %i.ajf = trunc i32 %i.aje to i8
  %i.ajg = add i8 %i.ajf, 48
  %i.ajh = load ptr, ptr %3, align 8, !tbaa !1383
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %indvars.iv
  store i8 %i.ajg, ptr %i.aji, align 1, !tbaa !13
  %i.ajj = load i64, ptr %i.c, align 8, !tbaa !15472 ; 7 uses
  %.not14.i.i446 = icmp eq i64 %i.ajj, 0
  br i1 %.not14.i.i446, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459, label %.lr.ph.i.i447

.lr.ph.i.i447:                                    ; preds = %bb.dv
  %i.ajk = load ptr, ptr %5, align 8, !tbaa !15463 ; 4 uses
  %xtraiter1914 = and i64 %i.ajj, 1
  %i.ajl = icmp eq i64 %i.ajj, 1
  br i1 %i.ajl, label %.epil.preheader1913, label %.lr.ph.i.i447.new

.lr.ph.i.i447.new:                                ; preds = %.lr.ph.i.i447
  %unroll_iter1918 = and i64 %i.ajj, -2
  br label %bb.dw

._crit_edge.i.i451.unr-lcssa:                     ; preds = %bb.dw
  %lcmp.mod1915.not = icmp eq i64 %xtraiter1914, 0
  br i1 %lcmp.mod1915.not, label %._crit_edge.i.i451, label %.epil.preheader1913

.epil.preheader1913:                              ; preds = %._crit_edge.i.i451.unr-lcssa, %.lr.ph.i.i447
  %.013.i.i448.epil.init = phi i64 [ 0, %.lr.ph.i.i447 ], [ %i.akj, %._crit_edge.i.i451.unr-lcssa ]
  %.01112.i.i449.epil.init = phi i64 [ 0, %.lr.ph.i.i447 ], [ %i.aki, %._crit_edge.i.i451.unr-lcssa ]
  %lcmp.mod1917 = trunc i64 %i.ajj to i1
  call void @llvm.assume(i1 %lcmp.mod1917)
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %.013.i.i448.epil.init ; 2 uses
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !3
  %i.ajo = zext i32 %i.ajn to i64
  %i.ajp = mul nuw nsw i64 %i.ajo, 10
  %i.ajq = add nuw nsw i64 %i.ajp, %.01112.i.i449.epil.init ; 2 uses
  %i.ajr = trunc i64 %i.ajq to i32
  store i32 %i.ajr, ptr %i.ajm, align 4, !tbaa !3
  %i.ajs = lshr i64 %i.ajq, 32
  br label %._crit_edge.i.i451

._crit_edge.i.i451:                               ; preds = %._crit_edge.i.i451.unr-lcssa, %.epil.preheader1913
  %.lcssa1871 = phi i64 [ %i.aki, %._crit_edge.i.i451.unr-lcssa ], [ %i.ajs, %.epil.preheader1913 ] ; 2 uses
  %i.ajt = trunc nuw nsw i64 %.lcssa1871 to i32
  %.not.i.i452 = icmp eq i64 %.lcssa1871, 0
  br i1 %.not.i.i452, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459, label %bb.dx

bb.dw:                                            ; preds = %bb.dw, %.lr.ph.i.i447.new
  %.013.i.i448 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %i.akj, %bb.dw ] ; 3 uses
  %.01112.i.i449 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %i.aki, %bb.dw ]
  %niter1919 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %niter1919.next.1, %bb.dw ]
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %.013.i.i448 ; 2 uses
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !3
  %i.ajw = zext i32 %i.ajv to i64
  %i.ajx = mul nuw nsw i64 %i.ajw, 10
  %i.ajy = add nuw nsw i64 %i.ajx, %.01112.i.i449 ; 2 uses
  %i.ajz = trunc i64 %i.ajy to i32
  store i32 %i.ajz, ptr %i.aju, align 4, !tbaa !3
  %i.aka = lshr i64 %i.ajy, 32
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %.013.i.i448
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 4 ; 2 uses
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !3
  %i.ake = zext i32 %i.akd to i64
  %i.akf = mul nuw nsw i64 %i.ake, 10
  %i.akg = add nuw nsw i64 %i.akf, %i.aka         ; 2 uses
  %i.akh = trunc i64 %i.akg to i32
  store i32 %i.akh, ptr %i.akc, align 4, !tbaa !3
  %i.aki = lshr i64 %i.akg, 32                    ; 3 uses
  %i.akj = add nuw i64 %.013.i.i448, 2            ; 2 uses
  %niter1919.next.1 = add i64 %niter1919, 2       ; 2 uses
  %niter1919.ncmp.1 = icmp eq i64 %niter1919.next.1, %unroll_iter1918
  br i1 %niter1919.ncmp.1, label %._crit_edge.i.i451.unr-lcssa, label %bb.dw, !llvm.loop !15499

bb.dx:                                            ; preds = %._crit_edge.i.i451
  %i.akk = add i64 %i.ajj, 1                      ; 3 uses
  %i.akl = load i64, ptr %i.a, align 8, !tbaa !15464
  %i.akm = icmp ugt i64 %i.akk, %i.akl
  br i1 %i.akm, label %bb.dy, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i453

bb.dy:                                            ; preds = %bb.dx
  %i.akn = load ptr, ptr %i.b, align 8, !tbaa !15461
  invoke void %i.akn(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef %i.akk)
          to label %.noexc458 unwind label %bb.dz, !inline_history !15500

.noexc458:                                        ; preds = %bb.dy
  %.pre.i.i.i455 = load i64, ptr %i.c, align 8, !tbaa !15472 ; 2 uses
  %.pre2.i.i.i456 = add i64 %.pre.i.i.i455, 1
  %.pre.i457 = load ptr, ptr %5, align 8, !tbaa !15463
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i453

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i453: ; preds = %.noexc458, %bb.dx
  %i.ako = phi ptr [ %i.ajk, %bb.dx ], [ %.pre.i457, %.noexc458 ]
  %.pre-phi.i.i.i454 = phi i64 [ %i.akk, %bb.dx ], [ %.pre2.i.i.i456, %.noexc458 ]
  %i.akp = phi i64 [ %i.ajj, %bb.dx ], [ %.pre.i.i.i455, %.noexc458 ]
  store i64 %.pre-phi.i.i.i454, ptr %i.c, align 8, !tbaa !15472
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.akp
  store i32 %i.ajt, ptr %i.akq, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit459:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i453, %._crit_edge.i.i451, %bb.dv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15505

bb.dz:                                            ; preds = %bb.dy, %.lr.ph
  %i.akr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ea:                                            ; preds = %._crit_edge
  %i.aks = load i64, ptr %i.c, align 8, !tbaa !15472
  %i.akt = trunc i64 %i.aks to i32
  %i.aku = load i32, ptr %i.e, align 8, !tbaa !15465 ; 3 uses
  %i.akv = add nsw i32 %i.aku, %i.akt             ; 3 uses
  %i.akw = load i64, ptr %i.h, align 8, !tbaa !15472 ; 2 uses
  %i.akx = trunc i64 %i.akw to i32
  %i.aky = load i32, ptr %i.j, align 8, !tbaa !15465 ; 3 uses
  %i.akz = add nsw i32 %i.aky, %i.akx             ; 4 uses
  %i.ala = add nsw i32 %i.akv, 1
  %i.alb = icmp slt i32 %i.ala, %i.akz
  br i1 %i.alb, label %.thread555, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.alc = icmp sgt i32 %i.akv, %i.akz
  br i1 %i.alc, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit478, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ald = call noundef i32 @llvm.smin.i32(i32 %i.aku, i32 %i.aky) ; 2 uses
  %.not.not.not53.i460 = icmp sgt i32 %i.akz, %i.ald
  br i1 %.not.not.not53.i460, label %.lr.ph.i462, label %bb.ei

.lr.ph.i462:                                      ; preds = %bb.ec
  %i.ale = load ptr, ptr %5, align 8
  %i.alf = load ptr, ptr %6, align 8
  %i.alg = sext i32 %i.aky to i64                 ; 3 uses
  %sext.i463 = shl i64 %i.akw, 32
  %i.alh = ashr exact i64 %sext.i463, 32
  %i.ali = add nsw i64 %i.alh, %i.alg
  %i.alj = sext i32 %i.akz to i64
  %i.alk = sext i32 %i.akv to i64
  %i.all = sext i32 %i.aku to i64                 ; 2 uses
  %i.alm = sext i32 %i.ald to i64
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eh, %.lr.ph.i462
  %indvars.iv.i464 = phi i64 [ %i.ali, %.lr.ph.i462 ], [ %indvars.iv.next.i466, %bb.eh ] ; 5 uses
  %.03554.i465 = phi i64 [ 0, %.lr.ph.i462 ], [ %i.ame, %bb.eh ] ; 2 uses
  %indvars.iv.next.i466 = add nsw i64 %indvars.iv.i464, -1 ; 4 uses
  %.not.i.i467 = icmp sgt i64 %indvars.iv.i464, %i.all
  %i.aln = icmp sle i64 %indvars.iv.i464, %i.alk
  %or.cond.i468 = and i1 %.not.i.i467, %i.aln
  br i1 %or.cond.i468, label %bb.ee, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472

bb.ee:                                            ; preds = %bb.ed
  %i.alo = sub nsw i64 %indvars.iv.next.i466, %i.all
  %i.alp = getelementptr inbounds [4 x i8], ptr %i.ale, i64 %i.alo
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !3
  %i.alr = zext i32 %i.alq to i64
  %i.als = shl nuw nsw i64 %i.alr, 1
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472: ; preds = %bb.ed, %bb.ee
  %i.alt = phi i64 [ %i.als, %bb.ee ], [ 0, %bb.ed ] ; 3 uses
  %.not.i45.i473 = icmp sgt i64 %indvars.iv.i464, %i.alg
  %i.alu = icmp sle i64 %indvars.iv.i464, %i.alj
  %or.cond51.i474 = and i1 %.not.i45.i473, %i.alu
  br i1 %or.cond51.i474, label %bb.ef, label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i475

bb.ef:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472
  %i.alv = sub nsw i64 %indvars.iv.next.i466, %i.alg
  %i.alw = getelementptr inbounds [4 x i8], ptr %i.alf, i64 %i.alv
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !3
  %i.aly = zext i32 %i.alx to i64
  %i.alz = or disjoint i64 %.03554.i465, %i.aly
  br label %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i475

_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i475: ; preds = %bb.ef, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472
  %i.ama = phi i64 [ %i.alz, %bb.ef ], [ %.03554.i465, %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit44.i472 ] ; 3 uses
  %i.amb = icmp ugt i64 %i.alt, %i.ama
  br i1 %i.amb, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit478, label %bb.eg

bb.eg:                                            ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i475
  %i.amc = sub nuw nsw i64 %i.ama, %i.alt         ; 2 uses
  %i.amd = icmp ugt i64 %i.amc, 1
  br i1 %i.amd, label %.thread555, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ame = shl nuw nsw i64 %i.amc, 32
  %.not.not.not.i476 = icmp sgt i64 %indvars.iv.next.i466, %i.alm
  br i1 %.not.not.not.i476, label %bb.ed, label %.thread.loopexit.i477, !llvm.loop !15498

.thread.loopexit.i477:                            ; preds = %bb.eh
  %i.amf = icmp ne i64 %i.ama, %i.alt
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ec, %.thread.loopexit.i477
  %.4.i461.ph = phi i1 [ false, %bb.ec ], [ %i.amf, %.thread.loopexit.i477 ]
  %i.amg = and i32 %i.ajd, 1
  %.not100 = icmp eq i32 %i.amg, 0
  %or.cond115 = or i1 %.not100, %.4.i461.ph
  br i1 %or.cond115, label %.thread555, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit478

_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit478: ; preds = %_ZNK3fmt3v116detail6bigint9get_bigitEi.exit46.i475, %bb.eb, %bb.ei
  %i.amh = icmp eq i32 %i.ajd, 9
  br i1 %i.amh, label %bb.ej, label %bb.es

bb.ej:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit478
  %i.ami = load ptr, ptr %3, align 8, !tbaa !1383
  %i.amj = sext i32 %i.afi to i64
  %i.amk = getelementptr inbounds i8, ptr %i.ami, i64 %i.amj
  store i8 58, ptr %i.amk, align 1, !tbaa !13
  br i1 %.not622, label %.critedge, label %.lr.ph620

.lr.ph620:                                        ; preds = %bb.ej, %bb.el
  %indvars.iv669 = phi i64 [ %indvars.iv.next670, %bb.el ], [ %i.aiu, %bb.ej ] ; 3 uses
  %indvars.iv.next670 = add nsw i64 %indvars.iv669, -1 ; 2 uses
  %i.aml = load ptr, ptr %3, align 8, !tbaa !1383
  %i.amm = and i64 %indvars.iv.next670, 4294967295
  %i.amn = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.amm ; 2 uses
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !13
  %i.amp = icmp eq i8 %i.amo, 58
  br i1 %i.amp, label %bb.el, label %.critedge

.critedge:                                        ; preds = %.lr.ph620, %bb.el, %bb.ej
  %i.amq = load ptr, ptr %3, align 8, !tbaa !1383 ; 2 uses
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !13
  %i.ams = icmp eq i8 %i.amr, 58
  br i1 %i.ams, label %bb.em, label %.loopexit

bb.ek:                                            ; preds = %._crit_edge
  %i.amt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.el:                                            ; preds = %.lr.ph620
  store i8 48, ptr %i.amn, align 1, !tbaa !13
  %i.amu = load ptr, ptr %3, align 8, !tbaa !1383
  %i.amv = getelementptr i8, ptr %i.amu, i64 %indvars.iv669
  %i.amw = getelementptr i8, ptr %i.amv, i64 -2   ; 2 uses
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !13
  %i.amy = add i8 %i.amx, 1
  store i8 %i.amy, ptr %i.amw, align 1, !tbaa !13
  %i.amz = trunc nuw i64 %indvars.iv669 to i32
  %i.ana = icmp sgt i32 %i.amz, 2
  br i1 %i.ana, label %.lr.ph620, label %.critedge, !llvm.loop !15506

bb.em:                                            ; preds = %.critedge
  store i8 49, ptr %i.amq, align 1, !tbaa !13
  %i.anb = and i32 %1, 4
  %.not101 = icmp eq i32 %i.anb, 0
  br i1 %.not101, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.anc = load i64, ptr %i.ajc, align 8, !tbaa !1385 ; 2 uses
  %i.and = add i64 %i.anc, 1                      ; 3 uses
  %i.ane = load i64, ptr %i.aiv, align 8, !tbaa !1386
  %i.anf = icmp ugt i64 %i.and, %i.ane
  br i1 %i.anf, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.ang = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !1387
  invoke void %i.anh(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.and)
          to label %.noexc482 unwind label %bb.eq, !inline_history !15504

.noexc482:                                        ; preds = %bb.eo
  %.pre.i480 = load i64, ptr %i.ajc, align 8, !tbaa !1385 ; 2 uses
  %.pre2.i481 = add i64 %.pre.i480, 1
  br label %bb.ep

end_hunk_2
begin_hunk_3_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a

.body:                                            ; preds = %.loopexit902, %.loopexit.split-lp903, %.loopexit569, %.loopexit.split-lp, %bb.bm, %bb.bq, %bb.dq, %bb.dz, %bb.ch, %bb.eq, %bb.ek
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %i.anl, %bb.eq ], [ %i.vp, %bb.bm ], [ %i.aii, %bb.dq ], [ %i.akr, %bb.dz ], [ %i.vw, %bb.bq ], [ %i.zk, %bb.ch ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.amt, %bb.ek ], [ %lpad.loopexit, %.loopexit569 ], [ %lpad.loopexit904, %.loopexit902 ], [ %lpad.loopexit.split-lp905, %.loopexit.split-lp903 ]
  %i.any = load ptr, ptr %8, align 8, !tbaa !15463 ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %i.any, %i.s
  br i1 %.not.i.i.i490, label %_ZN3fmt3v116detail6bigintD2Ev.exit491, label %bb.ex

bb.ex:                                            ; preds = %.body
  call void @free(ptr noundef %i.any) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit491

_ZN3fmt3v116detail6bigintD2Ev.exit491:            ; preds = %bb.ex, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.anz = load ptr, ptr %7, align 8, !tbaa !15463 ; 2 uses
  %.not.i.i.i492 = icmp eq ptr %i.anz, %i.n
  br i1 %.not.i.i.i492, label %_ZN3fmt3v116detail6bigintD2Ev.exit493, label %bb.ey

bb.ey:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit491
  call void @free(ptr noundef %i.anz) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit493

_ZN3fmt3v116detail6bigintD2Ev.exit493:            ; preds = %bb.ey, %_ZN3fmt3v116detail6bigintD2Ev.exit491
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.aoa = load ptr, ptr %6, align 8, !tbaa !15463 ; 2 uses
  %.not.i.i.i494 = icmp eq ptr %i.aoa, %i.i
  br i1 %.not.i.i.i494, label %_ZN3fmt3v116detail6bigintD2Ev.exit495, label %bb.ez

bb.ez:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit493
  call void @free(ptr noundef %i.aoa) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit495

_ZN3fmt3v116detail6bigintD2Ev.exit495:            ; preds = %bb.ez, %_ZN3fmt3v116detail6bigintD2Ev.exit493
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.aob = load ptr, ptr %5, align 8, !tbaa !15463 ; 2 uses
  %.not.i.i.i496 = icmp eq ptr %i.aob, %i.d
  br i1 %.not.i.i.i496, label %_ZN3fmt3v116detail6bigintD2Ev.exit497, label %bb.fa

bb.fa:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit495
  call void @free(ptr noundef %i.aob) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit497

_ZN3fmt3v116detail6bigintD2Ev.exit497:            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit495, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %.pn105.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1112format_errorE, i64 16), ptr %0, align 8, !tbaa !78
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #17

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3fmt3v1112format_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15463
  store i32 1, ptr %i.b, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15464
  %.not8.i.i.not = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.not, label %bb.c, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15461
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef 1), !inline_history !15507
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !15464
  %i.g = icmp ne i64 %.pre.i.i.i.i, 0
  %i.h = zext i1 %i.g to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit:          ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ 1, %bb.b ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !15472
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.k, align 8, !tbaa !15465
  br label %_ZN3fmt3v116detail6bigintlSEi.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = load ptr, ptr %0, align 8, !tbaa !15463
  store i32 5, ptr %i.n, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15464
  %.not8.i.i14.not = icmp eq i64 %i.p, 0
  br i1 %.not8.i.i14.not, label %bb.e, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15461
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef 1), !inline_history !15507
  %.pre.i.i.i.i15 = load i64, ptr %i.o, align 8, !tbaa !15464
  %i.s = icmp ne i64 %.pre.i.i.i.i15, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16:        ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !15472
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !15465
  %.019 = ashr i32 %i.m, 1                        ; 2 uses
  %.not20 = icmp eq i32 %.019, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit
  %.021 = phi i32 [ %.019, %.lr.ph ], [ %.0, %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit ] ; 2 uses
  tail call void @_ZN3fmt3v116detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0)
  %i.y = and i32 %.021, %1
  %.not10 = icmp eq i32 %i.y, 0
  br i1 %.not10, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.v, align 8, !tbaa !15472 ; 7 uses
  %.not14.i.i = icmp eq i64 %i.z, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15463 ; 4 uses
  %xtraiter = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.z, -2
  br label %bb.h

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ay, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i.epil.init ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 5
  %i.ag = add nuw nsw i64 %i.af, %.01112.i.i.epil.init ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !3
  %i.ai = lshr i64 %i.ag, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa41 = phi i64 [ %i.ay, %._crit_edge.i.i.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %.lcssa41 to i32
  %.not.i.i17 = icmp eq i64 %.lcssa41, 0
  br i1 %.not.i.i17, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit, label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.az, %bb.h ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ay, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = zext i32 %i.al to i64
  %i.an = mul nuw nsw i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, %.01112.i.i      ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !3
  %i.aq = lshr i64 %i.ao, 32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw nsw i64 %i.au, 5
  %i.aw = add nuw nsw i64 %i.av, %i.aq            ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !3
  %i.ay = lshr i64 %i.aw, 32                      ; 3 uses
  %i.az = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.h, !llvm.loop !15499

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ba = add i64 %i.z, 1                         ; 3 uses
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !15464
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !15461
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ba), !inline_history !15508
  %.pre.i.i.i = load i64, ptr %i.v, align 8, !tbaa !15472 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !15463
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.aa, %bb.i ], [ %.pre.i, %bb.j ]
  %.pre-phi.i.i.i = phi i64 [ %i.ba, %bb.i ], [ %.pre2.i.i.i, %bb.j ]
  %i.bf = phi i64 [ %i.z, %bb.i ], [ %.pre.i.i.i, %bb.j ]
  store i64 %.pre-phi.i.i.i, ptr %i.v, align 8, !tbaa !15472
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store i32 %i.aj, ptr %i.bg, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i, %._crit_edge.i.i, %bb.g, %bb.f
  %.0 = ashr i32 %.021, 1                         ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !15509

._crit_edge.loopexit:                             ; preds = %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !15465
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !15465
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v116detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !15472 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v116detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !15463 ; 3 uses
  %i.bo = sub nsw i32 32, %i.bk                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -32                     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bw, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.bp, align 4, !tbaa !3 ; 2 uses
  %wide.load36 = load <8 x i32>, ptr %i.bq, align 4, !tbaa !3 ; 2 uses
  %wide.load37 = load <8 x i32>, ptr %i.br, align 4, !tbaa !3 ; 2 uses
  %wide.load38 = load <8 x i32>, ptr %i.bs, align 4, !tbaa !3 ; 2 uses
  %i.bt = lshr <8 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bu = lshr <8 x i32> %wide.load36, %broadcast.splat ; 2 uses
  %i.bv = lshr <8 x i32> %wide.load37, %broadcast.splat ; 2 uses
  %i.bw = lshr <8 x i32> %wide.load38, %broadcast.splat ; 3 uses
  %i.bx = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.bt, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.by = shufflevector <8 x i32> %i.bt, <8 x i32> %i.bu, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bz = shufflevector <8 x i32> %i.bu, <8 x i32> %i.bv, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ca = shufflevector <8 x i32> %i.bv, <8 x i32> %i.bw, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.cb = shl <8 x i32> %wide.load, %broadcast.splat35
  %i.cc = shl <8 x i32> %wide.load36, %broadcast.splat35
  %i.cd = shl <8 x i32> %wide.load37, %broadcast.splat35
  %i.ce = shl <8 x i32> %wide.load38, %broadcast.splat35
  %i.cf = add <8 x i32> %i.cb, %i.bx
  %i.cg = add <8 x i32> %i.cc, %i.by
  %i.ch = add <8 x i32> %i.cd, %i.bz
  %i.ci = add <8 x i32> %i.ce, %i.ca
  store <8 x i32> %i.cf, ptr %i.bp, align 4, !tbaa !3
  store <8 x i32> %i.cg, ptr %i.bq, align 4, !tbaa !3
  store <8 x i32> %i.ch, ptr %i.br, align 4, !tbaa !3
  store <8 x i32> %i.ci, ptr %i.bs, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !15510

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i32> %i.bw, i64 7 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cm, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cp, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cm, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3  ; 2 uses
  %i.cm = lshr i32 %i.cl, %i.bo                   ; 2 uses
  %i.cn = shl i32 %i.cl, %i.bk
  %i.co = add i32 %i.cn, %.017.i
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !3
  %i.cp = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cp, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !15511

bb.l:                                             ; preds = %._crit_edge.i
  %i.cq = add i64 %i.bm, 1                        ; 3 uses
  %i.cr = load i64, ptr %i.o, align 8, !tbaa !15464
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !15461
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.cq), !inline_history !15512
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !15472 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !15463
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cv = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cq, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cw = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !15472
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  store i32 %.lcssa, ptr %i.cx, align 4, !tbaa !3
  br label %_ZN3fmt3v116detail6bigintlSEi.exit

_ZN3fmt3v116detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt3v116detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(164) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15472 ; 7 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15465 ; 3 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15472 ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !15465 ; 2 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i94 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i94, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !15501

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i96 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i95 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i96, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i95, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
end_hunk_3
begin_hunk_4_@_ZN3fmt3v116detail6bigint13divmod_assignERKS2_:bb.a
  store <8 x i32> %wide.load110, ptr %i.bd, align 4, !tbaa !3
  store <8 x i32> %wide.load111, ptr %i.be, align 4, !tbaa !3
  store <8 x i32> %wide.load112, ptr %i.bf, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !15514

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1553

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.b, 2147483640            ; 4 uses
  %i.bh = sub nsw i64 %i.an, %n.vec115
  %i.bi = sub nsw i64 %i.am, %n.vec115
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 3 uses
  %i.bj = sub i64 %i.an, %index116
  %i.bk = sub i64 %i.am, %index116
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.bj
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -28
  %wide.load117 = load <8 x i32>, ptr %i.bm, align 4, !tbaa !3
  %i.bn = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.bk
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -28
  store <8 x i32> %wide.load117, ptr %i.bo, align 4, !tbaa !3
  %index.next118 = add nuw i64 %index116, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next118, %n.vec115
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15515

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %i.ao, %n.vec115
  br i1 %cmp.n119, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %iter.check ], [ %i.an, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %iter.check ], [ %i.am, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %i.bq = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv18.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i11.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !15516

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %vec.epilog.scalar.ph.prol ]
  %i.bu = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bu, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bv = zext nneg i32 %i.y to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.pre.i, i8 0, i64 %i.bw, i1 false)
  %i.bx = load i32, ptr %i.d, align 8, !tbaa !15465
  %i.by = sub nsw i32 %i.bx, %i.y                 ; 2 uses
  store i32 %i.by, ptr %i.d, align 8, !tbaa !15465
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !15472
  %.pre61.pre = load i64, ptr %i.g, align 8, !tbaa !15472
  br label %_ZN3fmt3v116detail6bigint5alignERKS2_.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv18.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i11.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !3
  %i.cc = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !3
  %i.ch = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  store i32 %i.cj, ptr %i.cl, align 4, !tbaa !3
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cp = getelementptr i8, ptr %i.co, i64 -12
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !3
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !15517

_ZN3fmt3v116detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %._crit_edge.i
  %.pre61 = phi i64 [ %i.h, %select.unfold ], [ %.pre61.pre, %._crit_edge.i ]
  %.pre = phi i64 [ %i.b, %select.unfold ], [ %.pre.pre, %._crit_edge.i ]
  %i.cq = phi i32 [ %i.e, %select.unfold ], [ %i.by, %._crit_edge.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32: ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit
  %i.ct = phi i32 [ %i.cq, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fg, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge ]
  %i.cu = phi i64 [ %.pre61, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fi, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge ] ; 5 uses
  %i.cv = phi i64 [ %.pre, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fd, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fe, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge ]
  %i.cw = trunc i64 %i.cv to i32
  %.not21.i = icmp eq i64 %i.cu, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32
  %i.cx = load i32, ptr %i.j, align 8, !tbaa !15465
  %i.cy = sub i32 %i.cx, %i.ct
  %i.cz = load ptr, ptr %1, align 8, !tbaa !15463 ; 3 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !15463 ; 4 uses
  %i.db = sext i32 %i.cy to i64                   ; 2 uses
  %xtraiter135 = and i64 %i.cu, 1
  %i.dc = icmp eq i64 %i.cu, 1
  br i1 %i.dc, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cu, -2
  br label %bb.g

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.db, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i18.unr-lcssa ] ; 2 uses
  %.01223.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ej, %._crit_edge.i18.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ei, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod139 = trunc i64 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.01223.i.epil.init
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = getelementptr inbounds [4 x i8], ptr %i.da, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64
  %i.di = zext i32 %i.de to i64
  %i.dj = add nuw nsw i64 %.01822.i.epil.init, %i.di
  %i.dk = sub nsw i64 %i.dh, %i.dj                ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  store i32 %i.dl, ptr %i.df, align 4, !tbaa !3
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.eg, %._crit_edge.i18.unr-lcssa ], [ %i.dk, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i18.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dm = icmp sgt i64 %.lcssa, -1
  br i1 %i.dm, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.db, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.01223.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ej, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ei, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.01223.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.da, i64 %indvars.iv.i15 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64
  %i.ds = zext i32 %i.do to i64
  %i.dt = add nuw nsw i64 %.01822.i, %i.ds
  %i.du = sub nsw i64 %i.dr, %i.dt                ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.dp, align 4, !tbaa !3
  %i.dw = lshr i64 %i.du, 63
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.01223.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = getelementptr [4 x i8], ptr %i.da, i64 %indvars.iv.i15
  %i.eb = getelementptr i8, ptr %i.ea, i64 4      ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = zext i32 %i.ec to i64
  %i.ee = zext i32 %i.dz to i64
  %i.ef = add nuw nsw i64 %i.dw, %i.ee
  %i.eg = sub nsw i64 %i.ed, %i.ef                ; 3 uses
  %i.eh = trunc i64 %i.eg to i32
  store i32 %i.eh, ptr %i.eb, align 4, !tbaa !3
  %i.ei = lshr i64 %i.eg, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.ej = add nuw i64 %.01223.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.g, !llvm.loop !15518

bb.h:                                             ; preds = %._crit_edge.i18
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.da, i64 %indvars.iv.next.i16.lcssa ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !3
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i18, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32
  %i.en = load ptr, ptr %0, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 1) ; 2 uses
  %i.eo = trunc i64 %i.cv to i32                  ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %.lr.ph98, label %.critedge.i.i

.lr.ph98:                                         ; preds = %._crit_edge.thread.i
  %i.eq = and i64 %i.cv, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.er = trunc nuw i64 %i.eu to i32              ; 2 uses
  %i.es = icmp sgt i32 %i.er, 1
  br i1 %i.es, label %bb.j, label %.critedge.i.i, !llvm.loop !15519

bb.j:                                             ; preds = %.lr.ph98, %bb.i
  %i.et = phi i32 [ %i.eo, %.lr.ph98 ], [ %i.er, %bb.i ]
  %indvars.iv.i14.i97 = phi i64 [ %i.eq, %.lr.ph98 ], [ %i.eu, %bb.i ]
  %i.eu = add nsw i64 %indvars.iv.i14.i97, -1     ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.i, label %..critedge.i.i_crit_edge, !llvm.loop !15519

..critedge.i.i_crit_edge:                         ; preds = %bb.j
  br label %.critedge.i.i, !llvm.loop !15519

.critedge.i.i:                                    ; preds = %bb.i, %..critedge.i.i_crit_edge, %._crit_edge.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %._crit_edge.thread.i ], [ %i.et, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.i ]
  %i.ey = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.ez = load i64, ptr %i.cr, align 8, !tbaa !15464 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  br i1 %i.fa, label %bb.k, label %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit

bb.k:                                             ; preds = %.critedge.i.i
  %i.fb = load ptr, ptr %i.cs, align 8, !tbaa !15461
  tail call void %i.fb(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ey), !inline_history !15520
  %.pre.i.i.i.i = load i64, ptr %i.cr, align 8, !tbaa !15464
  br label %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.k
  %i.fc = phi i64 [ %i.ez, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.k ]
  %i.fd = tail call noundef i64 @llvm.umin.i64(i64 %i.ey, i64 %i.fc) ; 4 uses
  store i64 %i.fd, ptr %i.a, align 8, !tbaa !15472
  %i.fe = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.ff = trunc nuw i64 %i.fd to i32              ; 2 uses
  %i.fg = load i32, ptr %i.d, align 8, !tbaa !15465 ; 2 uses
  %i.fh = add nsw i32 %i.fg, %i.ff                ; 2 uses
  %i.fi = load i64, ptr %i.g, align 8, !tbaa !15472 ; 3 uses
  %i.fj = trunc i64 %i.fi to i32                  ; 2 uses
  %i.fk = load i32, ptr %i.j, align 8, !tbaa !15465
  %i.fl = add nsw i32 %i.fk, %i.fj                ; 2 uses
  %.not.i19 = icmp eq i32 %i.fh, %i.fl
  br i1 %.not.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit
  %i.fm = icmp sgt i32 %i.fh, %i.fl
  br i1 %i.fm, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

bb.m:                                             ; preds = %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit
  %i.fn = sub nsw i32 %i.ff, %i.fj
  %spec.store.select.i21 = tail call i32 @llvm.smax.i32(i32 %i.fn, i32 0)
  %i.fo = load ptr, ptr %0, align 8
  %i.fp = load ptr, ptr %1, align 8
  %sext.i22 = shl nuw i64 %i.fd, 32
  %i.fq = ashr exact i64 %sext.i22, 32            ; 3 uses
  %i.fr = zext nneg i32 %spec.store.select.i21 to i64 ; 3 uses
  %sext55.i23 = shl i64 %i.fi, 32
  %i.fs = ashr exact i64 %sext55.i23, 32          ; 2 uses
  %smin60 = tail call i64 @llvm.smin.i64(i64 %i.fq, i64 %i.fr)
  %.not35.not.i26102 = icmp sgt i64 %i.fq, %i.fr
  br i1 %.not35.not.i26102, label %.lr.ph106, label %._crit_edge107

bb.n:                                             ; preds = %.lr.ph106
  %.not35.not.i26 = icmp sgt i64 %indvars.iv.next.i28, %i.fr
  br i1 %.not35.not.i26, label %.lr.ph106, label %._crit_edge107, !llvm.loop !15501

.lr.ph106:                                        ; preds = %bb.m, %bb.n
  %indvars.iv.i25104 = phi i64 [ %indvars.iv.next.i28, %bb.n ], [ %i.fq, %bb.m ]
  %indvars.iv45.i24103 = phi i64 [ %indvars.iv.next46.i29, %bb.n ], [ %i.fs, %bb.m ]
  %indvars.iv.next.i28 = add nsw i64 %indvars.iv.i25104, -1 ; 3 uses
  %indvars.iv.next46.i29 = add nsw i64 %indvars.iv45.i24103, -1 ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next.i28
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3  ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %indvars.iv.next46.i29
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3  ; 2 uses
  %.not37.i30 = icmp eq i32 %i.fu, %i.fw
  br i1 %.not37.i30, label %bb.n, label %.loopexit.i31, !llvm.loop !15501

._crit_edge107:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i24.lcssa = phi i64 [ %i.fs, %bb.m ], [ %indvars.iv.next46.i29, %bb.n ]
  %or.cond.not50 = icmp slt i64 %smin60, %indvars.iv45.i24.lcssa
  br i1 %or.cond.not50, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge

.loopexit.i31:                                    ; preds = %.lr.ph106
  %i.fx = icmp ugt i32 %i.fu, %i.fw
  br i1 %i.fx, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32.backedge: ; preds = %.loopexit.i31, %bb.l, %._crit_edge107
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit32, !llvm.loop !15521

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge107, %.loopexit.i31, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.fe, %bb.l ], [ %i.fe, %.loopexit.i31 ], [ %i.fe, %._crit_edge107 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15464 ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !15463  ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #50 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15472 ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !15463
  store i64 %.0, ptr %i.a, align 8, !tbaa !15464
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v11::basic_memory_buffer.5039", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15472 ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !15461
  %i.g = load ptr, ptr %0, align 8, !tbaa !15463  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15464 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !15463
  store i64 %i.i, ptr %i.e, align 8, !tbaa !15464
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !3
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE19tryEmplaceValueImplIaJaEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIaEEEEbES7_ImmERKT_DpOT0_:bb.a
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bg, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !32995

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIaE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !32996
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIaE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit:  ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %5, align 1, !tbaa !13
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !13
  %i.bu = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !32997
  %i.bx = icmp ult i64 %i.bw, %i.bu
  br i1 %i.bx, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !855
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit, %bb.o
  %i.by = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.bz = and i64 %i.by, -256
  %i.ca = add i64 %i.bz, 256
  %i.cb = and i64 %i.by, 255
  %i.cc = or disjoint i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !1619
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !1269
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cd, align 8, !tbaa !32998
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.11587", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !32966  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !33001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = add i64 %3, 16
  %i.o = shl i64 %2, 5
  %.0.i = select i1 %i.m, i64 %i.n, i64 %i.o
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.p = mul i64 %5, %4
  store i64 %i.p, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.q = icmp eq i64 %4, 1                        ; 2 uses
  %i.r = add i64 %5, 16
  %i.s = shl i64 %4, 5
  %.0.i69 = select i1 %i.q, i64 %i.r, i64 %i.s    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 16 uses
  store ptr %i.t, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.u = icmp ult i64 %4, 8
  br i1 %i.u, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ak, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !33002

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ak, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.am, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !33003

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 14
  %i.ao = trunc i64 %5 to i8
  store i8 %i.ao, ptr %i.an, align 2, !tbaa !32996
  store ptr %i.t, ptr %0, align 8, !tbaa !32966
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !1619
  %i.as = and i64 %i.ar, -256
  %i.at = select i1 %.not.i, i64 4294967295, i64 %i.aq
  %i.au = or i64 %i.as, %i.at
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !33004
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.av, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !33007
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !33009
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.aw = icmp eq i64 %1, 0
  br i1 %i.aw, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.q, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ay = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bj, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bb, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %.042130 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIaE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.042130
  call void @llvm.assume(i1 %i.ay)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0131
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !13
  %i.bi = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bi, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bj = add i64 %.0131, 1
  %i.bk = icmp ult i64 %.1, %1
  br i1 %i.bk, label %bb.d, label %bb.i, !llvm.loop !33011

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr i8, ptr %i.t, i64 15
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.1
  %i.bn = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bn)
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp slt i64 %4, 0
  br i1 %i.bq, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIavvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.bs

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.br, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ca, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !33012

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bt, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -32 ; 4 uses
  %i.bu = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.bv = icmp slt <16 x i8> %i.bu, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = and i16 %i.bw, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.bx, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.bx to i32
  %i.by = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds i8, ptr %.pn59128, i64 -16
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.ca, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.ca = add i64 %.155125, -1                    ; 2 uses
  %i.cb = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.cb, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cd = add i32 %.sroa.8.0124, %i.cc
  %i.ce = add nuw nsw i32 %i.cc, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn = phi i32 [ %i.ce, %bb.q ], [ 1, %bb.p ]
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE19tryEmplaceValueImplIsJsEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIsEEEEbES7_ImmERKT_DpOT0_:bb.a
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !33222

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIsE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !33223
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIsE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit:  ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i16, ptr %5, align 2, !tbaa !2754
  store i16 %i.bt, ptr %i.br, align 2, !tbaa !2754
  %i.bu = lshr i64 %i.bl, 3
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = or i64 %i.bu, %i.bv                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !33224
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !855
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %i.cc = add i64 %i.cb, 256
  %i.cd = and i64 %i.ca, 255
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !1619
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !3166
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cf, align 8, !tbaa !33225
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.11699", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !33193  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !33228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 1
  %i.o = add i64 %i.n, 16
  %i.p = mul i64 %2, 48
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 1
  %i.t = add i64 %i.s, 16
  %i.u = mul i64 %4, 48
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !33229

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !33230

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !33223
  store ptr %i.v, ptr %0, align 8, !tbaa !33193
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !33231
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !33234
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !33236
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bl, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIsE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %.042130
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.0131
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !2754
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !2754
  %i.bk = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bk, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bl = add i64 %.0131, 1
  %i.bm = icmp ult i64 %.1, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !33238

bb.i:                                             ; preds = %bb.h
  %i.bn = add i64 %.1, -1                         ; 2 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bn
  %i.bp = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %i.bn, 255                      ; 2 uses
  %i.br = icmp samesign ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = lshr i64 %i.bq, 3
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = or i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %4, 0
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.by

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bx, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cg, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !33239

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bz, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -48 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.cb = icmp slt <16 x i8> %i.ca, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = and i16 %i.cc, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cd, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cd to i32
  %i.ce = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds i8, ptr %.pn59128, i64 -32
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cg, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cg = add i64 %.155125, -1                    ; 2 uses
  %i.ch = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.ch, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cj = add i32 %.sroa.8.0124, %i.ci
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE19tryEmplaceValueImplIiJiEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIiEEEEbES7_ImmERKT_DpOT0_:bb.a
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 4095
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIiE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit:  ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !3
  %i.bu = lshr i64 %i.bl, 2
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = or i64 %i.bu, %i.bv                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !33451
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !855
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %i.cc = add i64 %i.cb, 256
  %i.cd = and i64 %i.ca, 255
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !1619
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !1630
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cf, align 8, !tbaa !33452
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 72057594037927935
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1619
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.11810", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !33420  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !33455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = add i64 %2, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
  %i.o = mul i64 %i.n, %3
  store i64 %i.o, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.p = icmp eq i64 %2, 1                        ; 2 uses
  %i.q = shl i64 %3, 2
  %i.r = add i64 %i.q, 16
  %i.s = shl i64 %2, 6
  %.0.i = select i1 %i.p, i64 %i.r, i64 %i.s
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.t = add i64 %4, -1
  %i.u = lshr i64 %i.t, 12
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = mul i64 %i.v, %5
  store i64 %i.w, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.x = icmp eq i64 %4, 1                        ; 2 uses
  %i.y = shl i64 %5, 2
  %i.z = add i64 %i.y, 16
  %i.aa = shl i64 %4, 6
  %.0.i69 = select i1 %i.x, i64 %i.z, i64 %i.aa   ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ac = icmp ult i64 %4, 8
  br i1 %i.ac, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !33456

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.au, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !33457

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.av = trunc i64 %5 to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i16 %i.av, ptr %i.aw, align 1
  store ptr %i.ab, ptr %0, align 8, !tbaa !33420
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !1619
  %i.ba = and i64 %i.az, -256
  %i.bb = select i1 %.not.i, i64 4294967295, i64 %i.ay
  %i.bc = or i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !33458
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bd, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !33461
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !33463
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.be = icmp eq i64 %1, 0
  br i1 %i.be, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.x, %i.p
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.bg = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.br, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bj, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.042130 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIiE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !13
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.042130
  call void @llvm.assume(i1 %i.bg)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0131
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !3
  %i.bq = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bq, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.br = add i64 %.0131, 1
  %i.bs = icmp ult i64 %.1, %1
  br i1 %i.bs, label %bb.d, label %bb.i, !llvm.loop !33465

bb.i:                                             ; preds = %bb.h
  %i.bt = add i64 %.1, -1                         ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bt
  %i.bv = icmp ne ptr %i.ab, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bv)
  %i.bw = and i64 %i.bt, 255                      ; 2 uses
  %i.bx = icmp samesign ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = lshr i64 %i.bw, 2
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = or i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.cc = icmp slt i64 %4, 0
  br i1 %i.cc, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIivvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.ce

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.cd, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cm, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !33466

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cf, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -64 ; 4 uses
  %i.cg = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.ch = icmp slt <16 x i8> %i.cg, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16
  %i.cj = and i16 %i.ci, 4095                     ; 2 uses
  %.not115122 = icmp eq i16 %i.cj, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cj to i32
  %i.ck = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds i8, ptr %.pn59128, i64 -48
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cm, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cm = add i64 %.155125, -1                    ; 2 uses
  %i.cn = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.cn, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.co = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cp = add i32 %.sroa.8.0124, %i.co
end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE19tryEmplaceValueImplIlJlEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIlEEEEbES7_ImmERKT_DpOT0_:bb.a
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !33675

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIlE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !33676
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIlE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit:  ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load i64, ptr %5, align 8, !tbaa !855
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !855
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !33677
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !855
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !1619
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !1267
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !33678
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.11919", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !33647  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !33681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !33682

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !33683

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !33676
  store ptr %i.v, ptr %0, align 8, !tbaa !33647
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !33684
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !33687
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !33689
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bl, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIlE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042130
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0131
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !855
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !855
  %i.bk = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bk, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bl = add i64 %.0131, 1
  %i.bm = icmp ult i64 %.1, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !33691

bb.i:                                             ; preds = %bb.h
  %i.bn = add i64 %.1, -1                         ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bn
  %i.bp = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %i.bn, 255                      ; 2 uses
  %i.br = icmp samesign ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = lshr i64 %i.bq, 1
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = or i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %4, 0
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.by

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bx, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cg, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !33692

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bz, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -128 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.cb = icmp slt <16 x i8> %i.ca, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = and i16 %i.cc, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cd, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cd to i32
  %i.ce = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds i8, ptr %.pn59128, i64 -112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cg, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cg = add i64 %.155125, -1                    ; 2 uses
  %i.ch = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.ch, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cj = add i32 %.sroa.8.0124, %i.ci
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE19tryEmplaceValueImplInJnEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkInEEEEbES7_ImmERKT_DpOT0_:bb.a
  %.not68 = icmp eq i16 %i.bg, 16383
  br i1 %.not68, label %bb.i, label %bb.k, !llvm.loop !33902

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !33903
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkInE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit:  ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i128, ptr %5, align 16, !tbaa !4279
  store i128 %i.bt, ptr %i.br, align 16, !tbaa !4279
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = or i64 %i.bu, %i.bl                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !33904
  %i.by = icmp ult i64 %i.bx, %i.bv
  br i1 %i.by, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE13insertAtBlankIJnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkInEEEESt4pairImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !855
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE13insertAtBlankIJnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkInEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE13insertAtBlankIJnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkInEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit, %bb.n
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.ca = and i64 %i.bz, -256
  %i.cb = add i64 %i.ca, 256
  %i.cc = and i64 %i.bz, 255
  %i.cd = or disjoint i64 %i.cb, %i.cc
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !1619
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE13insertAtBlankIJnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkInEEEESt4pairImmEDpOT_.exit
  %.lcssa90.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE13insertAtBlankIJnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkInEEEESt4pairImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa91.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE13insertAtBlankIJnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkInEEEESt4pairImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE13insertAtBlankIJnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkInEEEESt4pairImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa90.sink, ptr %0, align 8, !tbaa !4241
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa91.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ce, align 8, !tbaa !33905
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.12030", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !33873  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !33908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !33909

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !33910

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !33903
  store ptr %i.v, ptr %0, align 8, !tbaa !33873
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !33911
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !33914
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !33916
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bl, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkInE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042130
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0131
  %i.bj = load i128, ptr %i.bi, align 16, !tbaa !4279
  store i128 %i.bj, ptr %i.bh, align 16, !tbaa !4279
  %i.bk = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bk, %bb.g ], [ %.042130, %bb.d ] ; 4 uses
  %i.bl = add i64 %.0131, 1
  %i.bm = icmp ult i64 %.1, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !33918

bb.i:                                             ; preds = %bb.h
  %i.bn = add i64 %.1, 255
  %i.bo = getelementptr [16 x i8], ptr %i.v, i64 %.1
  %i.bp = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %i.bn, 255                      ; 2 uses
  %i.br = icmp samesign ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = or i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp slt i64 %4, 0
  br i1 %i.bv, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.bx

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bw, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.by = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cf, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !33919

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.by, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -256 ; 4 uses
  %i.bz = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.ca = icmp slt <16 x i8> %i.bz, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16
  %i.cc = and i16 %i.cb, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cc, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cc to i32
  %i.cd = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds i8, ptr %.pn59128, i64 -240
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cf, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cf = add i64 %.155125, -1                    ; 2 uses
  %i.cg = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.cg, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.ch = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.ci = add i32 %.sroa.8.0124, %i.ch
  %i.cj = add nuw nsw i32 %i.ch, 1
end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESF_ImmERKT_DpOT0_:bb.a
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 4095
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64              ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIfE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit:  ; preds = %bb.m
  %i.br = trunc i64 %3 to i8
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bn ; 3 uses
  %i.bu = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load float, ptr %5, align 4, !tbaa !4595
  store float %i.bv, ptr %i.bt, align 4, !tbaa !4595
  %i.bw = lshr i64 %i.bn, 2
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = or i64 %i.bw, %i.bx                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !34135
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !855
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit, %bb.o
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !1619
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.ah, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.x, %bb.g ], [ %i.bn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !4557
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ch, align 8, !tbaa !34136
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 72057594037927935
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1619
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 7 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.12134", align 8 ; 17 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !34100  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !34139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = add i64 %2, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
  %i.o = mul i64 %i.n, %3
  store i64 %i.o, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.p = icmp eq i64 %2, 1                        ; 2 uses
  %i.q = shl i64 %3, 2
  %i.r = add i64 %i.q, 16
  %i.s = shl i64 %2, 6
  %.0.i = select i1 %i.p, i64 %i.r, i64 %i.s
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.t = add i64 %4, -1
  %i.u = lshr i64 %i.t, 12
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = mul i64 %i.v, %5
  store i64 %i.w, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.x = icmp eq i64 %4, 1                        ; 2 uses
  %i.y = shl i64 %5, 2
  %i.z = add i64 %i.y, 16
  %i.aa = shl i64 %4, 6
  %.0.i69 = select i1 %i.x, i64 %i.z, i64 %i.aa   ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ac = icmp ult i64 %4, 8
  br i1 %i.ac, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.as, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, i8 0, i64 16, i1 false)
  %i.as = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !34140

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.au, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, i8 0, i64 16, i1 false)
  %i.au = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !34141

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.av = trunc i64 %5 to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i16 %i.av, ptr %i.aw, align 1
  store ptr %i.ab, ptr %0, align 8, !tbaa !34100
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !1619
  %i.ba = and i64 %i.az, -256
  %i.bb = select i1 %.not.i, i64 4294967295, i64 %i.ay
  %i.bc = or i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !34142
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bd, align 8, !tbaa !2319
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %.sroa.495.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.c, ptr %.sroa.596.0..sroa_idx, align 8, !tbaa !34145
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.e, ptr %.sroa.697.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.g, ptr %.sroa.898.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %0, ptr %.sroa.999.0..sroa_idx, align 8, !tbaa !34147
  %.sroa.10100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %i.b, ptr %.sroa.10100.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.11101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11101.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.be = icmp eq i64 %1, 0
  br i1 %i.be, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.x, %i.p
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.bg = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0133 = phi i64 [ 0, %bb.c ], [ %i.br, %bb.h ] ; 3 uses
  %.042132 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0133
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13  ; 2 uses
  %.not118 = icmp eq i8 %i.bj, 0
  br i1 %.not118, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.042132 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIfE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !13
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.042132
  call void @llvm.assume(i1 %i.bg)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0133
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !4595
  store float %i.bp, ptr %i.bn, align 4, !tbaa !4595
  %i.bq = add nuw i64 %.042132, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bq, %bb.g ], [ %.042132, %bb.d ] ; 3 uses
  %i.br = add i64 %.0133, 1
  %i.bs = icmp ult i64 %.1, %1
  br i1 %i.bs, label %bb.d, label %bb.i, !llvm.loop !34149

bb.i:                                             ; preds = %bb.h
  %i.bt = add i64 %.1, -1                         ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bt
  %i.bv = icmp ne ptr %i.ab, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bv)
  %i.bw = and i64 %i.bt, 255                      ; 2 uses
  %i.bx = icmp samesign ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = lshr i64 %i.bw, 2
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = or i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !855
  br label %.thread

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.cc = icmp slt i64 %4, 0
  br i1 %i.cc, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS9_14NaNAwareEqualsIfLb1EEEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.ce

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0116 = phi ptr [ %7, %bb.j ], [ %i.cd, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0116, i8 0, i64 %4, i1 false)
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.ab, %bb.o
  %.155.lcssa = phi i64 [ %.054129, %bb.o ], [ %i.cm, %bb.ab ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.ac, label %bb.o, !llvm.loop !34150

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59130 = phi ptr [ %i.cf, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053131, %.loopexit ] ; 2 uses
  %.054129 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053131 = getelementptr inbounds i8, ptr %.pn59130, i64 -64 ; 4 uses
  %i.cg = load <16 x i8>, ptr %.053131, align 16, !tbaa !13
  %i.ch = icmp slt <16 x i8> %i.cg, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16
  %i.cj = and i16 %i.ci, 4095                     ; 2 uses
  %.not117124 = icmp eq i16 %i.cj, 0
  br i1 %.not117124, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.080.0.extract.trunc = zext nneg i16 %i.cj to i32
  %i.ck = icmp ne ptr %.053131, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds i8, ptr %.pn59130, i64 -48
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ab
  %.155127 = phi i64 [ %.054129, %.lr.ph ], [ %i.cm, %bb.ab ]
  %.sroa.8.0126 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.ab ] ; 2 uses
  %.sroa.080.0125 = phi i32 [ %.sroa.080.0.extract.trunc, %.lr.ph ], [ %.sroa.080.1, %bb.ab ] ; 3 uses
  %i.cm = add i64 %.155127, -1                    ; 2 uses
  %i.cn = and i32 %.sroa.080.0125, 1
  %.not.i71 = icmp eq i32 %i.cn, 0
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.co = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.080.0125, i1 true) ; 2 uses
  %i.cp = add i32 %.sroa.8.0126, %i.co
end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESF_ImmERKT_DpOT0_:bb.a
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !34364

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit
  %i.bk = extractelement <16 x i8> %i.bg, i64 14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bm = add i8 %i.bk, 16
  store i8 %i.bm, ptr %i.bl, align 2, !tbaa !34365
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.av, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit ], [ %i.bj, %bb.l ]
  %.1 = phi ptr [ %i.ar, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit ], [ %i.bf, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64              ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIdE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit:  ; preds = %bb.m
  %i.bs = trunc i64 %3 to i8
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bo ; 3 uses
  %i.bv = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = load double, ptr %5, align 8, !tbaa !4912
  store double %i.bw, ptr %i.bu, align 8, !tbaa !4912
  %i.bx = lshr i64 %i.bo, 1
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = or i64 %i.bx, %i.by                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !34366
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !855
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit, %bb.o
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !1619
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ai, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bo, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !4874
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !34367
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 7 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.12238", align 8 ; 17 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !34331  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !34370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !34371

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !34372

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !34365
  store ptr %i.v, ptr %0, align 8, !tbaa !34331
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !34373
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %.sroa.495.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.c, ptr %.sroa.596.0..sroa_idx, align 8, !tbaa !34376
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.e, ptr %.sroa.697.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.g, ptr %.sroa.898.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %0, ptr %.sroa.999.0..sroa_idx, align 8, !tbaa !34378
  %.sroa.10100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %i.b, ptr %.sroa.10100.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.11101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11101.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0133 = phi i64 [ 0, %bb.c ], [ %i.bl, %bb.h ] ; 3 uses
  %.042132 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0133
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not118 = icmp eq i8 %i.bd, 0
  br i1 %.not118, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042132 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIdE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042132
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0133
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !4912
  store double %i.bj, ptr %i.bh, align 8, !tbaa !4912
  %i.bk = add nuw i64 %.042132, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bk, %bb.g ], [ %.042132, %bb.d ] ; 3 uses
  %i.bl = add i64 %.0133, 1
  %i.bm = icmp ult i64 %.1, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !34380

bb.i:                                             ; preds = %bb.h
  %i.bn = add i64 %.1, -1                         ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bn
  %i.bp = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %i.bn, 255                      ; 2 uses
  %i.br = icmp samesign ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = lshr i64 %i.bq, 1
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = or i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !855
  br label %.thread

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %4, 0
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS9_14NaNAwareEqualsIdLb1EEEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.by

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0116 = phi ptr [ %7, %bb.j ], [ %i.bx, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0116, i8 0, i64 %4, i1 false)
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.ab, %bb.o
  %.155.lcssa = phi i64 [ %.054129, %bb.o ], [ %i.cg, %bb.ab ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.ac, label %bb.o, !llvm.loop !34381

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59130 = phi ptr [ %i.bz, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053131, %.loopexit ] ; 2 uses
  %.054129 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053131 = getelementptr inbounds i8, ptr %.pn59130, i64 -128 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.053131, align 16, !tbaa !13
  %i.cb = icmp slt <16 x i8> %i.ca, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = and i16 %i.cc, 16383                    ; 2 uses
  %.not117124 = icmp eq i16 %i.cd, 0
  br i1 %.not117124, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.080.0.extract.trunc = zext nneg i16 %i.cd to i32
  %i.ce = icmp ne ptr %.053131, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds i8, ptr %.pn59130, i64 -112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ab
  %.155127 = phi i64 [ %.054129, %.lr.ph ], [ %i.cg, %bb.ab ]
  %.sroa.8.0126 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.ab ] ; 2 uses
  %.sroa.080.0125 = phi i32 [ %.sroa.080.0.extract.trunc, %.lr.ph ], [ %.sroa.080.1, %bb.ab ] ; 3 uses
  %i.cg = add i64 %.155127, -1                    ; 2 uses
  %i.ch = and i32 %.sroa.080.0125, 1
  %.not.i71 = icmp eq i32 %i.ch, 0
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.080.0125, i1 true) ; 2 uses
  %i.cj = add i32 %.sroa.8.0126, %i.ci
end_hunk_11
begin_hunk_12_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE19tryEmplaceValueImplIbJbEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIbEEEEbES7_ImmERKT_DpOT0_:bb.a
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bg, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !34589

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIbE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !34590
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIbE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit:  ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %5, align 1, !tbaa !88, !range !796, !noundef !797
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !88
  %i.bu = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !34591
  %i.bx = icmp ult i64 %i.bw, %i.bu
  br i1 %i.bx, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !855
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit, %bb.o
  %i.by = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.bz = and i64 %i.by, -256
  %i.ca = add i64 %i.bz, 256
  %i.cb = and i64 %i.by, 255
  %i.cc = or disjoint i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !1619
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !2319
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cd, align 8, !tbaa !34592
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.12351", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !34561  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !34595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = add i64 %3, 16
  %i.o = shl i64 %2, 5
  %.0.i = select i1 %i.m, i64 %i.n, i64 %i.o
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.p = mul i64 %5, %4
  store i64 %i.p, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.q = icmp eq i64 %4, 1                        ; 2 uses
  %i.r = add i64 %5, 16
  %i.s = shl i64 %4, 5
  %.0.i69 = select i1 %i.q, i64 %i.r, i64 %i.s    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 16 uses
  store ptr %i.t, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.u = icmp ult i64 %4, 8
  br i1 %i.u, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ak, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !34596

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ak, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.am, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !34597

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 14
  %i.ao = trunc i64 %5 to i8
  store i8 %i.ao, ptr %i.an, align 2, !tbaa !34590
  store ptr %i.t, ptr %0, align 8, !tbaa !34561
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !1619
  %i.as = and i64 %i.ar, -256
  %i.at = select i1 %.not.i, i64 4294967295, i64 %i.aq
  %i.au = or i64 %i.as, %i.at
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !34598
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.av, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !34601
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !34603
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.aw = icmp eq i64 %1, 0
  br i1 %i.aw, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.q, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ay = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bj, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bb, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %.042130 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIbE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.042130
  call void @llvm.assume(i1 %i.ay)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0131
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !88, !range !796, !noundef !797
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !88
  %i.bi = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bi, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bj = add i64 %.0131, 1
  %i.bk = icmp ult i64 %.1, %1
  br i1 %i.bk, label %bb.d, label %bb.i, !llvm.loop !34605

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr i8, ptr %i.t, i64 15
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.1
  %i.bn = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bn)
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp slt i64 %4, 0
  br i1 %i.bq, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.bs

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.br, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ca, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !34606

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bt, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -32 ; 4 uses
  %i.bu = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.bv = icmp slt <16 x i8> %i.bu, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = and i16 %i.bw, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.bx, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.bx to i32
  %i.by = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds i8, ptr %.pn59128, i64 -16
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.ca, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.ca = add i64 %.155125, -1                    ; 2 uses
  %i.cb = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.cb, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cd = add i32 %.sroa.8.0124, %i.cc
  %i.ce = add nuw nsw i32 %i.cc, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn = phi i32 [ %i.ce, %bb.q ], [ 1, %bb.p ]
end_hunk_12
begin_hunk_13_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_:bb.a
  %i.bj = and i16 %i.bi, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bj, 16383
  br i1 %.not68, label %bb.i, label %bb.k, !llvm.loop !34817

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE25incrOutboundOverflowCountEv.exit
  %i.bk = extractelement <16 x i8> %i.bg, i64 14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bm = add i8 %i.bk, 16
  store i8 %i.bm, ptr %i.bl, align 2, !tbaa !34818
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.av, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16reserveForInsertEm.exit ], [ %i.bj, %bb.k ]
  %.1 = phi ptr [ %i.ar, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16reserveForInsertEm.exit ], [ %i.bf, %bb.k ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64              ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit: ; preds = %bb.l
  %i.bs = trunc i64 %3 to i8
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bo ; 3 uses
  %i.bv = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bv)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !5855
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = or i64 %i.bw, %i.bo                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !34819
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !855
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit, %bb.n
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !1619
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit
  %.lcssa90.sink = phi ptr [ %i.bu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa91.sink = phi i64 [ %i.bo, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa90.sink, ptr %0, align 8, !tbaa !5817
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa91.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !34820
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.12461", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !34788  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !34823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !34824

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !34825

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !34818
  store ptr %i.v, ptr %0, align 8, !tbaa !34788
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !34826
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !34829
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !34831
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bk, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042130
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !5855
  %i.bj = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bj, %bb.g ], [ %.042130, %bb.d ] ; 4 uses
  %i.bk = add i64 %.0131, 1
  %i.bl = icmp ult i64 %.1, %1
  br i1 %i.bl, label %bb.d, label %bb.i, !llvm.loop !34833

bb.i:                                             ; preds = %bb.h
  %i.bm = add i64 %.1, 255
  %i.bn = getelementptr [16 x i8], ptr %i.v, i64 %.1
  %i.bo = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bo)
  %i.bp = and i64 %i.bm, 255                      ; 2 uses
  %i.bq = icmp samesign ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = or i64 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bu = icmp slt i64 %4, 0
  br i1 %i.bu, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.bw

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bv, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bx = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ce, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !34834

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -256 ; 4 uses
  %i.by = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.bz = icmp slt <16 x i8> %i.by, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16
  %i.cb = and i16 %i.ca, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cb, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cb to i32
  %i.cc = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds i8, ptr %.pn59128, i64 -240
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.ce, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.ce = add i64 %.155125, -1                    ; 2 uses
  %i.cf = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.cf, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.cg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.ch = add i32 %.sroa.8.0124, %i.cg
  %i.ci = add nuw nsw i32 %i.cg, 1
  br label %bb.r
end_hunk_13
begin_hunk_14_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESA_ImmERKT_DpOT0_:bb.a
  %.not70 = icmp eq i16 %i.dj, 16383
  br i1 %.not70, label %bb.m, label %bb.o, !llvm.loop !35234

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit
  %i.dk = extractelement <16 x i8> %i.dg, i64 14
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 14
  %i.dm = add i8 %i.dk, 16
  store i8 %i.dm, ptr %i.dl, align 2, !tbaa !35235
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.cv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.dj, %bb.o ]
  %.1 = phi ptr [ %i.cr, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.df, %bb.o ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.dn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.do = zext nneg i16 %i.dn to i64              ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit: ; preds = %bb.p
  %i.ds = trunc i64 %3 to i8
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.do ; 3 uses
  %i.dv = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dv)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1683
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = or i64 %i.dw, %i.do                     ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !35236
  %i.ea = icmp ult i64 %i.dz, %i.dx
  br i1 %i.ea, label %bb.r, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

bb.r:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !855
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, %bb.r
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.ec = and i64 %i.eb, -256
  %i.ed = add i64 %i.ec, 256
  %i.ee = and i64 %i.eb, 255
  %i.ef = or disjoint i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.a, align 8, !tbaa !1619
  br label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread

_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread: ; preds = %bb.i, %bb.g, %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit
  %.us-phi76.sink = phi ptr [ %i.du, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.bd, %bb.g ], [ %i.ah, %bb.d ], [ %i.by, %bb.i ]
  %.us-phi.sink = phi i64 [ %i.do, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.bc, %bb.g ], [ %i.ag, %bb.d ], [ %i.bx, %bb.i ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.i ]
  store ptr %.us-phi76.sink, ptr %0, align 8, !tbaa !1635
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.eg, align 8, !tbaa !35237
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"class.folly::detail::ScopeGuardImpl.12643", align 8 ; 16 uses
  %8 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !35198  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !35240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !35241

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !35242

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !35235
  store ptr %i.v, ptr %0, align 8, !tbaa !35198
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i8 0, ptr %7, align 8, !tbaa !2314, !alias.scope !35243
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.c, ptr %.sroa.595.0..sroa_idx, align 8, !tbaa !35246
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.e, ptr %.sroa.696.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.g, ptr %.sroa.897.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %0, ptr %.sroa.998.0..sroa_idx, align 8, !tbaa !35248
  %.sroa.1099.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.b, ptr %.sroa.1099.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.11100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.i, ptr %.sroa.11100.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0133 = phi i64 [ 0, %bb.c ], [ %i.bk, %bb.h ] ; 3 uses
  %.042132 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0133
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not117 = icmp eq i8 %i.bd, 0
  br i1 %.not117, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042132 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042132
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !1683
  %i.bj = add nuw i64 %.042132, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bj, %bb.g ], [ %.042132, %bb.d ] ; 4 uses
  %i.bk = add i64 %.0133, 1
  %i.bl = icmp ult i64 %.1, %1
  br i1 %i.bl, label %bb.d, label %bb.i, !llvm.loop !35250

bb.i:                                             ; preds = %bb.h
  %i.bm = add i64 %.1, 255
  %i.bn = getelementptr [16 x i8], ptr %i.v, i64 %.1
  %i.bo = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bo)
  %i.bp = and i64 %i.bm, 255                      ; 2 uses
  %i.bq = icmp samesign ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = or i64 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !855
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bu = icmp slt i64 %4, 0
  br i1 %i.bu, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit75

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0115 = phi ptr [ %8, %bb.j ], [ %i.bv, %bb.m ] ; 7 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0115, i8 0, i64 %4, i1 false)
  %i.bx = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %bb.o

.loopexit:                                        ; preds = %bb.x, %bb.o
  %.155.lcssa = phi i64 [ %.054129, %bb.o ], [ %i.cg, %bb.x ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.y, label %bb.o, !llvm.loop !35251

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59130 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053131, %.loopexit ] ; 2 uses
  %.054129 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053131 = getelementptr inbounds i8, ptr %.pn59130, i64 -256 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.053131, align 16, !tbaa !13
  %i.cb = icmp slt <16 x i8> %i.ca, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = and i16 %i.cc, 16383                    ; 2 uses
  %.not116124 = icmp eq i16 %i.cd, 0
  br i1 %.not116124, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.079.0.extract.trunc = zext nneg i16 %i.cd to i32
  %i.ce = icmp ne ptr %.053131, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds i8, ptr %.pn59130, i64 -240
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.x
  %.155127 = phi i64 [ %.054129, %.lr.ph ], [ %i.cg, %bb.x ]
  %.sroa.8.0126 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.x ] ; 2 uses
  %.sroa.079.0125 = phi i32 [ %.sroa.079.0.extract.trunc, %.lr.ph ], [ %.sroa.079.1, %bb.x ] ; 3 uses
  %i.cg = add i64 %.155127, -1                    ; 2 uses
  %i.ch = and i32 %.sroa.079.0125, 1
  %.not.i71 = icmp eq i32 %i.ch, 0
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.079.0125, i1 true) ; 2 uses
  %i.cj = add i32 %.sroa.8.0126, %i.ci
  %i.ck = add nuw nsw i32 %i.ci, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.p, %bb.q
  %.pn = phi i32 [ %i.ck, %bb.q ], [ 1, %bb.p ]
  %.sroa.8.1.in = phi i32 [ %i.cj, %bb.q ], [ %.sroa.8.0126, %bb.p ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.079.1 = lshr i32 %.sroa.079.0125, %.pn   ; 2 uses
  %i.cl = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cl ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cm, align 8 ; 3 uses
end_hunk_14
begin_hunk_15_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_:bb.a

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.t
  %i.dr = trunc i64 %3 to i8
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dn ; 2 uses
  %i.du = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !1619
  %i.dw = lshr i64 %i.dv, 8                       ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.dt, align 4, !tbaa !3
  %i.dy = load ptr, ptr %1, align 8, !tbaa !35432, !nonnull !797, !noundef !797
  %i.dz = and i64 %i.dw, 4294967295
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.ec = and i64 %i.eb, -256
  %i.ed = add i64 %i.ec, 256
  %i.ee = and i64 %i.eb, 255
  %i.ef = or disjoint i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.a, align 8, !tbaa !1619
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink103 = phi ptr [ %i.cb, %bb.n ], [ %i.dt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa101.sink = phi i64 [ %i.aa, %bb.n ], [ %i.dn, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.n ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink103, ptr %0, align 8, !tbaa !1630
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa101.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !855
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.eg, align 8, !tbaa !35485
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1619
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.12751", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35435 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !35488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 5
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #48 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1269
  %i.ah = load ptr, ptr %0, align 8, !tbaa !35432 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !35432
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !35489
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.al = icmp ult i64 %4, 8
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bb, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.as, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !35490

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bd, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !35491

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !35435
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1619
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !35492
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2319
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !35495
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.887.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.988.0..sroa_idx, align 8, !tbaa !35497
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1089.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1190.0..sroa_idx, align 8, !tbaa !35499
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bo = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %.0130 = phi i64 [ 0, %bb.d ], [ %i.bz, %bb.h ] ; 3 uses
  %.034129 = phi i64 [ 0, %bb.d ], [ %.1, %bb.h ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0130
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13  ; 2 uses
  %.not111 = icmp eq i8 %i.br, 0
  br i1 %.not111, label %bb.h, label %bb.f, !prof !81

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034129 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.034129
  call void @llvm.assume(i1 %i.bo)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.0130
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !3
  %i.by = add nuw i64 %.034129, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.e
  %.1 = phi i64 [ %i.by, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034129, %bb.e ] ; 2 uses
  %i.bz = add i64 %.0130, 1
  %i.ca = icmp ult i64 %.1, %1
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !35501

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !81

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.l, %bb.i
  %.0103 = phi ptr [ %7, %bb.i ], [ %i.cc, %bb.l ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0103, i8 0, i64 %4, i1 false)
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.n

.loopexit112:                                     ; preds = %bb.aa, %bb.n
  %.143.lcssa = phi i64 [ %.042126, %bb.n ], [ %i.cv, %bb.aa ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.ac, label %bb.n, !llvm.loop !35502

bb.n:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit112
  %.pn127 = phi ptr [ %i.ce, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041128, %.loopexit112 ] ; 2 uses
  %.042126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit112 ] ; 2 uses
  %.041128 = getelementptr inbounds i8, ptr %.pn127, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041128, align 16, !tbaa !13
  %i.cg = icmp slt <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 4095                     ; 2 uses
  %.sroa.070.0.extract.trunc = zext nneg i16 %i.ci to i32 ; 2 uses
  %cond = icmp eq i16 %i.ci, 0
  br i1 %cond, label %.loopexit112, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.cj = icmp ne ptr %.041128, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds i8, ptr %.pn127, i64 -48 ; 2 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !35432
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0119 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.0118 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.067.0118, 1
  %.not.i55 = icmp eq i32 %i.cm, 0
  br i1 %.not.i55, label %bb.p, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !81

bb.p:                                             ; preds = %bb.o
  %i.cn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.0118, i1 true) ; 2 uses
  %i.co = add i32 %.sroa.8.0119, %i.cn
  %i.cp = add nuw nsw i32 %i.cn, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.o, %bb.p
  %.pn110 = phi i32 [ %i.cp, %bb.p ], [ 1, %bb.o ]
  %.sroa.8.1.in = phi i32 [ %i.co, %bb.p ], [ %.sroa.8.0119, %bb.o ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.067.1 = lshr i32 %.sroa.067.0118, %.pn110 ; 2 uses
  %i.cq = zext i32 %.sroa.8.1.in to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.ct
  call void @llvm.prefetch.p0(ptr %i.cu, i32 0, i32 3, i32 1)
  %.not107 = icmp eq i32 %.sroa.067.1, 0
  br i1 %.not107, label %.lr.ph124, label %bb.o

.lr.ph124:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.aa
  %.143123 = phi i64 [ %i.cv, %bb.aa ], [ %.042126, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.872.0122 = phi i32 [ %.sroa.872.1, %bb.aa ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.070.0121 = phi i32 [ %.sroa.070.1, %bb.aa ], [ %.sroa.070.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.143123, -1                    ; 2 uses
  %i.cw = and i32 %.sroa.070.0121, 1
  %.not.i57 = icmp eq i32 %i.cw, 0
  br i1 %.not.i57, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59, !prof !81

bb.q:                                             ; preds = %.lr.ph124
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0121, i1 true) ; 2 uses
end_hunk_15
begin_hunk_16_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEbEESB_NS0_3MapIbiEENS0_15ConstantCheckerIJNS0_5ArrayIbEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKS1_SU_SW_EUlSU_E_EEvSU_:bb.a
  %i.wt = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i131 = icmp eq ptr %i.wt, null
  br i1 %.not.i131, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit132, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit132

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit132: ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEbEES9_NS0_3MapIbiEENS0_15ConstantCheckerIJNS0_5ArrayIbEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.cf:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEbEES7_NS0_3MapIbiEENS0_15ConstantCheckerIJNS0_5ArrayIbEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.wu = landingpad { ptr, i32 }
          cleanup
  %i.wv = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i133 = icmp eq ptr %i.wv, null
  br i1 %.not.i133, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit134, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit134

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit134: ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit279, %.loopexit.split-lp280, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit134
  %.pn16.i = phi { ptr, i32 } [ %i.wu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit134 ], [ %lpad.loopexit281, %.loopexit279 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp280 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit277 unwind label %bb.ci

.loopexit277:                                     ; preds = %bb.bv, %bb.ch, %bb.cc
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.cc ], [ %.pn16.i, %bb.ch ], [ %eh.lpad-body, %bb.bv ]
  resume { ptr, i32 } %.merged.i

bb.ci:                                            ; preds = %bb.ch, %bb.cc
  %i.ww = landingpad { ptr, i32 }
          catch ptr null
  %i.wx = extractvalue { ptr, i32 } %i.ww, 0
  call void @__clang_call_terminate(ptr %i.wx) #44
  unreachable

bb.cj:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEbEES9_NS0_3MapIbiEENS0_15ConstantCheckerIJNS0_5ArrayIbEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit121, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit132
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit276, label %bb.i, !llvm.loop !45512

bb.ck:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.wy = load ptr, ptr %0, align 8, !tbaa !1234
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !1536
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEbEESB_NS0_3MapIbiEENS0_15ConstantCheckerIJNS0_5ArrayIbEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_(ptr noundef %i.wy, i32 noundef %i.xa, i32 noundef %i.xc, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.15366) align 8 %1)
  br label %.loopexit276

.loopexit276:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEbEES9_NS0_3MapIbiEENS0_15ConstantCheckerIJNS0_5ArrayIbEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit, %bb.h, %bb.ck
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.15386", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !45416  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !45513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !45514

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !45515

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !45473
  store ptr %i.v, ptr %0, align 8, !tbaa !45416
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !45516
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !45519
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !45521
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbivvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bo, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !88, !range !796, !noundef !797
  store i8 %i.bk, ptr %i.bh, align 4, !tbaa !45490
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !45492
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !45523

bb.i:                                             ; preds = %bb.h
  %i.bq = add i64 %.1, -1                         ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bq
  %i.bs = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bs)
  %i.bt = and i64 %i.bq, 255                      ; 2 uses
  %i.bu = icmp samesign ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = lshr i64 %i.bt, 1
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i64 %4, 0
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbivvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.cb

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.ca, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cj, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !45524

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cc, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -128 ; 4 uses
  %i.cd = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = and i16 %i.cf, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cg, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cg to i32
  %i.ch = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds i8, ptr %.pn59128, i64 -112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cj, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cj = add i64 %.155125, -1                    ; 2 uses
  %i.ck = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.ck, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81
end_hunk_16
begin_hunk_17_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEaEESB_NS0_3MapIaiEENS0_15ConstantCheckerIJNS0_5ArrayIaEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKS1_SU_SW_EUlSU_E_EEvSU_:bb.a
  %i.xc = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i135 = icmp eq ptr %i.xc, null
  br i1 %.not.i135, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136: ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEaEES9_NS0_3MapIaiEENS0_15ConstantCheckerIJNS0_5ArrayIaEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.ce:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEaEES7_NS0_3MapIaiEENS0_15ConstantCheckerIJNS0_5ArrayIaEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.xd = landingpad { ptr, i32 }
          cleanup
  %i.xe = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i137 = icmp eq ptr %i.xe, null
  br i1 %.not.i137, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138: ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit283, %.loopexit.split-lp284, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138
  %.pn16.i = phi { ptr, i32 } [ %i.xd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138 ], [ %lpad.loopexit285, %.loopexit283 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp284 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit281 unwind label %bb.ch

.loopexit281:                                     ; preds = %bb.bu, %bb.cg, %bb.cb
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.cb ], [ %.pn16.i, %bb.cg ], [ %eh.lpad-body, %bb.bu ]
  resume { ptr, i32 } %.merged.i

bb.ch:                                            ; preds = %bb.cg, %bb.cb
  %i.xf = landingpad { ptr, i32 }
          catch ptr null
  %i.xg = extractvalue { ptr, i32 } %i.xf, 0
  call void @__clang_call_terminate(ptr %i.xg) #44
  unreachable

bb.ci:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEaEES9_NS0_3MapIaiEENS0_15ConstantCheckerIJNS0_5ArrayIaEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit125, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit280, label %bb.i, !llvm.loop !45782

bb.cj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.xh = load ptr, ptr %0, align 8, !tbaa !1234
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !1536
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEaEESB_NS0_3MapIaiEENS0_15ConstantCheckerIJNS0_5ArrayIaEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_(ptr noundef %i.xh, i32 noundef %i.xj, i32 noundef %i.xl, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.15490) align 8 %1)
  br label %.loopexit280

.loopexit280:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEaEES9_NS0_3MapIaiEENS0_15ConstantCheckerIJNS0_5ArrayIaEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit, %bb.h, %bb.cj
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.15507", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !45689  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !45783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !45784

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !45785

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !45743
  store ptr %i.v, ptr %0, align 8, !tbaa !45689
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !45786
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !45789
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !45791
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaivvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bo, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKaiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !13
  store i8 %i.bk, ptr %i.bh, align 4, !tbaa !45759
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !45761
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !45793

bb.i:                                             ; preds = %bb.h
  %i.bq = add i64 %.1, -1                         ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bq
  %i.bs = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bs)
  %i.bt = and i64 %i.bq, 255                      ; 2 uses
  %i.bu = icmp samesign ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = lshr i64 %i.bt, 1
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i64 %4, 0
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIaivvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.cb

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.ca, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cj, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !45794

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cc, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -128 ; 4 uses
  %i.cd = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = and i16 %i.cf, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cg, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cg to i32
  %i.ch = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds i8, ptr %.pn59128, i64 -112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cj, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cj = add i64 %.155125, -1                    ; 2 uses
  %i.ck = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.ck, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81
end_hunk_17
begin_hunk_18_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEsEESB_NS0_3MapIsiEENS0_15ConstantCheckerIJNS0_5ArrayIsEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKS1_SU_SW_EUlSU_E_EEvSU_:bb.a
  %i.xc = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i135 = icmp eq ptr %i.xc, null
  br i1 %.not.i135, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136: ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEsEES9_NS0_3MapIsiEENS0_15ConstantCheckerIJNS0_5ArrayIsEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.ce:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEsEES7_NS0_3MapIsiEENS0_15ConstantCheckerIJNS0_5ArrayIsEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.xd = landingpad { ptr, i32 }
          cleanup
  %i.xe = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i137 = icmp eq ptr %i.xe, null
  br i1 %.not.i137, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138: ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit283, %.loopexit.split-lp284, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138
  %.pn16.i = phi { ptr, i32 } [ %i.xd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138 ], [ %lpad.loopexit285, %.loopexit283 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp284 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit281 unwind label %bb.ch

.loopexit281:                                     ; preds = %bb.bu, %bb.cg, %bb.cb
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.cb ], [ %.pn16.i, %bb.cg ], [ %eh.lpad-body, %bb.bu ]
  resume { ptr, i32 } %.merged.i

bb.ch:                                            ; preds = %bb.cg, %bb.cb
  %i.xf = landingpad { ptr, i32 }
          catch ptr null
  %i.xg = extractvalue { ptr, i32 } %i.xf, 0
  call void @__clang_call_terminate(ptr %i.xg) #44
  unreachable

bb.ci:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEsEES9_NS0_3MapIsiEENS0_15ConstantCheckerIJNS0_5ArrayIsEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit125, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit280, label %bb.i, !llvm.loop !46052

bb.cj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.xh = load ptr, ptr %0, align 8, !tbaa !1234
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !1536
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEsEESB_NS0_3MapIsiEENS0_15ConstantCheckerIJNS0_5ArrayIsEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_(ptr noundef %i.xh, i32 noundef %i.xj, i32 noundef %i.xl, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.15610) align 8 %1)
  br label %.loopexit280

.loopexit280:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEsEES9_NS0_3MapIsiEENS0_15ConstantCheckerIJNS0_5ArrayIsEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit, %bb.h, %bb.cj
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.15627", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !45959  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !46053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !46054

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !46055

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !46013
  store ptr %i.v, ptr %0, align 8, !tbaa !45959
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !46056
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !46059
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !46061
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsivvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bo, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKsiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i16, ptr %i.bi, align 2, !tbaa !2754
  store i16 %i.bk, ptr %i.bh, align 4, !tbaa !46029
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !46031
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !46063

bb.i:                                             ; preds = %bb.h
  %i.bq = add i64 %.1, -1                         ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bq
  %i.bs = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bs)
  %i.bt = and i64 %i.bq, 255                      ; 2 uses
  %i.bu = icmp samesign ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = lshr i64 %i.bt, 1
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i64 %4, 0
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsivvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.cb

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.ca, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cj, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !46064

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cc, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -128 ; 4 uses
  %i.cd = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = and i16 %i.cf, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cg, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cg to i32
  %i.ch = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds i8, ptr %.pn59128, i64 -112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cj, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cj = add i64 %.155125, -1                    ; 2 uses
  %i.ck = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.ck, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81
end_hunk_18
begin_hunk_19_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEiEESB_NS0_3MapIiiEENS0_15ConstantCheckerIJNS0_5ArrayIiEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKS1_SU_SW_EUlSU_E_EEvSU_:bb.a
  %i.xc = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i135 = icmp eq ptr %i.xc, null
  br i1 %.not.i135, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136: ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEiEES9_NS0_3MapIiiEENS0_15ConstantCheckerIJNS0_5ArrayIiEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.ce:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEiEES7_NS0_3MapIiiEENS0_15ConstantCheckerIJNS0_5ArrayIiEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.xd = landingpad { ptr, i32 }
          cleanup
  %i.xe = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i137 = icmp eq ptr %i.xe, null
  br i1 %.not.i137, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138: ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit283, %.loopexit.split-lp284, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138
  %.pn16.i = phi { ptr, i32 } [ %i.xd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138 ], [ %lpad.loopexit285, %.loopexit283 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp284 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit281 unwind label %bb.ch

.loopexit281:                                     ; preds = %bb.bu, %bb.cg, %bb.cb
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.cb ], [ %.pn16.i, %bb.cg ], [ %eh.lpad-body, %bb.bu ]
  resume { ptr, i32 } %.merged.i

bb.ch:                                            ; preds = %bb.cg, %bb.cb
  %i.xf = landingpad { ptr, i32 }
          catch ptr null
  %i.xg = extractvalue { ptr, i32 } %i.xf, 0
  call void @__clang_call_terminate(ptr %i.xg) #44
  unreachable

bb.ci:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEiEES9_NS0_3MapIiiEENS0_15ConstantCheckerIJNS0_5ArrayIiEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit125, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit280, label %bb.i, !llvm.loop !46322

bb.cj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.xh = load ptr, ptr %0, align 8, !tbaa !1234
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !1536
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEiEESB_NS0_3MapIiiEENS0_15ConstantCheckerIJNS0_5ArrayIiEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_(ptr noundef %i.xh, i32 noundef %i.xj, i32 noundef %i.xl, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.15730) align 8 %1)
  br label %.loopexit280

.loopexit280:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEiEES9_NS0_3MapIiiEENS0_15ConstantCheckerIJNS0_5ArrayIiEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit, %bb.h, %bb.cj
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.15747", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !46229  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !46323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !46324

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !46325

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !46283
  store ptr %i.v, ptr %0, align 8, !tbaa !46229
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !46326
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !46329
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !46331
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bo, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !3
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !46299
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !46301
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !46333

bb.i:                                             ; preds = %bb.h
  %i.bq = add i64 %.1, -1                         ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bq
  %i.bs = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bs)
  %i.bt = and i64 %i.bq, 255                      ; 2 uses
  %i.bu = icmp samesign ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = lshr i64 %i.bt, 1
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i64 %4, 0
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIiivvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.cb

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.ca, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cj, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !46334

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cc, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -128 ; 4 uses
  %i.cd = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = and i16 %i.cf, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cg, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cg to i32
  %i.ch = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds i8, ptr %.pn59128, i64 -112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cj, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cj = add i64 %.155125, -1                    ; 2 uses
  %i.ck = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.ck, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81
end_hunk_19
begin_hunk_20_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecElEESB_NS0_3MapIliEENS0_15ConstantCheckerIJNS0_5ArrayIlEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKS1_SU_SW_EUlSU_E_EEvSU_:bb.a
  %i.wq = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i135 = icmp eq ptr %i.wq, null
  br i1 %.not.i135, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136: ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecElEES9_NS0_3MapIliEENS0_15ConstantCheckerIJNS0_5ArrayIlEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.ce:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecElEES7_NS0_3MapIliEENS0_15ConstantCheckerIJNS0_5ArrayIlEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.wr = landingpad { ptr, i32 }
          cleanup
  %i.ws = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i137 = icmp eq ptr %i.ws, null
  br i1 %.not.i137, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138: ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit283, %.loopexit.split-lp284, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138
  %.pn16.i = phi { ptr, i32 } [ %i.wr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138 ], [ %lpad.loopexit285, %.loopexit283 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp284 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit281 unwind label %bb.ch

.loopexit281:                                     ; preds = %bb.bu, %bb.cg, %bb.cb
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.cb ], [ %.pn16.i, %bb.cg ], [ %eh.lpad-body, %bb.bu ]
  resume { ptr, i32 } %.merged.i

bb.ch:                                            ; preds = %bb.cg, %bb.cb
  %i.wt = landingpad { ptr, i32 }
          catch ptr null
  %i.wu = extractvalue { ptr, i32 } %i.wt, 0
  call void @__clang_call_terminate(ptr %i.wu) #44
  unreachable

bb.ci:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecElEES9_NS0_3MapIliEENS0_15ConstantCheckerIJNS0_5ArrayIlEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit125, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit280, label %bb.i, !llvm.loop !46592

bb.cj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.wv = load ptr, ptr %0, align 8, !tbaa !1234
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !1536
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wz = load i32, ptr %i.wy, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecElEESB_NS0_3MapIliEENS0_15ConstantCheckerIJNS0_5ArrayIlEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_(ptr noundef %i.wv, i32 noundef %i.wx, i32 noundef %i.wz, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.15850) align 8 %1)
  br label %.loopexit280

.loopexit280:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecElEES9_NS0_3MapIliEENS0_15ConstantCheckerIJNS0_5ArrayIlEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit, %bb.h, %bb.cj
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.15868", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = load ptr, ptr %0, align 8, !tbaa !46499  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !46593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1269
  store i8 0, ptr %i.i, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.w = icmp ult i64 %4, 8
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aj, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.al, i8 0, i64 16, i1 false)
  %i.am = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !46594

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !46595

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !46553
  store ptr %i.v, ptr %0, align 8, !tbaa !46499
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1619
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !46596
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !46599
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !46601
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlivvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bo, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKliEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !855
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !46569
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i32, ptr %i.bj, align 8, !tbaa !3
  store i32 %i.bm, ptr %i.bl, align 8, !tbaa !46571
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 4 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !46603

bb.i:                                             ; preds = %bb.h
  %i.bq = add i64 %.1, 255
  %i.br = getelementptr [16 x i8], ptr %i.v, i64 %.1
  %i.bs = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bs)
  %i.bt = and i64 %i.bq, 255                      ; 2 uses
  %i.bu = icmp samesign ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = or i64 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !855
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %4, 0
  br i1 %i.by, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlivvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  resume { ptr, i32 } %i.ca

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bz, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cb = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ci, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !46604

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cb, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -256 ; 4 uses
  %i.cc = load <16 x i8>, ptr %.053129, align 16, !tbaa !13
  %i.cd = icmp slt <16 x i8> %i.cc, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16
  %i.cf = and i16 %i.ce, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cf, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cf to i32
  %i.cg = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %.pn59128, i64 -240
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.ci, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.ci = add i64 %.155125, -1                    ; 2 uses
  %i.cj = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.cj, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !81

end_hunk_20
begin_hunk_21_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEnEESB_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKS1_SU_SW_EUlSU_E_EEvSU_:bb.a
  invoke void @__cxa_end_catch()
          to label %.loopexit287 unwind label %bb.cc

.loopexit287:                                     ; preds = %bb.bp, %bb.cb, %bb.bw
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.bw ], [ %.pn16.i, %bb.cb ], [ %eh.lpad-body, %bb.bp ]
  resume { ptr, i32 } %.merged.i

bb.cc:                                            ; preds = %bb.cb, %bb.bw
  %i.yc = landingpad { ptr, i32 }
          catch ptr null
  %i.yd = extractvalue { ptr, i32 } %i.yc, 0
  call void @__clang_call_terminate(ptr %i.yd) #44
  unreachable

bb.cd:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES9_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit134, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit145
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit286, label %bb.i, !llvm.loop !46861

bb.ce:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ye = load ptr, ptr %0, align 8, !tbaa !1234
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !1536
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEnEESB_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_(ptr noundef %i.ye, i32 noundef %i.yg, i32 noundef %i.yi, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.15969) align 8 %1)
  br label %.loopexit286

.loopexit286:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES9_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit, %bb.h, %bb.ce
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1619
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.15981", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46770 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !35488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = shl i64 %i.x, 5
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #48 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1269
  %i.ah = load ptr, ptr %0, align 8, !tbaa !46823 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !46823
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !46862
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.al = icmp ult i64 %4, 8
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bb, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.as, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !46863

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bd, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !46864

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !46770
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1619
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !46865
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2319
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !35495
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.685.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.886.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.987.0..sroa_idx, align 8, !tbaa !46868
  %.sroa.1088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1088.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1189.0..sroa_idx, align 8, !tbaa !46870
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bo = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %.0128 = phi i64 [ 0, %bb.d ], [ %i.bz, %bb.h ] ; 3 uses
  %.034127 = phi i64 [ 0, %bb.d ], [ %.1, %bb.h ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0128
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13  ; 2 uses
  %.not110 = icmp eq i8 %i.br, 0
  br i1 %.not110, label %bb.h, label %bb.f, !prof !81

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034127 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.034127
  call void @llvm.assume(i1 %i.bo)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.0128
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !3
  %i.by = add nuw i64 %.034127, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.e
  %.1 = phi i64 [ %i.by, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034127, %bb.e ] ; 2 uses
  %i.bz = add i64 %.0128, 1
  %i.ca = icmp ult i64 %.1, %1
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !46872

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !81

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.l, %bb.i
  %.0102 = phi ptr [ %7, %bb.i ], [ %i.cc, %bb.l ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0102, i8 0, i64 %4, i1 false)
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.m

.loopexit111:                                     ; preds = %bb.v, %bb.m
  %.143.lcssa = phi i64 [ %.042124, %bb.m ], [ %i.cu, %bb.v ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.w, label %bb.m, !llvm.loop !46873

bb.m:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit111
  %.pn125 = phi ptr [ %i.cd, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041126, %.loopexit111 ] ; 2 uses
  %.042124 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit111 ] ; 2 uses
  %.041126 = getelementptr inbounds i8, ptr %.pn125, i64 -64 ; 4 uses
  %i.ce = load <16 x i8>, ptr %.041126, align 16, !tbaa !13
  %i.cf = icmp slt <16 x i8> %i.ce, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = and i16 %i.cg, 4095                     ; 2 uses
  %.sroa.069.0.extract.trunc = zext nneg i16 %i.ch to i32 ; 2 uses
  %cond = icmp eq i16 %i.ch, 0
  br i1 %cond, label %.loopexit111, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ci = icmp ne ptr %.041126, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds i8, ptr %.pn125, i64 -48 ; 2 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !46823
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0117 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.0116 = phi i32 [ %.sroa.069.0.extract.trunc, %.lr.ph ], [ %.sroa.066.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cl = and i32 %.sroa.066.0116, 1
  %.not.i55 = icmp eq i32 %i.cl, 0
  br i1 %.not.i55, label %bb.o, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !81

bb.o:                                             ; preds = %bb.n
  %i.cm = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.066.0116, i1 true) ; 2 uses
  %i.cn = add i32 %.sroa.8.0117, %i.cm
  %i.co = add nuw nsw i32 %i.cm, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.n, %bb.o
  %.pn109 = phi i32 [ %i.co, %bb.o ], [ 1, %bb.n ]
  %.sroa.8.1.in = phi i32 [ %i.cn, %bb.o ], [ %.sroa.8.0117, %bb.n ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.066.1 = lshr i32 %.sroa.066.0116, %.pn109 ; 2 uses
  %i.cp = zext i32 %.sroa.8.1.in to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cs
  call void @llvm.prefetch.p0(ptr %i.ct, i32 0, i32 3, i32 1)
  %.not106 = icmp eq i32 %.sroa.066.1, 0
  br i1 %.not106, label %.lr.ph122, label %bb.n

.lr.ph122:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.v
  %.143121 = phi i64 [ %i.cu, %bb.v ], [ %.042124, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.871.0120 = phi i32 [ %.sroa.871.1, %bb.v ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.069.0119 = phi i32 [ %.sroa.069.1, %bb.v ], [ %.sroa.069.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cu = add i64 %.143121, -1                    ; 2 uses
  %i.cv = and i32 %.sroa.069.0119, 1
  %.not.i57 = icmp eq i32 %i.cv, 0
  br i1 %.not.i57, label %bb.p, label %bb.q, !prof !81

bb.p:                                             ; preds = %.lr.ph122
  %i.cw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.069.0119, i1 true) ; 2 uses
  %i.cx = add i32 %.sroa.871.0120, %i.cw
  %i.cy = add nuw nsw i32 %i.cw, 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph122, %bb.p
end_hunk_21
begin_hunk_22_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEfEESB_NS0_3MapIfiEENS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKS1_SU_SW_EUlSU_E_EEvSU_:bb.a
  %.not.i135 = icmp eq ptr %i.xu, null
  br i1 %.not.i135, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136: ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEfEES9_NS0_3MapIfiEENS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.cl:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEfEES7_NS0_3MapIfiEENS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.xv = landingpad { ptr, i32 }
          cleanup
  %i.xw = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i137 = icmp eq ptr %i.xw, null
  br i1 %.not.i137, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit282, %.loopexit.split-lp283, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138
  %.pn16.i = phi { ptr, i32 } [ %i.xv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138 ], [ %lpad.loopexit284, %.loopexit282 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp283 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit280 unwind label %bb.co

.loopexit280:                                     ; preds = %bb.cb, %bb.cn, %bb.ci
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ci ], [ %.pn16.i, %bb.cn ], [ %eh.lpad-body, %bb.cb ]
  resume { ptr, i32 } %.merged.i

bb.co:                                            ; preds = %bb.cn, %bb.ci
  %i.xx = landingpad { ptr, i32 }
          catch ptr null
  %i.xy = extractvalue { ptr, i32 } %i.xx, 0
  call void @__clang_call_terminate(ptr %i.xy) #44
  unreachable

bb.cp:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEfEES9_NS0_3MapIfiEENS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit125, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ah, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit279, label %bb.i, !llvm.loop !47147

bb.cq:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.xz = load ptr, ptr %0, align 8, !tbaa !1234
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !1536
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEfEESB_NS0_3MapIfiEENS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_(ptr noundef %i.xz, i32 noundef %i.yb, i32 noundef %i.yd, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.16092) align 8 %1)
  br label %.loopexit279

.loopexit279:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEfEES9_NS0_3MapIfiEENS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit, %bb.h, %bb.cq
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %i.k = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.16109", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !855
  store i64 %2, ptr %i.c, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = load ptr, ptr %0, align 8, !tbaa !47049  ; 5 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !47148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.h, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 15 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !1269
  store i8 0, ptr %i.j, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.x = icmp ult i64 %4, 8
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.an, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.y, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %.08.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %.08.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %.08.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.am, i8 0, i64 16, i1 false)
  %i.an = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !47149

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.an, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ap, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !47150

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  %i.ar = trunc i64 %5 to i8
  store i8 %i.ar, ptr %i.aq, align 2, !tbaa !47103
  store ptr %i.w, ptr %0, align 8, !tbaa !47049
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.at = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.au = load i64, ptr %i.as, align 8, !tbaa !1619
  %i.av = and i64 %i.au, -256
  %i.aw = select i1 %.not.i, i64 4294967295, i64 %i.at
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  store i8 0, ptr %i.k, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !47151
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.ay, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.e, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.d, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !47154
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.f, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.h, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !47156
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.c, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.j, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.b, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.g, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.az = icmp eq i64 %1, 0
  br i1 %i.az, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfivvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.s, %i.n
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bb = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0132 = phi i64 [ 0, %bb.c ], [ %i.bp, %bb.h ] ; 3 uses
  %.042131 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0132
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.be, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 %.042131 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKfiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !13
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.042131 ; 2 uses
  call void @llvm.assume(i1 %i.bb)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0132 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load float, ptr %i.bj, align 4, !tbaa !4595
  store float %i.bl, ptr %i.bi, align 4, !tbaa !47124
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !3
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !47126
  %i.bo = add nuw i64 %.042131, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bo, %bb.g ], [ %.042131, %bb.d ] ; 3 uses
  %i.bp = add i64 %.0132, 1
  %i.bq = icmp ult i64 %.1, %1
  br i1 %i.bq, label %bb.d, label %bb.i, !llvm.loop !47158

bb.i:                                             ; preds = %bb.h
  %i.br = add i64 %.1, -1                         ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.br
  %i.bt = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bt)
  %i.bu = and i64 %i.br, 255                      ; 2 uses
  %i.bv = icmp samesign ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = lshr i64 %i.bu, 1
  %i.bx = ptrtoint ptr %i.bs to i64
  %i.by = or i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !855
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.ca = icmp slt i64 %4, 0
  br i1 %i.ca, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfivvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  resume { ptr, i32 } %i.cc

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.cb, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cd = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.y, %bb.o
  %.155.lcssa = phi i64 [ %.054128, %bb.o ], [ %i.ck, %bb.y ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.z, label %bb.o, !llvm.loop !47159

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59129 = phi ptr [ %i.cd, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053130, %.loopexit ] ; 2 uses
  %.054128 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053130 = getelementptr inbounds i8, ptr %.pn59129, i64 -128 ; 4 uses
  %i.ce = load <16 x i8>, ptr %.053130, align 16, !tbaa !13
  %i.cf = icmp slt <16 x i8> %i.ce, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = and i16 %i.cg, 16383                    ; 2 uses
  %.not115123 = icmp eq i16 %i.ch, 0
  br i1 %.not115123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.ch to i32
  %i.ci = icmp ne ptr %.053130, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds i8, ptr %.pn59129, i64 -112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.y
  %.155126 = phi i64 [ %.054128, %.lr.ph ], [ %i.ck, %bb.y ]
  %.sroa.8.0125 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.y ] ; 2 uses
  %.sroa.078.0124 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.y ] ; 3 uses
  %i.ck = add i64 %.155126, -1                    ; 2 uses
  %i.cl = and i32 %.sroa.078.0124, 1
  %.not.i71 = icmp eq i32 %i.cl, 0
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !81
end_hunk_22
begin_hunk_23_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEdEESB_NS0_3MapIdiEENS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKS1_SU_SW_EUlSU_E_EEvSU_:bb.a
  %.not.i135 = icmp eq ptr %i.xl, null
  br i1 %.not.i135, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136: ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEdEES9_NS0_3MapIdiEENS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.cl:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEdEES7_NS0_3MapIdiEENS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.xm = landingpad { ptr, i32 }
          cleanup
  %i.xn = load ptr, ptr %10, align 8, !tbaa !1108
  %.not.i137 = icmp eq ptr %i.xn, null
  br i1 %.not.i137, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138: ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit282, %.loopexit.split-lp283, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138
  %.pn16.i = phi { ptr, i32 } [ %i.xm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit138 ], [ %lpad.loopexit284, %.loopexit282 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp283 ]
  invoke void @__cxa_end_catch()
          to label %.loopexit280 unwind label %bb.co

.loopexit280:                                     ; preds = %bb.cb, %bb.cn, %bb.ci
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ci ], [ %.pn16.i, %bb.cn ], [ %eh.lpad-body, %bb.cb ]
  resume { ptr, i32 } %.merged.i

bb.co:                                            ; preds = %bb.cn, %bb.ci
  %i.xo = landingpad { ptr, i32 }
          catch ptr null
  %i.xp = extractvalue { ptr, i32 } %i.xo, 0
  call void @__clang_call_terminate(ptr %i.xp) #44
  unreachable

bb.cp:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEdEES9_NS0_3MapIdiEENS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit125, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit136
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ah, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit279, label %bb.i, !llvm.loop !47437

bb.cq:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.xq = load ptr, ptr %0, align 8, !tbaa !1234
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !1536
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEdEESB_NS0_3MapIdiEENS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_(ptr noundef %i.xq, i32 noundef %i.xs, i32 noundef %i.xu, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.16220) align 8 %1)
  br label %.loopexit279

.loopexit279:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEdEES9_NS0_3MapIdiEENS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit, %bb.h, %bb.cq
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1619
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %i.k = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.16238", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !855
  store i64 %2, ptr %i.c, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.l = load ptr, ptr %0, align 8, !tbaa !47339  ; 5 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !47438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 4
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 8
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 4
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 8
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.h, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #48 ; 16 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !1269
  store i8 0, ptr %i.j, align 1, !tbaa !88
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.x = icmp ult i64 %4, 8
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.an, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw [256 x i8], ptr %i.w, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.y, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %i.w, i64 %.08.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw [256 x i8], ptr %i.w, i64 %.08.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.w, i64 %.08.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.w, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [256 x i8], ptr %i.w, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [256 x i8], ptr %i.w, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [256 x i8], ptr %i.w, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.am, i8 0, i64 16, i1 false)
  %i.an = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !47439

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.an, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ap, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %i.w, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !47440

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  %i.ar = trunc i64 %5 to i8
  store i8 %i.ar, ptr %i.aq, align 2, !tbaa !47393
  store ptr %i.w, ptr %0, align 8, !tbaa !47339
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.at = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.au = load i64, ptr %i.as, align 8, !tbaa !1619
  %i.av = and i64 %i.au, -256
  %i.aw = select i1 %.not.i, i64 4294967295, i64 %i.at
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  store i8 0, ptr %i.k, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !47441
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.ay, align 8, !tbaa !2319
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.e, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.d, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !47444
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.f, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.h, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !47446
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.c, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.j, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2319
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.b, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.g, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  %i.az = icmp eq i64 %1, 0
  br i1 %i.az, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdivvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.s, %i.n
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bb = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0132 = phi i64 [ 0, %bb.c ], [ %i.bp, %bb.h ] ; 3 uses
  %.042131 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0132
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13  ; 2 uses
  %.not116 = icmp eq i8 %i.be, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 %.042131 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKdiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !13
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.042131 ; 2 uses
  call void @llvm.assume(i1 %i.bb)
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.0132 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !4912
  store double %i.bl, ptr %i.bi, align 8, !tbaa !47414
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bn = load i32, ptr %i.bk, align 8, !tbaa !3
  store i32 %i.bn, ptr %i.bm, align 8, !tbaa !47416
  %i.bo = add nuw i64 %.042131, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bo, %bb.g ], [ %.042131, %bb.d ] ; 4 uses
  %i.bp = add i64 %.0132, 1
  %i.bq = icmp ult i64 %.1, %1
  br i1 %i.bq, label %bb.d, label %bb.i, !llvm.loop !47448

bb.i:                                             ; preds = %bb.h
  %i.br = add i64 %.1, 255
  %i.bs = getelementptr [16 x i8], ptr %i.w, i64 %.1
  %i.bt = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bt)
  %i.bu = and i64 %i.br, 255                      ; 2 uses
  %i.bv = icmp samesign ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !855
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i64 %4, 0
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !81

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdivvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  resume { ptr, i32 } %i.cb

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.ca, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cc = getelementptr inbounds nuw [256 x i8], ptr %i.l, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.y, %bb.o
  %.155.lcssa = phi i64 [ %.054128, %bb.o ], [ %i.cj, %bb.y ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.z, label %bb.o, !llvm.loop !47449

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59129 = phi ptr [ %i.cc, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053130, %.loopexit ] ; 2 uses
  %.054128 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053130 = getelementptr inbounds i8, ptr %.pn59129, i64 -256 ; 4 uses
  %i.cd = load <16 x i8>, ptr %.053130, align 16, !tbaa !13
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = and i16 %i.cf, 16383                    ; 2 uses
  %.not115123 = icmp eq i16 %i.cg, 0
  br i1 %.not115123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cg to i32
  %i.ch = icmp ne ptr %.053130, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds i8, ptr %.pn59129, i64 -240
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.y
  %.155126 = phi i64 [ %.054128, %.lr.ph ], [ %i.cj, %bb.y ]
  %.sroa.8.0125 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.y ] ; 2 uses
  %.sroa.078.0124 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.y ] ; 3 uses
  %i.cj = add i64 %.155126, -1                    ; 2 uses
  %i.ck = and i32 %.sroa.078.0124, 1
  %.not.i71 = icmp eq i32 %i.ck, 0
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !81

end_hunk_23
begin_hunk_24_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_iEENS0_15ConstantCheckerIJNS0_5ArrayISC_EEEEEJSI_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKS1_SV_SX_EUlSV_E_EEvSV_:bb.a
  invoke void @__cxa_end_catch()
          to label %.loopexit300 unwind label %bb.cc

.loopexit300:                                     ; preds = %bb.bp, %bb.cb, %bb.bw
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.bw ], [ %.pn16.i, %bb.cb ], [ %eh.lpad-body, %bb.bp ]
  resume { ptr, i32 } %.merged.i

bb.cc:                                            ; preds = %bb.cb, %bb.bw
  %i.zn = landingpad { ptr, i32 }
          catch ptr null
  %i.zo = extractvalue { ptr, i32 } %i.zn, 0
  call void @__clang_call_terminate(ptr %i.zo) #44
  unreachable

bb.cd:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_iEENS0_15ConstantCheckerIJNS0_5ArrayISA_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit144, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit155
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit299, label %bb.i, !llvm.loop !47720

bb.ce:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.zp = load ptr, ptr %0, align 8, !tbaa !1234
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !1536
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !1538
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_iEENS0_15ConstantCheckerIJNS0_5ArrayISC_EEEEEJSI_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_(ptr noundef %i.zp, i32 noundef %i.zr, i32 noundef %i.zt, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.16340) align 8 %1)
  br label %.loopexit299

.loopexit299:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_iEENS0_15ConstantCheckerIJNS0_5ArrayISA_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit, %bb.h, %bb.ce
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1619
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.16352", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47630 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !35488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = mul i64 %i.x, 24
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #48 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1269
  %i.ah = load ptr, ptr %0, align 8, !tbaa !47683 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = mul i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !47683
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !47721
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.al = icmp ult i64 %4, 8
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bb, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.as, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !47722

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bd, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !47723

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !47630
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1619
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 0, ptr %6, align 8, !tbaa !2314, !alias.scope !47724
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2319
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !35495
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.685.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.886.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.987.0..sroa_idx, align 8, !tbaa !47727
  %.sroa.1088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1088.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1189.0..sroa_idx, align 8, !tbaa !47729
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bo = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %.0128 = phi i64 [ 0, %bb.d ], [ %i.bz, %bb.h ] ; 3 uses
  %.034127 = phi i64 [ 0, %bb.d ], [ %.1, %bb.h ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0128
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13  ; 2 uses
  %.not110 = icmp eq i8 %i.br, 0
  br i1 %.not110, label %bb.h, label %bb.f, !prof !81

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034127 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.034127
  call void @llvm.assume(i1 %i.bo)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.0128
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !3
  %i.by = add nuw i64 %.034127, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.e
  %.1 = phi i64 [ %i.by, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034127, %bb.e ] ; 2 uses
  %i.bz = add i64 %.0128, 1
  %i.ca = icmp ult i64 %.1, %1
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !47731

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !81

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.l, %bb.i
  %.0102 = phi ptr [ %7, %bb.i ], [ %i.cc, %bb.l ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0102, i8 0, i64 %4, i1 false)
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.m

.loopexit111:                                     ; preds = %bb.v, %bb.m
  %.143.lcssa = phi i64 [ %.042124, %bb.m ], [ %i.cu, %bb.v ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.w, label %bb.m, !llvm.loop !47732

bb.m:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit111
  %.pn125 = phi ptr [ %i.cd, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041126, %.loopexit111 ] ; 2 uses
  %.042124 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit111 ] ; 2 uses
  %.041126 = getelementptr inbounds i8, ptr %.pn125, i64 -64 ; 4 uses
  %i.ce = load <16 x i8>, ptr %.041126, align 16, !tbaa !13
  %i.cf = icmp slt <16 x i8> %i.ce, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16
  %i.ch = and i16 %i.cg, 4095                     ; 2 uses
  %.sroa.069.0.extract.trunc = zext nneg i16 %i.ch to i32 ; 2 uses
  %cond = icmp eq i16 %i.ch, 0
  br i1 %cond, label %.loopexit111, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ci = icmp ne ptr %.041126, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds i8, ptr %.pn125, i64 -48 ; 2 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !47683
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0117 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.0116 = phi i32 [ %.sroa.069.0.extract.trunc, %.lr.ph ], [ %.sroa.066.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cl = and i32 %.sroa.066.0116, 1
  %.not.i55 = icmp eq i32 %i.cl, 0
  br i1 %.not.i55, label %bb.o, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !81

bb.o:                                             ; preds = %bb.n
  %i.cm = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.066.0116, i1 true) ; 2 uses
  %i.cn = add i32 %.sroa.8.0117, %i.cm
  %i.co = add nuw nsw i32 %i.cm, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.n, %bb.o
  %.pn109 = phi i32 [ %i.co, %bb.o ], [ 1, %bb.n ]
  %.sroa.8.1.in = phi i32 [ %i.cn, %bb.o ], [ %.sroa.8.0117, %bb.n ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.066.1 = lshr i32 %.sroa.066.0116, %.pn109 ; 2 uses
  %i.cp = zext i32 %.sroa.8.1.in to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.cs
  call void @llvm.prefetch.p0(ptr %i.ct, i32 0, i32 3, i32 1)
  %.not106 = icmp eq i32 %.sroa.066.1, 0
  br i1 %.not106, label %.lr.ph122, label %bb.n

.lr.ph122:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.v
  %.143121 = phi i64 [ %i.cu, %bb.v ], [ %.042124, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.871.0120 = phi i32 [ %.sroa.871.1, %bb.v ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.069.0119 = phi i32 [ %.sroa.069.1, %bb.v ], [ %.sroa.069.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cu = add i64 %.143121, -1                    ; 2 uses
  %i.cv = and i32 %.sroa.069.0119, 1
  %.not.i57 = icmp eq i32 %i.cv, 0
  br i1 %.not.i57, label %bb.p, label %bb.q, !prof !81

bb.p:                                             ; preds = %.lr.ph122
  %i.cw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.069.0119, i1 true) ; 2 uses
  %i.cx = add i32 %.sroa.871.0120, %i.cw
  %i.cy = add nuw nsw i32 %i.cw, 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph122, %bb.p
end_hunk_24
begin_hunk_25_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESF_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESK_ImmERKT_DpOT0_:bb.a
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ea ; 2 uses
  %i.eh = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !1619
  %i.ej = lshr i64 %i.ei, 8                       ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !3
  %i.el = load ptr, ptr %1, align 8, !tbaa !48193, !nonnull !797, !noundef !797
  %i.em = and i64 %i.ej, 4294967295
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.em ; 2 uses
  %i.eo = load i64, ptr %6, align 8, !tbaa !1635
  %i.ep = inttoptr i64 %i.eo to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !tbaa.struct !1683
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i32 0, ptr %i.eq, align 8, !tbaa !48220
  %i.er = load i64, ptr %i.a, align 8, !tbaa !1619 ; 2 uses
  %i.es = and i64 %i.er, -256
  %i.et = add i64 %i.es, 256
  %i.eu = and i64 %i.er, 255
  %i.ev = or disjoint i64 %i.et, %i.eu
  store i64 %i.ev, ptr %i.a, align 8, !tbaa !1619
  br label %bb.r

bb.r:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink167 = phi ptr [ %i.cs, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.eg, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.ea, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink167, ptr %0, align 8, !tbaa !1630
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !855
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ew, align 8, !tbaa !35485
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1619
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"class.folly::detail::ScopeGuardImpl.16544", align 8 ; 15 uses
  %8 = alloca %"struct.std::array.728", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !855
  store i64 %2, ptr %i.b, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48137 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !35488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = mul i64 %i.x, 24
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #48 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1269
  %i.ah = load ptr, ptr %0, align 8, !tbaa !48193 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = mul i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !48193
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !48235
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.al = icmp ult i64 %4, 8
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bb, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.as, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !48236

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bd, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bc, i8 0, i64 16, i1 false)
  %i.bd = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !48237

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !48137
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1619
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i8 0, ptr %7, align 8, !tbaa !2314, !alias.scope !48238
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2319
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.c, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !35495
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.e, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !1274
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.g, ptr %.sroa.887.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %0, ptr %.sroa.988.0..sroa_idx, align 8, !tbaa !48241
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.b, ptr %.sroa.1089.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.1190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.i, ptr %.sroa.1190.0..sroa_idx, align 8, !tbaa !48243
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1267
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1267
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bo = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %.0130 = phi i64 [ 0, %bb.d ], [ %i.bz, %bb.h ] ; 3 uses
  %.034129 = phi i64 [ 0, %bb.d ], [ %.1, %bb.h ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0130
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13  ; 2 uses
  %.not111 = icmp eq i8 %i.br, 0
  br i1 %.not111, label %bb.h, label %bb.f, !prof !81

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034129 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.034129
  call void @llvm.assume(i1 %i.bo)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.0130
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !3
  %i.by = add nuw i64 %.034129, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.e
  %.1 = phi i64 [ %i.by, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034129, %bb.e ] ; 2 uses
  %i.bz = add i64 %.0130, 1
  %i.ca = icmp ult i64 %.1, %1
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !48245

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !81

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #42
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.l, %bb.i
  %.0103 = phi ptr [ %8, %bb.i ], [ %i.cc, %bb.l ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0103, i8 0, i64 %4, i1 false)
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %bb.n

.loopexit112:                                     ; preds = %bb.x, %bb.n
  %.143.lcssa = phi i64 [ %.042126, %bb.n ], [ %i.cx, %bb.x ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.z, label %bb.n, !llvm.loop !48246

bb.n:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit112
  %.pn127 = phi ptr [ %i.ce, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041128, %.loopexit112 ] ; 2 uses
  %.042126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit112 ] ; 2 uses
  %.041128 = getelementptr inbounds i8, ptr %.pn127, i64 -64 ; 4 uses
  %i.ch = load <16 x i8>, ptr %.041128, align 16, !tbaa !13
  %i.ci = icmp slt <16 x i8> %i.ch, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16
  %i.ck = and i16 %i.cj, 4095                     ; 2 uses
  %.sroa.070.0.extract.trunc = zext nneg i16 %i.ck to i32 ; 2 uses
  %cond = icmp eq i16 %i.ck, 0
  br i1 %cond, label %.loopexit112, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.cl = icmp ne ptr %.041128, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds i8, ptr %.pn127, i64 -48 ; 2 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !48193
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0119 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.0118 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.co = and i32 %.sroa.067.0118, 1
  %.not.i55 = icmp eq i32 %i.co, 0
  br i1 %.not.i55, label %bb.p, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !81

bb.p:                                             ; preds = %bb.o
  %i.cp = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.0118, i1 true) ; 2 uses
  %i.cq = add i32 %.sroa.8.0119, %i.cp
  %i.cr = add nuw nsw i32 %i.cp, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.o, %bb.p
  %.pn110 = phi i32 [ %i.cr, %bb.p ], [ 1, %bb.o ]
  %.sroa.8.1.in = phi i32 [ %i.cq, %bb.p ], [ %.sroa.8.0119, %bb.o ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.067.1 = lshr i32 %.sroa.067.0118, %.pn110 ; 2 uses
  %i.cs = zext i32 %.sroa.8.1.in to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cv
  call void @llvm.prefetch.p0(ptr %i.cw, i32 0, i32 3, i32 1)
  %.not107 = icmp eq i32 %.sroa.067.1, 0
  br i1 %.not107, label %.lr.ph124, label %bb.o

.lr.ph124:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.x
  %.143123 = phi i64 [ %i.cx, %bb.x ], [ %.042126, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.872.0122 = phi i32 [ %.sroa.872.1, %bb.x ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.070.0121 = phi i32 [ %.sroa.070.1, %bb.x ], [ %.sroa.070.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cx = add i64 %.143123, -1                    ; 2 uses
  %i.cy = and i32 %.sroa.070.0121, 1
  %.not.i57 = icmp eq i32 %i.cy, 0
  br i1 %.not.i57, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59, !prof !81

end_hunk_25
