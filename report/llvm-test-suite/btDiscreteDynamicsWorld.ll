Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btDiscreteDynamicsWorld?download=true
inline.NumInlined: 1209
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf:bb.a
  %i.ak = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.al = insertelement <2 x float> poison, float %4, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = insertelement <2 x float> %i.t, float %i.d, i64 0
  %i.ao = fmul <2 x float> %i.am, %i.an
  %i.ap = insertelement <2 x float> poison, float %i.k, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.ao, %i.aq
  %i.as = fadd <2 x float> %i.ak, %i.ar
  %i.at = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.ag, %i.au
  %i.aw = fadd <2 x float> %i.as, %i.av
  %i.ax = fadd float %i.ad, %i.aj
  %.sroa.3.12.vec.insert.i53 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ax, i64 0
  store <2 x float> %i.aw, ptr %11, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i53, ptr %i.ay, align 8
  br i1 %9, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = load ptr, ptr %0, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not118 = icmp slt i32 %spec.store.select, 1
  br i1 %.not118, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bc = uitofp nneg i32 %spec.store.select to float
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  br i1 %9, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0119 = phi i32 [ 1, %.lr.ph ], [ %i.cf, %bb.d ] ; 3 uses
  %i.be = uitofp nneg i32 %.0119 to float
  %i.bf = fmul float %i.h, %i.be
  %i.bg = fdiv float %i.bf, %i.bc
  %i.bh = fadd float %6, %i.bg                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bi = load float, ptr %i.b, align 4, !tbaa !9
  %i.bj = fmul float %4, %i.bi
  %i.bk = call noundef float @cosf(float noundef %i.bh) #20, !tbaa !7 ; 2 uses
  %i.bl = fmul float %i.bk, %i.bj
  %i.bm = load float, ptr %i.l, align 4, !tbaa !9
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = call noundef float @sinf(float noundef %i.bh) #20, !tbaa !7 ; 2 uses
  %i.bp = fmul float %i.ah, %i.bo
  %i.bq = load <2 x float>, ptr %3, align 4, !tbaa !9
  %i.br = fmul <2 x float> %i.am, %i.bq
  %i.bs = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.br, %i.bt
  %i.bv = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.bw = fadd <2 x float> %i.bv, %i.bu
  %i.bx = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.ag, %i.by
  %i.ca = fadd <2 x float> %i.bw, %i.bz
  %i.cb = fadd float %i.bn, %i.bp
  %.sroa.3.12.vec.insert.i83 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %i.ca, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i83, ptr %i.bd, align 8
  %i.cc = load ptr, ptr %0, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.cf = add nuw i32 %.0119, 1
  %exitcond.not = icmp eq i32 %.0119, %spec.store.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.e:                                             ; preds = %._crit_edge
  %i.cg = load ptr, ptr %0, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  ret void
}

