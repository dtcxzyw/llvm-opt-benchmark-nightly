Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample_x86_fma?download=true
inline.NumInlined: 684
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 52
begin_hunk_0_@__gxx_personality_v0
declare i32 @__gxx_personality_v0(...)

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !57 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader424, label %_ZN4ncnn3MatD2Ev.exit259

.preheader424:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader424
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0452 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !60
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !60
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !60
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph442, label %.preheader

.preheader:                                       ; preds = %.lr.ph442, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph442 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dl, %.lr.ph442 ]
  %.1.lcssa = phi ptr [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dm, %.lr.ph442 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph449, label %._crit_edge

.lr.ph442:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph442
  %.1441 = phi ptr [ %i.dm, %.lr.ph442 ], [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249440 = phi ptr [ %i.dl, %.lr.ph442 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251439 = phi i32 [ %i.dn, %.lr.ph442 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249440, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249440, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.aj = fadd fast <8 x float> %i.ad, splat (float 1.000000e+00)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> splat (float -1.000000e+00))
  %i.al = fmul fast <8 x float> %i.ak, splat (float 5.000000e-01) ; 2 uses
  %i.am = load i32, ptr %i.o, align 8, !tbaa !53
  %i.an = sitofp fast i32 %i.am to float
  %i.ao = insertelement <8 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <8 x float> %i.ao, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.aq = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00)
  %i.ar = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.ap, <8 x float> splat (float -1.000000e+00))
  %i.as = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01) ; 2 uses
  %i.at = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.al, i32 1) ; 5 uses
  %i.au = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.as, i32 1) ; 5 uses
  %i.av = fadd fast <8 x float> %i.at, splat (float 1.000000e+00) ; 2 uses
  %i.aw = fadd fast <8 x float> %i.au, splat (float 1.000000e+00) ; 2 uses
  %i.ax = fcmp fast ogt <8 x float> %i.at, splat (float -1.000000e+00)
  %i.ay = fcmp fast ogt <8 x float> %i.ai, %i.at
  %i.az = and <8 x i1> %i.ax, %i.ay               ; 2 uses
  %i.ba = fcmp fast ogt <8 x float> %i.av, splat (float -1.000000e+00)
  %i.bb = fcmp fast ogt <8 x float> %i.ai, %i.av
  %i.bc = and <8 x i1> %i.ba, %i.bb               ; 2 uses
  %i.bd = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ap, %i.au
  %i.bf = and <8 x i1> %i.bd, %i.be
  %i.bg = sext <8 x i1> %i.bf to <8 x i32>
  %i.bh = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.bi = fcmp fast ogt <8 x float> %i.ap, %i.aw
  %i.bj = and <8 x i1> %i.bh, %i.bi               ; 2 uses
  %i.bk = bitcast <8 x i32> %i.bg to <8 x float>  ; 2 uses
  %i.bl = select <8 x i1> %i.az, <8 x float> %i.bk, <8 x float> zeroinitializer
  %i.bm = select <8 x i1> %i.bc, <8 x float> %i.bk, <8 x float> zeroinitializer
  %i.bn = and <8 x i1> %i.az, %i.bj
  %i.bo = and <8 x i1> %i.bc, %i.bj
  %i.bp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.at)
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !13
  %i.br = sitofp fast i32 %i.bq to float
  %i.bs = insertelement <8 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <8 x float> %i.bs, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bu = fmul fast <8 x float> %i.bt, %i.bp      ; 3 uses
  %i.bv = fadd fast <8 x float> %i.bu, %i.bt
  %i.bw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.bu) ; 2 uses
  %i.bx = fadd fast <8 x float> %i.bw, %i.bt
  %i.by = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bu, <8 x float> nofpclass(nan inf) %i.bl)
  %i.bz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.bm)
  %i.ca = select <8 x i1> %i.bn, <8 x float> %i.bw, <8 x float> splat (float -1.000000e+00)
  %i.cb = select <8 x i1> %i.bo, <8 x float> %i.bx, <8 x float> splat (float -1.000000e+00)
  %i.cc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.by) ; 2 uses
  %i.cd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bz) ; 2 uses
  %i.ce = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cb) ; 2 uses
  %i.cg = fsub fast <8 x float> %i.al, %i.at      ; 2 uses
  %i.ch = fsub fast <8 x float> %i.as, %i.au      ; 2 uses
  %i.ci = shufflevector <8 x i32> %i.cc, <8 x i32> %i.cd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cj = bitcast <8 x i32> %i.ci to <8 x float>
  %i.ck = shufflevector <8 x i32> %i.cc, <8 x i32> %i.cd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cm = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x float> %i.cg, <8 x float> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cr = shufflevector <8 x float> %i.cg, <8 x float> %i.ch, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cs = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>  ; 2 uses
  %i.cu = shufflevector <8 x float> %i.cq, <8 x float> %i.cj, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cv = shufflevector <8 x float> %i.cn, <8 x float> %i.cq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cw = shufflevector <8 x i32> %i.ck, <8 x i32> %i.co, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cx = bitcast <8 x i32> %i.cw to <8 x float>  ; 2 uses
  %i.cy = shufflevector <8 x float> %i.cr, <8 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cz = shufflevector <8 x float> %i.cp, <8 x float> %i.cr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.da = shufflevector <8 x float> %i.ct, <8 x float> %i.cu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.db = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dc = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dd = shufflevector <8 x float> %i.ct, <8 x float> %i.cu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.de = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.df = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.da, ptr %.1441, align 1, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %.1441, i64 32
  store <8 x float> %i.db, ptr %i.dg, align 1, !tbaa !63
  %i.dh = getelementptr inbounds nuw i8, ptr %.1441, i64 64
  store <8 x float> %i.dc, ptr %i.dh, align 1, !tbaa !63
  %i.di = getelementptr inbounds nuw i8, ptr %.1441, i64 96
  store <8 x float> %i.dd, ptr %i.di, align 1, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %.1441, i64 128
  store <8 x float> %i.de, ptr %i.dj, align 1, !tbaa !63
  %i.dk = getelementptr inbounds nuw i8, ptr %.1441, i64 160
  store <8 x float> %i.df, ptr %i.dk, align 1, !tbaa !63
  %i.dl = getelementptr inbounds nuw i8, ptr %.0249440, i64 64 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.1441, i64 192 ; 2 uses
  %i.dn = add nuw nsw i32 %.0251439, 16           ; 2 uses
  %i.do = or disjoint i32 %i.dn, 15
  %i.dp = icmp slt i32 %i.do, %i.e
  br i1 %i.dp, label %.lr.ph442, label %.preheader, !llvm.loop !64

.lr.ph449:                                        ; preds = %.preheader, %bb.h
  %.2448 = phi ptr [ %i.fy, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250447 = phi ptr [ %i.fx, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252446 = phi i32 [ %i.fz, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.dq = load <2 x float>, ptr %.1250447, align 4, !tbaa !66
  %i.dr = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 4 uses
  %i.ds = sitofp <2 x i32> %i.dr to <2 x float>
  %i.dt = fmul fast <2 x float> %i.dq, splat (float 5.000000e-01)
  %i.du = fadd fast <2 x float> %i.dt, splat (float 5.000000e-01)
  %i.dv = fmul fast <2 x float> %i.du, %i.ds
  %i.dw = fadd fast <2 x float> %i.dv, splat (float -5.000000e-01) ; 2 uses
  %i.dx = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.dw)
  %i.dy = fptosi <2 x float> %i.dx to <2 x i32>   ; 5 uses
  %i.dz = extractelement <2 x i32> %i.dy, i64 0   ; 4 uses
  %i.ea = add nsw i32 %i.dz, 1                    ; 3 uses
  %i.eb = extractelement <2 x i32> %i.dy, i64 1   ; 4 uses
  %i.ec = add nsw i32 %i.eb, 1                    ; 3 uses
  %i.ed = icmp sgt i32 %i.dz, -2
  %i.ee = extractelement <2 x i32> %i.dr, i64 0   ; 2 uses
  %i.ef = icmp slt i32 %i.ea, %i.ee
  %i.eg = and i1 %i.ed, %i.ef                     ; 2 uses
  %i.eh = icmp sgt <2 x i32> %i.dy, splat (i32 -1)
  %i.ei = icmp sgt <2 x i32> %i.dr, %i.dy
  %i.ej = and <2 x i1> %i.eh, %i.ei               ; 2 uses
  %i.ek = icmp sgt i32 %i.eb, -2
  %i.el = extractelement <2 x i32> %i.dr, i64 1
  %i.em = icmp slt i32 %i.ec, %i.el
  %i.en = and i1 %i.ek, %i.em                     ; 2 uses
  %i.eo = extractelement <2 x i1> %i.ej, i64 0    ; 2 uses
  %i.ep = extractelement <2 x i1> %i.ej, i64 1    ; 2 uses
  %i.eq = and i1 %i.eo, %i.ep
  %i.er = and i1 %i.eg, %i.ep
  %i.es = and i1 %i.eo, %i.en
  %i.et = and i1 %i.eg, %i.en
  %i.eu = getelementptr inbounds nuw i8, ptr %.2448, i64 16
  br i1 %i.eq, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph449
  %i.ev = mul nuw nsw i32 %i.ee, %i.eb
  %i.ew = add nsw i32 %i.ev, %i.dz
  %i.ex = load i32, ptr %i.p, align 8, !tbaa !13
  %i.ey = mul nsw i32 %i.ex, %i.ew
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph449, %bb.a
  %i.ez = phi i32 [ %i.ey, %bb.a ], [ -1, %.lr.ph449 ]
  store i32 %i.ez, ptr %.2448, align 4, !tbaa !29
  br i1 %i.er, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fa = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fb = mul nsw i32 %i.fa, %i.eb
  %i.fc = add nsw i32 %i.fb, %i.ea
  %i.fd = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fe = mul nsw i32 %i.fc, %i.fd
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ff = phi i32 [ %i.fe, %bb.c ], [ -1, %bb.b ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.2448, i64 4
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !29
  br i1 %i.es, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fh = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fi = mul nsw i32 %i.fh, %i.ec
  %i.fj = add nsw i32 %i.fi, %i.dz
  %i.fk = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fl = mul nsw i32 %i.fj, %i.fk
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fm = phi i32 [ %i.fl, %bb.e ], [ -1, %bb.d ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.2448, i64 8
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !29
  br i1 %i.et, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fo = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fp = mul nsw i32 %i.fo, %i.ec
  %i.fq = add nsw i32 %i.fp, %i.ea
  %i.fr = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fs = mul nsw i32 %i.fq, %i.fr
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ft = phi i32 [ %i.fs, %bb.g ], [ -1, %bb.f ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.2448, i64 12
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !29
  %i.fv = sitofp <2 x i32> %i.dy to <2 x float>
  %i.fw = fsub fast <2 x float> %i.dw, %i.fv
  store <2 x float> %i.fw, ptr %i.eu, align 4, !tbaa !66
  %i.fx = getelementptr inbounds nuw i8, ptr %.1250447, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.2448, i64 24 ; 2 uses
  %i.fz = add nuw nsw i32 %.1252446, 2            ; 2 uses
  %i.ga = icmp slt i32 %i.fz, %i.e
  br i1 %i.ga, label %.lr.ph449, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.fy, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gb = load i32, ptr %i.h, align 8, !tbaa !18
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next, %i.gc
  br i1 %i.gd, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !69

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.ge = load ptr, ptr %1, align 8, !tbaa !24, !noalias !70 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !21, !noalias !73
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !20, !noalias !73
  %i.gj = mul i64 %i.gi, %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gj ; 2 uses
  %i.gl = icmp sgt i32 %i.e, 7
  br i1 %i.gl, label %.lr.ph, label %.preheader425

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit259
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

.preheader425.loopexit:                           ; preds = %bb.i
  %i.gp = and i32 %i.e, 2147483640
  br label %.preheader425

.preheader425:                                    ; preds = %.preheader425.loopexit, %_ZN4ncnn3MatD2Ev.exit259
  %.0257.lcssa = phi ptr [ %i.ge, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.kb, %.preheader425.loopexit ]
  %.0255.lcssa = phi ptr [ %i.gk, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.kc, %.preheader425.loopexit ]
  %.0253.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.gp, %.preheader425.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.kd, %.preheader425.loopexit ]
  %i.gq = icmp slt i32 %.0253.lcssa, %i.e
  br i1 %i.gq, label %.lr.ph438, label %.loopexit

.lr.ph438:                                        ; preds = %.preheader425
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.3430 = phi ptr [ %i.f, %.lr.ph ], [ %i.kd, %bb.i ] ; 7 uses
  %.0253429 = phi i32 [ 0, %.lr.ph ], [ %i.ke, %bb.i ]
  %.0255428 = phi ptr [ %i.gk, %.lr.ph ], [ %i.kc, %bb.i ] ; 2 uses
  %.0257427 = phi ptr [ %i.ge, %.lr.ph ], [ %i.kb, %bb.i ] ; 2 uses
  %i.gt = load <8 x float>, ptr %.0257427, align 1, !tbaa !63
  %i.gu = load <8 x float>, ptr %.0255428, align 1, !tbaa !63
  %i.gv = load i32, ptr %i.gm, align 4, !tbaa !52
  %i.gw = sitofp fast i32 %i.gv to float
  %i.gx = insertelement <8 x float> poison, float %i.gw, i64 0
  %i.gy = shufflevector <8 x float> %i.gx, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.gz = fadd fast <8 x float> %i.gt, splat (float 1.000000e+00)
  %i.ha = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gz, <8 x float> nofpclass(nan inf) %i.gy, <8 x float> splat (float -1.000000e+00))
  %i.hb = fmul fast <8 x float> %i.ha, splat (float 5.000000e-01) ; 2 uses
  %i.hc = load i32, ptr %i.gn, align 8, !tbaa !53
  %i.hd = sitofp fast i32 %i.hc to float
  %i.he = insertelement <8 x float> poison, float %i.hd, i64 0
  %i.hf = shufflevector <8 x float> %i.he, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.hg = fadd fast <8 x float> %i.gu, splat (float 1.000000e+00)
  %i.hh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hg, <8 x float> nofpclass(nan inf) %i.hf, <8 x float> splat (float -1.000000e+00))
  %i.hi = fmul fast <8 x float> %i.hh, splat (float 5.000000e-01) ; 2 uses
  %i.hj = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hb, i32 1) ; 5 uses
  %i.hk = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hi, i32 1) ; 5 uses
  %i.hl = fadd fast <8 x float> %i.hj, splat (float 1.000000e+00) ; 2 uses
  %i.hm = fadd fast <8 x float> %i.hk, splat (float 1.000000e+00) ; 2 uses
  %i.hn = fcmp fast ogt <8 x float> %i.hj, splat (float -1.000000e+00)
  %i.ho = fcmp fast ogt <8 x float> %i.gy, %i.hj
  %i.hp = and <8 x i1> %i.hn, %i.ho               ; 2 uses
  %i.hq = fcmp fast ogt <8 x float> %i.hl, splat (float -1.000000e+00)
  %i.hr = fcmp fast ogt <8 x float> %i.gy, %i.hl
  %i.hs = and <8 x i1> %i.hq, %i.hr               ; 2 uses
  %i.ht = fcmp fast ogt <8 x float> %i.hk, splat (float -1.000000e+00)
  %i.hu = fcmp fast ogt <8 x float> %i.hf, %i.hk
  %i.hv = and <8 x i1> %i.ht, %i.hu
  %i.hw = sext <8 x i1> %i.hv to <8 x i32>
  %i.hx = fcmp fast ogt <8 x float> %i.hm, splat (float -1.000000e+00)
  %i.hy = fcmp fast ogt <8 x float> %i.hf, %i.hm
  %i.hz = and <8 x i1> %i.hx, %i.hy               ; 2 uses
  %i.ia = bitcast <8 x i32> %i.hw to <8 x float>  ; 2 uses
  %i.ib = select <8 x i1> %i.hp, <8 x float> %i.ia, <8 x float> zeroinitializer
  %i.ic = select <8 x i1> %i.hs, <8 x float> %i.ia, <8 x float> zeroinitializer
  %i.id = and <8 x i1> %i.hp, %i.hz
  %i.ie = and <8 x i1> %i.hs, %i.hz
  %i.if = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hk, <8 x float> nofpclass(nan inf) %i.gy, <8 x float> nofpclass(nan inf) %i.hj)
  %i.ig = load i32, ptr %i.go, align 8, !tbaa !13
  %i.ih = sitofp fast i32 %i.ig to float
  %i.ii = insertelement <8 x float> poison, float %i.ih, i64 0
  %i.ij = shufflevector <8 x float> %i.ii, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ik = fmul fast <8 x float> %i.ij, %i.if      ; 3 uses
  %i.il = fadd fast <8 x float> %i.ik, %i.ij
  %i.im = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gy, <8 x float> nofpclass(nan inf) %i.ij, <8 x float> nofpclass(nan inf) %i.ik) ; 2 uses
  %i.in = fadd fast <8 x float> %i.im, %i.ij
  %i.io = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ik, <8 x float> nofpclass(nan inf) %i.ib)
  %i.ip = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.il, <8 x float> nofpclass(nan inf) %i.ic)
  %i.iq = select <8 x i1> %i.id, <8 x float> %i.im, <8 x float> splat (float -1.000000e+00)
  %i.ir = select <8 x i1> %i.ie, <8 x float> %i.in, <8 x float> splat (float -1.000000e+00)
  %i.is = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.io) ; 2 uses
  %i.it = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ip) ; 2 uses
  %i.iu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iq) ; 2 uses
  %i.iv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ir) ; 2 uses
  %i.iw = fsub fast <8 x float> %i.hb, %i.hj      ; 2 uses
  %i.ix = fsub fast <8 x float> %i.hi, %i.hk      ; 2 uses
  %i.iy = shufflevector <8 x i32> %i.is, <8 x i32> %i.it, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.iz = bitcast <8 x i32> %i.iy to <8 x float>
  %i.ja = shufflevector <8 x i32> %i.is, <8 x i32> %i.it, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jb = bitcast <8 x i32> %i.ja to <8 x float>
  %i.jc = shufflevector <8 x i32> %i.iu, <8 x i32> %i.iv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jd = bitcast <8 x i32> %i.jc to <8 x float>
  %i.je = shufflevector <8 x i32> %i.iu, <8 x i32> %i.iv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jf = bitcast <8 x i32> %i.je to <8 x float>
  %i.jg = shufflevector <8 x float> %i.iw, <8 x float> %i.ix, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jh = shufflevector <8 x float> %i.iw, <8 x float> %i.ix, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ji = shufflevector <8 x i32> %i.iy, <8 x i32> %i.jc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jj = bitcast <8 x i32> %i.ji to <8 x float>  ; 2 uses
  %i.jk = shufflevector <8 x float> %i.jg, <8 x float> %i.iz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jl = shufflevector <8 x float> %i.jd, <8 x float> %i.jg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jm = shufflevector <8 x i32> %i.ja, <8 x i32> %i.je, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jn = bitcast <8 x i32> %i.jm to <8 x float>  ; 2 uses
  %i.jo = shufflevector <8 x float> %i.jh, <8 x float> %i.jb, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jp = shufflevector <8 x float> %i.jf, <8 x float> %i.jh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jq = shufflevector <8 x float> %i.jj, <8 x float> %i.jk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jr = shufflevector <8 x float> %i.jl, <8 x float> %i.jn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.js = shufflevector <8 x float> %i.jo, <8 x float> %i.jp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jt = shufflevector <8 x float> %i.jj, <8 x float> %i.jk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ju = shufflevector <8 x float> %i.jl, <8 x float> %i.jn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jv = shufflevector <8 x float> %i.jo, <8 x float> %i.jp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.jq, ptr %.3430, align 1, !tbaa !63
  %i.jw = getelementptr inbounds nuw i8, ptr %.3430, i64 32
  store <8 x float> %i.jr, ptr %i.jw, align 1, !tbaa !63
  %i.jx = getelementptr inbounds nuw i8, ptr %.3430, i64 64
  store <8 x float> %i.js, ptr %i.jx, align 1, !tbaa !63
  %i.jy = getelementptr inbounds nuw i8, ptr %.3430, i64 96
  store <8 x float> %i.jt, ptr %i.jy, align 1, !tbaa !63
  %i.jz = getelementptr inbounds nuw i8, ptr %.3430, i64 128
  store <8 x float> %i.ju, ptr %i.jz, align 1, !tbaa !63
  %i.ka = getelementptr inbounds nuw i8, ptr %.3430, i64 160
  store <8 x float> %i.jv, ptr %i.ka, align 1, !tbaa !63
  %i.kb = getelementptr inbounds nuw i8, ptr %.0257427, i64 32 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0255428, i64 32 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.3430, i64 192 ; 2 uses
  %i.ke = add nuw nsw i32 %.0253429, 8            ; 2 uses
  %i.kf = or disjoint i32 %i.ke, 7
  %i.kg = icmp slt i32 %i.kf, %i.e
  br i1 %i.kg, label %bb.i, label %.preheader425.loopexit, !llvm.loop !76

bb.j:                                             ; preds = %.lr.ph438, %bb.r
  %.4437 = phi ptr [ %.3.lcssa, %.lr.ph438 ], [ %i.mt, %bb.r ] ; 6 uses
  %.1254436 = phi i32 [ %.0253.lcssa, %.lr.ph438 ], [ %i.mu, %bb.r ]
  %.1256435 = phi ptr [ %.0255.lcssa, %.lr.ph438 ], [ %i.ms, %bb.r ] ; 2 uses
  %.1258434 = phi ptr [ %.0257.lcssa, %.lr.ph438 ], [ %i.mr, %bb.r ] ; 2 uses
  %i.kh = load float, ptr %.1258434, align 4, !tbaa !66
  %i.ki = load float, ptr %.1256435, align 4, !tbaa !66
  %i.kj = load <2 x i32>, ptr %i.gr, align 4, !tbaa !29 ; 4 uses
  %i.kk = sitofp <2 x i32> %i.kj to <2 x float>
  %i.kl = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.km = insertelement <2 x float> %i.kl, float %i.ki, i64 1
  %i.kn = fmul fast <2 x float> %i.km, splat (float 5.000000e-01)
  %i.ko = fadd fast <2 x float> %i.kn, splat (float 5.000000e-01)
  %i.kp = fmul fast <2 x float> %i.ko, %i.kk
  %i.kq = fadd fast <2 x float> %i.kp, splat (float -5.000000e-01) ; 2 uses
  %i.kr = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.kq)
  %i.ks = fptosi <2 x float> %i.kr to <2 x i32>   ; 5 uses
  %i.kt = extractelement <2 x i32> %i.ks, i64 0   ; 4 uses
  %i.ku = add nsw i32 %i.kt, 1                    ; 3 uses
  %i.kv = extractelement <2 x i32> %i.ks, i64 1   ; 4 uses
  %i.kw = add nsw i32 %i.kv, 1                    ; 3 uses
  %i.kx = icmp sgt i32 %i.kt, -2
  %i.ky = extractelement <2 x i32> %i.kj, i64 0   ; 2 uses
  %i.kz = icmp slt i32 %i.ku, %i.ky
  %i.la = and i1 %i.kx, %i.kz                     ; 2 uses
  %i.lb = icmp sgt <2 x i32> %i.ks, splat (i32 -1)
  %i.lc = icmp sgt <2 x i32> %i.kj, %i.ks
  %i.ld = and <2 x i1> %i.lb, %i.lc               ; 2 uses
  %i.le = icmp sgt i32 %i.kv, -2
  %i.lf = extractelement <2 x i32> %i.kj, i64 1
  %i.lg = icmp slt i32 %i.kw, %i.lf
  %i.lh = and i1 %i.le, %i.lg                     ; 2 uses
  %i.li = extractelement <2 x i1> %i.ld, i64 0    ; 2 uses
  %i.lj = extractelement <2 x i1> %i.ld, i64 1    ; 2 uses
  %i.lk = and i1 %i.li, %i.lj
  %i.ll = and i1 %i.la, %i.lj
  %i.lm = and i1 %i.li, %i.lh
  %i.ln = and i1 %i.la, %i.lh
  %i.lo = getelementptr inbounds nuw i8, ptr %.4437, i64 16
  br i1 %i.lk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lp = mul nuw nsw i32 %i.ky, %i.kv
  %i.lq = add nsw i32 %i.lp, %i.kt
  %i.lr = load i32, ptr %i.gs, align 8, !tbaa !13
  %i.ls = mul nsw i32 %i.lr, %i.lq
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.lt = phi i32 [ %i.ls, %bb.k ], [ -1, %bb.j ]
  store i32 %i.lt, ptr %.4437, align 4, !tbaa !29
  br i1 %i.ll, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lu = load i32, ptr %i.gr, align 4, !tbaa !52
  %i.lv = mul nsw i32 %i.lu, %i.kv
  %i.lw = add nsw i32 %i.lv, %i.ku
  %i.lx = load i32, ptr %i.gs, align 8, !tbaa !13
  %i.ly = mul nsw i32 %i.lw, %i.lx
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.lz = phi i32 [ %i.ly, %bb.m ], [ -1, %bb.l ]
  %i.ma = getelementptr inbounds nuw i8, ptr %.4437, i64 4
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !29
  br i1 %i.lm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mb = load i32, ptr %i.gr, align 4, !tbaa !52
  %i.mc = mul nsw i32 %i.mb, %i.kw
  %i.md = add nsw i32 %i.mc, %i.kt
  %i.me = load i32, ptr %i.gs, align 8, !tbaa !13
  %i.mf = mul nsw i32 %i.md, %i.me
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mg = phi i32 [ %i.mf, %bb.o ], [ -1, %bb.n ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.4437, i64 8
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !29
  br i1 %i.ln, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mi = load i32, ptr %i.gr, align 4, !tbaa !52
  %i.mj = mul nsw i32 %i.mi, %i.kw
  %i.mk = add nsw i32 %i.mj, %i.ku
  %i.ml = load i32, ptr %i.gs, align 8, !tbaa !13
  %i.mm = mul nsw i32 %i.mk, %i.ml
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.mn = phi i32 [ %i.mm, %bb.q ], [ -1, %bb.p ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.4437, i64 12
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !29
  %i.mp = sitofp <2 x i32> %i.ks to <2 x float>
  %i.mq = fsub fast <2 x float> %i.kq, %i.mp
  store <2 x float> %i.mq, ptr %i.lo, align 4, !tbaa !66
  %i.mr = getelementptr inbounds nuw i8, ptr %.1258434, i64 4
  %i.ms = getelementptr inbounds nuw i8, ptr %.1256435, i64 4
  %i.mt = getelementptr inbounds nuw i8, ptr %.4437, i64 24
  %i.mu = add nuw nsw i32 %.1254436, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.mu, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !77

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader425, %.preheader424
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !78 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader424, label %_ZN4ncnn3MatD2Ev.exit259

.preheader424:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader424
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0452 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !81
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !81
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !81
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph442, label %.preheader

.preheader:                                       ; preds = %.lr.ph442, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph442 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dn, %.lr.ph442 ]
  %.1.lcssa = phi ptr [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.do, %.lr.ph442 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph449, label %._crit_edge

.lr.ph442:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph442
  %.1441 = phi ptr [ %i.do, %.lr.ph442 ], [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249440 = phi ptr [ %i.dn, %.lr.ph442 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251439 = phi i32 [ %i.dp, %.lr.ph442 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249440, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249440, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.aj = fmul fast <8 x float> %i.ad, splat (float 5.000000e-01)
  %i.ak = fadd fast <8 x float> %i.aj, splat (float 5.000000e-01)
  %i.al = fadd fast <8 x float> %i.ai, splat (float -1.000000e+00)
  %i.am = fmul fast <8 x float> %i.al, %i.ak      ; 2 uses
  %i.an = load i32, ptr %i.o, align 8, !tbaa !53
  %i.ao = sitofp fast i32 %i.an to float
  %i.ap = insertelement <8 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <8 x float> %i.ap, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ar = fmul fast <8 x float> %i.ae, splat (float 5.000000e-01)
  %i.as = fadd fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.at = fadd fast <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.au = fmul fast <8 x float> %i.at, %i.as      ; 2 uses
  %i.av = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.am, i32 1) ; 5 uses
  %i.aw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 5 uses
  %i.ax = fadd fast <8 x float> %i.av, splat (float 1.000000e+00) ; 2 uses
  %i.ay = fadd fast <8 x float> %i.aw, splat (float 1.000000e+00) ; 2 uses
  %i.az = fcmp fast ogt <8 x float> %i.av, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ai, %i.av
  %i.bb = and <8 x i1> %i.az, %i.ba               ; 2 uses
  %i.bc = fcmp fast ogt <8 x float> %i.ax, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.ai, %i.ax
  %i.be = and <8 x i1> %i.bc, %i.bd               ; 2 uses
  %i.bf = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.aq, %i.aw
  %i.bh = and <8 x i1> %i.bf, %i.bg
  %i.bi = sext <8 x i1> %i.bh to <8 x i32>
  %i.bj = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.aq, %i.ay
  %i.bl = and <8 x i1> %i.bj, %i.bk               ; 2 uses
  %i.bm = bitcast <8 x i32> %i.bi to <8 x float>  ; 2 uses
  %i.bn = select <8 x i1> %i.bb, <8 x float> %i.bm, <8 x float> zeroinitializer
  %i.bo = select <8 x i1> %i.be, <8 x float> %i.bm, <8 x float> zeroinitializer
  %i.bp = and <8 x i1> %i.bb, %i.bl
  %i.bq = and <8 x i1> %i.be, %i.bl
  %i.br = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.av)
  %i.bs = load i32, ptr %i.p, align 8, !tbaa !13
  %i.bt = sitofp fast i32 %i.bs to float
  %i.bu = insertelement <8 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <8 x float> %i.bu, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bw = fmul fast <8 x float> %i.bv, %i.br      ; 3 uses
  %i.bx = fadd fast <8 x float> %i.bw, %i.bv
  %i.by = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.bw) ; 2 uses
  %i.bz = fadd fast <8 x float> %i.by, %i.bv
  %i.ca = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bw, <8 x float> nofpclass(nan inf) %i.bn)
  %i.cb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bx, <8 x float> nofpclass(nan inf) %i.bo)
  %i.cc = select <8 x i1> %i.bp, <8 x float> %i.by, <8 x float> splat (float -1.000000e+00)
  %i.cd = select <8 x i1> %i.bq, <8 x float> %i.bz, <8 x float> splat (float -1.000000e+00)
  %i.ce = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cb) ; 2 uses
  %i.cg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cd) ; 2 uses
  %i.ci = fsub fast <8 x float> %i.am, %i.av      ; 2 uses
  %i.cj = fsub fast <8 x float> %i.au, %i.aw      ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cm = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = shufflevector <8 x float> %i.ci, <8 x float> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ct = shufflevector <8 x float> %i.ci, <8 x float> %i.cj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cu = shufflevector <8 x i32> %i.ck, <8 x i32> %i.co, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>  ; 2 uses
  %i.cw = shufflevector <8 x float> %i.cs, <8 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cx = shufflevector <8 x float> %i.cp, <8 x float> %i.cs, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cy = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>  ; 2 uses
  %i.da = shufflevector <8 x float> %i.ct, <8 x float> %i.cn, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.db = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dc = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dd = shufflevector <8 x float> %i.cx, <8 x float> %i.cz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.de = shufflevector <8 x float> %i.da, <8 x float> %i.db, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.df = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dg = shufflevector <8 x float> %i.cx, <8 x float> %i.cz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dh = shufflevector <8 x float> %i.da, <8 x float> %i.db, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.dc, ptr %.1441, align 1, !tbaa !63
  %i.di = getelementptr inbounds nuw i8, ptr %.1441, i64 32
  store <8 x float> %i.dd, ptr %i.di, align 1, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %.1441, i64 64
  store <8 x float> %i.de, ptr %i.dj, align 1, !tbaa !63
  %i.dk = getelementptr inbounds nuw i8, ptr %.1441, i64 96
  store <8 x float> %i.df, ptr %i.dk, align 1, !tbaa !63
  %i.dl = getelementptr inbounds nuw i8, ptr %.1441, i64 128
  store <8 x float> %i.dg, ptr %i.dl, align 1, !tbaa !63
  %i.dm = getelementptr inbounds nuw i8, ptr %.1441, i64 160
  store <8 x float> %i.dh, ptr %i.dm, align 1, !tbaa !63
  %i.dn = getelementptr inbounds nuw i8, ptr %.0249440, i64 64 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1441, i64 192 ; 2 uses
  %i.dp = add nuw nsw i32 %.0251439, 16           ; 2 uses
  %i.dq = or disjoint i32 %i.dp, 15
  %i.dr = icmp slt i32 %i.dq, %i.e
  br i1 %i.dr, label %.lr.ph442, label %.preheader, !llvm.loop !84

