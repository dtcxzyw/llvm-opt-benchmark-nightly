Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_tonemap?download=true
inline.NumInlined: 80
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 29
begin_hunk_0_@process:bb.a
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !35 ; 2 uses
  %i.ia = load float, ptr %i.hx, align 4, !tbaa !35
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, %i.hz
  %i.ic = fadd reassoc nsz arcp contract afn float %i.hp, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !35
  %i.if = fmul reassoc nsz arcp contract afn float %i.ie, %i.hz
  %i.ig = fadd reassoc nsz arcp contract afn float %i.ht, %i.if
  %i.ih = load float, ptr %.0106125, align 4, !tbaa !35 ; 2 uses
  %i.ii = fpext reassoc nsz arcp contract afn float %i.ih to double
  %i.ij = fmul reassoc nsz arcp contract afn double %i.ii, 2.126000e-01
  %i.ik = getelementptr inbounds nuw i8, ptr %.0106125, i64 4 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !35
  %i.im = fpext reassoc nsz arcp contract afn float %i.il to double
  %i.in = fmul reassoc nsz arcp contract afn double %i.im, 7.152000e-01
  %i.io = fadd reassoc nsz arcp contract afn double %i.in, %i.ij
  %i.ip = getelementptr inbounds nuw i8, ptr %.0106125, i64 8 ; 2 uses
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !35
  %i.ir = fpext reassoc nsz arcp contract afn float %i.iq to double
  %i.is = fmul reassoc nsz arcp contract afn double %i.ir, 7.220000e-02
  %i.it = fadd reassoc nsz arcp contract afn double %i.io, %i.is ; 2 uses
  %i.iu = fptrunc reassoc nsz arcp contract afn double %i.it to float
  %i.iv = fcmp reassoc nsz arcp contract afn ole double %i.it, f0x3690000000000000
  %i.iw = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.iu)
  %i.ix = select i1 %i.iv, float f0xC15D0C55, float %i.iw
  %i.iy = fdiv reassoc nsz arcp contract afn float %i.ic, %i.ig ; 2 uses
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, %i.bv
  %i.ja = fsub reassoc nsz arcp contract afn float -1.000000e+00, %i.iy
  %i.jb = fadd reassoc nsz arcp contract afn float %i.ja, %i.iz
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %i.ix
  %i.jd = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.jc) ; 3 uses
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, %i.ih
  store float %i.je, ptr %.0105126, align 4, !tbaa !35
  %i.jf = load float, ptr %i.ik, align 4, !tbaa !35
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jd, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %.0105126, i64 4
  store float %i.jg, ptr %i.jh, align 4, !tbaa !35
  %i.ji = load float, ptr %i.ip, align 4, !tbaa !35
  %i.jj = fmul reassoc nsz arcp contract afn float %i.jd, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %.0105126, i64 8
  store float %i.jj, ptr %i.jk, align 4, !tbaa !35
  %i.jl = getelementptr inbounds nuw i8, ptr %.0106125, i64 12
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !35
  %i.jn = getelementptr inbounds nuw i8, ptr %.0105126, i64 12
  store float %i.jm, ptr %i.jn, align 4, !tbaa !35
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  %.rtmerge = add nuw nsw i32 %.0104127, 1        ; 2 uses
  %exitcond138.not.rtmerge = icmp eq i32 %.rtmerge, %i.h
  %.rtmerge155 = getelementptr inbounds [4 x i8], ptr %.0105126, i64 %i.br
  %.rtmerge154 = getelementptr inbounds [4 x i8], ptr %.0106125, i64 %i.br
  %.rtmerge153 = add nuw nsw i64 %.0107124, 1
  br i1 %exitcond138.not.rtmerge, label %._crit_edge130, label %bb.h, !llvm.loop !115
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN20PermutohedralLatticeILi3ELi2EEC2Emmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.3:
  store i64 %1, ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !45
  %i.b = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #21 ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znam(i64 noundef 64) #21 ; 5 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !44
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 36) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <8 x i32> <i32 1, i32 1, i32 1, i32 -3, i32 2, i32 2, i32 -2, i32 -2>, ptr %i.k, align 4, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 3, ptr %i.l, align 4, !tbaa !33
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, i8 -1, i64 12, i1 false), !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.m, align 8, !tbaa !47
  store <2 x float> <float f0x4013CD3B, float f0x3FAAAAAB>, ptr %i.b, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float f0x3F715BF0, ptr %i.n, align 4, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.o, align 8, !tbaa !48
  %i.p = load i64, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.q = uitofp reassoc nsz arcp contract afn i64 %3 to float
  %i.r = uitofp reassoc nsz arcp contract afn i64 %i.p to float
  %i.s = fdiv reassoc nsz arcp contract afn float %i.q, %i.r
  %i.t = fpext reassoc nsz arcp contract afn float %i.s to double ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn olt double %i.t, 1.000000e-01
  br i1 %i.u, label %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge.3
  %i.v = fmul reassoc nsz arcp contract afn double %i.t, 2.000000e-02
  %i.w = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.v)
  %i.x = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double 1.800000e+00, double %i.w)
  br label %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit

