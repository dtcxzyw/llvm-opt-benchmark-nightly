Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/roialign_x86_avx512?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnn42original_pre_calc_for_bilinear_interpolateIfEEviiiiT_S1_S1_S1_iRSt6vectorINS_7PreCalcIS1_EESaIS4_EE:bb.a
  %i.bx = fsub fast <16 x float> %i.br, %i.bw
  %i.by = icmp slt <16 x i32> %i.bt, %broadcast.splat178 ; 2 uses
  %i.bz = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.bt, <16 x i32> %broadcast.splat180) ; 2 uses
  %i.ca = select nsz <16 x i1> %i.by, <16 x float> %i.bv, <16 x float> splat (float 1.000000e+00) ; 2 uses
  %i.cb = select nsz <16 x i1> %i.by, <16 x float> %i.bx, <16 x float> zeroinitializer ; 2 uses
  %i.cc = add nsw <16 x i32> %broadcast.splat168, %i.bs
  %i.cd = add nsw <16 x i32> %i.bz, %broadcast.splat168
  %i.ce = add nsw <16 x i32> %broadcast.splat170, %i.bs
  %i.cf = add nsw <16 x i32> %i.bz, %broadcast.splat170
  %i.cg = getelementptr [32 x i8], ptr %i.bk, i64 %index
  %.uncasted = shufflevector <16 x i32> %i.cc, <16 x i32> %i.cd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %.uncasted211 = shufflevector <16 x i32> %i.ce, <16 x i32> %i.cf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ch = shufflevector <16 x float> %i.ca, <16 x float> %i.cb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ci = fmul fast <32 x float> %i.ch, %i.bl
  %i.cj = shufflevector <16 x float> %i.ca, <16 x float> %i.cb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ck = fmul fast <32 x float> %i.cj, %i.bm
  %.uncasted212 = shufflevector <32 x i32> %.uncasted, <32 x i32> %.uncasted211, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.cl = bitcast <64 x i32> %.uncasted212 to <64 x float>
  %i.cm = shufflevector <32 x float> %i.ci, <32 x float> %i.ck, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec = shufflevector <64 x float> %i.cl, <64 x float> %i.cm, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x float> %interleaved.vec, ptr %i.cg, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i32> %vec.ind, splat (i32 16)
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val181 = phi i32 [ %i.ap, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.co = add i64 %.2142.us, %n.vec182            ; 2 uses
  %broadcast.splatinsert183 = insertelement <4 x float> poison, float %.081.us, i64 0
  %broadcast.splat184 = shufflevector <4 x float> %broadcast.splatinsert183, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert185 = insertelement <4 x float> poison, float %.080.us, i64 0
  %broadcast.splat186 = shufflevector <4 x float> %broadcast.splatinsert185, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat188 = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat190 = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %bc.resume.val181, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat202, <i32 0, i32 1, i32 2, i32 3>
  %i.cp = getelementptr [32 x i8], ptr %i.ak, i64 %.2142.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index203 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next206, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind204 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next207, %vec.epilog.vector.body ] ; 2 uses
  %i.cq = uitofp nneg <4 x i32> %vec.ind204 to <4 x float>
  %i.cr = fadd fast <4 x float> %i.cq, splat (float 5.000000e-01)
  %i.cs = fmul fast <4 x float> %broadcast.splat192, %i.cr
  %i.ct = fmul fast <4 x float> %i.cs, %i.as
  %i.cu = fadd fast <4 x float> %i.ct, %broadcast.splat196 ; 3 uses
  %i.cv = fptosi <4 x float> %i.cu to <4 x i32>   ; 4 uses
  %i.cw = add nsw <4 x i32> %i.cv, splat (i32 1)  ; 3 uses
  %i.cx = sitofp fast <4 x i32> %i.cw to <4 x float>
  %i.cy = fsub fast <4 x float> %i.cx, %i.cu
  %i.cz = sitofp fast <4 x i32> %i.cv to <4 x float>
  %i.da = fsub fast <4 x float> %i.cu, %i.cz
  %i.db = icmp slt <4 x i32> %i.cw, %broadcast.splat198 ; 2 uses
  %i.dc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cw, <4 x i32> %broadcast.splat200) ; 2 uses
  %i.dd = select nsz <4 x i1> %i.db, <4 x float> %i.cy, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.de = select nsz <4 x i1> %i.db, <4 x float> %i.da, <4 x float> zeroinitializer ; 2 uses
  %i.df = add nsw <4 x i32> %broadcast.splat188, %i.cv
  %i.dg = add nsw <4 x i32> %i.dc, %broadcast.splat188
  %i.dh = add nsw <4 x i32> %broadcast.splat190, %i.cv
  %i.di = add nsw <4 x i32> %i.dc, %broadcast.splat190
  %i.dj = fmul fast <4 x float> %i.dd, %broadcast.splat184
  %i.dk = fmul fast <4 x float> %i.de, %broadcast.splat184
  %i.dl = fmul fast <4 x float> %i.dd, %broadcast.splat186
  %i.dm = fmul fast <4 x float> %i.de, %broadcast.splat186
  %i.dn = getelementptr [32 x i8], ptr %i.cp, i64 %index203
  %.uncasted213 = shufflevector <4 x i32> %i.df, <4 x i32> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.uncasted214 = shufflevector <4 x i32> %i.dh, <4 x i32> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.do = shufflevector <4 x float> %i.dj, <4 x float> %i.dk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.uncasted215 = shufflevector <8 x i32> %.uncasted213, <8 x i32> %.uncasted214, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dq = bitcast <16 x i32> %.uncasted215 to <16 x float>
  %i.dr = shufflevector <8 x float> %i.do, <8 x float> %i.dp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec205 = shufflevector <16 x float> %i.dq, <16 x float> %i.dr, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec205, ptr %i.dn, align 4, !tbaa !42
  %index.next206 = add nuw i64 %index203, 4       ; 2 uses
  %vec.ind.next207 = add nuw nsw <4 x i32> %vec.ind204, splat (i32 4)
  %i.ds = icmp eq i64 %index.next206, %n.vec182
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n208, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %.2142.us, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  %.086139.us.ph = phi i32 [ 0, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %i.dt = insertelement <4 x float> poison, float %.081.us, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %.080.us, i64 1
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.086139.us = phi i32 [ %i.eq, %vec.epilog.scalar.ph ], [ %.086139.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dw = uitofp ninf nsz nneg i32 %.086139.us to float
  %i.dx = fadd fast float %i.dw, 5.000000e-01
  %i.dy = fmul fast float %7, %i.dx
  %i.dz = fmul fast float %i.dy, %i.at
  %i.ea = fadd fast float %i.dz, %.sroa.speculated115 ; 3 uses
  %i.eb = fptosi float %i.ea to i32               ; 3 uses
  %i.ec = add nsw i32 %i.eb, 1                    ; 3 uses
  %i.ed = sitofp fast i32 %i.ec to float
  %i.ee = sitofp fast i32 %i.eb to float
  %.not.us = icmp slt i32 %i.ec, %1               ; 2 uses
  %.085.us = tail call i32 @llvm.smin.i32(i32 %i.ec, i32 %i.g)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.eg = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %i.eh = insertelement <4 x i32> %i.eg, i32 %.085.us, i64 1
  %i.ei = shufflevector <4 x i32> %i.eh, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ej = add nsw <4 x i32> %i.bi, %i.ei
  store <4 x i32> %i.ej, ptr %i.ef, align 4, !tbaa !16
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = fsub fast float %i.ed, %i.ea
  %i.el = fsub fast float %i.ea, %i.ee
  %.083.us = select nsz i1 %.not.us, float %i.ek, float 1.000000e+00
  %.082.us = select nsz i1 %.not.us, float %i.el, float 0.000000e+00
  %i.em = insertelement <4 x float> poison, float %.083.us, i64 0
  %i.en = insertelement <4 x float> %i.em, float %.082.us, i64 1
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ep = fmul fast <4 x float> %i.eo, %i.dv
  store <4 x float> %i.ep, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !36
  %i.eq = add nuw nsw i32 %.086139.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.eq, %i.af
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !70

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.co, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ] ; 2 uses
  %i.er = add nuw nsw i32 %.079141.us, 1          ; 2 uses
  %exitcond155.not = icmp eq i32 %i.er, %i.ae
  br i1 %exitcond155.not, label %.loopexit.loopexit, label %iter.check, !llvm.loop !71
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %12) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !16     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.h = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !16
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !16
  %i.k = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %.not166 = icmp sgt i32 %i.k, %i.j
  br i1 %.not166, label %._crit_edge168.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !34, !noalias !82
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !82
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !82
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !34, !noalias !83
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35, !noalias !83
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !83
  %factor.op.mul169 = mul i64 %i.s, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 220
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge168.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !32  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = sext i32 %i.aa to i64
  br i1 %i.ab, label %.noexc.lr.ph.split.split, label %._crit_edge168.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %10, align 4, !tbaa !16
  %13 = load i32, ptr %11, align 4, !tbaa !16
  %14 = insertelement <2 x i32> poison, i32 %13, i64 0
  %15 = insertelement <2 x i32> %14, i32 %i.ad, i64 1
  %16 = sitofp <2 x i32> %15 to <2 x float>       ; 2 uses
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !37  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = uitofp nneg i32 %i.ae to float
  %i.ah = sext i32 %i.k to i64
  %i.ai = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %17 = insertelement <2 x i1> poison, i1 %i.af, i64 0
  %18 = shufflevector <2 x i1> %17, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge165
  %indvars.iv181 = phi i64 [ %i.ah, %.noexc.lr.ph.split.split ], [ %indvars.iv.next182, %._crit_edge165 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv181
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 13 uses
  %.reass170 = mul i64 %factor.op.mul169, %indvars.iv181
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass170
  br label %.preheader147

.preheader147:                                    ; preds = %.noexc, %._crit_edge
  %.064164 = phi i32 [ 0, %.noexc ], [ %20, %._crit_edge ] ; 2 uses
  %.065163 = phi i32 [ 0, %.noexc ], [ %.2.lcssa, %._crit_edge ]
  %.067162 = phi ptr [ %i.am, %.noexc ], [ %i.an, %._crit_edge ] ; 2 uses
  %19 = uitofp ninf nsz nneg i32 %.064164 to float
  %20 = add nuw nsw i32 %.064164, 1               ; 3 uses
  %21 = uitofp ninf nsz nneg i32 %20 to float
  br label %bb.c

._crit_edge165:                                   ; preds = %._crit_edge
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next182 to i32
  %exitcond184.not = icmp eq i32 %i.ai, %lftr.wideiv
  br i1 %exitcond184.not, label %._crit_edge168.split, label %.noexc

._crit_edge:                                      ; preds = %._crit_edge155
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.067162, i64 %i.ac
  %exitcond180.not = icmp eq i32 %20, %i.w
  br i1 %exitcond180.not, label %._crit_edge165, label %.preheader147, !llvm.loop !76

bb.c:                                             ; preds = %.preheader147, %._crit_edge155
  %indvars.iv176 = phi i64 [ 0, %.preheader147 ], [ %indvars.iv.next177, %._crit_edge155 ] ; 3 uses
  %.166159 = phi i32 [ %.065163, %.preheader147 ], [ %.2.lcssa, %._crit_edge155 ] ; 3 uses
  %i.ao = load float, ptr %6, align 4, !tbaa !36  ; 2 uses
  %i.ap = load float, ptr %7, align 4, !tbaa !36  ; 2 uses
  %i.aq = load float, ptr %8, align 4, !tbaa !36  ; 2 uses
  %22 = trunc nuw nsw i64 %indvars.iv176 to i32
  %23 = uitofp ninf nsz nneg i32 %22 to float
  %24 = load float, ptr %9, align 4, !tbaa !36    ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %25 = trunc nuw nsw i64 %indvars.iv.next177 to i32
  %26 = uitofp ninf nsz nneg i32 %25 to float
  %27 = fmul fast float %i.ap, %19
  %28 = fadd fast float %27, %i.ao
  %29 = fmul fast float %24, %23
  %30 = fadd fast float %29, %i.aq
  %31 = fmul fast float %i.ap, %21
  %32 = fadd fast float %31, %i.ao
  %33 = fmul fast float %24, %26
  %34 = fadd fast float %33, %i.aq
  %35 = insertelement <2 x float> poison, float %30, i64 0
  %i.ar = insertelement <2 x float> %35, float %28, i64 1
  %36 = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ar, <2 x float> zeroinitializer)
  %37 = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %36, <2 x float> %16) ; 3 uses
  %i.as = insertelement <2 x float> poison, float %34, i64 0
  %38 = insertelement <2 x float> %i.as, float %32, i64 1
  %i.at = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %38, <2 x float> zeroinitializer)
  %i.au = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.at, <2 x float> %16) ; 3 uses
  %39 = fsub fast <2 x float> %i.au, %37
  %40 = call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %39)
  %41 = select <2 x i1> %18, <2 x float> %i.ak, <2 x float> %40
  %42 = fptosi <2 x float> %41 to <2 x i32>       ; 3 uses
  %43 = fcmp ole <2 x float> %i.au, %37
  %44 = extractelement <2 x i1> %43, i64 1
  %45 = fcmp ole <2 x float> %i.au, %37
  %46 = extractelement <2 x i1> %45, i64 0
  %47 = select i1 %44, i1 true, i1 %46
  %48 = extractelement <2 x i32> %42, i64 0       ; 5 uses
  %49 = extractelement <2 x i32> %42, i64 1       ; 2 uses
  %50 = mul i32 %48, %49                          ; 2 uses
  %51 = icmp sgt <2 x i32> %42, zeroinitializer   ; 2 uses
  %52 = extractelement <2 x i1> %51, i64 0
  %53 = extractelement <2 x i1> %51, i64 1
  %or.cond = select i1 %53, i1 %52, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.us, label %._crit_edge155

