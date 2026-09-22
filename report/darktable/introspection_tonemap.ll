Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_tonemap?download=true
inline.NumInlined: 80
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN20PermutohedralLatticeILi3ELi2EEC2Emmm:._crit_edge.3
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
  br i1 %i.bd, label %.lr.ph50, label %._crit_edge51, !llvm.loop !124
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
  %i.am = fmul reassoc nsz arcp contract afn <2 x float> %i.ac, splat (float 2.500000e-01) ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn <2 x float> %i.al, splat (float 4.000000e+00) ; 2 uses
  %i.ao = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.ak)
  %i.ap = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, splat (float 4.000000e+00) ; 2 uses
  %i.aq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.am)
  %i.ar = fsub reassoc nsz arcp contract afn <2 x float> %i.an, %i.aj
  %i.as = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.am)
  %i.at = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.ap
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.aq, splat (float 4.000000e+00) ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn <2 x float> %i.as, splat (float 4.000000e+00) ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ar, %i.at
  %i.ax = fsub reassoc nsz arcp contract afn <2 x float> %i.au, %i.ac
  %i.ay = fsub reassoc nsz arcp contract afn <2 x float> %i.ac, %i.av
  %i.az = select <2 x i1> %i.aw, <2 x float> %i.an, <2 x float> %i.ap
  %i.ba = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ax, %i.ay
  %i.bb = fptosi <2 x float> %i.az to <2 x i32>   ; 3 uses
  %i.bc = select <2 x i1> %i.ba, <2 x float> %i.au, <2 x float> %i.av
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.be = fptosi <4 x float> %i.bd to <4 x i32>   ; 6 uses
  %i.bf = extractelement <2 x i32> %i.bb, i64 1
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nsz arcp contract afn float %i.ag, %i.bg
  %i.bi = extractelement <4 x i32> %i.be, i64 1
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %i.bi to float
  %i.bk = sitofp <2 x i32> %i.bb to <2 x float>   ; 2 uses
  %i.bl = fsub reassoc nsz arcp contract afn <2 x float> %i.aj, %i.bk ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.bn = shufflevector <2 x float> %i.ac, <2 x float> %i.aj, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.bo = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bp = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.bo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bs = fsub reassoc nsz arcp contract afn <4 x float> %i.bn, %i.br
  %i.bt = extractelement <2 x float> %i.bl, i64 0
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.bh ; 2 uses
  %i.bv = sitofp <4 x i32> %i.be to <4 x float>
  %i.bw = sitofp <4 x i32> %i.be to <4 x float>
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = fsub reassoc nsz arcp contract afn <4 x float> %i.ad, %i.bv ; 2 uses
  %i.bz = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ca = fsub reassoc nsz arcp contract afn <4 x float> %i.bz, %i.bx
  %i.cb = fcmp reassoc nsz arcp contract afn uge <4 x float> %i.bm, %i.by ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bm, %i.by
  %i.cd = shufflevector <4 x i1> %i.cc, <4 x i1> %i.cb, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ce = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bs, %i.ca ; 2 uses
  %not. = xor i1 %i.bu, true
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
  %i.cq = shufflevector <2 x i32> %i.bb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cr = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cr) ; 3 uses
  %i.ct = sdiv i32 %i.cs, 4                       ; 4 uses
  %i.cu = icmp sgt i32 %i.cs, 3
  br i1 %i.cu, label %.preheader107, label %bb.a