_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit: ; preds = %._crit_edge.3, %bb.a
  %i.y = phi double [ %i.x, %bb.a ], [ f0x3FCA323591D23FB1, %._crit_edge.3 ]
  %i.z = uitofp reassoc nsz arcp contract afn i64 %i.p to double
  %i.aa = fmul reassoc nsz arcp contract afn double %i.y, %i.z
  %i.ab = fptoui double %i.aa to i64
  %i.ac = shl i64 %i.p, 2
  %i.ad = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ab)
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !45  ; 4 uses
  %i.af = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ae, i64 80) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  %i.ai = or disjoint i64 %i.ah, 8
  %i.aj = select i1 %i.ag, i64 -1, i64 %i.ai
  %i.ak = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #21 ; 2 uses
  store i64 %i.ae, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.am = icmp eq i64 %i.ae, 0
  br i1 %i.am, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit
  %i.an = getelementptr inbounds [80 x i8], ptr %i.al, i64 %i.ae
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.ao = phi ptr [ %i.al, %bb.b ], [ %i.at, %bb.c ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %i.aq, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.ar, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 80 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.an
  br i1 %i.au, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %_ZN20PermutohedralLatticeILi3ELi2EE20estimatedHashEntriesEmm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.al, ptr %i.av, align 8, !tbaa !51
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %.not52 = icmp eq i64 %i.aw, 0
  br i1 %.not52, label %._crit_edge51, label %.lr.ph50

._crit_edge51:                                    ; preds = %.lr.ph50, %.loopexit
  ret void

.lr.ph50:                                         ; preds = %.loopexit, %.lr.ph50
  %i.ax = phi i64 [ %i.bc, %.lr.ph50 ], [ %i.aw, %.loopexit ]
  %.048 = phi i64 [ %i.bb, %.lr.ph50 ], [ 0, %.loopexit ] ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %i.ay, i64 %.048
  %i.ba = udiv i64 %i.ad, %i.ax
  tail call void @_ZN22HashTablePermutohedralILi3ELi2EE7setSizeEm(ptr noundef nonnull align 8 dereferenceable(80) %i.az, i64 noundef %i.ba)
  %i.bb = add nuw i64 %.048, 1                    ; 2 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.bd = icmp ult i64 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph50, label %._crit_edge51, !llvm.loop !125
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK20PermutohedralLatticeILi3ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 {
.lr.ph:
  %i.a = alloca [5 x float], align 16             ; 15 uses
  %5 = alloca %"struct.HashTablePermutohedral<3, 2>::Key", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !35 ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 2.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !35 ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %i.j
  %i.n = load float, ptr %1, align 4, !tbaa !35   ; 2 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !35 ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %i.n
  %i.q = fmul reassoc nsz arcp contract afn float %i.i, 3.000000e+00
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.l
  %i.s = fmul reassoc nsz arcp contract afn float %i.n, 2.000000e+00
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.o
  %i.u = insertelement <2 x float> poison, float %i.c, i64 0
  %i.v = insertelement <2 x float> poison, float %i.g, i64 0
  %i.w = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.u
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %i.x, <float 4.000000e+00, float -3.000000e+00> ; 4 uses
  %i.z = extractelement <2 x float> %i.y, i64 1
  %i.aa = fsub reassoc nsz arcp contract afn float %i.z, %i.m
  %i.ab = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.aa, i64 0
  %i.ac = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.ab ; 7 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ae = extractelement <2 x float> %i.ac, i64 0
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.p
  %i.ag = fadd reassoc nsz arcp contract afn float %i.r, %i.af ; 4 uses
  %i.ah = fadd reassoc nsz arcp contract afn float %i.t, %i.ag ; 2 uses
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ag, i64 1 ; 5 uses
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 2.500000e-01) ; 2 uses
  %i.al = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ak)
  %i.am = fmul reassoc nsz arcp contract afn <2 x float> %i.al, splat (float 4.000000e+00) ; 2 uses
  %i.an = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.ak)
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float 4.000000e+00) ; 2 uses
  %i.ap = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.aj
  %i.aq = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ao
  %i.ar = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ap, %i.aq
  %i.as = select <2 x i1> %i.ar, <2 x float> %i.am, <2 x float> %i.ao
  %i.at = fptosi <2 x float> %i.as to <2 x i32>   ; 3 uses
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.ac, splat (float 2.500000e-01) ; 2 uses
  %i.av = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.au)
  %i.aw = fmul reassoc nsz arcp contract afn <2 x float> %i.av, splat (float 4.000000e+00) ; 2 uses
  %i.ax = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.au)
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.ax, splat (float 4.000000e+00) ; 2 uses
  %i.az = fsub reassoc nsz arcp contract afn <2 x float> %i.aw, %i.ac
  %i.ba = fsub reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ay
  %i.bb = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.az, %i.ba
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.aw, <2 x float> %i.ay
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.be = fptosi <4 x float> %i.bd to <4 x i32>   ; 6 uses
  %i.bf = extractelement <2 x i32> %i.at, i64 1
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nsz arcp contract afn float %i.ag, %i.bg
  %i.bi = sitofp reassoc nsz arcp contract afn <2 x i32> %i.at to <2 x float> ; 2 uses
  %i.bj = extractelement <4 x i32> %i.be, i64 1
  %i.bk = sitofp reassoc nsz arcp contract afn i32 %i.bj to float
  %i.bl = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.bi ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.bn = shufflevector <2 x float> %i.ac, <2 x float> %i.aj, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.bo = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bp = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.bo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bs = fsub reassoc nsz arcp contract afn <4 x float> %i.bn, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 0
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.bh ; 2 uses
  %not. = xor i1 %i.bu, true
  %i.bv = sitofp reassoc nsz arcp contract afn <4 x i32> %i.be to <4 x float>
  %i.bw = sitofp <4 x i32> %i.be to <4 x float>
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = fsub reassoc nsz arcp contract afn <4 x float> %i.ad, %i.bv ; 2 uses
  %i.bz = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ca = fsub reassoc nsz arcp contract afn <4 x float> %i.bz, %i.bx
  %i.cb = fcmp reassoc nsz arcp contract afn uge <4 x float> %i.bm, %i.by ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bm, %i.by
  %i.cd = shufflevector <4 x i1> %i.cc, <4 x i1> %i.cb, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ce = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bs, %i.ca ; 2 uses
  %i.cf = shufflevector <4 x i1> %i.ce, <4 x i1> %i.cb, <4 x i32> <i32 1, i32 poison, i32 poison, i32 5>
  %i.cg = insertelement <4 x i1> %i.cf, i1 %i.bu, i64 1 ; 2 uses
  %i.ch = xor <4 x i1> %i.cg, <i1 true, i1 false, i1 poison, i1 false>
  %i.ci = shufflevector <4 x i1> %i.ch, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.cj = select <4 x i1> %i.ci, <4 x i32> splat (i32 1), <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.ck = insertelement <4 x i1> %i.cg, i1 %not., i64 2
  %i.cl = select <4 x i1> %i.ck, <4 x i32> <i32 1, i32 2, i32 1, i32 2>, <4 x i32> <i32 2, i32 1, i32 0, i32 1>
  %i.cm = select <4 x i1> %i.cd, <4 x i32> %i.cj, <4 x i32> %i.cl
  %i.cn = xor <4 x i1> %i.ce, <i1 true, i1 false, i1 false, i1 false>
  %i.co = zext <4 x i1> %i.cn to <4 x i32>
  %i.cp = add nuw nsw <4 x i32> %i.cm, %i.co      ; 5 uses
  %i.cq = shufflevector <2 x i32> %i.at, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cr = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cr) ; 3 uses
  %i.ct = sdiv i32 %i.cs, 4                       ; 6 uses
  %i.cu = icmp sgt i32 %i.cs, 3
  br i1 %i.cu, label %.preheader107, label %bb.a