declare { <2 x float>, <2 x float> } @_ZNK21btConeTwistConstraint16GetPointForAngleEff(ptr noundef nonnull align 8 dereferenceable(640), float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %10) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %11 = alloca [74 x %class.btVector3], align 16  ; 3 uses
  %12 = alloca [74 x %class.btVector3], align 16  ; 3 uses
  %13 = alloca %class.btVector3, align 8          ; 7 uses
  %14 = alloca %class.btVector3, align 8          ; 7 uses
  %15 = alloca %class.btVector3, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.a = load float, ptr %2, align 4, !tbaa !9    ; 3 uses
  %i.b = fmul float %4, %i.a                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load float, ptr %1, align 4, !tbaa !9    ; 2 uses
  %i.f = fadd float %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !9  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !9  ; 2 uses
  %.sroa.0.0.vec.insert.i133 = insertelement <2 x float> poison, float %i.f, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.l = fsub float %i.e, %i.b
  %.sroa.0.0.vec.insert.i143 = insertelement <2 x float> poison, float %i.l, i64 0
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.n = fmul float %10, f0x3C8EFA35              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load float, ptr %3, align 4, !tbaa !9    ; 2 uses
  %i.r = load <2 x float>, ptr %i.c, align 4, !tbaa !9 ; 4 uses
  %i.s = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.t = fmul float %4, %i.s                      ; 2 uses
  %i.u = extractelement <2 x float> %i.r, i64 1
  %i.v = fmul float %4, %i.u                      ; 2 uses
  %i.w = fadd float %i.t, %i.h
  %i.x = fadd float %i.v, %i.j
  %.sroa.0.4.vec.insert.i134 = insertelement <2 x float> %.sroa.0.0.vec.insert.i133, float %i.w, i64 1
  %.sroa.3.12.vec.insert.i135 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i134, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i135, ptr %i.k, align 8
  %i.y = fsub float %i.h, %i.t
  %i.z = fsub float %i.j, %i.v
  %.sroa.0.4.vec.insert.i144 = insertelement <2 x float> %.sroa.0.0.vec.insert.i143, float %i.y, i64 1
  %.sroa.3.12.vec.insert.i145 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i144, ptr %14, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i145, ptr %i.m, align 8
  %i.aa = load <2 x float>, ptr %i.p, align 4, !tbaa !9 ; 3 uses
  %i.ab = fneg <2 x float> %i.aa
  %i.ac = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ad = insertelement <2 x float> %i.ac, float %i.a, i64 1
  %i.ae = fmul <2 x float> %i.ad, %i.ab
  %i.af = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ag = insertelement <2 x float> %i.af, float %i.q, i64 1
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.ag, <2 x float> %i.ae) ; 3 uses
  %i.ai = fneg float %i.q
  %i.aj = fmul float %i.s, %i.ai
  %i.ak = extractelement <2 x float> %i.aa, i64 0
  %i.al = tail call float @llvm.fmuladd.f32(float %i.a, float %i.ak, float %i.aj) ; 3 uses
  %i.am = fcmp ole float %5, f0xBFC90FDB          ; 2 uses
  %i.an = fadd float %i.n, f0xBFC90FDB            ; 2 uses
  %.0 = select i1 %i.am, float %i.an, float %5    ; 2 uses
  %i.ao = fcmp oge float %6, f0x3FC90FDB          ; 2 uses
  %i.ap = fsub float f0x3FC90FDB, %i.n            ; 2 uses
  %.0106 = select i1 %i.ao, float %i.ap, float %6 ; 2 uses
  %i.aq = fcmp ogt float %.0, %.0106
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1114 = phi i1 [ true, %bb.b ], [ %i.am, %bb.a ]
  %.1112 = phi i1 [ true, %bb.b ], [ %i.ao, %bb.a ] ; 3 uses
  %.1107 = phi float [ %i.ap, %bb.b ], [ %.0106, %bb.a ]
  %.1 = phi float [ %i.an, %bb.b ], [ %.0, %bb.a ] ; 2 uses
  %i.ar = fcmp ogt float %7, %8                   ; 3 uses
  %i.as = fadd float %i.n, f0xC0490FDB
  %i.at = fsub float %8, %7
  %i.au = fcmp oge float %i.at, f0x40C90FDB
  %.0118 = select i1 %i.ar, float f0x40490FDB, float %8
  %.0117 = select i1 %i.ar, float %i.as, float %7 ; 4 uses
  %.0110 = or i1 %i.ar, %i.au                     ; 2 uses
  %i.av = insertelement <2 x float> poison, float %.1107, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %.0118, i64 1
  %i.ax = insertelement <2 x float> poison, float %.1, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %.0117, i64 1
  %i.az = fsub <2 x float> %i.aw, %i.ay           ; 3 uses
  %i.ba = insertelement <2 x float> poison, float %i.n, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fdiv <2 x float> %i.az, %i.bb
  %i.bd = fptosi <2 x float> %i.bc to <2 x i32>
  %i.be = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bd, <2 x i32> splat (i32 1)) ; 3 uses
  %i.bf = uitofp nneg <2 x i32> %i.be to <2 x float> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = extractelement <2 x float> %i.az, i64 0
  %i.bi = fdiv float %i.bh, %i.bg
  %i.bj = extractelement <2 x float> %i.bf, i64 1
  %i.bk = extractelement <2 x float> %i.az, i64 1
  %i.bl = fdiv float %i.bk, %i.bj                 ; 3 uses
  %i.bm = extractelement <2 x i32> %i.be, i64 1   ; 3 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float %.0117) ; 2 uses
  %i.bp = extractelement <2 x i32> %i.be, i64 0   ; 2 uses
  %.not = icmp eq i32 %i.bm, 1
  %i.bq = zext nneg i32 %i.bm to i64
  br label %.peel.begin

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  ret void

