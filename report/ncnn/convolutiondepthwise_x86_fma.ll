Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_fma?download=true
inline.NumInlined: 225
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL21convdw5x5s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  %.0228 = phi i32 [ %i.fy, %.lr.ph ], [ 0, %.preheader ]
  %.1227 = phi ptr [ %i.fh, %.lr.ph ], [ %.097239, %.preheader ] ; 5 uses
  %.199226 = phi ptr [ %i.eo, %.lr.ph ], [ %.098238, %.preheader ] ; 5 uses
  %.1101225 = phi ptr [ %i.dv, %.lr.ph ], [ %.0100237, %.preheader ] ; 5 uses
  %.1103224 = phi ptr [ %i.dc, %.lr.ph ], [ %.0102236, %.preheader ] ; 5 uses
  %.1105223 = phi ptr [ %i.cj, %.lr.ph ], [ %.0104235, %.preheader ] ; 5 uses
  %.1107222 = phi ptr [ %i.fx, %.lr.ph ], [ %.0106234, %.preheader ] ; 2 uses
  %i.cg = load <4 x float>, ptr %.1105223, align 16, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %.1105223, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 16, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %.1105223, i64 32 ; 3 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %.1105223, i64 48
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !tbaa !87
  %i.cn = getelementptr inbounds nuw i8, ptr %.1105223, i64 64
  %i.co = load <4 x float>, ptr %i.cn, align 16, !tbaa !87
  %i.cp = load <4 x float>, ptr %i.ak, align 16, !tbaa !87
  %i.cq = load <4 x float>, ptr %i.an, align 16, !tbaa !87
  %i.cr = load <4 x float>, ptr %i.ao, align 16, !tbaa !87
  %i.cs = load <4 x float>, ptr %i.ap, align 16, !tbaa !87
  %i.ct = load <4 x float>, ptr %i.aq, align 16, !tbaa !87
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cp, <4 x float> nofpclass(nan inf) %i.cg, <4 x float> nofpclass(nan inf) %i.ad)
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cq, <4 x float> nofpclass(nan inf) %i.ci, <4 x float> nofpclass(nan inf) %i.cu)
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> nofpclass(nan inf) %i.ck, <4 x float> nofpclass(nan inf) %i.cv)
  %i.cx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cs, <4 x float> nofpclass(nan inf) %i.cm, <4 x float> nofpclass(nan inf) %i.cw)
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> nofpclass(nan inf) %i.co, <4 x float> nofpclass(nan inf) %i.cx)
  %i.cz = load <4 x float>, ptr %.1103224, align 16, !tbaa !87
  %i.da = getelementptr inbounds nuw i8, ptr %.1103224, i64 16
  %i.db = load <4 x float>, ptr %i.da, align 16, !tbaa !87
  %i.dc = getelementptr inbounds nuw i8, ptr %.1103224, i64 32 ; 3 uses
  %i.dd = load <4 x float>, ptr %i.dc, align 16, !tbaa !87
  %i.de = getelementptr inbounds nuw i8, ptr %.1103224, i64 48
  %i.df = load <4 x float>, ptr %i.de, align 16, !tbaa !87
  %i.dg = getelementptr inbounds nuw i8, ptr %.1103224, i64 64
  %i.dh = load <4 x float>, ptr %i.dg, align 16, !tbaa !87
  %i.di = load <4 x float>, ptr %i.ar, align 16, !tbaa !87
  %i.dj = load <4 x float>, ptr %i.as, align 16, !tbaa !87
  %i.dk = load <4 x float>, ptr %i.at, align 16, !tbaa !87
  %i.dl = load <4 x float>, ptr %i.au, align 16, !tbaa !87
  %i.dm = load <4 x float>, ptr %i.av, align 16, !tbaa !87
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.di, <4 x float> nofpclass(nan inf) %i.cz, <4 x float> nofpclass(nan inf) %i.cy)
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.db, <4 x float> nofpclass(nan inf) %i.dn)
  %i.dp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.do)
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.dp)
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dm, <4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dq)
  %i.ds = load <4 x float>, ptr %.1101225, align 16, !tbaa !87
  %i.dt = getelementptr inbounds nuw i8, ptr %.1101225, i64 16
  %i.du = load <4 x float>, ptr %i.dt, align 16, !tbaa !87
  %i.dv = getelementptr inbounds nuw i8, ptr %.1101225, i64 32 ; 3 uses
  %i.dw = load <4 x float>, ptr %i.dv, align 16, !tbaa !87
  %i.dx = getelementptr inbounds nuw i8, ptr %.1101225, i64 48
  %i.dy = load <4 x float>, ptr %i.dx, align 16, !tbaa !87
  %i.dz = getelementptr inbounds nuw i8, ptr %.1101225, i64 64
  %i.ea = load <4 x float>, ptr %i.dz, align 16, !tbaa !87
  %i.eb = load <4 x float>, ptr %i.aw, align 16, !tbaa !87
  %i.ec = load <4 x float>, ptr %i.ax, align 16, !tbaa !87
  %i.ed = load <4 x float>, ptr %i.ay, align 16, !tbaa !87
  %i.ee = load <4 x float>, ptr %i.az, align 16, !tbaa !87
  %i.ef = load <4 x float>, ptr %i.ba, align 16, !tbaa !87
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eb, <4 x float> nofpclass(nan inf) %i.ds, <4 x float> nofpclass(nan inf) %i.dr)
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> nofpclass(nan inf) %i.du, <4 x float> nofpclass(nan inf) %i.eg)
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ed, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) %i.eh)
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.ei)
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.ej)
  %i.el = load <4 x float>, ptr %.199226, align 16, !tbaa !87
  %i.em = getelementptr inbounds nuw i8, ptr %.199226, i64 16
  %i.en = load <4 x float>, ptr %i.em, align 16, !tbaa !87
  %i.eo = getelementptr inbounds nuw i8, ptr %.199226, i64 32 ; 3 uses
  %i.ep = load <4 x float>, ptr %i.eo, align 16, !tbaa !87
  %i.eq = getelementptr inbounds nuw i8, ptr %.199226, i64 48
  %i.er = load <4 x float>, ptr %i.eq, align 16, !tbaa !87
  %i.es = getelementptr inbounds nuw i8, ptr %.199226, i64 64
  %i.et = load <4 x float>, ptr %i.es, align 16, !tbaa !87
  %i.eu = load <4 x float>, ptr %i.bb, align 16, !tbaa !87
  %i.ev = load <4 x float>, ptr %i.bc, align 16, !tbaa !87
  %i.ew = load <4 x float>, ptr %i.bd, align 16, !tbaa !87
  %i.ex = load <4 x float>, ptr %i.be, align 16, !tbaa !87
  %i.ey = load <4 x float>, ptr %i.bf, align 16, !tbaa !87
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eu, <4 x float> nofpclass(nan inf) %i.el, <4 x float> nofpclass(nan inf) %i.ek)
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ev, <4 x float> nofpclass(nan inf) %i.en, <4 x float> nofpclass(nan inf) %i.ez)
  %i.fb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.fa)
  %i.fc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> nofpclass(nan inf) %i.er, <4 x float> nofpclass(nan inf) %i.fb)
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ey, <4 x float> nofpclass(nan inf) %i.et, <4 x float> nofpclass(nan inf) %i.fc)
  %i.fe = load <4 x float>, ptr %.1227, align 16, !tbaa !87
  %i.ff = getelementptr inbounds nuw i8, ptr %.1227, i64 16
  %i.fg = load <4 x float>, ptr %i.ff, align 16, !tbaa !87
  %i.fh = getelementptr inbounds nuw i8, ptr %.1227, i64 32 ; 3 uses
  %i.fi = load <4 x float>, ptr %i.fh, align 16, !tbaa !87
  %i.fj = getelementptr inbounds nuw i8, ptr %.1227, i64 48
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !tbaa !87
  %i.fl = getelementptr inbounds nuw i8, ptr %.1227, i64 64
  %i.fm = load <4 x float>, ptr %i.fl, align 16, !tbaa !87
  %i.fn = load <4 x float>, ptr %i.bg, align 16, !tbaa !87
  %i.fo = load <4 x float>, ptr %i.bh, align 16, !tbaa !87
  %i.fp = load <4 x float>, ptr %i.bi, align 16, !tbaa !87
  %i.fq = load <4 x float>, ptr %i.bj, align 16, !tbaa !87
  %i.fr = load <4 x float>, ptr %i.bk, align 16, !tbaa !87
  %i.fs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> nofpclass(nan inf) %i.fe, <4 x float> nofpclass(nan inf) %i.fd)
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fo, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> nofpclass(nan inf) %i.fs)
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fp, <4 x float> nofpclass(nan inf) %i.fi, <4 x float> nofpclass(nan inf) %i.ft)
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> nofpclass(nan inf) %i.fk, <4 x float> nofpclass(nan inf) %i.fu)
  %i.fw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fr, <4 x float> nofpclass(nan inf) %i.fm, <4 x float> nofpclass(nan inf) %i.fv)
  store <4 x float> %i.fw, ptr %.1107222, align 16, !tbaa !87
  %i.fx = getelementptr inbounds nuw i8, ptr %.1107222, i64 16 ; 2 uses
  %i.fy = add nuw nsw i32 %.0228, 1               ; 2 uses
  %i.fz = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ga = icmp slt i32 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !272

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %7, align 4, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.gb = phi i32 [ %i.cd, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.gc = phi i32 [ %i.ce, %.preheader ], [ %i.fz, %._crit_edge.loopexit ]
  %.1107.lcssa = phi ptr [ %.0106234, %.preheader ], [ %i.fx, %._crit_edge.loopexit ]
  %.1105.lcssa = phi ptr [ %.0104235, %.preheader ], [ %i.cj, %._crit_edge.loopexit ]
  %.1103.lcssa = phi ptr [ %.0102236, %.preheader ], [ %i.dc, %._crit_edge.loopexit ]
  %.1101.lcssa = phi ptr [ %.0100237, %.preheader ], [ %i.dv, %._crit_edge.loopexit ]
  %.199.lcssa = phi ptr [ %.098238, %.preheader ], [ %i.eo, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.097239, %.preheader ], [ %i.fh, %._crit_edge.loopexit ]
  %i.gd = load i32, ptr %9, align 4, !tbaa !69
  %i.ge = sext i32 %i.gd to i64                   ; 5 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.1105.lcssa, i64 %i.ge
  %i.gg = getelementptr inbounds [4 x i8], ptr %.1103.lcssa, i64 %i.ge
  %i.gh = getelementptr inbounds [4 x i8], ptr %.1101.lcssa, i64 %i.ge
  %i.gi = getelementptr inbounds [4 x i8], ptr %.199.lcssa, i64 %i.ge
  %i.gj = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %i.ge
  %i.gk = add nuw nsw i32 %.096240, 1             ; 2 uses
  %i.gl = icmp slt i32 %i.gk, %i.gb
  br i1 %i.gl, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !273

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNK4ncnn3Mat7channelEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge243, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge243:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge243, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #16

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not245 = icmp sgt i32 %i.k, %i.j
  br i1 %.not245, label %._crit_edge247, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !21, !noalias !300 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !300
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !300
  %factor.op.mul = mul i64 %i.n, %i.p             ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !97     ; 2 uses
  %.not170 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !97     ; 3 uses
  %i.s = load i32, ptr %6, align 4, !tbaa !69     ; 16 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !21, !noalias !301 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22, !noalias !301
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !67, !noalias !301
  %factor.op.mul248 = mul i64 %i.v, %i.x          ; 5 uses
  %i.y = zext nneg i32 %i.s to i64
  %i.z = load i32, ptr %8, align 4, !tbaa !69     ; 4 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = shl i32 %i.z, 1
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = mul nsw i32 %i.z, 3
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i32, ptr %9, align 4, !tbaa !69    ; 5 uses
  %i.ag = icmp sgt i32 %i.af, 1
  %i.ah = add i32 %i.z, 2
  %i.ai = sext i32 %i.ah to i64                   ; 5 uses
  %i.aj = sext i32 %i.k to i64                    ; 5 uses
  %i.ak = mul i64 %factor.op.mul248, %i.aj
  %i.al = add i32 %i.af, -2                       ; 2 uses
  %i.am = lshr i32 %i.al, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 4                ; 2 uses
  %i.aq = mul i64 %i.ap, %i.ai
  %i.ar = add i64 %i.ak, %i.aq                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ar
  %i.as = shl nsw i64 %i.aa, 2
  %i.at = getelementptr i8, ptr %i.t, i64 %i.ar
  %scevgep268 = getelementptr i8, ptr %i.at, i64 %i.as
  %i.au = shl nsw i64 %i.ac, 2
  %i.av = getelementptr i8, ptr %i.t, i64 %i.ar
  %scevgep271 = getelementptr i8, ptr %i.av, i64 %i.au
  %i.aw = mul i64 %factor.op.mul, %i.aj
  %scevgep274 = getelementptr i8, ptr %i.l, i64 %i.aw
  %i.ax = and i32 %i.al, -2
  %i.ay = add nuw i32 %i.ax, 2                    ; 2 uses
  %i.az = add nsw i32 %i.j, 1
  %i.ba = icmp sgt i32 %i.s, 0
  %i.bb = sext i32 %i.s to i64                    ; 3 uses
  %i.bc = mul i64 %i.ap, %i.bb
  %i.bd = icmp sgt i32 %i.s, 0
  %i.be = add i32 %i.s, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 12               ; 3 uses
  %i.bi = mul nsw i64 %i.aj, 36
  %i.bj = add i32 %i.s, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 4                ; 2 uses
  %i.bn = add nuw nsw i64 %i.bl, 12               ; 4 uses
  %i.bo = mul nsw i64 %i.aj, 36
  %i.bp = getelementptr i8, ptr %i.r, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 36
  %i.br = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bs = getelementptr i8, ptr %i.br, i64 36
  %10 = zext nneg i32 %i.s to i64                 ; 2 uses
  %min.iters.check412 = icmp ult i32 %i.s, 8
  %n.vec414 = and i64 %10, 2147483640             ; 4 uses
  %i.bt = trunc nuw nsw i64 %n.vec414 to i32
  %i.bu = sub nsw i32 %i.s, %i.bt
  %i.bv = shl nuw nsw i64 %n.vec414, 2            ; 6 uses
  %cmp.n457 = icmp eq i64 %n.vec414, %10
  %i.bw = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  %n.vec = and i64 %i.bw, 2147483640              ; 4 uses
  %i.bx = trunc nuw nsw i64 %n.vec to i32
  %i.by = sub nsw i32 %i.s, %i.bx
  %i.bz = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bw
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv278 = phi i64 [ %i.aj, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv275 = phi ptr [ %scevgep274, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep276, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv272 = phi ptr [ %scevgep271, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep273, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv269 = phi ptr [ %scevgep268, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep270, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi ptr [ %scevgep, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep267, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ca = mul nuw nsw i64 %indvar, 36
  %scevgep367 = getelementptr i8, ptr %i.bq, i64 %i.ca ; 2 uses
  %i.cb = mul nuw nsw i64 %indvar, 36
  %scevgep313 = getelementptr i8, ptr %i.bs, i64 %i.cb
  %.reass = mul i64 %factor.op.mul, %indvars.iv278
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  br i1 %.not170, label %_ZN4ncnn3MatD2Ev.exit171, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv278
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit171

_ZN4ncnn3MatD2Ev.exit171:                         ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.cf = phi fast float [ %i.ce, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 5 uses
  %.idx = mul i64 %indvars.iv278, 36
  %i.cg = getelementptr i8, ptr %i.r, i64 %.idx   ; 21 uses
  %.reass249 = mul i64 %factor.op.mul248, %indvars.iv278
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass249 ; 5 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.aa ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ac ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 12 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  br i1 %i.ag, label %.lr.ph219, label %.preheader

.lr.ph219:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit171
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 20 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph219.split.preheader

.lr.ph219.split.preheader:                        ; preds = %.lr.ph219
  %scevgep277 = getelementptr i8, ptr %indvars.iv275, i64 %i.bc
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.y
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ae
  %broadcast.splatinsert415 = insertelement <8 x float> poison, float %i.cf, i64 0
  %broadcast.splat416 = shufflevector <8 x float> %broadcast.splatinsert415, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0150218.us = phi i32 [ %i.gw, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0151217.us = phi ptr [ %i.gt, %._crit_edge.us ], [ %i.ct, %.lr.ph.us.preheader ] ; 7 uses
  %.0153216.us = phi ptr [ %i.gs, %._crit_edge.us ], [ %i.cj, %.lr.ph.us.preheader ] ; 7 uses
  %.0155215.us = phi ptr [ %i.gr, %._crit_edge.us ], [ %i.ci, %.lr.ph.us.preheader ] ; 7 uses
  %.0159214.us = phi ptr [ %i.gq, %._crit_edge.us ], [ %i.ch, %.lr.ph.us.preheader ] ; 7 uses
  %.0163213.us = phi ptr [ %i.gv, %._crit_edge.us ], [ %i.cs, %.lr.ph.us.preheader ] ; 11 uses
  %.0165212.us = phi ptr [ %i.gu, %._crit_edge.us ], [ %i.cc, %.lr.ph.us.preheader ] ; 11 uses
  br i1 %min.iters.check412, label %scalar.ph411.preheader, label %vector.memcheck360

vector.memcheck360:                               ; preds = %.lr.ph.us
  %scevgep361 = getelementptr i8, ptr %.0165212.us, i64 %i.bm ; 6 uses
  %scevgep362 = getelementptr i8, ptr %.0163213.us, i64 %i.bm ; 6 uses
  %scevgep363 = getelementptr i8, ptr %.0151217.us, i64 %i.bn ; 2 uses
  %scevgep364 = getelementptr i8, ptr %.0153216.us, i64 %i.bn ; 2 uses
  %scevgep365 = getelementptr i8, ptr %.0155215.us, i64 %i.bn ; 2 uses
  %scevgep366 = getelementptr i8, ptr %.0159214.us, i64 %i.bn ; 2 uses
  %bound0368 = icmp ult ptr %.0165212.us, %scevgep362
  %bound1369 = icmp ult ptr %.0163213.us, %scevgep361
  %found.conflict370 = and i1 %bound0368, %bound1369
  %bound0371 = icmp ult ptr %.0165212.us, %scevgep363
  %bound1372 = icmp ult ptr %.0151217.us, %scevgep361
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %found.conflict370, %found.conflict373
  %bound0375 = icmp ult ptr %.0165212.us, %scevgep364
  %bound1376 = icmp ult ptr %.0153216.us, %scevgep361
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  %bound0379 = icmp ult ptr %.0165212.us, %scevgep365
  %bound1380 = icmp ult ptr %.0155215.us, %scevgep361
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx382 = or i1 %conflict.rdx378, %found.conflict381
  %bound0383 = icmp ult ptr %.0165212.us, %scevgep366
  %bound1384 = icmp ult ptr %.0159214.us, %scevgep361
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %conflict.rdx382, %found.conflict385
  %bound0387 = icmp ult ptr %.0165212.us, %scevgep367
  %bound1388 = icmp ult ptr %i.cg, %scevgep361
  %found.conflict389 = and i1 %bound0387, %bound1388
  %conflict.rdx390 = or i1 %conflict.rdx386, %found.conflict389
  %bound0391 = icmp ult ptr %.0163213.us, %scevgep363
  %bound1392 = icmp ult ptr %.0151217.us, %scevgep362
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx394 = or i1 %conflict.rdx390, %found.conflict393
  %bound0395 = icmp ult ptr %.0163213.us, %scevgep364
  %bound1396 = icmp ult ptr %.0153216.us, %scevgep362
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx398 = or i1 %conflict.rdx394, %found.conflict397
  %bound0399 = icmp ult ptr %.0163213.us, %scevgep365
  %bound1400 = icmp ult ptr %.0155215.us, %scevgep362
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx402 = or i1 %conflict.rdx398, %found.conflict401
  %bound0403 = icmp ult ptr %.0163213.us, %scevgep366
  %bound1404 = icmp ult ptr %.0159214.us, %scevgep362
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx402, %found.conflict405
  %bound0407 = icmp ult ptr %.0163213.us, %scevgep367
  %bound1408 = icmp ult ptr %i.cg, %scevgep362
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  br i1 %conflict.rdx410, label %scalar.ph411.preheader, label %vector.ph413

vector.ph413:                                     ; preds = %vector.memcheck360
  %i.cu = getelementptr i8, ptr %.0151217.us, i64 %i.bv ; 2 uses
  %i.cv = getelementptr i8, ptr %.0153216.us, i64 %i.bv ; 2 uses
  %i.cw = getelementptr i8, ptr %.0155215.us, i64 %i.bv ; 2 uses
  %i.cx = getelementptr i8, ptr %.0159214.us, i64 %i.bv ; 2 uses
  %i.cy = getelementptr i8, ptr %.0163213.us, i64 %i.bv ; 2 uses
  %i.cz = getelementptr i8, ptr %.0165212.us, i64 %i.bv ; 2 uses
  %i.da = load float, ptr %i.cg, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert426 = insertelement <8 x float> poison, float %i.da, i64 0
  %broadcast.splat427 = shufflevector <8 x float> %broadcast.splatinsert426, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.db = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert429 = insertelement <8 x float> poison, float %i.db, i64 0
  %broadcast.splat430 = shufflevector <8 x float> %broadcast.splatinsert429, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dc = load float, ptr %i.cn, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert432 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat433 = shufflevector <8 x float> %broadcast.splatinsert432, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dd = load float, ptr %i.ck, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert435 = insertelement <8 x float> poison, float %i.dd, i64 0
  %broadcast.splat436 = shufflevector <8 x float> %broadcast.splatinsert435, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.de = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert438 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat439 = shufflevector <8 x float> %broadcast.splatinsert438, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.df = load float, ptr %i.cp, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert441 = insertelement <8 x float> poison, float %i.df, i64 0
  %broadcast.splat442 = shufflevector <8 x float> %broadcast.splatinsert441, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dg = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert444 = insertelement <8 x float> poison, float %i.dg, i64 0
  %broadcast.splat445 = shufflevector <8 x float> %broadcast.splatinsert444, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dh = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert447 = insertelement <8 x float> poison, float %i.dh, i64 0
  %broadcast.splat448 = shufflevector <8 x float> %broadcast.splatinsert447, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.di = load float, ptr %i.cr, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert450 = insertelement <8 x float> poison, float %i.di, i64 0
  %broadcast.splat451 = shufflevector <8 x float> %broadcast.splatinsert450, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph413
  %index418 = phi i64 [ 0, %vector.ph413 ], [ %index.next455, %vector.body417 ] ; 2 uses
  %i.dj = shl i64 %index418, 2                    ; 6 uses
  %next.gep419 = getelementptr i8, ptr %.0151217.us, i64 %i.dj ; 3 uses
  %next.gep420 = getelementptr i8, ptr %.0153216.us, i64 %i.dj ; 3 uses
  %next.gep421 = getelementptr i8, ptr %.0155215.us, i64 %i.dj ; 3 uses
  %next.gep422 = getelementptr i8, ptr %.0159214.us, i64 %i.dj ; 3 uses
  %next.gep423 = getelementptr i8, ptr %.0163213.us, i64 %i.dj
  %next.gep424 = getelementptr i8, ptr %.0165212.us, i64 %i.dj
  %wide.load425 = load <8 x float>, ptr %next.gep422, align 4, !tbaa !45, !alias.scope !303
  %i.dk = fmul fast <8 x float> %broadcast.splat427, %wide.load425
  %i.dl = fadd fast <8 x float> %broadcast.splat416, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %next.gep422, i64 4
  %wide.load428 = load <8 x float>, ptr %i.dm, align 4, !tbaa !45, !alias.scope !303
  %i.dn = fmul fast <8 x float> %broadcast.splat430, %wide.load428
  %i.do = fadd fast <8 x float> %i.dn, %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %next.gep422, i64 8
  %wide.load431 = load <8 x float>, ptr %i.dp, align 4, !tbaa !45, !alias.scope !303
  %i.dq = fmul fast <8 x float> %broadcast.splat433, %wide.load431
  %i.dr = fadd fast <8 x float> %i.do, %i.dq
  %wide.load434 = load <8 x float>, ptr %next.gep421, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.ds = fmul fast <8 x float> %broadcast.splat436, %wide.load434
  %i.dt = fadd fast <8 x float> %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %next.gep421, i64 4
  %wide.load437 = load <8 x float>, ptr %i.du, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dv = fmul fast <8 x float> %broadcast.splat439, %wide.load437
  %i.dw = fadd fast <8 x float> %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %next.gep421, i64 8
  %wide.load440 = load <8 x float>, ptr %i.dx, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dy = fmul fast <8 x float> %broadcast.splat442, %wide.load440
  %i.dz = fadd fast <8 x float> %i.dw, %i.dy
  %wide.load443 = load <8 x float>, ptr %next.gep420, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.ea = fmul fast <8 x float> %broadcast.splat445, %wide.load443
  %i.eb = fadd fast <8 x float> %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %next.gep420, i64 4
  %wide.load446 = load <8 x float>, ptr %i.ec, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.ed = fmul fast <8 x float> %broadcast.splat448, %wide.load446
  %i.ee = fadd fast <8 x float> %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %next.gep420, i64 8
  %wide.load449 = load <8 x float>, ptr %i.ef, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.eg = fmul fast <8 x float> %broadcast.splat451, %wide.load449
end_hunk_0
