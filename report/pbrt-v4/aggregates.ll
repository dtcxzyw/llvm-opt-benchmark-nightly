Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/aggregates?download=true
inline.NumInlined: 3981
inline.NumDeleted: 1006
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK4pbrt12BVHAggregate13buildUpperSAHEN4pstd3pmr21polymorphic_allocatorISt4byteEERSt6vectorIPNS_12BVHBuildNodeESaIS8_EEiiPSt6atomicIiE:bb.a
  store ptr %i.mt, ptr %.11651.i.i, align 8, !tbaa !106
  store ptr %i.md, ptr %.1.i.i, align 8, !tbaa !106
  %i.ng = getelementptr inbounds nuw i8, ptr %.11651.i.i, i64 8 ; 3 uses
  %i.nh = icmp eq ptr %i.ng, %.1.i.i
  br i1 %i.nh, label %"_ZSt9partitionIPPN4pbrt12BVHBuildNodeEZNKS0_12BVHAggregate13buildUpperSAHEN4pstd3pmr21polymorphic_allocatorISt4byteEERSt6vectorIS2_SaIS2_EEiiPSt6atomicIiEE3$_0ET_SI_SI_T0_.exit", label %.lr.ph.i.i, !llvm.loop !343

"_ZSt9partitionIPPN4pbrt12BVHBuildNodeEZNKS0_12BVHAggregate13buildUpperSAHEN4pstd3pmr21polymorphic_allocatorISt4byteEERSt6vectorIS2_SaIS2_EEiiPSt6atomicIiEE3$_0ET_SI_SI_T0_.exit": ; preds = %bb.w, %bb.r, %.preheader.i.i, %bb.l
  %.11637.i.i = phi ptr [ %.055.i.i, %bb.r ], [ %.11651.i.i, %.preheader.i.i ], [ %i.im, %bb.l ], [ %i.ng, %bb.w ]
  %i.ni = ptrtoint ptr %.11637.i.i to i64
  %i.nj = ptrtoint ptr %i.il to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = lshr exact i64 %i.nk, 3
  %i.nm = trunc i64 %i.nl to i32                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #32
  store i32 %i.nm, ptr %i.r, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #32
  store i32 %3, ptr %i.s, align 4, !tbaa !53
  %i.nn = icmp slt i32 %3, %i.nm
  br i1 %i.nn, label %bb.y, label %bb.x

bb.x:                                             ; preds = %"_ZSt9partitionIPPN4pbrt12BVHBuildNodeEZNKS0_12BVHAggregate13buildUpperSAHEN4pstd3pmr21polymorphic_allocatorISt4byteEERSt6vectorIS2_SaIS2_EEiiPSt6atomicIiEE3$_0ET_SI_SI_T0_.exit"
  call void @_ZN4pbrt8LogFatalIJRA4_KcRA6_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 717, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(4) @.str.39, ptr noundef nonnull align 1 dereferenceable(6) @.str.32, ptr noundef nonnull align 1 dereferenceable(4) @.str.39, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 1 dereferenceable(6) @.str.32, ptr noundef nonnull align 4 dereferenceable(4) %i.s) #31
  unreachable

bb.y:                                             ; preds = %"_ZSt9partitionIPPN4pbrt12BVHBuildNodeEZNKS0_12BVHAggregate13buildUpperSAHEN4pstd3pmr21polymorphic_allocatorISt4byteEERSt6vectorIS2_SaIS2_EEiiPSt6atomicIiEE3$_0ET_SI_SI_T0_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #32
  store i32 %i.nm, ptr %i.t, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #32
  store i32 %4, ptr %i.u, align 4, !tbaa !53
  %i.no = icmp sgt i32 %4, %i.nm
  br i1 %i.no, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN4pbrt8LogFatalIJRA4_KcS3_S3_RiS3_S4_EEEvNS_8LogLevelEPS1_iS6_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 718, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(4) @.str.39, ptr noundef nonnull align 1 dereferenceable(4) @.str.33, ptr noundef nonnull align 1 dereferenceable(4) @.str.39, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(4) @.str.33, ptr noundef nonnull align 4 dereferenceable(4) %i.u) #31
  unreachable

