Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__vertical_scatter_loop:bb.a
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.cf, align 4, !tbaa !58
  store float 3.000000e+38, ptr %i.ce, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader156.loopexit.unr-lcssa, label %bb.i, !llvm.loop !1027

.preheader.loopexit:                              ; preds = %bb.z
  %.pre176 = load i32, ptr %i.az, align 8, !tbaa !100
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader156
  %i.cg = phi i32 [ %i.u, %.preheader156 ], [ %.pre176, %.preheader.loopexit ]
  %.0129.lcssa = phi i32 [ %i.aa, %.preheader156 ], [ %.1130, %.preheader.loopexit ]
  %i.ch = icmp slt i32 %i.cg, %i.y
  br i1 %i.ch, label %.lr.ph164, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph163, %bb.z
  %.1162 = phi i32 [ %i.aa, %.lr.ph163 ], [ %i.eq, %bb.z ] ; 6 uses
  %.0129161 = phi i32 [ %i.aa, %.lr.ph163 ], [ %.1130, %bb.z ] ; 2 uses
  %.0131160 = phi i32 [ 1, %.lr.ph163 ], [ %.1132, %bb.z ] ; 3 uses
  %.0136159 = phi ptr [ %i.am, %.lr.ph163 ], [ %i.ep, %bb.z ] ; 2 uses
  %.0137158 = phi ptr [ %i.ah, %.lr.ph163 ], [ %i.em, %bb.z ] ; 3 uses
  %i.ci = load i32, ptr %.0137158, align 4, !tbaa !47 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0137158, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !48 ; 4 uses
  %.not144 = icmp slt i32 %i.ck, %i.ci
  br i1 %.not144, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not145 = icmp sge i32 %i.ci, %i.u
  %i.cl = icmp slt i32 %i.ci, %i.y
  %or.cond = select i1 %.not145, i1 %i.cl, i1 false
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not146 = icmp sge i32 %i.ck, %i.u
  %i.cm = icmp slt i32 %i.ck, %i.y
  %or.cond150 = select i1 %.not146, i1 %i.cm, i1 false
  br i1 %or.cond150, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not147 = icmp ne i32 %.0131160, 0
  %i.cn = icmp sgt i32 %.1162, %i.aa
  %or.cond151 = select i1 %.not147, i1 %i.cn, i1 false
  br i1 %or.cond151, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %.1162, ptr %i.z, align 4, !tbaa !122
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.co = icmp slt i32 %i.ci, %i.u
  %i.cp = sub nsw i32 %i.u, %i.ci
  %.0127 = call i32 @llvm.smax.i32(i32 %i.ci, i32 %i.u) ; 3 uses
  %narrow = select i1 %i.co, i32 %i.cp, i32 0
  %.0.idx = zext i32 %narrow to i64
  %.0 = getelementptr inbounds nuw [4 x i8], ptr %.0136159, i64 %.0.idx
  %.0126 = call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.bq) ; 4 uses
  %i.cq = load i32, ptr %i.bb, align 8, !tbaa !99
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cs = sub nsw i32 %.0127, %i.u
  store i32 %i.cs, ptr %i.bb, align 8, !tbaa !99
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ct = load ptr, ptr %1, align 8, !tbaa !109
  call void @stbir__decode_scanline(ptr noundef nonnull %0, i32 noundef %.1162, ptr noundef %i.ct)
  %i.cu = load i32, ptr %i.f, align 4, !tbaa !110
  %.not149 = icmp eq i32 %i.cu, 0
  br i1 %.not149, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.br, align 8, !tbaa !108
  %i.cw = load ptr, ptr %1, align 8, !tbaa !109
  call void @stbir__resample_horizontal_gather(ptr noundef nonnull %0, ptr noundef %i.cv, ptr noundef %i.cw)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cx = load i32, ptr %i.ba, align 4, !tbaa !115 ; 2 uses
  %i.cy = load i32, ptr %i.az, align 8, !tbaa !100
  %i.cz = add i32 %i.cx, 1
  %i.da = sub i32 %i.cz, %i.cy
  %i.db = load i32, ptr %i.bc, align 4, !tbaa !101
  %i.dc = icmp eq i32 %i.da, %i.db
  %i.dd = icmp sgt i32 %.0126, %i.cx
  %or.cond152 = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond152, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void %.0135(ptr noundef nonnull %0, ptr noundef nonnull %1) #24, !callees !1031
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %reass.sub = sub i32 %.0126, %.0127
  %i.de = add i32 %reass.sub, 1
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %bb.u
  %.027.i = phi i32 [ 0, %bb.u ], [ %i.ei, %._crit_edge.i ] ; 3 uses
  %.026.i = phi i32 [ %i.de, %bb.u ], [ %i.ej, %._crit_edge.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.df = call i32 @llvm.umin.i32(i32 %.026.i, i32 8) ; 3 uses
  %i.dg = icmp ne i32 %.026.i, 0
  call void @llvm.assume(i1 %i.dg)
  %i.dh = load i32, ptr %i.bb, align 8, !tbaa !99
  %i.di = load i32, ptr %i.az, align 8, !tbaa !100
  %i.dj = add i32 %.027.i, %.0127
  %invariant.op.i = add i32 %i.dj, %i.dh
  %invariant.op35.i = sub i32 %invariant.op.i, %i.di ; 2 uses
  %i.dk = load i32, ptr %i.bc, align 4, !tbaa !101 ; 2 uses
  %i.dl = load ptr, ptr %i.bs, align 8, !tbaa !97 ; 2 uses
  %i.dm = load i32, ptr %i.bt, align 8, !tbaa !98 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.df to i64
  %i.dn = srem i32 %invariant.op35.i, %i.dk
  %i.do = mul nsw i32 %i.dn, %i.dm
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 %i.dp ; 2 uses
  store ptr %i.dq, ptr %i.a, align 16, !tbaa !91
  %exitcond.peel.not.i = icmp eq i32 %.026.i, 1
  %.pre = load float, ptr %i.dq, align 4, !tbaa !58 ; 2 uses
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.v
  %i.dr = fcmp une float %.pre, 3.000000e+38
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.peel.next.i
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.x ] ; 3 uses
  %i.ds = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %.reass36.i = add i32 %invariant.op35.i, %i.ds
  %i.dt = srem i32 %.reass36.i, %i.dk
  %i.du = mul nsw i32 %i.dt, %i.dm
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %i.dl, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !91
  %i.dy = load float, ptr %i.dw, align 4, !tbaa !58
  %i.dz = fcmp oeq float %i.dy, 3.000000e+38
  %.not29.i = xor i1 %i.dr, %i.dz
  br i1 %.not29.i, label %bb.x, label %._crit_edge.i

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.w, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.x, %bb.w, %bb.v
  %.0.i = phi i32 [ %i.df, %bb.v ], [ %i.df, %bb.x ], [ %i.ds, %bb.w ] ; 3 uses
  %i.ea = fcmp oeq float %.pre, 3.000000e+38
  %i.eb = select i1 %i.ea, ptr @stbir__vertical_scatter_sets, ptr @stbir__vertical_scatter_blends
  %i.ec = sext i32 %.0.i to i64
  %i.ed = getelementptr [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !52
  %i.eg = sext i32 %.027.i to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.eg
  call void %i.ef(ptr noundef nonnull %i.a, ptr noundef %i.eh, ptr noundef %.sink, ptr noundef %i.ay) #24, !inline_history !1032
  %i.ei = add nsw i32 %.0.i, %.027.i
  %i.ej = sub nsw i32 %.026.i, %.0.i              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not30.i = icmp eq i32 %i.ej, 0
  br i1 %.not30.i, label %stbir__resample_vertical_scatter.exit, label %bb.v, !llvm.loop !11

stbir__resample_vertical_scatter.exit:            ; preds = %._crit_edge.i
  %i.ek = load i32, ptr %i.ba, align 4, !tbaa !115
  %i.el = icmp sgt i32 %.0126, %i.ek
  br i1 %i.el, label %bb.y, label %bb.z

bb.y:                                             ; preds = %stbir__resample_vertical_scatter.exit
  store i32 %.0126, ptr %i.ba, align 4, !tbaa !115
  br label %bb.z

bb.z:                                             ; preds = %stbir__resample_vertical_scatter.exit, %bb.y, %bb.l, %bb.j
  %.1132 = phi i32 [ %.0131160, %bb.l ], [ %.0131160, %bb.j ], [ 0, %bb.y ], [ 0, %stbir__resample_vertical_scatter.exit ]
  %.1130 = phi i32 [ %.0129161, %bb.l ], [ %.0129161, %bb.j ], [ %.1162, %bb.y ], [ %.1162, %stbir__resample_vertical_scatter.exit ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0137158, i64 8
  %i.en = load i32, ptr %i.ai, align 4, !tbaa !120
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %.0136159, i64 %i.eo
  %i.eq = add i32 %.1162, 1                       ; 2 uses
  %exitcond170.not = icmp eq i32 %i.eq, %i.ac
  br i1 %exitcond170.not, label %.preheader.loopexit, label %bb.j, !llvm.loop !1028

.lr.ph164:                                        ; preds = %.preheader, %.lr.ph164
  call void %.0135(ptr noundef nonnull %0, ptr noundef nonnull %1) #24, !callees !1031
  %i.er = load i32, ptr %i.az, align 8, !tbaa !100
  %i.es = icmp slt i32 %i.er, %i.y
  br i1 %i.es, label %.lr.ph164, label %._crit_edge, !llvm.loop !1029

._crit_edge:                                      ; preds = %.lr.ph164, %.preheader
  %i.et = add nsw i32 %.0129.lcssa, 1             ; 6 uses
  %i.eu = icmp sgt i32 %2, 0
  br i1 %i.eu, label %.lr.ph167.preheader, label %._crit_edge168

.lr.ph167.preheader:                              ; preds = %._crit_edge
  %wide.trip.count174 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter192 = and i64 %wide.trip.count174, 1
  %i.ev = icmp eq i32 %2, 1
  br i1 %i.ev, label %.lr.ph167.epil.preheader, label %.lr.ph167.preheader.new

.lr.ph167.preheader.new:                          ; preds = %.lr.ph167.preheader
  %unroll_iter196 = and i64 %wide.trip.count174, 2147483646
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.ac, %.lr.ph167.preheader.new
  %indvars.iv171 = phi i64 [ 0, %.lr.ph167.preheader.new ], [ %indvars.iv.next172.1, %bb.ac ] ; 3 uses
  %niter197 = phi i64 [ 0, %.lr.ph167.preheader.new ], [ %niter197.next.1, %bb.ac ]
  %i.ew = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv171
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !123
  %i.ez = icmp sgt i32 %i.ey, %i.et
  br i1 %i.ez, label %bb.aa, label %.lr.ph167.1

bb.aa:                                            ; preds = %.lr.ph167
  store i32 %i.et, ptr %i.ex, align 8, !tbaa !123
  br label %.lr.ph167.1

.lr.ph167.1:                                      ; preds = %.lr.ph167, %bb.aa
  %i.fa = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv171
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 152 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !123
  %i.fd = icmp sgt i32 %i.fc, %i.et
  br i1 %i.fd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph167.1
  store i32 %i.et, ptr %i.fb, align 8, !tbaa !123
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph167.1
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %niter197.next.1 = add i64 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %._crit_edge168.loopexit.unr-lcssa, label %.lr.ph167, !llvm.loop !1030

._crit_edge168.loopexit.unr-lcssa:                ; preds = %bb.ac
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %._crit_edge168, label %.lr.ph167.epil.preheader

.lr.ph167.epil.preheader:                         ; preds = %._crit_edge168.loopexit.unr-lcssa, %.lr.ph167.preheader
  %indvars.iv171.epil.init = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next172.1, %._crit_edge168.loopexit.unr-lcssa ]
  %lcmp.mod195 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod195)
  %i.fe = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv171.epil.init
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !123
  %i.fh = icmp sgt i32 %i.fg, %i.et
  br i1 %i.fh, label %bb.ad, label %._crit_edge168

