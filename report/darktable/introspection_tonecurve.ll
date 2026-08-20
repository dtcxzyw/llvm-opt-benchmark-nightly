inline.NumInlined: 147
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 58
begin_hunk_0_@legacy_params:bb.a
  %i.e = shufflevector <10 x float> %i.d, <10 x float> poison, <8 x i32> <i32 0, i32 6, i32 1, i32 7, i32 2, i32 8, i32 3, i32 9>
  store <8 x float> %i.e, ptr %i.a, align 4, !tbaa !12
  %i.f = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.b, <8 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true>, <8 x float> poison), !tbaa !12
  %i.g = shufflevector <8 x float> %i.f, <8 x float> poison, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  store <4 x float> %i.g, ptr %i.c, align 4, !tbaa !12
  store <4 x i32> <i32 6, i32 3, i32 3, i32 0>, ptr %.sroa.3.0..sroa_idx, align 4
  store i32 1, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  store i32 %i.i, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !18
  store i32 0, ptr %.sroa.1024.0..sroa_idx, align 4, !tbaa !19
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !20
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
  %i.q = load <2 x i32>, ptr %i.o, align 4, !tbaa !21
  store <2 x i32> %i.q, ptr %i.p, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  store i32 0, ptr %i.r, align 4, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 516
  store i32 0, ptr %i.s, align 4, !tbaa !20
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.t = tail call noalias dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #23 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %i.t, ptr noundef nonnull align 4 dereferenceable(516) %1, i64 516, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 516
  store i32 0, ptr %i.u, align 4, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %.preheader, %bb.b, %bb.c
  %.sink = phi ptr [ %i.t, %bb.c ], [ %i.j, %bb.b ], [ %i.a, %.preheader ]
  store ptr %.sink, ptr %3, align 8, !tbaa !22
  store i32 520, ptr %4, align 4, !tbaa !21
  store i32 5, ptr %5, align 4, !tbaa !21
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit199, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !41  ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = tail call ptr @dt_ioppr_add_profile_info_to_list(ptr noundef %i.g, i32 noundef 21, ptr noundef nonnull @.str.6, i32 noundef 0) #22 ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 786480 ; 9 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !12
  %i.k = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 786492 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 786504
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 786516
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 786528
  %i.p = tail call <10 x float> @llvm.masked.load.v10f32.p0(ptr nonnull align 4 %i.l, <10 x i1> <i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true, i1 false, i1 false, i1 true>, <10 x float> poison), !tbaa !12
  %i.q = shufflevector <10 x float> %i.p, <10 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.r = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.q ; 3 uses
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.t = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2668
  %i.w = load float, ptr %i.v, align 4, !tbaa !12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 786540
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !56
  %i.af = shl nsw i64 %i.z, 2
  %i.ag = mul i64 %i.af, %i.ac                    ; 2 uses
  %.not204 = icmp eq i64 %i.ag, 0
  br i1 %.not204, label %.loopexit199, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 786544
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 786484 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 786488 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 786548
  %.not.i = icmp eq ptr %i.h, null
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 852
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 772
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 776
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 720
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 780
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 784
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 788
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 728
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 792
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 796
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 800
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 592 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 596 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 600 ; 2 uses
  %i.bd = icmp eq i32 %i.ai, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 262192 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 786508
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 786512
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 786496
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 786500
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 524336 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 786532
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 786536
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 786520
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 786524
  %i.bo = extractelement <4 x float> %i.r, i64 0
  %i.bp = extractelement <4 x float> %i.r, i64 2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.cj
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cj ] ; 9 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 10 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12 ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, f0x3C23D70A ; 3 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.bs, %i.k
  br i1 %i.bt, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bu = fmul reassoc nsz arcp contract afn float %i.br, 6.553600e+02
  %i.bv = fptosi float %i.bu to i32
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.bx = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 65535)
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cb = load float, ptr %i.aj, align 4, !tbaa !12
  %i.cc = load float, ptr %i.i, align 8, !tbaa !12
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.bs
  %i.ce = load float, ptr %i.ak, align 8, !tbaa !12
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cd, float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.cb
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ch = phi reassoc nsz arcp contract afn float [ %i.ca, %bb.d ], [ %i.cg, %bb.e ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  store float %i.ch, ptr %i.ci, align 4, !tbaa !12
  switch i32 %i.ae, label %bb.cj [
    i32 0, label %bb.g
    i32 1, label %bb.t
    i32 2, label %bb.w
    i32 3, label %bb.ar
  ]

bb.g:                                             ; preds = %bb.f
  %i.cj = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cj
  %i.cl = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.cm = load <2 x float>, ptr %i.ck, align 4, !tbaa !12
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, splat (float 3.906250e-03) ; 3 uses
  %i.co = fadd reassoc nsz arcp contract afn <2 x float> %i.cn, splat (float 5.000000e-01) ; 5 uses
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, splat (float 6.553600e+04)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cj
  %i.cr = fptosi <2 x float> %i.cp to <2 x i32>
  %i.cs = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cr, <2 x i32> zeroinitializer)
  %6 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.cs, <2 x i32> splat (i32 65535)) ; 2 uses
  %7 = extractelement <2 x i32> %6, i64 0
  %i.ct = zext nneg i32 %7 to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !12
  store float %i.cv, ptr %i.cq, align 4, !tbaa !12
  %i.cw = extractelement <2 x i32> %6, i64 1
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !12
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cl
  store float %i.cz, ptr %i.da, align 4, !tbaa !12
  br label %bb.cj