common.ret680:                                    ; preds = %bb.aa, %common.ret
  %common.ret680.op = phi ptr [ %i.ab, %common.ret ], [ %i.ag, %bb.aa ]
  ret ptr %common.ret680.op

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #32
  %i.np = tail call noundef ptr @_ZNK4pbrt12BVHAggregate13buildUpperSAHEN4pstd3pmr21polymorphic_allocatorISt4byteEERSt6vectorIPNS_12BVHBuildNodeESaIS8_EEiiPSt6atomicIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %i.nm, ptr noundef nonnull %5) ; 5 uses
  %i.nq = tail call noundef ptr @_ZNK4pbrt12BVHAggregate13buildUpperSAHEN4pstd3pmr21polymorphic_allocatorISt4byteEERSt6vectorIPNS_12BVHBuildNodeESaIS8_EEiiPSt6atomicIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.nm, i32 noundef %4, ptr noundef nonnull %5) ; 5 uses
  store ptr %i.np, ptr %i.ah, align 8, !tbaa !106
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !106
  %.sroa.020.0.copyload.i.i = load <2 x float>, ptr %i.np, align 4, !noalias !352 ; 2 uses
  %.sroa.221.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %.sroa.221.0.copyload.i.i = load float, ptr %.sroa.221.0..sroa_idx.i.i, align 4, !tbaa !56, !noalias !352 ; 2 uses
  %.sroa.018.0.copyload.i.i = load <2 x float>, ptr %i.nq, align 4, !noalias !352 ; 2 uses
  %.sroa.219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %.sroa.219.0.copyload.i.i = load float, ptr %.sroa.219.0..sroa_idx.i.i, align 4, !tbaa !56, !noalias !352 ; 2 uses
  %i.ns = fcmp olt <2 x float> %.sroa.018.0.copyload.i.i, %.sroa.020.0.copyload.i.i
  %i.nt = select <2 x i1> %i.ns, <2 x float> %.sroa.018.0.copyload.i.i, <2 x float> %.sroa.020.0.copyload.i.i
  %i.nu = fcmp olt float %.sroa.219.0.copyload.i.i, %.sroa.221.0.copyload.i.i
  %.sroa.speculated.i.i.i = select i1 %i.nu, float %.sroa.219.0.copyload.i.i, float %.sroa.221.0.copyload.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  %.sroa.07.0.copyload.i.i = load <2 x float>, ptr %i.nv, align 4, !noalias !352 ; 2 uses
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.np, i64 20
  %.sroa.28.0.copyload.i.i = load float, ptr %.sroa.28.0..sroa_idx.i.i, align 4, !tbaa !56, !noalias !352 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 12
  %.sroa.05.0.copyload.i.i248 = load <2 x float>, ptr %i.nw, align 4, !noalias !352 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i249 = getelementptr inbounds nuw i8, ptr %i.nq, i64 20
  %.sroa.26.0.copyload.i.i250 = load float, ptr %.sroa.26.0..sroa_idx.i.i249, align 4, !tbaa !56, !noalias !352 ; 2 uses
  %i.nx = fcmp olt <2 x float> %.sroa.07.0.copyload.i.i, %.sroa.05.0.copyload.i.i248
  %i.ny = select <2 x i1> %i.nx, <2 x float> %.sroa.05.0.copyload.i.i248, <2 x float> %.sroa.07.0.copyload.i.i
  %i.nz = fcmp olt float %.sroa.28.0.copyload.i.i, %.sroa.26.0.copyload.i.i250
  %.sroa.speculated.i31.i.i = select i1 %i.nz, float %.sroa.26.0.copyload.i.i250, float %.sroa.28.0.copyload.i.i
  store <2 x float> %i.nt, ptr %i.ag, align 8
  store float %.sroa.speculated.i.i.i, ptr %i.ai, align 8
  store <2 x float> %i.ny, ptr %i.aj, align 4
  store float %.sroa.speculated.i31.i.i, ptr %i.al, align 4
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 %.0.i, ptr %i.oa, align 8, !tbaa !140
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i32 0, ptr %i.ob, align 8, !tbaa !131
  %i.oc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL13interiorNodesE) ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !54
  %i.oe = add nsw i64 %i.od, 1
  store i64 %i.oe, ptr %i.oc, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %common.ret680
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt12BVHAggregate8emitLBVHERPNS_12BVHBuildNodeERKSt6vectorINS_12BVHPrimitiveESaIS5_EEPNS_15MortonPrimitiveEiPiRS4_INS_9PrimitiveESaISD_EEPSt6atomicIiEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = icmp sgt i32 %4, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i32 %4, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i32 0, ptr %i.b, align 4, !tbaa !53
  br i1 %i.g, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.h = load i32, ptr %0, align 8
  %.fr106 = freeze i32 %i.h
  %i.i = icmp slt i32 %4, %.fr106
  %i.j = add nsw i32 %4, -1                       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.k = icmp eq i32 %8, -1
  %or.cond = or i1 %i.i, %i.k
  br i1 %or.cond, label %.lr.ph102, label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !101
  %i.r = xor i32 %i.q, %i.p                       ; 2 uses
  %i.s = add i32 %8, 1                            ; 3 uses
  %min.iters.check = icmp ult i32 %i.s, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph96
  %n.vec = and i32 %i.s, -32                      ; 3 uses
  %i.t = sub i32 %8, %n.vec
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <32 x i32> poison, i32 %8, i64 0
  %broadcast.splat119 = shufflevector <32 x i32> %broadcast.splatinsert118, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.u = add nsw <32 x i32> %broadcast.splat119, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 -8, i32 -9, i32 -10, i32 -11, i32 -12, i32 -13, i32 -14, i32 -15, i32 -16, i32 -17, i32 -18, i32 -19, i32 -20, i32 -21, i32 -22, i32 -23, i32 -24, i32 -25, i32 -26, i32 -27, i32 -28, i32 -29, i32 -30, i32 -31>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <32 x i32> [ %i.u, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.v = shl nuw <32 x i32> splat (i32 1), %vec.ind ; 2 uses
  %i.w = and <32 x i32> %broadcast.splat, %i.v
  %.fr = freeze <32 x i32> %i.w
  %i.x = icmp ne <32 x i32> %.fr, zeroinitializer ; 2 uses
  %i.y = bitcast <32 x i1> %i.x to i32
  %.not120 = icmp eq i32 %i.y, 0
  br i1 %.not120, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, splat (i32 -32)
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.z = icmp eq i32 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !353

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.s, %n.vec
  br i1 %cmp.n, label %.lr.ph102, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph96, %middle.block
  %.tr8489.us95.ph = phi i32 [ %8, %.lr.ph96 ], [ %i.t, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.x, i1 false) ; 2 uses
  %i.aa = trunc i64 %first.active.lane to i32
  %i.ab = add i32 %index, %i.aa
  %i.ac = sub i32 %8, %i.ab
  %i.ad = extractelement <32 x i32> %i.v, i64 %first.active.lane
  br label %.split91.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %tailrecurse.us
  %.tr8489.us95 = phi i32 [ %i.ah, %tailrecurse.us ], [ %.tr8489.us95.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ae = shl nuw i32 1, %.tr8489.us95            ; 2 uses
  %i.af = and i32 %i.r, %i.ae
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %tailrecurse.us, label %.split91.us

tailrecurse.us:                                   ; preds = %scalar.ph
  %i.ah = add nsw i32 %.tr8489.us95, -1
  %i.ai = icmp eq i32 %.tr8489.us95, 0
  br i1 %i.ai, label %.lr.ph102, label %scalar.ph, !llvm.loop !354

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA12_KcRA2_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 457, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(12) @.str.19, ptr noundef nonnull align 1 dereferenceable(2) @.str.20, ptr noundef nonnull align 1 dereferenceable(12) @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.20, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #31
  unreachable

.lr.ph102:                                        ; preds = %tailrecurse.us, %middle.block, %.lr.ph
  %i.aj = load i32, ptr %5, align 4, !tbaa !53
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %5, align 4, !tbaa !53
  %i.al = load ptr, ptr %1, align 8, !tbaa !106   ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store ptr %i.am, ptr %1, align 8, !tbaa !106
  %i.an = atomicrmw add ptr %7, i32 %4 seq_cst, align 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35 ; 3 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !35
  %i.ar = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %i.as = sext i32 %i.an to i64
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.aq, i64 %i.as ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.at = icmp eq i32 %4, 1
  br i1 %i.at, label %.epil.preheader, label %.lr.ph102.new

.lr.ph102.new:                                    ; preds = %.lr.ph102
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

._crit_edge.unr-lcssa:                            ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph102
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.sroa.14.0100.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph102 ], [ %.sroa.speculated.i31.i.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.sroa.10.099.epil.init = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph102 ], [ %i.cs, %._crit_edge.unr-lcssa ] ; 2 uses
  %.sroa.7.098.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph102 ], [ %.sroa.speculated.i.i.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.sroa.067.097.epil.init = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph102 ], [ %i.co, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod136 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !149
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aw
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !52
  store i64 %i.ay, ptr %gep.epil, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.aw ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.018.0.copyload.i.epil = load <2 x float>, ptr %i.ba, align 4, !noalias !361 ; 2 uses
  %.sroa.219.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.219.0.copyload.i.epil = load float, ptr %.sroa.219.0..sroa_idx.i.epil, align 4, !tbaa !56, !noalias !361 ; 2 uses
  %i.bb = fcmp olt <2 x float> %.sroa.018.0.copyload.i.epil, %.sroa.067.097.epil.init
  %i.bc = select <2 x i1> %i.bb, <2 x float> %.sroa.018.0.copyload.i.epil, <2 x float> %.sroa.067.097.epil.init
  %i.bd = fcmp olt float %.sroa.219.0.copyload.i.epil, %.sroa.7.098.epil.init
  %.sroa.speculated.i.i.epil = select i1 %i.bd, float %.sroa.219.0.copyload.i.epil, float %.sroa.7.098.epil.init
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %.sroa.05.0.copyload.i.epil = load <2 x float>, ptr %i.be, align 4, !noalias !361 ; 2 uses
  %.sroa.26.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %.sroa.26.0.copyload.i.epil = load float, ptr %.sroa.26.0..sroa_idx.i.epil, align 4, !tbaa !56, !noalias !361 ; 2 uses
  %i.bf = fcmp olt <2 x float> %.sroa.10.099.epil.init, %.sroa.05.0.copyload.i.epil
  %i.bg = select <2 x i1> %i.bf, <2 x float> %.sroa.05.0.copyload.i.epil, <2 x float> %.sroa.10.099.epil.init
  %i.bh = fcmp olt float %.sroa.14.0100.epil.init, %.sroa.26.0.copyload.i.epil
  %.sroa.speculated.i31.i.epil = select i1 %i.bh, float %.sroa.26.0.copyload.i.epil, float %.sroa.14.0100.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa122 = phi <2 x float> [ %i.co, %._crit_edge.unr-lcssa ], [ %i.bc, %.epil.preheader ]
  %.sroa.speculated.i.i.lcssa = phi float [ %.sroa.speculated.i.i.1, %._crit_edge.unr-lcssa ], [ %.sroa.speculated.i.i.epil, %.epil.preheader ]
  %.lcssa121 = phi <2 x float> [ %i.cs, %._crit_edge.unr-lcssa ], [ %i.bg, %.epil.preheader ]
  %.sroa.speculated.i31.i.lcssa = phi float [ %.sroa.speculated.i31.i.1, %._crit_edge.unr-lcssa ], [ %.sroa.speculated.i31.i.epil, %.epil.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  store i32 %i.an, ptr %i.bi, align 4, !tbaa !130
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i32 %4, ptr %i.bj, align 8, !tbaa !131
  store <2 x float> %.lcssa122, ptr %i.al, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store float %.sroa.speculated.i.i.lcssa, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store <2 x float> %.lcssa121, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store float %.sroa.speculated.i31.i.lcssa, ptr %.sroa.14.0..sroa_idx, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL9leafNodesE) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !54
  %i.bn = add nsw i64 %i.bm, 1
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !54
  %i.bo = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL14totalLeafNodesE) ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !54
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !54
  %i.br = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL15totalPrimitivesE)
  br label %common.ret

