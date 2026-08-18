inline.NumInlined: 66
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 44
begin_hunk_0_@dt_ioppr_apply_trc:bb.a
bb.l:                                             ; preds = %bb.j
  %i.ci = fmul reassoc nsz arcp contract afn float %i.bx, %i.b ; 3 uses
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.ci, 0.000000e+00
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.ci, %i.b
  %..i.2 = select reassoc nsz arcp contract afn i1 %i.ck, float %i.ci, float %i.b
  %i.cl = select reassoc nsz arcp contract afn i1 %i.cj, float %..i.2, float 0.000000e+00 ; 3 uses
  %i.cm = fcmp reassoc nsz arcp contract afn olt float %i.cl, %i.d
  %i.cn = select reassoc nsz arcp contract afn i1 %i.cm, float %i.cl, float %i.d
  %i.co = fptosi float %i.cn to i32               ; 2 uses
  %i.cp = sitofp reassoc nsz arcp contract afn i32 %i.co to float
  %i.cq = fsub reassoc nnan nsz arcp contract afn float %i.cl, %i.cp
  %i.cr = sext i32 %i.co to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cr ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !39 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !39
  %i.cw = fsub reassoc nsz arcp contract afn float %i.cv, %i.ct
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.cq
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.ct
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k
  %i.cz = phi reassoc nsz arcp contract afn float [ %i.ch, %bb.k ], [ %i.cy, %bb.l ], [ %i.bx, %bb.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.cz, ptr %i.da, align 4, !tbaa !39
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call fastcc void @dt_ioppr_apply_trc(ptr noundef %0, ptr noundef %i.a, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load float, ptr %2, align 4, !tbaa !39
  %i.g = load float, ptr %i.a, align 16, !tbaa !39 ; 4 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.f
  %i.i = load float, ptr %i.b, align 4, !tbaa !39
  %i.j = load float, ptr %i.c, align 4, !tbaa !39 ; 4 uses
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.i
  %i.l = fadd reassoc nsz arcp contract afn float %i.k, %i.h
  %i.m = load float, ptr %i.d, align 4, !tbaa !39
  %i.n = load float, ptr %i.e, align 8, !tbaa !39 ; 4 uses
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %i.m
  %i.p = fadd reassoc nsz arcp contract afn float %i.l, %i.o
  store float %i.p, ptr %1, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !39
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, %i.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !39
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.j
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.y = load float, ptr %i.x, align 4, !tbaa !39
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.n
  %i.aa = fadd reassoc nsz arcp contract afn float %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !39
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.g
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load float, ptr %i.af, align 4, !tbaa !39
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.j
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !39
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.n
  %i.am = fadd reassoc nsz arcp contract afn float %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.am, ptr %i.an, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !39
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.g
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.as = load float, ptr %i.ar, align 4, !tbaa !39
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %i.j
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !39
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.n
  %i.ay = fadd reassoc nsz arcp contract afn float %i.au, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bd = load float, ptr %2, align 4, !tbaa !39
  %i.be = load float, ptr %0, align 4, !tbaa !39
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.bd
  %i.bg = load float, ptr %i.az, align 4, !tbaa !39
  %i.bh = load float, ptr %i.ba, align 4, !tbaa !39
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.bg
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.bf
  %i.bk = load float, ptr %i.bb, align 4, !tbaa !39
  %i.bl = load float, ptr %i.bc, align 4, !tbaa !39
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %i.bk
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bj, %i.bm
  store float %i.bn, ptr %1, align 4, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !39
  %i.bq = load float, ptr %0, align 4, !tbaa !39
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !39
  %i.bu = load float, ptr %i.ba, align 4, !tbaa !39
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bt
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.by = load float, ptr %i.bx, align 4, !tbaa !39
  %i.bz = load float, ptr %i.bc, align 4, !tbaa !39
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.by
  %i.cb = fadd reassoc nsz arcp contract afn float %i.bw, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !39
  %i.cf = load float, ptr %0, align 4, !tbaa !39
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !39
  %i.cj = load float, ptr %i.ba, align 4, !tbaa !39
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.ci
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !39
  %i.co = load float, ptr %i.bc, align 4, !tbaa !39
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, %i.cn
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.cq, ptr %i.cr, align 4, !tbaa !39
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !39
  %i.cu = load float, ptr %0, align 4, !tbaa !39
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !39
  %i.cy = load float, ptr %i.ba, align 4, !tbaa !39
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.cx
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, %i.cv
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dc = load float, ptr %i.db, align 4, !tbaa !39
  %i.dd = load float, ptr %i.bc, align 4, !tbaa !39
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.dc
  %i.df = fadd reassoc nsz arcp contract afn float %i.da, %i.de
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi float [ %i.df, %bb.c ], [ %i.ay, %bb.b ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %.sink, ptr %i.dg, align 4, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #11

declare void @cmsDoTransform(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_rgb_to_JzCzhz(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %1, ptr noalias nofree noundef readonly captures(address_is_null) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 960
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 712
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.f = load i32, ptr %i.e, align 64, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 852
  %i.h = load i32, ptr %i.g, align 4, !tbaa !95
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.f, i32 noundef %i.h)
  %i.i = load float, ptr %i.a, align 16, !tbaa !39 ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 1.150000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !39 ; 3 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, f0x3E199998
  %i.n = fsub reassoc nsz arcp contract afn float %i.j, %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !39
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, 6.600000e-01
  %i.r = fmul reassoc nsz arcp contract afn float %i.i, f0x3EAE147A
  %i.s = fadd reassoc nsz arcp contract afn float %i.q, %i.r ; 2 uses
  %3 = insertelement <2 x float> poison, float %i.s, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = fmul reassoc nsz arcp contract afn <2 x float> %4, <float f0x3F8F716D, float 5.799990e-01>
  %i.t = insertelement <2 x float> poison, float %i.n, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.u, <float -2.015100e-01, float f0x3ED45F51>
  %6 = insertelement <2 x float> poison, float %i.l, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul reassoc nsz arcp contract afn <2 x float> %7, <float 5.310080e-02, float 1.464800e-02>
  %9 = fadd reassoc nsz arcp contract afn <2 x float> %i.v, %8
  %i.w = fmul reassoc nsz arcp contract afn float %i.n, -1.660080e-02
  %i.x = fmul reassoc nsz arcp contract afn float %i.s, 2.648000e-01
  %i.y = fmul reassoc nsz arcp contract afn float %i.l, f0x3F2B2180
  %i.z = fadd reassoc nsz arcp contract afn float %i.w, %i.y
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.x
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, f0x38D1B717
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ab, float 0.000000e+00)
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ac, float f0x3E232000) ; 2 uses
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, f0x4196D000
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, f0x3F560000
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ad, 1.868750e+01
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, 1.000000e+00
  %i.ai = fdiv reassoc nsz arcp contract afn float %i.af, %i.ah
  %i.aj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ai, float f0x430608CD) ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 0.000000e+00
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %9, %5
  %i.am = fmul reassoc nsz arcp contract afn <2 x float> %i.al, splat (float f0x38D1B717)
  %i.an = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.am, <2 x float> zeroinitializer)
  %i.ao = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.an, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.ap = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, splat (float f0x4196D000)
  %i.aq = fadd reassoc nsz arcp contract afn <2 x float> %i.ap, splat (float f0x3F560000)
  %i.ar = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, splat (float 1.868750e+01)
  %i.as = fadd reassoc nsz arcp contract afn <2 x float> %i.ar, splat (float 1.000000e+00)
  %i.at = fdiv reassoc nsz arcp contract afn <2 x float> %i.aq, %i.as
  %i.au = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.at, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.av = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.au)
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, 5.000000e-01
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.ak ; 2 uses
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.au, <float f0xC0822279, float 1.990760e-01>
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = fmul reassoc nsz arcp contract afn <2 x float> %i.au, <float f0x3F8C63E9, float 3.524000e+00>
  %i.bb = fadd reassoc nsz arcp contract afn <2 x float> %i.ba, %i.az
  %i.bc = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, <float f0xBFA5DF3B, float 5.427080e-01>
  %i.bf = fadd reassoc nsz arcp contract afn <2 x float> %i.bb, %i.be
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ax, 4.400000e-01
  %i.bh = fmul reassoc nsz arcp contract afn float %i.ax, 5.600000e-01
  %i.bi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bh
  %i.bj = fdiv reassoc nsz arcp contract afn float %i.bg, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, -1.629550e-11
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bk, float 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bm = load float, ptr %0, align 4, !tbaa !39  ; 2 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, 1.150000e+00
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !39 ; 3 uses
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, f0x3E199998
  %i.br = fsub reassoc nsz arcp contract afn float %i.bn, %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !39
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, 6.600000e-01
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bm, f0x3EAE147A
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bu, %i.bv ; 2 uses
  %10 = insertelement <2 x float> poison, float %i.bw, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul reassoc nsz arcp contract afn <2 x float> %11, <float f0x3F8F716D, float 5.799990e-01>
  %i.bx = insertelement <2 x float> poison, float %i.br, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul reassoc nsz arcp contract afn <2 x float> %i.by, <float -2.015100e-01, float f0x3ED45F51>
  %13 = insertelement <2 x float> poison, float %i.bp, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul reassoc nsz arcp contract afn <2 x float> %14, <float 5.310080e-02, float 1.464800e-02>
  %16 = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %15
  %i.ca = fmul reassoc nsz arcp contract afn float %i.br, -1.660080e-02
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bw, 2.648000e-01
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bp, f0x3F2B2180
  %i.cd = fadd reassoc nsz arcp contract afn float %i.ca, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, %i.cb
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, f0x38D1B717
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cf, float 0.000000e+00)
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cg, float f0x3E232000) ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, f0x4196D000
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, f0x3F560000
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ch, 1.868750e+01
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, 1.000000e+00
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.cj, %i.cl
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cm, float f0x430608CD) ; 2 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, 0.000000e+00
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %16, %12
  %i.cq = fmul reassoc nsz arcp contract afn <2 x float> %i.cp, splat (float f0x38D1B717)
  %i.cr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cq, <2 x float> zeroinitializer)
  %i.cs = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.cr, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.ct = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, splat (float f0x4196D000)
  %i.cu = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, splat (float f0x3F560000)
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, splat (float 1.868750e+01)
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, splat (float 1.000000e+00)
  %i.cx = fdiv reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cw
  %i.cy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.cx, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.cz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.cy)
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, 5.000000e-01
  %i.db = fadd reassoc nsz arcp contract afn float %i.da, %i.co ; 2 uses
  %i.dc = fmul reassoc nsz arcp contract afn <2 x float> %i.cy, <float f0xC0822279, float 1.990760e-01>
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.de = fmul reassoc nsz arcp contract afn <2 x float> %i.cy, <float f0x3F8C63E9, float 3.524000e+00>
  %i.df = fadd reassoc nsz arcp contract afn <2 x float> %i.de, %i.dd
  %i.dg = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul reassoc nsz arcp contract afn <2 x float> %i.dh, <float f0xBFA5DF3B, float 5.427080e-01>
  %i.dj = fadd reassoc nsz arcp contract afn <2 x float> %i.df, %i.di
  %i.dk = fmul reassoc nsz arcp contract afn float %i.db, 4.400000e-01
  %i.dl = fmul reassoc nsz arcp contract afn float %i.db, 5.600000e-01
  %i.dm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dl
  %i.dn = fdiv reassoc nsz arcp contract afn float %i.dk, %i.dm
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, -1.629550e-11
  %i.dp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.do, float 0.000000e+00)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi nsz float [ %i.dp, %bb.c ], [ %i.bl, %bb.b ]
  %i.dq = phi <2 x float> [ %i.dj, %bb.c ], [ %i.bf, %bb.b ] ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0 ; 2 uses
  %i.ds = extractelement <2 x float> %i.dq, i64 1 ; 2 uses
  %i.dt = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.dr, float %i.ds)
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, f0x3E22F983 ; 3 uses
  store float %.sroa.0.0, ptr %1, align 4, !tbaa !39
  %i.dv = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ds, float noundef %i.dr) #16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.dv, ptr %i.dw, align 4, !tbaa !39
  %i.dx = fcmp reassoc nsz arcp contract afn oge float %i.du, 0.000000e+00
  %i.dy = fadd reassoc nsz arcp contract afn float %i.du, 1.000000e+00
  %i.dz = select reassoc nsz arcp contract afn i1 %i.dx, float %i.du, float %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.dz, ptr %i.ea, align 4, !tbaa !39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_multiply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i64 noundef %5) unnamed_addr #12 {