bb.i:                                             ; preds = %bb.g
  %i.db = extractelement <2 x float> %i.co, i64 0 ; 3 uses
  %i.dc = fcmp reassoc nsz arcp contract afn ogt float %i.db, %i.bo
  br i1 %i.dc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dd = load float, ptr %i.bh, align 8, !tbaa !12
  %i.de = load float, ptr %i.l, align 4, !tbaa !12
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, %i.db
  %i.dg = load float, ptr %i.bi, align 4, !tbaa !12
  %i.dh = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.df, float %i.dg)
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.dd
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.dj = fcmp olt <2 x float> %i.co, %i.t
  %i.dk = extractelement <2 x i1> %i.dj, i64 0
  br i1 %i.dk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dl = extractelement <2 x float> %i.cn, i64 0
  %i.dm = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.dl
  %i.dn = load float, ptr %i.bf, align 4, !tbaa !12
  %i.do = load float, ptr %i.m, align 8, !tbaa !12
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.dm
  %i.dq = load float, ptr %i.bg, align 8, !tbaa !12
  %i.dr = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dp, float %i.dq)
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.dn
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dt = fmul reassoc nsz arcp contract afn float %i.db, 6.553600e+04
  %i.du = fptosi float %i.dt to i32
  %i.dv = tail call i32 @llvm.smax.i32(i32 %i.du, i32 0)
  %i.dw = tail call i32 @llvm.umin.i32(i32 %i.dv, i32 65535)
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.dx
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %i.ea = phi reassoc nsz arcp contract afn float [ %i.di, %bb.j ], [ %i.ds, %bb.l ], [ %i.dz, %bb.m ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cj
  store float %i.ea, ptr %i.eb, align 4, !tbaa !12
  %i.ec = extractelement <2 x float> %i.co, i64 1 ; 3 uses
  %i.ed = fcmp reassoc nsz arcp contract afn ogt float %i.ec, %i.bp
  br i1 %i.ed, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ee = load float, ptr %i.bm, align 8, !tbaa !12
  %i.ef = load float, ptr %i.n, align 4, !tbaa !12
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.ec
  %i.eh = load float, ptr %i.bn, align 4, !tbaa !12
  %i.ei = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.eg, float %i.eh)
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ei, %i.ee
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ek = fcmp olt <2 x float> %i.co, %i.t
  %i.el = extractelement <2 x i1> %i.ek, i64 1
  br i1 %i.el, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.em = extractelement <2 x float> %i.cn, i64 1
  %i.en = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.em
  %i.eo = load float, ptr %i.bk, align 4, !tbaa !12
  %i.ep = load float, ptr %i.o, align 8, !tbaa !12
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, %i.en
  %i.er = load float, ptr %i.bl, align 8, !tbaa !12
  %i.es = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.eq, float %i.er)
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, %i.eo
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.eu = fmul reassoc nsz arcp contract afn float %i.ec, 6.553600e+04
  %i.ev = fptosi float %i.eu to i32
  %i.ew = tail call i32 @llvm.smax.i32(i32 %i.ev, i32 0)
  %i.ex = tail call i32 @llvm.umin.i32(i32 %i.ew, i32 65535)
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %i.fb = phi reassoc nsz arcp contract afn float [ %i.ej, %bb.o ], [ %i.et, %bb.q ], [ %i.fa, %bb.r ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cl
  store float %i.fb, ptr %i.fc, align 4, !tbaa !12
  br label %bb.cj

bb.t:                                             ; preds = %bb.f
  %i.fd = fcmp reassoc nsz arcp contract afn ogt float %i.bs, f0x3C23D70A
  %i.fe = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !12 ; 2 uses
  br i1 %i.fd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, %i.ch
  %i.fi = load float, ptr %i.bq, align 4, !tbaa !12
  %i.fj = fdiv reassoc nsz arcp contract afn float %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fe
  store float %i.fj, ptr %i.fk, align 4, !tbaa !12
  %i.fl = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !12
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, %i.ch
  %i.fp = load float, ptr %i.bq, align 4, !tbaa !12
  %i.fq = fdiv reassoc nsz arcp contract afn float %i.fo, %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fl
  store float %i.fq, ptr %i.fr, align 4, !tbaa !12
  br label %bb.cj

bb.v:                                             ; preds = %bb.t
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fg, %i.w
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fe
  store float %i.fs, ptr %i.ft, align 4, !tbaa !12
  %i.fu = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !12
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, %i.w
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fu
  store float %i.fx, ptr %i.fy, align 4, !tbaa !12
  br label %bb.cj

bb.w:                                             ; preds = %bb.f
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !12
  %i.gb = load float, ptr %i.bq, align 4, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !12
  %i.gg = fmul reassoc nsz arcp contract afn float %i.ga, 2.000000e-03
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gb, 8.620690e-03
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, f0x3E0D3DCB ; 8 uses
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gd, 5.000000e-03
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gi, %i.gg ; 5 uses
  %i.gl = fcmp reassoc nsz arcp contract afn ogt float %i.gk, f0x3E53DCB1
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gk, %i.gk
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gm, %i.gk
  %i.go = fmul reassoc nsz arcp contract afn float %i.gk, f0x3E038026
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, f0xBC911AA6
  %i.gq = select reassoc nsz arcp contract afn i1 %i.gl, float %i.gn, float %i.gp ; 2 uses
  %i.gr = fcmp reassoc nsz arcp contract afn ogt float %i.gi, f0x3E53DCB1
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gi, %i.gi
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gs, %i.gi
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gi, f0x3E038026
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, f0xBC911AA6
  %i.gw = select reassoc nsz arcp contract afn i1 %i.gr, float %i.gt, float %i.gv ; 3 uses
  %i.gx = fsub reassoc nsz arcp contract afn float %i.gi, %i.gj ; 5 uses
  %i.gy = fcmp reassoc nsz arcp contract afn ogt float %i.gx, f0x3E53DCB1
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gx, %i.gx
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.gx
  %i.hb = fmul reassoc nsz arcp contract afn float %i.gx, f0x3E038026
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, f0xBC911AA6
  %i.hd = select reassoc nsz arcp contract afn i1 %i.gy, float %i.ha, float %i.hc ; 2 uses
  %i.he = fadd reassoc nsz arcp contract afn float %i.gi, %i.gf
  %i.hf = fmul reassoc nsz arcp contract afn float %i.he, 0.000000e+00 ; 5 uses
  %i.hg = fcmp reassoc nsz arcp contract afn ogt float %i.hf, f0x3E53DCB1
  %i.hh = fmul reassoc ninf nsz arcp contract afn float %i.hf, %i.hf
  %i.hi = fmul reassoc ninf nsz arcp contract afn float %i.hh, %i.hf
  %i.hj = fadd reassoc nsz arcp contract afn float %i.hf, f0xBC911AA6
  %i.hk = select reassoc nsz arcp contract afn i1 %i.hg, float %i.hi, float %i.hj
  %i.hl = fmul reassoc nsz arcp contract afn float %i.gq, 9.642000e-01 ; 2 uses
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hd, f0x3F532CA5 ; 2 uses
  %i.hn = fcmp reassoc nsz arcp contract afn olt float %i.hl, %i.k
  br i1 %i.hn, label %bb.ai, label %bb.aj

bb.x:                                             ; preds = %bb.aq
  %i.ho = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.kg) #24
  br label %bb.z

