Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gim_tri_collision?download=true
inline.NumInlined: 429
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN30GIM_TRIANGLE_CALCULATION_CACHE18triangle_collisionERK9btVector3S2_S2_fS2_S2_S2_fR25GIM_TRIANGLE_CONTACT_DATA:bb.a
bb.ac:                                            ; preds = %bb.ac, %.lr.ph22.i.i.new
  %indvars.iv25.i.i = phi i64 [ 0, %.lr.ph22.i.i.new ], [ %indvars.iv.next26.i.i.1, %bb.ac ] ; 4 uses
  %niter196 = phi i64 [ 0, %.lr.ph22.i.i.new ], [ %niter196.next.1, %bb.ac ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv25.i.i
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !4
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %i.mu
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %indvars.iv25.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mw, ptr noundef nonnull align 4 dereferenceable(16) %i.mv, i64 16, i1 false), !tbaa.struct !15
  %indvars.iv.next26.i.i = or disjoint i64 %indvars.iv25.i.i, 1 ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next26.i.i
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !4
  %i.mz = zext i32 %i.my to i64
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %i.mz
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %indvars.iv.next26.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nb, ptr noundef nonnull align 4 dereferenceable(16) %i.na, i64 16, i1 false), !tbaa.struct !15
  %indvars.iv.next26.i.i.1 = add nuw nsw i64 %indvars.iv25.i.i, 2 ; 2 uses
  %niter196.next.1 = add i64 %niter196, 2         ; 2 uses
  %niter196.ncmp.1 = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit.loopexit.unr-lcssa, label %bb.ac

_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit.loopexit.unr-lcssa: ; preds = %bb.ac
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod193.not, label %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit, label %.epil.preheader191

.epil.preheader191:                               ; preds = %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit.loopexit.unr-lcssa, %.lr.ph22.i.i
  %indvars.iv25.i.i.epil.init = phi i64 [ 0, %.lr.ph22.i.i ], [ %indvars.iv.next26.i.i.1, %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i32 %i.mr to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv25.i.i.epil.init
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !4
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %i.ne
  %i.ng = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %indvars.iv25.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ng, ptr noundef nonnull align 4 dereferenceable(16) %i.nf, i64 16, i1 false), !tbaa.struct !15
  br label %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit

_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit: ; preds = %.epil.preheader191, %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit.loopexit.unr-lcssa, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.al

bb.ad:                                            ; preds = %bb.u
  %i.nh = tail call noundef i32 @_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_(ptr noundef nonnull align 4 dereferenceable(1012) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.gc, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull %i.li) ; 2 uses
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %bb.am, label %.lr.ph.i.i131

.lr.ph.i.i131:                                    ; preds = %bb.ad
  %i.nj = load float, ptr %0, align 4, !tbaa !11
  %i.nk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.nk, ptr noundef nonnull align 4 dereferenceable(16) %i.gc, i64 16, i1 false)
  %i.nl = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 0, ptr %i.nl, align 4, !tbaa !18
  store float -1.000000e+03, ptr %9, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %wide.trip.count.i.i132 = zext i32 %i.nh to i64
  br label %bb.ae

.preheader.i.i139:                                ; preds = %bb.aj
  %.not23.i.i140 = icmp eq i32 %i.op, 0
  br i1 %.not23.i.i140, label %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146, label %.lr.ph22.i.i141

.lr.ph22.i.i141:                                  ; preds = %.preheader.i.i139
  %i.nm = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %wide.trip.count28.i.i142 = zext i32 %i.op to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count28.i.i142, 1
  %i.nn = icmp eq i32 %i.op, 1
  br i1 %i.nn, label %.epil.preheader, label %.lr.ph22.i.i141.new

.lr.ph22.i.i141.new:                              ; preds = %.lr.ph22.i.i141
  %unroll_iter = and i64 %wide.trip.count28.i.i142, 4294967294
  br label %bb.ak

