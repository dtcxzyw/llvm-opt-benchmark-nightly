Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512?download=true
inline.NumInlined: 111
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4ncnnL12cubic_coeffsEiiPiPfi:bb.a
  %i.eg = fmul fast float %i.ed, %i.ef
  %i.eh = fadd fast float %i.eg, 1.000000e+00     ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 3 uses
  store float %i.eh, ptr %i.ei, align 4, !tbaa !70
  %i.ej = fmul fast float %i.dw, %i.dw
  %i.ek = fmul fast float %i.dw, 1.250000e+00
  %i.el = fadd fast float %i.ek, -2.250000e+00
  %i.em = fmul fast float %i.ej, %i.el            ; 2 uses
  %i.en = fadd fast float %i.em, 1.000000e+00     ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 3 uses
  store float %i.en, ptr %i.eo, align 4, !tbaa !70
  %i.ep = fadd fast float %i.em, %i.eh
  %i.eq = fadd fast float %i.ep, %i.ec            ; 2 uses
  %i.er = fneg fast float %i.eq                   ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 3 uses
  store float %i.er, ptr %i.es, align 4, !tbaa !70
  %i.et = icmp slt i32 %i.dr, 0
  br i1 %i.et, label %.thread, label %bb.d

.thread:                                          ; preds = %vec.epilog.scalar.ph
  %i.eu = fadd fast float %i.eq, 1.000000e+00
  br label %.sink.split

bb.d:                                             ; preds = %vec.epilog.scalar.ph
  %i.ev = icmp eq i32 %i.dr, 0
  br i1 %i.ev, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ew = fadd fast float %i.eh, %i.ec
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.thread
  %.sink100 = phi float [ %i.eu, %.thread ], [ %i.ew, %bb.e ] ; 2 uses
  %.sink99 = phi float [ %i.er, %.thread ], [ %i.en, %bb.e ] ; 2 uses
  %.sink = phi float [ 0.000000e+00, %.thread ], [ %i.er, %bb.e ] ; 2 uses
  store float %.sink100, ptr %i.du, align 4, !tbaa !70
  store float %.sink99, ptr %i.ei, align 4, !tbaa !70
  store float %.sink, ptr %i.eo, align 4, !tbaa !70
  store float 0.000000e+00, ptr %i.es, align 4, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.ex = phi float [ %i.eh, %bb.d ], [ %.sink99, %.sink.split ]
  %i.ey = phi float [ %i.er, %bb.d ], [ 0.000000e+00, %.sink.split ]
  %i.ez = phi float [ %i.en, %bb.d ], [ %.sink, %.sink.split ]
  %i.fa = phi float [ %i.ec, %bb.d ], [ %.sink100, %.sink.split ] ; 3 uses
  %.1 = phi i32 [ %i.dr, %bb.d ], [ 1, %.sink.split ] ; 3 uses
  %i.fb = icmp eq i32 %.1, %i.j
  br i1 %i.fb, label %.thread91, label %bb.g

.thread91:                                        ; preds = %bb.f
  %i.fc = fadd fast float %i.ey, %i.ez
  br label %.sink.split101

bb.g:                                             ; preds = %bb.f
  %.not89 = icmp slt i32 %.1, %i.k
  br i1 %.not89, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fd = fsub fast float 1.000000e+00, %i.fa
  br label %.sink.split101

.sink.split101:                                   ; preds = %bb.h, %.thread91
  %.sink104 = phi float [ %i.fc, %.thread91 ], [ %i.fd, %bb.h ]
  %.sink103 = phi float [ %i.ex, %.thread91 ], [ %i.fa, %bb.h ]
  %.sink102 = phi float [ %i.fa, %.thread91 ], [ 0.000000e+00, %bb.h ]
  store float %.sink104, ptr %i.es, align 4, !tbaa !70
  store float %.sink103, ptr %i.eo, align 4, !tbaa !70
  store float %.sink102, ptr %i.ei, align 4, !tbaa !70
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %.sink.split101, %bb.g
  %.3 = phi i32 [ %.1, %bb.g ], [ %i.l, %.sink.split101 ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.3, ptr %i.fe, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !136
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not157 = icmp sgt i32 %i.k, %i.j
  br i1 %.not157, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph160.split.preheader, label %._crit_edge161

.lr.ph160.split.preheader:                        ; preds = %.lr.ph160
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph160.split

.lr.ph160.split:                                  ; preds = %.lr.ph160.split.preheader, %._crit_edge156
  %i.t = phi i32 [ %i.p, %.lr.ph160.split.preheader ], [ %i.am, %._crit_edge156 ] ; 2 uses
  %indvars.iv180 = phi i64 [ %i.r, %.lr.ph160.split.preheader ], [ %indvars.iv.next181, %._crit_edge156 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !26
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv180, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !29
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph155.preheader, label %._crit_edge156

.lr.ph155.preheader:                              ; preds = %.lr.ph160.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72
  %i.ae = load ptr, ptr %4, align 8, !tbaa !45
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv180, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !29
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !25
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph155

._crit_edge156:                                   ; preds = %._crit_edge150, %.lr.ph160.split
  %i.am = phi i32 [ %i.t, %.lr.ph160.split ], [ %i.iy, %._crit_edge150 ]
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge161, label %.lr.ph160.split, !llvm.loop !137

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %._crit_edge150
  %i.an = phi i32 [ %.pre, %.lr.ph155.preheader ], [ %i.eb, %._crit_edge150 ] ; 4 uses
  %indvars.iv177 = phi i64 [ 0, %.lr.ph155.preheader ], [ %indvars.iv.next178, %._crit_edge150 ] ; 2 uses
  %.0113152 = phi ptr [ %i.ad, %.lr.ph155.preheader ], [ %i.iw, %._crit_edge150 ] ; 5 uses
  %.0114151 = phi ptr [ %i.ak, %.lr.ph155.preheader ], [ %i.ix, %._crit_edge150 ] ; 8 uses
  %.0114151206 = ptrtoaddr ptr %.0114151 to i64   ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv177
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.as ; 11 uses
  %i.au = load float, ptr %.0113152, align 4, !tbaa !70 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0113152, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !70 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0113152, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !70 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0113152, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !70 ; 6 uses
  %i.bb = insertelement <16 x float> poison, float %i.au, i64 0
  %i.bc = shufflevector <16 x float> %i.bb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bd = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.be = shufflevector <16 x float> %i.bd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bf = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.bg = shufflevector <16 x float> %i.bf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bh = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.bi = shufflevector <16 x float> %i.bh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bj = icmp sgt i32 %i.an, 15
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph155, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph155 ] ; 3 uses
  %i.bk = phi i32 [ %i.cc, %.lr.ph ], [ %i.an, %.lr.ph155 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bm = sext i32 %i.bk to i64                   ; 2 uses
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load <16 x float>, ptr %i.bo, align 64, !tbaa !17
  %i.bq = load <16 x float>, ptr %i.bl, align 64, !tbaa !17
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bs = load <16 x float>, ptr %i.br, align 64, !tbaa !17
  %i.bt = shl nuw nsw i32 %i.bk, 1
  %9 = zext nneg i32 %i.bt to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %9
  %i.bv = load <16 x float>, ptr %i.bu, align 64, !tbaa !17
  %i.bw = fmul fast <16 x float> %i.bp, %i.bc
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.be, <16 x float> nofpclass(nan inf) %i.bw)
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bg, <16 x float> nofpclass(nan inf) %i.bx)
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.bi, <16 x float> nofpclass(nan inf) %i.by)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %indvars.iv
  store <16 x float> %i.bz, ptr %i.ca, align 64, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.cb = or disjoint i64 %indvars.iv.next, 15
  %i.cc = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %i.cb, %i.cd
  br i1 %i.ce, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !138

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cf = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph155
  %i.cg = phi i32 [ %i.an, %.lr.ph155 ], [ %i.cc, %._crit_edge.loopexit ] ; 3 uses
  %.0111.lcssa = phi i32 [ 0, %.lr.ph155 ], [ %i.cf, %._crit_edge.loopexit ] ; 3 uses
  %i.ch = insertelement <8 x float> poison, float %i.au, i64 0
  %i.ci = shufflevector <8 x float> %i.ch, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cj = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.ck = shufflevector <8 x float> %i.cj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cl = insertelement <8 x float> poison, float %i.ay, i64 0
  %i.cm = shufflevector <8 x float> %i.cl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cn = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.co = shufflevector <8 x float> %i.cn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cp = or disjoint i32 %.0111.lcssa, 7
  %i.cq = icmp slt i32 %i.cp, %i.cg
  br i1 %i.cq, label %.lr.ph140.preheader, label %._crit_edge141

