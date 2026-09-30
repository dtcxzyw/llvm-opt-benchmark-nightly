Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSoftBody?download=true
inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody18initializeClustersEv:bb.a
  %i.it = load i32, ptr %i.is, align 8, !tbaa !38
  %i.iu = icmp slt i32 %i.it, %i.be
  br i1 %i.iu, label %bb.n, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i94 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i94, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.iv = sext i32 %i.be to i64
  %i.iw = shl nsw i64 %i.iv, 4
  %i.ix = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.iw, i32 noundef 16)
  %.pre.i95 = load i32, ptr %i.ip, align 4, !tbaa !37
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.o, %bb.n
  %i.iy = phi i32 [ %.pre.i95, %bb.o ], [ %i.iq, %bb.n ] ; 4 uses
  %.0.i.i.i96 = phi ptr [ %i.ix, %bb.o ], [ null, %bb.n ] ; 4 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %.lr.ph.i.i.i98, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i98:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 3 uses
  %wide.trip.count.i.i.i99 = zext nneg i32 %i.iy to i64 ; 2 uses
  %xtraiter247 = and i64 %wide.trip.count.i.i.i99, 1
  %i.jb = icmp eq i32 %i.iy, 1
  br i1 %i.jb, label %.epil.preheader246, label %.lr.ph.i.i.i98.new

.lr.ph.i.i.i98.new:                               ; preds = %.lr.ph.i.i.i98
  %unroll_iter250 = and i64 %wide.trip.count.i.i.i99, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i98.new
  %indvars.iv.i.i.i100 = phi i64 [ 0, %.lr.ph.i.i.i98.new ], [ %indvars.iv.next.i.i.i101.1, %bb.p ] ; 4 uses
  %niter251 = phi i64 [ 0, %.lr.ph.i.i.i98.new ], [ %niter251.next.1, %bb.p ]
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i100
  %i.jd = load ptr, ptr %i.ja, align 8, !tbaa !36
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %indvars.iv.i.i.i100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jc, ptr noundef nonnull align 4 dereferenceable(16) %i.je, i64 16, i1 false), !tbaa.struct !193
  %indvars.iv.next.i.i.i101 = or disjoint i64 %indvars.iv.i.i.i100, 1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i101
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !36
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %indvars.iv.next.i.i.i101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jf, ptr noundef nonnull align 4 dereferenceable(16) %i.jh, i64 16, i1 false), !tbaa.struct !193
  %indvars.iv.next.i.i.i101.1 = add nuw nsw i64 %indvars.iv.i.i.i100, 2 ; 2 uses
  %niter251.next.1 = add i64 %niter251, 2         ; 2 uses
  %niter251.ncmp.1 = icmp eq i64 %niter251.next.1, %unroll_iter250
  br i1 %niter251.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.p

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader246

.epil.preheader246:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i98
  %indvars.iv.i.i.i100.epil.init = phi i64 [ 0, %.lr.ph.i.i.i98 ], [ %indvars.iv.next.i.i.i101.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod249 = trunc i32 %i.iy to i1
  tail call void @llvm.assume(i1 %lcmp.mod249)
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i100.epil.init
  %i.jj = load ptr, ptr %i.ja, align 8, !tbaa !36
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %indvars.iv.i.i.i100.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ji, ptr noundef nonnull align 4 dereferenceable(16) %i.jk, i64 16, i1 false), !tbaa.struct !193
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader246, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !36 ; 2 uses
  %.not.i5.i.i97 = icmp eq ptr %i.jm, null
  br i1 %.not.i5.i.i97, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.jo = load i8, ptr %i.jn, align 8, !tbaa !35, !range !175, !noundef !176
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.r, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jm)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.r, %bb.q, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i8 1, ptr %i.jq, align 8, !tbaa !35
  store ptr %.0.i.i.i96, ptr %i.jl, align 8, !tbaa !36
  store i32 %i.be, ptr %i.is, align 8, !tbaa !38
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %._crit_edge164
  store i32 %i.be, ptr %i.ip, align 4, !tbaa !37
  br i1 %i.bf, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.js = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph170, %bb.s
  %indvars.iv184 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next185, %bb.s ] ; 3 uses
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !246
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv184
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !209 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load <2 x float>, ptr %i.jw, align 4, !tbaa !159
  %i.jy = load <2 x float>, ptr %i.dr, align 8, !tbaa !159
  %i.jz = fsub <2 x float> %i.jx, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !159
  %i.kc = load float, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !159
  %i.kd = fsub float %i.kb, %i.kc
  %.sroa.3.12.vec.insert.i105 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kd, i64 0
  %i.ke = load ptr, ptr %i.js, align 8, !tbaa !36
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.ke, i64 %indvars.iv184 ; 2 uses
  store <2 x float> %i.jz, ptr %i.kf, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i105, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !180
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.kg = load i32, ptr %i.ip, align 4, !tbaa !37
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp slt i64 %indvars.iv.next185, %i.kh
  br i1 %i.ki, label %bb.s, label %._crit_edge171