bb.ad:                                            ; preds = %.lr.ph167.epil.preheader
  store i32 %i.et, ptr %i.ff, align 8, !tbaa !123
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %._crit_edge168.loopexit.unr-lcssa, %bb.ad, %.lr.ph167.epil.preheader, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__set_sampler(ptr nofree noundef captures(none) initializes((16, 32), (68, 116), (128, 132)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !61 ; 2 uses
  %i.d = fcmp ult float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp ugt float %i.c, 1.000000e+00
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !54 ; 2 uses
  %i.h = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.g, i64 0 ; 2 uses
  %i.i = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.h)
  %i.j = sitofp <4 x i32> %i.i to <4 x float>     ; 2 uses
  %i.k = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.j, <4 x float> %i.h, i8 1)
  %i.l = bitcast <4 x float> %i.k to <4 x i32>
  %i.m = and <4 x i32> %i.l, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.n = bitcast <4 x i32> %i.m to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.j, %i.n
  %i.o = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.p = fcmp oeq float %i.o, %i.g
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ 4, %bb.e ], [ 5, %bb.b ], [ 6, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %.0, ptr %i.q, align 4, !tbaa !125
  %i.r = zext i32 %.0 to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @stbir__builtin_kernels, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @stbir__builtin_supports, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !40
  %i.y = icmp ne ptr %2, null
  %i.z = icmp ne ptr %3, null
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %2, ptr %i.u, align 8, !tbaa !64
  store ptr %3, ptr %i.x, align 8, !tbaa !40
  store i32 7, ptr %i.q, align 4, !tbaa !125
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi ptr [ %3, %bb.g ], [ %i.w, %bb.f ]  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %4, ptr %i.ab, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !61 ; 4 uses
  %i.ae = fcmp ult float %i.ad, 1.000000e+00
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = fdiv float 1.000000e+00, %i.ad
  %i.ag = tail call float %i.aa(float noundef %i.af, ptr noundef %7) #24, !inline_history !1033
  %i.ah = fmul float %i.ag, 2.000000e+00
  br label %stbir__get_filter_pixel_width.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = tail call float %i.aa(float noundef %i.ad, ptr noundef %7) #24, !inline_history !1033
  %i.aj = fmul float %i.ai, 2.000000e+00
  %i.ak = fdiv float %i.aj, %i.ad
  br label %stbir__get_filter_pixel_width.exit

stbir__get_filter_pixel_width.exit:               ; preds = %bb.i, %bb.j
  %.sink16.i = phi float [ %i.ak, %bb.j ], [ %i.ah, %bb.i ]
  %i.al = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sink16.i, i64 0 ; 2 uses
  %i.am = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.al)
  %i.an = sitofp <4 x i32> %i.am to <4 x float>   ; 2 uses
  %i.ao = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.an, <4 x float> %i.al, i8 1)
  %i.ap = bitcast <4 x float> %i.ao to <4 x i32>
  %i.aq = and <4 x i32> %i.ap, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.ar = bitcast <4 x i32> %i.aq to <4 x float>
  %foldExtExtBinop85 = fadd <4 x float> %i.an, %i.ar
  %i.as = extractelement <4 x float> %foldExtExtBinop85, i64 0
  %.0.i = fptosi float %i.as to i32               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i32 %.0.i, ptr %i.at, align 8, !tbaa !126
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store i32 0, ptr %i.au, align 8, !tbaa !69
  %i.av = load float, ptr %i.ac, align 4, !tbaa !61
  %i.aw = fcmp ult float %i.av, 1.000000e+00
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %stbir__get_filter_pixel_width.exit
  %.not = icmp ne i32 %6, 0
  %i.ax = icmp slt i32 %.0.i, 33
  %or.cond76 = select i1 %.not, i1 true, i1 %i.ax
  br i1 %or.cond76, label %bb.m, label %bb.n

bb.l:                                             ; preds = %stbir__get_filter_pixel_width.exit
  store i32 1, ptr %i.au, align 8, !tbaa !69
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load float, ptr %i.az, align 8, !tbaa !39
  %i.bb = fdiv float 1.000000e+00, %i.ba
  %i.bc = tail call float %i.ay(float noundef %i.bb, ptr noundef %7) #24, !inline_history !1034
  %i.bd = fmul float %i.bc, 2.000000e+00
  br label %stbir__get_coefficient_width.exit

bb.m:                                             ; preds = %bb.k
  store i32 2, ptr %i.au, align 8, !tbaa !69
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !39 ; 2 uses
  %i.bh = tail call float %i.be(float noundef %i.bg, ptr noundef %7) #24, !inline_history !1034
  %i.bi = fmul float %i.bh, 2.000000e+00
  %i.bj = fdiv float %i.bi, %i.bg
  br label %stbir__get_coefficient_width.exit

bb.n:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !39
  %i.bn = tail call float %i.bk(float noundef %i.bm, ptr noundef %7) #24, !inline_history !1034
  %i.bo = fmul float %i.bn, 2.000000e+00
  br label %stbir__get_coefficient_width.exit

stbir__get_coefficient_width.exit:                ; preds = %bb.l, %bb.m, %bb.n
  %.sink22.i = phi float [ %i.bo, %bb.n ], [ %i.bj, %bb.m ], [ %i.bd, %bb.l ]
  %i.bp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sink22.i, i64 0 ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.bp)
  %i.br = sitofp <4 x i32> %i.bq to <4 x float>   ; 2 uses
  %i.bs = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.br, <4 x float> %i.bp, i8 1)
  %i.bt = bitcast <4 x float> %i.bs to <4 x i32>
  %i.bu = and <4 x i32> %i.bt, <i32 1065353216, i32 poison, i32 poison, i32 poison>
  %i.bv = bitcast <4 x i32> %i.bu to <4 x float>
  %foldExtExtBinop87 = fadd <4 x float> %i.br, %i.bv
  %i.bw = extractelement <4 x float> %foldExtExtBinop87, i64 0
  %i.bx = fptosi float %i.bw to i32               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !68
  %i.bz = icmp eq i32 %4, 2
  %i.ca = load i32, ptr %i.at, align 8, !tbaa !126 ; 4 uses
  br i1 %i.bz, label %bb.o, label %.critedge

bb.o:                                             ; preds = %stbir__get_coefficient_width.exit
  %i.cb = load i32, ptr %5, align 4, !tbaa !57    ; 2 uses
  %i.cc = mul nsw i32 %i.cb, 3                    ; 3 uses
  %i.cd = icmp sgt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.cc, ptr %i.at, align 8, !tbaa !126
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = phi i32 [ %i.cc, %bb.p ], [ %i.ca, %bb.o ] ; 2 uses
  %i.cf = sdiv i32 %i.ce, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 100
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 %i.cb) ; 2 uses
  store i32 %spec.store.select, ptr %i.cg, align 4
  br label %bb.r

.critedge:                                        ; preds = %stbir__get_coefficient_width.exit
  %i.ch = sdiv i32 %i.ca, 2                       ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge
  %i.cj = phi i32 [ %i.ce, %bb.q ], [ %i.ca, %.critedge ] ; 2 uses
  %i.ck = phi i32 [ %spec.store.select, %bb.q ], [ %i.ch, %.critedge ]
  %i.cl = load i32, ptr %i.au, align 8, !tbaa !69
  %.not.i = icmp eq i32 %i.cl, 0                  ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.s
end_hunk_0
begin_hunk_1_@stbir__get_conservative_extents:bb.a
bb.c:                                             ; preds = %stbir__calculate_in_pixel_range.exit127
  %i.de = shl nsw i32 %i.h, 1
  %i.df = add nsw i32 %i.de, -1
  %spec.select33.i132 = tail call i32 @llvm.smin.i32(i32 %spec.select.i128, i32 %i.df)
  br label %stbir__calculate_in_pixel_range.exit133

stbir__calculate_in_pixel_range.exit133:          ; preds = %stbir__calculate_in_pixel_range.exit127, %bb.c
  %.1.i130 = phi i32 [ %spec.select.i128, %stbir__calculate_in_pixel_range.exit127 ], [ %spec.select33.i132, %bb.c ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %.1.i130, ptr %i.dg, align 4, !tbaa !48
  %i.dh = add nsw i32 %.126.i123, 1               ; 2 uses
  %i.di = sub nsw i32 0, %i.br                    ; 2 uses
  %.not152 = icmp slt i32 %i.dh, %i.di
  br i1 %.not152, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %stbir__calculate_in_pixel_range.exit133
  %i.dj = add nsw i32 %i.bt, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.097153 = phi i32 [ %i.dh, %.lr.ph ], [ %i.en, %bb.e ] ; 4 uses
  %i.dk = sitofp i32 %.097153 to float
  %i.dl = fadd float %i.dk, 5.000000e-01          ; 2 uses
  %i.dm = fsub float %i.dl, %i.bp
  %i.dn = fadd float %i.bp, %i.dl
  %i.do = fmul float %i.c, %i.dm
  %i.dp = fsub float %i.do, %i.e
  %i.dq = fmul float %i.c, %i.dn
  %i.dr = fsub float %i.dq, %i.e
  %i.ds = fadd float %i.dp, 5.000000e-01
  %i.dt = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ds, i64 0 ; 2 uses
  %i.du = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.dt)
  %i.dv = sitofp <4 x i32> %i.du to <4 x float>   ; 2 uses
  %i.dw = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.dt, <4 x float> %i.dv, i8 1)
  %i.dx = bitcast <4 x float> %i.dw to <4 x i32>
  %i.dy = and <4 x i32> %i.dx, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.dz = bitcast <4 x i32> %i.dy to <4 x float>
  %foldExtExtBinop177 = fadd <4 x float> %i.dv, %i.dz
  %i.ea = extractelement <4 x float> %foldExtExtBinop177, i64 0
  %i.eb = fadd float %i.dr, -5.000000e-01
  %i.ec = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.eb, i64 0 ; 2 uses
  %i.ed = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ec)
  %i.ee = sitofp <4 x i32> %i.ed to <4 x float>   ; 2 uses
  %i.ef = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.ec, <4 x float> %i.ee, i8 1)
  %i.eg = bitcast <4 x float> %i.ef to <4 x i32>
  %i.eh = and <4 x i32> %i.eg, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.ei = bitcast <4 x i32> %i.eh to <4 x float>
  %foldExtExtBinop179 = fadd <4 x float> %i.ee, %i.ei
  %i.ej = extractelement <4 x float> %foldExtExtBinop179, i64 0
  %i.ek = fptosi float %i.ej to i32
  %spec.select.i134 = tail call i32 @llvm.smin.i32(i32 %i.ek, i32 %i.dj)
  %i.el = fptosi float %i.ea to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %i.em = icmp sgt i32 %spec.store.select.i, %spec.select.i134
  br i1 %i.em, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.097153, ptr %1, align 4, !tbaa !47
  %i.en = add nsw i32 %.097153, -1
  %.not.not = icmp sgt i32 %.097153, %i.di
  br i1 %.not.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %stbir__calculate_in_pixel_range.exit133
  %i.eo = add nsw i32 %.1.i130, %i.br
  %.not111155 = icmp slt i32 %i.br, -1
  br i1 %.not111155, label %thread-pre-split, label %.lr.ph157