.lr.ph449:                                        ; preds = %.preheader, %bb.h
  %.2448 = phi ptr [ %i.ga, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250447 = phi ptr [ %i.fz, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252446 = phi i32 [ %i.gb, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.ds = load <2 x float>, ptr %.1250447, align 4, !tbaa !66
  %i.dt = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 4 uses
  %i.du = fmul fast <2 x float> %i.ds, splat (float 5.000000e-01)
  %i.dv = fadd fast <2 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = add nsw <2 x i32> %i.dt, splat (i32 -1)
  %i.dx = sitofp <2 x i32> %i.dw to <2 x float>
  %i.dy = fmul fast <2 x float> %i.dv, %i.dx      ; 2 uses
  %i.dz = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.dy)
  %i.ea = fptosi <2 x float> %i.dz to <2 x i32>   ; 5 uses
  %i.eb = extractelement <2 x i32> %i.ea, i64 0   ; 4 uses
  %i.ec = add nsw i32 %i.eb, 1                    ; 3 uses
  %i.ed = extractelement <2 x i32> %i.ea, i64 1   ; 4 uses
  %i.ee = add nsw i32 %i.ed, 1                    ; 3 uses
  %i.ef = icmp sgt i32 %i.eb, -2
  %i.eg = extractelement <2 x i32> %i.dt, i64 0   ; 2 uses
  %i.eh = icmp slt i32 %i.ec, %i.eg
  %i.ei = and i1 %i.ef, %i.eh                     ; 2 uses
  %i.ej = icmp sgt <2 x i32> %i.ea, splat (i32 -1)
  %i.ek = icmp sgt <2 x i32> %i.dt, %i.ea
  %i.el = and <2 x i1> %i.ej, %i.ek               ; 2 uses
  %i.em = icmp sgt i32 %i.ed, -2
  %i.en = extractelement <2 x i32> %i.dt, i64 1
  %i.eo = icmp slt i32 %i.ee, %i.en
  %i.ep = and i1 %i.em, %i.eo                     ; 2 uses
  %i.eq = extractelement <2 x i1> %i.el, i64 0    ; 2 uses
  %i.er = extractelement <2 x i1> %i.el, i64 1    ; 2 uses
  %i.es = and i1 %i.eq, %i.er
  %i.et = and i1 %i.ei, %i.er
  %i.eu = and i1 %i.eq, %i.ep
  %i.ev = and i1 %i.ei, %i.ep
  %i.ew = getelementptr inbounds nuw i8, ptr %.2448, i64 16
  br i1 %i.es, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph449
  %i.ex = mul nuw nsw i32 %i.eg, %i.ed
  %i.ey = add nsw i32 %i.ex, %i.eb
  %i.ez = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fa = mul nsw i32 %i.ez, %i.ey
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph449, %bb.a
  %i.fb = phi i32 [ %i.fa, %bb.a ], [ -1, %.lr.ph449 ]
  store i32 %i.fb, ptr %.2448, align 4, !tbaa !29
  br i1 %i.et, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fc = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fd = mul nsw i32 %i.fc, %i.ed
  %i.fe = add nsw i32 %i.fd, %i.ec
  %i.ff = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fg = mul nsw i32 %i.fe, %i.ff
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fh = phi i32 [ %i.fg, %bb.c ], [ -1, %bb.b ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.2448, i64 4
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !29
  br i1 %i.eu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fj = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fk = mul nsw i32 %i.fj, %i.ee
  %i.fl = add nsw i32 %i.fk, %i.eb
  %i.fm = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fn = mul nsw i32 %i.fl, %i.fm
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fo = phi i32 [ %i.fn, %bb.e ], [ -1, %bb.d ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.2448, i64 8
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !29
  br i1 %i.ev, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fq = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fr = mul nsw i32 %i.fq, %i.ee
  %i.fs = add nsw i32 %i.fr, %i.ec
  %i.ft = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fu = mul nsw i32 %i.fs, %i.ft
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.fv = phi i32 [ %i.fu, %bb.g ], [ -1, %bb.f ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.2448, i64 12
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !29
  %i.fx = sitofp <2 x i32> %i.ea to <2 x float>
  %i.fy = fsub fast <2 x float> %i.dy, %i.fx
  store <2 x float> %i.fy, ptr %i.ew, align 4, !tbaa !66
  %i.fz = getelementptr inbounds nuw i8, ptr %.1250447, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.2448, i64 24 ; 2 uses
  %i.gb = add nuw nsw i32 %.1252446, 2            ; 2 uses
  %i.gc = icmp slt i32 %i.gb, %i.e
  br i1 %i.gc, label %.lr.ph449, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.ga, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gd = load i32, ptr %i.h, align 8, !tbaa !18
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i64 %indvars.iv.next, %i.ge
  br i1 %i.gf, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !86

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.gg = load ptr, ptr %1, align 8, !tbaa !24, !noalias !87 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !21, !noalias !90
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !20, !noalias !90
  %i.gl = mul i64 %i.gk, %i.gj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gl ; 2 uses
  %i.gn = icmp sgt i32 %i.e, 7
  br i1 %i.gn, label %.lr.ph, label %.preheader425

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit259
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

.preheader425.loopexit:                           ; preds = %bb.i
  %i.gr = and i32 %i.e, 2147483640
  br label %.preheader425

.preheader425:                                    ; preds = %.preheader425.loopexit, %_ZN4ncnn3MatD2Ev.exit259
  %.0257.lcssa = phi ptr [ %i.gg, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.kf, %.preheader425.loopexit ]
  %.0255.lcssa = phi ptr [ %i.gm, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.kg, %.preheader425.loopexit ]
  %.0253.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.gr, %.preheader425.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.kh, %.preheader425.loopexit ]
  %i.gs = icmp slt i32 %.0253.lcssa, %i.e
  br i1 %i.gs, label %.lr.ph438, label %.loopexit

.lr.ph438:                                        ; preds = %.preheader425
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.3430 = phi ptr [ %i.f, %.lr.ph ], [ %i.kh, %bb.i ] ; 7 uses
  %.0253429 = phi i32 [ 0, %.lr.ph ], [ %i.ki, %bb.i ]
  %.0255428 = phi ptr [ %i.gm, %.lr.ph ], [ %i.kg, %bb.i ] ; 2 uses
  %.0257427 = phi ptr [ %i.gg, %.lr.ph ], [ %i.kf, %bb.i ] ; 2 uses
  %i.gv = load <8 x float>, ptr %.0257427, align 1, !tbaa !63
  %i.gw = load <8 x float>, ptr %.0255428, align 1, !tbaa !63
  %i.gx = load i32, ptr %i.go, align 4, !tbaa !52
  %i.gy = sitofp fast i32 %i.gx to float
  %i.gz = insertelement <8 x float> poison, float %i.gy, i64 0
  %i.ha = shufflevector <8 x float> %i.gz, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.hb = fmul fast <8 x float> %i.gv, splat (float 5.000000e-01)
  %i.hc = fadd fast <8 x float> %i.hb, splat (float 5.000000e-01)
  %i.hd = fadd fast <8 x float> %i.ha, splat (float -1.000000e+00)
  %i.he = fmul fast <8 x float> %i.hd, %i.hc      ; 2 uses
  %i.hf = load i32, ptr %i.gp, align 8, !tbaa !53
  %i.hg = sitofp fast i32 %i.hf to float
  %i.hh = insertelement <8 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <8 x float> %i.hh, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.hj = fmul fast <8 x float> %i.gw, splat (float 5.000000e-01)
  %i.hk = fadd fast <8 x float> %i.hj, splat (float 5.000000e-01)
  %i.hl = fadd fast <8 x float> %i.hi, splat (float -1.000000e+00)
  %i.hm = fmul fast <8 x float> %i.hl, %i.hk      ; 2 uses
  %i.hn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.he, i32 1) ; 5 uses
  %i.ho = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hm, i32 1) ; 5 uses
  %i.hp = fadd fast <8 x float> %i.hn, splat (float 1.000000e+00) ; 2 uses
  %i.hq = fadd fast <8 x float> %i.ho, splat (float 1.000000e+00) ; 2 uses
  %i.hr = fcmp fast ogt <8 x float> %i.hn, splat (float -1.000000e+00)
  %i.hs = fcmp fast ogt <8 x float> %i.ha, %i.hn
  %i.ht = and <8 x i1> %i.hr, %i.hs               ; 2 uses
  %i.hu = fcmp fast ogt <8 x float> %i.hp, splat (float -1.000000e+00)
  %i.hv = fcmp fast ogt <8 x float> %i.ha, %i.hp
  %i.hw = and <8 x i1> %i.hu, %i.hv               ; 2 uses
  %i.hx = fcmp fast ogt <8 x float> %i.ho, splat (float -1.000000e+00)
  %i.hy = fcmp fast ogt <8 x float> %i.hi, %i.ho
  %i.hz = and <8 x i1> %i.hx, %i.hy
  %i.ia = sext <8 x i1> %i.hz to <8 x i32>
  %i.ib = fcmp fast ogt <8 x float> %i.hq, splat (float -1.000000e+00)
  %i.ic = fcmp fast ogt <8 x float> %i.hi, %i.hq
  %i.id = and <8 x i1> %i.ib, %i.ic               ; 2 uses
  %i.ie = bitcast <8 x i32> %i.ia to <8 x float>  ; 2 uses
  %i.if = select <8 x i1> %i.ht, <8 x float> %i.ie, <8 x float> zeroinitializer
  %i.ig = select <8 x i1> %i.hw, <8 x float> %i.ie, <8 x float> zeroinitializer
  %i.ih = and <8 x i1> %i.ht, %i.id
  %i.ii = and <8 x i1> %i.hw, %i.id
  %i.ij = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ho, <8 x float> nofpclass(nan inf) %i.ha, <8 x float> nofpclass(nan inf) %i.hn)
  %i.ik = load i32, ptr %i.gq, align 8, !tbaa !13
  %i.il = sitofp fast i32 %i.ik to float
  %i.im = insertelement <8 x float> poison, float %i.il, i64 0
  %i.in = shufflevector <8 x float> %i.im, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.io = fmul fast <8 x float> %i.in, %i.ij      ; 3 uses
  %i.ip = fadd fast <8 x float> %i.io, %i.in
  %i.iq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ha, <8 x float> nofpclass(nan inf) %i.in, <8 x float> nofpclass(nan inf) %i.io) ; 2 uses
  %i.ir = fadd fast <8 x float> %i.iq, %i.in
  %i.is = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.io, <8 x float> nofpclass(nan inf) %i.if)
  %i.it = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ip, <8 x float> nofpclass(nan inf) %i.ig)
  %i.iu = select <8 x i1> %i.ih, <8 x float> %i.iq, <8 x float> splat (float -1.000000e+00)
  %i.iv = select <8 x i1> %i.ii, <8 x float> %i.ir, <8 x float> splat (float -1.000000e+00)
  %i.iw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.is) ; 2 uses
  %i.ix = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.it) ; 2 uses
  %i.iy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iu) ; 2 uses
  %i.iz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iv) ; 2 uses
  %i.ja = fsub fast <8 x float> %i.he, %i.hn      ; 2 uses
  %i.jb = fsub fast <8 x float> %i.hm, %i.ho      ; 2 uses
  %i.jc = shufflevector <8 x i32> %i.iw, <8 x i32> %i.ix, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jd = bitcast <8 x i32> %i.jc to <8 x float>
  %i.je = shufflevector <8 x i32> %i.iw, <8 x i32> %i.ix, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jf = bitcast <8 x i32> %i.je to <8 x float>
  %i.jg = shufflevector <8 x i32> %i.iy, <8 x i32> %i.iz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jh = bitcast <8 x i32> %i.jg to <8 x float>
  %i.ji = shufflevector <8 x i32> %i.iy, <8 x i32> %i.iz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jj = bitcast <8 x i32> %i.ji to <8 x float>
  %i.jk = shufflevector <8 x float> %i.ja, <8 x float> %i.jb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jl = shufflevector <8 x float> %i.ja, <8 x float> %i.jb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jm = shufflevector <8 x i32> %i.jc, <8 x i32> %i.jg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jn = bitcast <8 x i32> %i.jm to <8 x float>  ; 2 uses
  %i.jo = shufflevector <8 x float> %i.jk, <8 x float> %i.jd, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jp = shufflevector <8 x float> %i.jh, <8 x float> %i.jk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jq = shufflevector <8 x i32> %i.je, <8 x i32> %i.ji, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jr = bitcast <8 x i32> %i.jq to <8 x float>  ; 2 uses
  %i.js = shufflevector <8 x float> %i.jl, <8 x float> %i.jf, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jt = shufflevector <8 x float> %i.jj, <8 x float> %i.jl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ju = shufflevector <8 x float> %i.jn, <8 x float> %i.jo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jv = shufflevector <8 x float> %i.jp, <8 x float> %i.jr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jw = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jx = shufflevector <8 x float> %i.jn, <8 x float> %i.jo, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jy = shufflevector <8 x float> %i.jp, <8 x float> %i.jr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jz = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ju, ptr %.3430, align 1, !tbaa !63
  %i.ka = getelementptr inbounds nuw i8, ptr %.3430, i64 32
  store <8 x float> %i.jv, ptr %i.ka, align 1, !tbaa !63
  %i.kb = getelementptr inbounds nuw i8, ptr %.3430, i64 64
  store <8 x float> %i.jw, ptr %i.kb, align 1, !tbaa !63
  %i.kc = getelementptr inbounds nuw i8, ptr %.3430, i64 96
  store <8 x float> %i.jx, ptr %i.kc, align 1, !tbaa !63
  %i.kd = getelementptr inbounds nuw i8, ptr %.3430, i64 128
  store <8 x float> %i.jy, ptr %i.kd, align 1, !tbaa !63
  %i.ke = getelementptr inbounds nuw i8, ptr %.3430, i64 160
  store <8 x float> %i.jz, ptr %i.ke, align 1, !tbaa !63
  %i.kf = getelementptr inbounds nuw i8, ptr %.0257427, i64 32 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0255428, i64 32 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.3430, i64 192 ; 2 uses
  %i.ki = add nuw nsw i32 %.0253429, 8            ; 2 uses
  %i.kj = or disjoint i32 %i.ki, 7
  %i.kk = icmp slt i32 %i.kj, %i.e
  br i1 %i.kk, label %bb.i, label %.preheader425.loopexit, !llvm.loop !93

bb.j:                                             ; preds = %.lr.ph438, %bb.r
  %.4437 = phi ptr [ %.3.lcssa, %.lr.ph438 ], [ %i.mx, %bb.r ] ; 6 uses
  %.1254436 = phi i32 [ %.0253.lcssa, %.lr.ph438 ], [ %i.my, %bb.r ]
  %.1256435 = phi ptr [ %.0255.lcssa, %.lr.ph438 ], [ %i.mw, %bb.r ] ; 2 uses
  %.1258434 = phi ptr [ %.0257.lcssa, %.lr.ph438 ], [ %i.mv, %bb.r ] ; 2 uses
  %i.kl = load float, ptr %.1258434, align 4, !tbaa !66
  %i.km = load float, ptr %.1256435, align 4, !tbaa !66
  %i.kn = load <2 x i32>, ptr %i.gt, align 4, !tbaa !29 ; 4 uses
  %i.ko = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.kp = insertelement <2 x float> %i.ko, float %i.km, i64 1
  %i.kq = fmul fast <2 x float> %i.kp, splat (float 5.000000e-01)
  %i.kr = fadd fast <2 x float> %i.kq, splat (float 5.000000e-01)
  %i.ks = add nsw <2 x i32> %i.kn, splat (i32 -1)
  %i.kt = sitofp <2 x i32> %i.ks to <2 x float>
  %i.ku = fmul fast <2 x float> %i.kr, %i.kt      ; 2 uses
  %i.kv = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ku)
  %i.kw = fptosi <2 x float> %i.kv to <2 x i32>   ; 5 uses
  %i.kx = extractelement <2 x i32> %i.kw, i64 0   ; 4 uses
  %i.ky = add nsw i32 %i.kx, 1                    ; 3 uses
  %i.kz = extractelement <2 x i32> %i.kw, i64 1   ; 4 uses
  %i.la = add nsw i32 %i.kz, 1                    ; 3 uses
  %i.lb = icmp sgt i32 %i.kx, -2
  %i.lc = extractelement <2 x i32> %i.kn, i64 0   ; 2 uses
  %i.ld = icmp slt i32 %i.ky, %i.lc
  %i.le = and i1 %i.lb, %i.ld                     ; 2 uses
  %i.lf = icmp sgt <2 x i32> %i.kw, splat (i32 -1)
  %i.lg = icmp sgt <2 x i32> %i.kn, %i.kw
  %i.lh = and <2 x i1> %i.lf, %i.lg               ; 2 uses
  %i.li = icmp sgt i32 %i.kz, -2
  %i.lj = extractelement <2 x i32> %i.kn, i64 1
  %i.lk = icmp slt i32 %i.la, %i.lj
  %i.ll = and i1 %i.li, %i.lk                     ; 2 uses
  %i.lm = extractelement <2 x i1> %i.lh, i64 0    ; 2 uses
  %i.ln = extractelement <2 x i1> %i.lh, i64 1    ; 2 uses
  %i.lo = and i1 %i.lm, %i.ln
  %i.lp = and i1 %i.le, %i.ln
  %i.lq = and i1 %i.lm, %i.ll
  %i.lr = and i1 %i.le, %i.ll
  %i.ls = getelementptr inbounds nuw i8, ptr %.4437, i64 16
  br i1 %i.lo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lt = mul nuw nsw i32 %i.lc, %i.kz
  %i.lu = add nsw i32 %i.lt, %i.kx
  %i.lv = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.lw = mul nsw i32 %i.lv, %i.lu
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.lx = phi i32 [ %i.lw, %bb.k ], [ -1, %bb.j ]
  store i32 %i.lx, ptr %.4437, align 4, !tbaa !29
  br i1 %i.lp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ly = load i32, ptr %i.gt, align 4, !tbaa !52
  %i.lz = mul nsw i32 %i.ly, %i.kz
  %i.ma = add nsw i32 %i.lz, %i.ky
  %i.mb = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.mc = mul nsw i32 %i.ma, %i.mb
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.md = phi i32 [ %i.mc, %bb.m ], [ -1, %bb.l ]
  %i.me = getelementptr inbounds nuw i8, ptr %.4437, i64 4
  store i32 %i.md, ptr %i.me, align 4, !tbaa !29
  br i1 %i.lq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mf = load i32, ptr %i.gt, align 4, !tbaa !52
  %i.mg = mul nsw i32 %i.mf, %i.la
  %i.mh = add nsw i32 %i.mg, %i.kx
  %i.mi = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.mj = mul nsw i32 %i.mh, %i.mi
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mk = phi i32 [ %i.mj, %bb.o ], [ -1, %bb.n ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.4437, i64 8
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !29
  br i1 %i.lr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mm = load i32, ptr %i.gt, align 4, !tbaa !52
  %i.mn = mul nsw i32 %i.mm, %i.la
  %i.mo = add nsw i32 %i.mn, %i.ky
  %i.mp = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.mq = mul nsw i32 %i.mo, %i.mp
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.mr = phi i32 [ %i.mq, %bb.q ], [ -1, %bb.p ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.4437, i64 12
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !29
  %i.mt = sitofp <2 x i32> %i.kw to <2 x float>
  %i.mu = fsub fast <2 x float> %i.ku, %i.mt
  store <2 x float> %i.mu, ptr %i.ls, align 4, !tbaa !66
  %i.mv = getelementptr inbounds nuw i8, ptr %.1258434, i64 4
  %i.mw = getelementptr inbounds nuw i8, ptr %.1256435, i64 4
  %i.mx = getelementptr inbounds nuw i8, ptr %.4437, i64 24
  %i.my = add nuw nsw i32 %.1254436, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.my, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !94

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader425, %.preheader424
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !95 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader430, label %_ZN4ncnn3MatD2Ev.exit259

.preheader430:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader430
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0458 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !98
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !98
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !98
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph448, label %.preheader

.preheader:                                       ; preds = %.lr.ph448, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph448 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dr, %.lr.ph448 ]
  %.1.lcssa = phi ptr [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.ds, %.lr.ph448 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph455, label %._crit_edge

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.ds, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.dr, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.dt, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249446, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.aj = fadd fast <8 x float> %i.ad, splat (float 1.000000e+00)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> splat (float -1.000000e+00))
  %i.al = fmul fast <8 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = fadd fast <8 x float> %i.ai, splat (float -1.000000e+00)
  %i.an = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.al, <8 x float> zeroinitializer)
  %i.ao = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.an) ; 2 uses
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !53
  %i.aq = sitofp fast i32 %i.ap to float
  %i.ar = insertelement <8 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <8 x float> %i.ar, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.at = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00)
  %i.au = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) %i.as, <8 x float> splat (float -1.000000e+00))
  %i.av = fmul fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fadd fast <8 x float> %i.as, splat (float -1.000000e+00)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> zeroinitializer)
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.ax) ; 2 uses
  %i.az = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ao, i32 1) ; 5 uses
  %i.ba = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ay, i32 1) ; 5 uses
  %i.bb = fadd fast <8 x float> %i.az, splat (float 1.000000e+00) ; 2 uses
  %i.bc = fadd fast <8 x float> %i.ba, splat (float 1.000000e+00) ; 2 uses
  %i.bd = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ai, %i.az
  %i.bf = and <8 x i1> %i.bd, %i.be               ; 2 uses
  %i.bg = fcmp fast ogt <8 x float> %i.bb, splat (float -1.000000e+00)
  %i.bh = fcmp fast ogt <8 x float> %i.ai, %i.bb
  %i.bi = and <8 x i1> %i.bg, %i.bh               ; 2 uses
  %i.bj = fcmp fast ogt <8 x float> %i.ba, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.as, %i.ba
  %i.bl = and <8 x i1> %i.bj, %i.bk
  %i.bm = sext <8 x i1> %i.bl to <8 x i32>
  %i.bn = fcmp fast ogt <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bo = fcmp fast ogt <8 x float> %i.as, %i.bc
  %i.bp = and <8 x i1> %i.bn, %i.bo               ; 2 uses
  %i.bq = bitcast <8 x i32> %i.bm to <8 x float>  ; 2 uses
  %i.br = select <8 x i1> %i.bf, <8 x float> %i.bq, <8 x float> zeroinitializer
  %i.bs = select <8 x i1> %i.bi, <8 x float> %i.bq, <8 x float> zeroinitializer
  %i.bt = and <8 x i1> %i.bf, %i.bp
  %i.bu = and <8 x i1> %i.bi, %i.bp
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.az)
  %i.bw = load i32, ptr %i.p, align 8, !tbaa !13
  %i.bx = sitofp fast i32 %i.bw to float
  %i.by = insertelement <8 x float> poison, float %i.bx, i64 0
  %i.bz = shufflevector <8 x float> %i.by, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ca = fmul fast <8 x float> %i.bz, %i.bv      ; 3 uses
  %i.cb = fadd fast <8 x float> %i.ca, %i.bz
  %i.cc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.bz, <8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cd = fadd fast <8 x float> %i.cc, %i.bz
  %i.ce = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ca, <8 x float> nofpclass(nan inf) %i.br)
  %i.cf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.cb, <8 x float> nofpclass(nan inf) %i.bs)
  %i.cg = select <8 x i1> %i.bt, <8 x float> %i.cc, <8 x float> splat (float -1.000000e+00)
  %i.ch = select <8 x i1> %i.bu, <8 x float> %i.cd, <8 x float> splat (float -1.000000e+00)
  %i.ci = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.cj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cf) ; 2 uses
  %i.ck = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cg) ; 2 uses
  %i.cl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ch) ; 2 uses
  %i.cm = fsub fast <8 x float> %i.ao, %i.az      ; 2 uses
  %i.cn = fsub fast <8 x float> %i.ay, %i.ba      ; 2 uses
  %i.co = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>
  %i.cu = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>
  %i.cw = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cx = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cy = shufflevector <8 x i32> %i.co, <8 x i32> %i.cs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>  ; 2 uses
  %i.da = shufflevector <8 x float> %i.cw, <8 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.db = shufflevector <8 x float> %i.ct, <8 x float> %i.cw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dc = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dd = bitcast <8 x i32> %i.dc to <8 x float>  ; 2 uses
  %i.de = shufflevector <8 x float> %i.cx, <8 x float> %i.cr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.df = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dg = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dh = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.di = shufflevector <8 x float> %i.de, <8 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dj = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dk = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dl = shufflevector <8 x float> %i.de, <8 x float> %i.df, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.dg, ptr %.1447, align 1, !tbaa !63
  %i.dm = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.dh, ptr %i.dm, align 1, !tbaa !63
  %i.dn = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.di, ptr %i.dn, align 1, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.dj, ptr %i.do, align 1, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.dk, ptr %i.dp, align 1, !tbaa !63
  %i.dq = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.dl, ptr %i.dq, align 1, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.dt = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.du = or disjoint i32 %i.dt, 15
  %i.dv = icmp slt i32 %i.du, %i.e
  br i1 %i.dv, label %.lr.ph448, label %.preheader, !llvm.loop !101

.lr.ph455:                                        ; preds = %.preheader, %bb.h
  %.2454 = phi ptr [ %i.gh, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.gg, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.gi, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.dw = load <2 x float>, ptr %.1250453, align 4, !tbaa !66
  %i.dx = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 4 uses
  %i.dy = sitofp <2 x i32> %i.dx to <2 x float>   ; 2 uses
  %i.dz = fmul fast <2 x float> %i.dw, splat (float 5.000000e-01)
  %i.ea = fadd fast <2 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fmul fast <2 x float> %i.ea, %i.dy
  %i.ec = fadd fast <2 x float> %i.eb, splat (float -5.000000e-01)
  %i.ed = fadd fast <2 x float> %i.dy, splat (float -1.000000e+00)
  %i.ee = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ec, <2 x float> zeroinitializer)
  %i.ef = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ee, <2 x float> %i.ed) ; 2 uses
  %i.eg = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ef)
  %i.eh = fptosi <2 x float> %i.eg to <2 x i32>   ; 5 uses
  %i.ei = extractelement <2 x i32> %i.eh, i64 0   ; 4 uses
  %i.ej = add nsw i32 %i.ei, 1                    ; 3 uses
  %i.ek = extractelement <2 x i32> %i.eh, i64 1   ; 4 uses
  %i.el = add nsw i32 %i.ek, 1                    ; 3 uses
  %i.em = icmp sgt i32 %i.ei, -2
  %i.en = extractelement <2 x i32> %i.dx, i64 0   ; 2 uses
  %i.eo = icmp slt i32 %i.ej, %i.en
  %i.ep = and i1 %i.em, %i.eo                     ; 2 uses
  %i.eq = icmp sgt <2 x i32> %i.eh, splat (i32 -1)
  %i.er = icmp sgt <2 x i32> %i.dx, %i.eh
  %i.es = and <2 x i1> %i.eq, %i.er               ; 2 uses
  %i.et = icmp sgt i32 %i.ek, -2
  %i.eu = extractelement <2 x i32> %i.dx, i64 1
  %i.ev = icmp slt i32 %i.el, %i.eu
  %i.ew = and i1 %i.et, %i.ev                     ; 2 uses
  %i.ex = extractelement <2 x i1> %i.es, i64 0    ; 2 uses
  %i.ey = extractelement <2 x i1> %i.es, i64 1    ; 2 uses
  %i.ez = and i1 %i.ex, %i.ey
  %i.fa = and i1 %i.ep, %i.ey
  %i.fb = and i1 %i.ex, %i.ew
  %i.fc = and i1 %i.ep, %i.ew
  %i.fd = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.ez, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.fe = mul nuw nsw i32 %i.en, %i.ek
  %i.ff = add nsw i32 %i.fe, %i.ei
  %i.fg = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fh = mul nsw i32 %i.fg, %i.ff
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.fi = phi i32 [ %i.fh, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.fi, ptr %.2454, align 4, !tbaa !29
  br i1 %i.fa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fj = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fk = mul nsw i32 %i.fj, %i.ek
  %i.fl = add nsw i32 %i.fk, %i.ej
  %i.fm = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fn = mul nsw i32 %i.fl, %i.fm
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fo = phi i32 [ %i.fn, %bb.c ], [ -1, %bb.b ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !29
  br i1 %i.fb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fq = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fr = mul nsw i32 %i.fq, %i.el
  %i.fs = add nsw i32 %i.fr, %i.ei
  %i.ft = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fu = mul nsw i32 %i.fs, %i.ft
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fv = phi i32 [ %i.fu, %bb.e ], [ -1, %bb.d ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !29
  br i1 %i.fc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fx = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fy = mul nsw i32 %i.fx, %i.el
  %i.fz = add nsw i32 %i.fy, %i.ej
  %i.ga = load i32, ptr %i.p, align 8, !tbaa !13
  %i.gb = mul nsw i32 %i.fz, %i.ga
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.gc = phi i32 [ %i.gb, %bb.g ], [ -1, %bb.f ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !29
  %i.ge = sitofp <2 x i32> %i.eh to <2 x float>
  %i.gf = fsub fast <2 x float> %i.ef, %i.ge
  store <2 x float> %i.gf, ptr %i.fd, align 4, !tbaa !66
  %i.gg = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.gi = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.gj = icmp slt i32 %i.gi, %i.e
  br i1 %i.gj, label %.lr.ph455, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.gh, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gk = load i32, ptr %i.h, align 8, !tbaa !18
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next, %i.gl
  br i1 %i.gm, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !103

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.gn = load ptr, ptr %1, align 8, !tbaa !24, !noalias !104 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !21, !noalias !107
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !20, !noalias !107
  %i.gs = mul i64 %i.gr, %i.gq
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gs ; 2 uses
  %i.gu = icmp sgt i32 %i.e, 7
  br i1 %i.gu, label %.lr.ph, label %.preheader431

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit259
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

.preheader431.loopexit:                           ; preds = %bb.i
  %i.gy = and i32 %i.e, 2147483640
  br label %.preheader431

.preheader431:                                    ; preds = %.preheader431.loopexit, %_ZN4ncnn3MatD2Ev.exit259
  %.0257.lcssa = phi ptr [ %i.gn, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.kq, %.preheader431.loopexit ]
  %.0255.lcssa = phi ptr [ %i.gt, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.kr, %.preheader431.loopexit ]
  %.0253.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.gy, %.preheader431.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.ks, %.preheader431.loopexit ]
  %i.gz = icmp slt i32 %.0253.lcssa, %i.e
  br i1 %i.gz, label %.lr.ph444, label %.loopexit

.lr.ph444:                                        ; preds = %.preheader431
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.3436 = phi ptr [ %i.f, %.lr.ph ], [ %i.ks, %bb.i ] ; 7 uses
  %.0253435 = phi i32 [ 0, %.lr.ph ], [ %i.kt, %bb.i ]
  %.0255434 = phi ptr [ %i.gt, %.lr.ph ], [ %i.kr, %bb.i ] ; 2 uses
  %.0257433 = phi ptr [ %i.gn, %.lr.ph ], [ %i.kq, %bb.i ] ; 2 uses
  %i.hc = load <8 x float>, ptr %.0257433, align 1, !tbaa !63
  %i.hd = load <8 x float>, ptr %.0255434, align 1, !tbaa !63
  %i.he = load i32, ptr %i.gv, align 4, !tbaa !52
  %i.hf = sitofp fast i32 %i.he to float
  %i.hg = insertelement <8 x float> poison, float %i.hf, i64 0
  %i.hh = shufflevector <8 x float> %i.hg, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.hi = fadd fast <8 x float> %i.hc, splat (float 1.000000e+00)
  %i.hj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hi, <8 x float> nofpclass(nan inf) %i.hh, <8 x float> splat (float -1.000000e+00))
  %i.hk = fmul fast <8 x float> %i.hj, splat (float 5.000000e-01)
  %i.hl = fadd fast <8 x float> %i.hh, splat (float -1.000000e+00)
  %i.hm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hk, <8 x float> zeroinitializer)
  %i.hn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hl, <8 x float> nofpclass(nan inf) %i.hm) ; 2 uses
  %i.ho = load i32, ptr %i.gw, align 8, !tbaa !53
  %i.hp = sitofp fast i32 %i.ho to float
  %i.hq = insertelement <8 x float> poison, float %i.hp, i64 0
  %i.hr = shufflevector <8 x float> %i.hq, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.hs = fadd fast <8 x float> %i.hd, splat (float 1.000000e+00)
  %i.ht = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hs, <8 x float> nofpclass(nan inf) %i.hr, <8 x float> splat (float -1.000000e+00))
  %i.hu = fmul fast <8 x float> %i.ht, splat (float 5.000000e-01)
  %i.hv = fadd fast <8 x float> %i.hr, splat (float -1.000000e+00)
  %i.hw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hu, <8 x float> zeroinitializer)
  %i.hx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hv, <8 x float> nofpclass(nan inf) %i.hw) ; 2 uses
  %i.hy = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hn, i32 1) ; 5 uses
  %i.hz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hx, i32 1) ; 5 uses
  %i.ia = fadd fast <8 x float> %i.hy, splat (float 1.000000e+00) ; 2 uses
  %i.ib = fadd fast <8 x float> %i.hz, splat (float 1.000000e+00) ; 2 uses
  %i.ic = fcmp fast ogt <8 x float> %i.hy, splat (float -1.000000e+00)
  %i.id = fcmp fast ogt <8 x float> %i.hh, %i.hy
  %i.ie = and <8 x i1> %i.ic, %i.id               ; 2 uses
  %i.if = fcmp fast ogt <8 x float> %i.ia, splat (float -1.000000e+00)
  %i.ig = fcmp fast ogt <8 x float> %i.hh, %i.ia
  %i.ih = and <8 x i1> %i.if, %i.ig               ; 2 uses
  %i.ii = fcmp fast ogt <8 x float> %i.hz, splat (float -1.000000e+00)
  %i.ij = fcmp fast ogt <8 x float> %i.hr, %i.hz
  %i.ik = and <8 x i1> %i.ii, %i.ij
  %i.il = sext <8 x i1> %i.ik to <8 x i32>
  %i.im = fcmp fast ogt <8 x float> %i.ib, splat (float -1.000000e+00)
  %i.in = fcmp fast ogt <8 x float> %i.hr, %i.ib
  %i.io = and <8 x i1> %i.im, %i.in               ; 2 uses
  %i.ip = bitcast <8 x i32> %i.il to <8 x float>  ; 2 uses
  %i.iq = select <8 x i1> %i.ie, <8 x float> %i.ip, <8 x float> zeroinitializer
  %i.ir = select <8 x i1> %i.ih, <8 x float> %i.ip, <8 x float> zeroinitializer
  %i.is = and <8 x i1> %i.ie, %i.io
  %i.it = and <8 x i1> %i.ih, %i.io
  %i.iu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hz, <8 x float> nofpclass(nan inf) %i.hh, <8 x float> nofpclass(nan inf) %i.hy)
  %i.iv = load i32, ptr %i.gx, align 8, !tbaa !13
  %i.iw = sitofp fast i32 %i.iv to float
  %i.ix = insertelement <8 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <8 x float> %i.ix, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.iz = fmul fast <8 x float> %i.iy, %i.iu      ; 3 uses
  %i.ja = fadd fast <8 x float> %i.iz, %i.iy
  %i.jb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hh, <8 x float> nofpclass(nan inf) %i.iy, <8 x float> nofpclass(nan inf) %i.iz) ; 2 uses
  %i.jc = fadd fast <8 x float> %i.jb, %i.iy
  %i.jd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.iz, <8 x float> nofpclass(nan inf) %i.iq)
  %i.je = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ja, <8 x float> nofpclass(nan inf) %i.ir)
  %i.jf = select <8 x i1> %i.is, <8 x float> %i.jb, <8 x float> splat (float -1.000000e+00)
  %i.jg = select <8 x i1> %i.it, <8 x float> %i.jc, <8 x float> splat (float -1.000000e+00)
  %i.jh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jd) ; 2 uses
  %i.ji = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.je) ; 2 uses
  %i.jj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jf) ; 2 uses
  %i.jk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jg) ; 2 uses
  %i.jl = fsub fast <8 x float> %i.hn, %i.hy      ; 2 uses
  %i.jm = fsub fast <8 x float> %i.hx, %i.hz      ; 2 uses
  %i.jn = shufflevector <8 x i32> %i.jh, <8 x i32> %i.ji, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jo = bitcast <8 x i32> %i.jn to <8 x float>
  %i.jp = shufflevector <8 x i32> %i.jh, <8 x i32> %i.ji, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jq = bitcast <8 x i32> %i.jp to <8 x float>
  %i.jr = shufflevector <8 x i32> %i.jj, <8 x i32> %i.jk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.js = bitcast <8 x i32> %i.jr to <8 x float>
  %i.jt = shufflevector <8 x i32> %i.jj, <8 x i32> %i.jk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ju = bitcast <8 x i32> %i.jt to <8 x float>
  %i.jv = shufflevector <8 x float> %i.jl, <8 x float> %i.jm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jw = shufflevector <8 x float> %i.jl, <8 x float> %i.jm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jx = shufflevector <8 x i32> %i.jn, <8 x i32> %i.jr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jy = bitcast <8 x i32> %i.jx to <8 x float>  ; 2 uses
  %i.jz = shufflevector <8 x float> %i.jv, <8 x float> %i.jo, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.ka = shufflevector <8 x float> %i.js, <8 x float> %i.jv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kb = shufflevector <8 x i32> %i.jp, <8 x i32> %i.jt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kc = bitcast <8 x i32> %i.kb to <8 x float>  ; 2 uses
  %i.kd = shufflevector <8 x float> %i.jw, <8 x float> %i.jq, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.ke = shufflevector <8 x float> %i.ju, <8 x float> %i.jw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kf = shufflevector <8 x float> %i.jy, <8 x float> %i.jz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kg = shufflevector <8 x float> %i.ka, <8 x float> %i.kc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kh = shufflevector <8 x float> %i.kd, <8 x float> %i.ke, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ki = shufflevector <8 x float> %i.jy, <8 x float> %i.jz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kj = shufflevector <8 x float> %i.ka, <8 x float> %i.kc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kk = shufflevector <8 x float> %i.kd, <8 x float> %i.ke, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.kf, ptr %.3436, align 1, !tbaa !63
  %i.kl = getelementptr inbounds nuw i8, ptr %.3436, i64 32
  store <8 x float> %i.kg, ptr %i.kl, align 1, !tbaa !63
  %i.km = getelementptr inbounds nuw i8, ptr %.3436, i64 64
  store <8 x float> %i.kh, ptr %i.km, align 1, !tbaa !63
  %i.kn = getelementptr inbounds nuw i8, ptr %.3436, i64 96
  store <8 x float> %i.ki, ptr %i.kn, align 1, !tbaa !63
  %i.ko = getelementptr inbounds nuw i8, ptr %.3436, i64 128
  store <8 x float> %i.kj, ptr %i.ko, align 1, !tbaa !63
  %i.kp = getelementptr inbounds nuw i8, ptr %.3436, i64 160
  store <8 x float> %i.kk, ptr %i.kp, align 1, !tbaa !63
  %i.kq = getelementptr inbounds nuw i8, ptr %.0257433, i64 32 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0255434, i64 32 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.3436, i64 192 ; 2 uses
  %i.kt = add nuw nsw i32 %.0253435, 8            ; 2 uses
  %i.ku = or disjoint i32 %i.kt, 7
  %i.kv = icmp slt i32 %i.ku, %i.e
  br i1 %i.kv, label %bb.i, label %.preheader431.loopexit, !llvm.loop !110