.lr.ph140.preheader:                              ; preds = %._crit_edge
  %i.cr = zext nneg i32 %.0111.lcssa to i64
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.lr.ph140
  %indvars.iv168 = phi i64 [ %i.cr, %.lr.ph140.preheader ], [ %indvars.iv.next169, %.lr.ph140 ] ; 3 uses
  %i.cs = phi i32 [ %i.cg, %.lr.ph140.preheader ], [ %i.dk, %.lr.ph140 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv168 ; 4 uses
  %i.cu = sext i32 %i.cs to i64                   ; 2 uses
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load <8 x float>, ptr %i.cw, align 32, !tbaa !17
  %i.cy = load <8 x float>, ptr %i.ct, align 32, !tbaa !17
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cu
  %i.da = load <8 x float>, ptr %i.cz, align 32, !tbaa !17
  %i.db = shl nuw nsw i32 %i.cs, 1
  %10 = zext nneg i32 %i.db to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %10
  %i.dd = load <8 x float>, ptr %i.dc, align 32, !tbaa !17
  %i.de = fmul fast <8 x float> %i.cx, %i.ci
  %i.df = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cy, <8 x float> nofpclass(nan inf) %i.ck, <8 x float> nofpclass(nan inf) %i.de)
  %i.dg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.da, <8 x float> nofpclass(nan inf) %i.cm, <8 x float> nofpclass(nan inf) %i.df)
  %i.dh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dd, <8 x float> nofpclass(nan inf) %i.co, <8 x float> nofpclass(nan inf) %i.dg)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %indvars.iv168
  store <8 x float> %i.dh, ptr %i.di, align 32, !tbaa !17
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 8 ; 3 uses
  %i.dj = or disjoint i64 %indvars.iv.next169, 7
  %i.dk = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %i.dj, %i.dl
  br i1 %i.dm, label %.lr.ph140, label %._crit_edge141.loopexit, !llvm.loop !139

._crit_edge141.loopexit:                          ; preds = %.lr.ph140
  %i.dn = trunc nuw nsw i64 %indvars.iv.next169 to i32
  br label %._crit_edge141

._crit_edge141:                                   ; preds = %._crit_edge141.loopexit, %._crit_edge
  %i.do = phi i32 [ %i.cg, %._crit_edge ], [ %i.dk, %._crit_edge141.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0111.lcssa, %._crit_edge ], [ %i.dn, %._crit_edge141.loopexit ] ; 3 uses
  %i.dp = insertelement <4 x float> poison, float %i.au, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = or disjoint i32 %.1.lcssa, 3
  %i.dy = icmp slt i32 %i.dx, %i.do
  br i1 %i.dy, label %.lr.ph145.preheader, label %.preheader

.lr.ph145.preheader:                              ; preds = %._crit_edge141
  %i.dz = zext nneg i32 %.1.lcssa to i64
  br label %.lr.ph145

.preheader.loopexit:                              ; preds = %.lr.ph145
  %i.ea = trunc nuw i64 %indvars.iv.next172 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge141
  %i.eb = phi i32 [ %i.do, %._crit_edge141 ], [ %i.id, %.preheader.loopexit ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge141 ], [ %i.ea, %.preheader.loopexit ] ; 2 uses
  %i.ec = icmp slt i32 %.2.lcssa, %i.eb
  br i1 %i.ec, label %iter.check, label %.preheader.._crit_edge150_crit_edge

.preheader.._crit_edge150_crit_edge:              ; preds = %.preheader
  %.pre184 = sext i32 %i.eb to i64
  br label %._crit_edge150