bb.c:                                             ; preds = %bb.c, %.lr.ph102.new
  %indvars.iv = phi i64 [ 0, %.lr.ph102.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %.sroa.14.0100 = phi float [ f0xFF7FFFFF, %.lr.ph102.new ], [ %.sroa.speculated.i31.i.1, %bb.c ] ; 2 uses
  %.sroa.10.099 = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph102.new ], [ %i.cs, %bb.c ] ; 2 uses
  %.sroa.7.098 = phi float [ f0x7F7FFFFF, %.lr.ph102.new ], [ %.sroa.speculated.i.i.1, %bb.c ] ; 2 uses
  %.sroa.067.097 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph102.new ], [ %i.co, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph102.new ], [ %niter.next.1, %bb.c ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !149
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bu
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !52
  store i64 %i.bw, ptr %gep, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.bu ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.018.0.copyload.i = load <2 x float>, ptr %i.by, align 4, !noalias !361 ; 2 uses
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.219.0.copyload.i = load float, ptr %.sroa.219.0..sroa_idx.i, align 4, !tbaa !56, !noalias !361 ; 2 uses
  %i.bz = fcmp olt <2 x float> %.sroa.018.0.copyload.i, %.sroa.067.097
  %i.ca = select <2 x i1> %i.bz, <2 x float> %.sroa.018.0.copyload.i, <2 x float> %.sroa.067.097 ; 2 uses
  %i.cb = fcmp olt float %.sroa.219.0.copyload.i, %.sroa.7.098
  %.sroa.speculated.i.i = select i1 %i.cb, float %.sroa.219.0.copyload.i, float %.sroa.7.098 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %i.cc, align 4, !noalias !361 ; 2 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !56, !noalias !361 ; 2 uses
  %i.cd = fcmp olt <2 x float> %.sroa.10.099, %.sroa.05.0.copyload.i
  %i.ce = select <2 x i1> %i.cd, <2 x float> %.sroa.05.0.copyload.i, <2 x float> %.sroa.10.099 ; 2 uses
  %i.cf = fcmp olt float %.sroa.14.0100, %.sroa.26.0.copyload.i
  %.sroa.speculated.i31.i = select i1 %i.cf, float %.sroa.26.0.copyload.i, float %.sroa.14.0100 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !149
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ci
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !52
  store i64 %i.ck, ptr %gep.1, align 8, !tbaa !52
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.ci ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.018.0.copyload.i.1 = load <2 x float>, ptr %i.cm, align 4, !noalias !361 ; 2 uses
  %.sroa.219.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.219.0.copyload.i.1 = load float, ptr %.sroa.219.0..sroa_idx.i.1, align 4, !tbaa !56, !noalias !361 ; 2 uses
  %i.cn = fcmp olt <2 x float> %.sroa.018.0.copyload.i.1, %i.ca
  %i.co = select <2 x i1> %i.cn, <2 x float> %.sroa.018.0.copyload.i.1, <2 x float> %i.ca ; 3 uses
  %i.cp = fcmp olt float %.sroa.219.0.copyload.i.1, %.sroa.speculated.i.i
  %.sroa.speculated.i.i.1 = select i1 %i.cp, float %.sroa.219.0.copyload.i.1, float %.sroa.speculated.i.i ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %.sroa.05.0.copyload.i.1 = load <2 x float>, ptr %i.cq, align 4, !noalias !361 ; 2 uses
  %.sroa.26.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %.sroa.26.0.copyload.i.1 = load float, ptr %.sroa.26.0..sroa_idx.i.1, align 4, !tbaa !56, !noalias !361 ; 2 uses
  %i.cr = fcmp olt <2 x float> %i.ce, %.sroa.05.0.copyload.i.1
  %i.cs = select <2 x i1> %i.cr, <2 x float> %.sroa.05.0.copyload.i.1, <2 x float> %i.ce ; 3 uses
  %i.ct = fcmp olt float %.sroa.speculated.i31.i, %.sroa.26.0.copyload.i.1
  %.sroa.speculated.i31.i.1 = select i1 %i.ct, float %.sroa.26.0.copyload.i.1, float %.sroa.speculated.i31.i ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !357

.split91.us:                                      ; preds = %scalar.ph, %vector.early.exit
  %.tr8489.us95.lcssa = phi i32 [ %i.ac, %vector.early.exit ], [ %.tr8489.us95, %scalar.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.ad, %vector.early.exit ], [ %i.ae, %scalar.ph ] ; 3 uses
  %i.cu = zext nneg i32 %4 to i64
  %i.cv = add nsw i64 %i.cu, -2                   ; 2 uses
  %i.cw = icmp ugt i32 %4, 2
  br i1 %i.cw, label %.lr.ph.i, label %"_ZN4pbrt12FindIntervalIZNS_12BVHAggregate8emitLBVHERPNS_12BVHBuildNodeERKSt6vectorINS_12BVHPrimitiveESaIS6_EEPNS_15MortonPrimitiveEiPiRS5_INS_9PrimitiveESaISE_EEPSt6atomicIiEiE3$_0EEmmRKT_.exit"

.lr.ph.i:                                         ; preds = %.split91.us, %.lr.ph.i
  %.02.i = phi i64 [ %.fr.i, %.lr.ph.i ], [ 1, %.split91.us ] ; 2 uses
  %.0151.i = phi i64 [ %i.dj, %.lr.ph.i ], [ %i.cv, %.split91.us ] ; 2 uses
  %i.cx = lshr i64 %.0151.i, 1                    ; 3 uses
  %i.cy = add i64 %i.cx, %.02.i                   ; 2 uses
  %sext.i = shl i64 %i.cy, 32
  %i.cz = ashr exact i64 %sext.i, 29
  %i.da = getelementptr inbounds i8, ptr %3, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !101
  %i.dd = xor i32 %i.dc, %i.p
  %i.de = and i32 %i.dd, %.lcssa
  %i.df = icmp eq i32 %i.de, 0                    ; 2 uses
  %i.dg = add i64 %i.cy, 1
  %i.dh = select i1 %i.df, i64 %i.dg, i64 %.02.i
  %.fr.i = freeze i64 %i.dh                       ; 3 uses
  %.neg.i = xor i64 %i.cx, -1
  %i.di = add nsw i64 %.0151.i, %.neg.i
  %i.dj = select i1 %i.df, i64 %i.di, i64 %i.cx   ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !358

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.dl = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.cv)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %spec.select.i = select i1 %.inv.i, i64 %..i.i, i64 0
  br label %"_ZN4pbrt12FindIntervalIZNS_12BVHAggregate8emitLBVHERPNS_12BVHBuildNodeERKSt6vectorINS_12BVHPrimitiveESaIS6_EEPNS_15MortonPrimitiveEiPiRS5_INS_9PrimitiveESaISE_EEPSt6atomicIiEiE3$_0EEmmRKT_.exit"