.preheader107:                                    ; preds = %.lr.ph
  %i.cv = insertelement <2 x i32> <i32 4, i32 poison>, i32 %i.ct, i64 1
  %i.cw = insertelement <2 x i32> <i32 poison, i32 4>, i32 %i.ct, i64 0
  %i.cx = sub nsw <2 x i32> %i.cv, %i.cw          ; 2 uses
  %i.cy = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 1> ; 2 uses
  %i.cz = add nsw <4 x i32> %i.cy, splat (i32 -4)
  %i.da = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.db = icmp slt <4 x i32> %i.cp, %i.da         ; 2 uses
  %i.dc = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %i.dd = shufflevector <4 x i32> %i.dc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.de = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = select <4 x i1> %i.db, <4 x i32> %i.dd, <4 x i32> %i.de
  %i.dg = select <4 x i1> %i.db, <4 x i32> %i.cy, <4 x i32> %i.cz
  %i.dh = add nsw <4 x i32> %i.df, %i.cp
  br label %.loopexit

bb.a:                                             ; preds = %.lr.ph
  %i.di = icmp slt i32 %i.cs, -3
  %i.dj = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 1> ; 3 uses
  br i1 %i.di, label %.preheader108, label %.loopexit

.preheader108:                                    ; preds = %bb.a
  %i.dk = insertelement <2 x i32> <i32 0, i32 poison>, i32 %i.ct, i64 1
  %i.dl = insertelement <2 x i32> <i32 poison, i32 -4>, i32 %i.ct, i64 0
  %i.dm = sub nsw <2 x i32> %i.dk, %i.dl          ; 2 uses
  %i.dn = add nsw <4 x i32> %i.dj, splat (i32 4)
  %i.do = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.dp = icmp slt <4 x i32> %i.cp, %i.do         ; 2 uses
  %i.dq = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dr = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dt = select <4 x i1> %i.dp, <4 x i32> %i.dq, <4 x i32> %i.ds
  %i.du = select <4 x i1> %i.dp, <4 x i32> %i.dn, <4 x i32> %i.dj
  %i.dv = add nsw <4 x i32> %i.dt, %i.cp
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader108, %.preheader107, %bb.a
  %i.dw = phi <4 x i32> [ %i.dh, %.preheader107 ], [ %i.dv, %.preheader108 ], [ %i.cp, %bb.a ] ; 4 uses
  %i.dx = phi <4 x i32> [ %i.dg, %.preheader107 ], [ %i.du, %.preheader108 ], [ %i.dj, %bb.a ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.dy = extractelement <4 x i32> %i.dw, i64 1   ; 3 uses
  %i.dz = sub nsw i32 3, %i.dy
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ea ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !35
  %i.ed = sub nsw i32 4, %i.dy
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ee ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !35
  %i.eh = extractelement <4 x i32> %i.dw, i64 2   ; 3 uses
  %i.ei = sub nsw i32 3, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ej ; 2 uses
  %i.el = sub nsw i32 4, %i.eh
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.em ; 2 uses
  %i.eo = extractelement <4 x i32> %i.dw, i64 3   ; 3 uses
  %i.ep = sub nsw i32 3, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eq ; 2 uses
  %i.es = sub nsw i32 4, %i.eo
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.et ; 2 uses
  %i.ev = sitofp reassoc nsz arcp contract afn <4 x i32> %i.dx to <4 x float>
  %6 = shufflevector <2 x float> %i.y, <2 x float> %i.ac, <4 x i32> <i32 1, i32 poison, i32 poison, i32 2>
  %i.ew = insertelement <4 x float> %6, float %i.ah, i64 1
  %i.ex = insertelement <4 x float> %i.ew, float %i.ag, i64 2
  %i.ey = fsub reassoc nsz arcp contract afn <4 x float> %i.ex, %i.ev ; 4 uses
  %i.ez = extractelement <4 x float> %i.ey, i64 1
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ez, 2.500000e-01 ; 2 uses
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.ec
  store float %i.fb, ptr %i.eb, align 4, !tbaa !35
  %i.fc = fsub reassoc nsz arcp contract afn float %i.eg, %i.fa
  store float %i.fc, ptr %i.ef, align 4, !tbaa !35
  %i.fd = extractelement <4 x float> %i.ey, i64 2
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, 2.500000e-01 ; 2 uses
  %i.ff = load float, ptr %i.ek, align 4, !tbaa !35
  %i.fg = fadd reassoc nsz arcp contract afn float %i.fe, %i.ff
  store float %i.fg, ptr %i.ek, align 4, !tbaa !35
  %i.fh = load float, ptr %i.en, align 4, !tbaa !35
  %i.fi = fsub reassoc nsz arcp contract afn float %i.fh, %i.fe
  store float %i.fi, ptr %i.en, align 4, !tbaa !35
  %i.fj = extractelement <4 x float> %i.ey, i64 3
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, 2.500000e-01 ; 2 uses
  %i.fl = load float, ptr %i.er, align 4, !tbaa !35
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl
  store float %i.fm, ptr %i.er, align 4, !tbaa !35
  %i.fn = load float, ptr %i.eu, align 4, !tbaa !35
  %i.fo = fsub reassoc nsz arcp contract afn float %i.fn, %i.fk
  store float %i.fo, ptr %i.eu, align 4, !tbaa !35
  %i.fp = extractelement <4 x float> %i.ey, i64 0
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, 2.500000e-01 ; 2 uses
  %i.fr = extractelement <4 x i32> %i.dw, i64 0   ; 2 uses
  %i.fs = sub nsw i32 3, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ft ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !35
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fq, %i.fv
  store float %i.fw, ptr %i.fu, align 4, !tbaa !35
  %i.fx = sub nsw i32 4, %i.fr
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fy ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !35
  %i.gb = fsub reassoc nsz arcp contract afn float %i.ga, %i.fq
  store float %i.gb, ptr %i.fz, align 4, !tbaa !35
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gd = load float, ptr %i.gc, align 16, !tbaa !35
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, 1.000000e+00
  %i.gf = load float, ptr %i.a, align 16, !tbaa !35
  %i.gg = fadd reassoc nsz arcp contract afn float %i.ge, %i.gf
  store float %i.gg, ptr %i.a, align 16, !tbaa !35
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !46 ; 2 uses
  %i.gj = getelementptr inbounds nuw [36 x i8], ptr %i.gi, i64 %3
  store i32 %4, ptr %i.gj, align 4, !tbaa !53
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gn = sext i32 %4 to i64                      ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.gm, align 8, !tbaa !51
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gr = extractelement <4 x i32> %i.dx, i64 1
  %i.gs = extractelement <4 x i32> %i.dx, i64 2
  %i.gt = extractelement <4 x i32> %i.dx, i64 3
  br label %.preheader

.preheader:                                       ; preds = %.loopexit, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  %i.gu = phi ptr [ %i.gi, %.loopexit ], [ %i.jv, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ]
  %i.gv = phi ptr [ %.pre, %.loopexit ], [ %i.jw, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ] ; 5 uses
  %i.gw = load ptr, ptr %i.gk, align 8, !tbaa !47 ; 3 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.gx = shl nuw nsw i32 %indvars.iv.tr, 2       ; 3 uses
  %i.gy = add nsw i32 %i.dy, %i.gx
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !33
  %i.hc = add nsw i32 %i.hb, %i.gr                ; 2 uses
  %i.hd = trunc i32 %i.hc to i16
  store i16 %i.hd, ptr %i.gl, align 4, !tbaa !54
  %i.he = add nsw i32 %i.eh, %i.gx
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !33
  %i.hi = add nsw i32 %i.hh, %i.gs                ; 2 uses
  %i.hj = trunc i32 %i.hi to i16
  store i16 %i.hj, ptr %i.gp, align 2, !tbaa !54
  %i.hk = add nsw i32 %i.eo, %i.gx
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !33
  %i.ho = add nsw i32 %i.hn, %i.gt                ; 2 uses
  %i.hp = trunc i32 %i.ho to i16
  store i16 %i.hp, ptr %i.gq, align 4, !tbaa !54
  %sext = shl i32 %i.hc, 16
  %i.hq = ashr exact i32 %sext, 16
  %i.hr = mul i32 %i.hq, 2531011
  %sext227 = shl i32 %i.hi, 16
  %i.hs = ashr exact i32 %sext227, 16
  %i.ht = add i32 %i.hr, %i.hs
  %i.hu = mul i32 %i.ht, 2531011
  %sext228 = shl i32 %i.ho, 16
  %i.hv = ashr exact i32 %sext228, 16
  %i.hw = add i32 %i.hu, %i.hv
  %i.hx = mul i32 %i.hw, 2531011                  ; 3 uses
  store i32 %i.hx, ptr %5, align 4, !tbaa !56
  %i.hy = getelementptr inbounds [80 x i8], ptr %i.gv, i64 %i.gn ; 10 uses
  %i.hz = zext i32 %i.hx to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !50 ; 2 uses
  %i.ic = and i64 %i.ib, %i.hz                    ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !57 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.ic
  %.sroa.0.0.copyload22.i.i = load i32, ptr %i.if, align 4, !tbaa !33 ; 2 uses
  %i.ig = icmp eq i32 %.sroa.0.0.copyload22.i.i, -1
  br i1 %i.ig, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

.lr.ph.i.i:                                       ; preds = %.preheader
  %i.ih = load ptr, ptr %i.hy, align 8, !tbaa !58
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i, %.preheader
  %.011.lcssa.i.i = phi i64 [ %i.ic, %.preheader ], [ %i.js, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hy, i64 32 ; 4 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !59 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !60
  %.not.i.i = icmp ult i64 %i.ij, %i.il
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 72 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !61
  %i.io = add i64 %i.in, 1
  store i64 %i.io, ptr %i.im, align 8, !tbaa !61
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !49
  tail call void @_ZN22HashTablePermutohedralILi3ELi2EE9growExactEm(ptr noundef nonnull align 8 dereferenceable(80) %i.hy, i64 noundef %i.iq)
  %.pre.i.i = load i64, ptr %i.ii, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.ir = phi i64 [ %.pre.i.i, %bb.c ], [ %i.ij, %._crit_edge.i.i ]
  %i.is = load ptr, ptr %i.hy, align 8, !tbaa !58
  %i.it = getelementptr inbounds nuw [12 x i8], ptr %i.is, i64 %i.ir
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.it, ptr noundef nonnull align 4 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !63
  %i.iu = load i64, ptr %i.ii, align 8, !tbaa !59 ; 2 uses
  %i.iv = trunc i64 %i.iu to i32                  ; 2 uses
  %i.iw = load ptr, ptr %i.id, align 8, !tbaa !57
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %.011.lcssa.i.i
  store i32 %i.iv, ptr %i.ix, align 4, !tbaa !65
  %i.iy = add i64 %i.iu, 1
  store i64 %i.iy, ptr %i.ii, align 8, !tbaa !59
  %.pre224 = load ptr, ptr %i.gm, align 8, !tbaa !51
  %.pre225 = load ptr, ptr %i.gh, align 8, !tbaa !46
  br label %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i

bb.e:                                             ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.0.0.copyload24.i.i = phi i32 [ %.sroa.0.0.copyload22.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ] ; 2 uses
  %.01123.i.i = phi i64 [ %i.ic, %.lr.ph.i.i ], [ %i.js, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ]
  %i.iz = sext i32 %.sroa.0.0.copyload24.i.i to i64
  %i.ja = getelementptr inbounds [12 x i8], ptr %i.ih, i64 %i.iz ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !56
  %.not.i.i.i = icmp eq i32 %i.jb, %i.hx
  br i1 %.not.i.i.i, label %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i, label %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i

_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i: ; preds = %bb.e
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 1
  %i.je = load i32, ptr %i.gl, align 1
  %i.jf = xor i32 %i.jd, %i.je
  %i.jg = getelementptr i8, ptr %i.jc, i64 4
  %i.jh = getelementptr i8, ptr %i.gl, i64 4
  %i.ji = load i16, ptr %i.jg, align 1
  %i.jj = load i16, ptr %i.jh, align 1
  %i.jk = zext i16 %i.ji to i32
  %i.jl = zext i16 %i.jj to i32
  %i.jm = xor i32 %i.jk, %i.jl
  %i.jn = or i32 %i.jf, %i.jm
  %i.jo = icmp ne i32 %i.jn, 0
  %i.jp = zext i1 %i.jo to i32
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i, label %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i

_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i: ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i, %bb.e
  %i.jr = add i64 %.01123.i.i, 1
  %i.js = and i64 %i.jr, %i.ib                    ; 3 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.js
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.jt, align 4, !tbaa !33 ; 2 uses
  %i.ju = icmp eq i32 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.ju, label %._crit_edge.i.i, label %bb.e, !llvm.loop !0

_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i: ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i, %bb.d
  %i.jv = phi ptr [ %.pre225, %bb.d ], [ %i.gu, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i ] ; 2 uses
  %i.jw = phi ptr [ %.pre224, %bb.d ], [ %i.gv, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i ] ; 2 uses
  %.113.ph.i.i = phi i32 [ %i.iv, %bb.d ], [ %.sroa.0.0.copyload24.i.i, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.i.i ] ; 2 uses
  %i.jx = icmp sgt i32 %.113.ph.i.i, -1
  tail call void @llvm.assume(i1 %i.jx)
end_hunk_0