bb.j:                                             ; preds = %.lr.ph444, %bb.r
  %.4443 = phi ptr [ %.3.lcssa, %.lr.ph444 ], [ %i.nl, %bb.r ] ; 6 uses
  %.1254442 = phi i32 [ %.0253.lcssa, %.lr.ph444 ], [ %i.nm, %bb.r ]
  %.1256441 = phi ptr [ %.0255.lcssa, %.lr.ph444 ], [ %i.nk, %bb.r ] ; 2 uses
  %.1258440 = phi ptr [ %.0257.lcssa, %.lr.ph444 ], [ %i.nj, %bb.r ] ; 2 uses
  %i.kw = load float, ptr %.1258440, align 4, !tbaa !66
  %i.kx = load float, ptr %.1256441, align 4, !tbaa !66
  %i.ky = load <2 x i32>, ptr %i.ha, align 4, !tbaa !29 ; 4 uses
  %i.kz = sitofp <2 x i32> %i.ky to <2 x float>   ; 2 uses
  %i.la = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.lb = insertelement <2 x float> %i.la, float %i.kx, i64 1
  %i.lc = fmul fast <2 x float> %i.lb, splat (float 5.000000e-01)
  %i.ld = fadd fast <2 x float> %i.lc, splat (float 5.000000e-01)
  %i.le = fmul fast <2 x float> %i.ld, %i.kz
  %i.lf = fadd fast <2 x float> %i.le, splat (float -5.000000e-01)
  %i.lg = fadd fast <2 x float> %i.kz, splat (float -1.000000e+00)
  %i.lh = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lf, <2 x float> zeroinitializer)
  %i.li = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.lh, <2 x float> %i.lg) ; 2 uses
  %i.lj = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.li)
  %i.lk = fptosi <2 x float> %i.lj to <2 x i32>   ; 5 uses
  %i.ll = extractelement <2 x i32> %i.lk, i64 0   ; 4 uses
  %i.lm = add nsw i32 %i.ll, 1                    ; 3 uses
  %i.ln = extractelement <2 x i32> %i.lk, i64 1   ; 4 uses
  %i.lo = add nsw i32 %i.ln, 1                    ; 3 uses
  %i.lp = icmp sgt i32 %i.ll, -2
  %i.lq = extractelement <2 x i32> %i.ky, i64 0   ; 2 uses
  %i.lr = icmp slt i32 %i.lm, %i.lq
  %i.ls = and i1 %i.lp, %i.lr                     ; 2 uses
  %i.lt = icmp sgt <2 x i32> %i.lk, splat (i32 -1)
  %i.lu = icmp sgt <2 x i32> %i.ky, %i.lk
  %i.lv = and <2 x i1> %i.lt, %i.lu               ; 2 uses
  %i.lw = icmp sgt i32 %i.ln, -2
  %i.lx = extractelement <2 x i32> %i.ky, i64 1
  %i.ly = icmp slt i32 %i.lo, %i.lx
  %i.lz = and i1 %i.lw, %i.ly                     ; 2 uses
  %i.ma = extractelement <2 x i1> %i.lv, i64 0    ; 2 uses
  %i.mb = extractelement <2 x i1> %i.lv, i64 1    ; 2 uses
  %i.mc = and i1 %i.ma, %i.mb
  %i.md = and i1 %i.ls, %i.mb
  %i.me = and i1 %i.ma, %i.lz
  %i.mf = and i1 %i.ls, %i.lz
  %i.mg = getelementptr inbounds nuw i8, ptr %.4443, i64 16
  br i1 %i.mc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mh = mul nuw nsw i32 %i.lq, %i.ln
  %i.mi = add nsw i32 %i.mh, %i.ll
  %i.mj = load i32, ptr %i.hb, align 8, !tbaa !13
  %i.mk = mul nsw i32 %i.mj, %i.mi
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ml = phi i32 [ %i.mk, %bb.k ], [ -1, %bb.j ]
  store i32 %i.ml, ptr %.4443, align 4, !tbaa !29
  br i1 %i.md, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mm = load i32, ptr %i.ha, align 4, !tbaa !52
  %i.mn = mul nsw i32 %i.mm, %i.ln
  %i.mo = add nsw i32 %i.mn, %i.lm
  %i.mp = load i32, ptr %i.hb, align 8, !tbaa !13
  %i.mq = mul nsw i32 %i.mo, %i.mp
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mr = phi i32 [ %i.mq, %bb.m ], [ -1, %bb.l ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.4443, i64 4
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !29
  br i1 %i.me, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mt = load i32, ptr %i.ha, align 4, !tbaa !52
  %i.mu = mul nsw i32 %i.mt, %i.lo
  %i.mv = add nsw i32 %i.mu, %i.ll
  %i.mw = load i32, ptr %i.hb, align 8, !tbaa !13
  %i.mx = mul nsw i32 %i.mv, %i.mw
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.my = phi i32 [ %i.mx, %bb.o ], [ -1, %bb.n ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.4443, i64 8
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !29
  br i1 %i.mf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.na = load i32, ptr %i.ha, align 4, !tbaa !52
  %i.nb = mul nsw i32 %i.na, %i.lo
  %i.nc = add nsw i32 %i.nb, %i.lm
  %i.nd = load i32, ptr %i.hb, align 8, !tbaa !13
  %i.ne = mul nsw i32 %i.nc, %i.nd
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nf = phi i32 [ %i.ne, %bb.q ], [ -1, %bb.p ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.4443, i64 12
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !29
  %i.nh = sitofp <2 x i32> %i.lk to <2 x float>
  %i.ni = fsub fast <2 x float> %i.li, %i.nh
  store <2 x float> %i.ni, ptr %i.mg, align 4, !tbaa !66
  %i.nj = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.nk = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.nl = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.nm = add nuw nsw i32 %.1254442, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nm, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !111

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !112 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader430, label %_ZN4ncnn3MatD2Ev.exit259

.preheader430:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader430
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0458 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !115
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !115
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !115
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph448, label %.preheader

.preheader:                                       ; preds = %.lr.ph448, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph448 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dr, %.lr.ph448 ]
  %.1.lcssa = phi ptr [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.ds, %.lr.ph448 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph455, label %._crit_edge

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.ds, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.dr, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.dt, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249446, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.aj = fmul fast <8 x float> %i.ad, splat (float 5.000000e-01)
  %i.ak = fadd fast <8 x float> %i.aj, splat (float 5.000000e-01)
  %i.al = fadd fast <8 x float> %i.ai, splat (float -1.000000e+00) ; 2 uses
  %i.am = fmul fast <8 x float> %i.al, %i.ak
  %i.an = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.am, <8 x float> zeroinitializer)
  %i.ao = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) %i.an) ; 2 uses
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !53
  %i.aq = sitofp fast i32 %i.ap to float
  %i.ar = insertelement <8 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <8 x float> %i.ar, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.at = fmul fast <8 x float> %i.ae, splat (float 5.000000e-01)
  %i.au = fadd fast <8 x float> %i.at, splat (float 5.000000e-01)
  %i.av = fadd fast <8 x float> %i.as, splat (float -1.000000e+00) ; 2 uses
  %i.aw = fmul fast <8 x float> %i.av, %i.au
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> zeroinitializer)
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.ax) ; 2 uses
  %i.az = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ao, i32 1) ; 5 uses
  %i.ba = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ay, i32 1) ; 5 uses
  %i.bb = fadd fast <8 x float> %i.az, splat (float 1.000000e+00) ; 2 uses
  %i.bc = fadd fast <8 x float> %i.ba, splat (float 1.000000e+00) ; 2 uses
  %i.bd = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ai, %i.az
  %i.bf = and <8 x i1> %i.bd, %i.be               ; 2 uses
  %i.bg = fcmp fast ogt <8 x float> %i.bb, splat (float -1.000000e+00)
  %i.bh = fcmp fast ogt <8 x float> %i.ai, %i.bb
  %i.bi = and <8 x i1> %i.bg, %i.bh               ; 2 uses
  %i.bj = fcmp fast ogt <8 x float> %i.ba, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.as, %i.ba
  %i.bl = and <8 x i1> %i.bj, %i.bk
  %i.bm = sext <8 x i1> %i.bl to <8 x i32>
  %i.bn = fcmp fast ogt <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bo = fcmp fast ogt <8 x float> %i.as, %i.bc
  %i.bp = and <8 x i1> %i.bn, %i.bo               ; 2 uses
  %i.bq = bitcast <8 x i32> %i.bm to <8 x float>  ; 2 uses
  %i.br = select <8 x i1> %i.bf, <8 x float> %i.bq, <8 x float> zeroinitializer
  %i.bs = select <8 x i1> %i.bi, <8 x float> %i.bq, <8 x float> zeroinitializer
  %i.bt = and <8 x i1> %i.bf, %i.bp
  %i.bu = and <8 x i1> %i.bi, %i.bp
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.az)
  %i.bw = load i32, ptr %i.p, align 8, !tbaa !13
  %i.bx = sitofp fast i32 %i.bw to float
  %i.by = insertelement <8 x float> poison, float %i.bx, i64 0
  %i.bz = shufflevector <8 x float> %i.by, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ca = fmul fast <8 x float> %i.bz, %i.bv      ; 3 uses
  %i.cb = fadd fast <8 x float> %i.ca, %i.bz
  %i.cc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.bz, <8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cd = fadd fast <8 x float> %i.cc, %i.bz
  %i.ce = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ca, <8 x float> nofpclass(nan inf) %i.br)
  %i.cf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.cb, <8 x float> nofpclass(nan inf) %i.bs)
  %i.cg = select <8 x i1> %i.bt, <8 x float> %i.cc, <8 x float> splat (float -1.000000e+00)
  %i.ch = select <8 x i1> %i.bu, <8 x float> %i.cd, <8 x float> splat (float -1.000000e+00)
  %i.ci = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.cj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cf) ; 2 uses
  %i.ck = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cg) ; 2 uses
  %i.cl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ch) ; 2 uses
  %i.cm = fsub fast <8 x float> %i.ao, %i.az      ; 2 uses
  %i.cn = fsub fast <8 x float> %i.ay, %i.ba      ; 2 uses
  %i.co = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>
  %i.cu = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>
  %i.cw = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cx = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cy = shufflevector <8 x i32> %i.co, <8 x i32> %i.cs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>  ; 2 uses
  %i.da = shufflevector <8 x float> %i.cw, <8 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.db = shufflevector <8 x float> %i.ct, <8 x float> %i.cw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dc = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dd = bitcast <8 x i32> %i.dc to <8 x float>  ; 2 uses
  %i.de = shufflevector <8 x float> %i.cx, <8 x float> %i.cr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.df = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dg = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dh = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.di = shufflevector <8 x float> %i.de, <8 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dj = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dk = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dl = shufflevector <8 x float> %i.de, <8 x float> %i.df, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.dg, ptr %.1447, align 1, !tbaa !63
  %i.dm = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.dh, ptr %i.dm, align 1, !tbaa !63
  %i.dn = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.di, ptr %i.dn, align 1, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.dj, ptr %i.do, align 1, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.dk, ptr %i.dp, align 1, !tbaa !63
  %i.dq = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.dl, ptr %i.dq, align 1, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.dt = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.du = or disjoint i32 %i.dt, 15
  %i.dv = icmp slt i32 %i.du, %i.e
  br i1 %i.dv, label %.lr.ph448, label %.preheader, !llvm.loop !118

.lr.ph455:                                        ; preds = %.preheader, %bb.h
  %.2454 = phi ptr [ %i.gi, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.gh, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.gj, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.dw = load <2 x float>, ptr %.1250453, align 4, !tbaa !66
  %i.dx = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 5 uses
  %i.dy = fmul fast <2 x float> %i.dw, splat (float 5.000000e-01)
  %i.dz = fadd fast <2 x float> %i.dy, splat (float 5.000000e-01)
  %i.ea = add nsw <2 x i32> %i.dx, splat (i32 -1)
  %i.eb = sitofp <2 x i32> %i.ea to <2 x float>
  %i.ec = fmul fast <2 x float> %i.dz, %i.eb
  %i.ed = sitofp <2 x i32> %i.dx to <2 x float>
  %i.ee = fadd fast <2 x float> %i.ed, splat (float -1.000000e+00)
  %i.ef = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ec, <2 x float> zeroinitializer)
  %i.eg = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ef, <2 x float> %i.ee) ; 2 uses
  %i.eh = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.eg)
  %i.ei = fptosi <2 x float> %i.eh to <2 x i32>   ; 5 uses
  %i.ej = extractelement <2 x i32> %i.ei, i64 0   ; 4 uses
  %i.ek = add nsw i32 %i.ej, 1                    ; 3 uses
  %i.el = extractelement <2 x i32> %i.ei, i64 1   ; 4 uses
  %i.em = add nsw i32 %i.el, 1                    ; 3 uses
  %i.en = icmp sgt i32 %i.ej, -2
  %i.eo = extractelement <2 x i32> %i.dx, i64 0   ; 2 uses
  %i.ep = icmp slt i32 %i.ek, %i.eo
  %i.eq = and i1 %i.en, %i.ep                     ; 2 uses
  %i.er = icmp sgt <2 x i32> %i.ei, splat (i32 -1)
  %i.es = icmp sgt <2 x i32> %i.dx, %i.ei
  %i.et = and <2 x i1> %i.er, %i.es               ; 2 uses
  %i.eu = icmp sgt i32 %i.el, -2
  %i.ev = extractelement <2 x i32> %i.dx, i64 1
  %i.ew = icmp slt i32 %i.em, %i.ev
  %i.ex = and i1 %i.eu, %i.ew                     ; 2 uses
  %i.ey = extractelement <2 x i1> %i.et, i64 0    ; 2 uses
  %i.ez = extractelement <2 x i1> %i.et, i64 1    ; 2 uses
  %i.fa = and i1 %i.ey, %i.ez
  %i.fb = and i1 %i.eq, %i.ez
  %i.fc = and i1 %i.ey, %i.ex
  %i.fd = and i1 %i.eq, %i.ex
  %i.fe = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.fa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.ff = mul nuw nsw i32 %i.eo, %i.el
  %i.fg = add nsw i32 %i.ff, %i.ej
  %i.fh = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fi = mul nsw i32 %i.fh, %i.fg
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.fj = phi i32 [ %i.fi, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.fj, ptr %.2454, align 4, !tbaa !29
  br i1 %i.fb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fk = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fl = mul nsw i32 %i.fk, %i.el
  %i.fm = add nsw i32 %i.fl, %i.ek
  %i.fn = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fo = mul nsw i32 %i.fm, %i.fn
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fp = phi i32 [ %i.fo, %bb.c ], [ -1, %bb.b ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !29
  br i1 %i.fc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fr = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fs = mul nsw i32 %i.fr, %i.em
  %i.ft = add nsw i32 %i.fs, %i.ej
  %i.fu = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fv = mul nsw i32 %i.ft, %i.fu
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fw = phi i32 [ %i.fv, %bb.e ], [ -1, %bb.d ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !29
  br i1 %i.fd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fy = load i32, ptr %i.n, align 4, !tbaa !52
  %i.fz = mul nsw i32 %i.fy, %i.em
  %i.ga = add nsw i32 %i.fz, %i.ek
  %i.gb = load i32, ptr %i.p, align 8, !tbaa !13
  %i.gc = mul nsw i32 %i.ga, %i.gb
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.gd = phi i32 [ %i.gc, %bb.g ], [ -1, %bb.f ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !29
  %i.gf = sitofp <2 x i32> %i.ei to <2 x float>
  %i.gg = fsub fast <2 x float> %i.eg, %i.gf
  store <2 x float> %i.gg, ptr %i.fe, align 4, !tbaa !66
  %i.gh = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.gj = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.gk = icmp slt i32 %i.gj, %i.e
  br i1 %i.gk, label %.lr.ph455, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.gi, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gl = load i32, ptr %i.h, align 8, !tbaa !18
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next, %i.gm
  br i1 %i.gn, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !120

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.go = load ptr, ptr %1, align 8, !tbaa !24, !noalias !121 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !21, !noalias !124
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !20, !noalias !124
  %i.gt = mul i64 %i.gs, %i.gr
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gt ; 2 uses
  %i.gv = icmp sgt i32 %i.e, 7
  br i1 %i.gv, label %.lr.ph, label %.preheader431

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit259
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

.preheader431.loopexit:                           ; preds = %bb.i
  %i.gz = and i32 %i.e, 2147483640
  br label %.preheader431

.preheader431:                                    ; preds = %.preheader431.loopexit, %_ZN4ncnn3MatD2Ev.exit259
  %.0257.lcssa = phi ptr [ %i.go, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.kr, %.preheader431.loopexit ]
  %.0255.lcssa = phi ptr [ %i.gu, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.ks, %.preheader431.loopexit ]
  %.0253.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.gz, %.preheader431.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.kt, %.preheader431.loopexit ]
  %i.ha = icmp slt i32 %.0253.lcssa, %i.e
  br i1 %i.ha, label %.lr.ph444, label %.loopexit

.lr.ph444:                                        ; preds = %.preheader431
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.3436 = phi ptr [ %i.f, %.lr.ph ], [ %i.kt, %bb.i ] ; 7 uses
  %.0253435 = phi i32 [ 0, %.lr.ph ], [ %i.ku, %bb.i ]
  %.0255434 = phi ptr [ %i.gu, %.lr.ph ], [ %i.ks, %bb.i ] ; 2 uses
  %.0257433 = phi ptr [ %i.go, %.lr.ph ], [ %i.kr, %bb.i ] ; 2 uses
  %i.hd = load <8 x float>, ptr %.0257433, align 1, !tbaa !63
  %i.he = load <8 x float>, ptr %.0255434, align 1, !tbaa !63
  %i.hf = load i32, ptr %i.gw, align 4, !tbaa !52
  %i.hg = sitofp fast i32 %i.hf to float
  %i.hh = insertelement <8 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <8 x float> %i.hh, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.hj = fmul fast <8 x float> %i.hd, splat (float 5.000000e-01)
  %i.hk = fadd fast <8 x float> %i.hj, splat (float 5.000000e-01)
  %i.hl = fadd fast <8 x float> %i.hi, splat (float -1.000000e+00) ; 2 uses
  %i.hm = fmul fast <8 x float> %i.hl, %i.hk
  %i.hn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hm, <8 x float> zeroinitializer)
  %i.ho = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hl, <8 x float> nofpclass(nan inf) %i.hn) ; 2 uses
  %i.hp = load i32, ptr %i.gx, align 8, !tbaa !53
  %i.hq = sitofp fast i32 %i.hp to float
  %i.hr = insertelement <8 x float> poison, float %i.hq, i64 0
  %i.hs = shufflevector <8 x float> %i.hr, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ht = fmul fast <8 x float> %i.he, splat (float 5.000000e-01)
  %i.hu = fadd fast <8 x float> %i.ht, splat (float 5.000000e-01)
  %i.hv = fadd fast <8 x float> %i.hs, splat (float -1.000000e+00) ; 2 uses
  %i.hw = fmul fast <8 x float> %i.hv, %i.hu
  %i.hx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hw, <8 x float> zeroinitializer)
  %i.hy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hv, <8 x float> nofpclass(nan inf) %i.hx) ; 2 uses
  %i.hz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ho, i32 1) ; 5 uses
  %i.ia = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hy, i32 1) ; 5 uses
  %i.ib = fadd fast <8 x float> %i.hz, splat (float 1.000000e+00) ; 2 uses
  %i.ic = fadd fast <8 x float> %i.ia, splat (float 1.000000e+00) ; 2 uses
  %i.id = fcmp fast ogt <8 x float> %i.hz, splat (float -1.000000e+00)
  %i.ie = fcmp fast ogt <8 x float> %i.hi, %i.hz
  %i.if = and <8 x i1> %i.id, %i.ie               ; 2 uses
  %i.ig = fcmp fast ogt <8 x float> %i.ib, splat (float -1.000000e+00)
  %i.ih = fcmp fast ogt <8 x float> %i.hi, %i.ib
  %i.ii = and <8 x i1> %i.ig, %i.ih               ; 2 uses
  %i.ij = fcmp fast ogt <8 x float> %i.ia, splat (float -1.000000e+00)
  %i.ik = fcmp fast ogt <8 x float> %i.hs, %i.ia
  %i.il = and <8 x i1> %i.ij, %i.ik
  %i.im = sext <8 x i1> %i.il to <8 x i32>
  %i.in = fcmp fast ogt <8 x float> %i.ic, splat (float -1.000000e+00)
  %i.io = fcmp fast ogt <8 x float> %i.hs, %i.ic
  %i.ip = and <8 x i1> %i.in, %i.io               ; 2 uses
  %i.iq = bitcast <8 x i32> %i.im to <8 x float>  ; 2 uses
  %i.ir = select <8 x i1> %i.if, <8 x float> %i.iq, <8 x float> zeroinitializer
  %i.is = select <8 x i1> %i.ii, <8 x float> %i.iq, <8 x float> zeroinitializer
  %i.it = and <8 x i1> %i.if, %i.ip
  %i.iu = and <8 x i1> %i.ii, %i.ip
  %i.iv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ia, <8 x float> nofpclass(nan inf) %i.hi, <8 x float> nofpclass(nan inf) %i.hz)
  %i.iw = load i32, ptr %i.gy, align 8, !tbaa !13
  %i.ix = sitofp fast i32 %i.iw to float
  %i.iy = insertelement <8 x float> poison, float %i.ix, i64 0
  %i.iz = shufflevector <8 x float> %i.iy, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ja = fmul fast <8 x float> %i.iz, %i.iv      ; 3 uses
  %i.jb = fadd fast <8 x float> %i.ja, %i.iz
  %i.jc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hi, <8 x float> nofpclass(nan inf) %i.iz, <8 x float> nofpclass(nan inf) %i.ja) ; 2 uses
  %i.jd = fadd fast <8 x float> %i.jc, %i.iz
  %i.je = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ja, <8 x float> nofpclass(nan inf) %i.ir)
  %i.jf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.jb, <8 x float> nofpclass(nan inf) %i.is)
  %i.jg = select <8 x i1> %i.it, <8 x float> %i.jc, <8 x float> splat (float -1.000000e+00)
  %i.jh = select <8 x i1> %i.iu, <8 x float> %i.jd, <8 x float> splat (float -1.000000e+00)
  %i.ji = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.je) ; 2 uses
  %i.jj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jf) ; 2 uses
  %i.jk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jg) ; 2 uses
  %i.jl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jh) ; 2 uses
  %i.jm = fsub fast <8 x float> %i.ho, %i.hz      ; 2 uses
  %i.jn = fsub fast <8 x float> %i.hy, %i.ia      ; 2 uses
  %i.jo = shufflevector <8 x i32> %i.ji, <8 x i32> %i.jj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jp = bitcast <8 x i32> %i.jo to <8 x float>
  %i.jq = shufflevector <8 x i32> %i.ji, <8 x i32> %i.jj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jr = bitcast <8 x i32> %i.jq to <8 x float>
  %i.js = shufflevector <8 x i32> %i.jk, <8 x i32> %i.jl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jt = bitcast <8 x i32> %i.js to <8 x float>
  %i.ju = shufflevector <8 x i32> %i.jk, <8 x i32> %i.jl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jv = bitcast <8 x i32> %i.ju to <8 x float>
  %i.jw = shufflevector <8 x float> %i.jm, <8 x float> %i.jn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jx = shufflevector <8 x float> %i.jm, <8 x float> %i.jn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jy = shufflevector <8 x i32> %i.jo, <8 x i32> %i.js, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jz = bitcast <8 x i32> %i.jy to <8 x float>  ; 2 uses
  %i.ka = shufflevector <8 x float> %i.jw, <8 x float> %i.jp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kb = shufflevector <8 x float> %i.jt, <8 x float> %i.jw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kc = shufflevector <8 x i32> %i.jq, <8 x i32> %i.ju, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kd = bitcast <8 x i32> %i.kc to <8 x float>  ; 2 uses
  %i.ke = shufflevector <8 x float> %i.jx, <8 x float> %i.jr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kf = shufflevector <8 x float> %i.jv, <8 x float> %i.jx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kg = shufflevector <8 x float> %i.jz, <8 x float> %i.ka, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kh = shufflevector <8 x float> %i.kb, <8 x float> %i.kd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ki = shufflevector <8 x float> %i.ke, <8 x float> %i.kf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kj = shufflevector <8 x float> %i.jz, <8 x float> %i.ka, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kk = shufflevector <8 x float> %i.kb, <8 x float> %i.kd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kl = shufflevector <8 x float> %i.ke, <8 x float> %i.kf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.kg, ptr %.3436, align 1, !tbaa !63
  %i.km = getelementptr inbounds nuw i8, ptr %.3436, i64 32
  store <8 x float> %i.kh, ptr %i.km, align 1, !tbaa !63
  %i.kn = getelementptr inbounds nuw i8, ptr %.3436, i64 64
  store <8 x float> %i.ki, ptr %i.kn, align 1, !tbaa !63
  %i.ko = getelementptr inbounds nuw i8, ptr %.3436, i64 96
  store <8 x float> %i.kj, ptr %i.ko, align 1, !tbaa !63
  %i.kp = getelementptr inbounds nuw i8, ptr %.3436, i64 128
  store <8 x float> %i.kk, ptr %i.kp, align 1, !tbaa !63
  %i.kq = getelementptr inbounds nuw i8, ptr %.3436, i64 160
  store <8 x float> %i.kl, ptr %i.kq, align 1, !tbaa !63
  %i.kr = getelementptr inbounds nuw i8, ptr %.0257433, i64 32 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0255434, i64 32 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.3436, i64 192 ; 2 uses
  %i.ku = add nuw nsw i32 %.0253435, 8            ; 2 uses
  %i.kv = or disjoint i32 %i.ku, 7
  %i.kw = icmp slt i32 %i.kv, %i.e
  br i1 %i.kw, label %bb.i, label %.preheader431.loopexit, !llvm.loop !127