.peel.begin:                                      ; preds = %bb.c, %.loopexit
  %.0109201 = phi i32 [ 0, %bb.c ], [ %i.ev, %.loopexit ] ; 5 uses
  %.0115200 = phi ptr [ %12, %bb.c ], [ %.0116199, %.loopexit ] ; 9 uses
  %.0116199 = phi ptr [ %11, %bb.c ], [ %.0115200, %.loopexit ] ; 4 uses
  %i.br = uitofp nneg i32 %.0109201 to float
  %i.bs = call float @llvm.fmuladd.f32(float %i.br, float %i.bi, float %.1) ; 2 uses
  %i.bt = call noundef float @sinf(float noundef %i.bs) #20, !tbaa !7
  %i.bu = call noundef float @cosf(float noundef %i.bs) #20, !tbaa !7
  %i.bv = fmul float %4, %i.bu                    ; 6 uses
  %.not129 = icmp eq i32 %.0109201, 0             ; 5 uses
  %i.bw = icmp eq i32 %.0109201, %i.bp            ; 2 uses
  %or.cond = and i1 %.1114, %i.bw                 ; 3 uses
  %brmerge = or i1 %.not129, %i.bw                ; 2 uses
  %i.bx = call noundef float @sinf(float noundef %i.bo) #20, !tbaa !7
  %i.by = call noundef float @cosf(float noundef %i.bo) #20, !tbaa !7
  %i.bz = load float, ptr %i.o, align 4, !tbaa !9
  %i.ca = load float, ptr %i.i, align 4, !tbaa !9
  %i.cb = load float, ptr %i.d, align 4, !tbaa !9
  %i.cc = load <2 x float>, ptr %3, align 4, !tbaa !9
  %i.cd = fmul float %4, %i.bt                    ; 4 uses
  %i.ce = fmul float %i.bv, %i.by                 ; 2 uses
  %i.cf = fmul float %i.bv, %i.bx                 ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.cc, %i.ch
  %i.cj = fmul float %i.ce, %i.bz
  %i.ck = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.cl = fadd <2 x float> %i.ci, %i.ck
  %i.cm = fadd float %i.cj, %i.ca
  %i.cn = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.ah, %i.co
  %i.cq = fmul float %i.al, %i.cf
  %i.cr = fadd <2 x float> %i.cp, %i.cl
  %i.cs = fadd float %i.cq, %i.cm
  %i.ct = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.cu = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cw = fmul <2 x float> %i.cv, %i.ct
  %i.cx = fmul float %i.cd, %i.cb
  %i.cy = fadd <2 x float> %i.cr, %i.cw
  %i.cz = fadd float %i.cs, %i.cx
  %.sroa.3.12.vec.insert.i175.peel = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cz, i64 0
  store <2 x float> %i.cy, ptr %.0115200, align 16
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.0115200, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i175.peel, ptr %.sroa.4.0..sroa_idx.peel, align 8, !tbaa !76
  %.not129.not = xor i1 %.not129, true
  %brmerge220 = or i1 %.1112, %.not129.not
  br i1 %brmerge220, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %.peel.begin
  %.0116199.mux = select i1 %.not129, ptr %14, ptr %.0116199
  %i.da = load ptr, ptr %0, align 8, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %.0116199.mux, ptr noundef nonnull align 4 dereferenceable(16) %.0115200, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %bb.e

bb.e:                                             ; preds = %.peel.begin, %.sink.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %.0115200, i64 16, i1 false), !tbaa.struct !88
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dd = load ptr, ptr %0, align 8, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %.0115200, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %brmerge.not = xor i1 %brmerge, true
  %brmerge209 = select i1 %.0110, i1 true, i1 %brmerge.not
  br i1 %brmerge209, label %.peel.next.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = load ptr, ptr %0, align 8, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %.0115200, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.g, %bb.h
  br i1 %.not, label %.peel.next.peel, label %.peel.next