bb.ae:                                            ; preds = %bb.aj, %.lr.ph.i.i131
  %i.no = phi float [ -1.000000e+03, %.lr.ph.i.i131 ], [ %i.oo, %bb.aj ] ; 5 uses
  %indvars.iv.i.i133 = phi i64 [ 0, %.lr.ph.i.i131 ], [ %indvars.iv.next.i.i137, %bb.aj ] ; 4 uses
  %i.np = phi i32 [ 0, %.lr.ph.i.i131 ], [ %i.op, %bb.aj ] ; 4 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %indvars.iv.i.i133 ; 3 uses
  %i.nr = load float, ptr %i.gc, align 4, !tbaa !17
  %i.ns = load float, ptr %i.nq, align 4, !tbaa !17
  %i.nt = load float, ptr %i.gd, align 4, !tbaa !17
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !17
  %i.nw = fmul float %i.nt, %i.nv
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.nr, float %i.ns, float %i.nw)
  %i.ny = load float, ptr %i.ha, align 4, !tbaa !17
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !17
  %i.ob = tail call float @llvm.fmuladd.f32(float %i.ny, float %i.oa, float %i.nx)
  %i.oc = load float, ptr %i.hz, align 4, !tbaa !17
  %i.od = fsub float %i.ob, %i.oc
  %i.oe = fsub float %i.nj, %i.od                 ; 5 uses
  %i.of = fcmp ult float %i.oe, 0.000000e+00
  br i1 %i.of, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.og = fcmp ogt float %i.oe, %i.no
  br i1 %i.og, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store float %i.oe, ptr %9, align 4, !tbaa !20
  %i.oh = trunc nuw i64 %indvars.iv.i.i133 to i32
  store i32 %i.oh, ptr %i.a, align 16, !tbaa !4
  br label %.sink.split.i.i134

bb.ah:                                            ; preds = %bb.af
  %i.oi = fadd float %i.oe, f0x34000000
  %i.oj = fcmp ult float %i.oi, %i.no
  br i1 %i.oj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ok = zext i32 %i.np to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ok
  %i.om = trunc nuw i64 %indvars.iv.i.i133 to i32
  store i32 %i.om, ptr %i.ol, align 4, !tbaa !4
  %i.on = add i32 %i.np, 1
  br label %.sink.split.i.i134

.sink.split.i.i134:                               ; preds = %bb.ai, %bb.ag
  %.sink.i.i135 = phi i32 [ 1, %bb.ag ], [ %i.on, %bb.ai ] ; 2 uses
  %.ph.i.i136 = phi float [ %i.oe, %bb.ag ], [ %i.no, %bb.ai ]
  store i32 %.sink.i.i135, ptr %i.nl, align 4, !tbaa !18
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i.i134, %bb.ah, %bb.ae
  %i.oo = phi float [ %i.no, %bb.ah ], [ %i.no, %bb.ae ], [ %.ph.i.i136, %.sink.split.i.i134 ]
  %i.op = phi i32 [ %i.np, %bb.ah ], [ %i.np, %bb.ae ], [ %.sink.i.i135, %.sink.split.i.i134 ] ; 6 uses
  %indvars.iv.next.i.i137 = add nuw nsw i64 %indvars.iv.i.i133, 1 ; 2 uses
  %exitcond.not.i.i138 = icmp eq i64 %indvars.iv.next.i.i137, %wide.trip.count.i.i132
  br i1 %exitcond.not.i.i138, label %.preheader.i.i139, label %bb.ae

bb.ak:                                            ; preds = %bb.ak, %.lr.ph22.i.i141.new
  %indvars.iv25.i.i143 = phi i64 [ 0, %.lr.ph22.i.i141.new ], [ %indvars.iv.next26.i.i144.1, %bb.ak ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph22.i.i141.new ], [ %niter.next.1, %bb.ak ]
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv25.i.i143
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !4
  %i.os = zext i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %i.os
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.nm, i64 %indvars.iv25.i.i143
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ou, ptr noundef nonnull align 4 dereferenceable(16) %i.ot, i64 16, i1 false), !tbaa.struct !15
  %indvars.iv.next26.i.i144 = or disjoint i64 %indvars.iv25.i.i143, 1 ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next26.i.i144
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !4
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %i.ox
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.nm, i64 %indvars.iv.next26.i.i144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oz, ptr noundef nonnull align 4 dereferenceable(16) %i.oy, i64 16, i1 false), !tbaa.struct !15
  %indvars.iv.next26.i.i144.1 = add nuw nsw i64 %indvars.iv25.i.i143, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146.loopexit.unr-lcssa, label %bb.ak

