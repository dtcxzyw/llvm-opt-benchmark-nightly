inline.NumInlined: 92648
inline.NumDeleted: 25948
loop-unroll.NumCompletelyUnrolled: 437
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 576
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
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1391
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
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
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #29 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !541
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #29 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !541
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #42
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !1391   ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !2040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1818

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !2041

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !1813
  store ptr %i.v, ptr %0, align 8, !tbaa !1391
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !2044
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !2048
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !2052
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042130
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0131
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1820
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !1820
  %i.bk = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bk, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bl = add i64 %.0131, 1
  %i.bm = icmp ult i64 %.1, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !2054

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
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %4, 0
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.by

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bx, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cg, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !2055

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bz, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -128 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cj = add i32 %.sroa.8.0124, %i.ci
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE19tryEmplaceValueImplIbJRKSt21piecewise_construct_tSt5tupleIJObEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISE_IKbbEEEEEbESE_ImmERKT_DpOT0_:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !8662
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmm.exit: ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !2047
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !526, !range !551, !noundef !552
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !8663
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 0, ptr %i.bw, align 1, !tbaa !8665
  %i.bx = lshr i64 %i.bl, 3
  %i.by = ptrtoint ptr %i.br to i64
  %i.bz = or i64 %i.bx, %i.by                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !8631
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEESG_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmm.exit
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEESG_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEESG_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmm.exit, %bb.o
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEESG_ImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEESG_ImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEESG_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbbEEEEESG_ImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !8623
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !612
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !8666
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.2113", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !8598   ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !8669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 1
  %i.o = add i64 %i.n, 16
  %i.p = mul i64 %2, 48
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 1
  %i.t = add i64 %i.s, 16
  %i.u = mul i64 %4, 48
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !8670

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !8671

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !8662
  store ptr %i.v, ptr %0, align 8, !tbaa !8598
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !8672
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !8675
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !8677
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbbvvvEEE16initializeChunksEPhmm.exit
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbbEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !526, !range !551, !noundef !552
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !8663
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !526, !range !551, !noundef !552
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !8665
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !8679

bb.i:                                             ; preds = %bb.h
  %i.bq = add i64 %.1, -1                         ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bq
  %i.bs = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bs)
  %i.bt = and i64 %i.bq, 255                      ; 2 uses
  %i.bu = icmp samesign ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = lshr i64 %i.bt, 3
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i64 %4, 0
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbbvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.cb

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.ca, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cj, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !8680

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cc, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -48 ; 4 uses
  %i.cd = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = and i16 %i.cf, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cg, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cg to i32
  %i.ch = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds i8, ptr %.pn59128, i64 -32
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cj, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cj = add i64 %.155125, -1                    ; 2 uses
  %i.ck = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.ck, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE19tryEmplaceValueImplIaJRKSt21piecewise_construct_tSt5tupleIJOaEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISE_IKaaEEEEEbESE_ImmERKT_DpOT0_:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !8998
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKaaEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKaaEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKaaEE6setTagEmm.exit: ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !1216
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !8999
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 0, ptr %i.bw, align 1, !tbaa !9001
  %i.bx = lshr i64 %i.bl, 3
  %i.by = ptrtoint ptr %i.br to i64
  %i.bz = or i64 %i.bx, %i.by                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !8979
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaaEEEEESG_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaaEE6setTagEmm.exit
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaaEEEEESG_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaaEEEEESG_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaaEE6setTagEmm.exit, %bb.o
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaaEEEEESG_ImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaaEEEEESG_ImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaaEEEEESG_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaaEEEEESG_ImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !8971
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !612
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !9002
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.2262", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !8946   ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !9005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 1
  %i.o = add i64 %i.n, 16
  %i.p = mul i64 %2, 48
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 1
  %i.t = add i64 %i.s, 16
  %i.u = mul i64 %4, 48
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9006

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !9007

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !8998
  store ptr %i.v, ptr %0, align 8, !tbaa !8946
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !9008
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !9011
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !9013
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaavvvEEE16initializeChunksEPhmm.exit
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKaaEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !17
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !8999
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !17
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !9001
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !9015

bb.i:                                             ; preds = %bb.h
  %i.bq = add i64 %.1, -1                         ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bq
  %i.bs = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bs)
  %i.bt = and i64 %i.bq, 255                      ; 2 uses
  %i.bu = icmp samesign ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = lshr i64 %i.bt, 3
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i64 %4, 0
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIaavvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.cb

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.ca, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cj, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !9016

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cc, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -48 ; 4 uses
  %i.cd = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
  %i.ce = icmp slt <16 x i8> %i.cd, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %i.cg = and i16 %i.cf, 16383                    ; 2 uses
  %.not115122 = icmp eq i16 %i.cg, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cg to i32
  %i.ch = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds i8, ptr %.pn59128, i64 -32
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cj, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cj = add i64 %.155125, -1                    ; 2 uses
  %i.ck = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.ck, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE19tryEmplaceValueImplIsJRKSt21piecewise_construct_tSt5tupleIJOsEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISE_IKssEEEEEbESE_ImmERKT_DpOT0_:bb.a
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKssEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKssEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKssEE6setTagEmm.exit: ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !4251
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !2483
  store i16 %i.bv, ptr %i.br, align 2, !tbaa !9336
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i16 0, ptr %i.bw, align 2, !tbaa !9338
  %i.bx = lshr i64 %i.bl, 2
  %i.by = ptrtoint ptr %i.br to i64
  %i.bz = or i64 %i.bx, %i.by                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !9315
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKssEEEEESG_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKssEE6setTagEmm.exit
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKssEEEEESG_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKssEEEEESG_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKssEE6setTagEmm.exit, %bb.o
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKssEEEEESG_ImmEDpOT_.exit
  %.sink102 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKssEEEEESG_ImmEDpOT_.exit ]
  %.lcssa100.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKssEEEEESG_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKssEEEEESG_ImmEDpOT_.exit ]
  store ptr %.sink102, ptr %0, align 8, !tbaa !9307
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa100.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !612
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !9339
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.2405", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !9282   ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !9342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = add i64 %2, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
  %i.o = mul i64 %i.n, %3
  store i64 %i.o, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.p = icmp eq i64 %2, 1                        ; 2 uses
  %i.q = shl i64 %3, 2
  %i.r = add i64 %i.q, 16
  %i.s = shl i64 %2, 6
  %.0.i = select i1 %i.p, i64 %i.r, i64 %i.s
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.t = add i64 %4, -1
  %i.u = lshr i64 %i.t, 12
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = mul i64 %i.v, %5
  store i64 %i.w, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.x = icmp eq i64 %4, 1                        ; 2 uses
  %i.y = shl i64 %5, 2
  %i.z = add i64 %i.y, 16
  %i.aa = shl i64 %4, 6
  %.0.i69 = select i1 %i.x, i64 %i.z, i64 %i.aa   ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9343

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !9344

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.av = trunc i64 %5 to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i16 %i.av, ptr %i.aw, align 1
  store ptr %i.ab, ptr %0, align 8, !tbaa !9282
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !1395
  %i.ba = and i64 %i.az, -256
  %i.bb = select i1 %.not.i, i64 4294967295, i64 %i.ay
  %i.bc = or i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !9345
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bd, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !9348
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !9350
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.be = icmp eq i64 %1, 0
  br i1 %i.be, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIssvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.x, %i.p
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.bg = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0131 = phi i64 [ 0, %bb.c ], [ %i.bu, %bb.h ] ; 3 uses
  %.042130 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0131
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bj, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.042130 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !17
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKssEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !17
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.bg)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0131 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load i16, ptr %i.bo, align 2, !tbaa !2483
  store i16 %i.bq, ptr %i.bn, align 2, !tbaa !9336
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bs = load i16, ptr %i.bp, align 2, !tbaa !2483
  store i16 %i.bs, ptr %i.br, align 2, !tbaa !9338
  %i.bt = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bt, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bu = add i64 %.0131, 1
  %i.bv = icmp ult i64 %.1, %1
  br i1 %i.bv, label %bb.d, label %bb.i, !llvm.loop !9352