bb.j:                                             ; preds = %.lr.ph444, %bb.r
  %.4443 = phi ptr [ %.3.lcssa, %.lr.ph444 ], [ %i.nn, %bb.r ] ; 6 uses
  %.1254442 = phi i32 [ %.0253.lcssa, %.lr.ph444 ], [ %i.no, %bb.r ]
  %.1256441 = phi ptr [ %.0255.lcssa, %.lr.ph444 ], [ %i.nm, %bb.r ] ; 2 uses
  %.1258440 = phi ptr [ %.0257.lcssa, %.lr.ph444 ], [ %i.nl, %bb.r ] ; 2 uses
  %i.kx = load float, ptr %.1258440, align 4, !tbaa !66
  %i.ky = load float, ptr %.1256441, align 4, !tbaa !66
  %i.kz = load <2 x i32>, ptr %i.hb, align 4, !tbaa !29 ; 5 uses
  %i.la = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.lb = insertelement <2 x float> %i.la, float %i.ky, i64 1
  %i.lc = fmul fast <2 x float> %i.lb, splat (float 5.000000e-01)
  %i.ld = fadd fast <2 x float> %i.lc, splat (float 5.000000e-01)
  %i.le = add nsw <2 x i32> %i.kz, splat (i32 -1)
  %i.lf = sitofp <2 x i32> %i.le to <2 x float>
  %i.lg = fmul fast <2 x float> %i.ld, %i.lf
  %i.lh = sitofp <2 x i32> %i.kz to <2 x float>
  %i.li = fadd fast <2 x float> %i.lh, splat (float -1.000000e+00)
  %i.lj = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lg, <2 x float> zeroinitializer)
  %i.lk = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.lj, <2 x float> %i.li) ; 2 uses
  %i.ll = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.lk)
  %i.lm = fptosi <2 x float> %i.ll to <2 x i32>   ; 5 uses
  %i.ln = extractelement <2 x i32> %i.lm, i64 0   ; 4 uses
  %i.lo = add nsw i32 %i.ln, 1                    ; 3 uses
  %i.lp = extractelement <2 x i32> %i.lm, i64 1   ; 4 uses
  %i.lq = add nsw i32 %i.lp, 1                    ; 3 uses
  %i.lr = icmp sgt i32 %i.ln, -2
  %i.ls = extractelement <2 x i32> %i.kz, i64 0   ; 2 uses
  %i.lt = icmp slt i32 %i.lo, %i.ls
  %i.lu = and i1 %i.lr, %i.lt                     ; 2 uses
  %i.lv = icmp sgt <2 x i32> %i.lm, splat (i32 -1)
  %i.lw = icmp sgt <2 x i32> %i.kz, %i.lm
  %i.lx = and <2 x i1> %i.lv, %i.lw               ; 2 uses
  %i.ly = icmp sgt i32 %i.lp, -2
  %i.lz = extractelement <2 x i32> %i.kz, i64 1
  %i.ma = icmp slt i32 %i.lq, %i.lz
  %i.mb = and i1 %i.ly, %i.ma                     ; 2 uses
  %i.mc = extractelement <2 x i1> %i.lx, i64 0    ; 2 uses
  %i.md = extractelement <2 x i1> %i.lx, i64 1    ; 2 uses
  %i.me = and i1 %i.mc, %i.md
  %i.mf = and i1 %i.lu, %i.md
  %i.mg = and i1 %i.mc, %i.mb
  %i.mh = and i1 %i.lu, %i.mb
  %i.mi = getelementptr inbounds nuw i8, ptr %.4443, i64 16
  br i1 %i.me, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mj = mul nuw nsw i32 %i.ls, %i.lp
  %i.mk = add nsw i32 %i.mj, %i.ln
  %i.ml = load i32, ptr %i.hc, align 8, !tbaa !13
  %i.mm = mul nsw i32 %i.ml, %i.mk
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.mn = phi i32 [ %i.mm, %bb.k ], [ -1, %bb.j ]
  store i32 %i.mn, ptr %.4443, align 4, !tbaa !29
  br i1 %i.mf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mo = load i32, ptr %i.hb, align 4, !tbaa !52
  %i.mp = mul nsw i32 %i.mo, %i.lp
  %i.mq = add nsw i32 %i.mp, %i.lo
  %i.mr = load i32, ptr %i.hc, align 8, !tbaa !13
  %i.ms = mul nsw i32 %i.mq, %i.mr
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mt = phi i32 [ %i.ms, %bb.m ], [ -1, %bb.l ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.4443, i64 4
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !29
  br i1 %i.mg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mv = load i32, ptr %i.hb, align 4, !tbaa !52
  %i.mw = mul nsw i32 %i.mv, %i.lq
  %i.mx = add nsw i32 %i.mw, %i.ln
  %i.my = load i32, ptr %i.hc, align 8, !tbaa !13
  %i.mz = mul nsw i32 %i.mx, %i.my
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.na = phi i32 [ %i.mz, %bb.o ], [ -1, %bb.n ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.4443, i64 8
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !29
  br i1 %i.mh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.nc = load i32, ptr %i.hb, align 4, !tbaa !52
  %i.nd = mul nsw i32 %i.nc, %i.lq
  %i.ne = add nsw i32 %i.nd, %i.lo
  %i.nf = load i32, ptr %i.hc, align 8, !tbaa !13
  %i.ng = mul nsw i32 %i.ne, %i.nf
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nh = phi i32 [ %i.ng, %bb.q ], [ -1, %bb.p ]
  %i.ni = getelementptr inbounds nuw i8, ptr %.4443, i64 12
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !29
  %i.nj = sitofp <2 x i32> %i.lm to <2 x float>
  %i.nk = fsub fast <2 x float> %i.lk, %i.nj
  store <2 x float> %i.nk, ptr %i.mi, align 4, !tbaa !66
  %i.nl = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.nn = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.no = add nuw nsw i32 %.1254442, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.no, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !128

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !129 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader437, label %_ZN4ncnn3MatD2Ev.exit259

.preheader437:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader437
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0465 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !132
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !132
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !132
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph455, label %.preheader

.preheader:                                       ; preds = %.lr.ph455, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph455 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.ed, %.lr.ph455 ]
  %.1.lcssa = phi ptr [ %.0465, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.ee, %.lr.ph455 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph462, label %._crit_edge

.lr.ph455:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph455
  %.1454 = phi ptr [ %i.ee, %.lr.ph455 ], [ %.0465, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249453 = phi ptr [ %i.ed, %.lr.ph455 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251452 = phi i32 [ %i.ef, %.lr.ph455 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249453, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249453, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.aj = fadd fast <8 x float> %i.ad, splat (float 1.000000e+00)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> splat (float -1.000000e+00))
  %i.al = fmul fast <8 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = fadd fast <8 x float> %i.ai, splat (float -1.000000e+00)
  %i.an = fadd fast <8 x float> %i.al, splat (float 5.000000e-01)
  %i.ao = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.an)
  %i.ap = fsub fast <8 x float> %i.ao, %i.ai
  %i.aq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ap)
  %i.ar = fadd fast <8 x float> %i.ai, splat (float -5.000000e-01)
  %i.as = fsub fast <8 x float> %i.ar, %i.aq
  %i.at = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> zeroinitializer)
  %i.au = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.at) ; 2 uses
  %i.av = load i32, ptr %i.o, align 8, !tbaa !53
  %i.aw = sitofp fast i32 %i.av to float
  %i.ax = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.az = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00)
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.ay, <8 x float> splat (float -1.000000e+00))
  %i.bb = fmul fast <8 x float> %i.ba, splat (float 5.000000e-01)
  %i.bc = fadd fast <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bd = fadd fast <8 x float> %i.bb, splat (float 5.000000e-01)
  %i.be = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bd)
  %i.bf = fsub fast <8 x float> %i.be, %i.ay
  %i.bg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bf)
  %i.bh = fadd fast <8 x float> %i.ay, splat (float -5.000000e-01)
  %i.bi = fsub fast <8 x float> %i.bh, %i.bg
  %i.bj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> zeroinitializer)
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.bj) ; 2 uses
  %i.bl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 5 uses
  %i.bm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bk, i32 1) ; 5 uses
  %i.bn = fadd fast <8 x float> %i.bl, splat (float 1.000000e+00) ; 2 uses
  %i.bo = fadd fast <8 x float> %i.bm, splat (float 1.000000e+00) ; 2 uses
  %i.bp = fcmp fast ogt <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bq = fcmp fast ogt <8 x float> %i.ai, %i.bl
  %i.br = and <8 x i1> %i.bp, %i.bq               ; 2 uses
  %i.bs = fcmp fast ogt <8 x float> %i.bn, splat (float -1.000000e+00)
  %i.bt = fcmp fast ogt <8 x float> %i.ai, %i.bn
  %i.bu = and <8 x i1> %i.bs, %i.bt               ; 2 uses
  %i.bv = fcmp fast ogt <8 x float> %i.bm, splat (float -1.000000e+00)
  %i.bw = fcmp fast ogt <8 x float> %i.ay, %i.bm
  %i.bx = and <8 x i1> %i.bv, %i.bw
  %i.by = sext <8 x i1> %i.bx to <8 x i32>
  %i.bz = fcmp fast ogt <8 x float> %i.bo, splat (float -1.000000e+00)
  %i.ca = fcmp fast ogt <8 x float> %i.ay, %i.bo
  %i.cb = and <8 x i1> %i.bz, %i.ca               ; 2 uses
  %i.cc = bitcast <8 x i32> %i.by to <8 x float>  ; 2 uses
  %i.cd = select <8 x i1> %i.br, <8 x float> %i.cc, <8 x float> zeroinitializer
  %i.ce = select <8 x i1> %i.bu, <8 x float> %i.cc, <8 x float> zeroinitializer
  %i.cf = and <8 x i1> %i.br, %i.cb
  %i.cg = and <8 x i1> %i.bu, %i.cb
  %i.ch = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bm, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.bl)
  %i.ci = load i32, ptr %i.p, align 8, !tbaa !13
  %i.cj = sitofp fast i32 %i.ci to float
  %i.ck = insertelement <8 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <8 x float> %i.ck, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cm = fmul fast <8 x float> %i.cl, %i.ch      ; 3 uses
  %i.cn = fadd fast <8 x float> %i.cm, %i.cl
  %i.co = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.cl, <8 x float> nofpclass(nan inf) %i.cm) ; 2 uses
  %i.cp = fadd fast <8 x float> %i.co, %i.cl
  %i.cq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.cm, <8 x float> nofpclass(nan inf) %i.cd)
  %i.cr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.cn, <8 x float> nofpclass(nan inf) %i.ce)
  %i.cs = select <8 x i1> %i.cf, <8 x float> %i.co, <8 x float> splat (float -1.000000e+00)
  %i.ct = select <8 x i1> %i.cg, <8 x float> %i.cp, <8 x float> splat (float -1.000000e+00)
  %i.cu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cq) ; 2 uses
  %i.cv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cr) ; 2 uses
  %i.cw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cs) ; 2 uses
  %i.cx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ct) ; 2 uses
  %i.cy = fsub fast <8 x float> %i.au, %i.bl      ; 2 uses
  %i.cz = fsub fast <8 x float> %i.bk, %i.bm      ; 2 uses
  %i.da = shufflevector <8 x i32> %i.cu, <8 x i32> %i.cv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.db = bitcast <8 x i32> %i.da to <8 x float>
  %i.dc = shufflevector <8 x i32> %i.cu, <8 x i32> %i.cv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dd = bitcast <8 x i32> %i.dc to <8 x float>
  %i.de = shufflevector <8 x i32> %i.cw, <8 x i32> %i.cx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.df = bitcast <8 x i32> %i.de to <8 x float>
  %i.dg = shufflevector <8 x i32> %i.cw, <8 x i32> %i.cx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dh = bitcast <8 x i32> %i.dg to <8 x float>
  %i.di = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dj = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dk = shufflevector <8 x i32> %i.da, <8 x i32> %i.de, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dl = bitcast <8 x i32> %i.dk to <8 x float>  ; 2 uses
  %i.dm = shufflevector <8 x float> %i.di, <8 x float> %i.db, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.dn = shufflevector <8 x float> %i.df, <8 x float> %i.di, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.do = shufflevector <8 x i32> %i.dc, <8 x i32> %i.dg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dp = bitcast <8 x i32> %i.do to <8 x float>  ; 2 uses
  %i.dq = shufflevector <8 x float> %i.dj, <8 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.dr = shufflevector <8 x float> %i.dh, <8 x float> %i.dj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ds = shufflevector <8 x float> %i.dl, <8 x float> %i.dm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dt = shufflevector <8 x float> %i.dn, <8 x float> %i.dp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.du = shufflevector <8 x float> %i.dq, <8 x float> %i.dr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dv = shufflevector <8 x float> %i.dl, <8 x float> %i.dm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dw = shufflevector <8 x float> %i.dn, <8 x float> %i.dp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dx = shufflevector <8 x float> %i.dq, <8 x float> %i.dr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ds, ptr %.1454, align 1, !tbaa !63
  %i.dy = getelementptr inbounds nuw i8, ptr %.1454, i64 32
  store <8 x float> %i.dt, ptr %i.dy, align 1, !tbaa !63
  %i.dz = getelementptr inbounds nuw i8, ptr %.1454, i64 64
  store <8 x float> %i.du, ptr %i.dz, align 1, !tbaa !63
  %i.ea = getelementptr inbounds nuw i8, ptr %.1454, i64 96
  store <8 x float> %i.dv, ptr %i.ea, align 1, !tbaa !63
  %i.eb = getelementptr inbounds nuw i8, ptr %.1454, i64 128
  store <8 x float> %i.dw, ptr %i.eb, align 1, !tbaa !63
  %i.ec = getelementptr inbounds nuw i8, ptr %.1454, i64 160
  store <8 x float> %i.dx, ptr %i.ec, align 1, !tbaa !63
  %i.ed = getelementptr inbounds nuw i8, ptr %.0249453, i64 64 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.1454, i64 192 ; 2 uses
  %i.ef = add nuw nsw i32 %.0251452, 16           ; 2 uses
  %i.eg = or disjoint i32 %i.ef, 15
  %i.eh = icmp slt i32 %i.eg, %i.e
  br i1 %i.eh, label %.lr.ph455, label %.preheader, !llvm.loop !135

.lr.ph462:                                        ; preds = %.preheader, %bb.h
  %.2461 = phi ptr [ %i.gx, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250460 = phi ptr [ %i.gw, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252459 = phi i32 [ %i.gy, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.ei = load <2 x float>, ptr %.1250460, align 4, !tbaa !66
  %i.ej = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 4 uses
  %i.ek = sitofp <2 x i32> %i.ej to <2 x float>   ; 4 uses
  %i.el = fmul fast <2 x float> %i.ei, splat (float 5.000000e-01)
  %i.em = fadd fast <2 x float> %i.el, splat (float 5.000000e-01)
  %i.en = fmul fast <2 x float> %i.em, %i.ek
  %i.eo = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.en)
  %i.ep = fsub fast <2 x float> %i.eo, %i.ek
  %i.eq = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ep)
  %i.er = fadd fast <2 x float> %i.ek, splat (float -5.000000e-01)
  %i.es = fsub fast <2 x float> %i.er, %i.eq
  %i.et = fadd fast <2 x float> %i.ek, splat (float -1.000000e+00)
  %i.eu = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.es, <2 x float> zeroinitializer)
  %i.ev = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.eu, <2 x float> %i.et) ; 2 uses
  %i.ew = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ev)
  %i.ex = fptosi <2 x float> %i.ew to <2 x i32>   ; 5 uses
  %i.ey = extractelement <2 x i32> %i.ex, i64 0   ; 4 uses
  %i.ez = add nsw i32 %i.ey, 1                    ; 3 uses
  %i.fa = extractelement <2 x i32> %i.ex, i64 1   ; 4 uses
  %i.fb = add nsw i32 %i.fa, 1                    ; 3 uses
  %i.fc = icmp sgt i32 %i.ey, -2
  %i.fd = extractelement <2 x i32> %i.ej, i64 0   ; 2 uses
  %i.fe = icmp slt i32 %i.ez, %i.fd
  %i.ff = and i1 %i.fc, %i.fe                     ; 2 uses
  %i.fg = icmp sgt <2 x i32> %i.ex, splat (i32 -1)
  %i.fh = icmp sgt <2 x i32> %i.ej, %i.ex
  %i.fi = and <2 x i1> %i.fg, %i.fh               ; 2 uses
  %i.fj = icmp sgt i32 %i.fa, -2
  %i.fk = extractelement <2 x i32> %i.ej, i64 1
  %i.fl = icmp slt i32 %i.fb, %i.fk
  %i.fm = and i1 %i.fj, %i.fl                     ; 2 uses
  %i.fn = extractelement <2 x i1> %i.fi, i64 0    ; 2 uses
  %i.fo = extractelement <2 x i1> %i.fi, i64 1    ; 2 uses
  %i.fp = and i1 %i.fn, %i.fo
  %i.fq = and i1 %i.ff, %i.fo
  %i.fr = and i1 %i.fn, %i.fm
  %i.fs = and i1 %i.ff, %i.fm
  %i.ft = getelementptr inbounds nuw i8, ptr %.2461, i64 16
  br i1 %i.fp, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph462
  %i.fu = mul nuw nsw i32 %i.fd, %i.fa
  %i.fv = add nsw i32 %i.fu, %i.ey
  %i.fw = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fx = mul nsw i32 %i.fw, %i.fv
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph462, %bb.a
  %i.fy = phi i32 [ %i.fx, %bb.a ], [ -1, %.lr.ph462 ]
  store i32 %i.fy, ptr %.2461, align 4, !tbaa !29
  br i1 %i.fq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fz = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ga = mul nsw i32 %i.fz, %i.fa
  %i.gb = add nsw i32 %i.ga, %i.ez
  %i.gc = load i32, ptr %i.p, align 8, !tbaa !13
  %i.gd = mul nsw i32 %i.gb, %i.gc
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ge = phi i32 [ %i.gd, %bb.c ], [ -1, %bb.b ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.2461, i64 4
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !29
  br i1 %i.fr, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gg = load i32, ptr %i.n, align 4, !tbaa !52
  %i.gh = mul nsw i32 %i.gg, %i.fb
  %i.gi = add nsw i32 %i.gh, %i.ey
  %i.gj = load i32, ptr %i.p, align 8, !tbaa !13
  %i.gk = mul nsw i32 %i.gi, %i.gj
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gl = phi i32 [ %i.gk, %bb.e ], [ -1, %bb.d ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.2461, i64 8
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !29
  br i1 %i.fs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gn = load i32, ptr %i.n, align 4, !tbaa !52
  %i.go = mul nsw i32 %i.gn, %i.fb
  %i.gp = add nsw i32 %i.go, %i.ez
  %i.gq = load i32, ptr %i.p, align 8, !tbaa !13
  %i.gr = mul nsw i32 %i.gp, %i.gq
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.gs = phi i32 [ %i.gr, %bb.g ], [ -1, %bb.f ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.2461, i64 12
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !29
  %i.gu = sitofp <2 x i32> %i.ex to <2 x float>
  %i.gv = fsub fast <2 x float> %i.ev, %i.gu
  store <2 x float> %i.gv, ptr %i.ft, align 4, !tbaa !66
  %i.gw = getelementptr inbounds nuw i8, ptr %.1250460, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.2461, i64 24 ; 2 uses
  %i.gy = add nuw nsw i32 %.1252459, 2            ; 2 uses
  %i.gz = icmp slt i32 %i.gy, %i.e
  br i1 %i.gz, label %.lr.ph462, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.gx, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ha = load i32, ptr %i.h, align 8, !tbaa !18
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp slt i64 %indvars.iv.next, %i.hb
  br i1 %i.hc, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !137

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.hd = load ptr, ptr %1, align 8, !tbaa !24, !noalias !138 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !21, !noalias !141
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !20, !noalias !141
  %i.hi = mul i64 %i.hh, %i.hg
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hi ; 2 uses
  %i.hk = icmp sgt i32 %i.e, 7
  br i1 %i.hk, label %.lr.ph, label %.preheader438

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit259
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

.preheader438.loopexit:                           ; preds = %bb.i
  %i.ho = and i32 %i.e, 2147483640
  br label %.preheader438

.preheader438:                                    ; preds = %.preheader438.loopexit, %_ZN4ncnn3MatD2Ev.exit259
  %.0257.lcssa = phi ptr [ %i.hd, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.ls, %.preheader438.loopexit ]
  %.0255.lcssa = phi ptr [ %i.hj, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.lt, %.preheader438.loopexit ]
  %.0253.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.ho, %.preheader438.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.lu, %.preheader438.loopexit ]
  %i.hp = icmp slt i32 %.0253.lcssa, %i.e
  br i1 %i.hp, label %.lr.ph451, label %.loopexit

.lr.ph451:                                        ; preds = %.preheader438
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.3443 = phi ptr [ %i.f, %.lr.ph ], [ %i.lu, %bb.i ] ; 7 uses
  %.0253442 = phi i32 [ 0, %.lr.ph ], [ %i.lv, %bb.i ]
  %.0255441 = phi ptr [ %i.hj, %.lr.ph ], [ %i.lt, %bb.i ] ; 2 uses
  %.0257440 = phi ptr [ %i.hd, %.lr.ph ], [ %i.ls, %bb.i ] ; 2 uses
  %i.hs = load <8 x float>, ptr %.0257440, align 1, !tbaa !63
  %i.ht = load <8 x float>, ptr %.0255441, align 1, !tbaa !63
  %i.hu = load i32, ptr %i.hl, align 4, !tbaa !52
  %i.hv = sitofp fast i32 %i.hu to float
  %i.hw = insertelement <8 x float> poison, float %i.hv, i64 0
  %i.hx = shufflevector <8 x float> %i.hw, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.hy = fadd fast <8 x float> %i.hs, splat (float 1.000000e+00)
  %i.hz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hy, <8 x float> nofpclass(nan inf) %i.hx, <8 x float> splat (float -1.000000e+00))
  %i.ia = fmul fast <8 x float> %i.hz, splat (float 5.000000e-01)
  %i.ib = fadd fast <8 x float> %i.hx, splat (float -1.000000e+00)
  %i.ic = fadd fast <8 x float> %i.ia, splat (float 5.000000e-01)
  %i.id = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ic)
  %i.ie = fsub fast <8 x float> %i.id, %i.hx
  %i.if = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ie)
  %i.ig = fadd fast <8 x float> %i.hx, splat (float -5.000000e-01)
  %i.ih = fsub fast <8 x float> %i.ig, %i.if
  %i.ii = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ih, <8 x float> zeroinitializer)
  %i.ij = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ib, <8 x float> nofpclass(nan inf) %i.ii) ; 2 uses
  %i.ik = load i32, ptr %i.hm, align 8, !tbaa !53
  %i.il = sitofp fast i32 %i.ik to float
  %i.im = insertelement <8 x float> poison, float %i.il, i64 0
  %i.in = shufflevector <8 x float> %i.im, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.io = fadd fast <8 x float> %i.ht, splat (float 1.000000e+00)
  %i.ip = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.io, <8 x float> nofpclass(nan inf) %i.in, <8 x float> splat (float -1.000000e+00))
  %i.iq = fmul fast <8 x float> %i.ip, splat (float 5.000000e-01)
  %i.ir = fadd fast <8 x float> %i.in, splat (float -1.000000e+00)
  %i.is = fadd fast <8 x float> %i.iq, splat (float 5.000000e-01)
  %i.it = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.is)
  %i.iu = fsub fast <8 x float> %i.it, %i.in
  %i.iv = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.iu)
  %i.iw = fadd fast <8 x float> %i.in, splat (float -5.000000e-01)
  %i.ix = fsub fast <8 x float> %i.iw, %i.iv
  %i.iy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ix, <8 x float> zeroinitializer)
  %i.iz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ir, <8 x float> nofpclass(nan inf) %i.iy) ; 2 uses
  %i.ja = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ij, i32 1) ; 5 uses
  %i.jb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.iz, i32 1) ; 5 uses
  %i.jc = fadd fast <8 x float> %i.ja, splat (float 1.000000e+00) ; 2 uses
  %i.jd = fadd fast <8 x float> %i.jb, splat (float 1.000000e+00) ; 2 uses
  %i.je = fcmp fast ogt <8 x float> %i.ja, splat (float -1.000000e+00)
  %i.jf = fcmp fast ogt <8 x float> %i.hx, %i.ja
  %i.jg = and <8 x i1> %i.je, %i.jf               ; 2 uses
  %i.jh = fcmp fast ogt <8 x float> %i.jc, splat (float -1.000000e+00)
  %i.ji = fcmp fast ogt <8 x float> %i.hx, %i.jc
  %i.jj = and <8 x i1> %i.jh, %i.ji               ; 2 uses
  %i.jk = fcmp fast ogt <8 x float> %i.jb, splat (float -1.000000e+00)
  %i.jl = fcmp fast ogt <8 x float> %i.in, %i.jb
  %i.jm = and <8 x i1> %i.jk, %i.jl
  %i.jn = sext <8 x i1> %i.jm to <8 x i32>
  %i.jo = fcmp fast ogt <8 x float> %i.jd, splat (float -1.000000e+00)
  %i.jp = fcmp fast ogt <8 x float> %i.in, %i.jd
  %i.jq = and <8 x i1> %i.jo, %i.jp               ; 2 uses
  %i.jr = bitcast <8 x i32> %i.jn to <8 x float>  ; 2 uses
  %i.js = select <8 x i1> %i.jg, <8 x float> %i.jr, <8 x float> zeroinitializer
  %i.jt = select <8 x i1> %i.jj, <8 x float> %i.jr, <8 x float> zeroinitializer
  %i.ju = and <8 x i1> %i.jg, %i.jq
  %i.jv = and <8 x i1> %i.jj, %i.jq
  %i.jw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jb, <8 x float> nofpclass(nan inf) %i.hx, <8 x float> nofpclass(nan inf) %i.ja)
  %i.jx = load i32, ptr %i.hn, align 8, !tbaa !13
  %i.jy = sitofp fast i32 %i.jx to float
  %i.jz = insertelement <8 x float> poison, float %i.jy, i64 0
  %i.ka = shufflevector <8 x float> %i.jz, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.kb = fmul fast <8 x float> %i.ka, %i.jw      ; 3 uses
  %i.kc = fadd fast <8 x float> %i.kb, %i.ka
  %i.kd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hx, <8 x float> nofpclass(nan inf) %i.ka, <8 x float> nofpclass(nan inf) %i.kb) ; 2 uses
  %i.ke = fadd fast <8 x float> %i.kd, %i.ka
  %i.kf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.kb, <8 x float> nofpclass(nan inf) %i.js)
  %i.kg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.kc, <8 x float> nofpclass(nan inf) %i.jt)
  %i.kh = select <8 x i1> %i.ju, <8 x float> %i.kd, <8 x float> splat (float -1.000000e+00)
  %i.ki = select <8 x i1> %i.jv, <8 x float> %i.ke, <8 x float> splat (float -1.000000e+00)
  %i.kj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kf) ; 2 uses
  %i.kk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kg) ; 2 uses
  %i.kl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kh) ; 2 uses
  %i.km = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ki) ; 2 uses
  %i.kn = fsub fast <8 x float> %i.ij, %i.ja      ; 2 uses
  %i.ko = fsub fast <8 x float> %i.iz, %i.jb      ; 2 uses
  %i.kp = shufflevector <8 x i32> %i.kj, <8 x i32> %i.kk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kq = bitcast <8 x i32> %i.kp to <8 x float>
  %i.kr = shufflevector <8 x i32> %i.kj, <8 x i32> %i.kk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ks = bitcast <8 x i32> %i.kr to <8 x float>
  %i.kt = shufflevector <8 x i32> %i.kl, <8 x i32> %i.km, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ku = bitcast <8 x i32> %i.kt to <8 x float>
  %i.kv = shufflevector <8 x i32> %i.kl, <8 x i32> %i.km, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kw = bitcast <8 x i32> %i.kv to <8 x float>
  %i.kx = shufflevector <8 x float> %i.kn, <8 x float> %i.ko, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ky = shufflevector <8 x float> %i.kn, <8 x float> %i.ko, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kz = shufflevector <8 x i32> %i.kp, <8 x i32> %i.kt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.la = bitcast <8 x i32> %i.kz to <8 x float>  ; 2 uses
  %i.lb = shufflevector <8 x float> %i.kx, <8 x float> %i.kq, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.lc = shufflevector <8 x float> %i.ku, <8 x float> %i.kx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ld = shufflevector <8 x i32> %i.kr, <8 x i32> %i.kv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.le = bitcast <8 x i32> %i.ld to <8 x float>  ; 2 uses
  %i.lf = shufflevector <8 x float> %i.ky, <8 x float> %i.ks, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.lg = shufflevector <8 x float> %i.kw, <8 x float> %i.ky, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.lh = shufflevector <8 x float> %i.la, <8 x float> %i.lb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.li = shufflevector <8 x float> %i.lc, <8 x float> %i.le, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.lj = shufflevector <8 x float> %i.lf, <8 x float> %i.lg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.lk = shufflevector <8 x float> %i.la, <8 x float> %i.lb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ll = shufflevector <8 x float> %i.lc, <8 x float> %i.le, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.lm = shufflevector <8 x float> %i.lf, <8 x float> %i.lg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.lh, ptr %.3443, align 1, !tbaa !63
  %i.ln = getelementptr inbounds nuw i8, ptr %.3443, i64 32
  store <8 x float> %i.li, ptr %i.ln, align 1, !tbaa !63
  %i.lo = getelementptr inbounds nuw i8, ptr %.3443, i64 64
  store <8 x float> %i.lj, ptr %i.lo, align 1, !tbaa !63
  %i.lp = getelementptr inbounds nuw i8, ptr %.3443, i64 96
  store <8 x float> %i.lk, ptr %i.lp, align 1, !tbaa !63
  %i.lq = getelementptr inbounds nuw i8, ptr %.3443, i64 128
  store <8 x float> %i.ll, ptr %i.lq, align 1, !tbaa !63
  %i.lr = getelementptr inbounds nuw i8, ptr %.3443, i64 160
  store <8 x float> %i.lm, ptr %i.lr, align 1, !tbaa !63
  %i.ls = getelementptr inbounds nuw i8, ptr %.0257440, i64 32 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.0255441, i64 32 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.3443, i64 192 ; 2 uses
  %i.lv = add nuw nsw i32 %.0253442, 8            ; 2 uses
  %i.lw = or disjoint i32 %i.lv, 7
  %i.lx = icmp slt i32 %i.lw, %i.e
  br i1 %i.lx, label %bb.i, label %.preheader438.loopexit, !llvm.loop !144