.peel.next.peel:                                  ; preds = %.peel.next.preheader, %bb.t
  %i.dj = phi i64 [ 1, %.peel.next.preheader ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = uitofp nneg i32 %i.dk to float
  %i.dm = call float @llvm.fmuladd.f32(float %i.dl, float %i.bl, float %.0117) ; 2 uses
  %i.dn = call noundef float @sinf(float noundef %i.dm) #20, !tbaa !7
  %i.do = call noundef float @cosf(float noundef %i.dm) #20, !tbaa !7
  %i.dp = load float, ptr %i.o, align 4, !tbaa !9
  %i.dq = load float, ptr %i.i, align 4, !tbaa !9
  %i.dr = load float, ptr %i.d, align 4, !tbaa !9
  %i.ds = fmul float %i.cd, %i.dr
  %i.dt = load <2 x float>, ptr %3, align 4, !tbaa !9
  %16 = fmul float %i.bv, %i.do                   ; 2 uses
  %17 = fmul float %i.bv, %i.dn                   ; 2 uses
  %i.du = insertelement <2 x float> poison, float %16, i64 0
  %18 = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.dt, %18
  %19 = fmul float %16, %i.dp
  %i.dw = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.dx = fadd <2 x float> %i.dv, %i.dw
  %20 = fadd float %19, %i.dq
  %i.dy = insertelement <2 x float> poison, float %17, i64 0
  %21 = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x float> %i.ah, %21
  %23 = fmul float %i.al, %17
  %i.dz = fadd <2 x float> %22, %i.dx
  %i.ea = fadd float %23, %20
  %i.eb = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.ec = fmul <2 x float> %i.cv, %i.eb
  %i.ed = fadd <2 x float> %i.dz, %i.ec
  %i.ee = fadd float %i.ea, %i.ds
  %.sroa.3.12.vec.insert.i175.peel221 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ee, i64 0
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %.0115200, i64 %i.dj ; 7 uses
  store <2 x float> %i.ed, ptr %i.ef, align 16
  %.sroa.4.0..sroa_idx.peel222 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i175.peel221, ptr %.sroa.4.0..sroa_idx.peel222, align 8, !tbaa !76
  br i1 %.not129, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.peel.next.peel
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.0116199, i64 %i.dj
  br label %.sink.split210.peel

bb.j:                                             ; preds = %.peel.next.peel
  br i1 %.1112, label %.sink.split210.peel, label %bb.k

.sink.split210.peel:                              ; preds = %bb.j, %bb.i
  %.sink211.peel = phi ptr [ %i.eg, %bb.i ], [ %14, %bb.j ]
  %i.eh = load ptr, ptr %0, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %.sink211.peel, ptr noundef nonnull align 4 dereferenceable(16) %i.ef, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split210.peel, %bb.j
  %i.ek = getelementptr i8, ptr %i.ef, i64 -16
  %i.el = load ptr, ptr %0, align 8, !tbaa !12
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ek, ptr noundef nonnull align 4 dereferenceable(16) %i.ef, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eo = load ptr, ptr %0, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %i.ef, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.er = icmp eq i64 %i.dj, %i.bn                ; 2 uses
  br i1 %.0110, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %or.cond132.peel = select i1 %brmerge, i1 %i.er, i1 false
  br i1 %or.cond132.peel, label %.sink.split215.peel, label %.loopexit

bb.o:                                             ; preds = %bb.m
  br i1 %i.er, label %.sink.split215.peel, label %.loopexit

.sink.split215.peel:                              ; preds = %bb.o, %bb.n
  %.sink216.peel = phi ptr [ %15, %bb.o ], [ %1, %bb.n ]
  %i.es = load ptr, ptr %0, align 8, !tbaa !12
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %.sink216.peel, ptr noundef nonnull align 4 dereferenceable(16) %i.ef, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.o, %.sink.split215.peel
  %i.ev = add nuw i32 %.0109201, 1
  %exitcond204.not = icmp eq i32 %.0109201, %i.bp
  br i1 %exitcond204.not, label %bb.d, label %.peel.begin

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 1, %.peel.next.preheader ] ; 4 uses
  %i.ew = trunc nuw nsw i64 %indvars.iv to i32
  %i.ex = uitofp nneg i32 %i.ew to float
  %i.ey = call float @llvm.fmuladd.f32(float %i.ex, float %i.bl, float %.0117) ; 2 uses
  %i.ez = call noundef float @sinf(float noundef %i.ey) #20, !tbaa !7
  %i.fa = call noundef float @cosf(float noundef %i.ey) #20, !tbaa !7
  %i.fb = load float, ptr %i.o, align 4, !tbaa !9
  %i.fc = load float, ptr %i.i, align 4, !tbaa !9
  %i.fd = load float, ptr %i.d, align 4, !tbaa !9
  %i.fe = fmul float %i.cd, %i.fd
  %i.ff = load <2 x float>, ptr %3, align 4, !tbaa !9
  %24 = fmul float %i.bv, %i.fa                   ; 2 uses
  %25 = fmul float %i.bv, %i.ez                   ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %24, i64 0
  %26 = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = fmul <2 x float> %i.ff, %26
  %28 = fmul float %24, %i.fb
  %i.fh = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.fi = fadd <2 x float> %27, %i.fh
  %29 = fadd float %28, %i.fc
  %i.fj = insertelement <2 x float> poison, float %25, i64 0
  %30 = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = fmul <2 x float> %i.ah, %30
  %32 = fmul float %i.al, %25
  %i.fk = fadd <2 x float> %31, %i.fi
  %i.fl = fadd float %32, %29
  %i.fm = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.fn = fmul <2 x float> %i.cv, %i.fm
  %i.fo = fadd <2 x float> %i.fk, %i.fn
  %i.fp = fadd float %i.fl, %i.fe
  %.sroa.3.12.vec.insert.i175 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fp, i64 0
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.0115200, i64 %indvars.iv ; 6 uses
  store <2 x float> %i.fo, ptr %i.fq, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i175, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !76
  br i1 %.not129, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.peel.next
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %.0116199, i64 %indvars.iv
  br label %.sink.split210