bb.i:                                             ; preds = %bb.h
  %i.bw = add i64 %.1, -1                         ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bw
  %i.by = icmp ne ptr %i.ab, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.by)
  %i.bz = and i64 %i.bw, 255                      ; 2 uses
  %i.ca = icmp samesign ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = lshr i64 %i.bz, 2
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = or i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.cf = icmp slt i64 %4, 0
  br i1 %i.cf, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIssvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ch

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.cg, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cp, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !9353

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.ci, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -64 ; 4 uses
  %i.cj = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
  %i.ck = icmp slt <16 x i8> %i.cj, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16
  %i.cm = and i16 %i.cl, 4095                     ; 2 uses
  %.not115122 = icmp eq i16 %i.cm, 0
  br i1 %.not115122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.078.0.extract.trunc = zext nneg i16 %i.cm to i32
  %i.cn = icmp ne ptr %.053129, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds i8, ptr %.pn59128, i64 -48
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.w
  %.155125 = phi i64 [ %.054127, %.lr.ph ], [ %i.cp, %bb.w ]
  %.sroa.8.0124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.w ] ; 2 uses
  %.sroa.078.0123 = phi i32 [ %.sroa.078.0.extract.trunc, %.lr.ph ], [ %.sroa.078.1, %bb.w ] ; 3 uses
  %i.cp = add i64 %.155125, -1                    ; 2 uses
  %i.cq = and i32 %.sroa.078.0123, 1
  %.not.i71 = icmp eq i32 %i.cq, 0
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE19tryEmplaceValueImplIiJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISE_IKiiEEEEEbESE_ImmERKT_DpOT0_:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !9672
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 4 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load i64, ptr %6, align 8, !tbaa !958
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !9673
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 0, ptr %i.bx, align 4, !tbaa !9675
  %i.by = lshr i64 %i.bm, 1
  %i.bz = ptrtoint ptr %i.bs to i64
  %i.ca = or i64 %i.by, %i.bz                     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !9652
  %i.cd = icmp ult i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiiEEEEESG_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiiEEEEESG_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiiEEEEESG_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmm.exit, %bb.o
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cf = and i64 %i.ce, -256
  %i.cg = add i64 %i.cf, 256
  %i.ch = and i64 %i.ce, 255
  %i.ci = or disjoint i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiiEEEEESG_ImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiiEEEEESG_ImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiiEEEEESG_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiiEEEEESG_ImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !9644
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !612
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cj, align 8, !tbaa !9676
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.2548", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !9619   ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !9679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9680

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !9681

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiivvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !9672
  store ptr %i.v, ptr %0, align 8, !tbaa !9619
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !9682
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !9685
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !9687
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKiiEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !3
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !9673
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !9675
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !9689

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
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i64 %4, 0
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIiivvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.cb

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.ca, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cj, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !9690

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cc, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -128 ; 4 uses
  %i.cd = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE19tryEmplaceValueImplIlJRKSt21piecewise_construct_tSt5tupleIJOlEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISE_IKllEEEEEbESE_ImmERKT_DpOT0_:bb.a
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !10009
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKllEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKllEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKllEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !1197
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !612
  store i64 %i.bv, ptr %i.br, align 8, !tbaa !10010
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !10012
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = or i64 %i.bx, %i.bl                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !9989
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKllEEEEESG_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKllEE6setTagEmm.exit
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKllEEEEESG_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKllEEEEESG_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKllEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !1395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKllEEEEESG_ImmEDpOT_.exit
  %.lcssa92.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKllEEEEESG_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa93.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKllEEEEESG_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKllEEEEESG_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa92.sink, ptr %0, align 8, !tbaa !9981
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa93.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !612
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ch, align 8, !tbaa !10013
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.2691", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !9956   ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !10016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !10017

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !10018

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !10009
  store ptr %i.v, ptr %0, align 8, !tbaa !9956
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !10019
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !10022
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !10024
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIllvvvEEE16initializeChunksEPhmm.exit
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKllEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !612
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !10010
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !612
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !10012
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 4 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !10026

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
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %4, 0
  br i1 %i.by, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIllvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ca

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bz, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cb = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ci, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !10027

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cb, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -256 ; 4 uses
  %i.cc = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE19tryEmplaceValueImplIfJRKSt21piecewise_construct_tSt5tupleIJOfEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISE_IKffEEEEEbESE_ImmERKT_DpOT0_:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !10348
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkISt4pairIKffEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKffEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKffEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load i64, ptr %6, align 8, !tbaa !6020
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !5992
  %i.bx = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bw, i64 0
  store <2 x float> %i.bx, ptr %i.bs, align 4, !tbaa !5992
  %i.by = lshr i64 %i.bm, 1
  %i.bz = ptrtoint ptr %i.bs to i64
  %i.ca = or i64 %i.by, %i.bz                     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10329
  %i.cd = icmp ult i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKffEEEEESG_ImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKffEE6setTagEmm.exit
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKffEEEEESG_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKffEEEEESG_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKffEE6setTagEmm.exit, %bb.o
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cf = and i64 %i.ce, -256
  %i.cg = add i64 %i.cf, 256
  %i.ch = and i64 %i.ce, 255
  %i.ci = or disjoint i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKffEEEEESG_ImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKffEEEEESG_ImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKffEEEEESG_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKffEEEEESG_ImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !10321
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !612
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cj, align 8, !tbaa !10349
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.2832", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !612
  store i64 %2, ptr %i.c, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = load ptr, ptr %0, align 8, !tbaa !10293  ; 5 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !10352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.h, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !1216
  store i8 0, ptr %i.j, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !10353

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.an, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !10354

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  %i.ar = trunc i64 %5 to i8
  store i8 %i.ar, ptr %i.aq, align 2, !tbaa !10348
  store ptr %i.w, ptr %0, align 8, !tbaa !10293
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.at = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.au = load i64, ptr %i.as, align 8, !tbaa !1395
  %i.av = and i64 %i.au, -256
  %i.aw = select i1 %.not.i, i64 4294967295, i64 %i.at
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #34
  store i8 0, ptr %i.k, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !10355
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.ay, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.e, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.d, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !10358
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.f, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.h, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !10360
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.c, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.j, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.b, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.g, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.az = icmp eq i64 %1, 0
  br i1 %i.az, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIffvvvEEE16initializeChunksEPhmm.exit
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
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.be, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 %.042131 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKffEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.042131 ; 2 uses
  call void @llvm.assume(i1 %i.bb)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0132 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load float, ptr %i.bj, align 4, !tbaa !5992
  store float %i.bl, ptr %i.bi, align 4, !tbaa !10362
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bn = load float, ptr %i.bk, align 4, !tbaa !5992
  store float %i.bn, ptr %i.bm, align 4, !tbaa !10364
  %i.bo = add nuw i64 %.042131, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bo, %bb.g ], [ %.042131, %bb.d ] ; 3 uses
  %i.bp = add i64 %.0132, 1
  %i.bq = icmp ult i64 %.1, %1
  br i1 %i.bq, label %bb.d, label %bb.i, !llvm.loop !10365

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
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !612
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.ca = icmp slt i64 %4, 0
  br i1 %i.ca, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIffvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  resume { ptr, i32 } %i.cc

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.cb, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cd = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.y, %bb.o
  %.155.lcssa = phi i64 [ %.054128, %bb.o ], [ %i.ck, %bb.y ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.z, label %bb.o, !llvm.loop !10366

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59129 = phi ptr [ %i.cd, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053130, %.loopexit ] ; 2 uses
  %.054128 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053130 = getelementptr inbounds i8, ptr %.pn59129, i64 -128 ; 4 uses
  %i.ce = load <16 x i8>, ptr %.053130, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE19tryEmplaceValueImplIdJRKSt21piecewise_construct_tSt5tupleIJOdEESA_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISE_IKddEEEEEbESE_ImmERKT_DpOT0_:bb.a
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !10687
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKddEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKddEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKddEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %6, align 8, !tbaa !6628
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !6599
  %i.bw = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bv, i64 0
  store <2 x double> %i.bw, ptr %i.br, align 8, !tbaa !6599
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = or i64 %i.bx, %i.bl                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !10668
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKddEEEEESG_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKddEE6setTagEmm.exit
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKddEEEEESG_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKddEEEEESG_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKddEE6setTagEmm.exit, %bb.n
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !1395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKddEEEEESG_ImmEDpOT_.exit
  %.lcssa92.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKddEEEEESG_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa93.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKddEEEEESG_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESA_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKddEEEEESG_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa92.sink, ptr %0, align 8, !tbaa !10660
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa93.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !612
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ch, align 8, !tbaa !10688
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.2973", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !612
  store i64 %2, ptr %i.c, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = load ptr, ptr %0, align 8, !tbaa !10632  ; 5 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !10691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 4
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 8
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 4
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 8
  %.0.i69 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i69, ptr %i.h, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !1216
  store i8 0, ptr %i.j, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !10692

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.an, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !10693

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  %i.ar = trunc i64 %5 to i8
  store i8 %i.ar, ptr %i.aq, align 2, !tbaa !10687
  store ptr %i.w, ptr %0, align 8, !tbaa !10632
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.at = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.au = load i64, ptr %i.as, align 8, !tbaa !1395
  %i.av = and i64 %i.au, -256
  %i.aw = select i1 %.not.i, i64 4294967295, i64 %i.at
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #34
  store i8 0, ptr %i.k, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !10694
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.ay, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.e, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.d, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !10697
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.f, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.h, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !10699
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.c, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.j, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.b, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.g, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.az = icmp eq i64 %1, 0
  br i1 %i.az, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIddvvvEEE16initializeChunksEPhmm.exit
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
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.be, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 %.042131 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKddEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.042131 ; 2 uses
  call void @llvm.assume(i1 %i.bb)
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.0132 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !6599
  store double %i.bl, ptr %i.bi, align 8, !tbaa !10701
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bn = load double, ptr %i.bk, align 8, !tbaa !6599
  store double %i.bn, ptr %i.bm, align 8, !tbaa !10703
  %i.bo = add nuw i64 %.042131, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bo, %bb.g ], [ %.042131, %bb.d ] ; 4 uses
  %i.bp = add i64 %.0132, 1
  %i.bq = icmp ult i64 %.1, %1
  br i1 %i.bq, label %bb.d, label %bb.i, !llvm.loop !10704

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
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp slt i64 %4, 0
  br i1 %i.bz, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIddvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  resume { ptr, i32 } %i.cb

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.ca, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cc = getelementptr inbounds nuw [256 x i8], ptr %i.l, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.y, %bb.o
  %.155.lcssa = phi i64 [ %.054128, %bb.o ], [ %i.cj, %bb.y ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.z, label %bb.o, !llvm.loop !10705

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59129 = phi ptr [ %i.cc, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053130, %.loopexit ] ; 2 uses
  %.054128 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053130 = getelementptr inbounds i8, ptr %.pn59129, i64 -256 ; 4 uses
  %i.cd = load <16 x i8>, ptr %.053130, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESF_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bw ; 2 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !1395
  %i.cf = lshr i64 %i.ce, 8                       ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  store i32 %i.cg, ptr %i.cc, align 4, !tbaa !3
  %i.ch = load ptr, ptr %1, align 8, !tbaa !10971, !nonnull !552, !noundef !552
  %i.ci = and i64 %i.cf, 4294967295
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %6, align 8, !tbaa !7813
  %i.cl = inttoptr i64 %i.ck to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !7787
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.co = and i64 %i.cn, -256
  %i.cp = add i64 %i.co, 256
  %i.cq = and i64 %i.cn, 255
  %i.cr = or disjoint i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.a, align 8, !tbaa !1395
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink101 = phi ptr [ %i.ao, %bb.g ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa99.sink = phi i64 [ %i.z, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink101, ptr %0, align 8, !tbaa !958
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa99.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !612
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cs, align 8, !tbaa !11026
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.3111", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10974 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 5
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1216
  %i.ah = load ptr, ptr %0, align 8, !tbaa !10971 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !10971
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !11029
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11030

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !11031

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampES5_vvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !10974
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1395
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !11032
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2047
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !11035
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.685.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.886.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.987.0..sroa_idx, align 8, !tbaa !11037
  %.sroa.1088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1088.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1189.0..sroa_idx, align 8, !tbaa !11039
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
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
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17  ; 2 uses
  %.not110 = icmp eq i8 %i.br, 0
  br i1 %.not110, label %bb.h, label %bb.f, !prof !524

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034127 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !17
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
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !11041

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !524

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampES8_vvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampES8_vvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.l, %bb.i
  %.0102 = phi ptr [ %7, %bb.i ], [ %i.cc, %bb.l ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0102, i8 0, i64 %4, i1 false)
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.m

.loopexit111:                                     ; preds = %bb.v, %bb.m
  %.143.lcssa = phi i64 [ %.042124, %bb.m ], [ %i.cu, %bb.v ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.w, label %bb.m, !llvm.loop !11042

bb.m:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit111
  %.pn125 = phi ptr [ %i.cd, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041126, %.loopexit111 ] ; 2 uses
  %.042124 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit111 ] ; 2 uses
  %.041126 = getelementptr inbounds i8, ptr %.pn125, i64 -64 ; 4 uses
  %i.ce = load <16 x i8>, ptr %.041126, align 16, !tbaa !17
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
  %i.ck = load ptr, ptr %0, align 8, !tbaa !10971
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0117 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.0116 = phi i32 [ %.sroa.069.0.extract.trunc, %.lr.ph ], [ %.sroa.066.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cl = and i32 %.sroa.066.0116, 1
  %.not.i55 = icmp eq i32 %i.cl, 0
  br i1 %.not.i55, label %bb.o, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

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
  br i1 %.not.i57, label %bb.p, label %bb.q, !prof !524

bb.p:                                             ; preds = %.lr.ph122
  %i.cw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.069.0119, i1 true) ; 2 uses
  %i.cx = add i32 %.sroa.871.0120, %i.cw
  %i.cy = add nuw nsw i32 %i.cw, 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph122, %bb.p
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESF_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_:bb.a
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ea ; 2 uses
  %i.eh = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !1395
  %i.ej = lshr i64 %i.ei, 8                       ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !3
  %i.el = load ptr, ptr %1, align 8, !tbaa !11614, !nonnull !552, !noundef !552
  %i.em = and i64 %i.ej, 4294967295
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.el, i64 %i.em ; 2 uses
  %i.eo = load i64, ptr %6, align 8, !tbaa !7299
  %i.ep = inttoptr i64 %i.eo to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !tbaa.struct !7227
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i8 0, i64 16, i1 false)
  %i.er = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.es = and i64 %i.er, -256
  %i.et = add i64 %i.es, 256
  %i.eu = and i64 %i.er, 255
  %i.ev = or disjoint i64 %i.et, %i.eu
  store i64 %i.ev, ptr %i.a, align 8, !tbaa !1395
  br label %bb.r

bb.r:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink167 = phi ptr [ %i.cs, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.eg, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.ea, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink167, ptr %0, align 8, !tbaa !958
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !612
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ew, align 8, !tbaa !11026
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %7 = alloca %"class.folly::detail::ScopeGuardImpl.3337", align 8 ; 15 uses
  %8 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11617 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 5
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1216
  %i.ah = load ptr, ptr %0, align 8, !tbaa !11614 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !11614
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !11671
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11672

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !11673

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewES5_vvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !11617
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1395
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store i8 0, ptr %7, align 8, !tbaa !2042, !alias.scope !11674
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2047
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.c, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !11035
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.e, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.g, ptr %.sroa.887.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %0, ptr %.sroa.988.0..sroa_idx, align 8, !tbaa !11677
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.b, ptr %.sroa.1089.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.i, ptr %.sroa.1190.0..sroa_idx, align 8, !tbaa !11679
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewES6_vvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
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
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17  ; 2 uses
  %.not111 = icmp eq i8 %i.br, 0
  br i1 %.not111, label %bb.h, label %bb.f, !prof !524

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034129 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !17
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
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !11681

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !524

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox10StringViewES8_vvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

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
  br i1 %.not45, label %bb.z, label %bb.n, !llvm.loop !11682

bb.n:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit112
  %.pn127 = phi ptr [ %i.ce, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041128, %.loopexit112 ] ; 2 uses
  %.042126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit112 ] ; 2 uses
  %.041128 = getelementptr inbounds i8, ptr %.pn127, i64 -64 ; 4 uses
  %i.ch = load <16 x i8>, ptr %.041128, align 16, !tbaa !17
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
  %i.cn = load ptr, ptr %0, align 8, !tbaa !11614
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0119 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.0118 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.co = and i32 %.sroa.067.0118, 1
  %.not.i55 = icmp eq i32 %i.co, 0
  br i1 %.not.i55, label %bb.p, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

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
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.cv
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
  br i1 %.not.i57, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59, !prof !524

end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE19tryEmplaceValueImplIbJRKbEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIbEEEEbES9_ImmERKT_DpOT0_:bb.a
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bg, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !12341

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIbE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !12342
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIbE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit:  ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %5, align 1, !tbaa !526, !range !551, !noundef !552
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !526
  %i.bu = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !12343
  %i.bx = icmp ult i64 %i.bw, %i.bu
  br i1 %i.bx, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJRKbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJRKbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJRKbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit, %bb.o
  %i.by = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.bz = and i64 %i.by, -256
  %i.ca = add i64 %i.bz, 256
  %i.cb = and i64 %i.by, 255
  %i.cc = or disjoint i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJRKbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJRKbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJRKbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE13insertAtBlankIJRKbEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIbEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !2047
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cd, align 8, !tbaa !12344
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.3528", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !12288  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !12347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = add i64 %3, 16
  %i.o = shl i64 %2, 5
  %.0.i = select i1 %i.m, i64 %i.n, i64 %i.o
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.p = mul i64 %5, %4
  store i64 %i.p, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.q = icmp eq i64 %4, 1                        ; 2 uses
  %i.r = add i64 %5, 16
  %i.s = shl i64 %4, 5
  %.0.i69 = select i1 %i.q, i64 %i.r, i64 %i.s    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.t, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !12348

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !12349

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 14
  %i.ao = trunc i64 %5 to i8
  store i8 %i.ao, ptr %i.an, align 2, !tbaa !12342
  store ptr %i.t, ptr %0, align 8, !tbaa !12288
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !1395
  %i.as = and i64 %i.ar, -256
  %i.at = select i1 %.not.i, i64 4294967295, i64 %i.aq
  %i.au = or i64 %i.as, %i.at
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !12350
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.av, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !12353
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !12355
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bb, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %.042130 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIbE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.042130
  call void @llvm.assume(i1 %i.ay)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0131
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !526, !range !551, !noundef !552
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !526
  %i.bi = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bi, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bj = add i64 %.0131, 1
  %i.bk = icmp ult i64 %.1, %1
  br i1 %i.bk, label %bb.d, label %bb.i, !llvm.loop !12357

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr i8, ptr %i.t, i64 15
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.1
  %i.bn = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bn)
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp slt i64 %4, 0
  br i1 %i.bq, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.bs

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.br, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ca, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !12358

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bt, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -32 ; 4 uses
  %i.bu = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cd = add i32 %.sroa.8.0124, %i.cc
  %i.ce = add nuw nsw i32 %i.cc, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn = phi i32 [ %i.ce, %bb.q ], [ 1, %bb.p ]
end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE19tryEmplaceValueImplIaJRKaEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIaEEEEbES9_ImmERKT_DpOT0_:bb.a
  %i.be = icmp slt <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bg, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !12616

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIaE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !12617
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIaE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit:  ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %5, align 1, !tbaa !17
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !17
  %i.bu = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !12618
  %i.bx = icmp ult i64 %i.bw, %i.bu
  br i1 %i.bx, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJRKaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJRKaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJRKaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit, %bb.o
  %i.by = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.bz = and i64 %i.by, -256
  %i.ca = add i64 %i.bz, 256
  %i.cb = and i64 %i.by, 255
  %i.cc = or disjoint i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJRKaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJRKaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJRKaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE13insertAtBlankIJRKaEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIaEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !1216
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cd, align 8, !tbaa !12619
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.3637", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !12564  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !12622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = add i64 %3, 16
  %i.o = shl i64 %2, 5
  %.0.i = select i1 %i.m, i64 %i.n, i64 %i.o
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.p = mul i64 %5, %4
  store i64 %i.p, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.q = icmp eq i64 %4, 1                        ; 2 uses
  %i.r = add i64 %5, 16
  %i.s = shl i64 %4, 5
  %.0.i69 = select i1 %i.q, i64 %i.r, i64 %i.s    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.t, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !12623

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !12624

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 14
  %i.ao = trunc i64 %5 to i8
  store i8 %i.ao, ptr %i.an, align 2, !tbaa !12617
  store ptr %i.t, ptr %0, align 8, !tbaa !12564
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !1395
  %i.as = and i64 %i.ar, -256
  %i.at = select i1 %.not.i, i64 4294967295, i64 %i.aq
  %i.au = or i64 %i.as, %i.at
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !12625
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.av, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !12628
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !12630
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bb, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %.042130 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIaE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.042130
  call void @llvm.assume(i1 %i.ay)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0131
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !17
  %i.bi = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bi, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bj = add i64 %.0131, 1
  %i.bk = icmp ult i64 %.1, %1
  br i1 %i.bk, label %bb.d, label %bb.i, !llvm.loop !12632

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr i8, ptr %i.t, i64 15
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.1
  %i.bn = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bn)
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp slt i64 %4, 0
  br i1 %i.bq, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIavvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.bs

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.br, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ca, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !12633

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bt, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -32 ; 4 uses
  %i.bu = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cd = add i32 %.sroa.8.0124, %i.cc
  %i.ce = add nuw nsw i32 %i.cc, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn = phi i32 [ %i.ce, %bb.q ], [ 1, %bb.p ]
end_hunk_11
begin_hunk_12_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE19tryEmplaceValueImplIsJRKsEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIsEEEEbES9_ImmERKT_DpOT0_:bb.a
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !12898

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIsE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !12899
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.l ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIsE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit:  ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i16, ptr %5, align 2, !tbaa !2483
  store i16 %i.bt, ptr %i.br, align 2, !tbaa !2483
  %i.bu = lshr i64 %i.bl, 3
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = or i64 %i.bu, %i.bv                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !12900
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJRKsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJRKsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJRKsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %i.cc = add i64 %i.cb, 256
  %i.cd = and i64 %i.ca, 255
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJRKsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJRKsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJRKsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE13insertAtBlankIJRKsEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIsEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !4251
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cf, align 8, !tbaa !12901
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.3747", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !12845  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !12904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 1
  %i.o = add i64 %i.n, 16
  %i.p = mul i64 %2, 48
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 1
  %i.t = add i64 %i.s, 16
  %i.u = mul i64 %4, 48
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !12905

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !12906

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !12899
  store ptr %i.v, ptr %0, align 8, !tbaa !12845
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !12907
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !12910
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !12912
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIsE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %.042130
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.0131
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !2483
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !2483
  %i.bk = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bk, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bl = add i64 %.0131, 1
  %i.bm = icmp ult i64 %.1, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !12914

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
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %4, 0
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.by

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bx, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cg, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !12915

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bz, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -48 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cj = add i32 %.sroa.8.0124, %i.ci
end_hunk_12
begin_hunk_13_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE19tryEmplaceValueImplIiJRKiEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIiEEEEbES9_ImmERKT_DpOT0_:bb.a
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 4095
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIiE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit:  ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
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
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !13181
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJRKiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJRKiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJRKiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %i.cc = add i64 %i.cb, 256
  %i.cd = and i64 %i.ca, 255
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJRKiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJRKiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJRKiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE13insertAtBlankIJRKiEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIiEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !958
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cf, align 8, !tbaa !13182
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.3852", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !13127  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !13185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = add i64 %2, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
  %i.o = mul i64 %i.n, %3
  store i64 %i.o, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.p = icmp eq i64 %2, 1                        ; 2 uses
  %i.q = shl i64 %3, 2
  %i.r = add i64 %i.q, 16
  %i.s = shl i64 %2, 6
  %.0.i = select i1 %i.p, i64 %i.r, i64 %i.s
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.t = add i64 %4, -1
  %i.u = lshr i64 %i.t, 12
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = mul i64 %i.v, %5
  store i64 %i.w, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.x = icmp eq i64 %4, 1                        ; 2 uses
  %i.y = shl i64 %5, 2
  %i.z = add i64 %i.y, 16
  %i.aa = shl i64 %4, 6
  %.0.i69 = select i1 %i.x, i64 %i.z, i64 %i.aa   ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !13186

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !13187

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.av = trunc i64 %5 to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i16 %i.av, ptr %i.aw, align 1
  store ptr %i.ab, ptr %0, align 8, !tbaa !13127
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !1395
  %i.ba = and i64 %i.az, -256
  %i.bb = select i1 %.not.i, i64 4294967295, i64 %i.ay
  %i.bc = or i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !13188
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.bd, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !13191
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !13193
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bj, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.042130 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !17
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIiE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !17
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
  br i1 %i.bs, label %bb.d, label %bb.i, !llvm.loop !13195

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
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.cc = icmp slt i64 %4, 0
  br i1 %i.cc, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIivvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ce

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.cd, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cm, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !13196

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cf, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -64 ; 4 uses
  %i.cg = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.co = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cp = add i32 %.sroa.8.0124, %i.co
end_hunk_13
begin_hunk_14_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE19tryEmplaceValueImplIlJRKlEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIlEEEEbES9_ImmERKT_DpOT0_:bb.a
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !13460

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIlE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !13461
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIlE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit:  ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load i64, ptr %5, align 8, !tbaa !612
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !612
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !13462
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJRKlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJRKlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJRKlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJRKlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJRKlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJRKlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE13insertAtBlankIJRKlEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIlEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !1197
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !13463
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.3960", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !13408  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !13466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !13467

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !13468

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !13461
  store ptr %i.v, ptr %0, align 8, !tbaa !13408
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !13469
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !13472
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !13474
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIlE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042130
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0131
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !612
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !612
  %i.bk = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bk, %bb.g ], [ %.042130, %bb.d ] ; 3 uses
  %i.bl = add i64 %.0131, 1
  %i.bm = icmp ult i64 %.1, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !13476

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
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %4, 0
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.by

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bx, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.cg, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !13477

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bz, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -128 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.cj = add i32 %.sroa.8.0124, %i.ci
end_hunk_14
begin_hunk_15_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJRKfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbESH_ImmERKT_DpOT0_:bb.a
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 4095
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64              ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIfE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit:  ; preds = %bb.m
  %i.br = trunc i64 %3 to i8
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bn ; 3 uses
  %i.bu = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load float, ptr %5, align 4, !tbaa !5992
  store float %i.bv, ptr %i.bt, align 4, !tbaa !5992
  %i.bw = lshr i64 %i.bn, 2
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = or i64 %i.bw, %i.bx                     ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !13750
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJRKfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJRKfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJRKfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit, %bb.o
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJRKfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.ah, %bb.g ], [ %i.bt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJRKfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.x, %bb.g ], [ %i.bn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJRKfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJRKfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !6020
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ch, align 8, !tbaa !13751
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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.4070", align 8 ; 17 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !13689  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !13754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = add i64 %2, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
  %i.o = mul i64 %i.n, %3
  store i64 %i.o, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.p = icmp eq i64 %2, 1                        ; 2 uses
  %i.q = shl i64 %3, 2
  %i.r = add i64 %i.q, 16
  %i.s = shl i64 %2, 6
  %.0.i = select i1 %i.p, i64 %i.r, i64 %i.s
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.t = add i64 %4, -1
  %i.u = lshr i64 %i.t, 12
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = mul i64 %i.v, %5
  store i64 %i.w, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.x = icmp eq i64 %4, 1                        ; 2 uses
  %i.y = shl i64 %5, 2
  %i.z = add i64 %i.y, 16
  %i.aa = shl i64 %4, 6
  %.0.i69 = select i1 %i.x, i64 %i.z, i64 %i.aa   ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !13755

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !13756

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.av = trunc i64 %5 to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i16 %i.av, ptr %i.aw, align 1
  store ptr %i.ab, ptr %0, align 8, !tbaa !13689
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !1395
  %i.ba = and i64 %i.az, -256
  %i.bb = select i1 %.not.i, i64 4294967295, i64 %i.ay
  %i.bc = or i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !13757
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bd, align 8, !tbaa !2047
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %.sroa.495.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.c, ptr %.sroa.596.0..sroa_idx, align 8, !tbaa !13760
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.e, ptr %.sroa.697.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.g, ptr %.sroa.898.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %0, ptr %.sroa.999.0..sroa_idx, align 8, !tbaa !13762
  %.sroa.10100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %i.b, ptr %.sroa.10100.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.11101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11101.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !17  ; 2 uses
  %.not118 = icmp eq i8 %i.bj, 0
  br i1 %.not118, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.042132 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !17
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIfE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !17
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.042132
  call void @llvm.assume(i1 %i.bg)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0133
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !5992
  store float %i.bp, ptr %i.bn, align 4, !tbaa !5992
  %i.bq = add nuw i64 %.042132, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bq, %bb.g ], [ %.042132, %bb.d ] ; 3 uses
  %i.br = add i64 %.0133, 1
  %i.bs = icmp ult i64 %.1, %1
  br i1 %i.bs, label %bb.d, label %bb.i, !llvm.loop !13764

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
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !612
  br label %.thread

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.cc = icmp slt i64 %4, 0
  br i1 %i.cc, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS9_14NaNAwareEqualsIfLb1EEEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ce

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0116 = phi ptr [ %7, %bb.j ], [ %i.cd, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0116, i8 0, i64 %4, i1 false)
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.ab, %bb.o
  %.155.lcssa = phi i64 [ %.054129, %bb.o ], [ %i.cm, %bb.ab ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.ac, label %bb.o, !llvm.loop !13765

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59130 = phi ptr [ %i.cf, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053131, %.loopexit ] ; 2 uses
  %.054129 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053131 = getelementptr inbounds i8, ptr %.pn59130, i64 -64 ; 4 uses
  %i.cg = load <16 x i8>, ptr %.053131, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.co = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.080.0125, i1 true) ; 2 uses
  %i.cp = add i32 %.sroa.8.0126, %i.co