_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146.loopexit.unr-lcssa: ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146.loopexit.unr-lcssa, %.lr.ph22.i.i141
  %indvars.iv25.i.i143.epil.init = phi i64 [ 0, %.lr.ph22.i.i141 ], [ %indvars.iv.next26.i.i144.1, %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod190 = trunc i32 %i.op to i1
  tail call void @llvm.assume(i1 %lcmp.mod190)
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv25.i.i143.epil.init
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !4
  %i.pc = zext i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.li, i64 %i.pc
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.nm, i64 %indvars.iv25.i.i143.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pe, ptr noundef nonnull align 4 dereferenceable(16) %i.pd, i64 16, i1 false), !tbaa.struct !15
  br label %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146

_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146: ; preds = %.epil.preheader, %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146.loopexit.unr-lcssa, %.preheader.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.pf = load <2 x float>, ptr %i.nk, align 4, !tbaa !17
  %i.pg = fneg <2 x float> %i.pf
  store <2 x float> %i.pg, ptr %i.nk, align 4, !tbaa !17
  %i.ph = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !17
  %i.pj = fneg float %i.pi
  store float %i.pj, ptr %i.ph, align 4, !tbaa !17
  br label %bb.al

bb.al:                                            ; preds = %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146, %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit
  %i.pk = phi i32 [ %i.op, %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit146 ], [ %i.mr, %_ZN25GIM_TRIANGLE_CONTACT_DATA12merge_pointsERK9btVector4fPK9btVector3j.exit ]
  %i.pl = icmp ne i32 %i.pk, 0
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ad, %bb.v, %bb.q, %bb.o, %bb.g, %bb.e
  %.2 = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.q ], [ false, %bb.o ], [ false, %bb.v ], [ %i.pl, %bb.al ], [ false, %bb.ad ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef i32 @_ZN30GIM_TRIANGLE_CALCULATION_CACHE13clip_triangleERK9btVector4PK9btVector3S5_PS3_(ptr noundef nonnull align 4 dereferenceable(1012) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %class.btVector4, align 8           ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !17
  %i.c = load float, ptr %2, align 4, !tbaa !17   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.g = load float, ptr %1, align 4, !tbaa !17   ; 2 uses
  %i.h = load <2 x float>, ptr %i.d, align 4, !tbaa !17
  %i.i = load <2 x float>, ptr %i.e, align 4, !tbaa !17 ; 3 uses
  %i.j = fsub <2 x float> %i.h, %i.i              ; 3 uses
  %i.k = fsub float %i.b, %i.c                    ; 2 uses
  %i.l = load <2 x float>, ptr %i.f, align 4, !tbaa !17 ; 3 uses
  %i.m = fneg <2 x float> %i.l
  %i.n = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.o = insertelement <2 x float> %i.n, float %i.k, i64 1
  %i.p = fmul <2 x float> %i.o, %i.m
  %i.q = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.r = insertelement <2 x float> %i.q, float %i.g, i64 1
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.r, <2 x float> %i.p) ; 5 uses
  %6 = extractelement <2 x float> %i.s, i64 0     ; 3 uses
  store float %6, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.t = extractelement <2 x float> %i.s, i64 1   ; 3 uses
  store float %i.t, ptr %7, align 4, !tbaa !17
  %i.u = fneg float %i.g
  %i.v = extractelement <2 x float> %i.j, i64 0
  %i.w = fmul float %i.v, %i.u
  %i.x = extractelement <2 x float> %i.l, i64 0
  %i.y = tail call float @llvm.fmuladd.f32(float %i.k, float %i.x, float %i.w) ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store float %i.y, ptr %i.z, align 8, !tbaa !17
  %8 = fmul float %i.t, %i.t
  %i.aa = tail call float @llvm.fmuladd.f32(float %6, float %6, float %8)
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.aa) ; 3 uses
  %i.ac = fcmp ugt float %i.ab, 1.000000e-07
  br i1 %i.ac, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.ad = fmul float %i.ab, 5.000000e-01
  %i.ae = bitcast float %i.ab to i32
  %i.af = lshr i32 %i.ae, 1
  %i.ag = sub nsw i32 1597463007, %i.af
  %i.ah = bitcast i32 %i.ag to float              ; 3 uses
  %i.ai = fneg float %i.ah
  %i.aj = fmul float %i.ad, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ah, float 1.500000e+00)
  %i.al = fmul float %i.ak, %i.ah                 ; 3 uses
  %i.am = fcmp olt float %i.al, f0x7F7FFFFF
  br i1 %i.am, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.an = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.s, %i.ao            ; 2 uses
  store <2 x float> %i.ap, ptr %5, align 8, !tbaa !17
  %i.aq = fmul float %i.y, %i.al                  ; 2 uses
  store float %i.aq, ptr %i.z, align 8, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.ar = phi float [ %i.y, %bb.a ], [ %i.aq, %bb.c ], [ %i.y, %bb.b ]
  %i.as = phi <2 x float> [ %i.s, %bb.a ], [ %i.ap, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fmul <2 x float> %i.i, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  %i.au = extractelement <2 x float> %i.as, i64 0
  %i.av = tail call float @llvm.fmuladd.f32(float %i.c, float %i.au, float %i.at)
  %i.aw = extractelement <2 x float> %i.i, i64 1
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ar, float %i.av)
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store float %i.ax, ptr %i.ay, align 4, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.bc = call noundef i32 @_Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.az, ptr noundef nonnull align 4 dereferenceable(16) %i.ba, ptr noundef nonnull %i.bb) ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !17
  %i.bg = load float, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bi = load float, ptr %1, align 4, !tbaa !17  ; 2 uses
  %i.bj = load <2 x float>, ptr %i.bh, align 4, !tbaa !17
  %i.bk = load <2 x float>, ptr %i.d, align 4, !tbaa !17 ; 3 uses
  %i.bl = fsub <2 x float> %i.bj, %i.bk           ; 3 uses
  %i.bm = fsub float %i.bf, %i.bg                 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.f, align 4, !tbaa !17 ; 3 uses
  %i.bo = fneg <2 x float> %i.bn
  %i.bp = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bq = insertelement <2 x float> %i.bp, float %i.bm, i64 1
  %i.br = fmul <2 x float> %i.bq, %i.bo
  %i.bs = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = insertelement <2 x float> %i.bs, float %i.bi, i64 1
  %i.bu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bt, <2 x float> %i.br) ; 5 uses
  %9 = extractelement <2 x float> %i.bu, i64 0    ; 3 uses
  store float %9, ptr %5, align 8, !tbaa !17
  %i.bv = extractelement <2 x float> %i.bu, i64 1 ; 3 uses
  store float %i.bv, ptr %7, align 4, !tbaa !17
  %i.bw = fneg float %i.bi
  %i.bx = extractelement <2 x float> %i.bl, i64 0
  %i.by = fmul float %i.bx, %i.bw
  %i.bz = extractelement <2 x float> %i.bn, i64 0
  %i.ca = call float @llvm.fmuladd.f32(float %i.bm, float %i.bz, float %i.by) ; 6 uses
  store float %i.ca, ptr %i.z, align 8, !tbaa !17
  %10 = fmul float %i.bv, %i.bv
  %i.cb = call float @llvm.fmuladd.f32(float %9, float %9, float %10)
  %i.cc = call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.cb) ; 3 uses
  %i.cd = fcmp ugt float %i.cc, 1.000000e-07
  br i1 %i.cd, label %bb.e, label %.thread115