bb.a:
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %5, 9
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.memcheck

.lr.ph.preheader43:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02529.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02628.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %5, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep31 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep32 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %3, %scevgep31
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %3, %scevgep32
  %bound134 = icmp ult ptr %1, %scevgep
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %5, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %5, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <8 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !39 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !263 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec36 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec37 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec38 = load <32 x float>, ptr %i.j, align 4, !tbaa !39, !alias.scope !266 ; 3 uses
  %strided.vec39 = shufflevector <32 x float> %wide.vec38, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec40 = shufflevector <32 x float> %wide.vec38, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec41 = shufflevector <32 x float> %wide.vec38, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.l = fmul reassoc nsz arcp contract afn <8 x float> %i.k, %strided.vec39
  %i.m = fsub reassoc nsz arcp contract afn <8 x float> %i.l, %strided.vec
  %i.n = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %wide.load
  %i.o = fadd reassoc nsz arcp contract afn <8 x float> %i.n, %strided.vec
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec36, %broadcast.splat
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %i.q, %strided.vec40
  %i.s = fsub reassoc nsz arcp contract afn <8 x float> %i.r, %strided.vec36
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %i.s, %wide.load
  %i.u = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %strided.vec36
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec37, %broadcast.splat
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %i.v, %strided.vec41
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %i.w, %strided.vec37
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %i.x, %wide.load
  %i.z = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %strided.vec37
  %i.aa = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ab = shufflevector <8 x float> %i.z, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.aa, <16 x float> %i.ab, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !39, !alias.scope !268, !noalias !270
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %.lr.ph.preheader43, label %vector.body, !llvm.loop !271

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %.02529 = phi i64 [ %i.bm, %.lr.ph ], [ %.02529.ph, %.lr.ph.preheader43 ] ; 2 uses
  %.02628 = phi i64 [ %i.bn, %.lr.ph ], [ %.02628.ph, %.lr.ph.preheader43 ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.02529
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !39 ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02628
  %i.ag = load float, ptr %i.af, align 4, !tbaa !39 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02628
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !39
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ag, %2
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ai
  %i.al = fsub reassoc nsz arcp contract afn float %i.ak, %i.ag
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.ae
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, %i.ag
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02628 ; 2 uses
  store float %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = or disjoint i64 %.02628, 1              ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !39 ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.at = load float, ptr %i.as, align 4, !tbaa !39
  %i.au = fmul reassoc nsz arcp contract afn float %i.ar, %2
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.at
  %i.aw = fsub reassoc nsz arcp contract afn float %i.av, %i.ar
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.ae
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.ar
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  store float %i.ay, ptr %i.az, align 4, !tbaa !39
  %i.ba = or disjoint i64 %.02628, 2              ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba
  %i.be = load float, ptr %i.bd, align 4, !tbaa !39
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bc, %2
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.be
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bg, %i.bc
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.ae
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.bc
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ba
  store float %i.bj, ptr %i.bk, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store float %i.ae, ptr %i.bl, align 4, !tbaa !39
  %i.bm = add nuw i64 %.02529, 1                  ; 2 uses
  %i.bn = add i64 %.02628, 4
  %exitcond.not = icmp eq i64 %i.bm, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !272
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_average(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, float %2, ptr nofree noundef writeonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i64 noundef %5) unnamed_addr #12 {
bb.a:
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %5, 9
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

.lr.ph.preheader42:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02428.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %5, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %3, %scevgep30
  %bound1 = icmp ult ptr %0, %scevgep
end_hunk_0