bb.y:                                             ; preds = %bb.aq
  %i.hp = fmul reassoc nsz arcp contract afn float %i.jd, f0x410137F7
  %i.hq = fadd reassoc nsz arcp contract afn float %i.hp, f0x3E0D3DCB
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.hr = phi reassoc nsz arcp contract afn float [ %i.ho, %bb.x ], [ %i.hq, %bb.y ]
  %i.hs = fcmp reassoc nsz arcp contract afn ogt float %i.jr, f0x3C111AA7
  br i1 %i.hs, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ht = fmul reassoc nsz arcp contract afn float %i.jr, f0x40F92F69
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, f0x3E0D3DCB
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hv = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.jr) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hw = phi reassoc nsz arcp contract afn float [ %i.hv, %bb.ab ], [ %i.hu, %bb.aa ] ; 2 uses
  %i.hx = fmul reassoc nsz arcp contract afn float %i.kf, f0x3F9B2B9B ; 2 uses
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
  %interleaved.vec = load <16 x float>, ptr %i.o, align 4, !tbaa !12
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -56
  store <16 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !324

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
  store float %2, ptr %i.r, align 4, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %3, ptr %i.s, align 4, !tbaa !68
  %i.t = add nsw i32 %.pre, 1
  store i32 %i.t, ptr %1, align 4, !tbaa !21
  ret i32 %.247