bb.e:                                             ; preds = %bb.d
  %i.ce = fmul float %i.cc, 5.000000e-01
  %i.cf = bitcast float %i.cc to i32
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = sub nsw i32 1597463007, %i.cg
  %i.ci = bitcast i32 %i.ch to float              ; 3 uses
  %i.cj = fneg float %i.ci
  %i.ck = fmul float %i.ce, %i.cj
  %i.cl = call float @llvm.fmuladd.f32(float %i.ck, float %i.ci, float 1.500000e+00)
  %i.cm = fmul float %i.cl, %i.ci                 ; 3 uses
  %i.cn = fcmp olt float %i.cm, f0x7F7FFFFF
  br i1 %i.cn, label %bb.f, label %.thread115

bb.f:                                             ; preds = %bb.e
  %i.co = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.bu, %i.cp           ; 2 uses
  store <2 x float> %i.cq, ptr %5, align 8, !tbaa !17
  %i.cr = fmul float %i.ca, %i.cm                 ; 2 uses
  store float %i.cr, ptr %i.z, align 8, !tbaa !17
  br label %.thread115

.thread115:                                       ; preds = %bb.d, %bb.f, %bb.e
  %i.cs = phi float [ %i.ca, %bb.d ], [ %i.cr, %bb.f ], [ %i.ca, %bb.e ]
  %i.ct = phi <2 x float> [ %i.bu, %bb.d ], [ %i.cq, %bb.f ], [ %i.bu, %bb.e ] ; 2 uses
  %shift128 = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop129 = fmul <2 x float> %i.bk, %shift128
  %i.cu = extractelement <2 x float> %foldExtExtBinop129, i64 0
  %i.cv = extractelement <2 x float> %i.ct, i64 0
  %i.cw = call float @llvm.fmuladd.f32(float %i.bg, float %i.cv, float %i.cu)
  %i.cx = extractelement <2 x float> %i.bk, i64 1
  %i.cy = call float @llvm.fmuladd.f32(float %i.cx, float %i.cs, float %i.cw)
  store float %i.cy, ptr %i.ay, align 4, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 2 uses
  %i.da = call noundef i32 @_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull %i.bb, i32 noundef %i.bc, ptr noundef nonnull %i.cz) ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.thread115
  %i.dc = load float, ptr %2, align 4, !tbaa !17
  %i.dd = load float, ptr %i.be, align 4, !tbaa !17 ; 2 uses
  %i.de = load float, ptr %1, align 4, !tbaa !17  ; 2 uses
  %i.df = load <2 x float>, ptr %i.e, align 4, !tbaa !17
  %i.dg = load <2 x float>, ptr %i.bh, align 4, !tbaa !17 ; 3 uses
  %i.dh = fsub <2 x float> %i.df, %i.dg           ; 3 uses
  %i.di = fsub float %i.dc, %i.dd                 ; 2 uses
  %i.dj = load <2 x float>, ptr %i.f, align 4, !tbaa !17 ; 3 uses
  %i.dk = fneg <2 x float> %i.dj
  %i.dl = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dm = insertelement <2 x float> %i.dl, float %i.di, i64 1
  %i.dn = fmul <2 x float> %i.dm, %i.dk
  %i.do = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dp = insertelement <2 x float> %i.do, float %i.de, i64 1
  %i.dq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dp, <2 x float> %i.dn) ; 5 uses
  %11 = extractelement <2 x float> %i.dq, i64 0   ; 3 uses
  store float %11, ptr %5, align 8, !tbaa !17
  %i.dr = extractelement <2 x float> %i.dq, i64 1 ; 3 uses
  store float %i.dr, ptr %7, align 4, !tbaa !17
  %i.ds = fneg float %i.de
  %i.dt = extractelement <2 x float> %i.dh, i64 0
  %i.du = fmul float %i.dt, %i.ds
  %i.dv = extractelement <2 x float> %i.dj, i64 0
  %i.dw = call float @llvm.fmuladd.f32(float %i.di, float %i.dv, float %i.du) ; 6 uses
  store float %i.dw, ptr %i.z, align 8, !tbaa !17
  %12 = fmul float %i.dr, %i.dr
  %i.dx = call float @llvm.fmuladd.f32(float %11, float %11, float %12)
  %i.dy = call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dx) ; 3 uses
  %i.dz = fcmp ugt float %i.dy, 1.000000e-07
  br i1 %i.dz, label %bb.h, label %.thread117

