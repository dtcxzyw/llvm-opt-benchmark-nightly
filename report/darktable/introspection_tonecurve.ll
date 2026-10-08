Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_tonecurve?download=true
inline.NumInlined: 147
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0_@legacy_params:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = tail call <10 x float> @llvm.masked.load.v10f32.p0(ptr align 4 %1, <10 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true>, <10 x float> poison), !tbaa !13
  %i.e = shufflevector <10 x float> %i.d, <10 x float> poison, <8 x i32> <i32 0, i32 6, i32 1, i32 7, i32 2, i32 8, i32 3, i32 9>
  store <8 x float> %i.e, ptr %i.a, align 4, !tbaa !13
  %i.f = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.b, <8 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true>, <8 x float> poison), !tbaa !13
  %i.g = shufflevector <8 x float> %i.f, <8 x float> poison, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  store <4 x float> %i.g, ptr %i.c, align 4, !tbaa !13
  store <4 x i32> <i32 6, i32 3, i32 3, i32 0>, ptr %.sroa.3.0..sroa_idx, align 4
  store i32 1, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.h, align 4, !tbaa !151
  store i32 %i.i, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !152
  store i32 0, ptr %.sroa.1024.0..sroa_idx, align 4, !tbaa !153
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !154
  br label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noalias dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #23 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(480) %i.j, ptr noundef nonnull align 4 dereferenceable(480) %1, i64 480, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 492
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 492
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.n, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  %i.q = load <2 x i32>, ptr %i.o, align 4, !tbaa !14
  store <2 x i32> %i.q, ptr %i.p, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  store i32 0, ptr %i.r, align 4, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 516
  store i32 0, ptr %i.s, align 4, !tbaa !154
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.t = tail call noalias dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #23 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %i.t, ptr noundef nonnull align 4 dereferenceable(516) %1, i64 516, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 516
  store i32 0, ptr %i.u, align 4, !tbaa !154
  br label %.sink.split

.sink.split:                                      ; preds = %.preheader, %bb.b, %bb.c
  %.sink = phi ptr [ %i.t, %bb.c ], [ %i.j, %bb.b ], [ %i.a, %.preheader ]
  store ptr %.sink, ptr %3, align 8, !tbaa !16
  store i32 520, ptr %4, align 4, !tbaa !14
  store i32 5, ptr %5, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !155
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit200, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !33  ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !156
  %i.h = tail call ptr @dt_ioppr_add_profile_info_to_list(ptr noundef %i.g, i32 noundef 21, ptr noundef nonnull @.str.6, i32 noundef 0) #22 ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 786480 ; 9 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !13
  %i.k = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 786492 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 786504
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 786516 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 786528
  %i.p = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.l, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !13
  %i.q = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.n, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !13
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 3, i32 4, i32 7>
  %i.s = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.r ; 3 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.u = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 2668
  %i.x = load float, ptr %i.w, align 4, !tbaa !13 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !157
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !158
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 786540
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !46
  %i.ag = shl nsw i64 %i.aa, 2
  %i.ah = mul i64 %i.ag, %i.ad                    ; 2 uses
  %.not205 = icmp eq i64 %i.ah, 0
  br i1 %.not205, label %.loopexit200, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 786544
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 786484 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 786488 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 786548
  %.not.i = icmp eq ptr %i.h, null
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 852
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 772
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 776
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 720
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 780
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 784
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 788
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 728
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 792
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 796
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 800
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 592 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 596 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 600 ; 2 uses
  %i.be = icmp eq i32 %i.aj, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 262192 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 786508
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 786512
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 786496
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 786500
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 524336 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 786532
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 786536
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 786520
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 786524
  %i.bp = extractelement <4 x float> %i.s, i64 0
  %i.bq = extractelement <4 x float> %i.s, i64 2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.cj
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cj ] ; 9 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 10 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !13 ; 2 uses
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, f0x3C23D70A ; 3 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.k
  br i1 %i.bu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bs, 6.553600e+02
  %i.bw = fptosi float %i.bv to i32
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 65535)
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cc = load float, ptr %i.ak, align 4, !tbaa !13
  %i.cd = load float, ptr %i.i, align 8, !tbaa !13
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.bt
  %i.cf = load float, ptr %i.al, align 8, !tbaa !13
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ce, float %i.cf)
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.cc
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ci = phi reassoc nsz arcp contract afn float [ %i.cb, %bb.d ], [ %i.ch, %bb.e ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  store float %i.ci, ptr %i.cj, align 4, !tbaa !13
  switch i32 %i.af, label %bb.cj [
    i32 0, label %bb.g
    i32 1, label %bb.t
    i32 2, label %bb.w
    i32 3, label %bb.ar
  ]

bb.g:                                             ; preds = %bb.f
  %i.ck = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ck
  %i.cm = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cl, align 4, !tbaa !13
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, splat (float 3.906250e-03) ; 3 uses
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %i.co, splat (float 5.000000e-01) ; 5 uses
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cq = fmul reassoc nsz arcp contract afn <2 x float> %i.cp, splat (float 6.553600e+04)
  %6 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ck
  %7 = fptosi <2 x float> %i.cq to <2 x i32>
  %8 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %7, <2 x i32> zeroinitializer) ; 2 uses
  %9 = extractelement <2 x i32> %8, i64 0
  %i.cr = tail call i32 @llvm.umin.i32(i32 %9, i32 65535)
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !13
  store float %i.cu, ptr %6, align 4, !tbaa !13
  %10 = extractelement <2 x i32> %8, i64 1
  %i.cv = tail call i32 @llvm.umin.i32(i32 %10, i32 65535)
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !13
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cm
  store float %i.cy, ptr %i.cz, align 4, !tbaa !13
  br label %bb.cj