._crit_edge171:                                   ; preds = %bb.s, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.kj = load i32, ptr %i.a, align 4, !tbaa !146
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp slt i64 %indvars.iv.next188, %i.kk
  br i1 %i.kl, label %bb.b, label %._crit_edge175

._crit_edge175:                                   ; preds = %._crit_edge171, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody14updateClustersEv(ptr noundef nonnull align 8 dereferenceable(1496) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.btMatrix3x3, align 4         ; 11 uses
  %2 = alloca %class.btMatrix3x3, align 4         ; 7 uses
  %3 = alloca %class.btMatrix3x3, align 4         ; 4 uses
  %4 = alloca %struct.btDbvtAabbMm, align 16      ; 7 uses
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !146  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph352, label %._crit_edge353

.lr.ph352:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 524
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph352, %bb.s
  %i.p = phi i32 [ %i.b, %.lr.ph352 ], [ %i.on, %bb.s ]
  %indvars.iv379 = phi i64 [ 0, %.lr.ph352 ], [ %indvars.iv.next380, %bb.s ] ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv379
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !226  ; 49 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !245  ; 10 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.v = icmp sgt i32 %i.u, 0                     ; 3 uses
  br i1 %i.v, label %.lr.ph.i, label %.loopexit300

.lr.ph.i:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !246  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.u to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.aa = icmp eq i32 %i.u, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ba, %bb.d ]
  %i.ab = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.bb, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !209 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %6 = load float, ptr %i.ae, align 4, !tbaa !159
  %i.ag = load float, ptr %i.af, align 4, !tbaa !159 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ah = load float, ptr %7, align 4, !tbaa !159
  %i.ai = fmul float %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %8 = load float, ptr %i.aj, align 4, !tbaa !159
  %9 = insertelement <2 x float> poison, float %8, i64 0
  %10 = insertelement <2 x float> %9, float %6, i64 1
  %i.ak = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %10, %i.al
  %i.an = fadd float %.sroa.015.019.i, %i.ai
  %i.ao = fadd <2 x float> %i.ab, %i.am
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !209 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.i
  %11 = load float, ptr %i.ar, align 4, !tbaa !159
  %i.at = load float, ptr %i.as, align 4, !tbaa !159 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.au = load float, ptr %12, align 4, !tbaa !159
  %i.av = fmul float %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %13 = load float, ptr %i.aw, align 4, !tbaa !159
  %14 = insertelement <2 x float> poison, float %13, i64 0
  %15 = insertelement <2 x float> %14, float %11, i64 1
  %i.ax = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %15, %i.ay
  %i.ba = fadd float %i.an, %i.av                 ; 3 uses
  %i.bb = fadd <2 x float> %i.ao, %i.az           ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit300.loopexit.unr-lcssa, label %bb.d

.loopexit300.loopexit.unr-lcssa:                  ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit300, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit300.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.loopexit300.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ba, %.loopexit300.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.bb, %.loopexit300.loopexit.unr-lcssa ]
  %lcmp.mod439 = trunc i32 %i.u to i1
  call void @llvm.assume(i1 %lcmp.mod439)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i.epil.init
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !209 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.epil.init
  %16 = load float, ptr %i.be, align 4, !tbaa !159
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !159 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bh = load float, ptr %17, align 4, !tbaa !159
  %i.bi = fmul float %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %18 = load float, ptr %i.bj, align 4, !tbaa !159
  %19 = insertelement <2 x float> poison, float %18, i64 0
  %20 = insertelement <2 x float> %19, float %16, i64 1
  %i.bk = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %20, %i.bl
  %i.bn = fadd float %.sroa.015.019.i.epil.init, %i.bi
  %i.bo = fadd <2 x float> %.epil.init, %i.bm
  br label %.loopexit300