bb.j:                                             ; preds = %.lr.ph451, %bb.r
  %.4450 = phi ptr [ %.3.lcssa, %.lr.ph451 ], [ %i.or, %bb.r ] ; 6 uses
  %.1254449 = phi i32 [ %.0253.lcssa, %.lr.ph451 ], [ %i.os, %bb.r ]
  %.1256448 = phi ptr [ %.0255.lcssa, %.lr.ph451 ], [ %i.oq, %bb.r ] ; 2 uses
  %.1258447 = phi ptr [ %.0257.lcssa, %.lr.ph451 ], [ %i.op, %bb.r ] ; 2 uses
  %i.ly = load float, ptr %.1258447, align 4, !tbaa !66
  %i.lz = load float, ptr %.1256448, align 4, !tbaa !66
  %i.ma = load <2 x i32>, ptr %i.hq, align 4, !tbaa !29 ; 4 uses
  %i.mb = sitofp <2 x i32> %i.ma to <2 x float>   ; 4 uses
  %i.mc = insertelement <2 x float> poison, float %i.ly, i64 0
  %i.md = insertelement <2 x float> %i.mc, float %i.lz, i64 1
  %i.me = fmul fast <2 x float> %i.md, splat (float 5.000000e-01)
  %i.mf = fadd fast <2 x float> %i.me, splat (float 5.000000e-01)
  %i.mg = fmul fast <2 x float> %i.mf, %i.mb
  %i.mh = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mg)
  %i.mi = fsub fast <2 x float> %i.mh, %i.mb
  %i.mj = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mi)
  %i.mk = fadd fast <2 x float> %i.mb, splat (float -5.000000e-01)
  %i.ml = fsub fast <2 x float> %i.mk, %i.mj
  %i.mm = fadd fast <2 x float> %i.mb, splat (float -1.000000e+00)
  %i.mn = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ml, <2 x float> zeroinitializer)
  %i.mo = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.mn, <2 x float> %i.mm) ; 2 uses
  %i.mp = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.mo)
  %i.mq = fptosi <2 x float> %i.mp to <2 x i32>   ; 5 uses
  %i.mr = extractelement <2 x i32> %i.mq, i64 0   ; 4 uses
  %i.ms = add nsw i32 %i.mr, 1                    ; 3 uses
  %i.mt = extractelement <2 x i32> %i.mq, i64 1   ; 4 uses
  %i.mu = add nsw i32 %i.mt, 1                    ; 3 uses
  %i.mv = icmp sgt i32 %i.mr, -2
  %i.mw = extractelement <2 x i32> %i.ma, i64 0   ; 2 uses
  %i.mx = icmp slt i32 %i.ms, %i.mw
  %i.my = and i1 %i.mv, %i.mx                     ; 2 uses
  %i.mz = icmp sgt <2 x i32> %i.mq, splat (i32 -1)
  %i.na = icmp sgt <2 x i32> %i.ma, %i.mq
  %i.nb = and <2 x i1> %i.mz, %i.na               ; 2 uses
  %i.nc = icmp sgt i32 %i.mt, -2
  %i.nd = extractelement <2 x i32> %i.ma, i64 1
  %i.ne = icmp slt i32 %i.mu, %i.nd
  %i.nf = and i1 %i.nc, %i.ne                     ; 2 uses
  %i.ng = extractelement <2 x i1> %i.nb, i64 0    ; 2 uses
  %i.nh = extractelement <2 x i1> %i.nb, i64 1    ; 2 uses
  %i.ni = and i1 %i.ng, %i.nh
  %i.nj = and i1 %i.my, %i.nh
  %i.nk = and i1 %i.ng, %i.nf
  %i.nl = and i1 %i.my, %i.nf
  %i.nm = getelementptr inbounds nuw i8, ptr %.4450, i64 16
  br i1 %i.ni, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.nn = mul nuw nsw i32 %i.mw, %i.mt
  %i.no = add nsw i32 %i.nn, %i.mr
  %i.np = load i32, ptr %i.hr, align 8, !tbaa !13
  %i.nq = mul nsw i32 %i.np, %i.no
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.nr = phi i32 [ %i.nq, %bb.k ], [ -1, %bb.j ]
  store i32 %i.nr, ptr %.4450, align 4, !tbaa !29
  br i1 %i.nj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ns = load i32, ptr %i.hq, align 4, !tbaa !52
  %i.nt = mul nsw i32 %i.ns, %i.mt
  %i.nu = add nsw i32 %i.nt, %i.ms
  %i.nv = load i32, ptr %i.hr, align 8, !tbaa !13
  %i.nw = mul nsw i32 %i.nu, %i.nv
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.nx = phi i32 [ %i.nw, %bb.m ], [ -1, %bb.l ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.4450, i64 4
  store i32 %i.nx, ptr %i.ny, align 4, !tbaa !29
  br i1 %i.nk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.nz = load i32, ptr %i.hq, align 4, !tbaa !52
  %i.oa = mul nsw i32 %i.nz, %i.mu
  %i.ob = add nsw i32 %i.oa, %i.mr
  %i.oc = load i32, ptr %i.hr, align 8, !tbaa !13
  %i.od = mul nsw i32 %i.ob, %i.oc
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.oe = phi i32 [ %i.od, %bb.o ], [ -1, %bb.n ]
  %i.of = getelementptr inbounds nuw i8, ptr %.4450, i64 8
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !29
  br i1 %i.nl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.og = load i32, ptr %i.hq, align 4, !tbaa !52
  %i.oh = mul nsw i32 %i.og, %i.mu
  %i.oi = add nsw i32 %i.oh, %i.ms
  %i.oj = load i32, ptr %i.hr, align 8, !tbaa !13
  %i.ok = mul nsw i32 %i.oi, %i.oj
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ol = phi i32 [ %i.ok, %bb.q ], [ -1, %bb.p ]
  %i.om = getelementptr inbounds nuw i8, ptr %.4450, i64 12
  store i32 %i.ol, ptr %i.om, align 4, !tbaa !29
  %i.on = sitofp <2 x i32> %i.mq to <2 x float>
  %i.oo = fsub fast <2 x float> %i.mo, %i.on
  store <2 x float> %i.oo, ptr %i.nm, align 4, !tbaa !66
  %i.op = getelementptr inbounds nuw i8, ptr %.1258447, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.1256448, i64 4
  %i.or = getelementptr inbounds nuw i8, ptr %.4450, i64 24
  %i.os = add nuw nsw i32 %.1254449, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.os, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !145

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader438, %.preheader437
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !146 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader430, label %_ZN4ncnn3MatD2Ev.exit259

.preheader430:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader430
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0458 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !149
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !149
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !149
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph448, label %.preheader

.preheader:                                       ; preds = %.lr.ph448, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph448 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dv, %.lr.ph448 ]
  %.1.lcssa = phi ptr [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dw, %.lr.ph448 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph455, label %._crit_edge

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.dw, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.dv, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.dx, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249446, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.aj = fmul fast <8 x float> %i.ad, splat (float 5.000000e-01)
  %i.ak = fadd fast <8 x float> %i.aj, splat (float 5.000000e-01)
  %i.al = fadd fast <8 x float> %i.ai, splat (float -1.000000e+00) ; 3 uses
  %i.am = fmul fast <8 x float> %i.al, %i.ak
  %i.an = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.am)
  %i.ao = fsub fast <8 x float> %i.an, %i.al
  %i.ap = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ao)
  %i.aq = fsub fast <8 x float> %i.al, %i.ap      ; 2 uses
  %i.ar = load i32, ptr %i.o, align 8, !tbaa !53
  %i.as = sitofp fast i32 %i.ar to float
  %i.at = insertelement <8 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <8 x float> %i.at, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.av = fmul fast <8 x float> %i.ae, splat (float 5.000000e-01)
  %i.aw = fadd fast <8 x float> %i.av, splat (float 5.000000e-01)
  %i.ax = fadd fast <8 x float> %i.au, splat (float -1.000000e+00) ; 3 uses
  %i.ay = fmul fast <8 x float> %i.ax, %i.aw
  %i.az = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ay)
  %i.ba = fsub fast <8 x float> %i.az, %i.ax
  %i.bb = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ba)
  %i.bc = fsub fast <8 x float> %i.ax, %i.bb      ; 2 uses
  %i.bd = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.be = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bc, i32 1) ; 5 uses
  %i.bf = fadd fast <8 x float> %i.bd, splat (float 1.000000e+00) ; 2 uses
  %i.bg = fadd fast <8 x float> %i.be, splat (float 1.000000e+00) ; 2 uses
  %i.bh = fcmp fast ogt <8 x float> %i.bd, splat (float -1.000000e+00)
  %i.bi = fcmp fast ogt <8 x float> %i.ai, %i.bd
  %i.bj = and <8 x i1> %i.bh, %i.bi               ; 2 uses
  %i.bk = fcmp fast ogt <8 x float> %i.bf, splat (float -1.000000e+00)
  %i.bl = fcmp fast ogt <8 x float> %i.ai, %i.bf
  %i.bm = and <8 x i1> %i.bk, %i.bl               ; 2 uses
  %i.bn = fcmp fast ogt <8 x float> %i.be, splat (float -1.000000e+00)
  %i.bo = fcmp fast ogt <8 x float> %i.au, %i.be
  %i.bp = and <8 x i1> %i.bn, %i.bo
  %i.bq = sext <8 x i1> %i.bp to <8 x i32>
  %i.br = fcmp fast ogt <8 x float> %i.bg, splat (float -1.000000e+00)
  %i.bs = fcmp fast ogt <8 x float> %i.au, %i.bg
  %i.bt = and <8 x i1> %i.br, %i.bs               ; 2 uses
  %i.bu = bitcast <8 x i32> %i.bq to <8 x float>  ; 2 uses
  %i.bv = select <8 x i1> %i.bj, <8 x float> %i.bu, <8 x float> zeroinitializer
  %i.bw = select <8 x i1> %i.bm, <8 x float> %i.bu, <8 x float> zeroinitializer
  %i.bx = and <8 x i1> %i.bj, %i.bt
  %i.by = and <8 x i1> %i.bm, %i.bt
  %i.bz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.bd)
  %i.ca = load i32, ptr %i.p, align 8, !tbaa !13
  %i.cb = sitofp fast i32 %i.ca to float
  %i.cc = insertelement <8 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <8 x float> %i.cc, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ce = fmul fast <8 x float> %i.cd, %i.bz      ; 3 uses
  %i.cf = fadd fast <8 x float> %i.ce, %i.cd
  %i.cg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.cd, <8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.ch = fadd fast <8 x float> %i.cg, %i.cd
  %i.ci = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) %i.bv)
  %i.cj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.cf, <8 x float> nofpclass(nan inf) %i.bw)
  %i.ck = select <8 x i1> %i.bx, <8 x float> %i.cg, <8 x float> splat (float -1.000000e+00)
  %i.cl = select <8 x i1> %i.by, <8 x float> %i.ch, <8 x float> splat (float -1.000000e+00)
  %i.cm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ci) ; 2 uses
  %i.cn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cj) ; 2 uses
  %i.co = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ck) ; 2 uses
  %i.cp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cl) ; 2 uses
  %i.cq = fsub fast <8 x float> %i.aq, %i.bd      ; 2 uses
  %i.cr = fsub fast <8 x float> %i.bc, %i.be      ; 2 uses
  %i.cs = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>
  %i.cu = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>
  %i.cw = shufflevector <8 x i32> %i.co, <8 x i32> %i.cp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cx = bitcast <8 x i32> %i.cw to <8 x float>
  %i.cy = shufflevector <8 x i32> %i.co, <8 x i32> %i.cp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>
  %i.da = shufflevector <8 x float> %i.cq, <8 x float> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.db = shufflevector <8 x float> %i.cq, <8 x float> %i.cr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dc = shufflevector <8 x i32> %i.cs, <8 x i32> %i.cw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dd = bitcast <8 x i32> %i.dc to <8 x float>  ; 2 uses
  %i.de = shufflevector <8 x float> %i.da, <8 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.df = shufflevector <8 x float> %i.cx, <8 x float> %i.da, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dg = shufflevector <8 x i32> %i.cu, <8 x i32> %i.cy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dh = bitcast <8 x i32> %i.dg to <8 x float>  ; 2 uses
  %i.di = shufflevector <8 x float> %i.db, <8 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.dj = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dk = shufflevector <8 x float> %i.dd, <8 x float> %i.de, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dl = shufflevector <8 x float> %i.df, <8 x float> %i.dh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dm = shufflevector <8 x float> %i.di, <8 x float> %i.dj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dn = shufflevector <8 x float> %i.dd, <8 x float> %i.de, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.do = shufflevector <8 x float> %i.df, <8 x float> %i.dh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dp = shufflevector <8 x float> %i.di, <8 x float> %i.dj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.dk, ptr %.1447, align 1, !tbaa !63
  %i.dq = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.dl, ptr %i.dq, align 1, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.dm, ptr %i.dr, align 1, !tbaa !63
  %i.ds = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.dn, ptr %i.ds, align 1, !tbaa !63
  %i.dt = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.do, ptr %i.dt, align 1, !tbaa !63
  %i.du = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.dp, ptr %i.du, align 1, !tbaa !63
  %i.dv = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.dx = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.dy = or disjoint i32 %i.dx, 15
  %i.dz = icmp slt i32 %i.dy, %i.e
  br i1 %i.dz, label %.lr.ph448, label %.preheader, !llvm.loop !152

.lr.ph455:                                        ; preds = %.preheader, %bb.h
  %.2454 = phi ptr [ %i.gq, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.gp, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.gr, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.ea = load <2 x float>, ptr %.1250453, align 4, !tbaa !66
  %i.eb = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 5 uses
  %i.ec = fmul fast <2 x float> %i.ea, splat (float 5.000000e-01)
  %i.ed = fadd fast <2 x float> %i.ec, splat (float 5.000000e-01)
  %i.ee = add nsw <2 x i32> %i.eb, splat (i32 -1)
  %i.ef = sitofp <2 x i32> %i.ee to <2 x float>   ; 3 uses
  %i.eg = fmul fast <2 x float> %i.ed, %i.ef
  %i.eh = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.eg)
  %i.ei = fsub fast <2 x float> %i.eh, %i.ef
  %i.ej = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ei)
  %i.ek = fsub fast <2 x float> %i.ef, %i.ej
  %i.el = sitofp <2 x i32> %i.eb to <2 x float>
  %i.em = fadd fast <2 x float> %i.el, splat (float -1.000000e+00)
  %i.en = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ek, <2 x float> zeroinitializer)
  %i.eo = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.en, <2 x float> %i.em) ; 2 uses
  %i.ep = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.eo)
  %i.eq = fptosi <2 x float> %i.ep to <2 x i32>   ; 5 uses
  %i.er = extractelement <2 x i32> %i.eq, i64 0   ; 4 uses
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  %i.et = extractelement <2 x i32> %i.eq, i64 1   ; 4 uses
  %i.eu = add nsw i32 %i.et, 1                    ; 3 uses
  %i.ev = icmp sgt i32 %i.er, -2
  %i.ew = extractelement <2 x i32> %i.eb, i64 0   ; 2 uses
  %i.ex = icmp slt i32 %i.es, %i.ew
  %i.ey = and i1 %i.ev, %i.ex                     ; 2 uses
  %i.ez = icmp sgt <2 x i32> %i.eq, splat (i32 -1)
  %i.fa = icmp sgt <2 x i32> %i.eb, %i.eq
  %i.fb = and <2 x i1> %i.ez, %i.fa               ; 2 uses
  %i.fc = icmp sgt i32 %i.et, -2
  %i.fd = extractelement <2 x i32> %i.eb, i64 1
  %i.fe = icmp slt i32 %i.eu, %i.fd
  %i.ff = and i1 %i.fc, %i.fe                     ; 2 uses
  %i.fg = extractelement <2 x i1> %i.fb, i64 0    ; 2 uses
  %i.fh = extractelement <2 x i1> %i.fb, i64 1    ; 2 uses
  %i.fi = and i1 %i.fg, %i.fh
  %i.fj = and i1 %i.ey, %i.fh
  %i.fk = and i1 %i.fg, %i.ff
  %i.fl = and i1 %i.ey, %i.ff
  %i.fm = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.fi, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.fn = mul nuw nsw i32 %i.ew, %i.et
  %i.fo = add nsw i32 %i.fn, %i.er
  %i.fp = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fq = mul nsw i32 %i.fp, %i.fo
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.fr = phi i32 [ %i.fq, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.fr, ptr %.2454, align 4, !tbaa !29
  br i1 %i.fj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fs = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ft = mul nsw i32 %i.fs, %i.et
  %i.fu = add nsw i32 %i.ft, %i.es
  %i.fv = load i32, ptr %i.p, align 8, !tbaa !13
  %i.fw = mul nsw i32 %i.fu, %i.fv
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fx = phi i32 [ %i.fw, %bb.c ], [ -1, %bb.b ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !29
  br i1 %i.fk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fz = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ga = mul nsw i32 %i.fz, %i.eu
  %i.gb = add nsw i32 %i.ga, %i.er
  %i.gc = load i32, ptr %i.p, align 8, !tbaa !13
  %i.gd = mul nsw i32 %i.gb, %i.gc
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ge = phi i32 [ %i.gd, %bb.e ], [ -1, %bb.d ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !29
  br i1 %i.fl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gg = load i32, ptr %i.n, align 4, !tbaa !52
  %i.gh = mul nsw i32 %i.gg, %i.eu
  %i.gi = add nsw i32 %i.gh, %i.es
  %i.gj = load i32, ptr %i.p, align 8, !tbaa !13
  %i.gk = mul nsw i32 %i.gi, %i.gj
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.gl = phi i32 [ %i.gk, %bb.g ], [ -1, %bb.f ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !29
  %i.gn = sitofp <2 x i32> %i.eq to <2 x float>
  %i.go = fsub fast <2 x float> %i.eo, %i.gn
  store <2 x float> %i.go, ptr %i.fm, align 4, !tbaa !66
  %i.gp = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.gr = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.gs = icmp slt i32 %i.gr, %i.e
  br i1 %i.gs, label %.lr.ph455, label %._crit_edge, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.gq, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gt = load i32, ptr %i.h, align 8, !tbaa !18
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp slt i64 %indvars.iv.next, %i.gu
  br i1 %i.gv, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !154

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.gw = load ptr, ptr %1, align 8, !tbaa !24, !noalias !155 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !21, !noalias !158
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !20, !noalias !158
  %i.hb = mul i64 %i.ha, %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hb ; 2 uses
  %i.hd = icmp sgt i32 %i.e, 7
  br i1 %i.hd, label %.lr.ph, label %.preheader431

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit259
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

.preheader431.loopexit:                           ; preds = %bb.i
  %i.hh = and i32 %i.e, 2147483640
  br label %.preheader431

.preheader431:                                    ; preds = %.preheader431.loopexit, %_ZN4ncnn3MatD2Ev.exit259
  %.0257.lcssa = phi ptr [ %i.gw, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.ld, %.preheader431.loopexit ]
  %.0255.lcssa = phi ptr [ %i.hc, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.le, %.preheader431.loopexit ]
  %.0253.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.hh, %.preheader431.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit259 ], [ %i.lf, %.preheader431.loopexit ]
  %i.hi = icmp slt i32 %.0253.lcssa, %i.e
  br i1 %i.hi, label %.lr.ph444, label %.loopexit

.lr.ph444:                                        ; preds = %.preheader431
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.3436 = phi ptr [ %i.f, %.lr.ph ], [ %i.lf, %bb.i ] ; 7 uses
  %.0253435 = phi i32 [ 0, %.lr.ph ], [ %i.lg, %bb.i ]
  %.0255434 = phi ptr [ %i.hc, %.lr.ph ], [ %i.le, %bb.i ] ; 2 uses
  %.0257433 = phi ptr [ %i.gw, %.lr.ph ], [ %i.ld, %bb.i ] ; 2 uses
  %i.hl = load <8 x float>, ptr %.0257433, align 1, !tbaa !63
  %i.hm = load <8 x float>, ptr %.0255434, align 1, !tbaa !63
  %i.hn = load i32, ptr %i.he, align 4, !tbaa !52
  %i.ho = sitofp fast i32 %i.hn to float
  %i.hp = insertelement <8 x float> poison, float %i.ho, i64 0
  %i.hq = shufflevector <8 x float> %i.hp, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.hr = fmul fast <8 x float> %i.hl, splat (float 5.000000e-01)
  %i.hs = fadd fast <8 x float> %i.hr, splat (float 5.000000e-01)
  %i.ht = fadd fast <8 x float> %i.hq, splat (float -1.000000e+00) ; 3 uses
  %i.hu = fmul fast <8 x float> %i.ht, %i.hs
  %i.hv = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.hu)
  %i.hw = fsub fast <8 x float> %i.hv, %i.ht
  %i.hx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hw)
  %i.hy = fsub fast <8 x float> %i.ht, %i.hx      ; 2 uses
  %i.hz = load i32, ptr %i.hf, align 8, !tbaa !53
  %i.ia = sitofp fast i32 %i.hz to float
  %i.ib = insertelement <8 x float> poison, float %i.ia, i64 0
  %i.ic = shufflevector <8 x float> %i.ib, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.id = fmul fast <8 x float> %i.hm, splat (float 5.000000e-01)
  %i.ie = fadd fast <8 x float> %i.id, splat (float 5.000000e-01)
  %i.if = fadd fast <8 x float> %i.ic, splat (float -1.000000e+00) ; 3 uses
  %i.ig = fmul fast <8 x float> %i.if, %i.ie
  %i.ih = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ig)
  %i.ii = fsub fast <8 x float> %i.ih, %i.if
  %i.ij = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ii)
  %i.ik = fsub fast <8 x float> %i.if, %i.ij      ; 2 uses
  %i.il = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hy, i32 1) ; 5 uses
  %i.im = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ik, i32 1) ; 5 uses
  %i.in = fadd fast <8 x float> %i.il, splat (float 1.000000e+00) ; 2 uses
  %i.io = fadd fast <8 x float> %i.im, splat (float 1.000000e+00) ; 2 uses
  %i.ip = fcmp fast ogt <8 x float> %i.il, splat (float -1.000000e+00)
  %i.iq = fcmp fast ogt <8 x float> %i.hq, %i.il
  %i.ir = and <8 x i1> %i.ip, %i.iq               ; 2 uses
  %i.is = fcmp fast ogt <8 x float> %i.in, splat (float -1.000000e+00)
  %i.it = fcmp fast ogt <8 x float> %i.hq, %i.in
  %i.iu = and <8 x i1> %i.is, %i.it               ; 2 uses
  %i.iv = fcmp fast ogt <8 x float> %i.im, splat (float -1.000000e+00)
  %i.iw = fcmp fast ogt <8 x float> %i.ic, %i.im
  %i.ix = and <8 x i1> %i.iv, %i.iw
  %i.iy = sext <8 x i1> %i.ix to <8 x i32>
  %i.iz = fcmp fast ogt <8 x float> %i.io, splat (float -1.000000e+00)
  %i.ja = fcmp fast ogt <8 x float> %i.ic, %i.io
  %i.jb = and <8 x i1> %i.iz, %i.ja               ; 2 uses
  %i.jc = bitcast <8 x i32> %i.iy to <8 x float>  ; 2 uses
  %i.jd = select <8 x i1> %i.ir, <8 x float> %i.jc, <8 x float> zeroinitializer
  %i.je = select <8 x i1> %i.iu, <8 x float> %i.jc, <8 x float> zeroinitializer
  %i.jf = and <8 x i1> %i.ir, %i.jb
  %i.jg = and <8 x i1> %i.iu, %i.jb
  %i.jh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.im, <8 x float> nofpclass(nan inf) %i.hq, <8 x float> nofpclass(nan inf) %i.il)
  %i.ji = load i32, ptr %i.hg, align 8, !tbaa !13
  %i.jj = sitofp fast i32 %i.ji to float
  %i.jk = insertelement <8 x float> poison, float %i.jj, i64 0
  %i.jl = shufflevector <8 x float> %i.jk, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.jm = fmul fast <8 x float> %i.jl, %i.jh      ; 3 uses
  %i.jn = fadd fast <8 x float> %i.jm, %i.jl
  %i.jo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hq, <8 x float> nofpclass(nan inf) %i.jl, <8 x float> nofpclass(nan inf) %i.jm) ; 2 uses
  %i.jp = fadd fast <8 x float> %i.jo, %i.jl
  %i.jq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.jm, <8 x float> nofpclass(nan inf) %i.jd)
  %i.jr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.jn, <8 x float> nofpclass(nan inf) %i.je)
  %i.js = select <8 x i1> %i.jf, <8 x float> %i.jo, <8 x float> splat (float -1.000000e+00)
  %i.jt = select <8 x i1> %i.jg, <8 x float> %i.jp, <8 x float> splat (float -1.000000e+00)
  %i.ju = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jq) ; 2 uses
  %i.jv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jr) ; 2 uses
  %i.jw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.js) ; 2 uses
  %i.jx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jt) ; 2 uses
  %i.jy = fsub fast <8 x float> %i.hy, %i.il      ; 2 uses
  %i.jz = fsub fast <8 x float> %i.ik, %i.im      ; 2 uses
  %i.ka = shufflevector <8 x i32> %i.ju, <8 x i32> %i.jv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kb = bitcast <8 x i32> %i.ka to <8 x float>
  %i.kc = shufflevector <8 x i32> %i.ju, <8 x i32> %i.jv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kd = bitcast <8 x i32> %i.kc to <8 x float>
  %i.ke = shufflevector <8 x i32> %i.jw, <8 x i32> %i.jx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kf = bitcast <8 x i32> %i.ke to <8 x float>
  %i.kg = shufflevector <8 x i32> %i.jw, <8 x i32> %i.jx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kh = bitcast <8 x i32> %i.kg to <8 x float>
  %i.ki = shufflevector <8 x float> %i.jy, <8 x float> %i.jz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kj = shufflevector <8 x float> %i.jy, <8 x float> %i.jz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kk = shufflevector <8 x i32> %i.ka, <8 x i32> %i.ke, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kl = bitcast <8 x i32> %i.kk to <8 x float>  ; 2 uses
  %i.km = shufflevector <8 x float> %i.ki, <8 x float> %i.kb, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kn = shufflevector <8 x float> %i.kf, <8 x float> %i.ki, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ko = shufflevector <8 x i32> %i.kc, <8 x i32> %i.kg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kp = bitcast <8 x i32> %i.ko to <8 x float>  ; 2 uses
  %i.kq = shufflevector <8 x float> %i.kj, <8 x float> %i.kd, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kr = shufflevector <8 x float> %i.kh, <8 x float> %i.kj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ks = shufflevector <8 x float> %i.kl, <8 x float> %i.km, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kt = shufflevector <8 x float> %i.kn, <8 x float> %i.kp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ku = shufflevector <8 x float> %i.kq, <8 x float> %i.kr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kv = shufflevector <8 x float> %i.kl, <8 x float> %i.km, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kw = shufflevector <8 x float> %i.kn, <8 x float> %i.kp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kx = shufflevector <8 x float> %i.kq, <8 x float> %i.kr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ks, ptr %.3436, align 1, !tbaa !63
  %i.ky = getelementptr inbounds nuw i8, ptr %.3436, i64 32
  store <8 x float> %i.kt, ptr %i.ky, align 1, !tbaa !63
  %i.kz = getelementptr inbounds nuw i8, ptr %.3436, i64 64
  store <8 x float> %i.ku, ptr %i.kz, align 1, !tbaa !63
  %i.la = getelementptr inbounds nuw i8, ptr %.3436, i64 96
  store <8 x float> %i.kv, ptr %i.la, align 1, !tbaa !63
  %i.lb = getelementptr inbounds nuw i8, ptr %.3436, i64 128
  store <8 x float> %i.kw, ptr %i.lb, align 1, !tbaa !63
  %i.lc = getelementptr inbounds nuw i8, ptr %.3436, i64 160
  store <8 x float> %i.kx, ptr %i.lc, align 1, !tbaa !63
  %i.ld = getelementptr inbounds nuw i8, ptr %.0257433, i64 32 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0255434, i64 32 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.3436, i64 192 ; 2 uses
  %i.lg = add nuw nsw i32 %.0253435, 8            ; 2 uses
  %i.lh = or disjoint i32 %i.lg, 7
  %i.li = icmp slt i32 %i.lh, %i.e
  br i1 %i.li, label %bb.i, label %.preheader431.loopexit, !llvm.loop !161

bb.j:                                             ; preds = %.lr.ph444, %bb.r
  %.4443 = phi ptr [ %.3.lcssa, %.lr.ph444 ], [ %i.od, %bb.r ] ; 6 uses
  %.1254442 = phi i32 [ %.0253.lcssa, %.lr.ph444 ], [ %i.oe, %bb.r ]
  %.1256441 = phi ptr [ %.0255.lcssa, %.lr.ph444 ], [ %i.oc, %bb.r ] ; 2 uses
  %.1258440 = phi ptr [ %.0257.lcssa, %.lr.ph444 ], [ %i.ob, %bb.r ] ; 2 uses
  %i.lj = load float, ptr %.1258440, align 4, !tbaa !66
  %i.lk = load float, ptr %.1256441, align 4, !tbaa !66
  %i.ll = load <2 x i32>, ptr %i.hj, align 4, !tbaa !29 ; 5 uses
  %i.lm = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %i.lk, i64 1
  %i.lo = fmul fast <2 x float> %i.ln, splat (float 5.000000e-01)
  %i.lp = fadd fast <2 x float> %i.lo, splat (float 5.000000e-01)
  %i.lq = add nsw <2 x i32> %i.ll, splat (i32 -1)
  %i.lr = sitofp <2 x i32> %i.lq to <2 x float>   ; 3 uses
  %i.ls = fmul fast <2 x float> %i.lp, %i.lr
  %i.lt = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ls)
  %i.lu = fsub fast <2 x float> %i.lt, %i.lr
  %i.lv = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lu)
  %i.lw = fsub fast <2 x float> %i.lr, %i.lv
  %i.lx = sitofp <2 x i32> %i.ll to <2 x float>
  %i.ly = fadd fast <2 x float> %i.lx, splat (float -1.000000e+00)
  %i.lz = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lw, <2 x float> zeroinitializer)
  %i.ma = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.lz, <2 x float> %i.ly) ; 2 uses
  %i.mb = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ma)
  %i.mc = fptosi <2 x float> %i.mb to <2 x i32>   ; 5 uses
  %i.md = extractelement <2 x i32> %i.mc, i64 0   ; 4 uses
  %i.me = add nsw i32 %i.md, 1                    ; 3 uses
  %i.mf = extractelement <2 x i32> %i.mc, i64 1   ; 4 uses
  %i.mg = add nsw i32 %i.mf, 1                    ; 3 uses
  %i.mh = icmp sgt i32 %i.md, -2
  %i.mi = extractelement <2 x i32> %i.ll, i64 0   ; 2 uses
  %i.mj = icmp slt i32 %i.me, %i.mi
  %i.mk = and i1 %i.mh, %i.mj                     ; 2 uses
  %i.ml = icmp sgt <2 x i32> %i.mc, splat (i32 -1)
  %i.mm = icmp sgt <2 x i32> %i.ll, %i.mc
  %i.mn = and <2 x i1> %i.ml, %i.mm               ; 2 uses
  %i.mo = icmp sgt i32 %i.mf, -2
  %i.mp = extractelement <2 x i32> %i.ll, i64 1
  %i.mq = icmp slt i32 %i.mg, %i.mp
  %i.mr = and i1 %i.mo, %i.mq                     ; 2 uses
  %i.ms = extractelement <2 x i1> %i.mn, i64 0    ; 2 uses
  %i.mt = extractelement <2 x i1> %i.mn, i64 1    ; 2 uses
  %i.mu = and i1 %i.ms, %i.mt
  %i.mv = and i1 %i.mk, %i.mt
  %i.mw = and i1 %i.ms, %i.mr
  %i.mx = and i1 %i.mk, %i.mr
  %i.my = getelementptr inbounds nuw i8, ptr %.4443, i64 16
  br i1 %i.mu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mz = mul nuw nsw i32 %i.mi, %i.mf
  %i.na = add nsw i32 %i.mz, %i.md
  %i.nb = load i32, ptr %i.hk, align 8, !tbaa !13
  %i.nc = mul nsw i32 %i.nb, %i.na
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.nd = phi i32 [ %i.nc, %bb.k ], [ -1, %bb.j ]
  store i32 %i.nd, ptr %.4443, align 4, !tbaa !29
  br i1 %i.mv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ne = load i32, ptr %i.hj, align 4, !tbaa !52
  %i.nf = mul nsw i32 %i.ne, %i.mf
  %i.ng = add nsw i32 %i.nf, %i.me
  %i.nh = load i32, ptr %i.hk, align 8, !tbaa !13
  %i.ni = mul nsw i32 %i.ng, %i.nh
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.nj = phi i32 [ %i.ni, %bb.m ], [ -1, %bb.l ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.4443, i64 4
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !29
  br i1 %i.mw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.nl = load i32, ptr %i.hj, align 4, !tbaa !52
  %i.nm = mul nsw i32 %i.nl, %i.mg
  %i.nn = add nsw i32 %i.nm, %i.md
  %i.no = load i32, ptr %i.hk, align 8, !tbaa !13
  %i.np = mul nsw i32 %i.nn, %i.no
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.nq = phi i32 [ %i.np, %bb.o ], [ -1, %bb.n ]
  %i.nr = getelementptr inbounds nuw i8, ptr %.4443, i64 8
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !29
  br i1 %i.mx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ns = load i32, ptr %i.hj, align 4, !tbaa !52
  %i.nt = mul nsw i32 %i.ns, %i.mg
  %i.nu = add nsw i32 %i.nt, %i.me
  %i.nv = load i32, ptr %i.hk, align 8, !tbaa !13
  %i.nw = mul nsw i32 %i.nu, %i.nv
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nx = phi i32 [ %i.nw, %bb.q ], [ -1, %bb.p ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.4443, i64 12
  store i32 %i.nx, ptr %i.ny, align 4, !tbaa !29
  %i.nz = sitofp <2 x i32> %i.mc to <2 x float>
  %i.oa = fsub fast <2 x float> %i.ma, %i.nz
  store <2 x float> %i.oa, ptr %i.my, align 4, !tbaa !66
  %i.ob = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.oc = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.oe = add nuw nsw i32 %.1254442, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.oe, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !162

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 12 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !163 ; 4 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader227, label %_ZN4ncnn3MatD2Ev.exit121

.preheader227:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader227
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit122.us.preheader, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split

_ZN4ncnn3MatD2Ev.exit122.us.preheader:            ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph
  %i.q = and i32 %i.e, 2147483632                 ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.e
  br label %_ZN4ncnn3MatD2Ev.exit122.us

_ZN4ncnn3MatD2Ev.exit122.us:                      ; preds = %_ZN4ncnn3MatD2Ev.exit122.us.preheader, %._crit_edge.us
  %indvars.iv267 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us.preheader ], [ %indvars.iv.next268, %._crit_edge.us ] ; 2 uses
  %.0255.us = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.us.preheader ], [ %.2.lcssa.us, %._crit_edge.us ]
  %i.s = load ptr, ptr %1, align 8, !tbaa !24, !noalias !166
  %i.t = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !166
  %i.u = mul i64 %i.t, %indvars.iv267
  %i.v = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !166
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit122.us, %bb.a
  %.1244.us = phi ptr [ %.0255.us, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.bo, %bb.a ] ; 2 uses
  %.0117243.us = phi ptr [ %i.x, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.bn, %bb.a ] ; 3 uses
  %.0119242.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.bp, %bb.a ]
  %i.y = load <8 x float>, ptr %.0117243.us, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117243.us, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.aj = fadd fast <8 x float> %i.ad, splat (float 1.000000e+00)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> splat (float -1.000000e+00))
  %i.al = fmul fast <8 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = load i32, ptr %i.o, align 8, !tbaa !53
  %i.an = sitofp fast i32 %i.am to float
  %i.ao = insertelement <8 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <8 x float> %i.ao, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aq = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00)
  %i.ar = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.ap, <8 x float> splat (float -1.000000e+00))
  %i.as = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.at = fadd fast <8 x float> %i.al, splat (float 5.000000e-01)
  %i.au = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.at, i32 1) ; 3 uses
  %i.av = fadd fast <8 x float> %i.as, splat (float 5.000000e-01)
  %i.aw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.av, i32 1) ; 3 uses
  %i.ax = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.ay = fcmp fast ogt <8 x float> %i.ai, %i.au
  %i.az = and <8 x i1> %i.ax, %i.ay
  %i.ba = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.bb = fcmp fast ogt <8 x float> %i.ap, %i.aw
  %i.bc = and <8 x i1> %i.ba, %i.bb
  %i.bd = and <8 x i1> %i.az, %i.bc
  %i.be = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.au)
  %i.bf = load i32, ptr %i.p, align 8, !tbaa !13
  %i.bg = sitofp fast i32 %i.bf to float
  %i.bh = insertelement <8 x float> poison, float %i.bg, i64 0
  %i.bi = shufflevector <8 x float> %i.bh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bj = fmul fast <8 x float> %i.bi, %i.be
  %i.bk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bj)
  %i.bl = bitcast <8 x i32> %i.bk to <8 x float>
  %i.bm = select <8 x i1> %i.bd, <8 x float> %i.bl, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bm, ptr %.1244.us, align 1, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %.0117243.us, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1244.us, i64 32 ; 3 uses
  %i.bp = add nuw nsw i32 %.0119242.us, 16        ; 2 uses
  %i.bq = or disjoint i32 %i.bp, 15
  %i.br = icmp slt i32 %i.bq, %i.e
  br i1 %i.br, label %bb.a, label %..preheader_crit_edge.us, !llvm.loop !169