.preheader.lr.ph.split.us:                        ; preds = %bb.c
  %i.av = load ptr, ptr %12, align 8, !tbaa !40   ; 4 uses
  %i.aw = zext nneg i32 %48 to i64                ; 6 uses
  %i.ax = sext i32 %.166159 to i64
  %min.iters.check = icmp ult i32 %48, 4
  %min.iters.check193 = icmp ult i32 %48, 16
  %i.ay = and i64 %i.aw, 12
  %n.vec = and i64 %i.aw, 2147483632              ; 5 uses
  %i.az = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  %n.vec226 = and i64 %i.aw, 2147483644           ; 4 uses
  %i.ba = trunc nuw nsw i64 %n.vec226 to i32
  %cmp.n247 = icmp eq i64 %n.vec226, %i.aw
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.061154.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.eh, %._crit_edge.us ]
  %.062153.us = phi float [ 0.000000e+00, %.preheader.lr.ph.split.us ], [ %.lcssa, %._crit_edge.us ] ; 3 uses
  %.2152.us = phi i64 [ %i.ax, %.preheader.lr.ph.split.us ], [ %i.eg, %._crit_edge.us ] ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = add i64 %.2152.us, %n.vec
  %i.bc = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.062153.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.bc, %vector.ph ], [ %i.ct, %vector.body ]
  %vec.phi194 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cu, %vector.body ]
  %i.bd = add i64 %.2152.us, %index               ; 2 uses
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bd
  %i.bf = getelementptr [32 x i8], ptr %i.av, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 256
  %wide.vec = load <64 x float>, ptr %i.be, align 4, !tbaa !42 ; 8 uses
  %i.bh = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.bi = shufflevector <64 x i32> %i.bh, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.bj = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.bk = shufflevector <64 x i32> %i.bj, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.bl = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.bm = shufflevector <64 x i32> %i.bl, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.bn = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.bo = shufflevector <64 x i32> %i.bn, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec198 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec199 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec200 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec201 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %wide.vec202 = load <64 x float>, ptr %i.bg, align 4, !tbaa !42 ; 8 uses
  %i.bp = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.bq = shufflevector <64 x i32> %i.bp, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.br = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.bs = shufflevector <64 x i32> %i.br, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.bt = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.bu = shufflevector <64 x i32> %i.bt, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.bv = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.bw = shufflevector <64 x i32> %i.bv, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec207 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec208 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec209 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec210 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.bx = sext <8 x i32> %i.bi to <8 x i64>
  %i.by = sext <8 x i32> %i.bq to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.al, <8 x i64> %i.bx
  %wide.gep211 = getelementptr inbounds [4 x i8], ptr %i.al, <8 x i64> %i.by
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %wide.masked.gather212 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep211, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %i.bz = fmul fast <8 x float> %wide.masked.gather, %strided.vec198
  %i.ca = fmul fast <8 x float> %wide.masked.gather212, %strided.vec207
  %i.cb = sext <8 x i32> %i.bk to <8 x i64>
  %i.cc = sext <8 x i32> %i.bs to <8 x i64>
  %wide.gep213 = getelementptr inbounds [4 x i8], ptr %i.al, <8 x i64> %i.cb
  %wide.gep214 = getelementptr inbounds [4 x i8], ptr %i.al, <8 x i64> %i.cc
  %wide.masked.gather215 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep213, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %wide.masked.gather216 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep214, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %i.cd = fmul fast <8 x float> %wide.masked.gather215, %strided.vec199
  %i.ce = fmul fast <8 x float> %wide.masked.gather216, %strided.vec208
  %i.cf = sext <8 x i32> %i.bm to <8 x i64>
  %i.cg = sext <8 x i32> %i.bu to <8 x i64>
  %wide.gep217 = getelementptr inbounds [4 x i8], ptr %i.al, <8 x i64> %i.cf
  %wide.gep218 = getelementptr inbounds [4 x i8], ptr %i.al, <8 x i64> %i.cg
  %wide.masked.gather219 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep217, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %wide.masked.gather220 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep218, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %i.ch = fmul fast <8 x float> %wide.masked.gather219, %strided.vec200
  %i.ci = fmul fast <8 x float> %wide.masked.gather220, %strided.vec209
  %i.cj = sext <8 x i32> %i.bo to <8 x i64>
  %i.ck = sext <8 x i32> %i.bw to <8 x i64>
  %wide.gep221 = getelementptr inbounds [4 x i8], ptr %i.al, <8 x i64> %i.cj
  %wide.gep222 = getelementptr inbounds [4 x i8], ptr %i.al, <8 x i64> %i.ck
  %wide.masked.gather223 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep221, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %wide.masked.gather224 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36
  %i.cl = fmul fast <8 x float> %wide.masked.gather223, %strided.vec201
  %i.cm = fmul fast <8 x float> %wide.masked.gather224, %strided.vec210
  %i.cn = fadd fast <8 x float> %i.bz, %vec.phi
  %i.co = fadd fast <8 x float> %i.ca, %vec.phi194
  %i.cp = fadd fast <8 x float> %i.cn, %i.cd
  %i.cq = fadd fast <8 x float> %i.co, %i.ce
  %i.cr = fadd fast <8 x float> %i.cp, %i.ch
  %i.cs = fadd fast <8 x float> %i.cq, %i.ci
  %i.ct = fadd fast <8 x float> %i.cr, %i.cl      ; 2 uses
  %i.cu = fadd fast <8 x float> %i.cs, %i.cm      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <8 x float> %i.cu, %i.ct
  %i.cw = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.cw, %vec.epilog.iter.check ], [ %.062153.us, %vector.main.loop.iter.check ]
  %i.cx = add i64 %.2152.us, %n.vec226
  %i.cy = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.cz = getelementptr [32 x i8], ptr %i.av, i64 %.2152.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index227 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next246, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi228 = phi <4 x float> [ %i.cy, %vec.epilog.ph ], [ %i.du, %vec.epilog.vector.body ]
  %i.da = getelementptr [32 x i8], ptr %i.cz, i64 %index227
  %wide.vec229 = load <32 x float>, ptr %i.da, align 4, !tbaa !42 ; 8 uses
  %i.db = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.dc = shufflevector <32 x i32> %i.db, <32 x i32> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.dd = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.de = shufflevector <32 x i32> %i.dd, <32 x i32> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %i.df = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.dg = shufflevector <32 x i32> %i.df, <32 x i32> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %i.dh = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.di = shufflevector <32 x i32> %i.dh, <32 x i32> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec234 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec235 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec236 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec237 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.dj = sext <4 x i32> %i.dc to <4 x i64>
  %wide.gep238 = getelementptr inbounds [4 x i8], ptr %i.al, <4 x i64> %i.dj
  %wide.masked.gather239 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep238, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !36
  %i.dk = fmul fast <4 x float> %wide.masked.gather239, %strided.vec234
  %i.dl = sext <4 x i32> %i.de to <4 x i64>
  %wide.gep240 = getelementptr inbounds [4 x i8], ptr %i.al, <4 x i64> %i.dl
  %wide.masked.gather241 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep240, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !36
  %i.dm = fmul fast <4 x float> %wide.masked.gather241, %strided.vec235
  %i.dn = sext <4 x i32> %i.dg to <4 x i64>
  %wide.gep242 = getelementptr inbounds [4 x i8], ptr %i.al, <4 x i64> %i.dn
  %wide.masked.gather243 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep242, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !36
  %i.do = fmul fast <4 x float> %wide.masked.gather243, %strided.vec236
  %i.dp = sext <4 x i32> %i.di to <4 x i64>
  %wide.gep244 = getelementptr inbounds [4 x i8], ptr %i.al, <4 x i64> %i.dp
  %wide.masked.gather245 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep244, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !36
  %i.dq = fmul fast <4 x float> %wide.masked.gather245, %strided.vec237
  %i.dr = fadd fast <4 x float> %i.dk, %vec.phi228
  %i.ds = fadd fast <4 x float> %i.dr, %i.dm
  %i.dt = fadd fast <4 x float> %i.ds, %i.do
  %i.du = fadd fast <4 x float> %i.dt, %i.dq      ; 2 uses
  %index.next246 = add nuw i64 %index227, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next246, %n.vec226
  br i1 %i.dv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dw = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.du) ; 2 uses
  br i1 %cmp.n247, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %.2152.us, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  %.060150.us.ph = phi i32 [ 0, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  %.1149.us.ph = phi float [ %.062153.us, %iter.check ], [ %i.cw, %vec.epilog.iter.check ], [ %i.dw, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.060150.us = phi i32 [ %i.ef, %vec.epilog.scalar.ph ], [ %.060150.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.1149.us = phi float [ %op.rdx, %vec.epilog.scalar.ph ], [ %.1149.us.ph, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load <4 x float>, ptr %i.dy, align 4, !tbaa !36
  %i.ea = load <4 x i32>, ptr %i.dx, align 4, !tbaa !16
  %i.eb = sext <4 x i32> %i.ea to <4 x i64>
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.al, <4 x i64> %i.eb
  %i.ed = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ec, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !36
  %i.ee = fmul fast <4 x float> %i.ed, %i.dz
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.1149.us, <4 x float> %i.ee) ; 2 uses
  %i.ef = add nuw nsw i32 %.060150.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ef, %48
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !79

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi float [ %i.dw, %vec.epilog.middle.block ], [ %i.cw, %middle.block ], [ %op.rdx, %vec.epilog.scalar.ph ] ; 2 uses
  %i.eg = add nsw i64 %.2152.us, %i.aw
  %i.eh = add nuw nsw i32 %.061154.us, 1          ; 2 uses
  %exitcond175.not = icmp eq i32 %i.eh, %49
  br i1 %exitcond175.not, label %._crit_edge155.loopexit, label %iter.check, !llvm.loop !80

._crit_edge155.loopexit:                          ; preds = %._crit_edge.us
  %i.ei = add i32 %.166159, %50
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %bb.c
  %.2.lcssa = phi i32 [ %.166159, %bb.c ], [ %i.ei, %._crit_edge155.loopexit ] ; 2 uses
  %.062.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %.lcssa, %._crit_edge155.loopexit ]
  %i.ej = sitofp fast i32 %50 to float
  %i.ek = fdiv fast float %.062.lcssa, %i.ej
  %i.el = select fast i1 %47, float 0.000000e+00, float %i.ek
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.067162, i64 %indvars.iv176
  store float %i.el, ptr %i.em, align 4, !tbaa !36
  %exitcond179.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count
  br i1 %exitcond179.not, label %._crit_edge, label %bb.c, !llvm.loop !81

._crit_edge168.split:                             ; preds = %._crit_edge165, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge168.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !47 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn44detectron2_pre_calc_for_bilinear_interpolateIfEEviiiiiiT_S1_S1_S1_iiRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(24) %12) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader109.lr.ph, label %._crit_edge141.split

.preheader109.lr.ph:                              ; preds = %bb.a
  %i.b = icmp slt i32 %3, 1
  %i.c = icmp slt i32 %5, 1
  %i.d = sitofp fast i32 %0 to float
  %i.e = sitofp fast i32 %1 to float
  %i.f = add nsw i32 %0, -1                       ; 4 uses
  %i.g = sitofp fast i32 %i.f to float
  %i.h = add nsw i32 %1, -1                       ; 4 uses
  %i.i = sitofp fast i32 %i.h to float
  %i.j = icmp slt i32 %4, 1
  %or.cond.not169 = or i1 %i.b, %i.j
  %brmerge = or i1 %or.cond.not169, %i.c
  br i1 %brmerge, label %._crit_edge141.split, label %.preheader109.us.us.preheader

.preheader109.us.us.preheader:                    ; preds = %.preheader109.lr.ph
  %i.k = sitofp fast i32 %11 to float
  %i.l = sitofp fast i32 %10 to float
  %i.m = zext nneg i32 %5 to i64
  %i.n = shl nuw nsw i64 %i.m, 5
  %i.o = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.p = fdiv fast float 1.000000e+00, %i.l
  %i.q = shufflevector <2 x i32> %i.o, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.r = fdiv fast float 1.000000e+00, %i.k
  br label %.preheader109.us.us

.preheader109.us.us:                              ; preds = %.preheader109.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %.0140.us.us = phi i32 [ %.us-phi.us.us.us.us.us, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader109.us.us.preheader ]
  %.088139.us.us = phi i32 [ %i.by, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader109.us.us.preheader ] ; 2 uses
  %i.s = uitofp ninf nsz nneg i32 %.088139.us.us to float
  %i.t = fmul fast float %8, %i.s
  %i.u = fadd fast float %6, %i.t
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge115.split.us.us.us.us.us, %.preheader109.us.us
  %.1133.us.us.us.us = phi i32 [ %.0140.us.us, %.preheader109.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge115.split.us.us.us.us.us ]
  %.089132.us.us.us.us = phi i32 [ 0, %.preheader109.us.us ], [ %i.bx, %._crit_edge115.split.us.us.us.us.us ] ; 2 uses
  %i.v = uitofp ninf nsz nneg i32 %.089132.us.us.us.us to float
  %i.w = fmul fast float %9, %i.v
  %i.x = fadd fast float %7, %i.w
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader.us.us.us.us
  %.2113.us.us.us.us.us = phi i32 [ %.1133.us.us.us.us, %.preheader.us.us.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge.us.us.us.us.us ] ; 3 uses
  %.090112.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us ], [ %i.bw, %._crit_edge.us.us.us.us.us ] ; 2 uses
  %i.y = uitofp ninf nsz nneg i32 %.090112.us.us.us.us.us to float
  %i.z = fadd fast float %i.y, 5.000000e-01
  %i.aa = fmul fast float %8, %i.z
  %i.ab = fmul fast float %i.aa, %i.p
  %i.ac = fadd fast float %i.ab, %i.u             ; 3 uses
  %i.ad = fcmp fast olt float %i.ac, -1.000000e+00
  %i.ae = fcmp fast ogt float %i.ac, %i.d
  %or.cond.us.us.us.us.us = select i1 %i.ad, i1 true, i1 %i.ae
  %spec.store.select.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ac, float 0.000000e+00) ; 2 uses
  %i.af = fptosi float %spec.store.select.us.us.us.us.us to i32 ; 3 uses
  %.not.us.us.us.us.us = icmp sgt i32 %i.f, %i.af ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %.096.us.us.us.us.us = select i1 %.not.us.us.us.us.us, i32 %i.ag, i32 %i.f
  %.094.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.af) ; 2 uses
  %i.ah = insertelement <2 x i32> poison, i32 %.094.us.us.us.us.us, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %.096.us.us.us.us.us, i64 1
  %i.aj = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = mul nsw <4 x i32> %i.aj, %i.q
  %or.cond.fr.us.us.us.us.us = freeze i1 %or.cond.us.us.us.us.us
  br i1 %or.cond.fr.us.us.us.us.us, label %.lr.ph.split.us.us.us.us.us.us, label %.lr.ph.split.us117.us.us.us.us.preheader