.lr.ph157:                                        ; preds = %.thread
  %i.ep = add nsw i32 %.1.i130, -1
  %i.eq = add nsw i32 %i.bt, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph157, %bb.g
  %.2156 = phi i32 [ %i.ep, %.lr.ph157 ], [ %i.fu, %bb.g ] ; 4 uses
  %i.er = sitofp i32 %.2156 to float
  %i.es = fadd float %i.er, 5.000000e-01          ; 2 uses
  %i.et = fsub float %i.es, %i.bp
  %i.eu = fadd float %i.bp, %i.es
  %i.ev = fmul float %i.c, %i.et
  %i.ew = fsub float %i.ev, %i.e
  %i.ex = fmul float %i.c, %i.eu
  %i.ey = fsub float %i.ex, %i.e
  %i.ez = fadd float %i.ew, 5.000000e-01
  %i.fa = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ez, i64 0 ; 2 uses
  %i.fb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.fa)
  %i.fc = sitofp <4 x i32> %i.fb to <4 x float>   ; 2 uses
  %i.fd = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.fa, <4 x float> %i.fc, i8 1)
  %i.fe = bitcast <4 x float> %i.fd to <4 x i32>
  %i.ff = and <4 x i32> %i.fe, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.fg = bitcast <4 x i32> %i.ff to <4 x float>
  %foldExtExtBinop181 = fadd <4 x float> %i.fc, %i.fg
  %i.fh = extractelement <4 x float> %foldExtExtBinop181, i64 0
  %i.fi = fadd float %i.ey, -5.000000e-01
  %i.fj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.fi, i64 0 ; 2 uses
  %i.fk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.fj)
  %i.fl = sitofp <4 x i32> %i.fk to <4 x float>   ; 2 uses
  %i.fm = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.fj, <4 x float> %i.fl, i8 1)
  %i.fn = bitcast <4 x float> %i.fm to <4 x i32>
  %i.fo = and <4 x i32> %i.fn, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.fp = bitcast <4 x i32> %i.fo to <4 x float>
  %foldExtExtBinop183 = fadd <4 x float> %i.fl, %i.fp
  %i.fq = extractelement <4 x float> %foldExtExtBinop183, i64 0
  %i.fr = fptosi float %i.fq to i32
  %spec.select.i135 = tail call i32 @llvm.smin.i32(i32 %i.fr, i32 %i.eq)
  %i.fs = fptosi float %i.fh to i32
  %spec.store.select.i136 = tail call i32 @llvm.smax.i32(i32 %i.fs, i32 0)
  %i.ft = icmp sgt i32 %spec.store.select.i136, %spec.select.i135
  br i1 %i.ft, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.2156, ptr %i.dg, align 4, !tbaa !48
  %i.fu = add nsw i32 %.2156, 1
  %.not111.not = icmp slt i32 %.2156, %i.eo
  br i1 %.not111.not, label %bb.f, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.f, %.thread, %stbir__calculate_in_pixel_range.exit121
  %.pr = load i32, ptr %i.i, align 8, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.a
  %i.fv = phi i32 [ %.pr, %thread-pre-split ], [ %i.j, %bb.a ]
  %i.fw = icmp eq i32 %i.fv, 2
  %i.fx = load i32, ptr %1, align 4, !tbaa !47    ; 5 uses
  br i1 %i.fw, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %bb.j, label %thread-pre-split149

bb.j:                                             ; preds = %bb.i
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !48 ; 2 uses
  %.not113 = icmp slt i32 %i.ga, %i.h
  br i1 %.not113, label %thread-pre-split149.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %reass.sub = sub i32 %i.ga, %i.h
  %i.gb = add i32 %reass.sub, 17
  %.not114 = icmp slt i32 %i.gb, %i.fx
  br i1 %.not114, label %thread-pre-split149.thread, label %.thread151

.thread151:                                       ; preds = %bb.k
  store i32 0, ptr %1, align 4, !tbaa !47
  br label %thread-pre-split149.thread

thread-pre-split149:                              ; preds = %bb.i
  %i.gc = icmp slt i32 %i.fx, 0
  br i1 %i.gc, label %bb.l, label %thread-pre-split149.thread

bb.l:                                             ; preds = %thread-pre-split149
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !48 ; 2 uses
  %i.gf = add nsw i32 %i.h, -1                    ; 2 uses
  %i.gg = icmp slt i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.m, label %thread-pre-split149.thread

bb.m:                                             ; preds = %bb.l
  %i.gh = add i32 %i.h, -17
  %i.gi = add i32 %i.gh, %i.fx
  %.not115 = icmp sgt i32 %i.gi, %i.ge
  br i1 %.not115, label %thread-pre-split149.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !48
  br label %thread-pre-split149.thread

bb.o:                                             ; preds = %bb.h
  %i.gj = icmp slt i32 %i.fx, 0
  br i1 %i.gj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %1, align 4, !tbaa !47
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !48
  %.not112 = icmp slt i32 %i.gl, %i.h
  br i1 %.not112, label %thread-pre-split149.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gm = add nsw i32 %i.h, -1
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !48
  br label %thread-pre-split149.thread