bb.i:                                             ; preds = %bb.g
  %i.da = extractelement <2 x float> %i.cp, i64 0 ; 3 uses
  %i.db = fcmp reassoc nsz arcp contract afn ogt float %i.da, %i.bp
  br i1 %i.db, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dc = load float, ptr %i.bi, align 8, !tbaa !13
  %i.dd = load float, ptr %i.l, align 4, !tbaa !13
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.da
  %i.df = load float, ptr %i.bj, align 4, !tbaa !13
  %i.dg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.de, float %i.df)
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.dc
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.di = fcmp olt <2 x float> %i.cp, %i.u
  %i.dj = extractelement <2 x i1> %i.di, i64 0
  br i1 %i.dj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dk = extractelement <2 x float> %i.co, i64 0
  %i.dl = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.dk
  %i.dm = load float, ptr %i.bg, align 4, !tbaa !13
  %i.dn = load float, ptr %i.m, align 8, !tbaa !13
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.dl
  %i.dp = load float, ptr %i.bh, align 8, !tbaa !13
  %i.dq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.do, float %i.dp)
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, %i.dm
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ds = fmul reassoc nsz arcp contract afn float %i.da, 6.553600e+04
  %i.dt = fptosi float %i.ds to i32
  %i.du = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 0)
  %i.dv = tail call i32 @llvm.umin.i32(i32 %i.du, i32 65535)
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %i.dz = phi reassoc nsz arcp contract afn float [ %i.dh, %bb.j ], [ %i.dr, %bb.l ], [ %i.dy, %bb.m ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ck
  store float %i.dz, ptr %i.ea, align 4, !tbaa !13
  %i.eb = extractelement <2 x float> %i.cp, i64 1 ; 3 uses
  %i.ec = fcmp reassoc nsz arcp contract afn ogt float %i.eb, %i.bq
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ed = load float, ptr %i.bn, align 8, !tbaa !13
  %i.ee = load float, ptr %i.n, align 4, !tbaa !13
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.eb
  %i.eg = load float, ptr %i.bo, align 4, !tbaa !13
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ef, float %i.eg)
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, %i.ed
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ej = fcmp olt <2 x float> %i.cp, %i.u
  %i.ek = extractelement <2 x i1> %i.ej, i64 1
  br i1 %i.ek, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.el = extractelement <2 x float> %i.co, i64 1
  %i.em = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.el
  %i.en = load float, ptr %i.bl, align 4, !tbaa !13
  %i.eo = load float, ptr %i.o, align 8, !tbaa !13
  %i.ep = fmul reassoc nsz arcp contract afn float %i.eo, %i.em
  %i.eq = load float, ptr %i.bm, align 8, !tbaa !13
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ep, float %i.eq)
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, %i.en
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.et = fmul reassoc nsz arcp contract afn float %i.eb, 6.553600e+04
  %i.eu = fptosi float %i.et to i32
  %i.ev = tail call i32 @llvm.smax.i32(i32 %i.eu, i32 0)
  %i.ew = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 65535)
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %i.fa = phi reassoc nsz arcp contract afn float [ %i.ei, %bb.o ], [ %i.es, %bb.q ], [ %i.ez, %bb.r ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cm
  store float %i.fa, ptr %i.fb, align 4, !tbaa !13
  br label %bb.cj

bb.t:                                             ; preds = %bb.f
  %i.fc = fcmp reassoc nsz arcp contract afn ogt float %i.bt, f0x3C23D70A
  %i.fd = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !13 ; 2 uses
  br i1 %i.fc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, %i.ci
  %i.fh = load float, ptr %i.br, align 4, !tbaa !13
  %i.fi = fdiv reassoc nsz arcp contract afn float %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fd
  store float %i.fi, ptr %i.fj, align 4, !tbaa !13
  %i.fk = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !13
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, %i.ci
  %i.fo = load float, ptr %i.br, align 4, !tbaa !13
  %i.fp = fdiv reassoc nsz arcp contract afn float %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fk
  store float %i.fp, ptr %i.fq, align 4, !tbaa !13
  br label %bb.cj

bb.v:                                             ; preds = %bb.t
  %i.fr = fmul reassoc nsz arcp contract afn float %i.ff, %i.x
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fd
  store float %i.fr, ptr %i.fs, align 4, !tbaa !13
  %i.ft = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !13
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, %i.x
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ft
  store float %i.fw, ptr %i.fx, align 4, !tbaa !13
  br label %bb.cj

bb.w:                                             ; preds = %bb.f
  %i.fy = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !13
  %i.ga = load float, ptr %i.br, align 4, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !13
  %i.gf = fmul reassoc nsz arcp contract afn float %i.fz, 2.000000e-03
  %i.gg = fmul reassoc nsz arcp contract afn float %i.ga, 8.620690e-03
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, f0x3E0D3DCB ; 8 uses
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gc, 5.000000e-03
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gh, %i.gf ; 5 uses
  %i.gk = fcmp reassoc nsz arcp contract afn ogt float %i.gj, f0x3E53DCB1
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gj, %i.gj
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gl, %i.gj
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gj, f0x3E038026
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, f0xBC911AA6
  %i.gp = select reassoc nsz arcp contract afn i1 %i.gk, float %i.gm, float %i.go ; 2 uses
  %i.gq = fcmp reassoc nsz arcp contract afn ogt float %i.gh, f0x3E53DCB1
  %i.gr = fmul reassoc nsz arcp contract afn float %i.gh, %i.gh
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gr, %i.gh
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gh, f0x3E038026
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, f0xBC911AA6
  %i.gv = select reassoc nsz arcp contract afn i1 %i.gq, float %i.gs, float %i.gu ; 3 uses
  %i.gw = fsub reassoc nsz arcp contract afn float %i.gh, %i.gi ; 5 uses
  %i.gx = fcmp reassoc nsz arcp contract afn ogt float %i.gw, f0x3E53DCB1
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gw, %i.gw
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, %i.gw
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gw, f0x3E038026
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, f0xBC911AA6
  %i.hc = select reassoc nsz arcp contract afn i1 %i.gx, float %i.gz, float %i.hb ; 2 uses
  %i.hd = fadd reassoc nsz arcp contract afn float %i.gh, %i.ge
  %i.he = fmul reassoc nsz arcp contract afn float %i.hd, 0.000000e+00 ; 5 uses
  %i.hf = fcmp reassoc nsz arcp contract afn ogt float %i.he, f0x3E53DCB1
  %i.hg = fmul reassoc ninf nsz arcp contract afn float %i.he, %i.he
  %i.hh = fmul reassoc ninf nsz arcp contract afn float %i.hg, %i.he
  %i.hi = fadd reassoc nsz arcp contract afn float %i.he, f0xBC911AA6
  %i.hj = select reassoc nsz arcp contract afn i1 %i.hf, float %i.hh, float %i.hi
  %i.hk = fmul reassoc nsz arcp contract afn float %i.gp, 9.642000e-01 ; 2 uses
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hc, f0x3F532CA5 ; 2 uses
  %i.hm = fcmp reassoc nsz arcp contract afn olt float %i.hk, %i.k
  br i1 %i.hm, label %bb.ai, label %bb.aj

bb.x:                                             ; preds = %bb.aq
  %i.hn = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.kf) #24
  br label %bb.z