end_hunk_15
begin_hunk_16_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJRKdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbESH_ImmERKT_DpOT0_:bb.a
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !14036

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit
  %i.bk = extractelement <16 x i8> %i.bg, i64 14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bm = add i8 %i.bk, 16
  store i8 %i.bm, ptr %i.bl, align 2, !tbaa !14037
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.av, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit ], [ %i.bj, %bb.l ]
  %.1 = phi ptr [ %i.ar, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit ], [ %i.bf, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64              ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIdE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit:  ; preds = %bb.m
  %i.bs = trunc i64 %3 to i8
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bo ; 3 uses
  %i.bv = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = load double, ptr %5, align 8, !tbaa !6599
  store double %i.bw, ptr %i.bu, align 8, !tbaa !6599
  %i.bx = lshr i64 %i.bo, 1
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = or i64 %i.bx, %i.by                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !14038
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJRKdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJRKdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJRKdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit, %bb.o
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJRKdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ai, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJRKdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bo, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJRKdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJRKdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !6628
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !14039
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.4181", align 8 ; 17 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !13977  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !14042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 3
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 7
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 3
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 7
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 15 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14043

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !14044

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !14037
  store ptr %i.v, ptr %0, align 8, !tbaa !13977
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !14045
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %.sroa.495.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.c, ptr %.sroa.596.0..sroa_idx, align 8, !tbaa !14048
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.e, ptr %.sroa.697.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.g, ptr %.sroa.898.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %0, ptr %.sroa.999.0..sroa_idx, align 8, !tbaa !14050
  %.sroa.10100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %i.b, ptr %.sroa.10100.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.11101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11101.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not118 = icmp eq i8 %i.bd, 0
  br i1 %.not118, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042132 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIdE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.042132
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0133
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !6599
  store double %i.bj, ptr %i.bh, align 8, !tbaa !6599
  %i.bk = add nuw i64 %.042132, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bk, %bb.g ], [ %.042132, %bb.d ] ; 3 uses
  %i.bl = add i64 %.0133, 1
  %i.bm = icmp ult i64 %.1, %1
  br i1 %i.bm, label %bb.d, label %bb.i, !llvm.loop !14052

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
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !612
  br label %.thread

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %4, 0
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS9_14NaNAwareEqualsIdLb1EEEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.by

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0116 = phi ptr [ %7, %bb.j ], [ %i.bx, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0116, i8 0, i64 %4, i1 false)
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.ab, %bb.o
  %.155.lcssa = phi i64 [ %.054129, %bb.o ], [ %i.cg, %bb.ab ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.ac, label %bb.o, !llvm.loop !14053

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59130 = phi ptr [ %i.bz, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053131, %.loopexit ] ; 2 uses
  %.054129 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053131 = getelementptr inbounds i8, ptr %.pn59130, i64 -128 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.053131, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.ci = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.080.0125, i1 true) ; 2 uses
  %i.cj = add i32 %.sroa.8.0126, %i.ci
end_hunk_16
begin_hunk_17_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_:bb.a
  %i.bj = and i16 %i.bi, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bj, 16383
  br i1 %.not68, label %bb.i, label %bb.k, !llvm.loop !14317

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE25incrOutboundOverflowCountEv.exit
  %i.bk = extractelement <16 x i8> %i.bg, i64 14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bm = add i8 %i.bk, 16
  store i8 %i.bm, ptr %i.bl, align 2, !tbaa !14318
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.av, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16reserveForInsertEm.exit ], [ %i.bj, %bb.k ]
  %.1 = phi ptr [ %i.ar, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16reserveForInsertEm.exit ], [ %i.bf, %bb.k ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64              ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit: ; preds = %bb.l
  %i.bs = trunc i64 %3 to i8
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bo ; 3 uses
  %i.bv = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bv)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !7787
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = or i64 %i.bw, %i.bo                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !14319
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit, %bb.n
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !1395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit
  %.lcssa90.sink = phi ptr [ %i.bu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa91.sink = phi i64 [ %i.bo, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa90.sink, ptr %0, align 8, !tbaa !7813
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa91.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !14320
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.4289", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !14265  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !14323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14324

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !14325

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !14318
  store ptr %i.v, ptr %0, align 8, !tbaa !14265
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !14326
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !14329
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !14331
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042130
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !7787
  %i.bj = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bj, %bb.g ], [ %.042130, %bb.d ] ; 4 uses
  %i.bk = add i64 %.0131, 1
  %i.bl = icmp ult i64 %.1, %1
  br i1 %i.bl, label %bb.d, label %bb.i, !llvm.loop !14333

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
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bu = icmp slt i64 %4, 0
  br i1 %i.bu, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.bw

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bv, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.bx = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ce, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !14334

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -256 ; 4 uses
  %i.by = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.cg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.078.0123, i1 true) ; 2 uses
  %i.ch = add i32 %.sroa.8.0124, %i.cg
  %i.ci = add nuw nsw i32 %i.cg, 1
  br label %bb.r
end_hunk_17
begin_hunk_18_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE19tryEmplaceValueImplIS6_JRKS6_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEEbESC_ImmERKT_DpOT0_:bb.a
  %.not70 = icmp eq i16 %i.dj, 16383
  br i1 %.not70, label %bb.m, label %bb.o, !llvm.loop !14866

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit
  %i.dk = extractelement <16 x i8> %i.dg, i64 14
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 14
  %i.dm = add i8 %i.dk, 16
  store i8 %i.dm, ptr %i.dl, align 2, !tbaa !14867
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.cv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.dj, %bb.o ]
  %.1 = phi ptr [ %i.cr, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16reserveForInsertEm.exit ], [ %i.df, %bb.o ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.dn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.do = zext nneg i16 %i.dn to i64              ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !17
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit: ; preds = %bb.p
  %i.ds = trunc i64 %3 to i8
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.do ; 3 uses
  %i.dv = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dv)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !7227
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = or i64 %i.dw, %i.do                     ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !14829
  %i.ea = icmp ult i64 %i.dz, %i.dx
  br i1 %i.ea, label %bb.r, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

bb.r:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, %bb.r
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ec = and i64 %i.eb, -256
  %i.ed = add i64 %i.ec, 256
  %i.ee = and i64 %i.eb, 255
  %i.ef = or disjoint i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.a, align 8, !tbaa !1395
  br label %_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread

_ZNK5folly3f146detail20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvE14keyMatchesItemIS5_EEbRKT_RKS5_.exit.thread: ; preds = %bb.i, %bb.g, %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit
  %.us-phi76.sink = phi ptr [ %i.du, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.bd, %bb.g ], [ %i.ah, %bb.d ], [ %i.by, %bb.i ]
  %.us-phi.sink = phi i64 [ %i.do, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ %i.bc, %bb.g ], [ %i.ag, %bb.d ], [ %i.bx, %bb.i ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE13insertAtBlankIJRKS6_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS6_EEEESt4pairImmEDpOT_.exit ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.i ]
  store ptr %.us-phi76.sink, ptr %0, align 8, !tbaa !7299
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.eg, align 8, !tbaa !14868
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %7 = alloca %"class.folly::detail::ScopeGuardImpl.4472", align 8 ; 16 uses
  %8 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !14784  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !14871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14872

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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !14873

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !14867
  store ptr %i.v, ptr %0, align 8, !tbaa !14784
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store i8 0, ptr %7, align 8, !tbaa !2042, !alias.scope !14874
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.c, ptr %.sroa.595.0..sroa_idx, align 8, !tbaa !14877
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.e, ptr %.sroa.696.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.g, ptr %.sroa.897.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %0, ptr %.sroa.998.0..sroa_idx, align 8, !tbaa !14879
  %.sroa.1099.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.b, ptr %.sroa.1099.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.11100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.i, ptr %.sroa.11100.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not117 = icmp eq i8 %i.bd, 0
  br i1 %.not117, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042132 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042132
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !7227
  %i.bj = add nuw i64 %.042132, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bj, %bb.g ], [ %.042132, %bb.d ] ; 4 uses
  %i.bk = add i64 %.0133, 1
  %i.bl = icmp ult i64 %.1, %1
  br i1 %i.bl, label %bb.d, label %bb.i, !llvm.loop !14881

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
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !612
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bu = icmp slt i64 %4, 0
  br i1 %i.bu, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
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
  br i1 %.not57, label %bb.y, label %bb.o, !llvm.loop !14882

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59130 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053131, %.loopexit ] ; 2 uses
  %.054129 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053131 = getelementptr inbounds i8, ptr %.pn59130, i64 -256 ; 4 uses
  %i.ca = load <16 x i8>, ptr %.053131, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

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
end_hunk_18
begin_hunk_19_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE19tryEmplaceValueImplIfJfEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIfEEEEbES7_ImmERKT_DpOT0_:bb.a
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIfE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit:  ; preds = %bb.m
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bl ; 3 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load float, ptr %5, align 4, !tbaa !5992
  store float %i.bt, ptr %i.br, align 4, !tbaa !5992
  %i.bu = lshr i64 %i.bl, 2
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = or i64 %i.bu, %i.bv                     ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !13750
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %i.cc = add i64 %i.cb, 256
  %i.cd = and i64 %i.ca, 255
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit
  %.sink100 = phi ptr [ %i.af, %bb.g ], [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit ]
  %.lcssa98.sink = phi i64 [ %i.x, %bb.g ], [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE13insertAtBlankIJfEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIfEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !6020
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cf, align 8, !tbaa !13751
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.5742", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !612
  store i64 %2, ptr %i.c, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = load ptr, ptr %0, align 8, !tbaa !18213  ; 5 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !13754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5
  store i64 %i.x, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i66 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i66, ptr %i.h, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i66) #46 ; 15 uses
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !1216
  store i8 0, ptr %i.j, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %4, 7                       ; 3 uses
  %i.ad = icmp ult i64 %4, 8
  br i1 %i.ad, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.at, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.08.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.08.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.08.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.08.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.08.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !18246

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.av, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.au, i8 0, i64 16, i1 false)
  %i.av = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !18247

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aw = trunc i64 %5 to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i16 %i.aw, ptr %i.ax, align 1
  store ptr %i.ac, ptr %0, align 8, !tbaa !18213
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !1395
  %i.bb = and i64 %i.ba, -256
  %i.bc = select i1 %.not.i, i64 4294967295, i64 %i.az
  %i.bd = or i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #34
  store i8 0, ptr %i.k, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !18248
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.be, align 8, !tbaa !2047
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.e, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.d, ptr %.sroa.591.0..sroa_idx, align 8, !tbaa !13760
  %.sroa.692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.f, ptr %.sroa.692.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.h, ptr %.sroa.893.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.994.0..sroa_idx, align 8, !tbaa !18251
  %.sroa.1095.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.c, ptr %.sroa.1095.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.j, ptr %.sroa.1196.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.b, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.g, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.bf = icmp eq i64 %1, 0
  br i1 %i.bf, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bh = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0130 = phi i64 [ 0, %bb.c ], [ %i.bs, %bb.h ] ; 3 uses
  %.042129 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0130
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17  ; 2 uses
  %.not114 = icmp eq i8 %i.bk, 0
  br i1 %.not114, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.042129 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIfE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !17
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.042129
  call void @llvm.assume(i1 %i.bh)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.0130
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !5992
  store float %i.bq, ptr %i.bo, align 4, !tbaa !5992
  %i.br = add nuw i64 %.042129, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.br, %bb.g ], [ %.042129, %bb.d ] ; 3 uses
  %i.bs = add i64 %.0130, 1
  %i.bt = icmp ult i64 %.1, %1
  br i1 %i.bt, label %bb.d, label %bb.i, !llvm.loop !18253

bb.i:                                             ; preds = %bb.h
  %i.bu = add i64 %.1, -1                         ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bu
  %i.bw = icmp ne ptr %i.ac, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bw)
  %i.bx = and i64 %i.bu, 255                      ; 2 uses
  %i.by = icmp samesign ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = lshr i64 %i.bx, 2
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = or i64 %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !612
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.cd = icmp slt i64 %4, 0
  br i1 %i.cd, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  resume { ptr, i32 } %i.cf

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0111 = phi ptr [ %7, %bb.j ], [ %i.ce, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0111, i8 0, i64 %4, i1 false)
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.y, %bb.o
  %.154.lcssa = phi i64 [ %.053126, %bb.o ], [ %i.cn, %bb.y ] ; 2 uses
  %.not56 = icmp eq i64 %.154.lcssa, 0
  br i1 %.not56, label %bb.z, label %bb.o, !llvm.loop !18254

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn127 = phi ptr [ %i.cg, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.052128, %.loopexit ] ; 2 uses
  %.053126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.154.lcssa, %.loopexit ] ; 2 uses
  %.052128 = getelementptr inbounds i8, ptr %.pn127, i64 -64 ; 4 uses
  %i.ch = load <16 x i8>, ptr %.052128, align 16, !tbaa !17
  %i.ci = icmp slt <16 x i8> %i.ch, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16
  %i.ck = and i16 %i.cj, 4095                     ; 2 uses
  %.not112121 = icmp eq i16 %i.ck, 0
  br i1 %.not112121, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.075.0.extract.trunc = zext nneg i16 %i.ck to i32
  %i.cl = icmp ne ptr %.052128, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds i8, ptr %.pn127, i64 -48
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.y
  %.154124 = phi i64 [ %.053126, %.lr.ph ], [ %i.cn, %bb.y ]
  %.sroa.8.0123 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.y ] ; 2 uses
  %.sroa.075.0122 = phi i32 [ %.sroa.075.0.extract.trunc, %.lr.ph ], [ %.sroa.075.1, %bb.y ] ; 3 uses
  %i.cn = add i64 %.154124, -1                    ; 2 uses
  %i.co = and i32 %.sroa.075.0122, 1
  %.not.i68 = icmp eq i32 %i.co, 0
  br i1 %.not.i68, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.cp = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.075.0122, i1 true) ; 2 uses
  %i.cq = add i32 %.sroa.8.0123, %i.cp
end_hunk_19
begin_hunk_20_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE19tryEmplaceValueImplIdJdEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIdEEEEbES7_ImmERKT_DpOT0_:bb.a

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !14037
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIdE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit:  ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load double, ptr %5, align 8, !tbaa !6599
  store double %i.bu, ptr %i.bs, align 8, !tbaa !6599
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !14038
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !1395
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE13insertAtBlankIJdEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIdEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !6628
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !14039
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.5834", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !612
  store i64 %2, ptr %i.c, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = load ptr, ptr %0, align 8, !tbaa !18452  ; 5 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !14042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = mul i64 %3, %2
  store i64 %i.m, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.n = icmp eq i64 %2, 1                        ; 2 uses
  %i.o = shl i64 %3, 3
  %i.p = add i64 %i.o, 16
  %i.q = shl i64 %2, 7
  %.0.i = select i1 %i.n, i64 %i.p, i64 %i.q
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = mul i64 %5, %4
  store i64 %i.r, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.s = icmp eq i64 %4, 1                        ; 2 uses
  %i.t = shl i64 %5, 3
  %i.u = add i64 %i.t, 16
  %i.v = shl i64 %4, 7
  %.0.i66 = select i1 %i.s, i64 %i.u, i64 %i.v    ; 2 uses
  store i64 %.0.i66, ptr %i.h, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i66) #46 ; 15 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !1216
  store i8 0, ptr %i.j, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !18485

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.an, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ap, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !18486

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  %i.ar = trunc i64 %5 to i8
  store i8 %i.ar, ptr %i.aq, align 2, !tbaa !14037
  store ptr %i.w, ptr %0, align 8, !tbaa !18452
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.at = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.au = load i64, ptr %i.as, align 8, !tbaa !1395
  %i.av = and i64 %i.au, -256
  %i.aw = select i1 %.not.i, i64 4294967295, i64 %i.at
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #34
  store i8 0, ptr %i.k, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !18487
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.ay, align 8, !tbaa !2047
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.e, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.d, ptr %.sroa.591.0..sroa_idx, align 8, !tbaa !14048
  %.sroa.692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.f, ptr %.sroa.692.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.h, ptr %.sroa.893.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.994.0..sroa_idx, align 8, !tbaa !18490
  %.sroa.1095.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.c, ptr %.sroa.1095.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.j, ptr %.sroa.1196.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.b, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.g, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.az = icmp eq i64 %1, 0
  br i1 %i.az, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvvvvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.s, %i.n
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bb = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0130 = phi i64 [ 0, %bb.c ], [ %i.bm, %bb.h ] ; 3 uses
  %.042129 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0130
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17  ; 2 uses
  %.not114 = icmp eq i8 %i.be, 0
  br i1 %.not114, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 %.042129 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIdE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.042129
  call void @llvm.assume(i1 %i.bb)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0130
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !6599
  store double %i.bk, ptr %i.bi, align 8, !tbaa !6599
  %i.bl = add nuw i64 %.042129, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bl, %bb.g ], [ %.042129, %bb.d ] ; 3 uses
  %i.bm = add i64 %.0130, 1
  %i.bn = icmp ult i64 %.1, %1
  br i1 %i.bn, label %bb.d, label %bb.i, !llvm.loop !18492