thread-pre-split149.thread:                       ; preds = %bb.j, %bb.k, %.thread151, %bb.m, %bb.n, %bb.q, %bb.r, %thread-pre-split149, %bb.l
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbir__get_split_info(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %bb.a
  %.not78 = icmp eq i32 %5, 0
  %i.b = mul nsw i32 %3, 3
  %i.c = sub nsw i32 0, %3                        ; 4 uses
  %i.d = add nsw i32 %4, %3                       ; 4 uses
  %i.e = zext nneg i32 %1 to i64                  ; 3 uses
  br i1 %.not78, label %.lr.ph76.split.us.preheader, label %.lr.ph76.split

.lr.ph76.split.us.preheader:                      ; preds = %.lr.ph76
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %1, 1
  br i1 %i.f, label %.lr.ph76.split.us.epil.preheader, label %.lr.ph76.split.us.preheader.new

.lr.ph76.split.us.preheader.new:                  ; preds = %.lr.ph76.split.us.preheader
  %unroll_iter = and i64 %i.e, 2147483646
  br label %.lr.ph76.split.us

.lr.ph76.split.us:                                ; preds = %.lr.ph76.split.us, %.lr.ph76.split.us.preheader.new
  %indvars.iv83 = phi i64 [ 0, %.lr.ph76.split.us.preheader.new ], [ %indvars.iv.next84.1, %.lr.ph76.split.us ] ; 4 uses
  %.05674.us = phi i32 [ %2, %.lr.ph76.split.us.preheader.new ], [ %i.x, %.lr.ph76.split.us ] ; 2 uses
  %.05773.us = phi i32 [ 0, %.lr.ph76.split.us.preheader.new ], [ %i.v, %.lr.ph76.split.us ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph76.split.us.preheader.new ], [ %niter.next.1, %.lr.ph76.split.us ]
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv83 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 %.05773.us, ptr %i.h, align 4, !tbaa !118
  %i.i = trunc i64 %indvars.iv83 to i32
  %i.j = sub i32 %1, %i.i
  %i.k = sdiv i32 %.05674.us, %i.j                ; 2 uses
  %i.l = add nsw i32 %i.k, %.05773.us             ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.l, ptr %i.m, align 8, !tbaa !119
  %i.n = sub nsw i32 %.05674.us, %i.k             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %i.c, ptr %i.o, align 4, !tbaa !122
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 %i.d, ptr %i.p, align 8, !tbaa !123
  %indvars.iv.next84 = or disjoint i64 %indvars.iv83, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv.next84 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 %i.l, ptr %i.r, align 4, !tbaa !118
  %i.s = trunc i64 %indvars.iv.next84 to i32
  %i.t = sub i32 %1, %i.s
  %i.u = sdiv i32 %i.n, %i.t                      ; 2 uses
  %i.v = add nsw i32 %i.u, %i.l                   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 %i.v, ptr %i.w, align 8, !tbaa !119
  %i.x = sub nsw i32 %i.n, %i.u                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i32 %i.c, ptr %i.y, align 4, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i32 %i.d, ptr %i.z, align 8, !tbaa !123
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge77.loopexit.unr-lcssa, label %.lr.ph76.split.us, !llvm.loop !12

.lr.ph76.split:                                   ; preds = %.lr.ph76, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph76 ] ; 4 uses
  %.05674 = phi i32 [ %i.av, %bb.d ], [ %2, %.lr.ph76 ] ; 2 uses
  %.05773 = phi i32 [ %i.af, %bb.d ], [ 0, %.lr.ph76 ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 2 uses
  store i32 %.05773, ptr %i.ab, align 4, !tbaa !118
  %i.ac = trunc i64 %indvars.iv to i32
  %i.ad = sub i32 %1, %i.ac
  %i.ae = sdiv i32 %.05674, %i.ad                 ; 3 uses
  %i.af = add nsw i32 %i.ae, %.05773              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !119
  %.not79 = icmp eq i64 %indvars.iv, 0
  br i1 %.not79, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph76.split
  %i.ah = sext i32 %.05773 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ah ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.b) ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !47 ; 2 uses
  %.not65 = icmp slt i32 %spec.select, 1
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ak = phi i32 [ %i.aq, %bb.c ], [ %i.aj, %bb.b ] ; 2 uses
  %.069 = phi ptr [ %i.al, %bb.c ], [ %i.ai, %bb.b ]
  %.05268 = phi i32 [ %spec.select64, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.05367 = phi i32 [ %i.ap, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.069, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !47 ; 3 uses
  %i.an = icmp sgt i32 %i.am, %i.aj
  br i1 %i.an, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ao = icmp slt i32 %i.am, %i.ak
  %spec.select64 = select i1 %i.ao, i32 %.05367, i32 %.05268 ; 2 uses
  %i.ap = add nuw i32 %.05367, 1
  %exitcond.not = icmp eq i32 %.05367, %spec.select
  %i.aq = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ak)
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.052.lcssa = phi i32 [ 0, %bb.b ], [ %.05268, %.lr.ph ], [ %spec.select64, %bb.c ] ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aa, i64 -96    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !119
  %i.at = add nsw i32 %i.as, %.052.lcssa
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !119
  %i.au = add nsw i32 %.052.lcssa, %.05773
  store i32 %i.au, ptr %i.ab, align 4, !tbaa !118
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.lr.ph76.split
  %i.av = sub nsw i32 %.05674, %i.ae
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 %i.c, ptr %i.aw, align 4, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %i.d, ptr %i.ax, align 8, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond82.not, label %._crit_edge77, label %.lr.ph76.split, !llvm.loop !12

._crit_edge77.loopexit.unr-lcssa:                 ; preds = %.lr.ph76.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge77, label %.lr.ph76.split.us.epil.preheader

.lr.ph76.split.us.epil.preheader:                 ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.split.us.preheader
  %indvars.iv83.epil.init = phi i64 [ 0, %.lr.ph76.split.us.preheader ], [ %indvars.iv.next84.1, %._crit_edge77.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.epil.init = phi i32 [ %2, %.lr.ph76.split.us.preheader ], [ %i.x, %._crit_edge77.loopexit.unr-lcssa ]
  %.05773.us.epil.init = phi i32 [ 0, %.lr.ph76.split.us.preheader ], [ %i.v, %._crit_edge77.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.ay = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv83.epil.init ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  store i32 %.05773.us.epil.init, ptr %i.az, align 4, !tbaa !118
  %i.ba = trunc i64 %indvars.iv83.epil.init to i32
  %i.bb = sub i32 %1, %i.ba
  %i.bc = sdiv i32 %.05674.us.epil.init, %i.bb
  %i.bd = add nsw i32 %i.bc, %.05773.us.epil.init
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !119
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  store i32 %i.c, ptr %i.bf, align 4, !tbaa !122
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 %i.d, ptr %i.bg, align 8, !tbaa !123
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.d, %.lr.ph76.split.us.epil.preheader, %._crit_edge77.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @stbir__free_internal_mem(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !132
  tail call void @free(ptr noundef nonnull %i.b) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, -2147483648) i32 @stbir__get_max_split(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %0, 1
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %0, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.018 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %.01217 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.i, %.lr.ph ] ; 3 uses
  %.01316 = phi i32 [ %1, %.lr.ph.preheader.new ], [ %i.h, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = sub nuw nsw i32 %0, %.01217
  %i.d = sdiv i32 %.01316, %i.c                   ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %.018)
  %i.e = sub nsw i32 %.01316, %i.d                ; 2 uses
  %.neg = xor i32 %.01217, -1
  %i.f = add nsw i32 %0, %.neg
  %i.g = sdiv i32 %i.e, %i.f                      ; 2 uses
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %spec.select) ; 3 uses
  %i.h = sub nsw i32 %i.e, %i.g                   ; 2 uses
  %i.i = add nuw nsw i32 %.01217, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !14

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01217.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ]
  %.01316.epil.init = phi i32 [ %1, %.lr.ph.preheader ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.j = sub nuw nsw i32 %0, %.01217.epil.init
  %i.k = sdiv i32 %.01316.epil.init, %i.j
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %.018.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @stbir__should_do_vertical_first(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %6, 5
  %i.b = icmp slt i32 %3, 5
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %6, %3
  %i.d = select i1 %i.c, i32 6, i32 7
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i32 %7, 0                       ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ult i32 %6, 17
  %i.f = icmp samesign ult i32 %3, 17
  %or.cond3 = or i1 %i.f, %i.e
  br i1 %or.cond3, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = fcmp ugt float %5, 1.000000e+00
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext i1 %.not to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = fcmp ugt float %5, 2.000000e+00
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = fcmp ugt float %5, 3.000000e+00
  %. = select i1 %i.j, i32 5, i32 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.f, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.f ], [ 4, %bb.d ], [ %., %bb.h ], [ 2, %bb.g ] ; 2 uses
  %i.k = zext nneg i32 %.0 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = sitofp i32 %1 to float                   ; 2 uses
  %i.n = load float, ptr %i.l, align 4, !tbaa !58
  %i.o = fmul float %i.n, %i.m
  %i.p = sitofp i32 %4 to float                   ; 2 uses
  %i.q = fmul float %2, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !58
  %i.t = fmul float %i.q, %i.s
  %i.u = fadd float %i.o, %i.t                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !58
  %i.x = fmul float %i.w, %i.p
  %i.y = fmul float %5, %i.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !58
  %i.ab = fmul float %i.y, %i.aa
  %i.ac = fadd float %i.x, %i.ab                  ; 2 uses
  %i.ad = fcmp ole float %i.ac, %i.u
  %i.ae = zext i1 %i.ad to i32                    ; 3 uses
  %.not48 = icmp eq ptr %8, null
  br i1 %.not48, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = fpext float %i.u to double
  %i.ag = fpext float %i.ac to double
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.af, ptr %i.ah, align 8, !tbaa !1036
  store double %i.ag, ptr %8, align 8, !tbaa !1037
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.0, ptr %i.ai, align 8, !tbaa !1038
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !1039
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %7, ptr %i.ak, align 4, !tbaa !1040
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1041 ; 2 uses
  %.not49 = icmp eq i32 %i.am, 0
  br i1 %.not49, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = icmp eq i32 %i.am, 2
  %i.ao = zext i1 %i.an to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.k, %bb.j
  %.042 = phi i32 [ %i.ao, %bb.k ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define ptr @stbir__alloc_internal_mem_and_build_samplers(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41   ; 6 uses
  %i.c = icmp sgt i32 %5, 0                       ; 3 uses
  br i1 %i.c, label %.lr.ph.i.preheader, label %stbir__get_max_split.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i32 %5, 1
  %i.d = icmp eq i32 %5, 1
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %5, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.018.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %spec.select.i.1, %.lr.ph.i ]
  %.01217.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.01316.i = phi i32 [ %i.b, %.lr.ph.i.preheader.new ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.e = sub nuw nsw i32 %5, %.01217.i
  %i.f = sdiv i32 %.01316.i, %i.e                 ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %.018.i)
  %i.g = sub nsw i32 %.01316.i, %i.f              ; 2 uses
  %.neg = xor i32 %.01217.i, -1
  %i.h = add nsw i32 %5, %.neg
  %i.i = sdiv i32 %i.g, %i.h                      ; 2 uses
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %spec.select.i) ; 3 uses
  %i.j = sub nsw i32 %i.g, %i.i                   ; 2 uses
  %i.k = add nuw nsw i32 %.01217.i, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbir__get_max_split.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

stbir__get_max_split.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbir__get_max_split.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbir__get_max_split.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.018.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %spec.select.i.1, %stbir__get_max_split.exit.loopexit.unr-lcssa ]
  %.01217.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.k, %stbir__get_max_split.exit.loopexit.unr-lcssa ]
  %.01316.i.epil.init = phi i32 [ %i.b, %.lr.ph.i.preheader ], [ %i.j, %stbir__get_max_split.exit.loopexit.unr-lcssa ]
  %lcmp.mod436 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod436)
  %i.l = sub nuw nsw i32 %5, %.01217.i.epil.init
  %i.m = sdiv i32 %.01316.i.epil.init, %i.l
  %spec.select.i.epil = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %.018.i.epil.init)
  br label %stbir__get_max_split.exit