.loopexit300:                                     ; preds = %.epil.preheader, %.loopexit300.loopexit.unr-lcssa, %bb.c
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %bb.c ], [ %i.ba, %.loopexit300.loopexit.unr-lcssa ], [ %i.bn, %.epil.preheader ]
  %i.bp = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.bb, %.loopexit300.loopexit.unr-lcssa ], [ %i.bo, %.epil.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 164 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !159 ; 2 uses
  %i.bs = fmul float %.sroa.015.0.lcssa.i, %i.br  ; 2 uses
  %21 = insertelement <2 x float> poison, float %i.br, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x float> %i.bp, %22               ; 3 uses
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %24, float %i.bs, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> %23, float 0.000000e+00, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 264 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.bt, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !180
  %.promoted304 = load float, ptr %i.f, align 4
  %i.bu = insertelement <2 x float> <float poison, float 2.000000e-04>, float %.promoted304, i64 0 ; 2 uses
  br i1 %i.v, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %.loopexit300
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !246
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36
  %i.bz = load <2 x float>, ptr %i.g, align 4, !tbaa !159
  %.promoted322 = load float, ptr %i.h, align 4, !tbaa !159
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f
  store <2 x float> %40, ptr %i.g, align 4, !tbaa !159
  store float %i.hf, ptr %i.h, align 4, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.loopexit300
  %25 = phi <2 x float> [ %32, %._crit_edge ], [ %i.bu, %.loopexit300 ]
  %26 = phi <2 x float> [ %i.hi, %._crit_edge ], [ zeroinitializer, %.loopexit300 ]
  %i.ca = phi <2 x float> [ %43, %._crit_edge ], [ <float f0x399D4951, float f0x38D1B717>, %.loopexit300 ] ; 2 uses
  %27 = extractelement <2 x float> %i.ca, i64 1
  store float %27, ptr %1, align 4
  store <2 x float> %25, ptr %i.f, align 4
  store <2 x float> %26, ptr %i.e, align 4
  %28 = extractelement <2 x float> %i.ca, i64 0
  store float %28, ptr %.sroa.5297.0..sroa_idx, align 4
  call fastcc void @_ZL14PolarDecomposeRK11btMatrix3x3RS_S2_(ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %3)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 4 dereferenceable(48) %2, i64 16, i1 false), !tbaa.struct !193
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 112 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !193
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !193
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !159, !noalias !518 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 188
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 116
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.cp = load float, ptr %i.ce, align 8, !tbaa !159, !noalias !518 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 132 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !159, !noalias !518 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !159, !noalias !518 ; 3 uses
  %i.cu = load <2 x float>, ptr %i.cb, align 8, !tbaa !159, !noalias !518 ; 5 uses
  %i.cv = load <2 x float>, ptr %i.cl, align 4, !tbaa !159, !noalias !518 ; 5 uses
  %i.cw = load float, ptr %i.cm, align 8, !tbaa !159, !noalias !518
  %i.cx = load <2 x float>, ptr %i.cd, align 8, !tbaa !159, !noalias !518 ; 5 uses
  %i.cy = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = shufflevector <2 x float> %i.cu, <2 x float> %i.cx, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.db = fmul <2 x float> %i.cz, %i.da
  %i.dc = shufflevector <2 x float> %i.cu, <2 x float> %i.cx, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.dd = shufflevector <2 x float> %i.cu, <2 x float> %i.cv, <2 x i32> <i32 1, i32 2>
  %i.de = shufflevector <2 x float> %i.cv, <2 x float> %i.da, <2 x i32> <i32 0, i32 3>
  %i.df = fmul <2 x float> %i.dd, %i.de
  %i.dg = shufflevector <2 x float> %i.da, <2 x float> %i.cv, <2 x i32> <i32 0, i32 3>
  %i.dh = shufflevector <2 x float> %i.cv, <2 x float> %i.cx, <2 x i32> <i32 1, i32 3>
  %i.di = fmul <2 x float> %i.dg, %i.dh
  %i.dj = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dk = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dm = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 220
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %.sroa.7277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 228
  %.sroa.12281.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 244
  store float 0.000000e+00, ptr %.sroa.12281.16..sroa_idx, align 4, !tbaa !180
  %i.du = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.dv = load <3 x float>, ptr %i.cf, align 8, !tbaa !159, !noalias !518 ; 4 uses
  %i.dw = shufflevector <3 x float> %i.dv, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.dx = load <3 x float>, ptr %i.cj, align 8, !tbaa !159, !noalias !518 ; 4 uses
  %i.dy = shufflevector <3 x float> %i.dx, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.dz = load <2 x float>, ptr %i.ci, align 4, !tbaa !159, !noalias !518 ; 3 uses
  %i.ea = load <2 x float>, ptr %i.cn, align 4, !tbaa !159, !noalias !518 ; 3 uses
  %i.eb = shufflevector <3 x float> %i.dv, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ec = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.dc, <2 x float> %i.db)
  %i.ed = shufflevector <3 x float> %i.dx, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.ef = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ee, <2 x float> %i.ec) ; 3 uses
  %i.eg = shufflevector <3 x float> %i.dv, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.dc, <2 x float> %i.df)
  %i.ei = shufflevector <3 x float> %i.dx, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ej = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ee, <2 x float> %i.eh) ; 3 uses
  %i.ek = shufflevector <3 x float> %i.dv, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.dc, <2 x float> %i.di)
  %i.em = shufflevector <3 x float> %i.dx, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.en = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ee, <2 x float> %i.el) ; 3 uses
  %i.eo = shufflevector <2 x float> %i.cv, <2 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %i.ep = insertelement <3 x float> %i.eo, float %i.cw, i64 0
  %i.eq = insertelement <3 x float> %i.ep, float %i.ch, i64 1
  %i.er = insertelement <3 x float> poison, float %i.cr, i64 0
  %i.es = shufflevector <3 x float> %i.er, <3 x float> poison, <3 x i32> zeroinitializer
  %i.et = fmul <3 x float> %i.eq, %i.es
  %i.eu = insertelement <3 x float> poison, float %i.cp, i64 0
  %i.ev = shufflevector <3 x float> %i.eu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ew = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dw, <3 x float> %i.ev, <3 x float> %i.et)
  %i.ex = insertelement <3 x float> poison, float %i.ct, i64 0
  %i.ey = shufflevector <3 x float> %i.ex, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ez = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dy, <3 x float> %i.ey, <3 x float> %i.ew) ; 6 uses
  %i.fa = fmul <2 x float> %i.dj, %i.ej
  %i.fb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.ef, <2 x float> %i.fa)
  %i.fc = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.en, <2 x float> %i.fb) ; 3 uses
  %i.fe = fmul <2 x float> %i.ej, %i.dl
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.ef, <2 x float> %i.fe)
  %i.fg = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.en, <2 x float> %i.ff) ; 3 uses
  %i.fi = fmul <2 x float> %i.ej, %i.do
  %i.fj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.ef, <2 x float> %i.fi)
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.en, <2 x float> %i.fj) ; 3 uses
  %i.fl = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.fm = shufflevector <3 x float> %i.ez, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fn = fmul <2 x float> %i.fl, %i.fm
  %i.fo = shufflevector <3 x float> %i.ez, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.fo, <2 x float> %i.fn)
  %i.fq = shufflevector <3 x float> %i.ez, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.fq, <2 x float> %i.fp) ; 3 uses
  %i.fs = extractelement <3 x float> %i.ez, i64 2
  %i.ft = fmul float %i.cr, %i.fs
  %i.fu = extractelement <3 x float> %i.ez, i64 1
  %i.fv = call float @llvm.fmuladd.f32(float %i.cp, float %i.fu, float %i.ft)
  %i.fw = extractelement <3 x float> %i.ez, i64 0
  %i.fx = call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.fw, float %i.fv) ; 2 uses
  %i.fy = extractelement <2 x float> %i.fd, i64 0
  store float %i.fy, ptr %i.dt, align 8
  %i.fz = extractelement <2 x float> %i.fh, i64 0
  store float %i.fz, ptr %.sroa.5275.0..sroa_idx, align 4
  %i.ga = extractelement <2 x float> %i.fk, i64 0
  store float %i.ga, ptr %.sroa.6276.0..sroa_idx, align 8
  %i.gb = shufflevector <2 x float> %i.fd, <2 x float> %i.fh, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.gc = insertelement <4 x float> %i.gb, float 0.000000e+00, i64 0
  %i.gd = shufflevector <2 x float> %i.fk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.ge, ptr %.sroa.7277.0..sroa_idx, align 4
  store <2 x float> %i.fr, ptr %i.du, align 8
  %.sroa.16282.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  store float %i.fx, ptr %.sroa.16282.32..sroa_idx, align 8
  %.sroa.17283.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 260
  store float 0.000000e+00, ptr %.sroa.17283.32..sroa_idx, align 4, !tbaa !180
  %i.gf = getelementptr inbounds nuw i8, ptr %i.s, i64 352 ; 4 uses
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 360 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.s, i64 368 ; 2 uses
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 372
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 376 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gf, i8 0, i64 32, i1 false)
  br i1 %i.v, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %bb.e
  %i.gh = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !246
  %i.gj = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !43
  %wide.trip.count369 = zext nneg i32 %i.u to i64
  %i.gl = load <3 x float>, ptr %i.bt, align 8, !tbaa !159
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.gm = phi float [ %.promoted322, %.lr.ph ], [ %i.hf, %bb.f ]
  %29 = phi <2 x float> [ %i.bu, %.lr.ph ], [ %32, %bb.f ]
  %i.gn = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.hi, %bb.f ]
  %i.go = phi <2 x float> [ <float f0x399D4951, float f0x38D1B717>, %.lr.ph ], [ %43, %bb.f ]
  %i.gp = phi <2 x float> [ %i.bz, %.lr.ph ], [ %40, %bb.f ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !209 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !159
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 20
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !159
  %i.gw = fsub float %i.gv, %i.bs                 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !159
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !159 ; 3 uses
  %i.hc = load <2 x float>, ptr %i.gz, align 4, !tbaa !159 ; 3 uses
  %i.hd = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fmul <2 x float> %i.he, %i.hc
  %31 = fmul float %i.gw, %i.hb
  %32 = fadd <2 x float> %30, %29                 ; 2 uses
  %i.hf = fadd float %31, %i.gm                   ; 2 uses
  %33 = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hg = insertelement <2 x float> %33, float %i.gt, i64 1
  %34 = fsub <2 x float> %i.hg, %23               ; 3 uses
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %36 = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %37 = insertelement <2 x float> %36, float %i.hb, i64 1
  %38 = fmul <2 x float> %35, %37
  %i.hh = insertelement <2 x float> %36, float %i.hb, i64 0
  %39 = fmul <2 x float> %34, %i.hh
  %40 = fadd <2 x float> %38, %i.gp               ; 2 uses
  %41 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = fmul <2 x float> %41, %i.hc
  %i.hi = fadd <2 x float> %42, %i.gn             ; 2 uses
  %43 = fadd <2 x float> %39, %i.go               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f

bb.g:                                             ; preds = %.lr.ph326, %bb.g
  %indvars.iv366 = phi i64 [ 0, %.lr.ph326 ], [ %indvars.iv.next367, %bb.g ] ; 3 uses
  %i.hj = phi float [ 0.000000e+00, %.lr.ph326 ], [ %i.hz, %bb.g ]
  %i.hk = phi <2 x float> [ zeroinitializer, %.lr.ph326 ], [ %i.hy, %bb.g ]
  %i.hl = phi <3 x float> [ zeroinitializer, %.lr.ph326 ], [ %i.il, %bb.g ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv366
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !209 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv366
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !159 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 56
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !159
  %i.ht = fmul float %i.hq, %i.hs                 ; 3 uses
  %i.hu = load <2 x float>, ptr %i.ho, align 4, !tbaa !159
  %i.hv = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x float> %i.hw, %i.hu           ; 3 uses
  %i.hy = fadd <2 x float> %i.hx, %i.hk           ; 3 uses
  store <2 x float> %i.hy, ptr %i.gf, align 8, !tbaa !159
  %i.hz = fadd float %i.ht, %i.hj                 ; 3 uses
  store float %i.hz, ptr %.sroa.5255.0..sroa_idx, align 8, !tbaa !159
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.ib = load <3 x float>, ptr %i.ia, align 4, !tbaa !159
  %i.ic = fsub <3 x float> %i.ib, %i.gl           ; 2 uses
  %i.id = shufflevector <2 x float> %i.hx, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ie = insertelement <3 x float> %i.id, float %i.ht, i64 2
  %i.if = fneg <3 x float> %i.ie
  %i.ig = shufflevector <3 x float> %i.ic, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.ih = fmul <3 x float> %i.ig, %i.if
  %i.ii = shufflevector <2 x float> %i.hx, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.ij = insertelement <3 x float> %i.ii, float %i.ht, i64 1
  %i.ik = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ic, <3 x float> %i.ij, <3 x float> %i.ih)
  %i.il = fadd <3 x float> %i.hl, %i.ik           ; 5 uses
  %i.im = extractelement <3 x float> %i.il, i64 2 ; 2 uses
  %i.in = extractelement <3 x float> %i.il, i64 1 ; 2 uses
  %i.io = extractelement <3 x float> %i.il, i64 0 ; 2 uses
  store float %i.in, ptr %i.gg, align 8, !tbaa !159
  store float %i.im, ptr %.sroa.4247.0..sroa_idx, align 4, !tbaa !159
  store float %i.io, ptr %.sroa.5248.0..sroa_idx, align 8, !tbaa !159
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %._crit_edge327, label %bb.g

._crit_edge327:                                   ; preds = %bb.g, %bb.e
  %i.ip = phi float [ 0.000000e+00, %bb.e ], [ %i.io, %bb.g ]
  %i.iq = phi float [ 0.000000e+00, %bb.e ], [ %i.im, %bb.g ]
  %i.ir = phi float [ 0.000000e+00, %bb.e ], [ %i.in, %bb.g ]
  %i.is = phi float [ 0.000000e+00, %bb.e ], [ %i.hz, %bb.g ]
  %i.it = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.hy, %bb.g ]
  %i.iu = phi <3 x float> [ zeroinitializer, %bb.e ], [ %i.il, %bb.g ] ; 3 uses
  %i.iv = load float, ptr %i.bq, align 4, !tbaa !159 ; 2 uses
  %i.iw = fmul float %i.iv, %i.is
  %i.ix = getelementptr inbounds nuw i8, ptr %i.s, i64 396
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !519
  %i.iz = fsub float 1.000000e+00, %i.iy          ; 2 uses
  %i.ja = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul <2 x float> %i.it, %i.jb
  %i.jd = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fmul <2 x float> %i.jc, %i.je
  %i.jg = fmul float %i.iw, %i.iz
  %.sroa.3.12.vec.insert.i165 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jg, i64 0
  store <2 x float> %i.jf, ptr %i.gf, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i165, ptr %.sroa.5255.0..sroa_idx, align 8, !tbaa !180
  %i.jh = shufflevector <3 x float> %i.iu, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ji = fmul <2 x float> %i.fh, %i.jh
  %i.jj = extractelement <2 x float> %i.fr, i64 1
  %i.jk = fmul float %i.iq, %i.jj
  %i.jl = extractelement <2 x float> %i.fr, i64 0
  %i.jm = call float @llvm.fmuladd.f32(float %i.jl, float %i.ir, float %i.jk)
  %i.jn = call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.ip, float %i.jm)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.s, i64 400
  %i.jp = load float, ptr %i.jo, align 8, !tbaa !520
  %i.jq = fsub float 1.000000e+00, %i.jp          ; 2 uses
  %i.jr = shufflevector <3 x float> %i.iu, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.js = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.jr, <2 x float> %i.ji)
  %i.jt = shufflevector <3 x float> %i.iu, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ju = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.jt, <2 x float> %i.js)
  %i.jv = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x float> %i.ju, %i.jw
  %i.jy = fmul float %i.jq, %i.jn
  %.sroa.3.12.vec.insert.i175 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jy, i64 0
  store <2 x float> %i.jx, ptr %i.gg, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i175, ptr %.sroa.5248.0..sroa_idx, align 8, !tbaa !180
  %i.jz = getelementptr inbounds nuw i8, ptr %i.s, i64 280
  %i.ka = getelementptr inbounds nuw i8, ptr %i.s, i64 404 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jz, i8 0, i64 72, i1 false)
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !521
  %i.kc = fcmp ogt float %i.kb, 0.000000e+00
  br i1 %i.kc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge327
  %i.kd = load i32, ptr %i.t, align 4, !tbaa !245
  %i.ke = icmp sgt i32 %i.kd, 0
  br i1 %i.ke, label %.lr.ph331, label %.loopexit