bb.y:                                             ; preds = %bb.aq
  %i.ho = fmul reassoc nsz arcp contract afn float %i.jc, f0x410137F7
  %i.hp = fadd reassoc nsz arcp contract afn float %i.ho, f0x3E0D3DCB
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.hq = phi reassoc nsz arcp contract afn float [ %i.hn, %bb.x ], [ %i.hp, %bb.y ]
  %i.hr = fcmp reassoc nsz arcp contract afn ogt float %i.jq, f0x3C111AA7
  br i1 %i.hr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hs = fmul reassoc nsz arcp contract afn float %i.jq, f0x40F92F69
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hs, f0x3E0D3DCB
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hu = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.jq) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hv = phi reassoc nsz arcp contract afn float [ %i.hu, %bb.ab ], [ %i.ht, %bb.aa ] ; 3 uses
end_hunk_0
begin_hunk_1_@_add_node:bb.a

vector.ph:                                        ; preds = %.lr.ph37.preheader
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  %i.l = sub nsw i64 %i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = sub i64 %i.i, %index
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -64
  %interleaved.vec = load <16 x float>, ptr %i.o, align 4, !tbaa !13
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -56
  store <16 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge38, label %.lr.ph37.preheader55

.lr.ph37.preheader55:                             ; preds = %.lr.ph37.preheader, %middle.block
  %indvars.iv41.ph = phi i64 [ %i.i, %.lr.ph37.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph37

._crit_edge38:                                    ; preds = %.lr.ph37, %middle.block, %.thread.._crit_edge38_crit_edge
  %.247 = phi i32 [ %.248, %.thread.._crit_edge38_crit_edge ], [ %.2, %middle.block ], [ %.2, %.lr.ph37 ]
  %.pre-phi = phi i64 [ %.pre44, %.thread.._crit_edge38_crit_edge ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph37 ]
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre-phi ; 2 uses
  store float %2, ptr %i.r, align 4, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %3, ptr %i.s, align 4, !tbaa !51
  %i.t = add nsw i32 %.pre, 1
  store i32 %i.t, ptr %1, align 4, !tbaa !14
  ret i32 %.247

.lr.ph37:                                         ; preds = %.lr.ph37.preheader55, %.lr.ph37
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.lr.ph37 ], [ %indvars.iv41.ph, %.lr.ph37.preheader55 ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %0, i64 %indvars.iv41 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load <2 x float>, ptr %i.v, align 4, !tbaa !13
  store <2 x float> %i.w, ptr %i.u, align 4, !tbaa !13
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, -1 ; 2 uses
  %i.x = icmp sgt i64 %indvars.iv.next42, %i.j
  br i1 %i.x, label %.lr.ph37, label %._crit_edge38, !llvm.loop !303
}