.preheader107:                                    ; preds = %.lr.ph
  %i.cv = insertelement <2 x i32> <i32 4, i32 poison>, i32 %i.ct, i64 1 ; 2 uses
  %i.cw = insertelement <2 x i32> <i32 poison, i32 4>, i32 %i.ct, i64 0
  %i.cx = sub nsw <2 x i32> %i.cv, %i.cw          ; 2 uses
  %i.cy = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 1> ; 2 uses
  %i.cz = add nsw <4 x i32> %i.cy, splat (i32 -4)
  %i.da = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.db = icmp slt <4 x i32> %i.cp, %i.da         ; 2 uses
  %6 = shufflevector <2 x i32> %i.cv, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dc = shufflevector <2 x i32> %i.cx, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dd = select <4 x i1> %i.db, <4 x i32> %6, <4 x i32> %i.dc
  %i.de = select <4 x i1> %i.db, <4 x i32> %i.cy, <4 x i32> %i.cz
  %i.df = add nsw <4 x i32> %i.dd, %i.cp
  br label %.loopexit

bb.a:                                             ; preds = %.lr.ph
  %i.dg = icmp slt i32 %i.cs, -3
  %i.dh = shufflevector <4 x i32> %i.be, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 4, i32 5, i32 1> ; 3 uses
  br i1 %i.dg, label %.preheader108, label %.loopexit