.lr.ph.split.us117.us.us.us.us.preheader:         ; preds = %.lr.ph.us.us.us.us.us
  %.093.us.us.us.us.us = select nsz i1 %.not.us.us.us.us.us, float %spec.store.select.us.us.us.us.us, float %i.g
  %i.al = sitofp fast i32 %.094.us.us.us.us.us to float
  %i.am = fsub fast float %.093.us.us.us.us.us, %i.al ; 2 uses
  %i.an = fsub fast float 1.000000e+00, %i.am
  %i.ao = sext i32 %.2113.us.us.us.us.us to i64
  %i.ap = insertelement <4 x float> poison, float %i.an, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 1
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %.lr.ph.split.us117.us.us.us.us

.lr.ph.split.us117.us.us.us.us:                   ; preds = %.lr.ph.split.us117.us.us.us.us.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph.split.us117.us.us.us.us.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.091110.us119.us.us.us.us = phi i32 [ 0, %.lr.ph.split.us117.us.us.us.us.preheader ], [ %i.bq, %bb.d ] ; 2 uses
  %i.as = uitofp ninf nsz nneg i32 %.091110.us119.us.us.us.us to float
  %i.at = fadd fast float %i.as, 5.000000e-01
  %i.au = fmul fast float %9, %i.at
  %i.av = fmul fast float %i.au, %i.r
  %i.aw = fadd fast float %i.av, %i.x             ; 3 uses
  %i.ax = fcmp fast olt float %i.aw, -1.000000e+00
  %i.ay = fcmp fast ogt float %i.aw, %i.e
  %or.cond108.us.us.us.us.us = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond108.us.us.us.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us117.us.us.us.us
  %spec.store.select1.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aw, float 0.000000e+00) ; 2 uses
  %i.az = fptosi float %spec.store.select1.us.us.us.us.us to i32 ; 3 uses
  %.not104.us.us.us.us.us = icmp sgt i32 %i.h, %i.az ; 2 uses
  %i.ba = add nuw nsw i32 %i.az, 1
  %.097.us.us.us.us.us = select i1 %.not104.us.us.us.us.us, i32 %i.ba, i32 %i.h
  %.095.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.az) ; 2 uses
  %.092.us.us.us.us.us = select nsz i1 %.not104.us.us.us.us.us, float %spec.store.select1.us.us.us.us.us, float %i.i
  %i.bb = sitofp fast i32 %.095.us.us.us.us.us to float
  %i.bc = fsub fast float %.092.us.us.us.us.us, %i.bb ; 2 uses
  %i.bd = fsub fast float 1.000000e+00, %i.bc
  %i.be = load ptr, ptr %12, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bg = insertelement <4 x i32> poison, i32 %.095.us.us.us.us.us, i64 0
  %i.bh = insertelement <4 x i32> %i.bg, i32 %.097.us.us.us.us.us, i64 1
  %i.bi = shufflevector <4 x i32> %i.bh, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bj = add nsw <4 x i32> %i.bi, %i.ak
  store <4 x i32> %i.bj, ptr %i.bf, align 4, !tbaa !16
  %.sroa.7.0..sroa_idx.us.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bc, i64 1
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bn = fmul fast <4 x float> %i.bm, %i.ar
  store <4 x float> %i.bn, ptr %.sroa.7.0..sroa_idx.us.us.us.us.us, align 4, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us117.us.us.us.us
  %i.bo = load ptr, ptr %12, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = add nuw nsw i32 %.091110.us119.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %5
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us.loopexit148, label %.lr.ph.split.us117.us.us.us.us, !llvm.loop !84