iter.check:                                       ; preds = %.preheader
  %i.ed = shl nuw nsw i32 %i.eb, 1
  %i.ee = sext i32 %.2.lcssa to i64               ; 7 uses
  %i.ef = sext i32 %i.eb to i64                   ; 11 uses
  %i.eg = zext nneg i32 %i.ed to i64              ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.at, i64 %i.ef ; 3 uses
  %invariant.gep201 = getelementptr [4 x i8], ptr %i.at, i64 %i.eg ; 3 uses
  %i.eh = sub nsw i64 %i.ef, %i.ee                ; 7 uses
  %min.iters.check = icmp ult i64 %i.eh, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ei = sub i64 %.0114151206, %i.al             ; 2 uses
  %i.ej = add nsw i64 %i.as, %i.eg
  %i.ek = shl nsw i64 %i.ej, 2
  %i.el = sub i64 %i.ek, %i.ei
  %diff.check = icmp ugt i64 %i.el, -256
  %i.em = add nsw i64 %i.ef, %i.as
  %i.en = shl nsw i64 %i.em, 2
  %i.eo = sub i64 %i.en, %i.ei
  %diff.check207 = icmp ugt i64 %i.eo, -256
  %conflict.rdx = or i1 %diff.check, %diff.check207
  %i.ep = sub i64 %.0114151206, %i.al             ; 2 uses
  %i.eq = shl nsw i64 %i.as, 2                    ; 2 uses
  %i.er = sub i64 %i.eq, %i.ep
  %diff.check208 = icmp ugt i64 %i.er, -256
  %conflict.rdx209 = or i1 %conflict.rdx, %diff.check208
  %i.es = shl nsw i64 %i.ef, 2
  %i.et = add i64 %i.ep, %i.es
  %i.eu = sub i64 %i.eq, %i.et
  %diff.check210 = icmp ugt i64 %i.eu, -256
  %conflict.rdx211 = or i1 %conflict.rdx209, %diff.check210
  br i1 %conflict.rdx211, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check212 = icmp ult i64 %i.eh, 64
  br i1 %min.iters.check212, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ev = and i64 %i.eh, 56
  %n.vec = and i64 %i.eh, -64                     ; 4 uses
  %i.ew = add nsw i64 %n.vec, %i.ee
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert213 = insertelement <16 x float> poison, float %i.aw, i64 0
  %broadcast.splat214 = shufflevector <16 x float> %broadcast.splatinsert213, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert215 = insertelement <16 x float> poison, float %i.ay, i64 0
  %broadcast.splat216 = shufflevector <16 x float> %broadcast.splatinsert215, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert217 = insertelement <16 x float> poison, float %i.ba, i64 0
  %broadcast.splat218 = shufflevector <16 x float> %broadcast.splatinsert217, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ex = add nuw i64 %index, %i.ee               ; 5 uses
  %i.ey = sub nsw i64 %i.ex, %i.ef
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ey ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 128
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 192
  %wide.load = load <16 x float>, ptr %i.ez, align 4, !tbaa !70
  %wide.load219 = load <16 x float>, ptr %i.fa, align 4, !tbaa !70
  %wide.load220 = load <16 x float>, ptr %i.fb, align 4, !tbaa !70
  %wide.load221 = load <16 x float>, ptr %i.fc, align 4, !tbaa !70
  %i.fd = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.fe = fmul fast <16 x float> %wide.load219, %broadcast.splat
  %i.ff = fmul fast <16 x float> %wide.load220, %broadcast.splat
  %i.fg = fmul fast <16 x float> %wide.load221, %broadcast.splat
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ex ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 192
  %wide.load222 = load <16 x float>, ptr %i.fh, align 4, !tbaa !70
  %wide.load223 = load <16 x float>, ptr %i.fi, align 4, !tbaa !70
  %wide.load224 = load <16 x float>, ptr %i.fj, align 4, !tbaa !70
  %wide.load225 = load <16 x float>, ptr %i.fk, align 4, !tbaa !70
  %i.fl = fmul fast <16 x float> %wide.load222, %broadcast.splat214
  %i.fm = fmul fast <16 x float> %wide.load223, %broadcast.splat214
  %i.fn = fmul fast <16 x float> %wide.load224, %broadcast.splat214
  %i.fo = fmul fast <16 x float> %wide.load225, %broadcast.splat214
  %i.fp = fadd fast <16 x float> %i.fl, %i.fd
  %i.fq = fadd fast <16 x float> %i.fm, %i.fe
  %i.fr = fadd fast <16 x float> %i.fn, %i.ff
  %i.fs = fadd fast <16 x float> %i.fo, %i.fg
  %i.ft = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ex ; 4 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 64
  %i.fv = getelementptr i8, ptr %i.ft, i64 128
  %i.fw = getelementptr i8, ptr %i.ft, i64 192
  %wide.load226 = load <16 x float>, ptr %i.ft, align 4, !tbaa !70
  %wide.load227 = load <16 x float>, ptr %i.fu, align 4, !tbaa !70
  %wide.load228 = load <16 x float>, ptr %i.fv, align 4, !tbaa !70
  %wide.load229 = load <16 x float>, ptr %i.fw, align 4, !tbaa !70
  %i.fx = fmul fast <16 x float> %wide.load226, %broadcast.splat216
  %i.fy = fmul fast <16 x float> %wide.load227, %broadcast.splat216
  %i.fz = fmul fast <16 x float> %wide.load228, %broadcast.splat216
  %i.ga = fmul fast <16 x float> %wide.load229, %broadcast.splat216
  %i.gb = fadd fast <16 x float> %i.fp, %i.fx
  %i.gc = fadd fast <16 x float> %i.fq, %i.fy
  %i.gd = fadd fast <16 x float> %i.fr, %i.fz
  %i.ge = fadd fast <16 x float> %i.fs, %i.ga
  %i.gf = getelementptr [4 x i8], ptr %invariant.gep201, i64 %i.ex ; 4 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 64
  %i.gh = getelementptr i8, ptr %i.gf, i64 128
  %i.gi = getelementptr i8, ptr %i.gf, i64 192
  %wide.load230 = load <16 x float>, ptr %i.gf, align 4, !tbaa !70
  %wide.load231 = load <16 x float>, ptr %i.gg, align 4, !tbaa !70
  %wide.load232 = load <16 x float>, ptr %i.gh, align 4, !tbaa !70
  %wide.load233 = load <16 x float>, ptr %i.gi, align 4, !tbaa !70
  %i.gj = fmul fast <16 x float> %wide.load230, %broadcast.splat218
  %i.gk = fmul fast <16 x float> %wide.load231, %broadcast.splat218
  %i.gl = fmul fast <16 x float> %wide.load232, %broadcast.splat218
  %i.gm = fmul fast <16 x float> %wide.load233, %broadcast.splat218
  %i.gn = fadd fast <16 x float> %i.gb, %i.gj
  %i.go = fadd fast <16 x float> %i.gc, %i.gk
  %i.gp = fadd fast <16 x float> %i.gd, %i.gl
  %i.gq = fadd fast <16 x float> %i.ge, %i.gm
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %i.ex ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 192
  store <16 x float> %i.gn, ptr %i.gr, align 4, !tbaa !70
  store <16 x float> %i.go, ptr %i.gs, align 4, !tbaa !70
  store <16 x float> %i.gp, ptr %i.gt, align 4, !tbaa !70
  store <16 x float> %i.gq, ptr %i.gu, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.gv = icmp eq i64 %index.next, %n.vec
  br i1 %i.gv, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eh, %n.vec
  br i1 %cmp.n, label %._crit_edge150, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ev, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec234 = and i64 %i.eh, -8                   ; 3 uses
  %i.gw = add nsw i64 %n.vec234, %i.ee
  %broadcast.splatinsert235 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat236 = shufflevector <8 x float> %broadcast.splatinsert235, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert237 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat238 = shufflevector <8 x float> %broadcast.splatinsert237, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert239 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat240 = shufflevector <8 x float> %broadcast.splatinsert239, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat242 = shufflevector <8 x float> %broadcast.splatinsert241, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index243 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next248, %vec.epilog.vector.body ] ; 2 uses
  %i.gx = add nuw i64 %index243, %i.ee            ; 5 uses
  %i.gy = sub nsw i64 %i.gx, %i.ef
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.gy
  %wide.load244 = load <8 x float>, ptr %i.gz, align 4, !tbaa !70
  %i.ha = fmul fast <8 x float> %wide.load244, %broadcast.splat236
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.gx
  %wide.load245 = load <8 x float>, ptr %i.hb, align 4, !tbaa !70
  %i.hc = fmul fast <8 x float> %wide.load245, %broadcast.splat238
  %i.hd = fadd fast <8 x float> %i.hc, %i.ha
  %i.he = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gx
  %wide.load246 = load <8 x float>, ptr %i.he, align 4, !tbaa !70
  %i.hf = fmul fast <8 x float> %wide.load246, %broadcast.splat240
  %i.hg = fadd fast <8 x float> %i.hd, %i.hf
  %i.hh = getelementptr [4 x i8], ptr %invariant.gep201, i64 %i.gx
  %wide.load247 = load <8 x float>, ptr %i.hh, align 4, !tbaa !70
  %i.hi = fmul fast <8 x float> %wide.load247, %broadcast.splat242
  %i.hj = fadd fast <8 x float> %i.hg, %i.hi
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %i.gx
  store <8 x float> %i.hj, ptr %i.hk, align 4, !tbaa !70
  %index.next248 = add nuw i64 %index243, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next248, %n.vec234
  br i1 %i.hl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n249 = icmp eq i64 %i.eh, %n.vec234
  br i1 %cmp.n249, label %._crit_edge150, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv174.ph = phi i64 [ %i.ee, %iter.check ], [ %i.ee, %vector.memcheck ], [ %i.ew, %vec.epilog.iter.check ], [ %i.gw, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %.lr.ph145
  %indvars.iv171 = phi i64 [ %i.dz, %.lr.ph145.preheader ], [ %indvars.iv.next172, %.lr.ph145 ] ; 3 uses
  %i.hm = phi i32 [ %i.do, %.lr.ph145.preheader ], [ %i.id, %.lr.ph145 ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv171 ; 4 uses
  %i.ho = sext i32 %i.hm to i64                   ; 2 uses
  %i.hp = sub nsw i64 0, %i.ho
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.hp
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !tbaa !17
  %i.hs = load <4 x float>, ptr %i.hn, align 16, !tbaa !17
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.ho
  %i.hu = load <4 x float>, ptr %i.ht, align 16, !tbaa !17
  %i.hv = shl nuw nsw i32 %i.hm, 1
  %11 = zext nneg i32 %i.hv to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %11
  %i.hx = load <4 x float>, ptr %i.hw, align 16, !tbaa !17
  %i.hy = fmul fast <4 x float> %i.hr, %i.dq
  %i.hz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hs, <4 x float> nofpclass(nan inf) %i.ds, <4 x float> nofpclass(nan inf) %i.hy)
  %i.ia = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hu, <4 x float> nofpclass(nan inf) %i.du, <4 x float> nofpclass(nan inf) %i.hz)
  %i.ib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hx, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) %i.ia)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %indvars.iv171
  store <4 x float> %i.ib, ptr %i.ic, align 16, !tbaa !17
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 4 ; 3 uses
  %i.id = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ie = trunc i64 %indvars.iv.next172 to i32
  %i.if = or i32 %i.ie, 3
  %i.ig = icmp slt i32 %i.if, %i.id
  br i1 %i.ig, label %.lr.ph145, label %.preheader.loopexit, !llvm.loop !142

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %vec.epilog.scalar.ph ], [ %indvars.iv174.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.ih = sub nsw i64 %indvars.iv174, %i.ef
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ih
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !70
  %i.ik = fmul fast float %i.ij, %i.au
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv174
  %i.im = load float, ptr %i.il, align 4, !tbaa !70
  %i.in = fmul fast float %i.im, %i.aw
  %i.io = fadd fast float %i.in, %i.ik
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv174
  %i.ip = load float, ptr %gep, align 4, !tbaa !70
  %i.iq = fmul fast float %i.ip, %i.ay
  %i.ir = fadd fast float %i.io, %i.iq
  %gep202 = getelementptr [4 x i8], ptr %invariant.gep201, i64 %indvars.iv174
  %i.is = load float, ptr %gep202, align 4, !tbaa !70
  %i.it = fmul fast float %i.is, %i.ba
  %i.iu = fadd fast float %i.ir, %i.it
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %indvars.iv174
  store float %i.iu, ptr %i.iv, align 4, !tbaa !70
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next175, %i.ef
  br i1 %exitcond.not, label %._crit_edge150, label %vec.epilog.scalar.ph, !llvm.loop !143

._crit_edge150:                                   ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge150_crit_edge
  %.pre-phi = phi i64 [ %.pre184, %.preheader.._crit_edge150_crit_edge ], [ %i.ef, %middle.block ], [ %i.ef, %vec.epilog.middle.block ], [ %i.ef, %vec.epilog.scalar.ph ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0113152, i64 16
  %i.ix = getelementptr inbounds [4 x i8], ptr %.0114151, i64 %.pre-phi
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.iy = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.iz = sext i32 %i.iy to i64
  %i.ja = icmp slt i64 %indvars.iv.next178, %i.iz
  br i1 %i.ja, label %.lr.ph155, label %._crit_edge156, !llvm.loop !144

._crit_edge161:                                   ; preds = %._crit_edge156, %.lr.ph160, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge161, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !145
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !145
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !145 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !148
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !148
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !148 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !148
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !145
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !25
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !151

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !70
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !25
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !25
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !152

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03682 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03781 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp nneg i32 %.03682 to float
  %i.br = load float, ptr %9, align 4, !tbaa !70
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !25
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.11:bb.a
  %i.hn = bitcast float %i.hm to i32
  %i.ho = lshr i32 %i.hn, 16
  %i.hp = trunc nuw i32 %i.ho to i16
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.079113, i64 %indvars.iv136
  store i16 %i.hp, ptr %i.hq, align 2, !tbaa !269
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next137, %i.ei
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph112, !llvm.loop !275

._crit_edge:                                      ; preds = %.lr.ph112, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre146, %.preheader.._crit_edge_crit_edge ], [ %i.ei, %middle.block ], [ %i.ei, %vec.epilog.middle.block ], [ %i.ei, %.lr.ph112 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.078114, i64 8
  %i.hs = getelementptr inbounds [2 x i8], ptr %.079113, i64 %.pre-phi
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.ht = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.hu = sext i32 %i.ht to i64
  %i.hv = icmp slt i64 %indvars.iv.next140, %i.hu
  br i1 %i.hv, label %.lr.ph117, label %._crit_edge118, !llvm.loop !276

._crit_edge123:                                   ; preds = %._crit_edge118, %.lr.ph122, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge123, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not172 = icmp sgt i32 %i.k, %i.j
  br i1 %.not172, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph175.split.preheader, label %._crit_edge176

.lr.ph175.split.preheader:                        ; preds = %.lr.ph175
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph175.split

.lr.ph175.split:                                  ; preds = %.lr.ph175.split.preheader, %._crit_edge171
  %i.t = phi i32 [ %i.p, %.lr.ph175.split.preheader ], [ %i.am, %._crit_edge171 ] ; 2 uses
  %indvars.iv195 = phi i64 [ %i.r, %.lr.ph175.split.preheader ], [ %indvars.iv.next196, %._crit_edge171 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !26
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv195, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !29
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %.lr.ph175.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72
  %i.ae = load ptr, ptr %4, align 8, !tbaa !45
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv195, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !29
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !25
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph170

._crit_edge171:                                   ; preds = %._crit_edge, %.lr.ph175.split
  %i.am = phi i32 [ %i.t, %.lr.ph175.split ], [ %i.mk, %._crit_edge ]
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next196 to i32
  %exitcond198.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond198.not, label %._crit_edge176, label %.lr.ph175.split, !llvm.loop !277

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph170.preheader ], [ %i.gj, %._crit_edge ] ; 4 uses
  %indvars.iv192 = phi i64 [ 0, %.lr.ph170.preheader ], [ %indvars.iv.next193, %._crit_edge ] ; 2 uses
  %.0108167 = phi ptr [ %i.ad, %.lr.ph170.preheader ], [ %i.mi, %._crit_edge ] ; 5 uses
  %.0109166 = phi ptr [ %i.ak, %.lr.ph170.preheader ], [ %i.mj, %._crit_edge ] ; 8 uses
  %.0109166222 = ptrtoaddr ptr %.0109166 to i64   ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv192
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 11 uses
  %i.au = load float, ptr %.0108167, align 4, !tbaa !70 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0108167, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !70 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0108167, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !70 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0108167, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !70 ; 6 uses
  %i.bb = icmp sgt i32 %i.an, 15
  br i1 %i.bb, label %.lr.ph, label %.preheader155

.lr.ph:                                           ; preds = %.lr.ph170
  %i.bc = insertelement <16 x float> poison, float %i.au, i64 0
  %i.bd = shufflevector <16 x float> %i.bc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.be = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.bf = shufflevector <16 x float> %i.be, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bg = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.bh = shufflevector <16 x float> %i.bg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bi = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.bj = shufflevector <16 x float> %i.bi, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.c

.preheader155.loopexit:                           ; preds = %bb.c
  %i.bk = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.loopexit, %.lr.ph170
  %i.bl = phi i32 [ %i.an, %.lr.ph170 ], [ %i.ec, %.preheader155.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph170 ], [ %i.bk, %.preheader155.loopexit ] ; 3 uses
  %i.bm = or disjoint i32 %.0.lcssa, 7
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.lr.ph158, label %.preheader154

.lr.ph158:                                        ; preds = %.preheader155
  %i.bo = insertelement <8 x float> poison, float %i.au, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bq = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.br = shufflevector <8 x float> %i.bq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bs = insertelement <8 x float> poison, float %i.ay, i64 0
  %i.bt = shufflevector <8 x float> %i.bs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bu = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bv = shufflevector <8 x float> %i.bu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bw = zext nneg i32 %.0.lcssa to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bx = phi i32 [ %i.an, %.lr.ph ], [ %i.ec, %bb.c ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bz = sext i32 %i.bx to i64                   ; 2 uses
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load <16 x i16>, ptr %i.cb, align 1, !tbaa !17 ; 2 uses
  %i.cd = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ce = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cc, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cf = shufflevector <16 x i16> %i.cd, <16 x i16> %i.ce, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cg = shufflevector <16 x i16> %i.cd, <16 x i16> %i.ce, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ch = bitcast <16 x i16> %i.cf to <8 x i32>
  %i.ci = bitcast <16 x i16> %i.cg to <8 x i32>
  %i.cj = shufflevector <8 x i32> %i.ch, <8 x i32> %i.ci, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ck = bitcast <16 x i32> %i.cj to <16 x float>
  %i.cl = load <16 x i16>, ptr %i.by, align 1, !tbaa !17 ; 2 uses
  %i.cm = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cn = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cl, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.co = shufflevector <16 x i16> %i.cm, <16 x i16> %i.cn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cp = shufflevector <16 x i16> %i.cm, <16 x i16> %i.cn, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cq = bitcast <16 x i16> %i.co to <8 x i32>
  %i.cr = bitcast <16 x i16> %i.cp to <8 x i32>
  %i.cs = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ct = bitcast <16 x i32> %i.cs to <16 x float>
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bz
  %i.cv = load <16 x i16>, ptr %i.cu, align 1, !tbaa !17 ; 2 uses
  %i.cw = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cx = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cv, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cy = shufflevector <16 x i16> %i.cw, <16 x i16> %i.cx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cz = shufflevector <16 x i16> %i.cw, <16 x i16> %i.cx, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.da = bitcast <16 x i16> %i.cy to <8 x i32>
  %i.db = bitcast <16 x i16> %i.cz to <8 x i32>
  %i.dc = shufflevector <8 x i32> %i.da, <8 x i32> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dd = bitcast <16 x i32> %i.dc to <16 x float>
  %i.de = shl nuw nsw i32 %i.bx, 1
  %9 = zext nneg i32 %i.de to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %9
  %i.dg = load <16 x i16>, ptr %i.df, align 1, !tbaa !17 ; 2 uses
  %i.dh = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.di = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dg, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dj = shufflevector <16 x i16> %i.dh, <16 x i16> %i.di, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dk = shufflevector <16 x i16> %i.dh, <16 x i16> %i.di, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dl = bitcast <16 x i16> %i.dj to <8 x i32>
  %i.dm = bitcast <16 x i16> %i.dk to <8 x i32>
  %i.dn = shufflevector <8 x i32> %i.dl, <8 x i32> %i.dm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.do = bitcast <16 x i32> %i.dn to <16 x float>
  %i.dp = fmul fast <16 x float> %i.bd, %i.ck
  %i.dq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> nofpclass(nan inf) %i.dp)
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.dq)
  %i.ds = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.do, <16 x float> nofpclass(nan inf) %i.bj, <16 x float> nofpclass(nan inf) %i.dr)
  %i.dt = bitcast <16 x float> %i.ds to <16 x i32>
  %i.du = lshr <16 x i32> %i.dt, splat (i32 16)   ; 2 uses
  %i.dv = shufflevector <16 x i32> %i.du, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dw = shufflevector <16 x i32> %i.du, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dx = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.dv, <8 x i32> %i.dw)
  %i.dy = bitcast <16 x i16> %i.dx to <4 x i64>
  %i.dz = shufflevector <4 x i64> %i.dy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %indvars.iv
  store <4 x i64> %i.dz, ptr %i.ea, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.eb = or disjoint i64 %indvars.iv.next, 15
  %i.ec = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.c, label %.preheader155.loopexit, !llvm.loop !278