.lr.ph331:                                        ; preds = %.preheader
  %i.kf = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.kh = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph331, %bb.h
  %indvars.iv371 = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next372, %bb.h ] ; 3 uses
  %i.ki = load ptr, ptr %i.kf, align 8, !tbaa !246
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv371
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !209 ; 2 uses
  %i.kl = load ptr, ptr %i.kg, align 8, !tbaa !36
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %indvars.iv371 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load float, ptr %i.ck, align 8, !tbaa !159
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kq = load float, ptr %i.co, align 8, !tbaa !159
  %i.kr = load float, ptr %i.ce, align 8, !tbaa !159
  %i.ks = load float, ptr %i.cq, align 4, !tbaa !159
  %i.kt = load float, ptr %i.cs, align 8, !tbaa !159
  %i.ku = load float, ptr %i.kh, align 8, !tbaa !159
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  %i.kw = load float, ptr %i.ka, align 4, !tbaa !521 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kk, i64 24 ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !159 ; 2 uses
  %i.kz = load float, ptr %i.km, align 4, !tbaa !159 ; 2 uses
  %i.la = load <2 x float>, ptr %i.cb, align 8, !tbaa !159 ; 2 uses
  %i.lb = load float, ptr %i.kn, align 4, !tbaa !159 ; 2 uses
  %i.lc = load float, ptr %i.kp, align 4, !tbaa !159 ; 2 uses
  %i.ld = load <2 x float>, ptr %i.cd, align 8, !tbaa !159 ; 2 uses
  %i.le = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = shufflevector <2 x float> %i.la, <2 x float> %i.ld, <2 x i32> <i32 1, i32 3>
  %i.lh = fmul <2 x float> %i.lf, %i.lg
  %i.li = shufflevector <2 x float> %i.la, <2 x float> %i.ld, <2 x i32> <i32 0, i32 2>
  %i.lj = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ll = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.li, <2 x float> %i.lk, <2 x float> %i.lh)
  %i.lm = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %i.kq, i64 1
  %i.lo = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lp = shufflevector <2 x float> %i.lo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.lp, <2 x float> %i.ll)
  %i.lr = load <2 x float>, ptr %i.cc, align 8, !tbaa !159
  %i.ls = fadd <2 x float> %i.lq, %i.lr
  %i.lt = fmul float %i.lb, %i.ks
  %i.lu = call float @llvm.fmuladd.f32(float %i.kr, float %i.kz, float %i.lt)
  %i.lv = call noundef float @llvm.fmuladd.f32(float %i.kt, float %i.lc, float %i.lu)
  %i.lw = fadd float %i.ku, %i.lv
  %i.lx = load <2 x float>, ptr %i.kv, align 4, !tbaa !159 ; 2 uses
  %i.ly = fsub <2 x float> %i.ls, %i.lx
  %i.lz = fsub float %i.lw, %i.ky
  %i.ma = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mc = fmul <2 x float> %i.mb, %i.ly
  %i.md = fmul float %i.kw, %i.lz
  %i.me = fadd <2 x float> %i.lx, %i.mc
  %i.mf = fadd float %i.ky, %i.md
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mf, i64 0
  store <2 x float> %i.me, ptr %i.kv, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.kx, align 8, !tbaa !180
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.mg = load i32, ptr %i.t, align 4, !tbaa !245
  %i.mh = sext i32 %i.mg to i64
  %i.mi = icmp slt i64 %indvars.iv.next372, %i.mh
  br i1 %i.mi, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.preheader, %._crit_edge327
  %i.mj = getelementptr inbounds nuw i8, ptr %i.s, i64 417
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !259, !range !175, !noundef !176
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.i, label %bb.r