.lr.ph.split.us.us.us.us.us.us:                   ; preds = %.lr.ph.us.us.us.us.us
  %i.br = load ptr, ptr %12, align 8, !tbaa !40
  %i.bs = sext i32 %.2113.us.us.us.us.us to i64
  %i.bt = shl nsw i64 %i.bs, 5
  %scevgep = getelementptr nuw i8, ptr %i.br, i64 %i.bt
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.n, i1 false), !tbaa !42
  %i.bu = add i32 %5, %.2113.us.us.us.us.us
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us.loopexit148:           ; preds = %bb.d
  %i.bv = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us:                       ; preds = %._crit_edge.us.us.us.us.us.loopexit148, %.lr.ph.split.us.us.us.us.us.us
  %.us-phi.us.us.us.us.us = phi i32 [ %i.bu, %.lr.ph.split.us.us.us.us.us.us ], [ %i.bv, %._crit_edge.us.us.us.us.us.loopexit148 ] ; 3 uses
  %i.bw = add nuw nsw i32 %.090112.us.us.us.us.us, 1 ; 2 uses
  %exitcond156.not = icmp eq i32 %i.bw, %4
  br i1 %exitcond156.not, label %._crit_edge115.split.us.us.us.us.us, label %.lr.ph.us.us.us.us.us, !llvm.loop !85

._crit_edge115.split.us.us.us.us.us:              ; preds = %._crit_edge.us.us.us.us.us
  %i.bx = add nuw nsw i32 %.089132.us.us.us.us, 1 ; 2 uses
  %exitcond157.not = icmp eq i32 %i.bx, %3
  br i1 %exitcond157.not, label %._crit_edge.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !86

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge115.split.us.us.us.us.us
  %i.by = add nuw nsw i32 %.088139.us.us, 1       ; 2 uses
  %exitcond158.not = icmp eq i32 %i.by, %2
  br i1 %exitcond158.not, label %._crit_edge141.split, label %.preheader109.us.us, !llvm.loop !87

._crit_edge141.split:                             ; preds = %._crit_edge.split.us.split.us.us.us, %.preheader109.lr.ph, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
end_hunk_0