bb.h:                                             ; preds = %bb.g
  %i.ea = fmul float %i.dy, 5.000000e-01
  %i.eb = bitcast float %i.dy to i32
  %i.ec = lshr i32 %i.eb, 1
  %i.ed = sub nsw i32 1597463007, %i.ec
  %i.ee = bitcast i32 %i.ed to float              ; 3 uses
  %i.ef = fneg float %i.ee
  %i.eg = fmul float %i.ea, %i.ef
  %i.eh = call float @llvm.fmuladd.f32(float %i.eg, float %i.ee, float 1.500000e+00)
  %i.ei = fmul float %i.eh, %i.ee                 ; 3 uses
  %i.ej = fcmp olt float %i.ei, f0x7F7FFFFF
  br i1 %i.ej, label %bb.i, label %.thread117

bb.i:                                             ; preds = %bb.h
  %i.ek = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x float> %i.dq, %i.el           ; 2 uses
  store <2 x float> %i.em, ptr %5, align 8, !tbaa !17
  %i.en = fmul float %i.dw, %i.ei                 ; 2 uses
  store float %i.en, ptr %i.z, align 8, !tbaa !17
  br label %.thread117

.thread117:                                       ; preds = %bb.g, %bb.i, %bb.h
  %i.eo = phi float [ %i.dw, %bb.g ], [ %i.en, %bb.i ], [ %i.dw, %bb.h ]
  %i.ep = phi <2 x float> [ %i.dq, %bb.g ], [ %i.em, %bb.i ], [ %i.dq, %bb.h ] ; 2 uses
  %shift131 = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132 = fmul <2 x float> %i.dg, %shift131
  %i.eq = extractelement <2 x float> %foldExtExtBinop132, i64 0
  %i.er = extractelement <2 x float> %i.ep, i64 0
  %i.es = call float @llvm.fmuladd.f32(float %i.dd, float %i.er, float %i.eq)
  %i.et = extractelement <2 x float> %i.dg, i64 1
  %i.eu = call float @llvm.fmuladd.f32(float %i.et, float %i.eo, float %i.es)
  store float %i.eu, ptr %i.ay, align 4, !tbaa !17
  %i.ev = call noundef i32 @_Z26PLANE_CLIP_POLYGON_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_PKT_jPS6_T1_(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull %i.cz, i32 noundef %i.da, ptr noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %.thread115, %.thread, %.thread117
  %.0 = phi i32 [ %i.ev, %.thread117 ], [ 0, %.thread ], [ 0, %.thread115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %.0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef i32 @_Z27PLANE_CLIP_TRIANGLE_GENERICI9btVector39btVector422DISTANCE_PLANE_3D_FUNCEjRKT0_RKT_S8_S8_PS6_T1_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !17   ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !17
  %i.g = fmul float %i.d, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.a, float %i.b, float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !17 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !17
  %i.m = tail call float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !17 ; 2 uses
  %i.p = fsub float %i.m, %i.o                    ; 5 uses
  %i.q = fcmp ogt float %i.p, f0x34000000         ; 3 uses
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store float %i.b, ptr %4, align 4, !tbaa !17
  %i.r = load float, ptr %i.e, align 4, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.r, ptr %i.s, align 4, !tbaa !17
  %i.t = load float, ptr %i.k, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.t, ptr %i.u, align 4, !tbaa !17
  %.pre = load float, ptr %0, align 4, !tbaa !17
  %.pre45 = load float, ptr %i.c, align 4, !tbaa !17
  %.pre46 = load float, ptr %i.i, align 4, !tbaa !17
  %.pre47 = load float, ptr %i.n, align 4, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = phi float [ %i.o, %bb.a ], [ %.pre47, %bb.b ]
  %i.w = phi float [ %i.j, %bb.a ], [ %.pre46, %bb.b ]
  %i.x = phi float [ %i.d, %bb.a ], [ %.pre45, %bb.b ]
  %i.y = phi float [ %i.a, %bb.a ], [ %.pre, %bb.b ]
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]        ; 3 uses
  %i.z = load float, ptr %2, align 4, !tbaa !17   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !17
  %i.ac = fmul float %i.x, %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.y, float %i.z, float %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !17
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.w, float %i.af, float %i.ad)
  %i.ah = fsub float %i.ag, %i.v                  ; 5 uses
  %i.ai = fcmp ogt float %i.ah, f0x34000000       ; 2 uses
  %i.aj = fcmp ule float %i.p, f0x34000000
  %.not.i = xor i1 %i.aj, %i.ai
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = fneg float %i.p
  %i.al = fsub float %i.ah, %i.p
  %i.am = fdiv float %i.ak, %i.al                 ; 4 uses
  %i.an = fsub float 1.000000e+00, %i.am          ; 3 uses
  %i.ao = load float, ptr %1, align 4, !tbaa !17
  %i.ap = fmul float %i.z, %i.am
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.ap)
  %i.ar = zext nneg i32 %.0 to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ar ; 3 uses
  store float %i.aq, ptr %i.as, align 4, !tbaa !17
  %i.at = load float, ptr %i.e, align 4, !tbaa !17
  %i.au = load float, ptr %i.aa, align 4, !tbaa !17
  %i.av = fmul float %i.am, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.an, float %i.at, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.aw, ptr %i.ax, align 4, !tbaa !17
  %i.ay = load float, ptr %i.k, align 4, !tbaa !17
  %i.az = load float, ptr %i.ae, align 4, !tbaa !17
  %i.ba = fmul float %i.am, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ay, float %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.bb, ptr %i.bc, align 4, !tbaa !17
  %i.bd = add nuw nsw i32 %.0, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.bd, %bb.d ]  ; 3 uses
  br i1 %i.ai, label %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load float, ptr %2, align 4, !tbaa !17
  %i.bf = zext nneg i32 %.1 to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bf ; 3 uses
  store float %i.be, ptr %i.bg, align 4, !tbaa !17
  %i.bh = load float, ptr %i.aa, align 4, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store float %i.bh, ptr %i.bi, align 4, !tbaa !17
  %i.bj = load float, ptr %i.ae, align 4, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store float %i.bj, ptr %i.bk, align 4, !tbaa !17
  %i.bl = add nuw nsw i32 %.1, 1
  br label %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit

_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit: ; preds = %bb.e, %bb.f
  %.2 = phi i32 [ %.1, %bb.e ], [ %i.bl, %bb.f ]  ; 3 uses
  %i.bm = load float, ptr %0, align 4, !tbaa !17
  %i.bn = load float, ptr %3, align 4, !tbaa !17  ; 2 uses
  %i.bo = load float, ptr %i.c, align 4, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !17
  %i.br = fmul float %i.bo, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bn, float %i.br)
  %i.bt = load float, ptr %i.i, align 4, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !17
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bv, float %i.bs)
  %i.bx = load float, ptr %i.n, align 4, !tbaa !17
  %i.by = fsub float %i.bw, %i.bx                 ; 5 uses
  %i.bz = fcmp ogt float %i.by, f0x34000000       ; 2 uses
  %i.ca = fcmp ule float %i.ah, f0x34000000
  %.not.i31 = xor i1 %i.ca, %i.bz
  br i1 %.not.i31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit
  %i.cb = fneg float %i.ah
  %i.cc = fsub float %i.by, %i.ah
  %i.cd = fdiv float %i.cb, %i.cc                 ; 4 uses
  %i.ce = fsub float 1.000000e+00, %i.cd          ; 3 uses
  %i.cf = load float, ptr %2, align 4, !tbaa !17
  %i.cg = fmul float %i.bn, %i.cd
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cf, float %i.cg)
  %i.ci = zext nneg i32 %.2 to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ci ; 3 uses
  store float %i.ch, ptr %i.cj, align 4, !tbaa !17
  %i.ck = load float, ptr %i.aa, align 4, !tbaa !17
  %i.cl = load float, ptr %i.bp, align 4, !tbaa !17
  %i.cm = fmul float %i.cd, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ck, float %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !17
  %i.cp = load float, ptr %i.ae, align 4, !tbaa !17
  %i.cq = load float, ptr %i.bu, align 4, !tbaa !17
  %i.cr = fmul float %i.cd, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cp, float %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store float %i.cs, ptr %i.ct, align 4, !tbaa !17
  %i.cu = add nuw nsw i32 %.2, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit
  %.3 = phi i32 [ %.2, %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit ], [ %i.cu, %bb.g ] ; 3 uses
  br i1 %i.bz, label %_Z26PLANE_CLIP_POLYGON_COLLECTI9btVector3EvRKT_S3_ffPS1_Rj.exit32, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cv = load float, ptr %3, align 4, !tbaa !17
  %i.cw = zext nneg i32 %.3 to i64
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.cw ; 3 uses
end_hunk_0