"_ZN4pbrt12FindIntervalIZNS_12BVHAggregate8emitLBVHERPNS_12BVHBuildNodeERKSt6vectorINS_12BVHPrimitiveESaIS6_EEPNS_15MortonPrimitiveEiPiRS5_INS_9PrimitiveESaISE_EEPSt6atomicIiEiE3$_0EEmmRKT_.exit": ; preds = %.split91.us, %._crit_edge.i
  %i.dm = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %.split91.us ] ; 2 uses
  %i.dn = trunc nuw nsw i64 %i.dm to i32          ; 2 uses
  %i.do = add nuw nsw i32 %i.dn, 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i32 %i.do, ptr %i.c, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i32 %i.j, ptr %i.d, align 4, !tbaa !53
  %.not.not = icmp samesign ugt i32 %i.j, %i.dn
  br i1 %.not.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %"_ZN4pbrt12FindIntervalIZNS_12BVHAggregate8emitLBVHERPNS_12BVHBuildNodeERKSt6vectorINS_12BVHPrimitiveESaIS6_EEPNS_15MortonPrimitiveEiPiRS5_INS_9PrimitiveESaISE_EEPSt6atomicIiEiE3$_0EEmmRKT_.exit"
  call void @_ZN4pbrt8LogFatalIJRA12_KcRA16_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 486, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(12) @.str.22, ptr noundef nonnull align 1 dereferenceable(16) @.str.23, ptr noundef nonnull align 1 dereferenceable(12) @.str.22, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(16) @.str.23, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #31
  unreachable