.lr.ph252.us:                                     ; preds = %..preheader_crit_edge.us, %bb.c
  %.2251.us = phi ptr [ %i.cq, %bb.c ], [ %i.bo, %..preheader_crit_edge.us ] ; 2 uses
  %.1118250.us = phi ptr [ %i.cp, %bb.c ], [ %i.bn, %..preheader_crit_edge.us ] ; 2 uses
  %.1120249.us = phi i32 [ %i.cr, %bb.c ], [ %i.q, %..preheader_crit_edge.us ]
  %i.bs = load <2 x float>, ptr %.1118250.us, align 4, !tbaa !66
  %i.bt = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 3 uses
  %i.bu = sitofp <2 x i32> %i.bt to <2 x float>
  %i.bv = fmul fast <2 x float> %i.bs, splat (float 5.000000e-01)
  %i.bw = fadd fast <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = fmul fast <2 x float> %i.bw, %i.bu
  %i.by = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.bx)
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>   ; 3 uses
  %i.ca = extractelement <2 x i32> %i.bz, i64 0   ; 2 uses
  %i.cb = extractelement <2 x i32> %i.bz, i64 1   ; 2 uses
  %i.cc = or i32 %i.cb, %i.ca
  %i.cd = icmp sgt i32 %i.cc, -1
  %i.ce = icmp sgt <2 x i32> %i.bt, %i.bz         ; 2 uses
  %i.cf = extractelement <2 x i1> %i.ce, i64 0
  %i.cg = and i1 %i.cf, %i.cd
  %i.ch = extractelement <2 x i1> %i.ce, i64 1
  %i.ci = and i1 %i.ch, %i.cg
  br i1 %i.ci, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph252.us
  %i.cj = extractelement <2 x i32> %i.bt, i64 0
  %i.ck = mul nuw nsw i32 %i.cj, %i.cb
  %i.cl = add nsw i32 %i.ck, %i.ca
  %i.cm = load i32, ptr %i.p, align 8, !tbaa !13
  %i.cn = mul nsw i32 %i.cm, %i.cl
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph252.us
  %i.co = phi i32 [ %i.cn, %bb.b ], [ -1, %.lr.ph252.us ]
  store i32 %i.co, ptr %.2251.us, align 4, !tbaa !29
  %i.cp = getelementptr inbounds nuw i8, ptr %.1118250.us, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.2251.us, i64 4 ; 2 uses
  %i.cr = add nuw nsw i32 %.1120249.us, 2         ; 2 uses
  %i.cs = icmp slt i32 %i.cr, %i.e
  br i1 %i.cs, label %.lr.ph252.us, label %._crit_edge.us, !llvm.loop !170

._crit_edge.us:                                   ; preds = %bb.c, %..preheader_crit_edge.us
  %.2.lcssa.us = phi ptr [ %i.bo, %..preheader_crit_edge.us ], [ %i.cq, %bb.c ]
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.ct = load i32, ptr %i.h, align 8, !tbaa !18
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next268, %i.cu
  br i1 %i.cv, label %_ZN4ncnn3MatD2Ev.exit122.us, label %.loopexit, !llvm.loop !171

..preheader_crit_edge.us:                         ; preds = %bb.a
  br i1 %i.r, label %.lr.ph252.us, label %._crit_edge.us

_ZN4ncnn3MatD2Ev.exit122.lr.ph.split:             ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph
  %i.cw = icmp sgt i32 %i.e, 0
  br i1 %i.cw, label %_ZN4ncnn3MatD2Ev.exit122.preheader, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split
  %.pre = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !166
  %.pre270 = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !166
  %i.cx = load ptr, ptr %1, align 8, !tbaa !24, !noalias !166
  %factor.op.mul = mul i64 %.pre, %.pre270
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0255 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.preheader ], [ %i.dx, %._crit_edge ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.reass
  br label %bb.d

bb.d:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit122, %bb.f
  %.2251 = phi ptr [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.dx, %bb.f ] ; 2 uses
  %.1118250 = phi ptr [ %i.cy, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.dw, %bb.f ] ; 2 uses
  %.1120249 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.dy, %bb.f ]
  %i.cz = load <2 x float>, ptr %.1118250, align 4, !tbaa !66
  %i.da = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 3 uses
  %i.db = sitofp <2 x i32> %i.da to <2 x float>
  %i.dc = fmul fast <2 x float> %i.cz, splat (float 5.000000e-01)
  %i.dd = fadd fast <2 x float> %i.dc, splat (float 5.000000e-01)
  %i.de = fmul fast <2 x float> %i.dd, %i.db
  %i.df = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.de)
  %i.dg = fptosi <2 x float> %i.df to <2 x i32>   ; 3 uses
  %i.dh = extractelement <2 x i32> %i.dg, i64 0   ; 2 uses
  %i.di = extractelement <2 x i32> %i.dg, i64 1   ; 2 uses
  %i.dj = or i32 %i.di, %i.dh
  %i.dk = icmp sgt i32 %i.dj, -1
  %i.dl = icmp sgt <2 x i32> %i.da, %i.dg         ; 2 uses
  %i.dm = extractelement <2 x i1> %i.dl, i64 0
  %i.dn = and i1 %i.dm, %i.dk
  %i.do = extractelement <2 x i1> %i.dl, i64 1
  %i.dp = and i1 %i.do, %i.dn
  br i1 %i.dp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dq = extractelement <2 x i32> %i.da, i64 0
  %i.dr = mul nuw nsw i32 %i.dq, %i.di
  %i.ds = add nsw i32 %i.dr, %i.dh
  %i.dt = load i32, ptr %i.p, align 8, !tbaa !13
  %i.du = mul nsw i32 %i.dt, %i.ds
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.dv = phi i32 [ %i.du, %bb.e ], [ -1, %bb.d ]
  store i32 %i.dv, ptr %.2251, align 4, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %.1118250, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.2251, i64 4 ; 2 uses
  %i.dy = add nuw nsw i32 %.1120249, 2            ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %i.e
  br i1 %i.dz, label %bb.d, label %._crit_edge, !llvm.loop !170

._crit_edge:                                      ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ea = load i32, ptr %i.h, align 8, !tbaa !18
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next, %i.eb
  br i1 %i.ec, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !171

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.ed = load ptr, ptr %1, align 8, !tbaa !24, !noalias !172 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !21, !noalias !175
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !20, !noalias !175
  %i.ei = mul i64 %i.eh, %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ei ; 2 uses
  %i.ek = icmp sgt i32 %i.e, 7
  br i1 %i.ek, label %.lr.ph, label %.preheader228

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

.preheader228.loopexit:                           ; preds = %bb.g
  %i.eo = and i32 %i.e, 2147483640
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.ed, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gc, %.preheader228.loopexit ]
  %.0112.lcssa = phi ptr [ %i.ej, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gd, %.preheader228.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.eo, %.preheader228.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ge, %.preheader228.loopexit ]
  %i.ep = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.ep, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %.preheader228
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.3233 = phi ptr [ %i.f, %.lr.ph ], [ %i.ge, %bb.g ] ; 2 uses
  %.0110232 = phi i32 [ 0, %.lr.ph ], [ %i.gf, %bb.g ]
  %.0112231 = phi ptr [ %i.ej, %.lr.ph ], [ %i.gd, %bb.g ] ; 2 uses
  %.0114230 = phi ptr [ %i.ed, %.lr.ph ], [ %i.gc, %bb.g ] ; 2 uses
  %i.es = load <8 x float>, ptr %.0114230, align 1, !tbaa !63
  %i.et = load <8 x float>, ptr %.0112231, align 1, !tbaa !63
  %i.eu = load i32, ptr %i.el, align 4, !tbaa !52
  %i.ev = sitofp fast i32 %i.eu to float
  %i.ew = insertelement <8 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <8 x float> %i.ew, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ey = fadd fast <8 x float> %i.es, splat (float 1.000000e+00)
  %i.ez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ey, <8 x float> nofpclass(nan inf) %i.ex, <8 x float> splat (float -1.000000e+00))
  %i.fa = fmul fast <8 x float> %i.ez, splat (float 5.000000e-01)
  %i.fb = load i32, ptr %i.em, align 8, !tbaa !53
  %i.fc = sitofp fast i32 %i.fb to float
  %i.fd = insertelement <8 x float> poison, float %i.fc, i64 0
  %i.fe = shufflevector <8 x float> %i.fd, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ff = fadd fast <8 x float> %i.et, splat (float 1.000000e+00)
  %i.fg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ff, <8 x float> nofpclass(nan inf) %i.fe, <8 x float> splat (float -1.000000e+00))
  %i.fh = fmul fast <8 x float> %i.fg, splat (float 5.000000e-01)
  %i.fi = fadd fast <8 x float> %i.fa, splat (float 5.000000e-01)
  %i.fj = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fi, i32 1) ; 3 uses
  %i.fk = fadd fast <8 x float> %i.fh, splat (float 5.000000e-01)
  %i.fl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fk, i32 1) ; 3 uses
  %i.fm = fcmp fast ogt <8 x float> %i.fj, splat (float -1.000000e+00)
  %i.fn = fcmp fast ogt <8 x float> %i.ex, %i.fj
  %i.fo = and <8 x i1> %i.fm, %i.fn
  %i.fp = fcmp fast ogt <8 x float> %i.fl, splat (float -1.000000e+00)
  %i.fq = fcmp fast ogt <8 x float> %i.fe, %i.fl
  %i.fr = and <8 x i1> %i.fp, %i.fq
  %i.fs = and <8 x i1> %i.fo, %i.fr
  %i.ft = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fl, <8 x float> nofpclass(nan inf) %i.ex, <8 x float> nofpclass(nan inf) %i.fj)
  %i.fu = load i32, ptr %i.en, align 8, !tbaa !13
  %i.fv = sitofp fast i32 %i.fu to float
  %i.fw = insertelement <8 x float> poison, float %i.fv, i64 0
  %i.fx = shufflevector <8 x float> %i.fw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fy = fmul fast <8 x float> %i.fx, %i.ft
  %i.fz = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fy)
  %i.ga = bitcast <8 x i32> %i.fz to <8 x float>
  %i.gb = select <8 x i1> %i.fs, <8 x float> %i.ga, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.gb, ptr %.3233, align 1, !tbaa !63
  %i.gc = getelementptr inbounds nuw i8, ptr %.0114230, i64 32 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0112231, i64 32 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.3233, i64 32 ; 2 uses
  %i.gf = add nuw nsw i32 %.0110232, 8            ; 2 uses
  %i.gg = or disjoint i32 %i.gf, 7
  %i.gh = icmp slt i32 %i.gg, %i.e
  br i1 %i.gh, label %bb.g, label %.preheader228.loopexit, !llvm.loop !178

bb.h:                                             ; preds = %.lr.ph241, %bb.j
  %.4240 = phi ptr [ %.3.lcssa, %.lr.ph241 ], [ %i.hk, %bb.j ] ; 2 uses
  %.1111239 = phi i32 [ %.0110.lcssa, %.lr.ph241 ], [ %i.hl, %bb.j ]
  %.1113238 = phi ptr [ %.0112.lcssa, %.lr.ph241 ], [ %i.hj, %bb.j ] ; 2 uses
  %.1115237 = phi ptr [ %.0114.lcssa, %.lr.ph241 ], [ %i.hi, %bb.j ] ; 2 uses
  %i.gi = load float, ptr %.1115237, align 4, !tbaa !66
  %i.gj = load float, ptr %.1113238, align 4, !tbaa !66
  %i.gk = load <2 x i32>, ptr %i.eq, align 4, !tbaa !29 ; 3 uses
  %i.gl = sitofp <2 x i32> %i.gk to <2 x float>
  %i.gm = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.gj, i64 1
  %i.go = fmul fast <2 x float> %i.gn, splat (float 5.000000e-01)
  %i.gp = fadd fast <2 x float> %i.go, splat (float 5.000000e-01)
  %i.gq = fmul fast <2 x float> %i.gp, %i.gl
  %i.gr = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gq)
  %i.gs = fptosi <2 x float> %i.gr to <2 x i32>   ; 3 uses
  %i.gt = extractelement <2 x i32> %i.gs, i64 0   ; 2 uses
  %i.gu = extractelement <2 x i32> %i.gs, i64 1   ; 2 uses
  %i.gv = or i32 %i.gu, %i.gt
  %i.gw = icmp sgt i32 %i.gv, -1
  %i.gx = icmp sgt <2 x i32> %i.gk, %i.gs         ; 2 uses
  %i.gy = extractelement <2 x i1> %i.gx, i64 0
  %i.gz = and i1 %i.gy, %i.gw
  %i.ha = extractelement <2 x i1> %i.gx, i64 1
  %i.hb = and i1 %i.ha, %i.gz
  br i1 %i.hb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.hc = extractelement <2 x i32> %i.gk, i64 0
  %i.hd = mul nuw nsw i32 %i.hc, %i.gu
  %i.he = add nsw i32 %i.hd, %i.gt
  %i.hf = load i32, ptr %i.er, align 8, !tbaa !13
  %i.hg = mul nsw i32 %i.hf, %i.he
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.hh = phi i32 [ %i.hg, %bb.i ], [ -1, %bb.h ]
  store i32 %i.hh, ptr %.4240, align 4, !tbaa !29
  %i.hi = getelementptr inbounds nuw i8, ptr %.1115237, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %.1113238, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %.4240, i64 4
  %i.hl = add nuw nsw i32 %.1111239, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hl, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !179

.loopexit:                                        ; preds = %bb.j, %._crit_edge, %._crit_edge.us, %.preheader228, %.preheader227, %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !180 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader227, label %_ZN4ncnn3MatD2Ev.exit121

.preheader227:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader227
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0255 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !183
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !183
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !183
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph245, label %.preheader

.preheader:                                       ; preds = %.lr.ph245, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph245 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bp, %.lr.ph245 ]
  %.1.lcssa = phi ptr [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bq, %.lr.ph245 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph252, label %._crit_edge

.lr.ph245:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph245
  %.1244 = phi ptr [ %i.bq, %.lr.ph245 ], [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117243 = phi ptr [ %i.bp, %.lr.ph245 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119242 = phi i32 [ %i.br, %.lr.ph245 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117243, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117243, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.aj = fmul fast <8 x float> %i.ad, splat (float 5.000000e-01)
  %i.ak = fadd fast <8 x float> %i.aj, splat (float 5.000000e-01)
  %i.al = fadd fast <8 x float> %i.ai, splat (float -1.000000e+00)
  %i.am = fmul fast <8 x float> %i.al, %i.ak
  %i.an = load i32, ptr %i.o, align 8, !tbaa !53
  %i.ao = sitofp fast i32 %i.an to float
  %i.ap = insertelement <8 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <8 x float> %i.ap, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ar = fmul fast <8 x float> %i.ae, splat (float 5.000000e-01)
  %i.as = fadd fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.at = fadd fast <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.au = fmul fast <8 x float> %i.at, %i.as
  %i.av = fadd fast <8 x float> %i.am, splat (float 5.000000e-01)
  %i.aw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.av, i32 1) ; 3 uses
  %i.ax = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.ay = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ax, i32 1) ; 3 uses
  %i.az = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ai, %i.aw
  %i.bb = and <8 x i1> %i.az, %i.ba
  %i.bc = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.aq, %i.ay
  %i.be = and <8 x i1> %i.bc, %i.bd
  %i.bf = and <8 x i1> %i.bb, %i.be
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.aw)
  %i.bh = load i32, ptr %i.p, align 8, !tbaa !13
  %i.bi = sitofp fast i32 %i.bh to float
  %i.bj = insertelement <8 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <8 x float> %i.bj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bl = fmul fast <8 x float> %i.bk, %i.bg
  %i.bm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bl)
  %i.bn = bitcast <8 x i32> %i.bm to <8 x float>
  %i.bo = select <8 x i1> %i.bf, <8 x float> %i.bn, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bo, ptr %.1244, align 1, !tbaa !63
  %i.bp = getelementptr inbounds nuw i8, ptr %.0117243, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1244, i64 32 ; 2 uses
  %i.br = add nuw nsw i32 %.0119242, 16           ; 2 uses
  %i.bs = or disjoint i32 %i.br, 15
  %i.bt = icmp slt i32 %i.bs, %i.e
  br i1 %i.bt, label %.lr.ph245, label %.preheader, !llvm.loop !186

.lr.ph252:                                        ; preds = %.preheader, %bb.b
  %.2251 = phi ptr [ %i.cu, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118250 = phi ptr [ %i.ct, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120249 = phi i32 [ %i.cv, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.bu = load <2 x float>, ptr %.1118250, align 4, !tbaa !66
  %i.bv = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 3 uses
  %i.bw = fmul fast <2 x float> %i.bu, splat (float 5.000000e-01)
  %i.bx = fadd fast <2 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = add nsw <2 x i32> %i.bv, splat (i32 -1)
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = fmul fast <2 x float> %i.bx, %i.bz
  %i.cb = fadd fast <2 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cb)
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>   ; 3 uses
  %i.ce = extractelement <2 x i32> %i.cd, i64 0   ; 2 uses
  %i.cf = extractelement <2 x i32> %i.cd, i64 1   ; 2 uses
  %i.cg = or i32 %i.cf, %i.ce
  %i.ch = icmp sgt i32 %i.cg, -1
  %i.ci = icmp sgt <2 x i32> %i.bv, %i.cd         ; 2 uses
  %i.cj = extractelement <2 x i1> %i.ci, i64 0
  %i.ck = and i1 %i.cj, %i.ch
  %i.cl = extractelement <2 x i1> %i.ci, i64 1
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph252
  %i.cn = extractelement <2 x i32> %i.bv, i64 0
  %i.co = mul nuw nsw i32 %i.cn, %i.cf
  %i.cp = add nsw i32 %i.co, %i.ce
  %i.cq = load i32, ptr %i.p, align 8, !tbaa !13
  %i.cr = mul nsw i32 %i.cq, %i.cp
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph252, %bb.a
  %i.cs = phi i32 [ %i.cr, %bb.a ], [ -1, %.lr.ph252 ]
  store i32 %i.cs, ptr %.2251, align 4, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %.1118250, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.2251, i64 4 ; 2 uses
  %i.cv = add nuw nsw i32 %.1120249, 2            ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.e
  br i1 %i.cw, label %.lr.ph252, label %._crit_edge, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.cu, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = load i32, ptr %i.h, align 8, !tbaa !18
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next, %i.cy
  br i1 %i.cz, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !188

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.da = load ptr, ptr %1, align 8, !tbaa !24, !noalias !189 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !21, !noalias !192
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !20, !noalias !192
  %i.df = mul i64 %i.de, %i.dd
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df ; 2 uses
  %i.dh = icmp sgt i32 %i.e, 7
  br i1 %i.dh, label %.lr.ph, label %.preheader228

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader228.loopexit:                           ; preds = %bb.c
  %i.dl = and i32 %i.e, 2147483640
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.da, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fb, %.preheader228.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dg, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fc, %.preheader228.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.dl, %.preheader228.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fd, %.preheader228.loopexit ]
  %i.dm = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.dm, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %.preheader228
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3233 = phi ptr [ %i.f, %.lr.ph ], [ %i.fd, %bb.c ] ; 2 uses
  %.0110232 = phi i32 [ 0, %.lr.ph ], [ %i.fe, %bb.c ]
  %.0112231 = phi ptr [ %i.dg, %.lr.ph ], [ %i.fc, %bb.c ] ; 2 uses
  %.0114230 = phi ptr [ %i.da, %.lr.ph ], [ %i.fb, %bb.c ] ; 2 uses
  %i.dp = load <8 x float>, ptr %.0114230, align 1, !tbaa !63
  %i.dq = load <8 x float>, ptr %.0112231, align 1, !tbaa !63
  %i.dr = load i32, ptr %i.di, align 4, !tbaa !52
  %i.ds = sitofp fast i32 %i.dr to float
  %i.dt = insertelement <8 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <8 x float> %i.dt, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.dv = fmul fast <8 x float> %i.dp, splat (float 5.000000e-01)
  %i.dw = fadd fast <8 x float> %i.dv, splat (float 5.000000e-01)
  %i.dx = fadd fast <8 x float> %i.du, splat (float -1.000000e+00)
  %i.dy = fmul fast <8 x float> %i.dx, %i.dw
  %i.dz = load i32, ptr %i.dj, align 8, !tbaa !53
  %i.ea = sitofp fast i32 %i.dz to float
  %i.eb = insertelement <8 x float> poison, float %i.ea, i64 0
  %i.ec = shufflevector <8 x float> %i.eb, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ed = fmul fast <8 x float> %i.dq, splat (float 5.000000e-01)
  %i.ee = fadd fast <8 x float> %i.ed, splat (float 5.000000e-01)
  %i.ef = fadd fast <8 x float> %i.ec, splat (float -1.000000e+00)
  %i.eg = fmul fast <8 x float> %i.ef, %i.ee
  %i.eh = fadd fast <8 x float> %i.dy, splat (float 5.000000e-01)
  %i.ei = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eh, i32 1) ; 3 uses
  %i.ej = fadd fast <8 x float> %i.eg, splat (float 5.000000e-01)
  %i.ek = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ej, i32 1) ; 3 uses
  %i.el = fcmp fast ogt <8 x float> %i.ei, splat (float -1.000000e+00)
  %i.em = fcmp fast ogt <8 x float> %i.du, %i.ei
  %i.en = and <8 x i1> %i.el, %i.em
  %i.eo = fcmp fast ogt <8 x float> %i.ek, splat (float -1.000000e+00)
  %i.ep = fcmp fast ogt <8 x float> %i.ec, %i.ek
  %i.eq = and <8 x i1> %i.eo, %i.ep
  %i.er = and <8 x i1> %i.en, %i.eq
  %i.es = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ek, <8 x float> nofpclass(nan inf) %i.du, <8 x float> nofpclass(nan inf) %i.ei)
  %i.et = load i32, ptr %i.dk, align 8, !tbaa !13
  %i.eu = sitofp fast i32 %i.et to float
  %i.ev = insertelement <8 x float> poison, float %i.eu, i64 0
  %i.ew = shufflevector <8 x float> %i.ev, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ex = fmul fast <8 x float> %i.ew, %i.es
  %i.ey = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ex)
  %i.ez = bitcast <8 x i32> %i.ey to <8 x float>
  %i.fa = select <8 x i1> %i.er, <8 x float> %i.ez, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fa, ptr %.3233, align 1, !tbaa !63
  %i.fb = getelementptr inbounds nuw i8, ptr %.0114230, i64 32 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0112231, i64 32 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.3233, i64 32 ; 2 uses
  %i.fe = add nuw nsw i32 %.0110232, 8            ; 2 uses
  %i.ff = or disjoint i32 %i.fe, 7
  %i.fg = icmp slt i32 %i.ff, %i.e
  br i1 %i.fg, label %bb.c, label %.preheader228.loopexit, !llvm.loop !195

bb.d:                                             ; preds = %.lr.ph241, %bb.f
  %.4240 = phi ptr [ %.3.lcssa, %.lr.ph241 ], [ %i.gl, %bb.f ] ; 2 uses
  %.1111239 = phi i32 [ %.0110.lcssa, %.lr.ph241 ], [ %i.gm, %bb.f ]
  %.1113238 = phi ptr [ %.0112.lcssa, %.lr.ph241 ], [ %i.gk, %bb.f ] ; 2 uses
  %.1115237 = phi ptr [ %.0114.lcssa, %.lr.ph241 ], [ %i.gj, %bb.f ] ; 2 uses
  %i.fh = load float, ptr %.1115237, align 4, !tbaa !66
  %i.fi = load float, ptr %.1113238, align 4, !tbaa !66
  %i.fj = load <2 x i32>, ptr %i.dn, align 4, !tbaa !29 ; 3 uses
  %i.fk = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.fi, i64 1
  %i.fm = fmul fast <2 x float> %i.fl, splat (float 5.000000e-01)
  %i.fn = fadd fast <2 x float> %i.fm, splat (float 5.000000e-01)
  %i.fo = add nsw <2 x i32> %i.fj, splat (i32 -1)
  %i.fp = sitofp <2 x i32> %i.fo to <2 x float>
  %i.fq = fmul fast <2 x float> %i.fn, %i.fp
  %i.fr = fadd fast <2 x float> %i.fq, splat (float 5.000000e-01)
  %i.fs = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fr)
  %i.ft = fptosi <2 x float> %i.fs to <2 x i32>   ; 3 uses
  %i.fu = extractelement <2 x i32> %i.ft, i64 0   ; 2 uses
  %i.fv = extractelement <2 x i32> %i.ft, i64 1   ; 2 uses
  %i.fw = or i32 %i.fv, %i.fu
  %i.fx = icmp sgt i32 %i.fw, -1
  %i.fy = icmp sgt <2 x i32> %i.fj, %i.ft         ; 2 uses
  %i.fz = extractelement <2 x i1> %i.fy, i64 0
  %i.ga = and i1 %i.fz, %i.fx
  %i.gb = extractelement <2 x i1> %i.fy, i64 1
  %i.gc = and i1 %i.gb, %i.ga
  br i1 %i.gc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gd = extractelement <2 x i32> %i.fj, i64 0
  %i.ge = mul nuw nsw i32 %i.gd, %i.fv
  %i.gf = add nsw i32 %i.ge, %i.fu
  %i.gg = load i32, ptr %i.do, align 8, !tbaa !13
  %i.gh = mul nsw i32 %i.gg, %i.gf
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gi = phi i32 [ %i.gh, %bb.e ], [ -1, %bb.d ]
  store i32 %i.gi, ptr %.4240, align 4, !tbaa !29
  %i.gj = getelementptr inbounds nuw i8, ptr %.1115237, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.1113238, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %.4240, i64 4
  %i.gm = add nuw nsw i32 %.1111239, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gm, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !196

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader228, %.preheader227
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !197 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader233, label %_ZN4ncnn3MatD2Ev.exit121

.preheader233:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader233
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0261 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !200
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !200
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !200
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph251, label %.preheader

.preheader:                                       ; preds = %.lr.ph251, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph251 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bt, %.lr.ph251 ]
  %.1.lcssa = phi ptr [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bu, %.lr.ph251 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph258, label %._crit_edge

.lr.ph251:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph251
  %.1250 = phi ptr [ %i.bu, %.lr.ph251 ], [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117249 = phi ptr [ %i.bt, %.lr.ph251 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119248 = phi i32 [ %i.bv, %.lr.ph251 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117249, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117249, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.aj = fadd fast <8 x float> %i.ad, splat (float 1.000000e+00)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> splat (float -1.000000e+00))
  %i.al = fmul fast <8 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = fadd fast <8 x float> %i.ai, splat (float -1.000000e+00)
  %i.an = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.al, <8 x float> zeroinitializer)
  %i.ao = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.an)
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !53
  %i.aq = sitofp fast i32 %i.ap to float
  %i.ar = insertelement <8 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <8 x float> %i.ar, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.at = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00)
  %i.au = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) %i.as, <8 x float> splat (float -1.000000e+00))
  %i.av = fmul fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fadd fast <8 x float> %i.as, splat (float -1.000000e+00)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> zeroinitializer)
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.ax)
  %i.az = fadd fast <8 x float> %i.ao, splat (float 5.000000e-01)
  %i.ba = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.az, i32 1) ; 3 uses
  %i.bb = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.bc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bb, i32 1) ; 3 uses
  %i.bd = fcmp fast ogt <8 x float> %i.ba, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ai, %i.ba
  %i.bf = and <8 x i1> %i.bd, %i.be
  %i.bg = fcmp fast ogt <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bh = fcmp fast ogt <8 x float> %i.as, %i.bc
  %i.bi = and <8 x i1> %i.bg, %i.bh
  %i.bj = and <8 x i1> %i.bf, %i.bi
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.ba)
  %i.bl = load i32, ptr %i.p, align 8, !tbaa !13
  %i.bm = sitofp fast i32 %i.bl to float
  %i.bn = insertelement <8 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <8 x float> %i.bn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bp = fmul fast <8 x float> %i.bo, %i.bk
  %i.bq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bp)
  %i.br = bitcast <8 x i32> %i.bq to <8 x float>
  %i.bs = select <8 x i1> %i.bj, <8 x float> %i.br, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bs, ptr %.1250, align 1, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %.0117249, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1250, i64 32 ; 2 uses
  %i.bv = add nuw nsw i32 %.0119248, 16           ; 2 uses
  %i.bw = or disjoint i32 %i.bv, 15
  %i.bx = icmp slt i32 %i.bw, %i.e
  br i1 %i.bx, label %.lr.ph251, label %.preheader, !llvm.loop !203