declare void @gtk_widget_grab_focus(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc float @dt_draw_curve_calc_value(ptr nofree noundef readonly captures(none) %0, float noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = alloca [20 x float], align 16            ; 7 uses
  %i.b = alloca [20 x float], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !71    ; 5 uses
  %i.e = zext i8 %i.d to i32
  %.not35 = icmp eq i8 %i.d, 0
  br i1 %.not35, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %wide.trip.count = zext i8 %i.d to i64          ; 6 uses
  %min.iters.check = icmp ult i8 %i.d, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i8 %i.d, 16
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 240          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %wide.vec = load <16 x float>, ptr %i.h, align 4, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec38 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec39 = load <16 x float>, ptr %i.j, align 4, !tbaa !13 ; 2 uses
  %strided.vec40 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec41 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <8 x float> %strided.vec, ptr %i.k, align 16, !tbaa !13
  store <8 x float> %strided.vec40, ptr %i.l, align 16, !tbaa !13
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store <8 x float> %strided.vec38, ptr %i.m, align 16, !tbaa !13
  store <8 x float> %strided.vec41, ptr %i.n, align 16, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !147

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %wide.trip.count, 252        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index43
  %wide.vec44 = load <8 x float>, ptr %i.p, align 4, !tbaa !13 ; 2 uses
  %strided.vec45 = shufflevector <8 x float> %wide.vec44, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec46 = shufflevector <8 x float> %wide.vec44, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index43
  store <4 x float> %strided.vec45, ptr %i.q, align 16, !tbaa !13
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index43
  store <4 x float> %strided.vec46, ptr %i.r, align 16, !tbaa !13
  %index.next47 = add nuw i64 %index43, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next47, %n.vec42
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !305

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %n.vec42, %wide.trip.count
  br i1 %cmp.n48, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.t = load i32, ptr %0, align 8, !tbaa !70
  %i.u = call ptr @interpolate_set(i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.t) #22 ; 3 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %bb.b

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !308
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !309
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !306

bb.b:                                             ; preds = %._crit_edge
  %i.ab = load i8, ptr %i.c, align 4, !tbaa !71
  %i.ac = zext i8 %i.ab to i32
  %i.ad = load i32, ptr %0, align 8, !tbaa !70
  %i.ae = call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef %i.ac, ptr noundef nonnull %i.a, float noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, i32 noundef %i.ad) #22
  call void @free(ptr noundef nonnull %i.u) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.026 = phi nsz float [ %i.ae, %bb.b ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !310 ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %.026, %i.ag
  %.026. = select reassoc nsz arcp contract afn i1 %i.ah, float %.026, float %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !311 ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %.026., %i.aj
  %spec.select = select reassoc nsz arcp contract afn i1 %i.ak, float %.026., float %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret float %spec.select
}

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #3

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <10 x float> @llvm.masked.load.v10f32.p0(ptr captures(none), <10 x i1>, <10 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS15dt_iop_module_t", !15, i64 0}
!18 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !15, i64 0}
!19 = !{!"p1 _ZTS18dt_histogram_roi_t", !15, i64 0}
!20 = !{!"dt_dev_histogram_collection_params_t", !19, i64 0, !8, i64 8}
!21 = !{!"p1 int", !15, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !22, i64 8, !8, i64 16, !8, i64 20}
!24 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !12, i64 16}
!25 = !{!"short", !7, i64 0}
!26 = !{!"", !25, i64 0, !25, i64 2}
!27 = !{!"", !8, i64 0, !7, i64 16}
!28 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !26, i64 48, !27, i64 64, !7, i64 96, !8, i64 112}
!29 = !{!"p1 _ZTS11_GHashTable", !15, i64 0}
!30 = !{!"p1 float", !15, i64 0}
!31 = !{!"dt_dev_distorted_mask_cache_t", !30, i64 0, !24, i64 8, !22, i64 32, !22, i64 40}
!32 = !{!"dt_dev_pixelpipe_iop_t", !17, i64 0, !18, i64 8, !15, i64 16, !15, i64 24, !8, i64 32, !8, i64 36, !20, i64 40, !21, i64 56, !23, i64 64, !7, i64 88, !12, i64 104, !8, i64 108, !8, i64 112, !22, i64 120, !8, i64 128, !8, i64 132, !24, i64 136, !24, i64 156, !24, i64 176, !24, i64 196, !8, i64 216, !8, i64 220, !28, i64 224, !28, i64 352, !7, i64 480, !8, i64 516, !29, i64 520, !31, i64 528, !31, i64 576}
!33 = !{!32, !15, i64 16}
!34 = !{!"p1 _ZTS8_GModule", !15, i64 0}
!35 = !{!"p1 _ZTS12dt_develop_t", !15, i64 0}
!36 = !{!"dt_pthread_mutex_t", !7, i64 0}
!37 = !{!"p1 _ZTS25dt_develop_blend_params_t", !15, i64 0}
!38 = !{!"", !29, i64 0, !29, i64 8}
!39 = !{!"", !17, i64 0, !8, i64 8}
!40 = !{!"", !38, i64 0, !39, i64 16}
!41 = !{!"p1 _ZTS10_GtkWidget", !15, i64 0}
!42 = !{!"p1 _ZTS7_GSList", !15, i64 0}
!43 = !{!"p1 _ZTS18dt_iop_module_so_t", !15, i64 0}
!44 = !{!"dt_iop_module_t", !8, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !34, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !21, i64 608, !23, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !35, i64 664, !8, i64 672, !8, i64 676, !15, i64 680, !15, i64 688, !8, i64 696, !15, i64 704, !36, i64 712, !15, i64 752, !15, i64 760, !37, i64 768, !37, i64 776, !15, i64 784, !40, i64 792, !41, i64 824, !41, i64 832, !41, i64 840, !41, i64 848, !41, i64 856, !41, i64 864, !41, i64 872, !8, i64 880, !41, i64 888, !41, i64 896, !41, i64 904, !42, i64 912, !42, i64 920, !41, i64 928, !41, i64 936, !8, i64 944, !43, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !41, i64 1096, !15, i64 1104, !8, i64 1112}
!45 = !{!"dt_iop_tonecurve_data_t", !7, i64 0, !7, i64 24, !7, i64 36, !7, i64 48, !7, i64 786480, !7, i64 786492, !8, i64 786540, !8, i64 786544, !8, i64 786548}
!46 = !{!45, !8, i64 786540}
!47 = !{!45, !8, i64 786544}
!48 = !{!"dt_iop_tonecurve_params_t", !7, i64 0, !7, i64 480, !7, i64 492, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516}
!49 = !{!48, !8, i64 504}
!50 = !{!"dt_iop_tonecurve_node_t", !12, i64 0, !12, i64 4}
!51 = !{!50, !12, i64 4}
!52 = !{!"p1 omnipotent char", !15, i64 0}
!53 = !{!"p1 _ZTS11dt_action_t", !15, i64 0}
!54 = !{!"dt_action_t", !8, i64 0, !52, i64 8, !52, i64 16, !15, i64 24, !53, i64 32, !53, i64 40}
!55 = !{!"dt_iop_module_so_t", !54, i64 0, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !34, i64 488, !7, i64 496, !15, i64 520, !8, i64 528, !15, i64 536, !8, i64 544, !8, i64 548}
!56 = !{!50, !12, i64 0}
!57 = !{!"p1 _ZTS6_GList", !15, i64 0}
!58 = !{!"double", !7, i64 0}
!59 = !{!"p1 _ZTS15dt_draw_curve_t", !15, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"", !8, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 20, !7, i64 24}
!64 = !{!"p1 short", !15, i64 0}
!65 = !{!"", !8, i64 0, !8, i64 4, !64, i64 8}
!66 = !{!"dt_draw_curve_t", !63, i64 0, !65, i64 184}
!67 = !{!66, !64, i64 192}
!68 = !{!66, !8, i64 184}
!69 = !{!66, !8, i64 188}
!70 = !{!66, !8, i64 0}
!71 = !{!66, !7, i64 20}
!72 = !{!25, !25, i64 0}
!73 = !{!44, !15, i64 688}
!74 = !{!44, !15, i64 704}
!75 = !{!44, !15, i64 680}
!76 = !{!"p1 _ZTS15_GtkDrawingArea", !15, i64 0}
!77 = !{!"p1 _ZTS13_GtkSizeGroup", !15, i64 0}
!78 = !{!"p1 _ZTS12_GtkNotebook", !15, i64 0}
!79 = !{!"dt_iop_tonecurve_gui_data_t", !7, i64 0, !7, i64 24, !7, i64 36, !76, i64 48, !77, i64 56, !41, i64 64, !78, i64 72, !41, i64 80, !41, i64 88, !8, i64 96, !58, i64 104, !58, i64 112, !8, i64 120, !7, i64 124, !7, i64 1148, !7, i64 2172, !7, i64 3196, !7, i64 4220, !7, i64 5244, !12, i64 6268, !8, i64 6272, !41, i64 6280, !41, i64 6288}
!80 = !{!79, !41, i64 88}
!81 = !{!79, !41, i64 6288}
!82 = !{!79, !41, i64 6280}
!83 = !{!79, !12, i64 6268}
!84 = !{!79, !8, i64 6272}
!85 = !{!79, !8, i64 96}
!86 = !{!79, !76, i64 48}
!87 = !{!79, !78, i64 72}
!88 = !{!79, !41, i64 64}
!89 = !{!55, !15, i64 520}
!90 = !{!44, !15, i64 752}
!91 = !{!44, !41, i64 824}
!92 = !{!58, !58, i64 0}
!93 = !{!79, !8, i64 120}
!94 = !{!79, !41, i64 80}
!95 = !{!"dt_codepath_t", !8, i64 0}
!96 = !{!"p1 _ZTS11_JsonParser", !15, i64 0}
!97 = !{!"p1 _ZTS9dt_conf_t", !15, i64 0}
!98 = !{!"p1 _ZTS8dt_lib_t", !15, i64 0}
!99 = !{!"p1 _ZTS17dt_view_manager_t", !15, i64 0}
!100 = !{!"p1 _ZTS12dt_control_t", !15, i64 0}
!101 = !{!"p1 _ZTS19dt_control_signal_t", !15, i64 0}
!102 = !{!"p1 _ZTS12dt_gui_gtk_t", !15, i64 0}
!103 = !{!"p1 _ZTS17dt_mipmap_cache_t", !15, i64 0}
!104 = !{!"p1 _ZTS16dt_image_cache_t", !15, i64 0}
!105 = !{!"p1 _ZTS12dt_bauhaus_t", !15, i64 0}
!106 = !{!"p1 _ZTS13dt_database_t", !15, i64 0}
!107 = !{!"p1 _ZTS14dt_pwstorage_t", !15, i64 0}
!108 = !{!"p1 _ZTS11dt_camctl_t", !15, i64 0}
!109 = !{!"p1 _ZTS15dt_collection_t", !15, i64 0}
!110 = !{!"p1 _ZTS14dt_selection_t", !15, i64 0}
!111 = !{!"p1 _ZTS11dt_points_t", !15, i64 0}
!112 = !{!"p1 _ZTS12dt_imageio_t", !15, i64 0}
!113 = !{!"p1 _ZTS11dt_opencl_t", !15, i64 0}
!114 = !{!"p1 _ZTS9dt_dbus_t", !15, i64 0}
!115 = !{!"p1 _ZTS9dt_undo_t", !15, i64 0}
!116 = !{!"p1 _ZTS16dt_colorspaces_t", !15, i64 0}
!117 = !{!"p1 _ZTS9dt_l10n_t", !15, i64 0}
!118 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!119 = !{!"_Bool", !7, i64 0}
!120 = !{!"p1 _ZTS10_GMainLoop", !15, i64 0}
!121 = !{!"p1 _ZTS13_GMainContext", !15, i64 0}
!122 = !{!"p1 _ZTS12_GThreadPool", !15, i64 0}
!123 = !{!"p1 _ZTS12_GAsyncQueue", !15, i64 0}
!124 = !{!"", !118, i64 0, !36, i64 8, !7, i64 48, !119, i64 96, !119, i64 97, !120, i64 104, !121, i64 112, !122, i64 120, !123, i64 128, !123, i64 136, !123, i64 144}
!125 = !{!"p1 _ZTS10_GTimeZone", !15, i64 0}
!126 = !{!"p1 _ZTS10_GDateTime", !15, i64 0}
!127 = !{!"dt_sys_resources_t", !22, i64 0, !22, i64 8, !21, i64 16, !21, i64 24, !8, i64 32}
!128 = !{!"dt_backthumb_t", !58, i64 0, !58, i64 8, !8, i64 16, !8, i64 20}
!129 = !{!"dt_gimp_t", !8, i64 0, !52, i64 8, !52, i64 16, !8, i64 24, !8, i64 28}
!130 = !{!"dt_splash_t", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !8, i64 32}
!131 = !{!"darktable_t", !95, i64 0, !8, i64 4, !8, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !96, i64 48, !97, i64 56, !35, i64 64, !98, i64 72, !99, i64 80, !100, i64 88, !101, i64 96, !102, i64 104, !103, i64 112, !104, i64 120, !105, i64 128, !106, i64 136, !107, i64 144, !108, i64 152, !109, i64 160, !110, i64 168, !111, i64 176, !112, i64 184, !113, i64 192, !114, i64 200, !115, i64 208, !116, i64 216, !117, i64 224, !7, i64 232, !36, i64 2792, !36, i64 2832, !36, i64 2872, !36, i64 2912, !36, i64 2952, !36, i64 2992, !52, i64 3032, !52, i64 3040, !52, i64 3048, !52, i64 3056, !52, i64 3064, !52, i64 3072, !52, i64 3080, !52, i64 3088, !52, i64 3096, !52, i64 3104, !52, i64 3112, !52, i64 3120, !52, i64 3128, !124, i64 3136, !57, i64 3288, !58, i64 3296, !57, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !125, i64 3520, !126, i64 3528, !127, i64 3536, !128, i64 3576, !129, i64 3600, !130, i64 3632, !8, i64 3672}
!132 = !{!131, !102, i64 104}
!133 = !{!"p1 _ZTS7dt_ui_t", !15, i64 0}
!134 = !{!"dt_gui_widgets_t", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!135 = !{!"dt_gui_scrollbars_t", !41, i64 0, !41, i64 8, !8, i64 16}
!136 = !{!"p1 _ZTS14_cairo_surface", !15, i64 0}
!137 = !{!"dt_gui_gtk_t", !133, i64 0, !134, i64 8, !135, i64 56, !136, i64 80, !8, i64 88, !52, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !58, i64 1384, !58, i64 1392, !58, i64 1400, !58, i64 1408, !41, i64 1416, !58, i64 1424, !58, i64 1432, !58, i64 1440, !58, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!138 = !{!79, !77, i64 56}
!139 = !{!137, !58, i64 1432}
!140 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!141 = !{!140, !8, i64 8}
!142 = !{!"p1 _ZTS10_GdkWindow", !15, i64 0}
!143 = !{!"p1 double", !15, i64 0}
!144 = !{!"p1 _ZTS10_GdkDevice", !15, i64 0}
!145 = !{!"llvm.loop.unroll.disable"}
!146 = !{!131, !35, i64 64}
!147 = !{!"branch_weights", i32 4, i32 12}
!148 = !{!"dt_iop_tonecurve_params_v5_t", !7, i64 0, !7, i64 480, !7, i64 492, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516}
!149 = !{!148, !8, i64 504}
!150 = !{!"dt_iop_tonecurve_params_v1_t", !7, i64 0, !7, i64 24, !8, i64 48}
!151 = !{!150, !8, i64 48}
!152 = !{!148, !8, i64 508}
!153 = !{!148, !8, i64 512}
!154 = !{!148, !8, i64 516}
!155 = !{!32, !8, i64 132}
!156 = !{!44, !35, i64 664}
!157 = !{!24, !8, i64 8}
!158 = !{!24, !8, i64 12}
!159 = !{!45, !8, i64 786548}
end_hunk_1