bb.i:                                             ; preds = %.loopexit
  %i.mm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !246 ; 4 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !209
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load <4 x float>, ptr %i.mp, align 8    ; 6 uses
  %i.mr = icmp sgt i32 %i.u, 1
  br i1 %i.mr, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader, label %._crit_edge341

_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader:         ; preds = %bb.i
  %wide.trip.count377 = zext nneg i32 %i.u to i64
  %i.ms = add nsw i64 %wide.trip.count377, -1     ; 3 uses
  %xtraiter440 = and i64 %i.ms, 1
  %i.mt = icmp eq i32 %i.u, 2
  br i1 %i.mt, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.epil.preheader, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new

_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new:     ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader
  %unroll_iter449 = and i64 %i.ms, -2
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new
  %indvars.iv374 = phi i64 [ 1, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %indvars.iv.next375.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 3 uses
  %i.mu = phi <4 x float> [ %i.mq, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %i.nk, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %i.mv = phi <4 x float> [ %i.mq, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %i.nm, %_Z8btSetMinIfEvRT_RKS0_.exit.i ] ; 2 uses
  %niter450 = phi i64 [ 0, %_Z8btSetMinIfEvRT_RKS0_.exit.i.preheader.new ], [ %niter450.next.1, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
end_hunk_0