bb.e:                                             ; preds = %"_ZN4pbrt12FindIntervalIZNS_12BVHAggregate8emitLBVHERPNS_12BVHBuildNodeERKSt6vectorINS_12BVHPrimitiveESaIS6_EEPNS_15MortonPrimitiveEiPiRS5_INS_9PrimitiveESaISE_EEPSt6atomicIiEiE3$_0EEmmRKT_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.dp = shl nuw nsw i64 %i.dm, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !101
  %i.dt = and i32 %i.ds, %.lcssa                  ; 2 uses
  store i32 %i.dt, ptr %i.e, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.du = zext nneg i32 %i.do to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !101
  %i.dy = and i32 %i.dx, %.lcssa                  ; 2 uses
  store i32 %i.dy, ptr %i.f, align 4, !tbaa !53
  %.not = icmp eq i32 %i.dt, %i.dy
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4pbrt8LogFatalIJRA47_KcRA43_S1_S3_RjS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 488, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(47) @.str.25, ptr noundef nonnull align 1 dereferenceable(43) @.str.26, ptr noundef nonnull align 1 dereferenceable(47) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(43) @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #31
  unreachable

common.ret:                                       ; preds = %._crit_edge, %bb.g
  %.sink = phi ptr [ %i.br, %._crit_edge ], [ %i.ew, %bb.g ] ; 2 uses
  %.sink115 = phi i64 [ %wide.trip.count, %._crit_edge ], [ 1, %bb.g ]
  %common.ret.op = phi ptr [ %i.al, %._crit_edge ], [ %i.ed, %bb.g ]
  %i.dz = load i64, ptr %.sink, align 8, !tbaa !54
  %i.ea = add nsw i64 %i.dz, %.sink115
  store i64 %i.ea, ptr %.sink, align 8, !tbaa !54
  ret ptr %common.ret.op

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.eb = load i32, ptr %5, align 4, !tbaa !53
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %5, align 4, !tbaa !53
  %i.ed = load ptr, ptr %1, align 8, !tbaa !106   ; 10 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  store ptr %i.ee, ptr %1, align 8, !tbaa !106
  %i.ef = add nsw i32 %.tr8489.us95.lcssa, -1     ; 2 uses
  %i.eg = tail call noundef ptr @_ZN4pbrt12BVHAggregate8emitLBVHERPNS_12BVHBuildNodeERKSt6vectorINS_12BVHPrimitiveESaIS5_EEPNS_15MortonPrimitiveEiPiRS4_INS_9PrimitiveESaISD_EEPSt6atomicIiEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %3, i32 noundef %i.do, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %7, i32 noundef %i.ef) ; 5 uses
  %i.eh = sub nuw nsw i32 %4, %i.do
  %i.ei = tail call noundef ptr @_ZN4pbrt12BVHAggregate8emitLBVHERPNS_12BVHBuildNodeERKSt6vectorINS_12BVHPrimitiveESaIS5_EEPNS_15MortonPrimitiveEiPiRS4_INS_9PrimitiveESaISD_EEPSt6atomicIiEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.dv, i32 noundef %i.eh, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %7, i32 noundef %i.ef) ; 5 uses
  %i.ej = srem i32 %.tr8489.us95.lcssa, 3
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store ptr %i.eg, ptr %i.ek, align 8, !tbaa !106
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store ptr %i.ei, ptr %i.el, align 8, !tbaa !106
  %.sroa.020.0.copyload.i.i = load <2 x float>, ptr %i.eg, align 4, !noalias !362 ; 2 uses
  %.sroa.221.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.221.0.copyload.i.i = load float, ptr %.sroa.221.0..sroa_idx.i.i, align 4, !tbaa !56, !noalias !362 ; 2 uses
  %.sroa.018.0.copyload.i.i = load <2 x float>, ptr %i.ei, align 4, !noalias !362 ; 2 uses
  %.sroa.219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.219.0.copyload.i.i = load float, ptr %.sroa.219.0..sroa_idx.i.i, align 4, !tbaa !56, !noalias !362 ; 2 uses
  %i.em = fcmp olt <2 x float> %.sroa.018.0.copyload.i.i, %.sroa.020.0.copyload.i.i
  %i.en = select <2 x i1> %i.em, <2 x float> %.sroa.018.0.copyload.i.i, <2 x float> %.sroa.020.0.copyload.i.i
  %i.eo = fcmp olt float %.sroa.219.0.copyload.i.i, %.sroa.221.0.copyload.i.i
  %.sroa.speculated.i.i.i = select i1 %i.eo, float %.sroa.219.0.copyload.i.i, float %.sroa.221.0.copyload.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %.sroa.07.0.copyload.i.i = load <2 x float>, ptr %i.ep, align 4, !noalias !362 ; 2 uses
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %.sroa.28.0.copyload.i.i = load float, ptr %.sroa.28.0..sroa_idx.i.i, align 4, !tbaa !56, !noalias !362 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.eq, align 4, !noalias !362 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  %.sroa.26.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i, align 4, !tbaa !56, !noalias !362 ; 2 uses
  %i.er = fcmp olt <2 x float> %.sroa.07.0.copyload.i.i, %.sroa.05.0.copyload.i.i
  %i.es = select <2 x i1> %i.er, <2 x float> %.sroa.05.0.copyload.i.i, <2 x float> %.sroa.07.0.copyload.i.i
  %i.et = fcmp olt float %.sroa.28.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %.sroa.speculated.i31.i.i = select i1 %i.et, float %.sroa.26.0.copyload.i.i, float %.sroa.28.0.copyload.i.i
  store <2 x float> %i.en, ptr %i.ed, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store float %.sroa.speculated.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store <2 x float> %i.es, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  store float %.sroa.speculated.i31.i.i, ptr %.sroa.6.0..sroa_idx.i, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i32 %i.ej, ptr %i.eu, align 8, !tbaa !140
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store i32 0, ptr %i.ev, align 8, !tbaa !131
  %i.ew = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL13interiorNodesE)
  br label %common.ret
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA12_KcRA2_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !59, !alias.scope !365
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !61, !alias.scope !365
  store i8 0, ptr %i.a, align 8, !tbaa !62, !alias.scope !365
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA12_KcJRA2_S2_S4_RiS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 1 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA12_KcRA2_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !63, !alias.scope !365 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !62, !alias.scope !365
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA12_KcRA2_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !63
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA12_KcRA2_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA12_KcRA2_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !63    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA12_KcRA16_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !59, !alias.scope !368
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !61, !alias.scope !368
  store i8 0, ptr %i.a, align 8, !tbaa !62, !alias.scope !368
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA12_KcJRA16_S2_S4_RiS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA12_KcRA16_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !63, !alias.scope !368 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !62, !alias.scope !368
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA12_KcRA16_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !63
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA12_KcRA16_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA12_KcRA16_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !63    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA47_KcRA43_S1_S3_RjS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(47) %4, ptr noundef nonnull align 1 dereferenceable(43) %5, ptr noundef nonnull align 1 dereferenceable(47) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(43) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !59, !alias.scope !371
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !61, !alias.scope !371
  store i8 0, ptr %i.a, align 8, !tbaa !62, !alias.scope !371
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA47_KcJRA43_S2_S4_RjS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(47) %4, ptr noundef nonnull align 1 dereferenceable(43) %5, ptr noundef nonnull align 1 dereferenceable(47) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(43) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA47_KcRA43_S1_S3_RjS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !63, !alias.scope !371 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !62, !alias.scope !371
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.bi = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bi, ptr %4, align 8, !tbaa !37
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %4, i64 %i.bl
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !37
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bn, ptr %i.h, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bo, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !63 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !62
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bo, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bv) #32
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bw, ptr %4, align 8, !tbaa !37
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.by = getelementptr i8, ptr %i.bw, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %4, i64 %i.bz
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !37
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !221
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cc) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !214
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.cd)
          to label %bb.u unwind label %bb.b