bb.q:                                             ; preds = %.peel.next
  br i1 %.1112, label %.sink.split210, label %bb.r

.sink.split210:                                   ; preds = %bb.q, %bb.p
  %.sink211 = phi ptr [ %i.fr, %bb.p ], [ %14, %bb.q ]
  %i.fs = load ptr, ptr %0, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %.sink211, ptr noundef nonnull align 4 dereferenceable(16) %i.fq, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %bb.r

bb.r:                                             ; preds = %.sink.split210, %bb.q
  %i.fv = getelementptr i8, ptr %i.fq, i64 -16
  %i.fw = load ptr, ptr %0, align 8, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.fv, ptr noundef nonnull align 4 dereferenceable(16) %i.fq, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fz = load ptr, ptr %0, align 8, !tbaa !12
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %i.fq, ptr noundef nonnull align 4 dereferenceable(16) %9)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bq
  br i1 %exitcond.not, label %.peel.next.peel, label %.peel.next, !llvm.loop !285
}

declare noundef float @_ZNK23btGeneric6DofConstraint8getAngleEi(ptr noundef nonnull align 8 dereferenceable(1266), i32 noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 8          ; 5 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 8          ; 5 uses
  %15 = alloca %class.btVector3, align 8          ; 5 uses
  %16 = alloca %class.btVector3, align 8          ; 5 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %18 = alloca %class.btVector3, align 8          ; 5 uses
  %19 = alloca %class.btVector3, align 8          ; 5 uses
  %20 = alloca %class.btVector3, align 8          ; 5 uses
  %21 = alloca %class.btVector3, align 8          ; 5 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  %23 = alloca %class.btVector3, align 8          ; 5 uses
  %24 = alloca %class.btVector3, align 8          ; 5 uses
  %25 = alloca %class.btVector3, align 8          ; 5 uses
  %26 = alloca %class.btVector3, align 8          ; 5 uses
  %27 = alloca %class.btVector3, align 8          ; 5 uses
  %28 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.e = load <4 x float>, ptr %i.d, align 4
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !9
  %i.l = load float, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.m = load float, ptr %1, align 4, !tbaa !9    ; 2 uses
  %i.n = load float, ptr %i.b, align 4, !tbaa !9  ; 3 uses
  %i.o = load <2 x float>, ptr %3, align 4, !tbaa !9 ; 2 uses
  %i.p = load <2 x float>, ptr %i.h, align 4, !tbaa !9 ; 2 uses
  %i.q = insertelement <2 x float> poison, float %i.l, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 1, i32 3>
  %i.t = fmul <2 x float> %i.r, %i.s              ; 2 uses
  %i.u = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.v = insertelement <2 x float> poison, float %i.m, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.w, <2 x float> %i.t)
  %i.y = insertelement <2 x float> %i.f, float %i.k, i64 1 ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.n, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.aa, <2 x float> %i.x)
  %i.ac = load <2 x float>, ptr %i.g, align 4, !tbaa !9 ; 2 uses
  %i.ad = fadd <2 x float> %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 12 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 12 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !9
  %i.ai = fmul float %i.l, %i.ah                  ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.m, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 12 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !9 ; 2 uses
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.n, float %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 12 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !9 ; 2 uses
  %i.ap = fadd float %i.ao, %i.am
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  store <2 x float> %i.ad, ptr %5, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ar = load float, ptr %2, align 4, !tbaa !9   ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.at, <2 x float> %i.t)
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.aa, <2 x float> %i.au)
  %i.aw = fadd <2 x float> %i.ac, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ar, float %i.ai)
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.n, float %i.ax)
  %i.az = fadd float %i.ao, %i.ay
  %.sroa.3.12.vec.insert.i.i111 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  store <2 x float> %i.aw, ptr %6, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i111, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %0, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.be = load float, ptr %i.a, align 4, !tbaa !9 ; 2 uses
  %i.bf = load float, ptr %i.b, align 4, !tbaa !9 ; 3 uses
  %i.bg = load <2 x float>, ptr %3, align 4, !tbaa !9 ; 2 uses
  %i.bh = load <2 x float>, ptr %i.h, align 4, !tbaa !9 ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bl = fmul <2 x float> %i.bj, %i.bk
  %i.bm = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = load <2 x float>, ptr %i.g, align 4, !tbaa !9 ; 2 uses
  %i.bq = load float, ptr %i.ae, align 4, !tbaa !9 ; 2 uses
  %i.br = load float, ptr %i.ag, align 4, !tbaa !9 ; 2 uses
  %i.bs = fmul float %i.be, %i.br
  %i.bt = load float, ptr %i.ak, align 4, !tbaa !9 ; 2 uses
  %i.bu = load float, ptr %i.an, align 4, !tbaa !9 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.bx = load <2 x float>, ptr %i.c, align 4, !tbaa !9 ; 2 uses
  %i.by = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.bz = load <2 x float>, ptr %2, align 4, !tbaa !9 ; 4 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.ca, <2 x float> %i.bl)
  %i.cc = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.bo, <2 x float> %i.cb)
  %i.ce = fadd <2 x float> %i.bp, %i.cd
  %i.cf = extractelement <2 x float> %i.bz, i64 0 ; 2 uses
  %i.cg = call float @llvm.fmuladd.f32(float %i.bq, float %i.cf, float %i.bs)
  %i.ch = call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bf, float %i.cg)
  %i.ci = fadd float %i.bu, %i.ch
  %.sroa.3.12.vec.insert.i.i116 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  store <2 x float> %i.ce, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i116, ptr %i.bv, align 8
  %i.cj = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 0, i32 2>
  %i.ck = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = fmul <2 x float> %i.cj, %i.ck
  %i.cm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.ca, <2 x float> %i.cl)
  %i.cn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.bo, <2 x float> %i.cm)
  %i.co = fadd <2 x float> %i.bp, %i.cn
  %i.cp = extractelement <2 x float> %i.bz, i64 1
  %i.cq = fmul float %i.br, %i.cp
  %i.cr = call float @llvm.fmuladd.f32(float %i.bq, float %i.cf, float %i.cq)
  %i.cs = call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bf, float %i.cr)
  %i.ct = fadd float %i.bu, %i.cs
  %.sroa.3.12.vec.insert.i.i121 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ct, i64 0
  store <2 x float> %i.co, ptr %8, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i121, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %0, align 8, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
end_hunk_0