.preheader154.loopexit:                           ; preds = %bb.d
  %i.ef = trunc nuw nsw i64 %indvars.iv.next184 to i32
  br label %.preheader154

.preheader154:                                    ; preds = %.preheader154.loopexit, %.preheader155
  %i.eg = phi i32 [ %i.bl, %.preheader155 ], [ %i.ge, %.preheader154.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader155 ], [ %i.ef, %.preheader154.loopexit ] ; 3 uses
  %i.eh = or disjoint i32 %.1.lcssa, 3
  %i.ei = icmp slt i32 %i.eh, %i.eg
  br i1 %i.ei, label %.lr.ph161, label %.preheader

.lr.ph161:                                        ; preds = %.preheader154
  %i.ej = insertelement <4 x float> poison, float %i.au, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> zeroinitializer
  %i.en = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = zext nneg i32 %.1.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph158, %bb.d
  %indvars.iv183 = phi i64 [ %i.bw, %.lr.ph158 ], [ %indvars.iv.next184, %bb.d ] ; 3 uses
  %i.es = phi i32 [ %i.bl, %.lr.ph158 ], [ %i.ge, %bb.d ] ; 2 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv183 ; 4 uses
  %i.eu = sext i32 %i.es to i64                   ; 2 uses
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.et, i64 %i.ev
  %i.ex = load <8 x i16>, ptr %i.ew, align 1, !tbaa !17 ; 2 uses
  %i.ey = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ex, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ez = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ex, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fa = shufflevector <8 x i16> %i.ey, <8 x i16> %i.ez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fb = bitcast <16 x i16> %i.fa to <8 x float>
  %i.fc = load <8 x i16>, ptr %i.et, align 1, !tbaa !17 ; 2 uses
  %i.fd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ff = shufflevector <8 x i16> %i.fd, <8 x i16> %i.fe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fg = bitcast <16 x i16> %i.ff to <8 x float>
  %i.fh = getelementptr inbounds [2 x i8], ptr %i.et, i64 %i.eu
  %i.fi = load <8 x i16>, ptr %i.fh, align 1, !tbaa !17 ; 2 uses
  %i.fj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fl = shufflevector <8 x i16> %i.fj, <8 x i16> %i.fk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fm = bitcast <16 x i16> %i.fl to <8 x float>
  %i.fn = shl nuw nsw i32 %i.es, 1
  %10 = zext nneg i32 %i.fn to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %10
  %i.fp = load <8 x i16>, ptr %i.fo, align 1, !tbaa !17 ; 2 uses
  %i.fq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fs = shufflevector <8 x i16> %i.fq, <8 x i16> %i.fr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ft = bitcast <16 x i16> %i.fs to <8 x float>
  %i.fu = fmul fast <8 x float> %i.bp, %i.fb
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fg, <8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.fu)
  %i.fw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fm, <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.fv)
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.fw)
  %i.fy = bitcast <8 x float> %i.fx to <8 x i32>
  %i.fz = lshr <8 x i32> %i.fy, splat (i32 16)    ; 2 uses
  %i.ga = shufflevector <8 x i32> %i.fz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gb = shufflevector <8 x i32> %i.fz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ga, <4 x i32> %i.gb)
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %indvars.iv183
  store <8 x i16> %i.gc, ptr %i.gd, align 1, !tbaa !17
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 8 ; 3 uses
  %i.ge = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.gf = trunc i64 %indvars.iv.next184 to i32
  %i.gg = or i32 %i.gf, 7
  %i.gh = icmp slt i32 %i.gg, %i.ge
  br i1 %i.gh, label %bb.d, label %.preheader154.loopexit, !llvm.loop !279