bb.m:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ai
  br i1 %i.ci, label %.body26, label %.body26.sink.split

.body26.sink.split:                               ; preds = %bb.o, %bb.k
  %.sink = phi ptr [ %i.ar, %bb.k ], [ %i.ch, %bb.o ]
  %.pn19.ph = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.cg, %bb.o ]
  %i.cj = load i64, ptr %i.ai, align 8, !tbaa !62
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ck) #35
  br label %.body26

.body26:                                          ; preds = %.body26.sink.split, %bb.o, %bb.k
  %.pn19 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.cg, %bb.o ], [ %.pn19.ph, %.body26.sink.split ] ; 2 uses
  %i.cl = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.n
  br i1 %i.cm, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body26, %bb.h
  %.sink74 = phi ptr [ %i.ab, %bb.h ], [ %i.cl, %.body26 ]
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn19, %.body26 ]
  %i.cn = load i64, ptr %i.n, align 8, !tbaa !62
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %.sink74, i64 noundef %i.co) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body26, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn19, %.body26 ], [ %.pn19.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %i.cf, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.p ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.v

bb.r:                                             ; preds = %bb.d
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !61
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load ptr, ptr %3, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr @_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.b, align 8, !tbaa !214
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.70, i32 noundef 176, ptr noundef nonnull @.str.93, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #31
          to label %.noexc38 unwind label %bb.t

.noexc38:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.cu = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.cv = phi ptr [ @.str.72, %bb.c ], [ @.str.73, %bb.r ], [ @.str.71, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.70, i32 noundef %i.cu, ptr noundef nonnull %i.cv) #31
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cw = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.u
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !62
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.v:                                             ; preds = %bb.t, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %i.ct, %bb.t ]
  %i.db = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.v
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !62
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn24
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_aggregates.cpp() #26 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !56
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !56
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !56
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !56
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL24STATS_REGprimitiveMemoryE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_28__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL18STATS_REGtreeBytesE, ptr noundef nonnull @"_ZN4pbrt3$_78__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL24STATS_REGtotalPrimitivesE, ptr noundef nonnull @"_ZN4pbrt3$_88__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL22STATS_REGinteriorNodesE, ptr noundef nonnull @"_ZN4pbrt3$_98__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL18STATS_REGleafNodesE, ptr noundef nonnull @"_ZN4pbrt4$_108__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL24STATS_REGbvhNodesVisitedE, ptr noundef nonnull @"_ZN4pbrt4$_118__invokeERNS_16StatsAccumulatorE", ptr noundef nonnull @"_ZN4pbrt4$_128__invokeENS_6Point2IiEEiRNS_21PixelStatsAccumulatorE")
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL23STATS_REGkdNodesVisitedE, ptr noundef nonnull @"_ZN4pbrt4$_198__invokeERNS_16StatsAccumulatorE", ptr noundef nonnull @"_ZN4pbrt4$_208__invokeENS_6Point2IiEEiRNS_21PixelStatsAccumulatorE")
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1>, i1 immarg) #6

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #31 = { noreturn }
attributes #32 = { nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn nounwind }
attributes #35 = { builtin nounwind }
attributes #36 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !30}
!1 = distinct !{null}
!2 = distinct !{!2, !30}
!3 = distinct !{null, null, null, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN4pbrt9PrimitiveE", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN4pbrt9PrimitiveESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_ZTSNSt12_Vector_baseIN4pbrt9PrimitiveESaIS1_EE12_Vector_implE", !15, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseIN4pbrt9PrimitiveESaIS1_EE", !16, i64 0}
!18 = !{!"_ZTSSt6vectorIN4pbrt9PrimitiveESaIS1_EE", !17, i64 0}
!19 = !{!"_ZTSN4pbrt12BVHAggregate11SplitMethodE", !9, i64 0}
!20 = !{!"p1 _ZTSN4pbrt13LinearBVHNodeE", !13, i64 0}
!21 = !{!"_ZTSN4pbrt12BVHAggregateE", !10, i64 0, !18, i64 8, !19, i64 32, !20, i64 40}
!22 = !{!21, !10, i64 0}
!23 = !{!14, !14, i64 0}
!24 = !{!15, !14, i64 16}
!25 = !{!21, !19, i64 32}
!26 = !{!21, !20, i64 40}
!27 = !{!"p1 _ZTSN4pbrt12BVHPrimitiveE", !13, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN4pbrt12BVHPrimitiveESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !27, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!28, !27, i64 8}
!34 = !{!15, !14, i64 8}
!35 = !{!15, !14, i64 0}
!36 = !{!"vtable pointer", !8, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSN4pstd3pmr15memory_resourceE"}
!39 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !13, i64 0}
!40 = !{!"long", !9, i64 0}
!41 = !{!"p1 _ZTSN4pstd3pmr25monotonic_buffer_resource5blockE", !13, i64 0}
!42 = !{!"_ZTSN4pstd3pmr25monotonic_buffer_resourceE", !38, i64 0, !39, i64 8, !40, i64 16, !41, i64 24, !40, i64 32, !41, i64 40}
!43 = !{!42, !39, i64 8}
!44 = !{!42, !40, i64 16}
!45 = !{!"p1 _ZTSSt6vectorISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EESaIS6_EE", !13, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"_ZTSSt14_Function_base", !9, i64 0, !13, i64 16}
!48 = !{!"_ZTSSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEE", !47, i64 0, !13, i64 24}
!49 = !{!48, !13, i64 24}
!50 = !{!47, !13, i64 16}
!51 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEEE", !40, i64 0}
!52 = !{!51, !40, i64 0}
!53 = !{!10, !10, i64 0}
!54 = !{!40, !40, i64 0}
!55 = !{!"float", !9, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"p1 omnipotent char", !13, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !40, i64 8, !9, i64 16}
!61 = !{!60, !40, i64 8}
!62 = !{!9, !9, i64 0}
!63 = !{!60, !57, i64 0}
!64 = !{!"p1 _ZTSN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEE", !13, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!65, !64, i64 0}
!67 = !{!65, !64, i64 16}
!68 = !{!"p1 _ZTSSt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS2_EE", !13, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!69, !68, i64 0}
!71 = !{!69, !68, i64 8}
!72 = !{!"p1 _ZTSN4pstd3pmr25monotonic_buffer_resourceE", !13, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!69, !68, i64 16}
!75 = !{!42, !41, i64 40}
!76 = !{!"_ZTSN4pstd3pmr25monotonic_buffer_resource5blockE", !13, i64 0, !40, i64 8, !41, i64 16}
!77 = !{!76, !41, i64 16}
!78 = !{!76, !40, i64 8}
!79 = !{!42, !41, i64 24}
!80 = !{!65, !64, i64 8}
!81 = !{!13, !13, i64 0}
!82 = !{!"p1 _ZTSSt6atomicIiE", !13, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"p1 _ZTSN4pbrt15MortonPrimitiveE", !13, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseIN4pbrt15MortonPrimitiveESaIS1_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!86 = !{!85, !84, i64 0}
!87 = !{!"branch_weights", i32 4, i32 12}
!88 = !{!"p1 _ZTSSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EE", !13, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"p1 _ZTSSt6vectorIN4pbrt12BVHPrimitiveESaIS1_EE", !13, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"p1 _ZTSN4pbrt7Bounds3IfEE", !13, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"_ZTSSt8functionIFvlEE", !47, i64 0, !13, i64 24}
!95 = !{!94, !13, i64 24}
!96 = !{!"p1 _ZTSSt8functionIFvlEE", !13, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"_ZTSSt8functionIFvllEE", !47, i64 0, !13, i64 24}
!99 = !{!98, !13, i64 24}
!100 = !{!"_ZTSN4pbrt15MortonPrimitiveE", !10, i64 0, !10, i64 4}
!101 = !{!100, !10, i64 4}
!102 = !{!"p1 _ZTSN4pbrt11LBVHTreeletE", !13, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN4pbrt11LBVHTreeletESaIS1_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!103, !102, i64 0}
!105 = !{!"p1 _ZTSN4pbrt12BVHBuildNodeE", !13, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"p1 _ZTSSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE", !13, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!"p1 _ZTSN4pbrt12BVHAggregateE", !13, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!"p1 _ZTSSt6vectorIN4pbrt9PrimitiveESaIS1_EE", !13, i64 0}
!112 = !{!111, !111, i64 0}
!113 = !{!"any p2 pointer", !13, i64 0}
!114 = !{!"p2 _ZTSSt6atomicIiE", !113, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"p2 _ZTSN4pbrt12BVHBuildNodeE", !113, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!118 = !{!117, !116, i64 0}
!119 = !{!39, !39, i64 0}
!120 = !{!"_ZTSN4pstd4spanIN4pbrt12BVHPrimitiveEEE", !27, i64 0, !40, i64 8}
!121 = !{!120, !27, i64 0}
!122 = !{!120, !40, i64 8}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !55, i64 0, !55, i64 4, !55, i64 8}
!125 = !{!"_ZTSN4pbrt6Point3IfEE", !124, i64 0}
!126 = !{!"_ZTSN4pbrt7Bounds3IfEE", !125, i64 0, !125, i64 12}
!127 = !{!"_ZTSN4pbrt12BVHPrimitiveE", !40, i64 0, !126, i64 8}
!128 = !{!127, !40, i64 0}
!129 = !{!"_ZTSN4pbrt12BVHBuildNodeE", !126, i64 0, !9, i64 24, !10, i64 40, !10, i64 44, !10, i64 48}
!130 = !{!129, !10, i64 44}
!131 = !{!129, !10, i64 48}
!132 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!133 = !{!116, !116, i64 0}
!134 = !{!"p1 _ZTSN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEE", !13, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{!"p1 _ZTSN4pstd4spanIN4pbrt12BVHPrimitiveEEE", !13, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!"p1 int", !13, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!129, !10, i64 40}
!141 = !{!"short", !9, i64 0}
!142 = !{!"_ZTSN4pbrt13LinearBVHNodeE", !126, i64 0, !9, i64 24, !141, i64 28, !9, i64 30}
!143 = !{!142, !141, i64 28}
!144 = !{!142, !9, i64 30}
!145 = !{!"bool", !9, i64 0}
!146 = !{i8 0, i8 2}
!147 = !{}
!148 = !{!124, !55, i64 8}
!149 = !{!100, !10, i64 0}
!150 = !{!"_ZTSN4pstd8optionalIN4pbrt17ShapeIntersectionEEE", !9, i64 0, !145, i64 256}
!151 = !{!150, !145, i64 256}
end_hunk_1