bb.i:                                             ; preds = %bb.h
  %i.bo = add i64 %.1, -1                         ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bo
  %i.bq = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bq)
  %i.br = and i64 %i.bo, 255                      ; 2 uses
  %i.bs = icmp samesign ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = lshr i64 %i.br, 1
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = or i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !612
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp slt i64 %4, 0
  br i1 %i.bx, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  resume { ptr, i32 } %i.bz

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0111 = phi ptr [ %7, %bb.j ], [ %i.by, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0111, i8 0, i64 %4, i1 false)
  %i.ca = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.y, %bb.o
  %.154.lcssa = phi i64 [ %.053126, %bb.o ], [ %i.ch, %bb.y ] ; 2 uses
  %.not56 = icmp eq i64 %.154.lcssa, 0
  br i1 %.not56, label %bb.z, label %bb.o, !llvm.loop !18493

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn127 = phi ptr [ %i.ca, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.052128, %.loopexit ] ; 2 uses
  %.053126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.154.lcssa, %.loopexit ] ; 2 uses
  %.052128 = getelementptr inbounds i8, ptr %.pn127, i64 -128 ; 4 uses
  %i.cb = load <16 x i8>, ptr %.052128, align 16, !tbaa !17
  %i.cc = icmp slt <16 x i8> %i.cb, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = and i16 %i.cd, 16383                    ; 2 uses
  %.not112121 = icmp eq i16 %i.ce, 0
  br i1 %.not112121, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.075.0.extract.trunc = zext nneg i16 %i.ce to i32
  %i.cf = icmp ne ptr %.052128, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %.pn127, i64 -112
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.y
  %.154124 = phi i64 [ %.053126, %.lr.ph ], [ %i.ch, %bb.y ]
  %.sroa.8.0123 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.y ] ; 2 uses
  %.sroa.075.0122 = phi i32 [ %.sroa.075.0.extract.trunc, %.lr.ph ], [ %.sroa.075.1, %bb.y ] ; 3 uses
  %i.ch = add i64 %.154124, -1                    ; 2 uses
  %i.ci = and i32 %.sroa.075.0122, 1
  %.not.i68 = icmp eq i32 %i.ci, 0
  br i1 %.not.i68, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

bb.q:                                             ; preds = %bb.p
  %i.cj = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.075.0122, i1 true) ; 2 uses
  %i.ck = add i32 %.sroa.8.0123, %i.cj
end_hunk_20
begin_hunk_21_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESH_ImmERKT_DpOT0_:bb.a

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.s
  %i.dp = trunc i64 %3 to i8
  store i8 %i.dp, ptr %i.dm, align 1, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dl ; 2 uses
  %i.ds = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !1395
  %i.du = lshr i64 %i.dt, 8                       ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !3
  %i.dw = load ptr, ptr %1, align 8, !tbaa !19256, !nonnull !552, !noundef !552
  %i.dx = and i64 %i.du, 4294967295
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.dx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ea = and i64 %i.dz, -256
  %i.eb = add i64 %i.ea, 256
  %i.ec = and i64 %i.dz, 255
  %i.ed = or disjoint i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.a, align 8, !tbaa !1395
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink97 = phi ptr [ %i.bz, %bb.m ], [ %i.dr, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa95.sink = phi i64 [ %i.aa, %bb.m ], [ %i.dl, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.m ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink97, ptr %0, align 8, !tbaa !958
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa95.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ee, align 8, !tbaa !11026
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.6171", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19226 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 5
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1216
  %i.ah = load ptr, ptr %0, align 8, !tbaa !19256 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !19256
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !19299
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !19300

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !19301

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !19226
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1395
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !19302
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2047
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !11035
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.887.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.988.0..sroa_idx, align 8, !tbaa !19305
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1089.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1190.0..sroa_idx, align 8, !tbaa !19307
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
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
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17  ; 2 uses
  %.not111 = icmp eq i8 %i.br, 0
  br i1 %.not111, label %bb.h, label %bb.f, !prof !524

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034129 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !17
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
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !19309

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !524

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS9_ENS7_9functions37MapKeysOverlapFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.l, %bb.i
  %.0103 = phi ptr [ %7, %bb.i ], [ %i.cc, %bb.l ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0103, i8 0, i64 %4, i1 false)
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.n

.loopexit112:                                     ; preds = %bb.aa, %bb.n
  %.143.lcssa = phi i64 [ %.042126, %bb.n ], [ %i.cv, %bb.aa ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.ac, label %bb.n, !llvm.loop !19310

bb.n:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit112
  %.pn127 = phi ptr [ %i.ce, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041128, %.loopexit112 ] ; 2 uses
  %.042126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit112 ] ; 2 uses
  %.041128 = getelementptr inbounds i8, ptr %.pn127, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041128, align 16, !tbaa !17
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
  %i.cl = load ptr, ptr %0, align 8, !tbaa !19256
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0119 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.0118 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.067.0118, 1
  %.not.i55 = icmp eq i32 %i.cm, 0
  br i1 %.not.i55, label %bb.p, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

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
  br i1 %.not.i57, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59, !prof !524

bb.q:                                             ; preds = %.lr.ph124
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0121, i1 true) ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_:bb.a

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.t
  %i.dr = trunc i64 %3 to i8
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dn ; 2 uses
  %i.du = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !1395
  %i.dw = lshr i64 %i.dv, 8                       ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.dt, align 4, !tbaa !3
  %i.dy = load ptr, ptr %1, align 8, !tbaa !22407, !nonnull !552, !noundef !552
  %i.dz = and i64 %i.dw, 4294967295
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ec = and i64 %i.eb, -256
  %i.ed = add i64 %i.ec, 256
  %i.ee = and i64 %i.eb, 255
  %i.ef = or disjoint i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.a, align 8, !tbaa !1395
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink103 = phi ptr [ %i.cb, %bb.n ], [ %i.dt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa101.sink = phi i64 [ %i.aa, %bb.n ], [ %i.dn, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.n ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink103, ptr %0, align 8, !tbaa !958
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa101.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.eg, align 8, !tbaa !11026
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.7037", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22409 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 5
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1216
  %i.ah = load ptr, ptr %0, align 8, !tbaa !22407 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !22407
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !19299
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22527

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !22528

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !22409
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1395
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !22529
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2047
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !11035
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.887.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.988.0..sroa_idx, align 8, !tbaa !22532
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1089.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1190.0..sroa_idx, align 8, !tbaa !19307
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
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
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17  ; 2 uses
  %.not111 = icmp eq i8 %i.br, 0
  br i1 %.not111, label %bb.h, label %bb.f, !prof !524

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034129 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !17
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
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !22534

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !524

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS9_ENS7_9functions32MapAppendFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.l, %bb.i
  %.0103 = phi ptr [ %7, %bb.i ], [ %i.cc, %bb.l ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0103, i8 0, i64 %4, i1 false)
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.n

.loopexit112:                                     ; preds = %bb.z, %bb.n
  %.143.lcssa = phi i64 [ %.042126, %bb.n ], [ %i.cv, %bb.z ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.ab, label %bb.n, !llvm.loop !22535

bb.n:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit112
  %.pn127 = phi ptr [ %i.ce, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041128, %.loopexit112 ] ; 2 uses
  %.042126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit112 ] ; 2 uses
  %.041128 = getelementptr inbounds i8, ptr %.pn127, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041128, align 16, !tbaa !17
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
  %i.cl = load ptr, ptr %0, align 8, !tbaa !22407
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0119 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.0118 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.067.0118, 1
  %.not.i55 = icmp eq i32 %i.cm, 0
  br i1 %.not.i55, label %bb.p, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

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
  br i1 %.not107, label %.lr.ph124, label %bb.o, !llvm.loop !22536

.lr.ph124:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.z
  %.143123 = phi i64 [ %i.cv, %bb.z ], [ %.042126, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.872.0122 = phi i32 [ %.sroa.872.1, %bb.z ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.070.0121 = phi i32 [ %.sroa.070.1, %bb.z ], [ %.sroa.070.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.143123, -1                    ; 2 uses
  %i.cw = and i32 %.sroa.070.0121, 1
  %.not.i57 = icmp eq i32 %i.cw, 0
  br i1 %.not.i57, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59, !prof !524

bb.q:                                             ; preds = %.lr.ph124
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0121, i1 true) ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE19tryEmplaceValueImplIbJbRmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_IKbmEEEEEbES8_ImmERKT_DpOT0_:bb.a
bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbmEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !22833
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbmEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKbmEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %5, align 1, !tbaa !526, !range !551, !noundef !552
  store i8 %i.bt, ptr %i.br, align 8, !tbaa !22834
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !22795
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bw, %i.bl                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !22787
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbmEEEEESA_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbmEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbmEEEEESA_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbmEEEEESA_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbmEE6setTagEmm.exit, %bb.n
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !1395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbmEEEEESA_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbmEEEEESA_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbmEEEEESA_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE13insertAtBlankIJbRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbmEEEEESA_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !22835
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !22837
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.7147", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !22765  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !22840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !22841

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !22842

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !22833
  store ptr %i.v, ptr %0, align 8, !tbaa !22765
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !22843
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !22846
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !22848
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbmvvvEEE16initializeChunksEPhmm.exit
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !526, !range !551, !noundef !552
  store i8 %i.bk, ptr %i.bh, align 8, !tbaa !22834
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !612
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !22795
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 4 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !22850

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
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %4, 0
  br i1 %i.by, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIbmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ca

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bz, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cb = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ci, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !22851

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cb, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -256 ; 4 uses
  %i.cc = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

end_hunk_23
begin_hunk_24_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE19tryEmplaceValueImplIaJaRmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_IKamEEEEEbES8_ImmERKT_DpOT0_:bb.a
bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKamEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !23152
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKamEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKamEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKamEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %5, align 1, !tbaa !17
  store i8 %i.bt, ptr %i.br, align 8, !tbaa !23153
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !23107
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bw, %i.bl                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !23099
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKamEEEEESA_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKamEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKamEEEEESA_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKamEEEEESA_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKamEE6setTagEmm.exit, %bb.n
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !1395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKamEEEEESA_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKamEEEEESA_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKamEEEEESA_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE13insertAtBlankIJaRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKamEEEEESA_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !23154
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !23156
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.7258", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !23077  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !23159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !23160

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !23161

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !23152
  store ptr %i.v, ptr %0, align 8, !tbaa !23077
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !23162
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !23165
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !23167
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIamvvvEEE16initializeChunksEPhmm.exit
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKamEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !17
  store i8 %i.bk, ptr %i.bh, align 8, !tbaa !23153
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !612
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !23107
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 4 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !23169

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
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %4, 0
  br i1 %i.by, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIamvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ca

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bz, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cb = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ci, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !23170

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cb, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -256 ; 4 uses
  %i.cc = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

end_hunk_24
begin_hunk_25_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE19tryEmplaceValueImplIsJsRmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_IKsmEEEEEbES8_ImmERKT_DpOT0_:bb.a
bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsmEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !23471
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKsmEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKsmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKsmEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i16, ptr %5, align 2, !tbaa !2483
  store i16 %i.bt, ptr %i.br, align 8, !tbaa !23472
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !23426
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bw, %i.bl                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !23418
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsmEEEEESA_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsmEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsmEEEEESA_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsmEEEEESA_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsmEE6setTagEmm.exit, %bb.n
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !1395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsmEEEEESA_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsmEEEEESA_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsmEEEEESA_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE13insertAtBlankIJsRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsmEEEEESA_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !23473
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !23475
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.7369", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !23396  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !23478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !23479

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !23480

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !23471
  store ptr %i.v, ptr %0, align 8, !tbaa !23396
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !23481
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !23484
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !23486
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsmvvvEEE16initializeChunksEPhmm.exit
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKsmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i16, ptr %i.bi, align 2, !tbaa !2483
  store i16 %i.bk, ptr %i.bh, align 8, !tbaa !23472
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !612
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !23426
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 4 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !23488

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
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %4, 0
  br i1 %i.by, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIsmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ca

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bz, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cb = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ci, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !23489

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cb, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -256 ; 4 uses
  %i.cc = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

end_hunk_25
begin_hunk_26_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE19tryEmplaceValueImplIiJiRmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_IKimEEEEEbES8_ImmERKT_DpOT0_:bb.a
bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKimEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !23790
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKimEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKimEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKimEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i32, ptr %5, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !23791
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !23745
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bw, %i.bl                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !23737
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKimEEEEESA_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKimEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKimEEEEESA_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKimEEEEESA_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKimEE6setTagEmm.exit, %bb.n
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !1395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKimEEEEESA_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKimEEEEESA_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKimEEEEESA_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE13insertAtBlankIJiRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKimEEEEESA_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !23792
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !23794
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.7480", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !23715  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !23797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !23798

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !23799

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !23790
  store ptr %i.v, ptr %0, align 8, !tbaa !23715
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !23800
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !23803
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !23805
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIimvvvEEE16initializeChunksEPhmm.exit
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKimEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !3
  store i32 %i.bk, ptr %i.bh, align 8, !tbaa !23791
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !612
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !23745
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 4 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !23807

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
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %4, 0
  br i1 %i.by, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIimvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ca

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bz, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cb = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ci, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !23808

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cb, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -256 ; 4 uses
  %i.cc = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

end_hunk_26
begin_hunk_27_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE19tryEmplaceValueImplIlJlRmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_IKlmEEEEEbES8_ImmERKT_DpOT0_:bb.a
bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlmEE25incrOutboundOverflowCountEv.exit
  %i.bh = extractelement <16 x i8> %i.bd, i64 14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bj = add i8 %i.bh, 16
  store i8 %i.bj, ptr %i.bi, align 2, !tbaa !24109
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.as, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16reserveForInsertEm.exit ], [ %i.bg, %bb.k ]
  %.1 = phi ptr [ %i.ao, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16reserveForInsertEm.exit ], [ %i.bc, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bl = zext nneg i16 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZN5folly3f146detail8F14ChunkISt4pairIKlmEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKlmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKlmEE6setTagEmm.exit: ; preds = %bb.l
  %i.bp = trunc i64 %3 to i8
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bl ; 4 uses
  %i.bs = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i64, ptr %5, align 8, !tbaa !612
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !24110
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !24064
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = or i64 %i.bw, %i.bl                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !24056
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlmEEEEESA_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlmEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlmEEEEESA_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlmEEEEESA_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlmEE6setTagEmm.exit, %bb.n
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !1395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlmEEEEESA_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.br, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlmEEEEESA_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.bl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlmEEEEESA_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE13insertAtBlankIJlRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlmEEEEESA_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !24111
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !24113
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.7591", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !24034  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !24116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !24117

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !24118

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !24109
  store ptr %i.v, ptr %0, align 8, !tbaa !24034
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !24119
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !24122
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.997.0..sroa_idx, align 8, !tbaa !24124
  %.sroa.1098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1098.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1199.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlmvvvEEE16initializeChunksEPhmm.exit
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not116 = icmp eq i8 %i.bd, 0
  br i1 %.not116, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042130 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKlmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042130 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0131 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !612
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !24110
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !612
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !24064
  %i.bn = add nuw i64 %.042130, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042130, %bb.d ] ; 4 uses
  %i.bo = add i64 %.0131, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !24126

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
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %bb.ab

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %4, 0
  br i1 %i.by, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIlmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ca

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0114 = phi ptr [ %7, %bb.j ], [ %i.bz, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0114, i8 0, i64 %4, i1 false)
  %i.cb = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.w, %bb.o
  %.155.lcssa = phi i64 [ %.054127, %bb.o ], [ %i.ci, %bb.w ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.x, label %bb.o, !llvm.loop !24127

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59128 = phi ptr [ %i.cb, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053129, %.loopexit ] ; 2 uses
  %.054127 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053129 = getelementptr inbounds i8, ptr %.pn59128, i64 -256 ; 4 uses
  %i.cc = load <16 x i8>, ptr %.053129, align 16, !tbaa !17
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
  br i1 %.not.i71, label %bb.q, label %bb.r, !prof !524

end_hunk_27
begin_hunk_28_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE19tryEmplaceValueImplIfJfRmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISG_IKfmEEEEEbESG_ImmERKT_DpOT0_:bb.a
bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfmEE25incrOutboundOverflowCountEv.exit
  %i.bj = extractelement <16 x i8> %i.bf, i64 14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  %i.bl = add i8 %i.bj, 16
  store i8 %i.bl, ptr %i.bk, align 2, !tbaa !24444
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.au, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit ], [ %i.bi, %bb.k ]
  %.1 = phi ptr [ %i.aq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16reserveForInsertEm.exit ], [ %i.be, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64              ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %_ZN5folly3f146detail8F14ChunkISt4pairIKfmEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKfmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKfmEE6setTagEmm.exit: ; preds = %bb.l
  %i.br = trunc i64 %3 to i8
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bn ; 4 uses
  %i.bu = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load float, ptr %5, align 4, !tbaa !5992
  store float %i.bv, ptr %i.bt, align 8, !tbaa !24445
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !24399
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = or i64 %i.by, %i.bn                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !24386
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfmEEEEESI_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfmEE6setTagEmm.exit
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfmEEEEESI_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfmEEEEESI_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfmEE6setTagEmm.exit, %bb.n
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !1395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfmEEEEESI_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.bt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfmEEEEESI_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.bn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfmEEEEESI_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE13insertAtBlankIJfRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfmEEEEESI_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !24446
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !24448
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.7702", align 8 ; 17 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !24353  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !24451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !24452

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !24453

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !24444
  store ptr %i.v, ptr %0, align 8, !tbaa !24353
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !24454
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %.sroa.495.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.c, ptr %.sroa.596.0..sroa_idx, align 8, !tbaa !24457
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.e, ptr %.sroa.697.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.g, ptr %.sroa.898.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %0, ptr %.sroa.999.0..sroa_idx, align 8, !tbaa !24459
  %.sroa.10100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %i.b, ptr %.sroa.10100.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.11101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11101.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0133 = phi i64 [ 0, %bb.c ], [ %i.bo, %bb.h ] ; 3 uses
  %.042132 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0133
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not118 = icmp eq i8 %i.bd, 0
  br i1 %.not118, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042132 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKfmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042132 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0133 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load float, ptr %i.bi, align 4, !tbaa !5992
  store float %i.bk, ptr %i.bh, align 8, !tbaa !24445
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !612
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !24399
  %i.bn = add nuw i64 %.042132, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042132, %bb.d ] ; 4 uses
  %i.bo = add i64 %.0133, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !24461

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
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %.thread

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %4, 0
  br i1 %i.by, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIfmN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS9_14NaNAwareEqualsIfLb1EEEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ca

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0116 = phi ptr [ %7, %bb.j ], [ %i.bz, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0116, i8 0, i64 %4, i1 false)
  %i.cb = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.ab, %bb.o
  %.155.lcssa = phi i64 [ %.054129, %bb.o ], [ %i.ci, %bb.ab ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.ac, label %bb.o, !llvm.loop !24462

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59130 = phi ptr [ %i.cb, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053131, %.loopexit ] ; 2 uses
  %.054129 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053131 = getelementptr inbounds i8, ptr %.pn59130, i64 -256 ; 4 uses
  %i.cc = load <16 x i8>, ptr %.053131, align 16, !tbaa !17
  %i.cd = icmp slt <16 x i8> %i.cc, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16
  %i.cf = and i16 %i.ce, 16383                    ; 2 uses
  %.not117124 = icmp eq i16 %i.cf, 0
  br i1 %.not117124, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.080.0.extract.trunc = zext nneg i16 %i.cf to i32
  %i.cg = icmp ne ptr %.053131, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %.pn59130, i64 -240
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ab
  %.155127 = phi i64 [ %.054129, %.lr.ph ], [ %i.ci, %bb.ab ]
  %.sroa.8.0126 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.ab ] ; 2 uses
  %.sroa.080.0125 = phi i32 [ %.sroa.080.0.extract.trunc, %.lr.ph ], [ %.sroa.080.1, %bb.ab ] ; 3 uses
  %i.ci = add i64 %.155127, -1                    ; 2 uses
  %i.cj = and i32 %.sroa.080.0125, 1
  %.not.i71 = icmp eq i32 %i.cj, 0
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

end_hunk_28
begin_hunk_29_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE19tryEmplaceValueImplIdJdRmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISG_IKdmEEEEEbESG_ImmERKT_DpOT0_:bb.a
bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdmEE25incrOutboundOverflowCountEv.exit
  %i.bj = extractelement <16 x i8> %i.bf, i64 14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  %i.bl = add i8 %i.bj, 16
  store i8 %i.bl, ptr %i.bk, align 2, !tbaa !24779
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit
  %.sroa.035.0.in.in = phi i16 [ %i.au, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit ], [ %i.bi, %bb.k ]
  %.1 = phi ptr [ %i.aq, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16reserveForInsertEm.exit ], [ %i.be, %bb.k ] ; 3 uses
  %.sroa.035.0.in = xor i16 %.sroa.035.0.in.in, 16383
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.0.in, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64              ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bn ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %_ZN5folly3f146detail8F14ChunkISt4pairIKdmEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKdmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKdmEE6setTagEmm.exit: ; preds = %bb.l
  %i.br = trunc i64 %3 to i8
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bn ; 4 uses
  %i.bu = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load double, ptr %5, align 8, !tbaa !6599
  store double %i.bv, ptr %i.bt, align 8, !tbaa !24780
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !24734
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = or i64 %i.by, %i.bn                     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !24721
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdmEEEEESI_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdmEE6setTagEmm.exit
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !612
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdmEEEEESI_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdmEEEEESI_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdmEE6setTagEmm.exit, %bb.n
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.a, align 8, !tbaa !1395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdmEEEEESI_ImmEDpOT_.exit
  %.lcssa91.sink = phi ptr [ %i.bt, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdmEEEEESI_ImmEDpOT_.exit ], [ %i.z, %bb.d ]
  %.lcssa92.sink = phi i64 [ %i.bn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdmEEEEESI_ImmEDpOT_.exit ], [ %i.y, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE13insertAtBlankIJdRmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdmEEEEESI_ImmEDpOT_.exit ], [ 0, %bb.d ]
  store ptr %.lcssa91.sink, ptr %0, align 8, !tbaa !24781
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa92.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ci, align 8, !tbaa !24783
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

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
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1395
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.7813", align 8 ; 17 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = load ptr, ptr %0, align 8, !tbaa !24688  ; 5 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !24786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.l = mul i64 %3, %2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.m = icmp eq i64 %2, 1                        ; 2 uses
  %i.n = shl i64 %3, 4
  %i.o = add i64 %i.n, 16
  %i.p = shl i64 %2, 8
  %.0.i = select i1 %i.m, i64 %i.o, i64 %i.p
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.q = mul i64 %5, %4
  store i64 %i.q, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.r = icmp eq i64 %4, 1                        ; 2 uses
  %i.s = shl i64 %5, 4
  %i.t = add i64 %i.s, 16
  %i.u = shl i64 %4, 8
  %.0.i69 = select i1 %i.r, i64 %i.t, i64 %i.u    ; 2 uses
  store i64 %.0.i69, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i69) #46 ; 16 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !1216
  store i8 0, ptr %i.i, align 1, !tbaa !526
  %.not.i = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !24787

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ao, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [256 x i8], ptr %i.v, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.an, i8 0, i64 16, i1 false)
  %i.ao = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !24788

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.aq = trunc i64 %5 to i8
  store i8 %i.aq, ptr %i.ap, align 2, !tbaa !24779
  store ptr %i.v, ptr %0, align 8, !tbaa !24688
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1395
  %i.au = and i64 %i.at, -256
  %i.av = select i1 %.not.i, i64 4294967295, i64 %i.as
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !24789
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.ax, align 8, !tbaa !2047
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.d, ptr %.sroa.495.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.c, ptr %.sroa.596.0..sroa_idx, align 8, !tbaa !24792
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.e, ptr %.sroa.697.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.g, ptr %.sroa.898.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %0, ptr %.sroa.999.0..sroa_idx, align 8, !tbaa !24794
  %.sroa.10100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %i.b, ptr %.sroa.10100.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.11101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.11101.0..sroa_idx, align 8, !tbaa !2047
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  %i.ay = icmp eq i64 %1, 0
  br i1 %i.ay, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.r, %i.m
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ba = icmp ne ptr %i.k, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.h
  %.0133 = phi i64 [ 0, %bb.c ], [ %i.bo, %bb.h ] ; 3 uses
  %.042132 = phi i64 [ 0, %bb.c ], [ %.1, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0133
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %.not118 = icmp eq i8 %i.bd, 0
  br i1 %.not118, label %bb.h, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.042132 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKdmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

bb.g:                                             ; preds = %bb.e
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.042132 ; 2 uses
  call void @llvm.assume(i1 %i.ba)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0133 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !6599
  store double %i.bk, ptr %i.bh, align 8, !tbaa !24780
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bj, align 8, !tbaa !612
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !24734
  %i.bn = add nuw i64 %.042132, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ %i.bn, %bb.g ], [ %.042132, %bb.d ] ; 4 uses
  %i.bo = add i64 %.0133, 1
  %i.bp = icmp ult i64 %.1, %1
  br i1 %i.bp, label %bb.d, label %bb.i, !llvm.loop !24796

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
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !612
  br label %.thread

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.k, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.k:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %4, 0
  br i1 %i.by, label %bb.l, label %bb.m, !prof !524

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdmN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS9_14NaNAwareEqualsIdLb1EEEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.ca

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.m, %bb.j
  %.0116 = phi ptr [ %7, %bb.j ], [ %i.bz, %bb.m ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0116, i8 0, i64 %4, i1 false)
  %i.cb = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %2
  br label %bb.o

.loopexit:                                        ; preds = %bb.ab, %bb.o
  %.155.lcssa = phi i64 [ %.054129, %bb.o ], [ %i.ci, %bb.ab ] ; 2 uses
  %.not57 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not57, label %bb.ac, label %bb.o, !llvm.loop !24797

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit
  %.pn59130 = phi ptr [ %i.cb, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.053131, %.loopexit ] ; 2 uses
  %.054129 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.155.lcssa, %.loopexit ] ; 2 uses
  %.053131 = getelementptr inbounds i8, ptr %.pn59130, i64 -256 ; 4 uses
  %i.cc = load <16 x i8>, ptr %.053131, align 16, !tbaa !17
  %i.cd = icmp slt <16 x i8> %i.cc, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16
  %i.cf = and i16 %i.ce, 16383                    ; 2 uses
  %.not117124 = icmp eq i16 %i.cf, 0
  br i1 %.not117124, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.080.0.extract.trunc = zext nneg i16 %i.cf to i32
  %i.cg = icmp ne ptr %.053131, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %.pn59130, i64 -240
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ab
  %.155127 = phi i64 [ %.054129, %.lr.ph ], [ %i.ci, %bb.ab ]
  %.sroa.8.0126 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.ab ] ; 2 uses
  %.sroa.080.0125 = phi i32 [ %.sroa.080.0.extract.trunc, %.lr.ph ], [ %.sroa.080.1, %bb.ab ] ; 3 uses
  %i.ci = add i64 %.155127, -1                    ; 2 uses
  %i.cj = and i32 %.sroa.080.0125, 1
  %.not.i71 = icmp eq i32 %i.cj, 0
  br i1 %.not.i71, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