.lr.ph258:                                        ; preds = %.preheader, %bb.b
  %.2257 = phi ptr [ %i.db, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118256 = phi ptr [ %i.da, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120255 = phi i32 [ %i.dc, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.by = load <2 x float>, ptr %.1118256, align 4, !tbaa !66
  %i.bz = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 3 uses
  %i.ca = sitofp <2 x i32> %i.bz to <2 x float>   ; 2 uses
  %i.cb = fmul fast <2 x float> %i.by, splat (float 5.000000e-01)
  %i.cc = fadd fast <2 x float> %i.cb, splat (float 5.000000e-01)
  %i.cd = fmul fast <2 x float> %i.cc, %i.ca
  %i.ce = fadd fast <2 x float> %i.cd, splat (float -5.000000e-01)
  %i.cf = fadd fast <2 x float> %i.ca, splat (float -1.000000e+00)
  %i.cg = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ce, <2 x float> zeroinitializer)
  %i.ch = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cg, <2 x float> %i.cf)
  %i.ci = fadd fast <2 x float> %i.ch, splat (float 5.000000e-01)
  %i.cj = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ci)
  %i.ck = fptosi <2 x float> %i.cj to <2 x i32>   ; 3 uses
  %i.cl = extractelement <2 x i32> %i.ck, i64 0   ; 2 uses
  %i.cm = extractelement <2 x i32> %i.ck, i64 1   ; 2 uses
  %i.cn = or i32 %i.cm, %i.cl
  %i.co = icmp sgt i32 %i.cn, -1
  %i.cp = icmp sgt <2 x i32> %i.bz, %i.ck         ; 2 uses
  %i.cq = extractelement <2 x i1> %i.cp, i64 0
  %i.cr = and i1 %i.cq, %i.co
  %i.cs = extractelement <2 x i1> %i.cp, i64 1
  %i.ct = and i1 %i.cs, %i.cr
  br i1 %i.ct, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph258
  %i.cu = extractelement <2 x i32> %i.bz, i64 0
  %i.cv = mul nuw nsw i32 %i.cu, %i.cm
  %i.cw = add nsw i32 %i.cv, %i.cl
  %i.cx = load i32, ptr %i.p, align 8, !tbaa !13
  %i.cy = mul nsw i32 %i.cx, %i.cw
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph258, %bb.a
  %i.cz = phi i32 [ %i.cy, %bb.a ], [ -1, %.lr.ph258 ]
  store i32 %i.cz, ptr %.2257, align 4, !tbaa !29
  %i.da = getelementptr inbounds nuw i8, ptr %.1118256, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.2257, i64 4 ; 2 uses
  %i.dc = add nuw nsw i32 %.1120255, 2            ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %i.e
  br i1 %i.dd, label %.lr.ph258, label %._crit_edge, !llvm.loop !204

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.db, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = load i32, ptr %i.h, align 8, !tbaa !18
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !205

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.dh = load ptr, ptr %1, align 8, !tbaa !24, !noalias !206 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !21, !noalias !209
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !20, !noalias !209
  %i.dm = mul i64 %i.dl, %i.dk
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dm ; 2 uses
  %i.do = icmp sgt i32 %i.e, 7
  br i1 %i.do, label %.lr.ph, label %.preheader234

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader234.loopexit:                           ; preds = %bb.c
  %i.ds = and i32 %i.e, 2147483640
  br label %.preheader234

.preheader234:                                    ; preds = %.preheader234.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.dh, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fm, %.preheader234.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dn, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fn, %.preheader234.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ds, %.preheader234.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fo, %.preheader234.loopexit ]
  %i.dt = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.dt, label %.lr.ph247, label %.loopexit

.lr.ph247:                                        ; preds = %.preheader234
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3239 = phi ptr [ %i.f, %.lr.ph ], [ %i.fo, %bb.c ] ; 2 uses
  %.0110238 = phi i32 [ 0, %.lr.ph ], [ %i.fp, %bb.c ]
  %.0112237 = phi ptr [ %i.dn, %.lr.ph ], [ %i.fn, %bb.c ] ; 2 uses
  %.0114236 = phi ptr [ %i.dh, %.lr.ph ], [ %i.fm, %bb.c ] ; 2 uses
  %i.dw = load <8 x float>, ptr %.0114236, align 1, !tbaa !63
  %i.dx = load <8 x float>, ptr %.0112237, align 1, !tbaa !63
  %i.dy = load i32, ptr %i.dp, align 4, !tbaa !52
  %i.dz = sitofp fast i32 %i.dy to float
  %i.ea = insertelement <8 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <8 x float> %i.ea, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ec = fadd fast <8 x float> %i.dw, splat (float 1.000000e+00)
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %i.eb, <8 x float> splat (float -1.000000e+00))
  %i.ee = fmul fast <8 x float> %i.ed, splat (float 5.000000e-01)
  %i.ef = fadd fast <8 x float> %i.eb, splat (float -1.000000e+00)
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ee, <8 x float> zeroinitializer)
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.eg)
  %i.ei = load i32, ptr %i.dq, align 8, !tbaa !53
  %i.ej = sitofp fast i32 %i.ei to float
  %i.ek = insertelement <8 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <8 x float> %i.ek, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.em = fadd fast <8 x float> %i.dx, splat (float 1.000000e+00)
  %i.en = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.em, <8 x float> nofpclass(nan inf) %i.el, <8 x float> splat (float -1.000000e+00))
  %i.eo = fmul fast <8 x float> %i.en, splat (float 5.000000e-01)
  %i.ep = fadd fast <8 x float> %i.el, splat (float -1.000000e+00)
  %i.eq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eo, <8 x float> zeroinitializer)
  %i.er = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ep, <8 x float> nofpclass(nan inf) %i.eq)
  %i.es = fadd fast <8 x float> %i.eh, splat (float 5.000000e-01)
  %i.et = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.es, i32 1) ; 3 uses
  %i.eu = fadd fast <8 x float> %i.er, splat (float 5.000000e-01)
  %i.ev = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eu, i32 1) ; 3 uses
  %i.ew = fcmp fast ogt <8 x float> %i.et, splat (float -1.000000e+00)
  %i.ex = fcmp fast ogt <8 x float> %i.eb, %i.et
  %i.ey = and <8 x i1> %i.ew, %i.ex
  %i.ez = fcmp fast ogt <8 x float> %i.ev, splat (float -1.000000e+00)
  %i.fa = fcmp fast ogt <8 x float> %i.el, %i.ev
  %i.fb = and <8 x i1> %i.ez, %i.fa
  %i.fc = and <8 x i1> %i.ey, %i.fb
  %i.fd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ev, <8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.et)
  %i.fe = load i32, ptr %i.dr, align 8, !tbaa !13
  %i.ff = sitofp fast i32 %i.fe to float
  %i.fg = insertelement <8 x float> poison, float %i.ff, i64 0
  %i.fh = shufflevector <8 x float> %i.fg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fi = fmul fast <8 x float> %i.fh, %i.fd
  %i.fj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fi)
  %i.fk = bitcast <8 x i32> %i.fj to <8 x float>
  %i.fl = select <8 x i1> %i.fc, <8 x float> %i.fk, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fl, ptr %.3239, align 1, !tbaa !63
  %i.fm = getelementptr inbounds nuw i8, ptr %.0114236, i64 32 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0112237, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.3239, i64 32 ; 2 uses
  %i.fp = add nuw nsw i32 %.0110238, 8            ; 2 uses
  %i.fq = or disjoint i32 %i.fp, 7
  %i.fr = icmp slt i32 %i.fq, %i.e
  br i1 %i.fr, label %bb.c, label %.preheader234.loopexit, !llvm.loop !212

bb.d:                                             ; preds = %.lr.ph247, %bb.f
  %.4246 = phi ptr [ %.3.lcssa, %.lr.ph247 ], [ %i.gz, %bb.f ] ; 2 uses
  %.1111245 = phi i32 [ %.0110.lcssa, %.lr.ph247 ], [ %i.ha, %bb.f ]
  %.1113244 = phi ptr [ %.0112.lcssa, %.lr.ph247 ], [ %i.gy, %bb.f ] ; 2 uses
  %.1115243 = phi ptr [ %.0114.lcssa, %.lr.ph247 ], [ %i.gx, %bb.f ] ; 2 uses
  %i.fs = load float, ptr %.1115243, align 4, !tbaa !66
  %i.ft = load float, ptr %.1113244, align 4, !tbaa !66
  %i.fu = load <2 x i32>, ptr %i.du, align 4, !tbaa !29 ; 3 uses
  %i.fv = sitofp <2 x i32> %i.fu to <2 x float>   ; 2 uses
  %i.fw = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.ft, i64 1
  %i.fy = fmul fast <2 x float> %i.fx, splat (float 5.000000e-01)
  %i.fz = fadd fast <2 x float> %i.fy, splat (float 5.000000e-01)
  %i.ga = fmul fast <2 x float> %i.fz, %i.fv
  %i.gb = fadd fast <2 x float> %i.ga, splat (float -5.000000e-01)
  %i.gc = fadd fast <2 x float> %i.fv, splat (float -1.000000e+00)
  %i.gd = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gb, <2 x float> zeroinitializer)
  %i.ge = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gd, <2 x float> %i.gc)
  %i.gf = fadd fast <2 x float> %i.ge, splat (float 5.000000e-01)
  %i.gg = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gf)
  %i.gh = fptosi <2 x float> %i.gg to <2 x i32>   ; 3 uses
  %i.gi = extractelement <2 x i32> %i.gh, i64 0   ; 2 uses
  %i.gj = extractelement <2 x i32> %i.gh, i64 1   ; 2 uses
  %i.gk = or i32 %i.gj, %i.gi
  %i.gl = icmp sgt i32 %i.gk, -1
  %i.gm = icmp sgt <2 x i32> %i.fu, %i.gh         ; 2 uses
  %i.gn = extractelement <2 x i1> %i.gm, i64 0
  %i.go = and i1 %i.gn, %i.gl
  %i.gp = extractelement <2 x i1> %i.gm, i64 1
  %i.gq = and i1 %i.gp, %i.go
  br i1 %i.gq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gr = extractelement <2 x i32> %i.fu, i64 0
  %i.gs = mul nuw nsw i32 %i.gr, %i.gj
  %i.gt = add nsw i32 %i.gs, %i.gi
  %i.gu = load i32, ptr %i.dv, align 8, !tbaa !13
  %i.gv = mul nsw i32 %i.gu, %i.gt
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gw = phi i32 [ %i.gv, %bb.e ], [ -1, %bb.d ]
  store i32 %i.gw, ptr %.4246, align 4, !tbaa !29
  %i.gx = getelementptr inbounds nuw i8, ptr %.1115243, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.1113244, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %.4246, i64 4
  %i.ha = add nuw nsw i32 %.1111245, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ha, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !213

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader234, %.preheader233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !214 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader233, label %_ZN4ncnn3MatD2Ev.exit121

.preheader233:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader233
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0261 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !217
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !217
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !217
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph251, label %.preheader

.preheader:                                       ; preds = %.lr.ph251, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph251 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bt, %.lr.ph251 ]
  %.1.lcssa = phi ptr [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bu, %.lr.ph251 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph258, label %._crit_edge

.lr.ph251:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph251
  %.1250 = phi ptr [ %i.bu, %.lr.ph251 ], [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117249 = phi ptr [ %i.bt, %.lr.ph251 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119248 = phi i32 [ %i.bv, %.lr.ph251 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117249, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117249, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.aj = fmul fast <8 x float> %i.ad, splat (float 5.000000e-01)
  %i.ak = fadd fast <8 x float> %i.aj, splat (float 5.000000e-01)
  %i.al = fadd fast <8 x float> %i.ai, splat (float -1.000000e+00) ; 2 uses
  %i.am = fmul fast <8 x float> %i.al, %i.ak
  %i.an = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.am, <8 x float> zeroinitializer)
  %i.ao = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.al, <8 x float> nofpclass(nan inf) %i.an)
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !53
  %i.aq = sitofp fast i32 %i.ap to float
  %i.ar = insertelement <8 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <8 x float> %i.ar, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.at = fmul fast <8 x float> %i.ae, splat (float 5.000000e-01)
  %i.au = fadd fast <8 x float> %i.at, splat (float 5.000000e-01)
  %i.av = fadd fast <8 x float> %i.as, splat (float -1.000000e+00) ; 2 uses
  %i.aw = fmul fast <8 x float> %i.av, %i.au
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> zeroinitializer)
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> nofpclass(nan inf) %i.ax)
  %i.az = fadd fast <8 x float> %i.ao, splat (float 5.000000e-01)
  %i.ba = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.az, i32 1) ; 3 uses
  %i.bb = fadd fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.bc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bb, i32 1) ; 3 uses
  %i.bd = fcmp fast ogt <8 x float> %i.ba, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ai, %i.ba
  %i.bf = and <8 x i1> %i.bd, %i.be
  %i.bg = fcmp fast ogt <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bh = fcmp fast ogt <8 x float> %i.as, %i.bc
  %i.bi = and <8 x i1> %i.bg, %i.bh
  %i.bj = and <8 x i1> %i.bf, %i.bi
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.ba)
  %i.bl = load i32, ptr %i.p, align 8, !tbaa !13
  %i.bm = sitofp fast i32 %i.bl to float
  %i.bn = insertelement <8 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <8 x float> %i.bn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bp = fmul fast <8 x float> %i.bo, %i.bk
  %i.bq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bp)
  %i.br = bitcast <8 x i32> %i.bq to <8 x float>
  %i.bs = select <8 x i1> %i.bj, <8 x float> %i.br, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bs, ptr %.1250, align 1, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %.0117249, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1250, i64 32 ; 2 uses
  %i.bv = add nuw nsw i32 %.0119248, 16           ; 2 uses
  %i.bw = or disjoint i32 %i.bv, 15
  %i.bx = icmp slt i32 %i.bw, %i.e
  br i1 %i.bx, label %.lr.ph251, label %.preheader, !llvm.loop !220

.lr.ph258:                                        ; preds = %.preheader, %bb.b
  %.2257 = phi ptr [ %i.dc, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118256 = phi ptr [ %i.db, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120255 = phi i32 [ %i.dd, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.by = load <2 x float>, ptr %.1118256, align 4, !tbaa !66
  %i.bz = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 4 uses
  %i.ca = fmul fast <2 x float> %i.by, splat (float 5.000000e-01)
  %i.cb = fadd fast <2 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = add nsw <2 x i32> %i.bz, splat (i32 -1)
  %i.cd = sitofp <2 x i32> %i.cc to <2 x float>
  %i.ce = fmul fast <2 x float> %i.cb, %i.cd
  %i.cf = sitofp <2 x i32> %i.bz to <2 x float>
  %i.cg = fadd fast <2 x float> %i.cf, splat (float -1.000000e+00)
  %i.ch = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ce, <2 x float> zeroinitializer)
  %i.ci = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ch, <2 x float> %i.cg)
  %i.cj = fadd fast <2 x float> %i.ci, splat (float 5.000000e-01)
  %i.ck = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cj)
  %i.cl = fptosi <2 x float> %i.ck to <2 x i32>   ; 3 uses
  %i.cm = extractelement <2 x i32> %i.cl, i64 0   ; 2 uses
  %i.cn = extractelement <2 x i32> %i.cl, i64 1   ; 2 uses
  %i.co = or i32 %i.cn, %i.cm
  %i.cp = icmp sgt i32 %i.co, -1
  %i.cq = icmp sgt <2 x i32> %i.bz, %i.cl         ; 2 uses
  %i.cr = extractelement <2 x i1> %i.cq, i64 0
  %i.cs = and i1 %i.cr, %i.cp
  %i.ct = extractelement <2 x i1> %i.cq, i64 1
  %i.cu = and i1 %i.ct, %i.cs
  br i1 %i.cu, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph258
  %i.cv = extractelement <2 x i32> %i.bz, i64 0
  %i.cw = mul nuw nsw i32 %i.cv, %i.cn
  %i.cx = add nsw i32 %i.cw, %i.cm
  %i.cy = load i32, ptr %i.p, align 8, !tbaa !13
  %i.cz = mul nsw i32 %i.cy, %i.cx
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph258, %bb.a
  %i.da = phi i32 [ %i.cz, %bb.a ], [ -1, %.lr.ph258 ]
  store i32 %i.da, ptr %.2257, align 4, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %.1118256, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.2257, i64 4 ; 2 uses
  %i.dd = add nuw nsw i32 %.1120255, 2            ; 2 uses
  %i.de = icmp slt i32 %i.dd, %i.e
  br i1 %i.de, label %.lr.ph258, label %._crit_edge, !llvm.loop !221

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.dc, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.h, align 8, !tbaa !18
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !222

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.di = load ptr, ptr %1, align 8, !tbaa !24, !noalias !223 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !21, !noalias !226
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !20, !noalias !226
  %i.dn = mul i64 %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dn ; 2 uses
  %i.dp = icmp sgt i32 %i.e, 7
  br i1 %i.dp, label %.lr.ph, label %.preheader234

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader234.loopexit:                           ; preds = %bb.c
  %i.dt = and i32 %i.e, 2147483640
  br label %.preheader234

.preheader234:                                    ; preds = %.preheader234.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.di, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fn, %.preheader234.loopexit ]
  %.0112.lcssa = phi ptr [ %i.do, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fo, %.preheader234.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.dt, %.preheader234.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fp, %.preheader234.loopexit ]
  %i.du = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.du, label %.lr.ph247, label %.loopexit

.lr.ph247:                                        ; preds = %.preheader234
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3239 = phi ptr [ %i.f, %.lr.ph ], [ %i.fp, %bb.c ] ; 2 uses
  %.0110238 = phi i32 [ 0, %.lr.ph ], [ %i.fq, %bb.c ]
  %.0112237 = phi ptr [ %i.do, %.lr.ph ], [ %i.fo, %bb.c ] ; 2 uses
  %.0114236 = phi ptr [ %i.di, %.lr.ph ], [ %i.fn, %bb.c ] ; 2 uses
  %i.dx = load <8 x float>, ptr %.0114236, align 1, !tbaa !63
  %i.dy = load <8 x float>, ptr %.0112237, align 1, !tbaa !63
  %i.dz = load i32, ptr %i.dq, align 4, !tbaa !52
  %i.ea = sitofp fast i32 %i.dz to float
  %i.eb = insertelement <8 x float> poison, float %i.ea, i64 0
  %i.ec = shufflevector <8 x float> %i.eb, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ed = fmul fast <8 x float> %i.dx, splat (float 5.000000e-01)
  %i.ee = fadd fast <8 x float> %i.ed, splat (float 5.000000e-01)
  %i.ef = fadd fast <8 x float> %i.ec, splat (float -1.000000e+00) ; 2 uses
  %i.eg = fmul fast <8 x float> %i.ef, %i.ee
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eg, <8 x float> zeroinitializer)
  %i.ei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.eh)
  %i.ej = load i32, ptr %i.dr, align 8, !tbaa !53
  %i.ek = sitofp fast i32 %i.ej to float
  %i.el = insertelement <8 x float> poison, float %i.ek, i64 0
  %i.em = shufflevector <8 x float> %i.el, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.en = fmul fast <8 x float> %i.dy, splat (float 5.000000e-01)
  %i.eo = fadd fast <8 x float> %i.en, splat (float 5.000000e-01)
  %i.ep = fadd fast <8 x float> %i.em, splat (float -1.000000e+00) ; 2 uses
  %i.eq = fmul fast <8 x float> %i.ep, %i.eo
  %i.er = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eq, <8 x float> zeroinitializer)
  %i.es = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ep, <8 x float> nofpclass(nan inf) %i.er)
  %i.et = fadd fast <8 x float> %i.ei, splat (float 5.000000e-01)
  %i.eu = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.et, i32 1) ; 3 uses
  %i.ev = fadd fast <8 x float> %i.es, splat (float 5.000000e-01)
  %i.ew = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ev, i32 1) ; 3 uses
  %i.ex = fcmp fast ogt <8 x float> %i.eu, splat (float -1.000000e+00)
  %i.ey = fcmp fast ogt <8 x float> %i.ec, %i.eu
  %i.ez = and <8 x i1> %i.ex, %i.ey
  %i.fa = fcmp fast ogt <8 x float> %i.ew, splat (float -1.000000e+00)
  %i.fb = fcmp fast ogt <8 x float> %i.em, %i.ew
  %i.fc = and <8 x i1> %i.fa, %i.fb
  %i.fd = and <8 x i1> %i.ez, %i.fc
  %i.fe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %i.eu)
  %i.ff = load i32, ptr %i.ds, align 8, !tbaa !13
  %i.fg = sitofp fast i32 %i.ff to float
  %i.fh = insertelement <8 x float> poison, float %i.fg, i64 0
  %i.fi = shufflevector <8 x float> %i.fh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fj = fmul fast <8 x float> %i.fi, %i.fe
  %i.fk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fj)
  %i.fl = bitcast <8 x i32> %i.fk to <8 x float>
  %i.fm = select <8 x i1> %i.fd, <8 x float> %i.fl, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fm, ptr %.3239, align 1, !tbaa !63
  %i.fn = getelementptr inbounds nuw i8, ptr %.0114236, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0112237, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.3239, i64 32 ; 2 uses
  %i.fq = add nuw nsw i32 %.0110238, 8            ; 2 uses
  %i.fr = or disjoint i32 %i.fq, 7
  %i.fs = icmp slt i32 %i.fr, %i.e
  br i1 %i.fs, label %bb.c, label %.preheader234.loopexit, !llvm.loop !229

bb.d:                                             ; preds = %.lr.ph247, %bb.f
  %.4246 = phi ptr [ %.3.lcssa, %.lr.ph247 ], [ %i.hb, %bb.f ] ; 2 uses
  %.1111245 = phi i32 [ %.0110.lcssa, %.lr.ph247 ], [ %i.hc, %bb.f ]
  %.1113244 = phi ptr [ %.0112.lcssa, %.lr.ph247 ], [ %i.ha, %bb.f ] ; 2 uses
  %.1115243 = phi ptr [ %.0114.lcssa, %.lr.ph247 ], [ %i.gz, %bb.f ] ; 2 uses
  %i.ft = load float, ptr %.1115243, align 4, !tbaa !66
  %i.fu = load float, ptr %.1113244, align 4, !tbaa !66
  %i.fv = load <2 x i32>, ptr %i.dv, align 4, !tbaa !29 ; 4 uses
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fu, i64 1
  %i.fy = fmul fast <2 x float> %i.fx, splat (float 5.000000e-01)
  %i.fz = fadd fast <2 x float> %i.fy, splat (float 5.000000e-01)
  %i.ga = add nsw <2 x i32> %i.fv, splat (i32 -1)
  %i.gb = sitofp <2 x i32> %i.ga to <2 x float>
  %i.gc = fmul fast <2 x float> %i.fz, %i.gb
  %i.gd = sitofp <2 x i32> %i.fv to <2 x float>
  %i.ge = fadd fast <2 x float> %i.gd, splat (float -1.000000e+00)
  %i.gf = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gc, <2 x float> zeroinitializer)
  %i.gg = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gf, <2 x float> %i.ge)
  %i.gh = fadd fast <2 x float> %i.gg, splat (float 5.000000e-01)
  %i.gi = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gh)
  %i.gj = fptosi <2 x float> %i.gi to <2 x i32>   ; 3 uses
  %i.gk = extractelement <2 x i32> %i.gj, i64 0   ; 2 uses
  %i.gl = extractelement <2 x i32> %i.gj, i64 1   ; 2 uses
  %i.gm = or i32 %i.gl, %i.gk
  %i.gn = icmp sgt i32 %i.gm, -1
  %i.go = icmp sgt <2 x i32> %i.fv, %i.gj         ; 2 uses
  %i.gp = extractelement <2 x i1> %i.go, i64 0
  %i.gq = and i1 %i.gp, %i.gn
  %i.gr = extractelement <2 x i1> %i.go, i64 1
  %i.gs = and i1 %i.gr, %i.gq
  br i1 %i.gs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gt = extractelement <2 x i32> %i.fv, i64 0
  %i.gu = mul nuw nsw i32 %i.gt, %i.gl
  %i.gv = add nsw i32 %i.gu, %i.gk
  %i.gw = load i32, ptr %i.dw, align 8, !tbaa !13
  %i.gx = mul nsw i32 %i.gw, %i.gv
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gy = phi i32 [ %i.gx, %bb.e ], [ -1, %bb.d ]
  store i32 %i.gy, ptr %.4246, align 4, !tbaa !29
  %i.gz = getelementptr inbounds nuw i8, ptr %.1115243, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %.1113244, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.4246, i64 4
  %i.hc = add nuw nsw i32 %.1111245, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hc, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !230

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader234, %.preheader233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !231 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader240, label %_ZN4ncnn3MatD2Ev.exit121

.preheader240:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader240
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0268 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !234
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !234
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !234
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph258, label %.preheader

.preheader:                                       ; preds = %.lr.ph258, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph258 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.cf, %.lr.ph258 ]
  %.1.lcssa = phi ptr [ %.0268, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.cg, %.lr.ph258 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph265, label %._crit_edge

.lr.ph258:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph258
  %.1257 = phi ptr [ %i.cg, %.lr.ph258 ], [ %.0268, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117256 = phi ptr [ %i.cf, %.lr.ph258 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119255 = phi i32 [ %i.ch, %.lr.ph258 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117256, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117256, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.aj = fadd fast <8 x float> %i.ad, splat (float 1.000000e+00)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> splat (float -1.000000e+00))
  %i.al = fmul fast <8 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = fadd fast <8 x float> %i.ai, splat (float -1.000000e+00)
  %i.an = fadd fast <8 x float> %i.al, splat (float 5.000000e-01)
  %i.ao = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.an)
  %i.ap = fsub fast <8 x float> %i.ao, %i.ai
  %i.aq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ap)
  %i.ar = fadd fast <8 x float> %i.ai, splat (float -5.000000e-01)
  %i.as = fsub fast <8 x float> %i.ar, %i.aq
  %i.at = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> zeroinitializer)
  %i.au = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.am, <8 x float> nofpclass(nan inf) %i.at)
  %i.av = load i32, ptr %i.o, align 8, !tbaa !53
  %i.aw = sitofp fast i32 %i.av to float
  %i.ax = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.az = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00)
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.ay, <8 x float> splat (float -1.000000e+00))
  %i.bb = fmul fast <8 x float> %i.ba, splat (float 5.000000e-01)
  %i.bc = fadd fast <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bd = fadd fast <8 x float> %i.bb, splat (float 5.000000e-01)
  %i.be = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bd)
  %i.bf = fsub fast <8 x float> %i.be, %i.ay
  %i.bg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bf)
  %i.bh = fadd fast <8 x float> %i.ay, splat (float -5.000000e-01)
  %i.bi = fsub fast <8 x float> %i.bh, %i.bg
  %i.bj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> zeroinitializer)
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.bj)
  %i.bl = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.bm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bl, i32 1) ; 3 uses
  %i.bn = fadd fast <8 x float> %i.bk, splat (float 5.000000e-01)
  %i.bo = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bn, i32 1) ; 3 uses
  %i.bp = fcmp fast ogt <8 x float> %i.bm, splat (float -1.000000e+00)
  %i.bq = fcmp fast ogt <8 x float> %i.ai, %i.bm
  %i.br = and <8 x i1> %i.bp, %i.bq
  %i.bs = fcmp fast ogt <8 x float> %i.bo, splat (float -1.000000e+00)
  %i.bt = fcmp fast ogt <8 x float> %i.ay, %i.bo
  %i.bu = and <8 x i1> %i.bs, %i.bt
  %i.bv = and <8 x i1> %i.br, %i.bu
  %i.bw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bo, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.bm)
  %i.bx = load i32, ptr %i.p, align 8, !tbaa !13
  %i.by = sitofp fast i32 %i.bx to float
  %i.bz = insertelement <8 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <8 x float> %i.bz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cb = fmul fast <8 x float> %i.ca, %i.bw
  %i.cc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cb)
  %i.cd = bitcast <8 x i32> %i.cc to <8 x float>
  %i.ce = select <8 x i1> %i.bv, <8 x float> %i.cd, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.ce, ptr %.1257, align 1, !tbaa !63
  %i.cf = getelementptr inbounds nuw i8, ptr %.0117256, i64 64 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1257, i64 32 ; 2 uses
  %i.ch = add nuw nsw i32 %.0119255, 16           ; 2 uses
  %i.ci = or disjoint i32 %i.ch, 15
  %i.cj = icmp slt i32 %i.ci, %i.e
  br i1 %i.cj, label %.lr.ph258, label %.preheader, !llvm.loop !237

.lr.ph265:                                        ; preds = %.preheader, %bb.b
  %.2264 = phi ptr [ %i.dr, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118263 = phi ptr [ %i.dq, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120262 = phi i32 [ %i.ds, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.ck = load <2 x float>, ptr %.1118263, align 4, !tbaa !66
  %i.cl = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 3 uses
  %i.cm = sitofp <2 x i32> %i.cl to <2 x float>   ; 4 uses
  %i.cn = fmul fast <2 x float> %i.ck, splat (float 5.000000e-01)
  %i.co = fadd fast <2 x float> %i.cn, splat (float 5.000000e-01)
  %i.cp = fmul fast <2 x float> %i.co, %i.cm
  %i.cq = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cp)
  %i.cr = fsub fast <2 x float> %i.cq, %i.cm
  %i.cs = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cr)
  %i.ct = fadd fast <2 x float> %i.cm, splat (float -5.000000e-01)
  %i.cu = fsub fast <2 x float> %i.ct, %i.cs
  %i.cv = fadd fast <2 x float> %i.cm, splat (float -1.000000e+00)
  %i.cw = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cu, <2 x float> zeroinitializer)
  %i.cx = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cw, <2 x float> %i.cv)
  %i.cy = fadd fast <2 x float> %i.cx, splat (float 5.000000e-01)
  %i.cz = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cy)
  %i.da = fptosi <2 x float> %i.cz to <2 x i32>   ; 3 uses
  %i.db = extractelement <2 x i32> %i.da, i64 0   ; 2 uses
  %i.dc = extractelement <2 x i32> %i.da, i64 1   ; 2 uses
  %i.dd = or i32 %i.dc, %i.db
  %i.de = icmp sgt i32 %i.dd, -1
  %i.df = icmp sgt <2 x i32> %i.cl, %i.da         ; 2 uses
  %i.dg = extractelement <2 x i1> %i.df, i64 0
  %i.dh = and i1 %i.dg, %i.de
  %i.di = extractelement <2 x i1> %i.df, i64 1
  %i.dj = and i1 %i.di, %i.dh
  br i1 %i.dj, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph265
  %i.dk = extractelement <2 x i32> %i.cl, i64 0
  %i.dl = mul nuw nsw i32 %i.dk, %i.dc
  %i.dm = add nsw i32 %i.dl, %i.db
  %i.dn = load i32, ptr %i.p, align 8, !tbaa !13
  %i.do = mul nsw i32 %i.dn, %i.dm
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph265, %bb.a
  %i.dp = phi i32 [ %i.do, %bb.a ], [ -1, %.lr.ph265 ]
  store i32 %i.dp, ptr %.2264, align 4, !tbaa !29
  %i.dq = getelementptr inbounds nuw i8, ptr %.1118263, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.2264, i64 4 ; 2 uses
  %i.ds = add nuw nsw i32 %.1120262, 2            ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.e
  br i1 %i.dt, label %.lr.ph265, label %._crit_edge, !llvm.loop !238

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.dr, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.du = load i32, ptr %i.h, align 8, !tbaa !18
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next, %i.dv
  br i1 %i.dw, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !239

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.dx = load ptr, ptr %1, align 8, !tbaa !24, !noalias !240 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !21, !noalias !243
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !20, !noalias !243
  %i.ec = mul i64 %i.eb, %i.ea
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ec ; 2 uses
  %i.ee = icmp sgt i32 %i.e, 7
  br i1 %i.ee, label %.lr.ph, label %.preheader241

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader241.loopexit:                           ; preds = %bb.c
  %i.ei = and i32 %i.e, 2147483640
  br label %.preheader241

.preheader241:                                    ; preds = %.preheader241.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.dx, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.go, %.preheader241.loopexit ]
  %.0112.lcssa = phi ptr [ %i.ed, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gp, %.preheader241.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ei, %.preheader241.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gq, %.preheader241.loopexit ]
  %i.ej = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.ej, label %.lr.ph254, label %.loopexit