stbir__get_max_split.exit:                        ; preds = %.lr.ph.i.epil.preheader, %stbir__get_max_split.exit.loopexit.unr-lcssa, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.1, %stbir__get_max_split.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.n = zext i32 %3 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @stbir__pixel_layout_convert_public_to_internal, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32   ; 7 uses
  %i.q = zext i32 %4 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @stbir__pixel_layout_convert_public_to_internal, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32   ; 7 uses
  %i.t = zext i32 %i.p to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr @stbir__pixel_channels, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !24    ; 2 uses
  %i.w = zext i8 %i.v to i32                      ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !125
  %.not = icmp eq i32 %i.y, 6
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %stbir__get_max_split.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !125
  %.not324 = icmp eq i32 %i.aa, 6
  br i1 %.not324, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %stbir__get_max_split.exit
  %i.ab = add i32 %i.p, -5
  %or.cond = icmp ult i32 %i.ab, 6                ; 2 uses
  %i.ac = add i32 %i.s, -5
  %i.ad = icmp ult i32 %i.ac, 6                   ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 %i.ad, i1 false
  br i1 %or.cond5, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not325 = icmp eq i32 %8, 0
  br i1 %.not325, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr [4 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.fancy_alpha_effective_cnts, i64 %i.t
  %i.af = getelementptr i8, ptr %i.ae, i64 -20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ah = add i32 %i.p, -11
  %or.cond7 = icmp ult i32 %i.ah, 6
  %or.cond11 = select i1 %or.cond7, i1 %i.ad, i1 false
  br i1 %or.cond11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = add i32 %i.s, -11
  %i.aj = icmp ult i32 %i.ai, 6
  %or.cond17 = select i1 %or.cond, i1 %i.aj, i1 false
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.e, %bb.b
  %i.ak = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.g ]
  %i.al = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.g ]
  %i.am = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ %or.cond17, %bb.g ]
  %i.an = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.g ]
  %.0298 = phi i32 [ %i.w, %bb.b ], [ %i.ag, %bb.e ], [ %i.w, %bb.d ], [ %i.w, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.ao = zext i32 %i.s to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @stbir__pixel_channels, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24
  %.not326 = icmp eq i8 %i.v, %i.aq
  br i1 %.not326, label %bb.i, label %.thread361

bb.i:                                             ; preds = %bb.h
  %i.ar = sext i32 %.0298 to i64                  ; 4 uses
  %i.as = getelementptr inbounds i8, ptr @__const.stbir__alloc_internal_mem_and_build_samplers.stbir_channel_count_index, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24
  %i.au = sext i8 %i.at to i64
  %i.av = getelementptr inbounds [128 x i8], ptr @stbir__compute_weights, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !126
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load float, ptr %i.ay, align 8, !tbaa !39 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !41 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !126 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load float, ptr %i.be, align 8, !tbaa !39 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !69 ; 4 uses
  %i.bi = icmp slt i32 %i.b, 5
  %i.bj = icmp slt i32 %i.bb, 5
  %or.cond.i = or i1 %i.bi, %i.bj
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp slt i32 %i.b, %i.bb
  %i.bl = select i1 %i.bk, i64 6, i64 7
  br label %stbir__should_do_vertical_first.exit

bb.k:                                             ; preds = %bb.i
  %.not.i = icmp ne i32 %i.bh, 0                  ; 2 uses
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp samesign ult i32 %i.b, 17
  %i.bn = icmp samesign ult i32 %i.bb, 17
  %or.cond3.i = or i1 %i.bm, %i.bn
  br i1 %or.cond3.i, label %stbir__should_do_vertical_first.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bo = fcmp ugt float %i.bf, 1.000000e+00
  br i1 %i.bo, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = zext i1 %.not.i to i64
  br label %stbir__should_do_vertical_first.exit

bb.o:                                             ; preds = %bb.m
  %i.bq = fcmp ugt float %i.bf, 2.000000e+00
  br i1 %i.bq, label %bb.p, label %stbir__should_do_vertical_first.exit

bb.p:                                             ; preds = %bb.o
  %i.br = fcmp ugt float %i.bf, 3.000000e+00
  %..i = select i1 %i.br, i64 5, i64 3
  br label %stbir__should_do_vertical_first.exit

stbir__should_do_vertical_first.exit:             ; preds = %bb.j, %bb.l, %bb.n, %bb.o, %bb.p
  %.0.i = phi i64 [ %i.bl, %bb.j ], [ %i.bp, %bb.n ], [ 4, %bb.l ], [ %..i, %bb.p ], [ 2, %bb.o ]
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.0.i ; 4 uses
  %i.bt = sitofp i32 %i.ax to float               ; 2 uses
  %i.bu = load float, ptr %i.bs, align 16, !tbaa !58
  %i.bv = fmul float %i.bu, %i.bt
  %i.bw = sitofp i32 %i.bd to float               ; 2 uses
  %i.bx = fmul float %i.az, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !58
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = fadd float %i.bv, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !58
  %i.ce = fmul float %i.cd, %i.bw
  %i.cf = fmul float %i.bf, %i.bt
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !58
  %i.ci = fmul float %i.cf, %i.ch
  %i.cj = fadd float %i.ce, %i.ci
  %i.ck = fcmp ole float %i.cj, %i.cb             ; 2 uses
  %i.cl = zext i1 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !48
  %i.co = load i32, ptr %2, align 4, !tbaa !47
  %i.cp = add i32 %i.cn, 1
  %i.cq = sub i32 %i.cp, %i.co
  %i.cr = mul nsw i32 %i.cq, %.0298
  %i.cs = sext i32 %i.cr to i64
  %i.ct = shl nsw i64 %i.cs, 2                    ; 2 uses
  %i.cu = add nsw i64 %i.ct, 12
  %i.cv = sext i32 %i.bb to i64
  %i.cw = shl nsw i64 %i.ar, 2
  %i.cx = mul i64 %i.cw, %i.cv                    ; 2 uses
  %i.cy = add i64 %i.cx, 12
  %i.cz = add nsw i64 %i.ct, 24                   ; 5 uses
  %i.da = and i64 %i.cz, -16
  %.0301 = select i1 %i.ck, i64 %i.da, i64 %i.cy  ; 3 uses
  %i.db = and i64 %.0301, 4092
  %i.dc = icmp eq i64 %i.db, 0
  %i.dd = or disjoint i64 %.0301, 192
  %.1302 = select i1 %i.dc, i64 %i.dd, i64 %.0301 ; 2 uses
  %i.de = add nsw i32 %i.bd, 1
  %.not328 = icmp ne i32 %i.bh, 0
  %.not329 = icmp slt i32 %i.bd, %.0.lcssa.i
  %or.cond335 = select i1 %.not328, i1 true, i1 %.not329
  %.0300 = select i1 %or.cond335, i32 %i.de, i32 %.0.lcssa.i ; 2 uses
  %i.df = sext i32 %.0300 to i64
  %i.dg = mul i64 %.1302, %i.df                   ; 5 uses
  %i.dh = add i64 %i.cx, 4                        ; 5 uses
  %i.di = sext i32 %5 to i64                      ; 2 uses
  %.pn = mul nsw i64 %i.di, 120                   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dm = trunc i64 %.1302 to i32
  %i.dn = add i32 %i.s, -5
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.simple_alpha_unweights, i64 %i.do ; 2 uses
  %i.dq = add i32 %i.p, -5
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.simple_alpha_weights, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.fancy_alpha_weights, i64 %i.dr
  %i.du = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.fancy_alpha_unweights, i64 %i.do
  %i.dv = icmp eq i32 %i.p, 2
  %i.dw = icmp eq i32 %i.s, 3
  %or.cond19 = select i1 %i.dv, i1 %i.dw, i1 false
  %i.dx = icmp eq i32 %i.p, 3
  %i.dy = icmp eq i32 %i.s, 2
  %or.cond21 = select i1 %i.dx, i1 %i.dy, i1 false
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.eb = add i64 %i.cu, %i.dh
  %i.ec = add i64 %i.eb, %i.dg
  %i.ed = mul i64 %i.ec, %i.di
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 112
  %brmerge = select i1 %or.cond19, i1 true, i1 %or.cond21
  %i.es = fcmp olt float %i.az, 1.000000e+00
  %wide.trip.count = zext nneg i32 %5 to i64
  %i.et = icmp eq i32 %i.bh, 0
  %i.eu = icmp ne i32 %i.bb, %i.b
  %i.ev = fsub float %i.az, %i.bf
  %.0286 = tail call float @llvm.fabs.f32(float %i.ev)
  %i.ew = fcmp ole float %.0286, f0x03800000
  %xtraiter437 = and i32 %5, 1
  %i.ex = icmp eq i32 %5, 1
  %unroll_iter441 = and i32 %5, 2147483646
  %invariant.op = add i64 %i.dh, 12
  %lcmp.mod438.not = icmp eq i32 %xtraiter437, 0
  %lcmp.mod440 = trunc i32 %5 to i1
  br label %bb.q

bb.q:                                             ; preds = %.thread359, %stbir__should_do_vertical_first.exit
  %.0305 = phi ptr [ null, %stbir__should_do_vertical_first.exit ], [ %i.sb, %.thread359 ] ; 3 uses
  %.0303 = phi i64 [ 0, %stbir__should_do_vertical_first.exit ], [ %i.sa, %.thread359 ]
  %i.ey = ptrtoint ptr %.0305 to i64              ; 2 uses
  %.not330 = icmp eq ptr %.0305, null             ; 5 uses
  %i.ez = add i64 %i.ey, 15
  %i.fa = and i64 %i.ez, -16                      ; 2 uses
  %i.fb = inttoptr i64 %i.fa to ptr               ; 38 uses
  %i.fc = add i64 %i.ey, 527
  %i.fd = and i64 %i.fc, -16                      ; 3 uses
  br i1 %.not330, label %.thread398, label %.thread

.thread:                                          ; preds = %bb.q
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 416
  store ptr %i.fe, ptr %i.ff, align 16, !tbaa !134
  %.not331347 = icmp eq i64 %i.fa, 0              ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 408
  store ptr %.0305, ptr %i.fg, align 8, !tbaa !132
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 504
  store i64 %.0303, ptr %i.fh, align 8, !tbaa !1043
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 496
  store i32 %i.w, ptr %i.fi, align 16, !tbaa !79
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 500
  store i32 %.0298, ptr %i.fj, align 4, !tbaa !80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 484
  store i32 %6, ptr %i.fk, align 4, !tbaa !135
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 488
  store i32 %7, ptr %i.fl, align 8, !tbaa !136
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 464
  store i32 %.0300, ptr %i.fm, align 16, !tbaa !1044
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 332
  store i32 0, ptr %i.fn, align 4, !tbaa !101
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fb, i64 328
  store i32 %i.dm, ptr %i.fo, align 8, !tbaa !98
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 468
  store i32 %5, ptr %i.fp, align 4, !tbaa !1045
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 492
  store i32 %i.cl, ptr %i.fq, align 4, !tbaa !110
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 472
  store i32 %i.p, ptr %i.fr, align 8, !tbaa !137
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fb, i64 476
  store i32 %i.s, ptr %i.fs, align 4, !tbaa !138
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fb, i64 432 ; 5 uses
  store ptr null, ptr %i.ft, align 16, !tbaa !89
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 448 ; 5 uses
  store ptr null, ptr %i.fu, align 16, !tbaa !93
  br i1 %i.ak, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread
  %i.fv = load ptr, ptr %i.dt, align 8, !tbaa !52
  store ptr %i.fv, ptr %i.ft, align 16, !tbaa !89
  %i.fw = load ptr, ptr %i.du, align 8, !tbaa !52
  store ptr %i.fw, ptr %i.fu, align 16, !tbaa !93
  br label %bb.y

bb.s:                                             ; preds = %.thread
  br i1 %i.al, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fx = load ptr, ptr %i.ds, align 8, !tbaa !52
  store ptr %i.fx, ptr %i.ft, align 16, !tbaa !89
  %i.fy = load ptr, ptr %i.dp, align 8, !tbaa !52
  store ptr %i.fy, ptr %i.fu, align 16, !tbaa !93
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  br i1 %i.am, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fz = load ptr, ptr %i.ds, align 8, !tbaa !52
  store ptr %i.fz, ptr %i.ft, align 16, !tbaa !89
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  br i1 %i.an, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ga = load ptr, ptr %i.dp, align 8, !tbaa !52
  store ptr %i.ga, ptr %i.fu, align 16, !tbaa !93
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.x, %bb.v, %bb.r
  br i1 %brmerge, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %i.es, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr @stbir__simple_flip_3ch, ptr %i.fu, align 16, !tbaa !93
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  store ptr @stbir__simple_flip_3ch, ptr %i.ft, align 16, !tbaa !89
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab, %bb.aa
  %i.gb = add i64 %i.fd, %.pn                     ; 2 uses
  br i1 %i.c, label %.lr.ph.split, label %._crit_edge

.thread398:                                       ; preds = %bb.q
  %i.gc = add nsw i64 %i.fd, %.pn                 ; 3 uses
  br i1 %i.c, label %.thread351.us.preheader, label %._crit_edge

.thread351.us.preheader:                          ; preds = %.thread398
  br i1 %i.ex, label %.thread351.us.epil.preheader, label %.thread351.us

.thread351.us:                                    ; preds = %.thread351.us.preheader, %.thread351.us
  %.0291.in374.us = phi i64 [ %i.go, %.thread351.us ], [ %i.gc, %.thread351.us.preheader ]
  %niter442 = phi i32 [ %niter442.next.1, %.thread351.us ], [ 0, %.thread351.us.preheader ]
  %i.gd = add i64 %.0291.in374.us, 15
  %i.ge = and i64 %i.gd, -16
  %i.gf = add i64 %i.cz, %i.ge
  %i.gg = or i64 %i.gf, 15
  %i.gh = add i64 %i.dg, %i.gg
  %i.gi = and i64 %i.gh, -16
  %.reass = add i64 %i.gi, %invariant.op
  %i.gj = and i64 %.reass, -16
  %i.gk = add i64 %i.cz, %i.gj
  %i.gl = or i64 %i.gk, 15
  %i.gm = add i64 %i.dg, %i.gl
  %i.gn = and i64 %i.gm, -16
  %i.go = add i64 %i.gn, %i.dh                    ; 3 uses
  %niter442.next.1 = add nuw nsw i32 %niter442, 2 ; 2 uses
  %niter442.ncmp.1 = icmp eq i32 %niter442.next.1, %unroll_iter441
  br i1 %niter442.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.thread351.us, !llvm.loop !1042

.lr.ph.split:                                     ; preds = %bb.ac
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fb, i64 416
  %i.gq = load ptr, ptr %i.gp, align 16, !tbaa !134
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %.0291.in374 = phi i64 [ %i.gb, %.lr.ph.split ], [ %i.he, %bb.ad ]
  %i.gr = add i64 %.0291.in374, 15
  %i.gs = and i64 %i.gr, -16                      ; 2 uses
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = getelementptr inbounds nuw [120 x i8], ptr %i.gq, i64 %indvars.iv ; 3 uses
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !109
  %i.gv = add i64 %i.cz, %i.gs                    ; 2 uses
  %i.gw = and i64 %i.gv, -16
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !97
  %i.gz = or i64 %i.gv, 15
  %i.ha = add i64 %i.dg, %i.gz
  %i.hb = and i64 %i.ha, -16                      ; 2 uses
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !108
  %i.he = add i64 %i.hb, %i.dh                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ad, !llvm.loop !1042

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.thread351.us
  br i1 %lcmp.mod438.not, label %._crit_edge, label %.thread351.us.epil.preheader

.thread351.us.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.thread351.us.preheader
  %.0291.in374.us.epil.init = phi i64 [ %i.gc, %.thread351.us.preheader ], [ %i.go, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod440)
  %i.hf = add i64 %.0291.in374.us.epil.init, 15
  %i.hg = and i64 %i.hf, -16
  %i.hh = add i64 %i.cz, %i.hg
  %i.hi = or i64 %i.hh, 15
  %i.hj = add i64 %i.dg, %i.hi
  %i.hk = and i64 %i.hj, -16
  %i.hl = add i64 %i.hk, %i.dh
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ad, %.thread351.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.thread398, %bb.ac
  %.not331349400 = phi i1 [ %.not331347, %bb.ac ], [ true, %.thread398 ], [ true, %.thread351.us.epil.preheader ], [ true, %._crit_edge.loopexit.unr-lcssa ], [ %.not331347, %bb.ad ] ; 2 uses
  %.0291.in.lcssa = phi i64 [ %i.gb, %bb.ac ], [ %i.gc, %.thread398 ], [ %i.hl, %.thread351.us.epil.preheader ], [ %i.go, %._crit_edge.loopexit.unr-lcssa ], [ %i.he, %bb.ad ] ; 4 uses
  br i1 %i.et, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %._crit_edge
  %i.hm = load i32, ptr %i.dz, align 4, !tbaa !129
  %i.hn = sext i32 %i.hm to i64                   ; 4 uses
  %i.ho = load i32, ptr %i.ea, align 8, !tbaa !130
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = add nsw i64 %i.hp, %i.hn
  %.not332 = icmp ult i64 %i.ed, %i.hq
  br i1 %.not332, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not331349400, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fb, i64 416
  %i.hs = load ptr, ptr %i.hr, align 16, !tbaa !134
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !109 ; 2 uses
  store ptr %i.ht, ptr %i.ee, align 8, !tbaa !71
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 %i.hn
  store ptr %i.hu, ptr %i.ef, align 8, !tbaa !72
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.hv = add i64 %.0291.in.lcssa, 15             ; 3 uses
  br i1 %.not330, label %.thread352, label %bb.ai

.thread352:                                       ; preds = %bb.ah
  %i.hw = or i64 %i.hv, 15
  %i.hx = add i64 %i.hw, %i.hn
  %i.hy = and i64 %i.hx, -16
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hz = and i64 %i.hv, -16
  %i.ia = inttoptr i64 %i.hz to ptr
  store ptr %i.ia, ptr %i.ee, align 8, !tbaa !71
  %i.ib = or i64 %i.hv, 15
  %i.ic = add i64 %i.ib, %i.hn
  %i.id = and i64 %i.ic, -16                      ; 2 uses
  %i.ie = inttoptr i64 %i.id to ptr
  store ptr %i.ie, ptr %i.ef, align 8, !tbaa !72
  br label %bb.aj

bb.aj:                                            ; preds = %.thread352, %bb.ai
  %i.if = phi i64 [ %i.hy, %.thread352 ], [ %i.id, %bb.ai ]
  %i.ig = add i64 %i.if, %i.hp
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag, %bb.af, %._crit_edge
  %.2293 = phi i64 [ %.0291.in.lcssa, %._crit_edge ], [ %.0291.in.lcssa, %bb.ag ], [ %.0291.in.lcssa, %bb.af ], [ %i.ig, %bb.aj ]
  %i.ih = add i64 %.2293, 15                      ; 3 uses
  br i1 %.not330, label %.thread353, label %bb.al

.thread353:                                       ; preds = %bb.ak
  %i.ii = load i32, ptr %i.eg, align 4, !tbaa !127
  %i.ij = sext i32 %i.ii to i64
  %i.ik = or i64 %i.ih, 15
  %i.il = add i64 %i.ik, %i.ij
  %i.im = and i64 %i.il, -16
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.in = and i64 %i.ih, -16
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %0, align 8, !tbaa !45
  %i.ip = load i32, ptr %i.eg, align 4, !tbaa !127
  %i.iq = sext i32 %i.ip to i64
  %i.ir = or i64 %i.ih, 15
  %i.is = add i64 %i.ir, %i.iq
  %i.it = and i64 %i.is, -16                      ; 2 uses
  %i.iu = inttoptr i64 %i.it to ptr
  store ptr %i.iu, ptr %i.eh, align 8, !tbaa !67
  br label %bb.am

bb.am:                                            ; preds = %.thread353, %bb.al
  %i.iv = phi i64 [ %i.im, %.thread353 ], [ %i.it, %bb.al ]
  %i.iw = load i32, ptr %i.dj, align 8, !tbaa !128
  %i.ix = sext i32 %i.iw to i64
  %i.iy = add i64 %i.iv, %i.ix                    ; 2 uses
  %i.iz = load ptr, ptr %i.dk, align 8, !tbaa !64
  %i.ja = load ptr, ptr %i.dl, align 8, !tbaa !64
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %bb.an, label %.thread354

bb.an:                                            ; preds = %bb.am
  %i.jc = load ptr, ptr %i.ei, align 8, !tbaa !40
  %i.jd = load ptr, ptr %i.ej, align 8, !tbaa !40
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %bb.ao, label %.thread354

bb.ao:                                            ; preds = %bb.an
  %i.jf = load i32, ptr %i.ek, align 8, !tbaa !44
  %i.jg = load i32, ptr %i.el, align 8, !tbaa !44
  %i.jh = icmp ne i32 %i.jf, %i.jg
  %brmerge416 = select i1 %i.jh, i1 true, i1 %i.eu
  br i1 %brmerge416, label %.thread354, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ji = load float, ptr %i.em, align 8, !tbaa !131
  %i.jj = load float, ptr %i.en, align 8, !tbaa !131
  %i.jk = fsub float %i.ji, %i.jj
  %.0 = tail call float @llvm.fabs.f32(float %i.jk)
  %i.jl = fcmp ole float %.0, f0x03800000
  %or.cond23 = select i1 %i.ew, i1 %i.jl, i1 false
  br i1 %or.cond23, label %bb.aq, label %.thread354

bb.aq:                                            ; preds = %bb.ap
  %i.jm = load i32, ptr %i.eo, align 8, !tbaa !69
  %i.jn = icmp eq i32 %i.jm, %i.bh
  br i1 %i.jn, label %bb.at, label %.thread354

.thread354:                                       ; preds = %bb.ao, %bb.aq, %bb.ap, %bb.an, %bb.am
  %.2 = phi ptr [ null, %bb.am ], [ %0, %bb.aq ], [ null, %bb.ao ], [ null, %bb.an ], [ null, %bb.ap ]
  %i.jo = add i64 %i.iy, 15                       ; 3 uses
  br i1 %.not330, label %.thread358, label %bb.ar

.thread358:                                       ; preds = %.thread354
  %i.jp = load i32, ptr %i.ep, align 4, !tbaa !127
  %i.jq = sext i32 %i.jp to i64
  %i.jr = or i64 %i.jo, 15
  %i.js = add i64 %i.jr, %i.jq
  %i.jt = and i64 %i.js, -16
  br label %bb.as

bb.ar:                                            ; preds = %.thread354
  %i.ju = and i64 %i.jo, -16
  %i.jv = inttoptr i64 %i.ju to ptr
  store ptr %i.jv, ptr %1, align 8, !tbaa !45
  %i.jw = load i32, ptr %i.ep, align 4, !tbaa !127
  %i.jx = sext i32 %i.jw to i64
  %i.jy = or i64 %i.jo, 15
  %i.jz = add i64 %i.jy, %i.jx
  %i.ka = and i64 %i.jz, -16                      ; 2 uses
  %i.kb = inttoptr i64 %i.ka to ptr
  store ptr %i.kb, ptr %i.eq, align 8, !tbaa !67
  br label %bb.as

bb.as:                                            ; preds = %.thread358, %bb.ar
  %i.kc = phi i64 [ %i.jt, %.thread358 ], [ %i.ka, %bb.ar ]
  %i.kd = load i32, ptr %i.er, align 8, !tbaa !128
  %i.ke = sext i32 %i.kd to i64
  %i.kf = add i64 %i.kc, %i.ke
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.as
  %.3294.in = phi i64 [ %i.kf, %bb.as ], [ %i.iy, %bb.aq ]
  %.not333 = phi i1 [ true, %bb.as ], [ false, %bb.aq ]
  %.3 = phi ptr [ %.2, %bb.as ], [ null, %bb.aq ]
  br i1 %.not331349400, label %.thread359, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.1308.le = select i1 %.not330, ptr null, ptr %i.fb ; 11 uses
  tail call void @stbir__calculate_filters(ptr noundef nonnull %0, ptr noundef null, ptr noundef %9)
  %i.kg = getelementptr inbounds [8 x i8], ptr @stbir__horizontal_gather_n_coeffs_funcs, i64 %i.ar
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !1047
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !70 ; 3 uses
  %i.kk = and i32 %i.kj, 3
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !52
  %i.ko = getelementptr inbounds nuw i8, ptr %.1308.le, i64 440 ; 2 uses
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !104
  %i.kp = icmp slt i32 %i.kj, 13
  br i1 %i.kp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kq = getelementptr inbounds [8 x i8], ptr @stbir__horizontal_gather_channels_funcs, i64 %i.ar
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1047
  %i.ks = sext i32 %i.kj to i64
  %i.kt = getelementptr [8 x i8], ptr %i.kr, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 -8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !52
  store ptr %i.kv, ptr %i.ko, align 8, !tbaa !104
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.kw = getelementptr inbounds nuw i8, ptr %.1308.le, i64 368 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.fb, i64 372
  %i.ky = load <2 x i32>, ptr %2, align 4, !tbaa !32
  store <2 x i32> %i.ky, ptr %i.kw, align 8, !tbaa !32
  tail call void @stbir__get_extents(ptr noundef nonnull %0, ptr noundef nonnull %i.kw)
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !66
  %i.lb = load ptr, ptr %0, align 8, !tbaa !45
  %i.lc = load ptr, ptr %i.eh, align 8, !tbaa !67
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !68
  %i.lf = load i32, ptr %i.ki, align 4, !tbaa !70 ; 2 uses
  %i.lg = load i32, ptr %i.kx, align 4, !tbaa !111
  %i.lh = tail call i32 @stbir__pack_coefficients(i32 noundef %i.la, ptr noundef %i.lb, ptr noundef %i.lc, i32 noundef %i.le, i32 noundef %i.lf, i32 poison, i32 noundef %i.lg) ; 0 uses
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !68
  %i.li = getelementptr inbounds nuw i8, ptr %.1308.le, i64 152 ; 8 uses
  %i.lj = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.lk = ptrtoint ptr %.1308.le to i64           ; 2 uses
  %i.ll = sub i64 %i.lj, %i.lk                    ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %.1308.le, i64 %i.ll ; 4 uses
  %i.ln = load <4 x float>, ptr %i.lm, align 1, !tbaa !24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lp = load <4 x float>, ptr %i.lo, align 1, !tbaa !24
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lr = load <4 x float>, ptr %i.lq, align 1, !tbaa !24
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  %i.lt = load <4 x float>, ptr %i.ls, align 1, !tbaa !24
  store <4 x float> %i.ln, ptr %i.fb, align 4, !tbaa !24
  %i.lu = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x float> %i.lp, ptr %i.lu, align 4, !tbaa !24
  %i.lv = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  store <4 x float> %i.lr, ptr %i.lv, align 4, !tbaa !24
  %i.lw = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !24
  %i.lx = and i64 %i.lk, -64
  %i.ly = add i64 %i.lx, 64
  %i.lz = inttoptr i64 %i.ly to ptr
  %i.ma = getelementptr inbounds nuw i8, ptr %.1308.le, i64 88 ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.3.i = phi ptr [ %i.lz, %bb.aw ], [ %i.mo, %bb.az ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i) #24, !srcloc !29
  %i.mb = icmp ugt ptr %.3.i, %i.ma
  br i1 %i.mb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mc = icmp eq ptr %.3.i, %i.li
  br i1 %i.mc, label %stbir_simd_memcpy.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.4.i = phi ptr [ %.3.i, %bb.ax ], [ %i.ma, %bb.ay ] ; 6 uses
  %i.md = getelementptr inbounds i8, ptr %.4.i, i64 %i.ll ; 4 uses
  %i.me = load <4 x float>, ptr %i.md, align 1, !tbaa !24
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mg = load <4 x float>, ptr %i.mf, align 1, !tbaa !24
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mi = load <4 x float>, ptr %i.mh, align 1, !tbaa !24
  %i.mj = getelementptr inbounds nuw i8, ptr %i.md, i64 48
  %i.mk = load <4 x float>, ptr %i.mj, align 1, !tbaa !24
  store <4 x float> %i.me, ptr %.4.i, align 1, !tbaa !24
  %i.ml = getelementptr inbounds nuw i8, ptr %.4.i, i64 16
  store <4 x float> %i.mg, ptr %i.ml, align 1, !tbaa !24
  %i.mm = getelementptr inbounds nuw i8, ptr %.4.i, i64 32
  store <4 x float> %i.mi, ptr %i.mm, align 1, !tbaa !24
  %i.mn = getelementptr inbounds nuw i8, ptr %.4.i, i64 48
  store <4 x float> %i.mk, ptr %i.mn, align 1, !tbaa !24
  %i.mo = getelementptr inbounds nuw i8, ptr %.4.i, i64 64
  br label %bb.ax, !llvm.loop !2

stbir_simd_memcpy.exit:                           ; preds = %bb.ay
  br i1 %.not333, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %stbir_simd_memcpy.exit
  %i.mp = getelementptr inbounds nuw i8, ptr %.1308.le, i64 304
  %i.mq = ptrtoint ptr %i.li to i64               ; 2 uses
  %i.mr = sub i64 %i.lj, %i.mq                    ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.li, i64 %i.mr ; 4 uses
  %i.mt = load <4 x float>, ptr %i.ms, align 1, !tbaa !24
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mv = load <4 x float>, ptr %i.mu, align 1, !tbaa !24
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mx = load <4 x float>, ptr %i.mw, align 1, !tbaa !24
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  %i.mz = load <4 x float>, ptr %i.my, align 1, !tbaa !24
  store <4 x float> %i.mt, ptr %i.li, align 8, !tbaa !24
  %i.na = getelementptr inbounds nuw i8, ptr %i.fb, i64 168
  store <4 x float> %i.mv, ptr %i.na, align 4, !tbaa !24
  %i.nb = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  store <4 x float> %i.mx, ptr %i.nb, align 4, !tbaa !24
  %i.nc = getelementptr inbounds nuw i8, ptr %i.fb, i64 200
  store <4 x float> %i.mz, ptr %i.nc, align 4, !tbaa !24
  %i.nd = and i64 %i.mq, -64
  %i.ne = add i64 %i.nd, 64
  %i.nf = inttoptr i64 %i.ne to ptr
  %i.ng = getelementptr inbounds nuw i8, ptr %.1308.le, i64 240 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %bb.ba
  %.3.i338 = phi ptr [ %i.nf, %bb.ba ], [ %i.nu, %bb.bd ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i338) #24, !srcloc !29
  %i.nh = icmp ugt ptr %.3.i338, %i.ng
  br i1 %i.nh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ni = icmp eq ptr %.3.i338, %i.mp
  br i1 %i.ni, label %stbir_simd_memcpy.exit340, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.4.i339 = phi ptr [ %.3.i338, %bb.bb ], [ %i.ng, %bb.bc ] ; 6 uses
  %i.nj = getelementptr inbounds i8, ptr %.4.i339, i64 %i.mr ; 4 uses
  %i.nk = load <4 x float>, ptr %i.nj, align 1, !tbaa !24
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nm = load <4 x float>, ptr %i.nl, align 1, !tbaa !24
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.no = load <4 x float>, ptr %i.nn, align 1, !tbaa !24
  %i.np = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.nq = load <4 x float>, ptr %i.np, align 1, !tbaa !24
  store <4 x float> %i.nk, ptr %.4.i339, align 1, !tbaa !24
  %i.nr = getelementptr inbounds nuw i8, ptr %.4.i339, i64 16
  store <4 x float> %i.nm, ptr %i.nr, align 1, !tbaa !24
  %i.ns = getelementptr inbounds nuw i8, ptr %.4.i339, i64 32
  store <4 x float> %i.no, ptr %i.ns, align 1, !tbaa !24
  %i.nt = getelementptr inbounds nuw i8, ptr %.4.i339, i64 48
  store <4 x float> %i.nq, ptr %i.nt, align 1, !tbaa !24
  %i.nu = getelementptr inbounds nuw i8, ptr %.4.i339, i64 64
  br label %bb.bb, !llvm.loop !2

bb.be:                                            ; preds = %stbir_simd_memcpy.exit
  tail call void @stbir__calculate_filters(ptr noundef %1, ptr noundef %.3, ptr noundef %9)
  %i.nv = getelementptr inbounds nuw i8, ptr %.1308.le, i64 304
  %i.nw = ptrtoint ptr %1 to i64
  %i.nx = ptrtoint ptr %i.li to i64               ; 2 uses
  %i.ny = sub i64 %i.nw, %i.nx                    ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr %i.li, i64 %i.ny ; 4 uses
  %i.oa = load <4 x float>, ptr %i.nz, align 1, !tbaa !24
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oc = load <4 x float>, ptr %i.ob, align 1, !tbaa !24
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oe = load <4 x float>, ptr %i.od, align 1, !tbaa !24
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  %i.og = load <4 x float>, ptr %i.of, align 1, !tbaa !24
  store <4 x float> %i.oa, ptr %i.li, align 8, !tbaa !24
  %i.oh = getelementptr inbounds nuw i8, ptr %i.fb, i64 168
  store <4 x float> %i.oc, ptr %i.oh, align 4, !tbaa !24
  %i.oi = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  store <4 x float> %i.oe, ptr %i.oi, align 4, !tbaa !24
  %i.oj = getelementptr inbounds nuw i8, ptr %i.fb, i64 200
  store <4 x float> %i.og, ptr %i.oj, align 4, !tbaa !24
  %i.ok = and i64 %i.nx, -64
  %i.ol = add i64 %i.ok, 64
  %i.om = inttoptr i64 %i.ol to ptr
  %i.on = getelementptr inbounds nuw i8, ptr %.1308.le, i64 240 ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %bb.be
  %.3.i341 = phi ptr [ %i.om, %bb.be ], [ %i.pb, %bb.bh ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i341) #24, !srcloc !29
  %i.oo = icmp ugt ptr %.3.i341, %i.on
  br i1 %i.oo, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.op = icmp eq ptr %.3.i341, %i.nv
  br i1 %i.op, label %stbir_simd_memcpy.exit340, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.4.i342 = phi ptr [ %.3.i341, %bb.bf ], [ %i.on, %bb.bg ] ; 6 uses
  %i.oq = getelementptr inbounds i8, ptr %.4.i342, i64 %i.ny ; 4 uses
  %i.or = load <4 x float>, ptr %i.oq, align 1, !tbaa !24
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.ot = load <4 x float>, ptr %i.os, align 1, !tbaa !24
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.ov = load <4 x float>, ptr %i.ou, align 1, !tbaa !24
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %i.ox = load <4 x float>, ptr %i.ow, align 1, !tbaa !24
  store <4 x float> %i.or, ptr %.4.i342, align 1, !tbaa !24
  %i.oy = getelementptr inbounds nuw i8, ptr %.4.i342, i64 16
  store <4 x float> %i.ot, ptr %i.oy, align 1, !tbaa !24
  %i.oz = getelementptr inbounds nuw i8, ptr %.4.i342, i64 32
  store <4 x float> %i.ov, ptr %i.oz, align 1, !tbaa !24
  %i.pa = getelementptr inbounds nuw i8, ptr %.4.i342, i64 48
  store <4 x float> %i.ox, ptr %i.pa, align 1, !tbaa !24
  %i.pb = getelementptr inbounds nuw i8, ptr %.4.i342, i64 64
  br label %bb.bf, !llvm.loop !2

stbir_simd_memcpy.exit340:                        ; preds = %bb.bc, %bb.bg
  %i.pc = getelementptr inbounds nuw i8, ptr %i.fb, i64 416
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !134 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.fb, i64 468
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !1045 ; 8 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.fb, i64 280
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !139 ; 2 uses
  %i.pi = load ptr, ptr %i.li, align 8, !tbaa !116
  %i.pj = icmp sgt i32 %i.pf, 0
  br i1 %i.pj, label %.lr.ph76.i, label %.loopexit

.lr.ph76.i:                                       ; preds = %stbir_simd_memcpy.exit340
  %i.pk = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !82
  %i.pm = getelementptr inbounds nuw i8, ptr %i.fb, i64 252
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !124 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.fb, i64 188
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !1048 ; 3 uses
  %.not78.i = icmp eq i32 %i.ph, 0
  %i.pq = mul nsw i32 %i.pn, 3
  %i.pr = sub nsw i32 0, %i.pn                    ; 4 uses
  %i.ps = add nsw i32 %i.pn, %i.pl                ; 4 uses
  %i.pt = zext nneg i32 %i.pf to i64              ; 3 uses
  br i1 %.not78.i, label %.lr.ph76.split.us.i.preheader, label %.lr.ph76.split.i

.lr.ph76.split.us.i.preheader:                    ; preds = %.lr.ph76.i
  %xtraiter443 = and i64 %i.pt, 1
  %i.pu = icmp eq i32 %i.pf, 1
  br i1 %i.pu, label %.lr.ph76.split.us.i.epil.preheader, label %.lr.ph76.split.us.i.preheader.new

.lr.ph76.split.us.i.preheader.new:                ; preds = %.lr.ph76.split.us.i.preheader
  %unroll_iter446 = and i64 %i.pt, 2147483646
  br label %.lr.ph76.split.us.i

.lr.ph76.split.us.i:                              ; preds = %.lr.ph76.split.us.i, %.lr.ph76.split.us.i.preheader.new
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %indvars.iv.next84.i.1, %.lr.ph76.split.us.i ] ; 4 uses
  %.05674.us.i = phi i32 [ %i.pp, %.lr.ph76.split.us.i.preheader.new ], [ %i.qm, %.lr.ph76.split.us.i ] ; 2 uses
  %.05773.us.i = phi i32 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %i.qk, %.lr.ph76.split.us.i ] ; 2 uses
  %niter447 = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %niter447.next.1, %.lr.ph76.split.us.i ]
  %i.pv = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv83.i ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 20
  store i32 %.05773.us.i, ptr %i.pw, align 4, !tbaa !118
  %i.px = trunc i64 %indvars.iv83.i to i32
  %i.py = sub i32 %i.pf, %i.px
  %i.pz = sdiv i32 %.05674.us.i, %i.py            ; 2 uses
  %i.qa = add nsw i32 %i.pz, %.05773.us.i         ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  store i32 %i.qa, ptr %i.qb, align 8, !tbaa !119
  %i.qc = sub nsw i32 %.05674.us.i, %i.pz         ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 28
  store i32 %i.pr, ptr %i.qd, align 4, !tbaa !122
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  store i32 %i.ps, ptr %i.qe, align 8, !tbaa !123
  %indvars.iv.next84.i = or disjoint i64 %indvars.iv83.i, 1 ; 2 uses
  %i.qf = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv.next84.i ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 20
  store i32 %i.qa, ptr %i.qg, align 4, !tbaa !118
  %i.qh = trunc i64 %indvars.iv.next84.i to i32
  %i.qi = sub i32 %i.pf, %i.qh
  %i.qj = sdiv i32 %i.qc, %i.qi                   ; 2 uses
  %i.qk = add nsw i32 %i.qj, %i.qa                ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  store i32 %i.qk, ptr %i.ql, align 8, !tbaa !119
  %i.qm = sub nsw i32 %i.qc, %i.qj                ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 28
  store i32 %i.pr, ptr %i.qn, align 4, !tbaa !122
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qf, i64 32
  store i32 %i.ps, ptr %i.qo, align 8, !tbaa !123
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %niter447.next.1 = add i64 %niter447, 2         ; 2 uses
  %niter447.ncmp.1 = icmp eq i64 %niter447.next.1, %unroll_iter446
  br i1 %niter447.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph76.split.us.i, !llvm.loop !12