end_hunk_29
begin_hunk_30_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JS6_RmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_:bb.a
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bw ; 2 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !1395
  %i.cf = lshr i64 %i.ce, 8                       ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  store i32 %i.cg, ptr %i.cc, align 4, !tbaa !3
  %i.ch = load ptr, ptr %1, align 8, !tbaa !25023, !nonnull !552, !noundef !552
  %i.ci = and i64 %i.cf, 4294967295
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !7787
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !25052
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.cn = and i64 %i.cm, -256
  %i.co = add i64 %i.cn, 256
  %i.cp = and i64 %i.cm, 255
  %i.cq = or disjoint i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.a, align 8, !tbaa !1395
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink100 = phi ptr [ %i.ao, %bb.g ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa98.sink = phi i64 [ %i.z, %bb.g ], [ %i.bw, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink100, ptr %0, align 8, !tbaa !958
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa98.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cr, align 8, !tbaa !11026
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.7917", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25026 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = mul i64 %i.x, 24
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1216
  %i.ah = load ptr, ptr %0, align 8, !tbaa !25023 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = mul i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !25023
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !25095
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !25096

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !25097

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !25026
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1395
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !25098
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2047
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !11035
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.685.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.886.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.987.0..sroa_idx, align 8, !tbaa !25101
  %.sroa.1088.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1088.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1189.0..sroa_idx, align 8, !tbaa !25103
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
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
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17  ; 2 uses
  %.not110 = icmp eq i8 %i.br, 0
  br i1 %.not110, label %bb.h, label %bb.f, !prof !524

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034127 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !17
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
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !25105

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 2 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !524

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampEmvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.l, %bb.i
  %.0102 = phi ptr [ %7, %bb.i ], [ %i.cc, %bb.l ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0102, i8 0, i64 %4, i1 false)
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.m

.loopexit111:                                     ; preds = %bb.v, %bb.m
  %.143.lcssa = phi i64 [ %.042124, %bb.m ], [ %i.cu, %bb.v ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.w, label %bb.m, !llvm.loop !25106

bb.m:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit111
  %.pn125 = phi ptr [ %i.cd, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041126, %.loopexit111 ] ; 2 uses
  %.042124 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit111 ] ; 2 uses
  %.041126 = getelementptr inbounds i8, ptr %.pn125, i64 -64 ; 4 uses
  %i.ce = load <16 x i8>, ptr %.041126, align 16, !tbaa !17
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
  %i.ck = load ptr, ptr %0, align 8, !tbaa !25023
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0117 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.066.0116 = phi i32 [ %.sroa.069.0.extract.trunc, %.lr.ph ], [ %.sroa.066.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cl = and i32 %.sroa.066.0116, 1
  %.not.i55 = icmp eq i32 %i.cl, 0
  br i1 %.not.i55, label %bb.o, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

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
  br i1 %.not.i57, label %bb.p, label %bb.q, !prof !524

bb.p:                                             ; preds = %.lr.ph122
  %i.cw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.069.0119, i1 true) ; 2 uses
  %i.cx = add i32 %.sroa.871.0120, %i.cw
  %i.cy = add nuw nsw i32 %i.cw, 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph122, %bb.p
end_hunk_30
begin_hunk_31_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JS6_RmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESD_ImmERKT_DpOT0_:bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ea ; 2 uses
  %i.eh = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !1395
  %i.ej = lshr i64 %i.ei, 8                       ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !3
  %i.el = load ptr, ptr %1, align 8, !tbaa !25606, !nonnull !552, !noundef !552
  %i.em = and i64 %i.ej, 4294967295
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.em ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !7227
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.ep, ptr %i.eo, align 8, !tbaa !25653
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.er = and i64 %i.eq, -256
  %i.es = add i64 %i.er, 256
  %i.et = and i64 %i.eq, 255
  %i.eu = or disjoint i64 %i.es, %i.et
  store i64 %i.eu, ptr %i.a, align 8, !tbaa !1395
  br label %bb.r

bb.r:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink166 = phi ptr [ %i.cs, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.eg, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi.sink = phi i64 [ %.us-phi, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ %i.ea, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS5_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink166, ptr %0, align 8, !tbaa !958
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ev, align 8, !tbaa !11026
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %7 = alloca %"class.folly::detail::ScopeGuardImpl.8095", align 8 ; 15 uses
  %8 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25609 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = mul i64 %i.x, 24
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1216
  %i.ah = load ptr, ptr %0, align 8, !tbaa !25606 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = mul i64 %1, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !25606
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !25687
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !25688

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !25689

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !25609
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1395
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store i8 0, ptr %7, align 8, !tbaa !2042, !alias.scope !25690
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2047
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.c, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !11035
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.e, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.g, ptr %.sroa.887.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %0, ptr %.sroa.988.0..sroa_idx, align 8, !tbaa !25693
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.b, ptr %.sroa.1089.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.i, ptr %.sroa.1190.0..sroa_idx, align 8, !tbaa !25695
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
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
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17  ; 2 uses
  %.not111 = icmp eq i8 %i.br, 0
  br i1 %.not111, label %bb.h, label %bb.f, !prof !524

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034129 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !17
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
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !25697

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !524

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox10StringViewEmvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

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
  br i1 %.not45, label %bb.z, label %bb.n, !llvm.loop !25698

bb.n:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit112
  %.pn127 = phi ptr [ %i.ce, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041128, %.loopexit112 ] ; 2 uses
  %.042126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit112 ] ; 2 uses
  %.041128 = getelementptr inbounds i8, ptr %.pn127, i64 -64 ; 4 uses
  %i.ch = load <16 x i8>, ptr %.041128, align 16, !tbaa !17
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
  %i.cn = load ptr, ptr %0, align 8, !tbaa !25606
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0119 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.0118 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.co = and i32 %.sroa.067.0118, 1
  %.not.i55 = icmp eq i32 %i.co, 0
  br i1 %.not.i55, label %bb.p, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

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
  br i1 %.not.i57, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59, !prof !524

end_hunk_31
begin_hunk_32_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JS7_RmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESI_ImmERKT_DpOT0_:bb.a
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dn ; 2 uses
  %i.du = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !1395
  %i.dw = lshr i64 %i.dv, 8                       ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.dt, align 4, !tbaa !3
  %i.dy = load ptr, ptr %1, align 8, !tbaa !25923, !nonnull !552, !noundef !552
  %i.dz = and i64 %i.dw, 4294967295
  %i.ea = getelementptr inbounds nuw [40 x i8], ptr %i.dy, i64 %i.dz ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load i64, ptr %6, align 8, !tbaa !612
  store i64 %i.ec, ptr %i.eb, align 8, !tbaa !25990
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ee = and i64 %i.ed, -256
  %i.ef = add i64 %i.ee, 256
  %i.eg = and i64 %i.ed, 255
  %i.eh = or disjoint i64 %i.ef, %i.eg
  store i64 %i.eh, ptr %i.a, align 8, !tbaa !1395
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink104 = phi ptr [ %i.cb, %bb.n ], [ %i.dt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa102.sink = phi i64 [ %i.aa, %bb.n ], [ %i.dn, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.n ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink104, ptr %0, align 8, !tbaa !958
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa102.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ei, align 8, !tbaa !11026
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.8206", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25926 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = mul i64 %i.x, 40
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1216
  %i.ah = load ptr, ptr %0, align 8, !tbaa !25923 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = mul i64 %1, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !25923
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !26043
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !26044

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !26045

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !25926
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1395
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !26046
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2047
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !11035
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.887.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.988.0..sroa_idx, align 8, !tbaa !26049
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1089.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1190.0..sroa_idx, align 8, !tbaa !26051
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
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
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17  ; 2 uses
  %.not111 = icmp eq i8 %i.br, 0
  br i1 %.not111, label %bb.h, label %bb.f, !prof !524

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034129 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !17
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
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !26053

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !524

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEmSt4hashIS9_ENS7_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.l, %bb.i
  %.0103 = phi ptr [ %7, %bb.i ], [ %i.cc, %bb.l ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0103, i8 0, i64 %4, i1 false)
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.n

.loopexit112:                                     ; preds = %bb.aa, %bb.n
  %.143.lcssa = phi i64 [ %.042126, %bb.n ], [ %i.cv, %bb.aa ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.ac, label %bb.n, !llvm.loop !26054

bb.n:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit112
  %.pn127 = phi ptr [ %i.ce, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041128, %.loopexit112 ] ; 2 uses
  %.042126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit112 ] ; 2 uses
  %.041128 = getelementptr inbounds i8, ptr %.pn127, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041128, align 16, !tbaa !17
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
  %i.cl = load ptr, ptr %0, align 8, !tbaa !25923
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0119 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.0118 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.067.0118, 1
  %.not.i55 = icmp eq i32 %i.cm, 0
  br i1 %.not.i55, label %bb.p, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

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
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ct
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
  br i1 %.not.i57, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59, !prof !524

bb.q:                                             ; preds = %.lr.ph124
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0121, i1 true) ; 2 uses
end_hunk_32
begin_hunk_33_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_:bb.a

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.t
  %i.dr = trunc i64 %3 to i8
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dn ; 2 uses
  %i.du = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !1395
  %i.dw = lshr i64 %i.dv, 8                       ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.dt, align 4, !tbaa !3
  %i.dy = load ptr, ptr %1, align 8, !tbaa !25952, !nonnull !552, !noundef !552
  %i.dz = and i64 %i.dw, 4294967295
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.ec = and i64 %i.eb, -256
  %i.ed = add i64 %i.ec, 256
  %i.ee = and i64 %i.eb, 255
  %i.ef = or disjoint i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.a, align 8, !tbaa !1395
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink103 = phi ptr [ %i.cb, %bb.n ], [ %i.dt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa101.sink = phi i64 [ %i.aa, %bb.n ], [ %i.dn, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.n ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink103, ptr %0, align 8, !tbaa !958
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa101.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !612
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.eg, align 8, !tbaa !11026
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.8214", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25954 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = shl i64 %i.x, 5
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1216
  %i.ah = load ptr, ptr %0, align 8, !tbaa !25952 ; 2 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = shl i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %bb.a, %bb.b
  store ptr %i.aj, ptr %0, align 8, !tbaa !25952
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !19299
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !26072

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !26073

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS6_ENS4_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.be = trunc i64 %5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.be, ptr %i.bf, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !25954
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !1395
  %i.bj = and i64 %i.bi, -256
  %i.bk = select i1 %.not.i53, i64 4294967295, i64 %i.bh
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !26074
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !2047
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !11035
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.887.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.988.0..sroa_idx, align 8, !tbaa !26077
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1089.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1190.0..sroa_idx, align 8, !tbaa !19307
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS7_ENS5_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
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
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17  ; 2 uses
  %.not111 = icmp eq i8 %i.br, 0
  br i1 %.not111, label %bb.h, label %bb.f, !prof !524

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034129 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.f
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !17
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
  br i1 %i.ca, label %bb.e, label %.loopexit, !llvm.loop !26079

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.j, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp slt i64 %4, 0
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !524

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewEvSt4hashIS9_ENS7_9functions32MapUpdateFunctionEqualComparatorEvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.l, %bb.i
  %.0103 = phi ptr [ %7, %bb.i ], [ %i.cc, %bb.l ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0103, i8 0, i64 %4, i1 false)
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.n

.loopexit112:                                     ; preds = %bb.z, %bb.n
  %.143.lcssa = phi i64 [ %.042126, %bb.n ], [ %i.cv, %bb.z ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.ab, label %bb.n, !llvm.loop !26080

bb.n:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit112
  %.pn127 = phi ptr [ %i.ce, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041128, %.loopexit112 ] ; 2 uses
  %.042126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit112 ] ; 2 uses
  %.041128 = getelementptr inbounds i8, ptr %.pn127, i64 -64 ; 4 uses
  %i.cf = load <16 x i8>, ptr %.041128, align 16, !tbaa !17
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
  %i.cl = load ptr, ptr %0, align 8, !tbaa !25952
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0119 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.0118 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cm = and i32 %.sroa.067.0118, 1
  %.not.i55 = icmp eq i32 %i.cm, 0
  br i1 %.not.i55, label %bb.p, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

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
  br i1 %.not107, label %.lr.ph124, label %bb.o, !llvm.loop !26081

.lr.ph124:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.z
  %.143123 = phi i64 [ %i.cv, %bb.z ], [ %.042126, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.872.0122 = phi i32 [ %.sroa.872.1, %bb.z ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.070.0121 = phi i32 [ %.sroa.070.1, %bb.z ], [ %.sroa.070.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.cv = add i64 %.143123, -1                    ; 2 uses
  %i.cw = and i32 %.sroa.070.0121, 1
  %.not.i57 = icmp eq i32 %i.cw, 0
  br i1 %.not.i57, label %bb.q, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59, !prof !524

bb.q:                                             ; preds = %.lr.ph124
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0121, i1 true) ; 2 uses
end_hunk_33
begin_hunk_34_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JKS7_SC_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_:bb.a
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.t
  %i.dr = trunc i64 %3 to i8
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dn ; 2 uses
  %i.du = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !1395
  %i.dw = lshr i64 %i.dv, 8                       ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.dt, align 4, !tbaa !3
  %i.dy = load ptr, ptr %1, align 8, !tbaa !29952, !nonnull !552, !noundef !552
  %i.dz = and i64 %i.dw, 4294967295
  %i.ea = getelementptr inbounds nuw [56 x i8], ptr %i.dy, i64 %i.dz ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load <2 x ptr>, ptr %6, align 8, !tbaa !30128
  store <2 x ptr> %i.ec, ptr %i.eb, align 8, !tbaa !30128
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !29956
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !29956
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !1395 ; 2 uses
  %i.eh = and i64 %i.eg, -256
  %i.ei = add i64 %i.eh, 256
  %i.ej = and i64 %i.eg, 255
  %i.ek = or disjoint i64 %i.ei, %i.ej
  store i64 %i.ek, ptr %i.a, align 8, !tbaa !1395
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink104 = phi ptr [ %i.cb, %bb.n ], [ %i.dt, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa102.sink = phi i64 [ %i.aa, %bb.n ], [ %i.dn, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.n ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink104, ptr %0, align 8, !tbaa !958
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa102.sink, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !612
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.el, align 8, !tbaa !11026
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

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
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1395
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.9573", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.657", align 1   ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !612
  store i64 %2, ptr %i.b, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29917 ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !11028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i52 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i52, ptr %i.g, align 8, !tbaa !612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.ac = sub i64 0, %.0.i52
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = mul i64 %i.x, 56
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #46 ; 15 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1216
  %i.ah = load ptr, ptr %0, align 8, !tbaa !29952 ; 3 uses
  %i.ai = sub i64 0, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 3 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader

_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader: ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.ak = icmp eq i64 %1, 1
  br i1 %i.ak, label %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.epil.preheader, label %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader.new

_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader.new: ; preds = %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i

_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i: ; preds = %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader.new
  %.01418.i.i = phi ptr [ %i.ah, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader.new ], [ %i.az, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i ] ; 7 uses
  %.01517.i.i = phi ptr [ %i.aj, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader.new ], [ %i.ba, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i ] ; 8 uses
  %niter = phi i64 [ 0, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader.new ], [ %niter.next.1, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.01517.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.01418.i.i, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 32
  %i.an = load <2 x ptr>, ptr %i.al, align 8, !tbaa !30128
  store <2 x ptr> %i.an, ptr %i.am, align 8, !tbaa !30128
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29956
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !29956
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 88 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 88
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !30128
  store <2 x ptr> %i.av, ptr %i.au, align 8, !tbaa !30128
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 104
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29956
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !29956
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.01418.i.i, i64 112 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 112 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, label %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i, !llvm.loop !30153

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa: ; preds = %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit, label %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.epil.preheader

_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader
  %.01418.i.i.epil.init = phi ptr [ %i.ah, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader ], [ %i.az, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01517.i.i.epil.init = phi ptr [ %i.aj, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.preheader ], [ %i.ba, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod160 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.epil.init) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.01517.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %.01418.i.i.epil.init, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 32
  %i.bd = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !30128
  store <2 x ptr> %i.bd, ptr %i.bc, align 8, !tbaa !30128
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i.i.epil.init, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %.01418.i.i.epil.init, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29956
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !29956
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit: ; preds = %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit.loopexit.unr-lcssa, %bb.a
  store ptr %i.aj, ptr %0, align 8, !tbaa !29952
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !30154
  %.not.i53 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i53, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %xtraiter161 = and i64 %4, 7                    ; 3 uses
  %i.bh = icmp ult i64 %4, 8
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter164 = and i64 %4, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.08.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bx, %.lr.ph.i ] ; 9 uses
  %niter165 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter165.next.7, %.lr.ph.i ]
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bk, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bo, i8 0, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bq, i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bs, i8 0, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bu, i8 0, i64 16, i1 false)
  %i.bv = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bw, i8 0, i64 16, i1 false)
  %i.bx = add nuw i64 %.08.i, 8                   ; 2 uses
  %niter165.next.7 = add nuw i64 %niter165, 8     ; 2 uses
  %niter165.ncmp.7 = icmp eq i64 %niter165.next.7, %unroll_iter164
  br i1 %niter165.ncmp.7, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !30155

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bx, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter161, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.bz, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %.08.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.by, i8 0, i64 16, i1 false)
  %i.bz = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter161
  br i1 %epil.iter.cmp.not, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit, label %.lr.ph.i.epil, !llvm.loop !30156

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit: ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE12beforeRehashEmmmmRPh.exit
  %i.ca = trunc i64 %5 to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %i.ca, ptr %i.cb, align 1
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !29917
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !1395
  %i.cf = and i64 %i.ce, -256
  %i.cg = select i1 %.not.i53, i64 4294967295, i64 %i.cd
  %i.ch = or i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  store i8 0, ptr %i.j, align 1, !tbaa !526
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i8 0, ptr %6, align 8, !tbaa !2042, !alias.scope !30157
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.ci, align 8, !tbaa !2047
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !11035
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.e, ptr %.sroa.686.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2050
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.g, ptr %.sroa.887.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %0, ptr %.sroa.988.0..sroa_idx, align 8, !tbaa !30160
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.b, ptr %.sroa.1089.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.1190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.i, ptr %.sroa.1190.0..sroa_idx, align 8, !tbaa !30162
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !1197
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !1197
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  %or.cond = and i1 %i.y, %i.q
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ck = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.g
  %.0130 = phi i64 [ 0, %bb.c ], [ %i.cv, %bb.g ] ; 3 uses
  %.034129 = phi i64 [ 0, %bb.c ], [ %.1, %bb.g ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.0130
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !17  ; 2 uses
  %.not111 = icmp eq i8 %i.cn, 0
  br i1 %.not111, label %bb.g, label %bb.e, !prof !524

bb.e:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.034129 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #47
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.e
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !17
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.034129
  call void @llvm.assume(i1 %i.ck)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.0130
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !3
  %i.cu = add nuw i64 %.034129, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.d
  %.1 = phi i64 [ %i.cu, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ], [ %.034129, %bb.d ] ; 2 uses
  %i.cv = add i64 %.0130, 1
  %i.cw = icmp ult i64 %.1, %1
  br i1 %i.cw, label %bb.d, label %.loopexit, !llvm.loop !30164

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.not = icmp ugt i64 %4, 256                    ; 3 uses
  br i1 %.not, label %bb.i, label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit

bb.i:                                             ; preds = %bb.h
  %i.cx = icmp slt i64 %4, 0
  br i1 %i.cx, label %bb.j, label %bb.k, !prof !524

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #41
          to label %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS9_ESaISC_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit: ; preds = %bb.k, %bb.h
  %.0103 = phi ptr [ %7, %bb.h ], [ %i.cy, %bb.k ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0103, i8 0, i64 %4, i1 false)
  %i.da = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %2
  br label %bb.m

.loopexit112:                                     ; preds = %bb.z, %bb.m
  %.143.lcssa = phi i64 [ %.042126, %bb.m ], [ %i.dr, %bb.z ] ; 2 uses
  %.not45 = icmp eq i64 %.143.lcssa, 0
  br i1 %.not45, label %bb.ab, label %bb.m, !llvm.loop !30165

bb.m:                                             ; preds = %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit, %.loopexit112
  %.pn127 = phi ptr [ %i.da, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.041128, %.loopexit112 ] ; 2 uses
  %.042126 = phi i64 [ %1, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.143.lcssa, %.loopexit112 ] ; 2 uses
  %.041128 = getelementptr inbounds i8, ptr %.pn127, i64 -64 ; 4 uses
  %i.db = load <16 x i8>, ptr %.041128, align 16, !tbaa !17
  %i.dc = icmp slt <16 x i8> %i.db, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %i.de = and i16 %i.dd, 4095                     ; 2 uses
  %.sroa.070.0.extract.trunc = zext nneg i16 %i.de to i32 ; 2 uses
  %cond = icmp eq i16 %i.de, 0
  br i1 %cond, label %.loopexit112, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.df = icmp ne ptr %.041128, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds i8, ptr %.pn127, i64 -48 ; 2 uses
  %i.dh = load ptr, ptr %0, align 8, !tbaa !29952
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.8.0119 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.067.0118 = phi i32 [ %.sroa.070.0.extract.trunc, %.lr.ph ], [ %.sroa.067.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.di = and i32 %.sroa.067.0118, 1
  %.not.i55 = icmp eq i32 %i.di, 0
  br i1 %.not.i55, label %bb.o, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !524

bb.o:                                             ; preds = %bb.n
  %i.dj = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.067.0118, i1 true) ; 2 uses
  %i.dk = add i32 %.sroa.8.0119, %i.dj
  %i.dl = add nuw nsw i32 %i.dj, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.n, %bb.o
  %.pn110 = phi i32 [ %i.dl, %bb.o ], [ 1, %bb.n ]
  %.sroa.8.1.in = phi i32 [ %i.dk, %bb.o ], [ %.sroa.8.0119, %bb.n ] ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.067.1 = lshr i32 %.sroa.067.0118, %.pn110 ; 2 uses
  %i.dm = zext i32 %.sroa.8.1.in to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [56 x i8], ptr %i.dh, i64 %i.dp
  call void @llvm.prefetch.p0(ptr %i.dq, i32 0, i32 3, i32 1)
  %.not107 = icmp eq i32 %.sroa.067.1, 0
  br i1 %.not107, label %.lr.ph124, label %bb.n

.lr.ph124:                                        ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %bb.z
  %.143123 = phi i64 [ %i.dr, %bb.z ], [ %.042126, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ]
  %.sroa.872.0122 = phi i32 [ %.sroa.872.1, %bb.z ], [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %.sroa.070.0121 = phi i32 [ %.sroa.070.1, %bb.z ], [ %.sroa.070.0.extract.trunc, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %i.dr = add i64 %.143123, -1                    ; 2 uses
  %i.ds = and i32 %.sroa.070.0121, 1
  %.not.i57 = icmp eq i32 %i.ds, 0
  br i1 %.not.i57, label %bb.p, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit59, !prof !524

bb.p:                                             ; preds = %.lr.ph124
  %i.dt = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.070.0121, i1 true) ; 2 uses
end_hunk_34
begin_hunk_35_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a
  br i1 %.not, label %bb.ac, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS9_ESaISC_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit62

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPvm(ptr noundef nonnull %.0103, i64 noundef %4) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS9_ESaISC_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit62

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS9_ESaISC_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit62: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS9_ESaISC_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.v, %bb.l
  %.pn49.pn = phi { ptr, i32 } [ %i.cz, %bb.l ], [ %i.ff, %bb.v ], [ %i.ff, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ci) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  resume { ptr, i32 } %.pn49.pn

.loopexit:                                        ; preds = %bb.g, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS9_ESaISC_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit62, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !526
  %i.go = load i64, ptr %i.d, align 8, !tbaa !612 ; 2 uses
  %.not.i65 = icmp eq i64 %i.go, 0
  br i1 %.not.i65, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS9_ESaISC_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.gp = load ptr, ptr %i.c, align 8, !tbaa !11028 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS9_ESaISC_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63, label %bb.ad

bb.ad:                                            ; preds = %.noexc.i
  %i.gq = load i64, ptr %i.e, align 8, !tbaa !612
  %i.gr = sub i64 0, %i.gq
  %i.gs = and i64 %i.gr, -8
  %i.gt = mul i64 %i.go, 56
  %i.gu = sub i64 %i.gt, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gu) #34
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS9_ESaISC_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS9_ESaISC_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63: ; preds = %.loopexit, %bb.ad, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30169 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !30171, !nonnull !552
  %i.d = load i8, ptr %i.c, align 1, !tbaa !526, !range !551, !noundef !552
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !742

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30172, !nonnull !552, !align !674
  %i.h = load i64, ptr %i.g, align 8, !tbaa !612  ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30173, !nonnull !552, !align !674
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11028
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30174, !nonnull !552, !align !674
  %i.n = load i64, ptr %i.m, align 8, !tbaa !612
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30175, !nonnull !552, !align !674
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30176, !nonnull !552, !align !674
  %i.t = load i64, ptr %i.s, align 8, !tbaa !612  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30173, !nonnull !552, !align !674
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11028
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !29917
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30177, !nonnull !552, !align !674
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !612 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !1395
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !1395
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #34
  %.pre = load ptr, ptr %0, align 8, !tbaa !30171
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !526, !range !551
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30172
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !612
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30178, !nonnull !552, !align !674
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !612
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30179, !nonnull !552, !align !674
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !612
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30180, !nonnull !552, !align !674
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30154
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS6_SB_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_SB_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 56
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #34
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_SB_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_SB_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #43
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS6_SB_Em(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_SB_EEPSH_SK_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !29952  ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.b = icmp eq i64 %2, 1
  br i1 %i.b, label %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %2, -2
  br label %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i

_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i: ; preds = %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i, %.new
  %.01418.i = phi ptr [ %i.a, %.new ], [ %i.q, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i ] ; 7 uses
  %.01517.i = phi ptr [ %1, %.new ], [ %i.r, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i ] ; 8 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.01418.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.01517.i, ptr noundef nonnull align 8 dereferenceable(32) %.01418.i, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.01517.i, i64 32
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !30128
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !30128
  %i.f = getelementptr inbounds nuw i8, ptr %.01517.i, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %.01418.i, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29956
  store ptr %i.h, ptr %i.f, align 8, !tbaa !29956
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.01418.i, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %.01517.i, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %.01418.i, i64 88 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.01517.i, i64 88
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !tbaa !30128
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !30128
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %.01418.i, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29956
  store ptr %i.p, ptr %i.n, align 8, !tbaa !29956
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.01418.i, i64 112 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01517.i, i64 112 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_SB_EEPSH_SK_m.exit.loopexit.unr-lcssa, label %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i, !llvm.loop !30153

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_SB_EEPSH_SK_m.exit.loopexit.unr-lcssa: ; preds = %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_SB_EEPSH_SK_m.exit, label %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.epil.preheader

_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_SB_EEPSH_SK_m.exit.loopexit.unr-lcssa, %bb.b
  %.01418.i.epil.init = phi ptr [ %i.a, %bb.b ], [ %i.q, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_SB_EEPSH_SK_m.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01517.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.r, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_SB_EEPSH_SK_m.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod5 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.epil.init) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.01517.i.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %.01418.i.epil.init, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 32
  %i.u = load <2 x ptr>, ptr %i.s, align 8, !tbaa !30128
  store <2 x ptr> %i.u, ptr %i.t, align 8, !tbaa !30128
  %i.v = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29956
  store ptr %i.x, ptr %i.v, align 8, !tbaa !29956
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_SB_EEPSH_SK_m.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_SB_EEPSH_SK_m.exit: ; preds = %_ZSt10destroy_atISt4pairIKN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS4_ESaIS8_EEEEvPT_.exit.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_SB_EEPSH_SK_m.exit.loopexit.unr-lcssa, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !29952
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKSt21piecewise_construct_tSt5tupleIJRKS7_EESL_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESQ_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.3101") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1395 ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.m
  %.0.i79 = phi i64 [ %2, %bb.b ], [ %i.ca, %bb.m ] ; 2 uses
  %.022.i78 = phi i64 [ %i.i, %bb.b ], [ %i.bz, %bb.m ]
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !29917
  %i.m = load i64, ptr %i.a, align 8, !tbaa !1395
  %i.n = and i64 %i.m, 255
  %i.o = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i79, i64 range(i64 0, 256) %i.n)
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.o ; 4 uses
  %i.q = load <16 x i8>, ptr %i.p, align 16, !tbaa !17
  %i.r = icmp eq <16 x i8> %i.q, %i.g
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 4095
  %i.u = zext nneg i16 %i.t to i32
  %i.v = icmp ne ptr %i.p, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit, %bb.c
  %.sroa.042.0 = phi i32 [ %i.u, %bb.c ], [ %i.z, %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.l, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.y = add nsw i32 %.sroa.042.0, -1
  %i.z = and i32 %i.y, %.sroa.042.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.v)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aa
  %i.ac = load ptr, ptr %1, align 8, !tbaa !29952
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %4, align 8, !tbaa !12103, !nonnull !552, !align !674 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8368 ; 2 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !12103, !nonnull !552, !align !674 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8368
  %i.am = load i32, ptr %i.k, align 8, !tbaa !8646 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 58
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 59
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.au = load i32, ptr %i.at, align 8, !tbaa !2374
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2378
  %i.ax = sext i32 %i.am to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i.i.i

_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.az, %bb.g ], [ %i.au, %bb.f ], [ %i.am, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !8646 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2374
  br label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2378
  %i.bm = sext i32 %i.bb to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i.i.i

_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i.i.i
  %.0.i.i5.i.i.i.i.i = phi i32 [ %i.bo, %bb.j ], [ %i.bj, %bb.i ], [ %i.bb, %_ZNK8facebook5velox4exec11GenericView12decodedIndexEv.exit.i.i.i.i.i ]
  %i.bp = load ptr, ptr %i.ai, align 8, !tbaa !541
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call i64 %i.br(ptr noundef nonnull align 8 dereferenceable(94) %i.ai, ptr noundef %i.al, i32 noundef %.0.i.i.i.i.i.i.i, i32 noundef %.0.i.i5.i.i.i.i.i, i64 65793), !inline_history !30149 ; 2 uses
  %i.bt = and i64 %i.bs, 4294967296
  %.not.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i.i.i
  tail call void @_ZSt27__throw_bad_optional_accessv() #42
  unreachable

_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit: ; preds = %_ZNK8facebook5velox4exec11GenericView7compareERKS2_NS0_12CompareFlagsE.exit.i.i.i.i
  %i.bu = and i64 %i.bs, 4294967295
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.n, label %.critedge.i, !prof !742, !llvm.loop !30150

bb.l:                                             ; preds = %.critedge.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11021
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.thread66.loopexit, label %bb.m, !prof !742

bb.m:                                             ; preds = %bb.l
  %i.bz = add i64 %.022.i78, -1                   ; 2 uses
  %i.ca = add i64 %i.d, %.0.i79
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %.thread66.loopexit, label %bb.c, !llvm.loop !30151

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS6_ESaIS9_EEvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS6_EEbRKT_RKj.exit
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aa
  br label %bb.v

.thread66.loopexit:                               ; preds = %bb.l, %bb.m
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1395
  br label %.thread66

.thread66:                                        ; preds = %.thread66.loopexit, %bb.a
  %i.cc = phi i64 [ %.pre, %.thread66.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.cd = lshr i64 %i.cc, 8                       ; 2 uses
  %i.ce = and i64 %i.cc, 255                      ; 2 uses
  %i.cf = shl nuw i64 1, %i.ce                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !29917 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ci, align 1
  %i.cj = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ck = add i64 %i.cf, -1
  %i.cl = lshr i64 %i.ck, 12
  %i.cm = add nuw nsw i64 %i.cl, 1
  %i.cn = mul i64 %i.cm, %i.cj                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.cd, %i.cn
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.o

bb.o:                                             ; preds = %.thread66
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox4exec11GenericViewESt6vectorISt8optionalIS7_ESaISA_EEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cd, i64 noundef %i.cf, i64 noundef %i.cj, i64 noundef %i.cn)
end_hunk_35
begin_hunk_36_@_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE25addItemsPrimitiveFastPathIiNS1_9ArrayViewILb1ES6_EEEEvRKT0_:bb.a

.lr.ph:                                           ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !8391
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !9637, !nonnull !552, !align !674 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !2368 ; 16 uses
  %i.di = ptrtoaddr ptr %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 58
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 64 ; 5 uses
  br i1 %i.dl, label %iter.check, label %.lr.ph.split

iter.check:                                       ; preds = %.lr.ph
  %i.do = sext i32 %i.e to i64                    ; 2 uses
  %i.dp = sext i32 %i.da to i64                   ; 7 uses
  %wide.trip.count127 = zext i32 %i.db to i64     ; 8 uses
  %invariant.gep155 = getelementptr [4 x i8], ptr %i.af, i64 %i.do ; 7 uses
  %min.iters.check = icmp ult i32 %i.db, 8
  br i1 %min.iters.check, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dq = shl nsw i64 %i.do, 2
  %i.dr = add i64 %i.dq, %i.ag
  %i.ds = shl nsw i64 %i.dp, 2
  %i.dt = add i64 %i.ds, %i.di
  %i.du = sub i64 %i.dt, %i.dr
  %diff.check = icmp ugt i64 %i.du, -128
  br i1 %diff.check, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check170 = icmp ult i32 %i.db, 32
  br i1 %min.iters.check170, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count127, 24
  %n.vec = and i64 %wide.trip.count127, 4294967264 ; 5 uses
  %i.dv = add nsw i64 %n.vec, %i.dp
  %invariant.gep195 = getelementptr [4 x i8], ptr %i.dh, i64 %i.dp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep196 = getelementptr [4 x i8], ptr %invariant.gep195, i64 %index ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %gep196, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %gep196, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %gep196, i64 96
  %wide.load = load <8 x i32>, ptr %gep196, align 4, !tbaa !3
  %wide.load171 = load <8 x i32>, ptr %i.dw, align 4, !tbaa !3
  %wide.load172 = load <8 x i32>, ptr %i.dx, align 4, !tbaa !3
  %wide.load173 = load <8 x i32>, ptr %i.dy, align 4, !tbaa !3
  %i.dz = getelementptr [4 x i8], ptr %invariant.gep155, i64 %index ; 4 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 32
  %i.eb = getelementptr i8, ptr %i.dz, i64 64
  %i.ec = getelementptr i8, ptr %i.dz, i64 96
  store <8 x i32> %wide.load, ptr %i.dz, align 4, !tbaa !3
  store <8 x i32> %wide.load171, ptr %i.ea, align 4, !tbaa !3
  store <8 x i32> %wide.load172, ptr %i.eb, align 4, !tbaa !3
  store <8 x i32> %wide.load173, ptr %i.ec, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !33005

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count127
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader, label %vec.epilog.ph, !prof !3074

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec175 = and i64 %wide.trip.count127, 4294967288 ; 4 uses
  %i.ee = add nsw i64 %n.vec175, %i.dp
  %invariant.gep197 = getelementptr [4 x i8], ptr %i.dh, i64 %i.dp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index176 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next178, %vec.epilog.vector.body ] ; 3 uses
  %gep198 = getelementptr [4 x i8], ptr %invariant.gep197, i64 %index176
  %wide.load177 = load <8 x i32>, ptr %gep198, align 4, !tbaa !3
  %i.ef = getelementptr [4 x i8], ptr %invariant.gep155, i64 %index176
  store <8 x i32> %wide.load177, ptr %i.ef, align 4, !tbaa !3
  %index.next178 = add nuw i64 %index176, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next178, %n.vec175
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33006

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n179 = icmp eq i64 %n.vec175, %wide.trip.count127
  br i1 %cmp.n179, label %.loopexit, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader

_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv122.ph = phi i64 [ %i.dp, %iter.check ], [ %i.dp, %vector.memcheck ], [ %i.dv, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ] ; 2 uses
  %indvars.iv120.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec175, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter193 = and i64 %wide.trip.count127, 3   ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol.loopexit, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol

_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol: ; preds = %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol ], [ %indvars.iv122.ph, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader ] ; 2 uses
  %indvars.iv120.prol = phi i64 [ %indvars.iv.next121.prol, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol ], [ %indvars.iv120.ph, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol ], [ 0, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv122.prol
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %gep156.prol = getelementptr [4 x i8], ptr %invariant.gep155, i64 %indvars.iv120.prol
  store i32 %i.ei, ptr %gep156.prol, align 4, !tbaa !3
  %indvars.iv.next121.prol = add nuw nsw i64 %indvars.iv120.prol, 1 ; 2 uses
  %indvars.iv.next123.prol = add nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter193
  br i1 %prol.iter.cmp.not, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol.loopexit, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol, !llvm.loop !33007

_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol.loopexit: ; preds = %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader
  %indvars.iv122.unr = phi i64 [ %indvars.iv122.ph, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader ], [ %indvars.iv.next123.prol, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol ]
  %indvars.iv120.unr = phi i64 [ %indvars.iv120.ph, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader ], [ %indvars.iv.next121.prol, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol ]
  %i.ej = sub nsw i64 %indvars.iv120.ph, %wide.trip.count127
  %i.ek = icmp ugt i64 %i.ej, -4
  br i1 %i.ek, label %.loopexit, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us

_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us: ; preds = %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol.loopexit, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123.3, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us ], [ %indvars.iv122.unr, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol.loopexit ] ; 5 uses
  %indvars.iv120 = phi i64 [ %indvars.iv.next121.3, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us ], [ %indvars.iv120.unr, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol.loopexit ] ; 5 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv122
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %gep156 = getelementptr [4 x i8], ptr %invariant.gep155, i64 %indvars.iv120
  store i32 %i.em, ptr %gep156, align 4, !tbaa !3
  %i.en = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv122
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = getelementptr [4 x i8], ptr %invariant.gep155, i64 %indvars.iv120
  %gep156.1 = getelementptr i8, ptr %i.eq, i64 4
  store i32 %i.ep, ptr %gep156.1, align 4, !tbaa !3
  %i.er = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv122
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = getelementptr [4 x i8], ptr %invariant.gep155, i64 %indvars.iv120
  %gep156.2 = getelementptr i8, ptr %i.eu, i64 8
  store i32 %i.et, ptr %gep156.2, align 4, !tbaa !3
  %i.ev = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv122
  %i.ew = getelementptr i8, ptr %i.ev, i64 12
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3
  %i.ey = getelementptr [4 x i8], ptr %invariant.gep155, i64 %indvars.iv120
  %gep156.3 = getelementptr i8, ptr %i.ey, i64 12
  store i32 %i.ex, ptr %gep156.3, align 4, !tbaa !3
  %indvars.iv.next121.3 = add nuw nsw i64 %indvars.iv120, 4 ; 2 uses
  %indvars.iv.next123.3 = add nsw i64 %indvars.iv122, 4
  %exitcond128.3 = icmp eq i64 %indvars.iv.next121.3, %wide.trip.count127
  br i1 %exitcond128.3, label %.loopexit, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us, !llvm.loop !33008

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ez = getelementptr inbounds nuw i8, ptr %i.df, i64 59
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98.preheader, label %.lr.ph.split.split

_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98.preheader: ; preds = %.lr.ph.split
  %i.fc = sext i32 %i.e to i64
  %invariant.gep153 = getelementptr [4 x i8], ptr %i.af, i64 %i.fc ; 5 uses
  %xtraiter188 = and i32 %i.db, 3                 ; 3 uses
  %i.fd = icmp ult i32 %i.db, 4
  br i1 %i.fd, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98.epil.preheader, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98.preheader.new

_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98.preheader.new: ; preds = %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98.preheader
  %unroll_iter191 = and i32 %i.db, -4
  br label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98

_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98: ; preds = %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98.preheader.new
  %indvars.iv117 = phi i64 [ 0, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98.preheader.new ], [ %indvars.iv.next118.3, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98 ] ; 5 uses
  %niter192 = phi i32 [ 0, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98.preheader.new ], [ %niter192.next.3, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98 ]
  %i.fe = load i32, ptr %i.dn, align 8, !tbaa !2374
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %gep154 = getelementptr [4 x i8], ptr %invariant.gep153, i64 %indvars.iv117
  store i32 %i.fh, ptr %gep154, align 4, !tbaa !3
  %i.fi = load i32, ptr %i.dn, align 8, !tbaa !2374
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = getelementptr [4 x i8], ptr %invariant.gep153, i64 %indvars.iv117
  %gep154.1 = getelementptr i8, ptr %i.fm, i64 4
  store i32 %i.fl, ptr %gep154.1, align 4, !tbaa !3
  %i.fn = load i32, ptr %i.dn, align 8, !tbaa !2374
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = getelementptr [4 x i8], ptr %invariant.gep153, i64 %indvars.iv117
  %gep154.2 = getelementptr i8, ptr %i.fr, i64 8
  store i32 %i.fq, ptr %gep154.2, align 4, !tbaa !3
  %i.fs = load i32, ptr %i.dn, align 8, !tbaa !2374
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fw = getelementptr [4 x i8], ptr %invariant.gep153, i64 %indvars.iv117
  %gep154.3 = getelementptr i8, ptr %i.fw, i64 12
  store i32 %i.fv, ptr %gep154.3, align 4, !tbaa !3
  %indvars.iv.next118.3 = add nuw nsw i64 %indvars.iv117, 4 ; 2 uses
  %niter192.next.3 = add nuw i32 %niter192, 4     ; 2 uses
  %niter192.ncmp.3 = icmp eq i32 %niter192.next.3, %unroll_iter191
  br i1 %niter192.ncmp.3, label %.loopexit.loopexit185.unr-lcssa, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fx = load ptr, ptr %i.dm, align 8, !tbaa !2378 ; 3 uses
  %i.fy = sext i32 %i.e to i64
  %i.fz = sext i32 %i.da to i64                   ; 2 uses
  %wide.trip.count = zext i32 %i.db to i64        ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.af, i64 %i.fy ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ga = icmp eq i32 %i.db, 1
  br i1 %i.ga, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.epil.preheader, label %.lr.ph.split.split.new

.lr.ph.split.split.new:                           ; preds = %.lr.ph.split.split
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit

_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit: ; preds = %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit, %.lr.ph.split.split.new
  %indvars.iv112 = phi i64 [ %i.fz, %.lr.ph.split.split.new ], [ %indvars.iv.next113.1, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.new ], [ %indvars.iv.next.1, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.new ], [ %niter.next.1, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit ]
  %i.gb = shl nsw i64 %indvars.iv112, 2
  %i.gc = getelementptr inbounds i8, ptr %i.fx, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !3
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.gg, ptr %gep, align 4, !tbaa !3
  %indvars.iv.next113 = shl i64 %indvars.iv112, 2
  %i.gh = getelementptr i8, ptr %i.fx, i64 %indvars.iv.next113
  %i.gi = getelementptr i8, ptr %i.gh, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.gn, i64 4
  store i32 %i.gm, ptr %gep.1, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next113.1 = add nsw i64 %indvars.iv112, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit186.unr-lcssa, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit

bb.k:                                             ; preds = %bb.i
  %i.go = load i32, ptr %i.f, align 4, !tbaa !22402, !noalias !33009 ; 2 uses
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %.loopexit, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.k
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !22502, !noalias !33009
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.gv = sext i32 %i.e to i64
  %i.gw = sext i32 %i.gr to i64
  %wide.trip.count136 = zext i32 %i.go to i64
  %invariant.gep157 = getelementptr [4 x i8], ptr %i.af, i64 %i.gv
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph103, %bb.w
  %indvars.iv131 = phi i64 [ %i.gw, %.lr.ph103 ], [ %indvars.iv.next132, %bb.w ] ; 6 uses
  %indvars.iv129 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next130, %bb.w ] ; 3 uses
  %i.gx = load ptr, ptr %i.aj, align 8, !tbaa !11918, !nonnull !552, !align !674 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !2366 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 58
  %i.hb = load i8, ptr %i.ha, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.hc = trunc nuw i8 %i.hb to i1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 57
  %i.he = load i8, ptr %i.hd, align 1, !range !551
  %i.hf = trunc nuw i8 %i.he to i1
  %or.cond.i.i.i = select i1 %i.hc, i1 true, i1 %i.hf
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hg = lshr i64 %indvars.iv131, 6
  %i.hh = and i64 %i.hg, 67108863
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !612
  %i.hk = and i64 %indvars.iv131, 63
  %i.hl = shl nuw i64 1, %i.hk
  %i.hm = and i64 %i.hj, %i.hl
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 59
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hq = load i64, ptr %i.gz, align 8, !tbaa !612
  %i.hr = and i64 %i.hq, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit

bb.q:                                             ; preds = %bb.o
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !2378
  %i.hu = shl nsw i64 %indvars.iv131, 2
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3
  %i.hx = zext i32 %i.hw to i64                   ; 2 uses
  %i.hy = lshr i64 %i.hx, 6
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hy
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !612
  %i.ib = and i64 %i.hx, 63
  %i.ic = shl nuw i64 1, %i.ib
  %i.id = and i64 %i.ic, %i.ia
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.n, %bb.p, %bb.q
  %.0.i.i.i.in = phi i64 [ %i.hm, %bb.n ], [ %i.hr, %bb.p ], [ %i.id, %bb.q ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.u, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %bb.l, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit
  %i.ie = load ptr, ptr %i.gu, align 8, !tbaa !8391
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !9637, !nonnull !552, !align !674 ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !2368
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 58
  %i.ij = load i8, ptr %i.ii, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.ik = trunc nuw i8 %i.ij to i1
  %i.il = trunc nsw i64 %indvars.iv131 to i32
  br i1 %i.ik, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit56, label %bb.r

bb.r:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 59
  %i.in = load i8, ptr %i.im, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 64
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !2374
  br label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit56

bb.t:                                             ; preds = %bb.r
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !2378
  %i.it = shl nsw i64 %indvars.iv131, 2
  %i.iu = getelementptr inbounds i8, ptr %i.is, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit56

_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit56: ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread, %bb.s, %bb.t
  %.0.i.i.i.i55 = phi i32 [ %i.iv, %bb.t ], [ %i.iq, %bb.s ], [ %i.il, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread ]
  %i.iw = sext i32 %.0.i.i.i.i55 to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !3
  %gep158 = getelementptr [4 x i8], ptr %invariant.gep157, i64 %indvars.iv129
  store i32 %i.iy, ptr %gep158, align 4, !tbaa !3
  br label %bb.w

bb.u:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit
  %i.iz = load i32, ptr %i.gt, align 8, !tbaa !1069
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(184) %i.ae, i32 noundef %i.iz, i1 noundef zeroext true)
  %i.ja = load ptr, ptr %i.gs, align 8, !tbaa !1072 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 44
  %i.jc = load i8, ptr %i.jb, align 4, !tbaa !1079
  %i.jd = and i8 %i.jc, 2
  %.not.i3.i57 = icmp eq i8 %i.jd, 0
  br i1 %.not.i3.i57, label %_ZN8facebook5velox10FlatVectorIiE7setNullEib.exit58, label %bb.v, !prof !742

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #42
  unreachable

_ZN8facebook5velox10FlatVectorIiE7setNullEib.exit58: ; preds = %bb.u
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !1084
  %i.jg = trunc i64 %indvars.iv129 to i32
  %i.jh = add i32 %i.e, %i.jg
  %i.ji = zext i32 %i.jh to i64                   ; 2 uses
  %i.jj = lshr i64 %i.ji, 3
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !17
  %i.jm = and i64 %i.ji, 7
  %i.jn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !17
  %i.jp = and i8 %i.jo, %i.jl
  store i8 %i.jp, ptr %i.jk, align 1, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIiE7setNullEib.exit58, %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit56
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, 1
  %exitcond137 = icmp eq i64 %indvars.iv.next130, %wide.trip.count136
  br i1 %exitcond137, label %.loopexit, label %bb.l

.loopexit.loopexit185.unr-lcssa:                  ; preds = %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98
  %lcmp.mod189.not = icmp eq i32 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.loopexit, label %_ZNK8facebook5velox4exec11GenericView6castToIiEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us98.epil.preheader
end_hunk_36
begin_hunk_37_@_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE25addItemsPrimitiveFastPathInNS1_9ArrayViewILb1ES6_EEEEvRKT0_:bb.a
  %gep169 = getelementptr [16 x i8], ptr %invariant.gep168, i64 %indvars.iv143
  store i128 %i.bg, ptr %gep169, align 16, !tbaa !5423
  %indvars.iv.next144 = or disjoint i64 %indvars.iv143, 1 ; 2 uses
  %gep167.1 = getelementptr [16 x i8], ptr %invariant.gep166, i64 %indvars.iv.next144
  %i.bh = load i128, ptr %gep167.1, align 16, !tbaa !5423
  %gep169.1 = getelementptr [16 x i8], ptr %invariant.gep168, i64 %indvars.iv.next144
  store i128 %i.bh, ptr %gep169.1, align 16, !tbaa !5423
  %indvars.iv.next144.1 = or disjoint i64 %indvars.iv143, 2 ; 2 uses
  %gep167.2 = getelementptr [16 x i8], ptr %invariant.gep166, i64 %indvars.iv.next144.1
  %i.bi = load i128, ptr %gep167.2, align 16, !tbaa !5423
  %gep169.2 = getelementptr [16 x i8], ptr %invariant.gep168, i64 %indvars.iv.next144.1
  store i128 %i.bi, ptr %gep169.2, align 16, !tbaa !5423
  %indvars.iv.next144.2 = or disjoint i64 %indvars.iv143, 3 ; 2 uses
  %gep167.3 = getelementptr [16 x i8], ptr %invariant.gep166, i64 %indvars.iv.next144.2
  %i.bj = load i128, ptr %gep167.3, align 16, !tbaa !5423
  %gep169.3 = getelementptr [16 x i8], ptr %invariant.gep168, i64 %indvars.iv.next144.2
  store i128 %i.bj, ptr %gep169.3, align 16, !tbaa !5423
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %niter197.next.3 = add i64 %niter197, 4         ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.us, !llvm.loop !33056

bb.e:                                             ; preds = %bb.d
  %i.bk = sext i32 %i.e to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.bk
  %i.bm = sext i32 %i.as to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.bm
  %i.bo = load i32, ptr %i.f, align 4, !tbaa !22402
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.bl, ptr align 16 %i.bn, i64 %i.bq, i1 false)
  br label %.loopexit

.lr.ph108.splitthread-pre-split:                  ; preds = %bb.h
  %.pr = load ptr, ptr %i.ay, align 8, !tbaa !1400
  br label %.lr.ph108.split

.lr.ph108.split:                                  ; preds = %.lr.ph108.splitthread-pre-split, %.lr.ph108.split.preheader
  %i.br = phi ptr [ %.pr, %.lr.ph108.splitthread-pre-split ], [ %i.bb, %.lr.ph108.split.preheader ] ; 2 uses
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %.lr.ph108.splitthread-pre-split ], [ 0, %.lr.ph108.split.preheader ] ; 4 uses
  %i.bs = add nsw i64 %indvars.iv140, %i.bd       ; 3 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %.lr.ph108.split
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = and i64 %i.bt, 67108863
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !612
  %i.bx = and i64 %i.bs, 63
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = and i64 %i.bw, %i.by
  %.not.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i, label %bb.f, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread: ; preds = %.lr.ph108.split, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.bs
  %i.cb = load i128, ptr %i.ca, align 16, !tbaa !5423
  %gep165 = getelementptr [16 x i8], ptr %invariant.gep164, i64 %indvars.iv140
  store i128 %i.cb, ptr %gep165, align 16, !tbaa !5423
  br label %bb.h

bb.f:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.cc = load i32, ptr %i.ba, align 8, !tbaa !1069
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 16 dereferenceable(240) %i.ae, i32 noundef %i.cc, i1 noundef zeroext true)
  %i.cd = load ptr, ptr %i.az, align 8, !tbaa !1072 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 44
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !1079
  %i.cg = and i8 %i.cf, 2
  %.not.i3.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorInE7setNullEib.exit, label %bb.g, !prof !742

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #42
  unreachable

_ZN8facebook5velox10FlatVectorInE7setNullEib.exit: ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1084
  %i.cj = trunc i64 %indvars.iv140 to i32
  %i.ck = add i32 %i.e, %i.cj
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cm ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !17
  %i.cp = and i64 %i.cl, 7
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17
  %i.cs = and i8 %i.cr, %i.co
  store i8 %i.cs, ptr %i.cn, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread, %_ZN8facebook5velox10FlatVectorInE7setNullEib.exit
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.ct = load i32, ptr %i.f, align 4, !tbaa !22402
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next141, %i.cu
  br i1 %i.cv, label %.lr.ph108.splitthread-pre-split, label %.loopexit, !llvm.loop !33057

bb.i:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE6resizeEi.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !32991, !range !551, !noundef !552
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !22502, !noalias !33058 ; 2 uses
  %i.db = load i32, ptr %i.f, align 4, !tbaa !22402, !noalias !33058 ; 10 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !8391
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !33061, !nonnull !552, !align !674 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !2368 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 58
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  br i1 %i.dk, label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader, label %.lr.ph.split

_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader: ; preds = %.lr.ph
  %i.dn = sext i32 %i.e to i64
  %i.do = sext i32 %i.da to i64                   ; 2 uses
  %wide.trip.count129 = zext i32 %i.db to i64     ; 2 uses
  %invariant.gep160 = getelementptr [16 x i8], ptr %i.af, i64 %i.dn ; 3 uses
  %xtraiter186 = and i64 %wide.trip.count129, 1
  %i.dp = icmp eq i32 %i.db, 1
  br i1 %i.dp, label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.epil.preheader, label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader.new

_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader.new: ; preds = %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader
  %unroll_iter190 = and i64 %wide.trip.count129, 4294967294
  br label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us

_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us: ; preds = %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader.new
  %indvars.iv124 = phi i64 [ %i.do, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader.new ], [ %indvars.iv.next125.1, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us ] ; 3 uses
  %indvars.iv122 = phi i64 [ 0, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader.new ], [ %indvars.iv.next123.1, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us ] ; 3 uses
  %niter191 = phi i64 [ 0, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.preheader.new ], [ %niter191.next.1, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us ]
  %i.dq = shl nsw i64 %indvars.iv124, 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dq
  %.0.copyload.i.i.i.i.us = load i128, ptr %i.dr, align 1
  %gep161 = getelementptr [16 x i8], ptr %invariant.gep160, i64 %indvars.iv122
  store i128 %.0.copyload.i.i.i.i.us, ptr %gep161, align 16, !tbaa !5423
  %indvars.iv.next125 = shl i64 %indvars.iv124, 4
  %i.ds = getelementptr i8, ptr %i.dh, i64 %indvars.iv.next125
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %.0.copyload.i.i.i.i.us.1 = load i128, ptr %i.dt, align 1
  %i.du = getelementptr [16 x i8], ptr %invariant.gep160, i64 %indvars.iv122
  %gep161.1 = getelementptr i8, ptr %i.du, i64 16
  store i128 %.0.copyload.i.i.i.i.us.1, ptr %gep161.1, align 16, !tbaa !5423
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 2 uses
  %indvars.iv.next125.1 = add nsw i64 %indvars.iv124, 2 ; 2 uses
  %niter191.next.1 = add i64 %niter191, 2         ; 2 uses
  %niter191.ncmp.1 = icmp eq i64 %niter191.next.1, %unroll_iter190
  br i1 %niter191.ncmp.1, label %.loopexit.loopexit177.unr-lcssa, label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 59
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.dy = load i32, ptr %i.dm, align 8, !tbaa !2374
  %i.dz = sext i32 %i.dy to i64
  %i.ea = shl nsw i64 %i.dz, 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ea ; 5 uses
  %i.ec = sext i32 %i.e to i64
  %invariant.gep158 = getelementptr [16 x i8], ptr %i.af, i64 %i.ec ; 5 uses
  %xtraiter181 = and i32 %i.db, 3                 ; 3 uses
  %i.ed = icmp ult i32 %i.db, 4
  br i1 %i.ed, label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us99.epil.preheader, label %.lr.ph.split.split.us.new

.lr.ph.split.split.us.new:                        ; preds = %.lr.ph.split.split.us
  %unroll_iter184 = and i32 %i.db, -4
  br label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us99

_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us99: ; preds = %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us99, %.lr.ph.split.split.us.new
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.split.split.us.new ], [ %indvars.iv.next120.3, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us99 ] ; 5 uses
  %niter185 = phi i32 [ 0, %.lr.ph.split.split.us.new ], [ %niter185.next.3, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us99 ]
  %.0.copyload.i.i.i.i.us101 = load i128, ptr %i.eb, align 1
  %gep159 = getelementptr [16 x i8], ptr %invariant.gep158, i64 %indvars.iv119
  store i128 %.0.copyload.i.i.i.i.us101, ptr %gep159, align 16, !tbaa !5423
  %.0.copyload.i.i.i.i.us101.1 = load i128, ptr %i.eb, align 1
  %i.ee = getelementptr [16 x i8], ptr %invariant.gep158, i64 %indvars.iv119
  %gep159.1 = getelementptr i8, ptr %i.ee, i64 16
  store i128 %.0.copyload.i.i.i.i.us101.1, ptr %gep159.1, align 16, !tbaa !5423
  %.0.copyload.i.i.i.i.us101.2 = load i128, ptr %i.eb, align 1
  %i.ef = getelementptr [16 x i8], ptr %invariant.gep158, i64 %indvars.iv119
  %gep159.2 = getelementptr i8, ptr %i.ef, i64 32
  store i128 %.0.copyload.i.i.i.i.us101.2, ptr %gep159.2, align 16, !tbaa !5423
  %.0.copyload.i.i.i.i.us101.3 = load i128, ptr %i.eb, align 1
  %i.eg = getelementptr [16 x i8], ptr %invariant.gep158, i64 %indvars.iv119
  %gep159.3 = getelementptr i8, ptr %i.eg, i64 48
  store i128 %.0.copyload.i.i.i.i.us101.3, ptr %gep159.3, align 16, !tbaa !5423
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %niter185.next.3 = add nuw i32 %niter185, 4     ; 2 uses
  %niter185.ncmp.3 = icmp eq i32 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %.loopexit.loopexit178.unr-lcssa, label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us99

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.eh = load ptr, ptr %i.dl, align 8, !tbaa !2378 ; 3 uses
  %i.ei = sext i32 %i.e to i64
  %i.ej = sext i32 %i.da to i64                   ; 2 uses
  %wide.trip.count = zext i32 %i.db to i64        ; 2 uses
  %invariant.gep = getelementptr [16 x i8], ptr %i.af, i64 %i.ei ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ek = icmp eq i32 %i.db, 1
  br i1 %i.ek, label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit.epil.preheader, label %.lr.ph.split.split.new

.lr.ph.split.split.new:                           ; preds = %.lr.ph.split.split
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit

_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit: ; preds = %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit, %.lr.ph.split.split.new
  %indvars.iv114 = phi i64 [ %i.ej, %.lr.ph.split.split.new ], [ %indvars.iv.next115.1, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.new ], [ %indvars.iv.next.1, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.new ], [ %niter.next.1, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit ]
  %i.el = shl nsw i64 %indvars.iv114, 2
  %i.em = getelementptr inbounds i8, ptr %i.eh, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = sext i32 %i.en to i64
  %i.ep = shl nsw i64 %i.eo, 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ep
  %.0.copyload.i.i.i.i = load i128, ptr %i.eq, align 1
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i128 %.0.copyload.i.i.i.i, ptr %gep, align 16, !tbaa !5423
  %indvars.iv.next115 = shl i64 %indvars.iv114, 2
  %i.er = getelementptr i8, ptr %i.eh, i64 %indvars.iv.next115
  %i.es = getelementptr i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = sext i32 %i.et to i64
  %i.ev = shl nsw i64 %i.eu, 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ev
  %.0.copyload.i.i.i.i.1 = load i128, ptr %i.ew, align 1
  %i.ex = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ex, i64 16
  store i128 %.0.copyload.i.i.i.i.1, ptr %gep.1, align 16, !tbaa !5423
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next115.1 = add nsw i64 %indvars.iv114, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit179.unr-lcssa, label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ey = load i32, ptr %i.f, align 4, !tbaa !22402, !noalias !33063 ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %.loopexit, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.k
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !22502, !noalias !33063
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ff = sext i32 %i.e to i64
  %i.fg = sext i32 %i.fb to i64
  %wide.trip.count138 = zext i32 %i.ey to i64
  %invariant.gep162 = getelementptr [16 x i8], ptr %i.af, i64 %i.ff
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph105, %bb.w
  %indvars.iv133 = phi i64 [ %i.fg, %.lr.ph105 ], [ %indvars.iv.next134, %bb.w ] ; 6 uses
  %indvars.iv131 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next132, %bb.w ] ; 3 uses
  %i.fh = load ptr, ptr %i.ai, align 8, !tbaa !11918, !nonnull !552, !align !674 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !2366 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 58
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 57
  %i.fo = load i8, ptr %i.fn, align 1, !range !551
  %i.fp = trunc nuw i8 %i.fo to i1
  %or.cond.i.i.i = select i1 %i.fm, i1 true, i1 %i.fp
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fq = lshr i64 %indvars.iv133, 6
  %i.fr = and i64 %i.fq, 67108863
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !612
  %i.fu = and i64 %indvars.iv133, 63
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.ft, %i.fv
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 59
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ga = load i64, ptr %i.fj, align 8, !tbaa !612
  %i.gb = and i64 %i.ga, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit

bb.q:                                             ; preds = %bb.o
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !2378
  %i.ge = shl nsw i64 %indvars.iv133, 2
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = lshr i64 %i.gh, 6
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !612
  %i.gl = and i64 %i.gh, 63
  %i.gm = shl nuw i64 1, %i.gl
  %i.gn = and i64 %i.gm, %i.gk
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.n, %bb.p, %bb.q
  %.0.i.i.i.in = phi i64 [ %i.fw, %bb.n ], [ %i.gb, %bb.p ], [ %i.gn, %bb.q ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.u, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %bb.l, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit
  %i.go = load ptr, ptr %i.fe, align 8, !tbaa !8391
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !33061, !nonnull !552, !align !674 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !2368
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 58
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !2367, !range !551, !noundef !552
  %i.gu = trunc nuw i8 %i.gt to i1
  %i.gv = trunc nsw i64 %indvars.iv133 to i32
  br i1 %i.gu, label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit57, label %bb.r

bb.r:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 59
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !2373, !range !551, !noundef !552
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !2374
  br label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit57

bb.t:                                             ; preds = %bb.r
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !2378
  %i.hd = shl nsw i64 %indvars.iv133, 2
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit57

_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit57: ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread, %bb.s, %bb.t
  %.0.i.i.i.i55 = phi i32 [ %i.hf, %bb.t ], [ %i.ha, %bb.s ], [ %i.gv, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit.thread ]
  %i.hg = sext i32 %.0.i.i.i.i55 to i64
  %i.hh = shl nsw i64 %i.hg, 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hh
  %.0.copyload.i.i.i.i56 = load i128, ptr %i.hi, align 1
  %gep163 = getelementptr [16 x i8], ptr %invariant.gep162, i64 %indvars.iv131
  store i128 %.0.copyload.i.i.i.i56, ptr %gep163, align 16, !tbaa !5423
  br label %bb.w

bb.u:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_12TypeVariableILm2EEELb0ELb0EEEE9has_valueEv.exit
  %i.hj = load i32, ptr %i.fd, align 8, !tbaa !1069
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 16 dereferenceable(240) %i.ae, i32 noundef %i.hj, i1 noundef zeroext true)
  %i.hk = load ptr, ptr %i.fc, align 8, !tbaa !1072 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 44
  %i.hm = load i8, ptr %i.hl, align 4, !tbaa !1079
  %i.hn = and i8 %i.hm, 2
  %.not.i3.i58 = icmp eq i8 %i.hn, 0
  br i1 %.not.i3.i58, label %_ZN8facebook5velox10FlatVectorInE7setNullEib.exit59, label %bb.v, !prof !742

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #42
  unreachable

_ZN8facebook5velox10FlatVectorInE7setNullEib.exit59: ; preds = %bb.u
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !1084
  %i.hq = trunc i64 %indvars.iv131 to i32
  %i.hr = add i32 %i.e, %i.hq
  %i.hs = zext i32 %i.hr to i64                   ; 2 uses
  %i.ht = lshr i64 %i.hs, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ht ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !17
  %i.hw = and i64 %i.hs, 7
  %i.hx = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !17
  %i.hz = and i8 %i.hy, %i.hv
  store i8 %i.hz, ptr %i.hu, align 1, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorInE7setNullEib.exit59, %_ZNK8facebook5velox4exec11GenericView6castToInEENS1_12VectorReaderIT_E9exec_in_tEv.exit57
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1
  %exitcond139 = icmp eq i64 %indvars.iv.next132, %wide.trip.count138
  br i1 %exitcond139, label %.loopexit, label %bb.l

end_hunk_37