.preheader.loopexit:                              ; preds = %bb.e
  %i.gi = trunc nuw i64 %indvars.iv.next187 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader154
  %i.gj = phi i32 [ %i.eg, %.preheader154 ], [ %i.la, %.preheader.loopexit ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader154 ], [ %i.gi, %.preheader.loopexit ] ; 2 uses
  %i.gk = icmp slt i32 %.2.lcssa, %i.gj
  br i1 %i.gk, label %iter.check, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre199 = sext i32 %i.gj to i64
  br label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.gl = shl nuw nsw i32 %i.gj, 1
  %i.gm = sext i32 %.2.lcssa to i64               ; 7 uses
  %i.gn = sext i32 %i.gj to i64                   ; 11 uses
  %i.go = zext nneg i32 %i.gl to i64              ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.gn ; 3 uses
  %invariant.gep217 = getelementptr [2 x i8], ptr %i.at, i64 %i.go ; 3 uses
  %i.gp = sub nsw i64 %i.gn, %i.gm                ; 7 uses
  %min.iters.check = icmp ult i64 %i.gp, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gq = sub i64 %.0109166222, %i.al             ; 2 uses
  %i.gr = add nsw i64 %i.as, %i.go
  %i.gs = shl nsw i64 %i.gr, 1
  %i.gt = sub i64 %i.gs, %i.gq
  %diff.check = icmp ugt i64 %i.gt, -64
  %i.gu = add nsw i64 %i.gn, %i.as
  %i.gv = shl nsw i64 %i.gu, 1
  %i.gw = sub i64 %i.gv, %i.gq
  %diff.check223 = icmp ugt i64 %i.gw, -64
  %conflict.rdx = or i1 %diff.check, %diff.check223
  %i.gx = sub i64 %.0109166222, %i.al             ; 2 uses
  %i.gy = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.gz = sub i64 %i.gy, %i.gx
  %diff.check224 = icmp ugt i64 %i.gz, -64
  %conflict.rdx225 = or i1 %conflict.rdx, %diff.check224
  %i.ha = shl nsw i64 %i.gn, 1
  %i.hb = add i64 %i.gx, %i.ha
  %i.hc = sub i64 %i.gy, %i.hb
  %diff.check226 = icmp ugt i64 %i.hc, -64
  %conflict.rdx227 = or i1 %conflict.rdx225, %diff.check226
  br i1 %conflict.rdx227, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check228 = icmp ult i64 %i.gp, 32
  br i1 %min.iters.check228, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hd = and i64 %i.gp, 24
  %n.vec = and i64 %i.gp, -32                     ; 4 uses
  %i.he = add nsw i64 %n.vec, %i.gm
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <32 x float> poison, float %i.aw, i64 0
  %broadcast.splat230 = shufflevector <32 x float> %broadcast.splatinsert229, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <32 x float> poison, float %i.ay, i64 0
  %broadcast.splat232 = shufflevector <32 x float> %broadcast.splatinsert231, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert233 = insertelement <32 x float> poison, float %i.ba, i64 0
  %broadcast.splat234 = shufflevector <32 x float> %broadcast.splatinsert233, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hf = add nuw i64 %index, %i.gm               ; 5 uses
  %i.hg = sub nsw i64 %i.hf, %i.gn
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.hg
  %wide.load = load <32 x i16>, ptr %i.hh, align 2, !tbaa !269
  %i.hi = zext <32 x i16> %wide.load to <32 x i32>
  %i.hj = shl nuw <32 x i32> %i.hi, splat (i32 16)
  %i.hk = bitcast <32 x i32> %i.hj to <32 x float>
  %i.hl = fmul fast <32 x float> %broadcast.splat, %i.hk
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hf
  %wide.load235 = load <32 x i16>, ptr %i.hm, align 2, !tbaa !269
  %i.hn = zext <32 x i16> %wide.load235 to <32 x i32>
  %i.ho = shl nuw <32 x i32> %i.hn, splat (i32 16)
  %i.hp = bitcast <32 x i32> %i.ho to <32 x float>
  %i.hq = fmul fast <32 x float> %broadcast.splat230, %i.hp
  %i.hr = fadd fast <32 x float> %i.hq, %i.hl
  %i.hs = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.hf
  %wide.load236 = load <32 x i16>, ptr %i.hs, align 2, !tbaa !269
  %i.ht = zext <32 x i16> %wide.load236 to <32 x i32>
  %i.hu = shl nuw <32 x i32> %i.ht, splat (i32 16)
  %i.hv = bitcast <32 x i32> %i.hu to <32 x float>
  %i.hw = fmul fast <32 x float> %broadcast.splat232, %i.hv
  %i.hx = fadd fast <32 x float> %i.hr, %i.hw
  %i.hy = getelementptr [2 x i8], ptr %invariant.gep217, i64 %i.hf
  %wide.load237 = load <32 x i16>, ptr %i.hy, align 2, !tbaa !269
  %i.hz = zext <32 x i16> %wide.load237 to <32 x i32>
  %i.ia = shl nuw <32 x i32> %i.hz, splat (i32 16)
  %i.ib = bitcast <32 x i32> %i.ia to <32 x float>
  %i.ic = fmul fast <32 x float> %broadcast.splat234, %i.ib
  %i.id = fadd fast <32 x float> %i.hx, %i.ic
  %i.ie = bitcast <32 x float> %i.id to <32 x i32>
  %i.if = lshr <32 x i32> %i.ie, splat (i32 16)
  %i.ig = trunc nuw <32 x i32> %i.if to <32 x i16>
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %i.hf
  store <32 x i16> %i.ig, ptr %i.ih, align 2, !tbaa !269
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gp, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hd, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !272

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec238 = and i64 %i.gp, -8                   ; 3 uses
  %i.ij = add nsw i64 %n.vec238, %i.gm
  %broadcast.splatinsert239 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat240 = shufflevector <8 x float> %broadcast.splatinsert239, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat242 = shufflevector <8 x float> %broadcast.splatinsert241, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert243 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat244 = shufflevector <8 x float> %broadcast.splatinsert243, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat246 = shufflevector <8 x float> %broadcast.splatinsert245, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index247 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next252, %vec.epilog.vector.body ] ; 2 uses
  %i.ik = add nuw i64 %index247, %i.gm            ; 5 uses
  %i.il = sub nsw i64 %i.ik, %i.gn
  %i.im = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.il
  %wide.load248 = load <8 x i16>, ptr %i.im, align 2, !tbaa !269
  %i.in = zext <8 x i16> %wide.load248 to <8 x i32>
  %i.io = shl nuw <8 x i32> %i.in, splat (i32 16)
  %i.ip = bitcast <8 x i32> %i.io to <8 x float>
  %i.iq = fmul fast <8 x float> %broadcast.splat240, %i.ip
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ik
  %wide.load249 = load <8 x i16>, ptr %i.ir, align 2, !tbaa !269
  %i.is = zext <8 x i16> %wide.load249 to <8 x i32>
  %i.it = shl nuw <8 x i32> %i.is, splat (i32 16)
  %i.iu = bitcast <8 x i32> %i.it to <8 x float>
  %i.iv = fmul fast <8 x float> %broadcast.splat242, %i.iu
  %i.iw = fadd fast <8 x float> %i.iv, %i.iq
  %i.ix = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ik
  %wide.load250 = load <8 x i16>, ptr %i.ix, align 2, !tbaa !269
  %i.iy = zext <8 x i16> %wide.load250 to <8 x i32>
  %i.iz = shl nuw <8 x i32> %i.iy, splat (i32 16)
  %i.ja = bitcast <8 x i32> %i.iz to <8 x float>
  %i.jb = fmul fast <8 x float> %broadcast.splat244, %i.ja
  %i.jc = fadd fast <8 x float> %i.iw, %i.jb
  %i.jd = getelementptr [2 x i8], ptr %invariant.gep217, i64 %i.ik
  %wide.load251 = load <8 x i16>, ptr %i.jd, align 2, !tbaa !269
  %i.je = zext <8 x i16> %wide.load251 to <8 x i32>
  %i.jf = shl nuw <8 x i32> %i.je, splat (i32 16)
  %i.jg = bitcast <8 x i32> %i.jf to <8 x float>
  %i.jh = fmul fast <8 x float> %broadcast.splat246, %i.jg
  %i.ji = fadd fast <8 x float> %i.jc, %i.jh
  %i.jj = bitcast <8 x float> %i.ji to <8 x i32>
  %i.jk = lshr <8 x i32> %i.jj, splat (i32 16)
  %i.jl = trunc nuw <8 x i32> %i.jk to <8 x i16>
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %i.ik
  store <8 x i16> %i.jl, ptr %i.jm, align 2, !tbaa !269
  %index.next252 = add nuw i64 %index247, 8       ; 2 uses
  %i.jn = icmp eq i64 %index.next252, %n.vec238
  br i1 %i.jn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !281

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n253 = icmp eq i64 %i.gp, %n.vec238
  br i1 %cmp.n253, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv189.ph = phi i64 [ %i.gm, %iter.check ], [ %i.gm, %vector.memcheck ], [ %i.he, %vec.epilog.iter.check ], [ %i.ij, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.e:                                             ; preds = %.lr.ph161, %bb.e
  %indvars.iv186 = phi i64 [ %i.er, %.lr.ph161 ], [ %indvars.iv.next187, %bb.e ] ; 3 uses
  %i.jo = phi i32 [ %i.eg, %.lr.ph161 ], [ %i.la, %bb.e ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv186 ; 4 uses
  %i.jq = sext i32 %i.jo to i64                   ; 2 uses
  %i.jr = sub nsw i64 0, %i.jq
  %i.js = getelementptr inbounds [2 x i8], ptr %i.jp, i64 %i.jr
  %i.jt = load i64, ptr %i.js, align 1, !tbaa !17
  %i.ju = insertelement <2 x i64> poison, i64 %i.jt, i64 0
  %i.jv = bitcast <2 x i64> %i.ju to <8 x i16>
  %i.jw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jx = bitcast <8 x i16> %i.jw to <4 x float>
  %i.jy = load i64, ptr %i.jp, align 1, !tbaa !17
  %i.jz = insertelement <2 x i64> poison, i64 %i.jy, i64 0
  %i.ka = bitcast <2 x i64> %i.jz to <8 x i16>
  %i.kb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ka, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kc = bitcast <8 x i16> %i.kb to <4 x float>
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.jp, i64 %i.jq
  %i.ke = load i64, ptr %i.kd, align 1, !tbaa !17
  %i.kf = insertelement <2 x i64> poison, i64 %i.ke, i64 0
  %i.kg = bitcast <2 x i64> %i.kf to <8 x i16>
  %i.kh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ki = bitcast <8 x i16> %i.kh to <4 x float>
  %i.kj = shl nuw nsw i32 %i.jo, 1
  %11 = zext nneg i32 %i.kj to i64
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %11
  %i.kl = load i64, ptr %i.kk, align 1, !tbaa !17
  %i.km = insertelement <2 x i64> poison, i64 %i.kl, i64 0
  %i.kn = bitcast <2 x i64> %i.km to <8 x i16>
  %i.ko = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kp = bitcast <8 x i16> %i.ko to <4 x float>
  %i.kq = fmul fast <4 x float> %i.ek, %i.jx
  %i.kr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kc, <4 x float> nofpclass(nan inf) %i.em, <4 x float> nofpclass(nan inf) %i.kq)
  %i.ks = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ki, <4 x float> nofpclass(nan inf) %i.eo, <4 x float> nofpclass(nan inf) %i.kr)
  %i.kt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kp, <4 x float> nofpclass(nan inf) %i.eq, <4 x float> nofpclass(nan inf) %i.ks)
  %i.ku = bitcast <4 x float> %i.kt to <4 x i32>
  %i.kv = lshr <4 x i32> %i.ku, splat (i32 16)
  %i.kw = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kv, <4 x i32> poison)
  %i.kx = bitcast <8 x i16> %i.kw to <2 x i64>
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %indvars.iv186
  %i.kz = extractelement <2 x i64> %i.kx, i64 0
  store i64 %i.kz, ptr %i.ky, align 1, !tbaa !17
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 4 ; 3 uses
  %i.la = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.lb = trunc i64 %indvars.iv.next187 to i32
  %i.lc = or i32 %i.lb, 3
  %i.ld = icmp slt i32 %i.lc, %i.la
  br i1 %i.ld, label %bb.e, label %.preheader.loopexit, !llvm.loop !282

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %vec.epilog.scalar.ph ], [ %indvars.iv189.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.le = sub nsw i64 %indvars.iv189, %i.gn
  %i.lf = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.le
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !269
  %i.lh = zext i16 %i.lg to i32
  %i.li = shl nuw i32 %i.lh, 16
  %i.lj = bitcast i32 %i.li to float
  %i.lk = fmul fast float %i.au, %i.lj
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv189
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !269
  %i.ln = zext i16 %i.lm to i32
  %i.lo = shl nuw i32 %i.ln, 16
  %i.lp = bitcast i32 %i.lo to float
  %i.lq = fmul fast float %i.aw, %i.lp
  %i.lr = fadd fast float %i.lq, %i.lk
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv189
  %i.ls = load i16, ptr %gep, align 2, !tbaa !269
  %i.lt = zext i16 %i.ls to i32
  %i.lu = shl nuw i32 %i.lt, 16
  %i.lv = bitcast i32 %i.lu to float
  %i.lw = fmul fast float %i.ay, %i.lv
  %i.lx = fadd fast float %i.lr, %i.lw
  %gep218 = getelementptr [2 x i8], ptr %invariant.gep217, i64 %indvars.iv189
  %i.ly = load i16, ptr %gep218, align 2, !tbaa !269
  %i.lz = zext i16 %i.ly to i32
  %i.ma = shl nuw i32 %i.lz, 16
  %i.mb = bitcast i32 %i.ma to float
  %i.mc = fmul fast float %i.ba, %i.mb
  %i.md = fadd fast float %i.lx, %i.mc
  %i.me = bitcast float %i.md to i32
  %i.mf = lshr i32 %i.me, 16
  %i.mg = trunc nuw i32 %i.mf to i16
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %indvars.iv189
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !269
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next190, %i.gn
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !283

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre199, %.preheader.._crit_edge_crit_edge ], [ %i.gn, %middle.block ], [ %i.gn, %vec.epilog.middle.block ], [ %i.gn, %vec.epilog.scalar.ph ]
  %i.mi = getelementptr inbounds nuw i8, ptr %.0108167, i64 16
  %i.mj = getelementptr inbounds [2 x i8], ptr %.0109166, i64 %.pre-phi
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.mk = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.ml = sext i32 %i.mk to i64
  %i.mm = icmp slt i64 %indvars.iv.next193, %i.ml
  br i1 %i.mm, label %.lr.ph170, label %._crit_edge171, !llvm.loop !284

._crit_edge176:                                   ; preds = %._crit_edge171, %.lr.ph175, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge176, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !285
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !285
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !285 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !288
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !288
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !288 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !288
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !285
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !25
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !291

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !70
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !25
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !25
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !25
  br label %._crit_edge
end_hunk_1