.lr.ph37:                                         ; preds = %.lr.ph37.preheader55, %.lr.ph37
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.lr.ph37 ], [ %indvars.iv41.ph, %.lr.ph37.preheader55 ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %0, i64 %indvars.iv41 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %i.w = load <2 x float>, ptr %i.v, align 4, !tbaa !12
  store <2 x float> %i.w, ptr %i.u, align 4, !tbaa !12
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, -1 ; 2 uses
  %i.x = icmp sgt i64 %indvars.iv.next42, %i.j
  br i1 %i.x, label %.lr.ph37, label %._crit_edge38, !llvm.loop !325
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
  %i.d = load i8, ptr %i.c, align 4, !tbaa !109   ; 5 uses
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

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %wide.vec = load <16 x float>, ptr %i.h, align 4, !tbaa !12 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec38 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec39 = load <16 x float>, ptr %i.j, align 4, !tbaa !12 ; 2 uses
  %strided.vec40 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec41 = shufflevector <16 x float> %wide.vec39, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <8 x float> %strided.vec, ptr %i.k, align 16, !tbaa !12
  store <8 x float> %strided.vec40, ptr %i.l, align 16, !tbaa !12
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store <8 x float> %strided.vec38, ptr %i.m, align 16, !tbaa !12
  store <8 x float> %strided.vec41, ptr %i.n, align 16, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !111

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %wide.trip.count, 252        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index43
  %wide.vec44 = load <8 x float>, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  %strided.vec45 = shufflevector <8 x float> %wide.vec44, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec46 = shufflevector <8 x float> %wide.vec44, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index43
  store <4 x float> %strided.vec45, ptr %i.q, align 16, !tbaa !12
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index43
  store <4 x float> %strided.vec46, ptr %i.r, align 16, !tbaa !12
  %index.next47 = add nuw i64 %index43, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next47, %n.vec42
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !327

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %n.vec42, %wide.trip.count
  br i1 %cmp.n48, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.t = load i32, ptr %0, align 8, !tbaa !108
  %i.u = call ptr @interpolate_set(i32 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.t) #22 ; 3 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %bb.b

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !328
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !330
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !331

bb.b:                                             ; preds = %._crit_edge
  %i.ab = load i8, ptr %i.c, align 4, !tbaa !109
  %i.ac = zext i8 %i.ab to i32
  %i.ad = load i32, ptr %0, align 8, !tbaa !108
  %i.ae = call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef %i.ac, ptr noundef nonnull %i.a, float noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, i32 noundef %i.ad) #22
  call void @free(ptr noundef nonnull %i.u) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.026 = phi nsz float [ %i.ae, %bb.b ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !332 ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %.026, %i.ag
  %.026. = select reassoc nsz arcp contract afn i1 %i.ah, float %.026, float %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !333 ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %.026., %i.aj
  %i.al = select reassoc nsz arcp contract afn i1 %i.ak, float %.026., float %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret float %i.al
}

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #3

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <10 x float> @llvm.masked.load.v10f32.p0(ptr captures(none), <10 x i1>, <10 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #8

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
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !9, i64 0}
!14 = !{!15, !8, i64 504}
!15 = !{!"dt_iop_tonecurve_params_v5_t", !9, i64 0, !9, i64 480, !9, i64 492, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516}
!16 = !{!17, !8, i64 48}
!17 = !{!"dt_iop_tonecurve_params_v1_t", !9, i64 0, !9, i64 24, !8, i64 48}
!18 = !{!15, !8, i64 508}
!19 = !{!15, !8, i64 512}
!20 = !{!15, !8, i64 516}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !9, i64 0}
!24 = !{!25, !8, i64 132}
!25 = !{!"dt_dev_pixelpipe_iop_t", !26, i64 0, !27, i64 8, !23, i64 16, !23, i64 24, !8, i64 32, !8, i64 36, !28, i64 40, !30, i64 56, !31, i64 64, !9, i64 88, !13, i64 104, !8, i64 108, !8, i64 112, !32, i64 120, !8, i64 128, !8, i64 132, !33, i64 136, !33, i64 156, !33, i64 176, !33, i64 196, !8, i64 216, !8, i64 220, !34, i64 224, !34, i64 352, !9, i64 480, !8, i64 516, !38, i64 520, !39, i64 528, !39, i64 576}
!26 = !{!"p1 _ZTS15dt_iop_module_t", !23, i64 0}
!27 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !23, i64 0}
!28 = !{!"dt_dev_histogram_collection_params_t", !29, i64 0, !8, i64 8}
!29 = !{!"p1 _ZTS18dt_histogram_roi_t", !23, i64 0}
!30 = !{!"p1 int", !23, i64 0}
!31 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !32, i64 8, !8, i64 16, !8, i64 20}
!32 = !{!"long", !9, i64 0}
!33 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !13, i64 16}
!34 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !35, i64 48, !37, i64 64, !9, i64 96, !8, i64 112}
!35 = !{!"", !36, i64 0, !36, i64 2}
!36 = !{!"short", !9, i64 0}
!37 = !{!"", !8, i64 0, !9, i64 16}
!38 = !{!"p1 _ZTS11_GHashTable", !23, i64 0}
!39 = !{!"dt_dev_distorted_mask_cache_t", !40, i64 0, !33, i64 8, !32, i64 32, !32, i64 40}
!40 = !{!"p1 float", !23, i64 0}
!41 = !{!25, !23, i64 16}
!42 = !{!43, !45, i64 664}
!43 = !{!"dt_iop_module_t", !8, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !23, i64 128, !23, i64 136, !23, i64 144, !23, i64 152, !23, i64 160, !23, i64 168, !23, i64 176, !23, i64 184, !23, i64 192, !23, i64 200, !23, i64 208, !23, i64 216, !23, i64 224, !23, i64 232, !23, i64 240, !23, i64 248, !23, i64 256, !23, i64 264, !23, i64 272, !23, i64 280, !23, i64 288, !23, i64 296, !23, i64 304, !23, i64 312, !23, i64 320, !23, i64 328, !23, i64 336, !23, i64 344, !23, i64 352, !23, i64 360, !23, i64 368, !23, i64 376, !23, i64 384, !23, i64 392, !23, i64 400, !23, i64 408, !23, i64 416, !23, i64 424, !23, i64 432, !23, i64 440, !44, i64 448, !9, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !9, i64 512, !9, i64 528, !9, i64 544, !9, i64 560, !9, i64 576, !9, i64 592, !30, i64 608, !31, i64 616, !9, i64 640, !8, i64 656, !8, i64 660, !45, i64 664, !8, i64 672, !8, i64 676, !23, i64 680, !23, i64 688, !8, i64 696, !23, i64 704, !46, i64 712, !23, i64 752, !23, i64 760, !47, i64 768, !47, i64 776, !23, i64 784, !48, i64 792, !51, i64 824, !51, i64 832, !51, i64 840, !51, i64 848, !51, i64 856, !51, i64 864, !51, i64 872, !8, i64 880, !51, i64 888, !51, i64 896, !51, i64 904, !52, i64 912, !52, i64 920, !51, i64 928, !51, i64 936, !8, i64 944, !53, i64 952, !8, i64 960, !9, i64 964, !8, i64 1092, !51, i64 1096, !23, i64 1104, !8, i64 1112}
!44 = !{!"p1 _ZTS8_GModule", !23, i64 0}
!45 = !{!"p1 _ZTS12dt_develop_t", !23, i64 0}
!46 = !{!"dt_pthread_mutex_t", !9, i64 0}
!47 = !{!"p1 _ZTS25dt_develop_blend_params_t", !23, i64 0}
!48 = !{!"", !49, i64 0, !50, i64 16}
!49 = !{!"", !38, i64 0, !38, i64 8}
!50 = !{!"", !26, i64 0, !8, i64 8}
!51 = !{!"p1 _ZTS10_GtkWidget", !23, i64 0}
!52 = !{!"p1 _ZTS7_GSList", !23, i64 0}
!53 = !{!"p1 _ZTS18dt_iop_module_so_t", !23, i64 0}
!54 = !{!33, !8, i64 8}
!55 = !{!33, !8, i64 12}
!56 = !{!57, !8, i64 786540}
!57 = !{!"dt_iop_tonecurve_data_t", !9, i64 0, !9, i64 24, !9, i64 36, !9, i64 48, !9, i64 786480, !9, i64 786492, !8, i64 786540, !8, i64 786544, !8, i64 786548}
!58 = !{!57, !8, i64 786544}
!59 = !{!57, !8, i64 786548}
!60 = !{!61, !8, i64 852}
!61 = !{!"dt_iop_order_iccprofile_info_t", !8, i64 0, !9, i64 4, !8, i64 516, !9, i64 576, !9, i64 640, !8, i64 704, !9, i64 712, !9, i64 736, !9, i64 768, !9, i64 816, !8, i64 852, !13, i64 856, !9, i64 896, !9, i64 960, !9, i64 1024, !9, i64 1048}
!62 = !{!61, !8, i64 704}
!63 = !{!40, !40, i64 0}
!64 = !{!65, !8, i64 508}
!65 = !{!"dt_iop_tonecurve_params_t", !9, i64 0, !9, i64 480, !9, i64 492, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516}
!66 = !{!65, !8, i64 504}
!67 = !{!65, !8, i64 512}
!68 = !{!69, !13, i64 4}
!69 = !{!"dt_iop_tonecurve_node_t", !13, i64 0, !13, i64 4}
!70 = !{!71, !23, i64 48}
!71 = !{!"dt_iop_module_so_t", !72, i64 0, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !23, i64 128, !23, i64 136, !23, i64 144, !23, i64 152, !23, i64 160, !23, i64 168, !23, i64 176, !23, i64 184, !23, i64 192, !23, i64 200, !23, i64 208, !23, i64 216, !23, i64 224, !23, i64 232, !23, i64 240, !23, i64 248, !23, i64 256, !23, i64 264, !23, i64 272, !23, i64 280, !23, i64 288, !23, i64 296, !23, i64 304, !23, i64 312, !23, i64 320, !23, i64 328, !23, i64 336, !23, i64 344, !23, i64 352, !23, i64 360, !23, i64 368, !23, i64 376, !23, i64 384, !23, i64 392, !23, i64 400, !23, i64 408, !23, i64 416, !23, i64 424, !23, i64 432, !23, i64 440, !23, i64 448, !23, i64 456, !23, i64 464, !23, i64 472, !23, i64 480, !44, i64 488, !9, i64 496, !23, i64 520, !8, i64 528, !23, i64 536, !8, i64 544, !8, i64 548}
!72 = !{!"dt_action_t", !8, i64 0, !73, i64 8, !73, i64 16, !23, i64 24, !74, i64 32, !74, i64 40}
!73 = !{!"p1 omnipotent char", !23, i64 0}
!74 = !{!"p1 _ZTS11dt_action_t", !23, i64 0}
!75 = !{!69, !13, i64 0}
!76 = !{!77, !73, i64 0}
!77 = !{!"", !73, i64 0, !73, i64 8, !73, i64 16, !8, i64 24, !13, i64 28, !65, i64 32}
!78 = !{!77, !73, i64 8}
!79 = !{!77, !73, i64 16}
!80 = !{!81, !8, i64 644}
!81 = !{!"dt_dev_pixelpipe_t", !82, i64 0, !8, i64 120, !32, i64 128, !40, i64 136, !8, i64 144, !8, i64 148, !13, i64 152, !8, i64 156, !8, i64 160, !34, i64 176, !86, i64 304, !86, i64 312, !86, i64 320, !86, i64 328, !87, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !73, i64 360, !32, i64 368, !8, i64 376, !8, i64 380, !13, i64 384, !9, i64 388, !32, i64 416, !46, i64 424, !46, i64 464, !46, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !88, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !9, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !89, i64 656, !8, i64 2544, !73, i64 2552, !8, i64 2560, !87, i64 2568, !87, i64 2576, !87, i64 2584, !8, i64 2592, !40, i64 2600, !32, i64 2608, !9, i64 2616, !9, i64 2632}
!82 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !32, i64 8, !32, i64 16, !83, i64 24, !84, i64 32, !85, i64 40, !84, i64 48, !30, i64 56, !30, i64 64, !32, i64 72, !8, i64 80, !32, i64 88, !32, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!83 = !{!"any p2 pointer", !23, i64 0}
!84 = !{!"p1 long", !23, i64 0}
!85 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !23, i64 0}
!86 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !23, i64 0}
!87 = !{!"p1 _ZTS6_GList", !23, i64 0}
!88 = !{!"dt_dev_detail_mask_t", !33, i64 0, !32, i64 24, !40, i64 32}
!89 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !8, i64 40, !9, i64 44, !9, i64 108, !9, i64 172, !9, i64 300, !9, i64 364, !9, i64 428, !9, i64 492, !32, i64 560, !8, i64 568, !9, i64 572, !9, i64 800, !9, i64 864, !9, i64 928, !9, i64 992, !8, i64 1120, !9, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !13, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !32, i64 1448, !32, i64 1456, !32, i64 1464, !32, i64 1472, !8, i64 1480, !34, i64 1488, !9, i64 1616, !73, i64 1656, !8, i64 1664, !8, i64 1668, !90, i64 1672, !91, i64 1680, !93, i64 1704, !36, i64 1736, !9, i64 1738, !8, i64 1748, !8, i64 1752, !13, i64 1756, !13, i64 1760, !9, i64 1776, !9, i64 1792, !9, i64 1840, !87, i64 1856, !94, i64 1864, !8, i64 1872, !8, i64 1876}
!90 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!91 = !{!"dt_image_geoloc_t", !92, i64 0, !92, i64 8, !92, i64 16}
!92 = !{!"double", !9, i64 0}
!93 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16}
!94 = !{!"p1 _ZTS16dt_cache_entry_t", !23, i64 0}
!95 = !{!25, !8, i64 36}
!96 = !{!97, !97, i64 0}
!97 = !{!"p1 _ZTS15dt_draw_curve_t", !23, i64 0}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = !{!102, !105, i64 192}
!102 = !{!"dt_draw_curve_t", !103, i64 0, !104, i64 184}
!103 = !{!"", !8, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !9, i64 20, !9, i64 24}
!104 = !{!"", !8, i64 0, !8, i64 4, !105, i64 8}
!105 = !{!"p1 short", !23, i64 0}
!106 = !{!102, !8, i64 184}
!107 = !{!102, !8, i64 188}
!108 = !{!102, !8, i64 0}
!109 = !{!102, !9, i64 20}
!110 = distinct !{!110, !99, !100}
!111 = !{!"branch_weights", i32 4, i32 12}
!112 = distinct !{!112, !99, !100}
!113 = distinct !{!113, !114}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = distinct !{!115, !99}
!116 = distinct !{!116, !100, !99}
!117 = !{!36, !36, i64 0}
!118 = distinct !{!118, !99, !100}
!119 = distinct !{!119, !99, !100}
!120 = distinct !{!120, !99, !100}
!121 = distinct !{!121, !114}
!122 = distinct !{!122, !99}
!123 = distinct !{!123, !99, !100}
!124 = distinct !{!124, !100, !99}
!125 = distinct !{!125, !99, !100}
!126 = distinct !{!126, !99, !100}
!127 = distinct !{!127, !99, !100}
!128 = distinct !{!128, !114}
!129 = distinct !{!129, !99}
!130 = distinct !{!130, !99, !100}
!131 = distinct !{!131, !100, !99}
!132 = distinct !{!132, !99, !100}
!133 = distinct !{!133, !99, !100}
!134 = !{!25, !8, i64 216}
!135 = !{!43, !23, i64 688}
!136 = distinct !{!136, !99, !100}
!137 = distinct !{!137, !99, !100}
!138 = distinct !{!138, !114}
!139 = distinct !{!139, !99, !100}
!140 = distinct !{!140, !99, !100}
!141 = distinct !{!141, !114}
!142 = distinct !{!142, !99}
!143 = distinct !{!143, !99, !100}
!144 = distinct !{!144, !99, !100}
!145 = distinct !{!145, !114}
!146 = distinct !{!146, !99}
!147 = distinct !{!147, !99, !100}
!148 = distinct !{!148, !99}
!149 = !{!43, !23, i64 704}
!150 = !{!43, !23, i64 680}
!151 = !{!152, !51, i64 88}
!152 = !{!"dt_iop_tonecurve_gui_data_t", !9, i64 0, !9, i64 24, !9, i64 36, !153, i64 48, !154, i64 56, !51, i64 64, !155, i64 72, !51, i64 80, !51, i64 88, !8, i64 96, !92, i64 104, !92, i64 112, !8, i64 120, !9, i64 124, !9, i64 1148, !9, i64 2172, !9, i64 3196, !9, i64 4220, !9, i64 5244, !13, i64 6268, !8, i64 6272, !51, i64 6280, !51, i64 6288}
!153 = !{!"p1 _ZTS15_GtkDrawingArea", !23, i64 0}
!154 = !{!"p1 _ZTS13_GtkSizeGroup", !23, i64 0}
!155 = !{!"p1 _ZTS12_GtkNotebook", !23, i64 0}
!156 = !{!152, !51, i64 6288}
!157 = !{!65, !8, i64 516}
end_hunk_1