.preheader108:                                    ; preds = %bb.a
  %i.di = insertelement <2 x i32> <i32 0, i32 poison>, i32 %i.ct, i64 1 ; 2 uses
  %i.dj = insertelement <2 x i32> <i32 poison, i32 -4>, i32 %i.ct, i64 0
  %i.dk = sub nsw <2 x i32> %i.di, %i.dj          ; 2 uses
  %i.dl = add nsw <4 x i32> %i.dh, splat (i32 4)
  %i.dm = shufflevector <2 x i32> %i.dk, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.dn = icmp slt <4 x i32> %i.cp, %i.dm         ; 2 uses
  %i.do = shufflevector <2 x i32> %i.dk, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %7 = shufflevector <2 x i32> %i.di, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dp = select <4 x i1> %i.dn, <4 x i32> %i.do, <4 x i32> %7
  %i.dq = select <4 x i1> %i.dn, <4 x i32> %i.dl, <4 x i32> %i.dh
  %i.dr = add nsw <4 x i32> %i.dp, %i.cp
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader108, %.preheader107, %bb.a
  %i.ds = phi <4 x i32> [ %i.df, %.preheader107 ], [ %i.dr, %.preheader108 ], [ %i.cp, %bb.a ] ; 4 uses
  %i.dt = phi <4 x i32> [ %i.de, %.preheader107 ], [ %i.dq, %.preheader108 ], [ %i.dh, %bb.a ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.du = extractelement <4 x i32> %i.ds, i64 1   ; 3 uses
  %i.dv = sub nsw i32 3, %i.du
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dw ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !35
  %i.dz = sub nsw i32 4, %i.du
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ea ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !35
  %i.ed = extractelement <4 x i32> %i.ds, i64 2   ; 3 uses
  %i.ee = sub nsw i32 3, %i.ed
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ef ; 2 uses
  %i.eh = sub nsw i32 4, %i.ed
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ei ; 2 uses
  %i.ek = extractelement <4 x i32> %i.ds, i64 3   ; 3 uses
  %i.el = sub nsw i32 3, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.em ; 2 uses
  %i.eo = sub nsw i32 4, %i.ek
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ep ; 2 uses
  %i.er = sitofp <4 x i32> %i.dt to <4 x float>
  %i.es = shufflevector <2 x float> %i.y, <2 x float> %i.ac, <4 x i32> <i32 1, i32 poison, i32 poison, i32 2>
  %i.et = insertelement <4 x float> %i.es, float %i.ah, i64 1
  %i.eu = insertelement <4 x float> %i.et, float %i.ag, i64 2
  %i.ev = fsub reassoc nsz arcp contract afn <4 x float> %i.eu, %i.er ; 4 uses
  %i.ew = extractelement <4 x float> %i.ev, i64 1
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, 2.500000e-01 ; 2 uses
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ex, %i.dy
  store float %i.ey, ptr %i.dx, align 4, !tbaa !35
  %i.ez = fsub reassoc nsz arcp contract afn float %i.ec, %i.ex
  store float %i.ez, ptr %i.eb, align 4, !tbaa !35
  %i.fa = extractelement <4 x float> %i.ev, i64 2
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, 2.500000e-01 ; 2 uses
  %i.fc = load float, ptr %i.eg, align 4, !tbaa !35
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fb, %i.fc
  store float %i.fd, ptr %i.eg, align 4, !tbaa !35
  %i.fe = load float, ptr %i.ej, align 4, !tbaa !35
  %i.ff = fsub reassoc nsz arcp contract afn float %i.fe, %i.fb
  store float %i.ff, ptr %i.ej, align 4, !tbaa !35
  %i.fg = extractelement <4 x float> %i.ev, i64 3
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, 2.500000e-01 ; 2 uses
  %i.fi = load float, ptr %i.en, align 4, !tbaa !35
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fh, %i.fi
  store float %i.fj, ptr %i.en, align 4, !tbaa !35
  %i.fk = load float, ptr %i.eq, align 4, !tbaa !35
  %i.fl = fsub reassoc nsz arcp contract afn float %i.fk, %i.fh
  store float %i.fl, ptr %i.eq, align 4, !tbaa !35
  %i.fm = extractelement <4 x float> %i.ev, i64 0
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, 2.500000e-01 ; 2 uses
  %i.fo = extractelement <4 x i32> %i.ds, i64 0   ; 2 uses
  %i.fp = sub nsw i32 3, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fq ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !35
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fn, %i.fs
  store float %i.ft, ptr %i.fr, align 4, !tbaa !35
  %i.fu = sub nsw i32 4, %i.fo
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fv ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !35
  %i.fy = fsub reassoc nsz arcp contract afn float %i.fx, %i.fn
  store float %i.fy, ptr %i.fw, align 4, !tbaa !35
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ga = load float, ptr %i.fz, align 16, !tbaa !35
  %i.gb = fadd reassoc nsz arcp contract afn float %i.ga, 1.000000e+00
  %i.gc = load float, ptr %i.a, align 16, !tbaa !35
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gb, %i.gc
  store float %i.gd, ptr %i.a, align 16, !tbaa !35
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !46 ; 2 uses
  %i.gg = getelementptr inbounds nuw [36 x i8], ptr %i.gf, i64 %3
  store i32 %4, ptr %i.gg, align 4, !tbaa !53
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gk = sext i32 %4 to i64                      ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.gj, align 8, !tbaa !51
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.go = extractelement <4 x i32> %i.dt, i64 1
  %i.gp = extractelement <4 x i32> %i.dt, i64 2
  %i.gq = extractelement <4 x i32> %i.dt, i64 3
  br label %.preheader

.preheader:                                       ; preds = %.loopexit, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  %i.gr = phi ptr [ %i.gf, %.loopexit ], [ %i.js, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ]
  %i.gs = phi ptr [ %.pre, %.loopexit ], [ %i.jt, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next, %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ] ; 5 uses
  %i.gt = load ptr, ptr %i.gh, align 8, !tbaa !47 ; 3 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.gu = shl nuw nsw i32 %indvars.iv.tr, 2       ; 3 uses
  %i.gv = add nsw i32 %i.du, %i.gu
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !33
  %i.gz = add nsw i32 %i.gy, %i.go                ; 2 uses
  %i.ha = trunc i32 %i.gz to i16
  store i16 %i.ha, ptr %i.gi, align 4, !tbaa !54
  %i.hb = add nsw i32 %i.ed, %i.gu
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !33
  %i.hf = add nsw i32 %i.he, %i.gp                ; 2 uses
  %i.hg = trunc i32 %i.hf to i16
  store i16 %i.hg, ptr %i.gm, align 2, !tbaa !54
  %i.hh = add nsw i32 %i.ek, %i.gu
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !33
  %i.hl = add nsw i32 %i.hk, %i.gq                ; 2 uses
  %i.hm = trunc i32 %i.hl to i16
  store i16 %i.hm, ptr %i.gn, align 4, !tbaa !54
  %sext = shl i32 %i.gz, 16
  %i.hn = ashr exact i32 %sext, 16
  %i.ho = mul i32 %i.hn, 2531011
  %sext227 = shl i32 %i.hf, 16
  %i.hp = ashr exact i32 %sext227, 16
  %i.hq = add i32 %i.ho, %i.hp
  %i.hr = mul i32 %i.hq, 2531011
  %sext228 = shl i32 %i.hl, 16
  %i.hs = ashr exact i32 %sext228, 16
  %i.ht = add i32 %i.hr, %i.hs
  %i.hu = mul i32 %i.ht, 2531011                  ; 3 uses
  store i32 %i.hu, ptr %5, align 4, !tbaa !56
  %i.hv = getelementptr inbounds [80 x i8], ptr %i.gs, i64 %i.gk ; 10 uses
  %i.hw = zext i32 %i.hu to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !50 ; 2 uses
  %i.hz = and i64 %i.hy, %i.hw                    ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !57 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.hz
  %.sroa.0.0.copyload22.i.i = load i32, ptr %i.ic, align 4, !tbaa !33 ; 2 uses
  %i.id = icmp eq i32 %.sroa.0.0.copyload22.i.i, -1
  br i1 %i.id, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

.lr.ph.i.i:                                       ; preds = %.preheader
  %i.ie = load ptr, ptr %i.hv, align 8, !tbaa !58
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i, %.preheader
  %.011.lcssa.i.i = phi i64 [ %i.hz, %.preheader ], [ %i.jp, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 32 ; 4 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !59 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !60
  %.not.i.i = icmp ult i64 %i.ig, %i.ii
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 72 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !61
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !61
  %i.im = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.in = load i64, ptr %i.im, align 8, !tbaa !49
  tail call void @_ZN22HashTablePermutohedralILi3ELi2EE9growExactEm(ptr noundef nonnull align 8 dereferenceable(80) %i.hv, i64 noundef %i.in)
  %.pre.i.i = load i64, ptr %i.if, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.io = phi i64 [ %.pre.i.i, %bb.c ], [ %i.ig, %._crit_edge.i.i ]
  %i.ip = load ptr, ptr %i.hv, align 8, !tbaa !58
  %i.iq = getelementptr inbounds nuw [12 x i8], ptr %i.ip, i64 %i.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.iq, ptr noundef nonnull align 4 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !63
  %i.ir = load i64, ptr %i.if, align 8, !tbaa !59 ; 2 uses
  %i.is = trunc i64 %i.ir to i32                  ; 2 uses
  %i.it = load ptr, ptr %i.ia, align 8, !tbaa !57
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %.011.lcssa.i.i
  store i32 %i.is, ptr %i.iu, align 4, !tbaa !65
  %i.iv = add i64 %i.ir, 1
  store i64 %i.iv, ptr %i.if, align 8, !tbaa !59
  %.pre224 = load ptr, ptr %i.gj, align 8, !tbaa !51
  %.pre225 = load ptr, ptr %i.ge, align 8, !tbaa !46
  br label %_ZN22HashTablePermutohedralILi3ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i

bb.e:                                             ; preds = %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.0.0.copyload24.i.i = phi i32 [ %.sroa.0.0.copyload22.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ] ; 2 uses
  %.01123.i.i = phi i64 [ %i.hz, %.lr.ph.i.i ], [ %i.jp, %_ZNK22HashTablePermutohedralILi3ELi2EE3KeyeqERKS1_.exit.thread.i.i ]
  %i.iw = sext i32 %.sroa.0.0.copyload24.i.i to i64
  %i.ix = getelementptr inbounds [12 x i8], ptr %i.ie, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !56
  %.not.i.i.i = icmp eq i32 %i.iy, %i.hu
end_hunk_0