.lr.ph76.split.i:                                 ; preds = %.lr.ph76.i, %bb.bk
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bk ], [ 0, %.lr.ph76.i ] ; 4 uses
  %.05674.i = phi i32 [ %i.rk, %bb.bk ], [ %i.pp, %.lr.ph76.i ] ; 2 uses
  %.05773.i = phi i32 [ %i.qu, %bb.bk ], [ 0, %.lr.ph76.i ] ; 4 uses
  %i.qp = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv.i ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 20 ; 2 uses
  store i32 %.05773.i, ptr %i.qq, align 4, !tbaa !118
  %i.qr = trunc i64 %indvars.iv.i to i32
  %i.qs = sub i32 %i.pf, %i.qr
  %i.qt = sdiv i32 %.05674.i, %i.qs               ; 3 uses
  %i.qu = add nsw i32 %i.qt, %.05773.i            ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  store i32 %i.qu, ptr %i.qv, align 8, !tbaa !119
  %.not79.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not79.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph76.split.i
  %i.qw = sext i32 %.05773.i to i64
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %i.qw ; 2 uses
  %spec.select.i344 = tail call i32 @llvm.smin.i32(i32 %i.qt, i32 %i.pq) ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !47 ; 2 uses
  %.not65.i = icmp slt i32 %spec.select.i344, 1
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i345