.lr.ph254:                                        ; preds = %.preheader241
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3246 = phi ptr [ %i.f, %.lr.ph ], [ %i.gq, %bb.c ] ; 2 uses
  %.0110245 = phi i32 [ 0, %.lr.ph ], [ %i.gr, %bb.c ]
  %.0112244 = phi ptr [ %i.ed, %.lr.ph ], [ %i.gp, %bb.c ] ; 2 uses
  %.0114243 = phi ptr [ %i.dx, %.lr.ph ], [ %i.go, %bb.c ] ; 2 uses
  %i.em = load <8 x float>, ptr %.0114243, align 1, !tbaa !63
  %i.en = load <8 x float>, ptr %.0112244, align 1, !tbaa !63
  %i.eo = load i32, ptr %i.ef, align 4, !tbaa !52
  %i.ep = sitofp fast i32 %i.eo to float
  %i.eq = insertelement <8 x float> poison, float %i.ep, i64 0
  %i.er = shufflevector <8 x float> %i.eq, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.es = fadd fast <8 x float> %i.em, splat (float 1.000000e+00)
  %i.et = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.es, <8 x float> nofpclass(nan inf) %i.er, <8 x float> splat (float -1.000000e+00))
  %i.eu = fmul fast <8 x float> %i.et, splat (float 5.000000e-01)
  %i.ev = fadd fast <8 x float> %i.er, splat (float -1.000000e+00)
  %i.ew = fadd fast <8 x float> %i.eu, splat (float 5.000000e-01)
  %i.ex = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ew)
  %i.ey = fsub fast <8 x float> %i.ex, %i.er
  %i.ez = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ey)
  %i.fa = fadd fast <8 x float> %i.er, splat (float -5.000000e-01)
  %i.fb = fsub fast <8 x float> %i.fa, %i.ez
  %i.fc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fb, <8 x float> zeroinitializer)
  %i.fd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ev, <8 x float> nofpclass(nan inf) %i.fc)
  %i.fe = load i32, ptr %i.eg, align 8, !tbaa !53
  %i.ff = sitofp fast i32 %i.fe to float
  %i.fg = insertelement <8 x float> poison, float %i.ff, i64 0
  %i.fh = shufflevector <8 x float> %i.fg, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.fi = fadd fast <8 x float> %i.en, splat (float 1.000000e+00)
  %i.fj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) %i.fh, <8 x float> splat (float -1.000000e+00))
  %i.fk = fmul fast <8 x float> %i.fj, splat (float 5.000000e-01)
  %i.fl = fadd fast <8 x float> %i.fh, splat (float -1.000000e+00)
  %i.fm = fadd fast <8 x float> %i.fk, splat (float 5.000000e-01)
  %i.fn = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fm)
  %i.fo = fsub fast <8 x float> %i.fn, %i.fh
  %i.fp = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fo)
  %i.fq = fadd fast <8 x float> %i.fh, splat (float -5.000000e-01)
  %i.fr = fsub fast <8 x float> %i.fq, %i.fp
  %i.fs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fr, <8 x float> zeroinitializer)
  %i.ft = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fl, <8 x float> nofpclass(nan inf) %i.fs)
  %i.fu = fadd fast <8 x float> %i.fd, splat (float 5.000000e-01)
  %i.fv = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fu, i32 1) ; 3 uses
  %i.fw = fadd fast <8 x float> %i.ft, splat (float 5.000000e-01)
  %i.fx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fw, i32 1) ; 3 uses
  %i.fy = fcmp fast ogt <8 x float> %i.fv, splat (float -1.000000e+00)
  %i.fz = fcmp fast ogt <8 x float> %i.er, %i.fv
  %i.ga = and <8 x i1> %i.fy, %i.fz
  %i.gb = fcmp fast ogt <8 x float> %i.fx, splat (float -1.000000e+00)
  %i.gc = fcmp fast ogt <8 x float> %i.fh, %i.fx
  %i.gd = and <8 x i1> %i.gb, %i.gc
  %i.ge = and <8 x i1> %i.ga, %i.gd
  %i.gf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fx, <8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.fv)
  %i.gg = load i32, ptr %i.eh, align 8, !tbaa !13
  %i.gh = sitofp fast i32 %i.gg to float
  %i.gi = insertelement <8 x float> poison, float %i.gh, i64 0
  %i.gj = shufflevector <8 x float> %i.gi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gk = fmul fast <8 x float> %i.gj, %i.gf
  %i.gl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gk)
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>
  %i.gn = select <8 x i1> %i.ge, <8 x float> %i.gm, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.gn, ptr %.3246, align 1, !tbaa !63
  %i.go = getelementptr inbounds nuw i8, ptr %.0114243, i64 32 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0112244, i64 32 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.3246, i64 32 ; 2 uses
  %i.gr = add nuw nsw i32 %.0110245, 8            ; 2 uses
  %i.gs = or disjoint i32 %i.gr, 7
  %i.gt = icmp slt i32 %i.gs, %i.e
  br i1 %i.gt, label %bb.c, label %.preheader241.loopexit, !llvm.loop !246

bb.d:                                             ; preds = %.lr.ph254, %bb.f
  %.4253 = phi ptr [ %.3.lcssa, %.lr.ph254 ], [ %i.if, %bb.f ] ; 2 uses
  %.1111252 = phi i32 [ %.0110.lcssa, %.lr.ph254 ], [ %i.ig, %bb.f ]
  %.1113251 = phi ptr [ %.0112.lcssa, %.lr.ph254 ], [ %i.ie, %bb.f ] ; 2 uses
  %.1115250 = phi ptr [ %.0114.lcssa, %.lr.ph254 ], [ %i.id, %bb.f ] ; 2 uses
  %i.gu = load float, ptr %.1115250, align 4, !tbaa !66
  %i.gv = load float, ptr %.1113251, align 4, !tbaa !66
  %i.gw = load <2 x i32>, ptr %i.ek, align 4, !tbaa !29 ; 3 uses
  %i.gx = sitofp <2 x i32> %i.gw to <2 x float>   ; 4 uses
  %i.gy = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.gz = insertelement <2 x float> %i.gy, float %i.gv, i64 1
  %i.ha = fmul fast <2 x float> %i.gz, splat (float 5.000000e-01)
  %i.hb = fadd fast <2 x float> %i.ha, splat (float 5.000000e-01)
  %i.hc = fmul fast <2 x float> %i.hb, %i.gx
  %i.hd = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hc)
  %i.he = fsub fast <2 x float> %i.hd, %i.gx
  %i.hf = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.he)
  %i.hg = fadd fast <2 x float> %i.gx, splat (float -5.000000e-01)
  %i.hh = fsub fast <2 x float> %i.hg, %i.hf
  %i.hi = fadd fast <2 x float> %i.gx, splat (float -1.000000e+00)
  %i.hj = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hh, <2 x float> zeroinitializer)
  %i.hk = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hj, <2 x float> %i.hi)
  %i.hl = fadd fast <2 x float> %i.hk, splat (float 5.000000e-01)
  %i.hm = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.hl)
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>   ; 3 uses
  %i.ho = extractelement <2 x i32> %i.hn, i64 0   ; 2 uses
  %i.hp = extractelement <2 x i32> %i.hn, i64 1   ; 2 uses
  %i.hq = or i32 %i.hp, %i.ho
  %i.hr = icmp sgt i32 %i.hq, -1
  %i.hs = icmp sgt <2 x i32> %i.gw, %i.hn         ; 2 uses
  %i.ht = extractelement <2 x i1> %i.hs, i64 0
  %i.hu = and i1 %i.ht, %i.hr
  %i.hv = extractelement <2 x i1> %i.hs, i64 1
  %i.hw = and i1 %i.hv, %i.hu
  br i1 %i.hw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.hx = extractelement <2 x i32> %i.gw, i64 0
  %i.hy = mul nuw nsw i32 %i.hx, %i.hp
  %i.hz = add nsw i32 %i.hy, %i.ho
  %i.ia = load i32, ptr %i.el, align 8, !tbaa !13
  %i.ib = mul nsw i32 %i.ia, %i.hz
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ic = phi i32 [ %i.ib, %bb.e ], [ -1, %bb.d ]
  store i32 %i.ic, ptr %.4253, align 4, !tbaa !29
  %i.id = getelementptr inbounds nuw i8, ptr %.1115250, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %.1113251, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.4253, i64 4
  %i.ig = add nuw nsw i32 %.1111252, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ig, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !247

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader241, %.preheader240
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !248 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader236, label %_ZN4ncnn3MatD2Ev.exit121

.preheader236:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader236
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0264 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !251
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !251
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !251
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph254, label %.preheader

.preheader:                                       ; preds = %.lr.ph254, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph254 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bx, %.lr.ph254 ]
  %.1.lcssa = phi ptr [ %.0264, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.by, %.lr.ph254 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph261, label %._crit_edge

.lr.ph254:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph254
  %.1253 = phi ptr [ %i.by, %.lr.ph254 ], [ %.0264, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117252 = phi ptr [ %i.bx, %.lr.ph254 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119251 = phi i32 [ %i.bz, %.lr.ph254 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117252, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117252, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.aj = fmul fast <8 x float> %i.ad, splat (float 5.000000e-01)
  %i.ak = fadd fast <8 x float> %i.aj, splat (float 5.000000e-01)
  %i.al = fadd fast <8 x float> %i.ai, splat (float -1.000000e+00) ; 2 uses
  %i.am = fmul fast <8 x float> %i.al, %i.ak
  %i.an = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.am)
  %i.ao = fsub fast <8 x float> %i.an, %i.al
  %i.ap = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ao)
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !53
  %i.ar = sitofp fast i32 %i.aq to float
  %i.as = insertelement <8 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <8 x float> %i.as, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.au = fmul fast <8 x float> %i.ae, splat (float 5.000000e-01)
  %i.av = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fadd fast <8 x float> %i.at, splat (float -1.000000e+00) ; 2 uses
  %i.ax = fmul fast <8 x float> %i.aw, %i.av
  %i.ay = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ax)
  %i.az = fsub fast <8 x float> %i.ay, %i.aw
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.az)
  %i.bb = fadd fast <8 x float> %i.ai, splat (float -5.000000e-01)
  %i.bc = fsub fast <8 x float> %i.bb, %i.ap
  %i.bd = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bc, i32 1) ; 3 uses
  %i.be = fadd fast <8 x float> %i.at, splat (float -5.000000e-01)
  %i.bf = fsub fast <8 x float> %i.be, %i.ba
  %i.bg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bf, i32 1) ; 3 uses
  %i.bh = fcmp fast ogt <8 x float> %i.bd, splat (float -1.000000e+00)
  %i.bi = fcmp fast ogt <8 x float> %i.ai, %i.bd
  %i.bj = and <8 x i1> %i.bh, %i.bi
  %i.bk = fcmp fast ogt <8 x float> %i.bg, splat (float -1.000000e+00)
  %i.bl = fcmp fast ogt <8 x float> %i.at, %i.bg
  %i.bm = and <8 x i1> %i.bk, %i.bl
  %i.bn = and <8 x i1> %i.bj, %i.bm
  %i.bo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.bd)
  %i.bp = load i32, ptr %i.p, align 8, !tbaa !13
  %i.bq = sitofp fast i32 %i.bp to float
  %i.br = insertelement <8 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bt = fmul fast <8 x float> %i.bs, %i.bo
  %i.bu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bt)
  %i.bv = bitcast <8 x i32> %i.bu to <8 x float>
  %i.bw = select <8 x i1> %i.bn, <8 x float> %i.bv, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bw, ptr %.1253, align 1, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %.0117252, i64 64 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1253, i64 32 ; 2 uses
  %i.bz = add nuw nsw i32 %.0119251, 16           ; 2 uses
  %i.ca = or disjoint i32 %i.bz, 15
  %i.cb = icmp slt i32 %i.ca, %i.e
  br i1 %i.cb, label %.lr.ph254, label %.preheader, !llvm.loop !254

.lr.ph261:                                        ; preds = %.preheader, %bb.b
  %.2260 = phi ptr [ %i.dk, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118259 = phi ptr [ %i.dj, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120258 = phi i32 [ %i.dl, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.cc = load <2 x float>, ptr %.1118259, align 4, !tbaa !66
  %i.cd = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 4 uses
  %i.ce = fmul fast <2 x float> %i.cc, splat (float 5.000000e-01)
  %i.cf = fadd fast <2 x float> %i.ce, splat (float 5.000000e-01)
  %i.cg = add nsw <2 x i32> %i.cd, splat (i32 -1)
  %i.ch = sitofp <2 x i32> %i.cg to <2 x float>   ; 3 uses
  %i.ci = fmul fast <2 x float> %i.cf, %i.ch
  %i.cj = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ci)
  %i.ck = fsub fast <2 x float> %i.cj, %i.ch
  %i.cl = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ck)
  %i.cm = fsub fast <2 x float> %i.ch, %i.cl
  %i.cn = sitofp <2 x i32> %i.cd to <2 x float>
  %i.co = fadd fast <2 x float> %i.cn, splat (float -1.000000e+00)
  %i.cp = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cm, <2 x float> zeroinitializer)
  %i.cq = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cp, <2 x float> %i.co)
  %i.cr = fadd fast <2 x float> %i.cq, splat (float 5.000000e-01)
  %i.cs = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cr)
  %i.ct = fptosi <2 x float> %i.cs to <2 x i32>   ; 3 uses
  %i.cu = extractelement <2 x i32> %i.ct, i64 0   ; 2 uses
  %i.cv = extractelement <2 x i32> %i.ct, i64 1   ; 2 uses
  %i.cw = or i32 %i.cv, %i.cu
  %i.cx = icmp sgt i32 %i.cw, -1
  %i.cy = icmp sgt <2 x i32> %i.cd, %i.ct         ; 2 uses
  %i.cz = extractelement <2 x i1> %i.cy, i64 0
  %i.da = and i1 %i.cz, %i.cx
  %i.db = extractelement <2 x i1> %i.cy, i64 1
  %i.dc = and i1 %i.db, %i.da
  br i1 %i.dc, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph261
  %i.dd = extractelement <2 x i32> %i.cd, i64 0
  %i.de = mul nuw nsw i32 %i.dd, %i.cv
  %i.df = add nsw i32 %i.de, %i.cu
  %i.dg = load i32, ptr %i.p, align 8, !tbaa !13
  %i.dh = mul nsw i32 %i.dg, %i.df
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph261, %bb.a
  %i.di = phi i32 [ %i.dh, %bb.a ], [ -1, %.lr.ph261 ]
  store i32 %i.di, ptr %.2260, align 4, !tbaa !29
  %i.dj = getelementptr inbounds nuw i8, ptr %.1118259, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.2260, i64 4 ; 2 uses
  %i.dl = add nuw nsw i32 %.1120258, 2            ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.e
  br i1 %i.dm, label %.lr.ph261, label %._crit_edge, !llvm.loop !255

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.dk, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = load i32, ptr %i.h, align 8, !tbaa !18
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next, %i.do
  br i1 %i.dp, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !256

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.dq = load ptr, ptr %1, align 8, !tbaa !24, !noalias !257 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !21, !noalias !260
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !20, !noalias !260
  %i.dv = mul i64 %i.du, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dv ; 2 uses
  %i.dx = icmp sgt i32 %i.e, 7
  br i1 %i.dx, label %.lr.ph, label %.preheader237

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader237.loopexit:                           ; preds = %bb.c
  %i.eb = and i32 %i.e, 2147483640
  br label %.preheader237

.preheader237:                                    ; preds = %.preheader237.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.dq, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fz, %.preheader237.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dw, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ga, %.preheader237.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.eb, %.preheader237.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gb, %.preheader237.loopexit ]
  %i.ec = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.ec, label %.lr.ph250, label %.loopexit

.lr.ph250:                                        ; preds = %.preheader237
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3242 = phi ptr [ %i.f, %.lr.ph ], [ %i.gb, %bb.c ] ; 2 uses
  %.0110241 = phi i32 [ 0, %.lr.ph ], [ %i.gc, %bb.c ]
  %.0112240 = phi ptr [ %i.dw, %.lr.ph ], [ %i.ga, %bb.c ] ; 2 uses
  %.0114239 = phi ptr [ %i.dq, %.lr.ph ], [ %i.fz, %bb.c ] ; 2 uses
  %i.ef = load <8 x float>, ptr %.0114239, align 1, !tbaa !63
  %i.eg = load <8 x float>, ptr %.0112240, align 1, !tbaa !63
  %i.eh = load i32, ptr %i.dy, align 4, !tbaa !52
  %i.ei = sitofp fast i32 %i.eh to float
  %i.ej = insertelement <8 x float> poison, float %i.ei, i64 0
  %i.ek = shufflevector <8 x float> %i.ej, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.el = fmul fast <8 x float> %i.ef, splat (float 5.000000e-01)
  %i.em = fadd fast <8 x float> %i.el, splat (float 5.000000e-01)
  %i.en = fadd fast <8 x float> %i.ek, splat (float -1.000000e+00) ; 2 uses
  %i.eo = fmul fast <8 x float> %i.en, %i.em
  %i.ep = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.eo)
  %i.eq = fsub fast <8 x float> %i.ep, %i.en
  %i.er = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eq)
  %i.es = load i32, ptr %i.dz, align 8, !tbaa !53
  %i.et = sitofp fast i32 %i.es to float
  %i.eu = insertelement <8 x float> poison, float %i.et, i64 0
  %i.ev = shufflevector <8 x float> %i.eu, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ew = fmul fast <8 x float> %i.eg, splat (float 5.000000e-01)
  %i.ex = fadd fast <8 x float> %i.ew, splat (float 5.000000e-01)
  %i.ey = fadd fast <8 x float> %i.ev, splat (float -1.000000e+00) ; 2 uses
  %i.ez = fmul fast <8 x float> %i.ey, %i.ex
  %i.fa = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ez)
  %i.fb = fsub fast <8 x float> %i.fa, %i.ey
  %i.fc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fb)
  %i.fd = fadd fast <8 x float> %i.ek, splat (float -5.000000e-01)
  %i.fe = fsub fast <8 x float> %i.fd, %i.er
  %i.ff = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fe, i32 1) ; 3 uses
  %i.fg = fadd fast <8 x float> %i.ev, splat (float -5.000000e-01)
  %i.fh = fsub fast <8 x float> %i.fg, %i.fc
  %i.fi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fh, i32 1) ; 3 uses
  %i.fj = fcmp fast ogt <8 x float> %i.ff, splat (float -1.000000e+00)
  %i.fk = fcmp fast ogt <8 x float> %i.ek, %i.ff
  %i.fl = and <8 x i1> %i.fj, %i.fk
  %i.fm = fcmp fast ogt <8 x float> %i.fi, splat (float -1.000000e+00)
  %i.fn = fcmp fast ogt <8 x float> %i.ev, %i.fi
  %i.fo = and <8 x i1> %i.fm, %i.fn
  %i.fp = and <8 x i1> %i.fl, %i.fo
  %i.fq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) %i.ek, <8 x float> nofpclass(nan inf) %i.ff)
  %i.fr = load i32, ptr %i.ea, align 8, !tbaa !13
  %i.fs = sitofp fast i32 %i.fr to float
  %i.ft = insertelement <8 x float> poison, float %i.fs, i64 0
  %i.fu = shufflevector <8 x float> %i.ft, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fv = fmul fast <8 x float> %i.fu, %i.fq
  %i.fw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fv)
  %i.fx = bitcast <8 x i32> %i.fw to <8 x float>
  %i.fy = select <8 x i1> %i.fp, <8 x float> %i.fx, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fy, ptr %.3242, align 1, !tbaa !63
  %i.fz = getelementptr inbounds nuw i8, ptr %.0114239, i64 32 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0112240, i64 32 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.3242, i64 32 ; 2 uses
  %i.gc = add nuw nsw i32 %.0110241, 8            ; 2 uses
  %i.gd = or disjoint i32 %i.gc, 7
  %i.ge = icmp slt i32 %i.gd, %i.e
  br i1 %i.ge, label %bb.c, label %.preheader237.loopexit, !llvm.loop !263

bb.d:                                             ; preds = %.lr.ph250, %bb.f
  %.4249 = phi ptr [ %.3.lcssa, %.lr.ph250 ], [ %i.hr, %bb.f ] ; 2 uses
  %.1111248 = phi i32 [ %.0110.lcssa, %.lr.ph250 ], [ %i.hs, %bb.f ]
  %.1113247 = phi ptr [ %.0112.lcssa, %.lr.ph250 ], [ %i.hq, %bb.f ] ; 2 uses
  %.1115246 = phi ptr [ %.0114.lcssa, %.lr.ph250 ], [ %i.hp, %bb.f ] ; 2 uses
  %i.gf = load float, ptr %.1115246, align 4, !tbaa !66
  %i.gg = load float, ptr %.1113247, align 4, !tbaa !66
  %i.gh = load <2 x i32>, ptr %i.ed, align 4, !tbaa !29 ; 4 uses
  %i.gi = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gg, i64 1
  %i.gk = fmul fast <2 x float> %i.gj, splat (float 5.000000e-01)
  %i.gl = fadd fast <2 x float> %i.gk, splat (float 5.000000e-01)
  %i.gm = add nsw <2 x i32> %i.gh, splat (i32 -1)
  %i.gn = sitofp <2 x i32> %i.gm to <2 x float>   ; 3 uses
  %i.go = fmul fast <2 x float> %i.gl, %i.gn
  %i.gp = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.go)
  %i.gq = fsub fast <2 x float> %i.gp, %i.gn
  %i.gr = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gq)
  %i.gs = fsub fast <2 x float> %i.gn, %i.gr
  %i.gt = sitofp <2 x i32> %i.gh to <2 x float>
  %i.gu = fadd fast <2 x float> %i.gt, splat (float -1.000000e+00)
  %i.gv = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gs, <2 x float> zeroinitializer)
  %i.gw = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gv, <2 x float> %i.gu)
  %i.gx = fadd fast <2 x float> %i.gw, splat (float 5.000000e-01)
  %i.gy = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gx)
  %i.gz = fptosi <2 x float> %i.gy to <2 x i32>   ; 3 uses
  %i.ha = extractelement <2 x i32> %i.gz, i64 0   ; 2 uses
  %i.hb = extractelement <2 x i32> %i.gz, i64 1   ; 2 uses
  %i.hc = or i32 %i.hb, %i.ha
  %i.hd = icmp sgt i32 %i.hc, -1
  %i.he = icmp sgt <2 x i32> %i.gh, %i.gz         ; 2 uses
  %i.hf = extractelement <2 x i1> %i.he, i64 0
  %i.hg = and i1 %i.hf, %i.hd
  %i.hh = extractelement <2 x i1> %i.he, i64 1
  %i.hi = and i1 %i.hh, %i.hg
  br i1 %i.hi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.hj = extractelement <2 x i32> %i.gh, i64 0
  %i.hk = mul nuw nsw i32 %i.hj, %i.hb
  %i.hl = add nsw i32 %i.hk, %i.ha
  %i.hm = load i32, ptr %i.ee, align 8, !tbaa !13
  %i.hn = mul nsw i32 %i.hm, %i.hl
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ho = phi i32 [ %i.hn, %bb.e ], [ -1, %bb.d ]
  store i32 %i.ho, ptr %.4249, align 4, !tbaa !29
  %i.hp = getelementptr inbounds nuw i8, ptr %.1115246, i64 4
  %i.hq = getelementptr inbounds nuw i8, ptr %.1113247, i64 4
  %i.hr = getelementptr inbounds nuw i8, ptr %.4249, i64 4
  %i.hs = add nuw nsw i32 %.1111248, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hs, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !264

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader237, %.preheader236
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24, !noalias !265 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader492, label %_ZN4ncnn3MatD2Ev.exit397

.preheader492:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader492
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380536 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !24, !noalias !268
  %i.s = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !268
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !268
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph520, label %.preheader

.preheader:                                       ; preds = %.lr.ph520, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.in, %.lr.ph520 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph520 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.im, %.lr.ph520 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph533, label %._crit_edge

.lr.ph520:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph520
  %.1519 = phi ptr [ %i.im, %.lr.ph520 ], [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393518 = phi i32 [ %i.io, %.lr.ph520 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395517 = phi ptr [ %i.in, %.lr.ph520 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395517, align 1, !tbaa !63 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395517, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !63 ; 2 uses
  %i.ab = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ac = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ae = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.af = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ag = sitofp fast i32 %i.af to float
  %i.ah = insertelement <8 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <8 x float> %i.ah, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.aj = fadd fast <8 x float> %i.ad, splat (float 1.000000e+00)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ai, <8 x float> splat (float -1.000000e+00))
  %i.al = fmul fast <8 x float> %i.ak, splat (float 5.000000e-01) ; 2 uses
  %i.am = load i32, ptr %i.o, align 8, !tbaa !53
  %i.an = sitofp fast i32 %i.am to float
  %i.ao = insertelement <8 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <8 x float> %i.ao, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.aq = fadd fast <8 x float> %i.ae, splat (float 1.000000e+00)
  %i.ar = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.ap, <8 x float> splat (float -1.000000e+00))
  %i.as = fmul fast <8 x float> %i.ar, splat (float 5.000000e-01) ; 2 uses
  %i.at = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.al, i32 1) ; 10 uses
  %i.au = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.as, i32 1) ; 7 uses
  %i.av = fadd fast <8 x float> %i.at, splat (float -1.000000e+00) ; 6 uses
  %i.aw = fadd fast <8 x float> %i.at, splat (float 1.000000e+00) ; 6 uses
  %i.ax = fadd fast <8 x float> %i.at, splat (float 2.000000e+00) ; 6 uses
  %i.ay = fcmp fast ogt <8 x float> %i.av, splat (float -1.000000e+00)
  %i.az = fcmp fast ogt <8 x float> %i.ai, %i.av
  %i.ba = and <8 x i1> %i.ay, %i.az               ; 4 uses
  %i.bb = fcmp fast ogt <8 x float> %i.at, splat (float -1.000000e+00)
  %i.bc = fcmp fast ogt <8 x float> %i.ai, %i.at
  %i.bd = and <8 x i1> %i.bb, %i.bc               ; 4 uses
  %i.be = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.bf = fcmp fast ogt <8 x float> %i.ai, %i.aw
  %i.bg = and <8 x i1> %i.be, %i.bf               ; 4 uses
  %i.bh = fcmp fast ogt <8 x float> %i.ax, splat (float -1.000000e+00)
  %i.bi = fcmp fast ogt <8 x float> %i.ai, %i.ax
  %i.bj = and <8 x i1> %i.bh, %i.bi               ; 4 uses
  %i.bk = load i32, ptr %i.p, align 8, !tbaa !13
  %i.bl = sitofp fast i32 %i.bk to float
  %i.bm = insertelement <8 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <8 x float> %i.bm, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.bo = fadd fast <8 x float> %i.au, splat (float -1.000000e+00) ; 3 uses
  %i.bp = fcmp fast ogt <8 x float> %i.bo, splat (float -1.000000e+00)
  %i.bq = fcmp fast ogt <8 x float> %i.ap, %i.bo
  %i.br = and <8 x i1> %i.bp, %i.bq               ; 4 uses
  %i.bs = fmul fast <8 x float> %i.bo, %i.ai      ; 4 uses
  %i.bt = fadd fast <8 x float> %i.bs, %i.av
  %i.bu = fmul fast <8 x float> %i.bn, %i.bt
  %i.bv = fadd fast <8 x float> %i.bs, %i.at
  %i.bw = fmul fast <8 x float> %i.bn, %i.bv
  %i.bx = fadd fast <8 x float> %i.bs, %i.aw
  %i.by = fmul fast <8 x float> %i.bn, %i.bx
  %i.bz = fadd fast <8 x float> %i.bs, %i.ax
  %i.ca = fmul fast <8 x float> %i.bn, %i.bz
  %i.cb = and <8 x i1> %i.ba, %i.br
  %i.cc = select <8 x i1> %i.cb, <8 x float> %i.bu, <8 x float> splat (float -1.000000e+00)
  %i.cd = and <8 x i1> %i.bd, %i.br
  %i.ce = select <8 x i1> %i.cd, <8 x float> %i.bw, <8 x float> splat (float -1.000000e+00)
  %i.cf = and <8 x i1> %i.bg, %i.br
  %i.cg = select <8 x i1> %i.cf, <8 x float> %i.by, <8 x float> splat (float -1.000000e+00)
  %i.ch = and <8 x i1> %i.bj, %i.br
  %i.ci = select <8 x i1> %i.ch, <8 x float> %i.ca, <8 x float> splat (float -1.000000e+00)
  %i.cj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ck = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.cl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cg) ; 2 uses
  %i.cm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ci) ; 2 uses
  %i.cn = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.co = fcmp fast ogt <8 x float> %i.ap, %i.au
  %i.cp = and <8 x i1> %i.cn, %i.co               ; 4 uses
  %i.cq = fmul fast <8 x float> %i.au, %i.ai      ; 4 uses
  %i.cr = fadd fast <8 x float> %i.cq, %i.av
  %i.cs = fmul fast <8 x float> %i.bn, %i.cr
  %i.ct = fadd fast <8 x float> %i.cq, %i.at
  %i.cu = fmul fast <8 x float> %i.bn, %i.ct
  %i.cv = fadd fast <8 x float> %i.cq, %i.aw
  %i.cw = fmul fast <8 x float> %i.bn, %i.cv
  %i.cx = fadd fast <8 x float> %i.cq, %i.ax
  %i.cy = fmul fast <8 x float> %i.bn, %i.cx
  %i.cz = and <8 x i1> %i.ba, %i.cp
  %i.da = select <8 x i1> %i.cz, <8 x float> %i.cs, <8 x float> splat (float -1.000000e+00)
  %i.db = and <8 x i1> %i.bd, %i.cp
  %i.dc = select <8 x i1> %i.db, <8 x float> %i.cu, <8 x float> splat (float -1.000000e+00)
  %i.dd = and <8 x i1> %i.bg, %i.cp
  %i.de = select <8 x i1> %i.dd, <8 x float> %i.cw, <8 x float> splat (float -1.000000e+00)
  %i.df = and <8 x i1> %i.bj, %i.cp
  %i.dg = select <8 x i1> %i.df, <8 x float> %i.cy, <8 x float> splat (float -1.000000e+00)
  %i.dh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.da) ; 2 uses
  %i.di = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.dj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.de) ; 2 uses
  %i.dk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dg) ; 2 uses
  %i.dl = fadd fast <8 x float> %i.au, splat (float 1.000000e+00) ; 3 uses
  %i.dm = fcmp fast ogt <8 x float> %i.dl, splat (float -1.000000e+00)
  %i.dn = fcmp fast ogt <8 x float> %i.ap, %i.dl
  %i.do = and <8 x i1> %i.dm, %i.dn               ; 4 uses
  %i.dp = fmul fast <8 x float> %i.dl, %i.ai      ; 4 uses
  %i.dq = fadd fast <8 x float> %i.dp, %i.av
  %i.dr = fmul fast <8 x float> %i.bn, %i.dq
  %i.ds = fadd fast <8 x float> %i.dp, %i.at
  %i.dt = fmul fast <8 x float> %i.bn, %i.ds
  %i.du = fadd fast <8 x float> %i.dp, %i.aw
  %i.dv = fmul fast <8 x float> %i.bn, %i.du
  %i.dw = fadd fast <8 x float> %i.dp, %i.ax
  %i.dx = fmul fast <8 x float> %i.bn, %i.dw
  %i.dy = and <8 x i1> %i.ba, %i.do
  %i.dz = select <8 x i1> %i.dy, <8 x float> %i.dr, <8 x float> splat (float -1.000000e+00)
  %i.ea = and <8 x i1> %i.bd, %i.do
  %i.eb = select <8 x i1> %i.ea, <8 x float> %i.dt, <8 x float> splat (float -1.000000e+00)
  %i.ec = and <8 x i1> %i.bg, %i.do
  %i.ed = select <8 x i1> %i.ec, <8 x float> %i.dv, <8 x float> splat (float -1.000000e+00)
  %i.ee = and <8 x i1> %i.bj, %i.do
  %i.ef = select <8 x i1> %i.ee, <8 x float> %i.dx, <8 x float> splat (float -1.000000e+00)
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 2 uses
  %i.eh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 2 uses
  %i.ei = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed) ; 2 uses
  %i.ej = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ef) ; 2 uses
  %i.ek = fadd fast <8 x float> %i.au, splat (float 2.000000e+00) ; 3 uses
  %i.el = fcmp fast ogt <8 x float> %i.ek, splat (float -1.000000e+00)
  %i.em = fcmp fast ogt <8 x float> %i.ap, %i.ek
  %i.en = and <8 x i1> %i.el, %i.em               ; 4 uses
  %i.eo = fmul fast <8 x float> %i.ek, %i.ai      ; 4 uses
  %i.ep = fadd fast <8 x float> %i.eo, %i.av
  %i.eq = fmul fast <8 x float> %i.bn, %i.ep
  %i.er = fadd fast <8 x float> %i.eo, %i.at
  %i.es = fmul fast <8 x float> %i.bn, %i.er
  %i.et = fadd fast <8 x float> %i.eo, %i.aw
  %i.eu = fmul fast <8 x float> %i.bn, %i.et
  %i.ev = fadd fast <8 x float> %i.eo, %i.ax
  %i.ew = fmul fast <8 x float> %i.bn, %i.ev
  %i.ex = and <8 x i1> %i.ba, %i.en
  %i.ey = select <8 x i1> %i.ex, <8 x float> %i.eq, <8 x float> splat (float -1.000000e+00)
end_hunk_0