.lr.ph.i345:                                      ; preds = %bb.bi, %bb.bj
  %i.qz = phi i32 [ %i.rf, %bb.bj ], [ %i.qy, %bb.bi ] ; 2 uses
  %.069.i = phi ptr [ %i.ra, %bb.bj ], [ %i.qx, %bb.bi ]
  %.05268.i = phi i32 [ %spec.select64.i, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %.05367.i = phi i32 [ %i.re, %bb.bj ], [ 1, %bb.bi ] ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !47 ; 3 uses
  %i.rc = icmp sgt i32 %i.rb, %i.qy
  br i1 %i.rc, label %._crit_edge.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i345
  %i.rd = icmp slt i32 %i.rb, %i.qz
  %spec.select64.i = select i1 %i.rd, i32 %.05367.i, i32 %.05268.i ; 2 uses
  %i.re = add nuw i32 %.05367.i, 1
  %exitcond.not.i346 = icmp eq i32 %.05367.i, %spec.select.i344
  %i.rf = tail call i32 @llvm.smin.i32(i32 %i.rb, i32 %i.qz)
  br i1 %exitcond.not.i346, label %._crit_edge.i, label %.lr.ph.i345, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.bj, %.lr.ph.i345, %bb.bi
  %.052.lcssa.i = phi i32 [ 0, %bb.bi ], [ %spec.select64.i, %bb.bj ], [ %.05268.i, %.lr.ph.i345 ] ; 2 uses
  %i.rg = getelementptr i8, ptr %i.qp, i64 -96    ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !119
  %i.ri = add nsw i32 %i.rh, %.052.lcssa.i
  store i32 %i.ri, ptr %i.rg, align 8, !tbaa !119
  %i.rj = add nsw i32 %.052.lcssa.i, %.05773.i
  store i32 %i.rj, ptr %i.qq, align 4, !tbaa !118
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i, %.lr.ph76.split.i
  %i.rk = sub nsw i32 %.05674.i, %i.qt
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qp, i64 28
  store i32 %i.pr, ptr %i.rl, align 4, !tbaa !122
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  store i32 %i.ps, ptr %i.rm, align 8, !tbaa !123
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i, %i.pt
  br i1 %exitcond82.not.i, label %.loopexit, label %.lr.ph76.split.i, !llvm.loop !12

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph76.split.us.i
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %.loopexit, label %.lr.ph76.split.us.i.epil.preheader

.lr.ph76.split.us.i.epil.preheader:               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph76.split.us.i.preheader
  %indvars.iv83.i.epil.init = phi i64 [ 0, %.lr.ph76.split.us.i.preheader ], [ %indvars.iv.next84.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.i.epil.init = phi i32 [ %i.pp, %.lr.ph76.split.us.i.preheader ], [ %i.qm, %.loopexit.loopexit.unr-lcssa ]
  %.05773.us.i.epil.init = phi i32 [ 0, %.lr.ph76.split.us.i.preheader ], [ %i.qk, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod445 = trunc i32 %i.pf to i1
  tail call void @llvm.assume(i1 %lcmp.mod445)
  %i.rn = getelementptr inbounds nuw [120 x i8], ptr %i.pd, i64 %indvars.iv83.i.epil.init ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 20
  store i32 %.05773.us.i.epil.init, ptr %i.ro, align 4, !tbaa !118
  %i.rp = trunc i64 %indvars.iv83.i.epil.init to i32
  %i.rq = sub i32 %i.pf, %i.rp
  %i.rr = sdiv i32 %.05674.us.i.epil.init, %i.rq
  %i.rs = add nsw i32 %i.rr, %.05773.us.i.epil.init
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  store i32 %i.rs, ptr %i.rt, align 8, !tbaa !119
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rn, i64 28
  store i32 %i.pr, ptr %i.ru, align 4, !tbaa !122
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  store i32 %i.ps, ptr %i.rv, align 8, !tbaa !123
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bk, %.lr.ph76.split.us.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %stbir_simd_memcpy.exit340
  %i.rw = getelementptr inbounds nuw i8, ptr %i.fb, i64 276
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !1049 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.fb, i64 332
  %.not334 = icmp eq i32 %i.ph, 0
  %i.rz = tail call i32 @llvm.smin.i32(i32 %i.rx, i32 %.0.lcssa.i)
  %spec.store.select = select i1 %.not334, i32 %i.rz, i32 %i.rx
  store i32 %spec.store.select, ptr %i.ry, align 4
  br label %.thread361

.thread359:                                       ; preds = %bb.at
  %i.sa = add i64 %.3294.in, 15                   ; 2 uses
  %i.sb = tail call noalias ptr @malloc(i64 noundef %i.sa) #25 ; 2 uses
  %i.sc = icmp eq ptr %i.sb, null
  br i1 %i.sc, label %.thread361, label %bb.q

.thread361:                                       ; preds = %.thread359, %.loopexit, %bb.h
  %.2311 = phi ptr [ null, %bb.h ], [ %.1308.le, %.loopexit ], [ null, %.thread359 ]
  ret ptr %.2311
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define noundef i32 @stbir__perform_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load i32, ptr %i.e, align 8, !tbaa !139
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @stbir__vertical_gather_loop(ptr noundef nonnull %0, ptr noundef %i.d, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @stbir__vertical_scatter_loop(ptr noundef nonnull %0, ptr noundef %i.d, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbir__update_info_from_resize(ptr nofree noundef captures(none) initializes((304, 328), (336, 368), (424, 432), (456, 464)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !143  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.f, ptr %i.g, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !145  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !146  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !113
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !102
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1050
  %i.s = icmp eq i32 %i.r, 6
  %i.t = add i32 %i.b, -1
  %or.cond = icmp ult i32 %i.t, 2
  %or.cond111 = select i1 %i.s, i1 %or.cond, i1 false
  %i.u = add i32 %i.d, -1
  %or.cond3 = icmp ult i32 %i.u, 2
  %or.cond112 = select i1 %or.cond111, i1 %or.cond3, i1 false ; 2 uses
  %spec.select = select i1 %or.cond112, i32 0, i32 %i.b
  %spec.select115 = select i1 %or.cond112, i32 0, i32 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.097 = phi i32 [ %i.b, %bb.a ], [ %spec.select, %bb.b ] ; 8 uses
  %.096 = phi i32 [ %i.d, %bb.a ], [ %spec.select115, %bb.b ] ; 10 uses
  %i.v = icmp eq i32 %i.i, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.x = load i32, ptr %i.w, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !90
  %i.aa = mul nsw i32 %i.z, %i.x
  %i.ab = zext i32 %.097 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !24
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nsw i32 %i.aa, %i.ae
  store i32 %i.af, ptr %i.j, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = icmp eq i32 %i.l, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !79 ; 2 uses
  br i1 %i.ag, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre118 = zext i32 %.096 to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !92
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = zext i32 %.096 to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !24
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.al, %i.ap
  store i32 %i.aq, ptr %i.m, align 4, !tbaa !113
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi = phi i64 [ %.pre118, %._crit_edge ], [ %i.am, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !147
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.au = load i32, ptr %i.at, align 8, !tbaa !136
  %i.av = sext i32 %i.au to i64
  %i.aw = sext i32 %i.l to i64
  %i.ax = mul nsw i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !135
  %i.bb = mul nsw i32 %i.ai, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %.pre-phi
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !24
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul nsw i32 %i.bb, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.ay, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !112
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !148
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !86
  %i.bm = load ptr, ptr %1, align 8, !tbaa !149
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !150
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !94
  %i.br = icmp eq i32 %.097, 0
  %i.bs = icmp eq i32 %.097, 3                    ; 3 uses
  switch i32 %.097, label %bb.n [
    i32 3, label %bb.h
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !89
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !93
  %.not107 = icmp eq ptr %i.bw, null
  br i1 %.not107, label %bb.j, label %bb.k
end_hunk_1
