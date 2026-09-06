Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_rgb_hsl?download=true
inline.NumInlined: 129
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 41
begin_hunk_0_@dt_ioppr_get_rgb_matrix_luminance:bb.a

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !34
  %i.ac = load float, ptr %3, align 4, !tbaa !34
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !34
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.e ], [ %i.z, %bb.d ], [ %i.h, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !259 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !34
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !34 ; 4 uses
  br i1 %i.am, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !34
  %i.at = load float, ptr %i.aq, align 4, !tbaa !34
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !34
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.aw)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.as
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.b ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.b
  %..i.1.i = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.b
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %..i.1.i, float 0.000000e+00 ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, %i.d
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.d
  %i.bf = fptosi float %i.be to i32               ; 2 uses
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nnan nsz arcp contract afn float %i.bc, %i.bg
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !34 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !34
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bh
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.h ], [ %i.bp, %bb.i ], [ %i.ao, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !259 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !34
  %i.bu = fcmp reassoc nsz arcp contract afn ult float %i.bt, 0.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !34 ; 4 uses
  br i1 %i.bu, label %dt_ioppr_apply_trc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bw, 1.000000e+00
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !34
  %i.cb = load float, ptr %i.by, align 4, !tbaa !34
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bw
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !34
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cc, float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.ca
  br label %dt_ioppr_apply_trc.exit

bb.m:                                             ; preds = %bb.k
  %i.ch = fmul reassoc nsz arcp contract afn float %i.bw, %i.b ; 3 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 0.000000e+00
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ch, %i.b
  %..i.2.i = select reassoc nsz arcp contract afn i1 %i.cj, float %i.ch, float %i.b
  %i.ck = select reassoc nsz arcp contract afn i1 %i.ci, float %..i.2.i, float 0.000000e+00 ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.ck, %i.d
  %i.cm = select reassoc nsz arcp contract afn i1 %i.cl, float %i.ck, float %i.d
  %i.cn = fptosi float %i.cm to i32               ; 2 uses
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to float
  %i.cp = fsub reassoc nnan nsz arcp contract afn float %i.ck, %i.co
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cq ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !34 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !34
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cu, %i.cs
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cp
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cs
  br label %dt_ioppr_apply_trc.exit

dt_ioppr_apply_trc.exit:                          ; preds = %bb.j, %bb.l, %bb.m
  %i.cy = phi reassoc nsz arcp contract afn float [ %i.cg, %bb.l ], [ %i.cx, %bb.m ], [ %i.bw, %bb.j ]
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.da = load float, ptr %i.cz, align 4, !tbaa !34
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.ai
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !34
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.bq
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !34
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.cy
  %i.dj = fadd reassoc nsz arcp contract afn float %i.df, %i.di
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !34
  %i.dm = load float, ptr %0, align 4, !tbaa !34
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dq = load <2 x float>, ptr %i.do, align 4, !tbaa !34
  %i.dr = load <2 x float>, ptr %i.dp, align 4, !tbaa !34
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %i.dr, %i.dq ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, %i.dn
  %i.dv = extractelement <2 x float> %i.ds, i64 1
  %i.dw = fadd reassoc nsz arcp contract afn float %i.du, %i.dv
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dt_ioppr_apply_trc.exit
  %.0 = phi nsz float [ %i.dj, %dt_ioppr_apply_trc.exit ], [ %i.dw, %bb.n ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_lighten(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

.lr.ph.preheader37:                               ; preds = %vector.body, %.lr.ph.preheader
  %.02428.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.d, %vector.body ]
  %.02527.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.a = and i64 %4, 3                            ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = select i1 %i.b, i64 4, i64 %i.a
  %n.vec = sub i64 %4, %i.c                       ; 3 uses
  %i.d = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = shl i64 %index, 2                        ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.f, align 4, !tbaa !34 ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %wide.vec = load <16 x float>, ptr %i.g, align 4, !tbaa !34 ; 6 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec30 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec31 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %wide.vec32 = load <16 x float>, ptr %i.h, align 4, !tbaa !34 ; 3 uses
  %i.i = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %wide.vec, <16 x float> %wide.vec32)
  %i.j = shufflevector <16 x float> %i.i, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.k = fsub reassoc nsz arcp contract afn <4 x float> %i.j, %strided.vec
  %i.l = fmul reassoc nsz arcp contract afn <4 x float> %i.k, %wide.load
  %i.m = fadd reassoc nsz arcp contract afn <4 x float> %i.l, %strided.vec
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.o = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %wide.vec, <16 x float> %wide.vec32)
  %i.p = shufflevector <16 x float> %i.o, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.q = fsub reassoc nsz arcp contract afn <4 x float> %i.p, %strided.vec30
  %i.r = fmul reassoc nsz arcp contract afn <4 x float> %i.q, %wide.load
  %i.s = fadd reassoc nsz arcp contract afn <4 x float> %i.r, %strided.vec30
  %5 = shufflevector <4 x float> %i.m, <4 x float> %i.s, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %5, <8 x float> zeroinitializer)
  %i.t = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %wide.vec, <16 x float> %wide.vec32)
  %i.u = shufflevector <16 x float> %i.t, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.v = fsub reassoc nsz arcp contract afn <4 x float> %i.u, %strided.vec31
  %i.w = fmul reassoc nsz arcp contract afn <4 x float> %i.v, %wide.load
  %i.x = fadd reassoc nsz arcp contract afn <4 x float> %i.w, %strided.vec31
  %i.y = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer)
  %i.z = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.y, <4 x float> splat (float 1.000000e+00))
  %i.aa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %6, <8 x float> splat (float 1.000000e+00))
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.aa, <8 x float> %i.ab, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.n, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %.lr.ph.preheader37, label %vector.body, !llvm.loop !260

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.02428 = phi i64 [ %i.bg, %.lr.ph ], [ %.02428.ph, %.lr.ph.preheader37 ] ; 5 uses
  %.02527 = phi i64 [ %i.bf, %.lr.ph ], [ %.02527.ph, %.lr.ph.preheader37 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !34 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02428
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02428
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02428 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.af, align 4, !tbaa !34 ; 3 uses
  %i.aj = load <2 x float>, ptr %i.ag, align 4, !tbaa !34
  %i.ak = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ai, <2 x float> %i.aj)
  %i.al = fsub reassoc nsz arcp contract afn <2 x float> %i.ak, %i.ai
  %i.am = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.al, %i.an
  %i.ap = fadd reassoc nsz arcp contract afn <2 x float> %i.ao, %i.ai
  %i.aq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ap, <2 x float> zeroinitializer)
  %i.ar = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aq, <2 x float> splat (float 1.000000e+00))
  store <2 x float> %i.ar, ptr %i.ah, align 4, !tbaa !34
  %i.as = or disjoint i64 %.02428, 2              ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !34 ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !34
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.au, float %i.aw)
  %i.ay = fsub reassoc nsz arcp contract afn float %i.ax, %i.au
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.ae
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %i.au
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ba, float 0.000000e+00)
  %i.bc = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bb, float 1.000000e+00)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as
  store float %i.bc, ptr %i.bd, align 4, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store float %i.ae, ptr %i.be, align 4, !tbaa !34
  %i.bf = add nuw i64 %.02527, 1                  ; 2 uses
  %i.bg = add i64 %.02428, 4
  %exitcond.not = icmp eq i64 %i.bf, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !261
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_darken(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

.lr.ph.preheader42:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02428.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.02527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep30
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %2, %scevgep31
  %bound133 = icmp ult ptr %1, %scevgep
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 3                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 4, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.h, align 4, !tbaa !34 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <16 x float>, ptr %i.i, align 4, !tbaa !34, !alias.scope !268 ; 6 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec35 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec36 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec37 = load <16 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !269 ; 3 uses
  %i.k = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %wide.vec, <16 x float> %wide.vec37)
  %i.l = shufflevector <16 x float> %i.k, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.m = fsub reassoc nsz arcp contract afn <4 x float> %i.l, %strided.vec
  %i.n = fmul reassoc nsz arcp contract afn <4 x float> %i.m, %wide.load
  %i.o = fadd reassoc nsz arcp contract afn <4 x float> %i.n, %strided.vec
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.q = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %wide.vec, <16 x float> %wide.vec37)
  %i.r = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.s = fsub reassoc nsz arcp contract afn <4 x float> %i.r, %strided.vec35
  %i.t = fmul reassoc nsz arcp contract afn <4 x float> %i.s, %wide.load
  %i.u = fadd reassoc nsz arcp contract afn <4 x float> %i.t, %strided.vec35
  %5 = shufflevector <4 x float> %i.o, <4 x float> %i.u, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %5, <8 x float> zeroinitializer)
  %i.v = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %wide.vec, <16 x float> %wide.vec37)
  %i.w = shufflevector <16 x float> %i.v, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.x = fsub reassoc nsz arcp contract afn <4 x float> %i.w, %strided.vec36
  %i.y = fmul reassoc nsz arcp contract afn <4 x float> %i.x, %wide.load
  %i.z = fadd reassoc nsz arcp contract afn <4 x float> %i.y, %strided.vec36
  %i.aa = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.z, <4 x float> zeroinitializer)
  %i.ab = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.aa, <4 x float> splat (float 1.000000e+00))
  %i.ac = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %6, <8 x float> splat (float 1.000000e+00))
  %i.ad = shufflevector <4 x float> %i.ab, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ac, <8 x float> %i.ad, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !34, !alias.scope !270, !noalias !271
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %.lr.ph.preheader42, label %vector.body, !llvm.loop !266

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %.02428 = phi i64 [ %i.bs, %.lr.ph ], [ %.02428.ph, %.lr.ph.preheader42 ] ; 6 uses
  %.02527 = phi i64 [ %i.br, %.lr.ph ], [ %.02527.ph, %.lr.ph.preheader42 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.ag = load float, ptr %i.af, align 4, !tbaa !34 ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02428
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !34 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02428
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !34
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ai, float %i.ak)
  %i.am = fsub reassoc nsz arcp contract afn float %i.al, %i.ai
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ag
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.ai
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ao, float 0.000000e+00)
  %i.aq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ap, float 1.000000e+00)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02428 ; 2 uses
  store float %i.aq, ptr %i.ar, align 4, !tbaa !34
  %i.as = or disjoint i64 %.02428, 1              ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !34 ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !34
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.au, float %i.aw)
  %i.ay = fsub reassoc nsz arcp contract afn float %i.ax, %i.au
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.ag
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %i.au
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ba, float 0.000000e+00)
  %i.bc = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bb, float 1.000000e+00)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as
  store float %i.bc, ptr %i.bd, align 4, !tbaa !34
  %i.be = or disjoint i64 %.02428, 2              ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !34 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.be
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !34
  %i.bj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bg, float %i.bi)
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bj, %i.bg
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %i.ag
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bg
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bm, float 0.000000e+00)
  %i.bo = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bn, float 1.000000e+00)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.be
  store float %i.bo, ptr %i.bp, align 4, !tbaa !34
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store float %i.ag, ptr %i.bq, align 4, !tbaa !34
  %i.br = add nuw i64 %.02527, 1                  ; 2 uses
  %i.bs = add i64 %.02428, 4
  %exitcond.not = icmp eq i64 %i.br, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !267
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_multiply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

.lr.ph.preheader42:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02428.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.02527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep30
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %2, %scevgep31
  %bound133 = icmp ult ptr %1, %scevgep
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !34, !alias.scope !278 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec35 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec36 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec37 = load <32 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !279 ; 3 uses
  %strided.vec38 = shufflevector <32 x float> %wide.vec37, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec39 = shufflevector <32 x float> %wide.vec37, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec40 = shufflevector <32 x float> %wide.vec37, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec38, %strided.vec
  %i.l = fsub reassoc nsz arcp contract afn <8 x float> %i.k, %strided.vec
  %i.m = fmul reassoc nsz arcp contract afn <8 x float> %i.l, %wide.load
  %i.n = fadd reassoc nsz arcp contract afn <8 x float> %i.m, %strided.vec
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.p = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec39, %strided.vec35
  %i.q = fsub reassoc nsz arcp contract afn <8 x float> %i.p, %strided.vec35
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %i.q, %wide.load
  %i.s = fadd reassoc nsz arcp contract afn <8 x float> %i.r, %strided.vec35
  %5 = shufflevector <8 x float> %i.n, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %6 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %5, <16 x float> zeroinitializer)
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec40, %strided.vec36
  %i.u = fsub reassoc nsz arcp contract afn <8 x float> %i.t, %strided.vec36
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %i.u, %wide.load
  %i.w = fadd reassoc nsz arcp contract afn <8 x float> %i.v, %strided.vec36
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.w, <8 x float> zeroinitializer)
  %i.y = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.x, <8 x float> splat (float 1.000000e+00))
  %i.z = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %6, <16 x float> splat (float 1.000000e+00))
  %i.aa = shufflevector <8 x float> %i.y, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.z, <16 x float> %i.aa, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.o, align 4, !tbaa !34, !alias.scope !280, !noalias !281
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %.lr.ph.preheader42, label %vector.body, !llvm.loop !276

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %.02428 = phi i64 [ %i.bp, %.lr.ph ], [ %.02428.ph, %.lr.ph.preheader42 ] ; 6 uses
  %.02527 = phi i64 [ %i.bo, %.lr.ph ], [ %.02527.ph, %.lr.ph.preheader42 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !34 ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02428
  %i.af = load float, ptr %i.ae, align 4, !tbaa !34 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02428
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !34
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.af
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ai, %i.af
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ad
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.af
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.al, float 0.000000e+00)
  %i.an = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.am, float 1.000000e+00)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02428 ; 2 uses
  store float %i.an, ptr %i.ao, align 4, !tbaa !34
  %i.ap = or disjoint i64 %.02428, 1              ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !34 ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.at = load float, ptr %i.as, align 4, !tbaa !34
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.ar
  %i.av = fsub reassoc nsz arcp contract afn float %i.au, %i.ar
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.ad
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.ar
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ax, float 0.000000e+00)
  %i.az = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ay, float 1.000000e+00)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ap
  store float %i.az, ptr %i.ba, align 4, !tbaa !34
  %i.bb = or disjoint i64 %.02428, 2              ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !34 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb
  %i.bf = load float, ptr %i.be, align 4, !tbaa !34
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.bd
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bg, %i.bd
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.ad
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.bd
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bj, float 0.000000e+00)
  %i.bl = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bk, float 1.000000e+00)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bb
  store float %i.bl, ptr %i.bm, align 4, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store float %i.ad, ptr %i.bn, align 4, !tbaa !34
  %i.bo = add nuw i64 %.02527, 1                  ; 2 uses
  %i.bp = add i64 %.02428, 4
  %exitcond.not = icmp eq i64 %i.bo, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !277
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_average(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

.lr.ph.preheader42:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02428.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.02527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep30
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %2, %scevgep31
  %bound133 = icmp ult ptr %1, %scevgep
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !34, !alias.scope !288 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec35 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec36 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec37 = load <32 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !289 ; 3 uses
  %strided.vec38 = shufflevector <32 x float> %wide.vec37, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec39 = shufflevector <32 x float> %wide.vec37, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec40 = shufflevector <32 x float> %wide.vec37, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec38, %strided.vec
  %i.l = fmul reassoc nsz arcp contract afn <8 x float> %i.k, splat (float 5.000000e-01)
  %i.m = fsub reassoc nsz arcp contract afn <8 x float> %i.l, %strided.vec
  %i.n = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %wide.load
  %i.o = fadd reassoc nsz arcp contract afn <8 x float> %i.n, %strided.vec
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.q = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec39, %strided.vec35
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %i.q, splat (float 5.000000e-01)
  %i.s = fsub reassoc nsz arcp contract afn <8 x float> %i.r, %strided.vec35
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %i.s, %wide.load
  %i.u = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %strided.vec35
  %5 = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %6 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %5, <16 x float> zeroinitializer)
  %i.v = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec40, %strided.vec36
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %i.v, splat (float 5.000000e-01)
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %i.w, %strided.vec36
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %i.x, %wide.load
  %i.z = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %strided.vec36
  %i.aa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.z, <8 x float> zeroinitializer)
  %i.ab = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aa, <8 x float> splat (float 1.000000e+00))
  %i.ac = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %6, <16 x float> splat (float 1.000000e+00))
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ac, <16 x float> %i.ad, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !34, !alias.scope !290, !noalias !291
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %.lr.ph.preheader42, label %vector.body, !llvm.loop !286

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %.02428 = phi i64 [ %i.bv, %.lr.ph ], [ %.02428.ph, %.lr.ph.preheader42 ] ; 6 uses
  %.02527 = phi i64 [ %i.bu, %.lr.ph ], [ %.02527.ph, %.lr.ph.preheader42 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.ag = load float, ptr %i.af, align 4, !tbaa !34 ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02428
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !34 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02428
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !34
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.ai
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, 5.000000e-01
  %i.an = fsub reassoc nsz arcp contract afn float %i.am, %i.ai
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, %i.ag
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, %i.ai
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ap, float 0.000000e+00)
  %i.ar = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.aq, float 1.000000e+00)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02428 ; 2 uses
  store float %i.ar, ptr %i.as, align 4, !tbaa !34
  %i.at = or disjoint i64 %.02428, 1              ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !34 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.av
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, 5.000000e-01
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.av
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.ag
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.av
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bc, float 0.000000e+00)
  %i.be = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bd, float 1.000000e+00)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at
  store float %i.be, ptr %i.bf, align 4, !tbaa !34
  %i.bg = or disjoint i64 %.02428, 2              ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !34 ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bg
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !34
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.bi
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, 5.000000e-01
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bi
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.ag
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bi
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float 0.000000e+00)
  %i.br = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bq, float 1.000000e+00)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bg
  store float %i.br, ptr %i.bs, align 4, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float %i.ag, ptr %i.bt, align 4, !tbaa !34
  %i.bu = add nuw i64 %.02527, 1                  ; 2 uses
  %i.bv = add i64 %.02428, 4
  %exitcond.not = icmp eq i64 %i.bu, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !287
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_add(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

.lr.ph.preheader42:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02428.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.02527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep30
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %2, %scevgep31
  %bound133 = icmp ult ptr %1, %scevgep
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 3                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 4, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.h, align 4, !tbaa !34 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <16 x float>, ptr %i.i, align 4, !tbaa !34, !alias.scope !298 ; 3 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec35 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec36 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec37 = load <16 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !299 ; 3 uses
  %strided.vec38 = shufflevector <16 x float> %wide.vec37, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec39 = shufflevector <16 x float> %wide.vec37, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec40 = shufflevector <16 x float> %wide.vec37, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.k = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec38, %wide.load
  %i.l = fadd reassoc nsz arcp contract afn <4 x float> %i.k, %strided.vec
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.n = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec39, %wide.load
  %i.o = fadd reassoc nsz arcp contract afn <4 x float> %i.n, %strided.vec35
  %5 = shufflevector <4 x float> %i.l, <4 x float> %i.o, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %5, <8 x float> zeroinitializer)
  %7 = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec40, %wide.load
  %8 = fadd reassoc nsz arcp contract afn <4 x float> %7, %strided.vec36
  %9 = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %8, <4 x float> zeroinitializer)
  %10 = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %9, <4 x float> splat (float 1.000000e+00))
  %i.p = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %6, <8 x float> splat (float 1.000000e+00))
  %i.q = shufflevector <4 x float> %10, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.p, <8 x float> %i.q, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.m, align 4, !tbaa !34, !alias.scope !300, !noalias !301
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %.lr.ph.preheader42, label %vector.body, !llvm.loop !296

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %.02428 = phi i64 [ %i.az, %.lr.ph ], [ %.02428.ph, %.lr.ph.preheader42 ] ; 6 uses
  %.02527 = phi i64 [ %i.ay, %.lr.ph ], [ %.02527.ph, %.lr.ph.preheader42 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.t = load float, ptr %i.s, align 4, !tbaa !34 ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02428
  %i.v = load float, ptr %i.u, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02428
  %i.x = load float, ptr %i.w, align 4, !tbaa !34
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.t
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.v
  %i.aa = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.z, float 0.000000e+00)
  %i.ab = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.aa, float 1.000000e+00)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02428 ; 2 uses
  store float %i.ab, ptr %i.ac, align 4, !tbaa !34
  %i.ad = or disjoint i64 %.02428, 1              ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !34
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !34
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.t
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.af
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aj, float 0.000000e+00)
  %i.al = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ak, float 1.000000e+00)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad
  store float %i.al, ptr %i.am, align 4, !tbaa !34
  %i.an = or disjoint i64 %.02428, 2              ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !34
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !34
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.t
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.ap
  %i.au = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.at, float 0.000000e+00)
  %i.av = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.au, float 1.000000e+00)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.an
  store float %i.av, ptr %i.aw, align 4, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store float %i.t, ptr %i.ax, align 4, !tbaa !34
  %i.ay = add nuw i64 %.02527, 1                  ; 2 uses
  %i.az = add i64 %.02428, 4
  %exitcond.not = icmp eq i64 %i.ay, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !297
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_subtract(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

.lr.ph.preheader42:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02428.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.02527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep30
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %2, %scevgep31
  %bound133 = icmp ult ptr %1, %scevgep
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 3                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 4, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.h, align 4, !tbaa !34 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <16 x float>, ptr %i.i, align 4, !tbaa !34, !alias.scope !308 ; 3 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec35 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec36 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec37 = load <16 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !309 ; 3 uses
  %strided.vec38 = shufflevector <16 x float> %wide.vec37, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec39 = shufflevector <16 x float> %wide.vec37, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec40 = shufflevector <16 x float> %wide.vec37, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.k = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec38, splat (float -1.000000e+00)
  %i.l = fmul reassoc nsz arcp contract afn <4 x float> %i.k, %wide.load
  %i.m = fadd reassoc nsz arcp contract afn <4 x float> %i.l, %strided.vec
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.o = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec39, splat (float -1.000000e+00)
  %i.p = fmul reassoc nsz arcp contract afn <4 x float> %i.o, %wide.load
  %i.q = fadd reassoc nsz arcp contract afn <4 x float> %i.p, %strided.vec35
  %5 = shufflevector <4 x float> %i.m, <4 x float> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %5, <8 x float> zeroinitializer)
  %i.r = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec40, splat (float -1.000000e+00)
  %7 = fmul reassoc nsz arcp contract afn <4 x float> %i.r, %wide.load
  %8 = fadd reassoc nsz arcp contract afn <4 x float> %7, %strided.vec36
  %9 = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %8, <4 x float> zeroinitializer)
  %10 = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %9, <4 x float> splat (float 1.000000e+00))
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %6, <8 x float> splat (float 1.000000e+00))
  %i.t = shufflevector <4 x float> %10, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.s, <8 x float> %i.t, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.n, align 4, !tbaa !34, !alias.scope !310, !noalias !311
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %.lr.ph.preheader42, label %vector.body, !llvm.loop !306

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %.02428 = phi i64 [ %i.bf, %.lr.ph ], [ %.02428.ph, %.lr.ph.preheader42 ] ; 6 uses
  %.02527 = phi i64 [ %i.be, %.lr.ph ], [ %.02527.ph, %.lr.ph.preheader42 ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.w = load float, ptr %i.v, align 4, !tbaa !34 ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02428
  %i.y = load float, ptr %i.x, align 4, !tbaa !34
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02428
  %i.aa = load float, ptr %i.z, align 4, !tbaa !34
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, -1.000000e+00
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, %i.w
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.y
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ad, float 0.000000e+00)
  %i.af = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ae, float 1.000000e+00)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02428 ; 2 uses
  store float %i.af, ptr %i.ag, align 4, !tbaa !34
  %i.ah = or disjoint i64 %.02428, 1              ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !34
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.al = load float, ptr %i.ak, align 4, !tbaa !34
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, -1.000000e+00
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.w
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.aj
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ao, float 0.000000e+00)
  %i.aq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ap, float 1.000000e+00)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  store float %i.aq, ptr %i.ar, align 4, !tbaa !34
  %i.as = or disjoint i64 %.02428, 2              ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !34
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !34
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, -1.000000e+00
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.w
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, %i.au
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.az, float 0.000000e+00)
  %i.bb = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ba, float 1.000000e+00)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as
  store float %i.bb, ptr %i.bc, align 4, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store float %i.w, ptr %i.bd, align 4, !tbaa !34
  %i.be = add nuw i64 %.02527, 1                  ; 2 uses
  %i.bf = add i64 %.02428, 4
  %exitcond.not = icmp eq i64 %i.be, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !307
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_difference(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

.lr.ph.preheader42:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02428.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.02527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep30
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %2, %scevgep31
  %bound133 = icmp ult ptr %1, %scevgep
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !34, !alias.scope !318 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec35 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec36 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec37 = load <32 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !319 ; 3 uses
  %strided.vec38 = shufflevector <32 x float> %wide.vec37, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec39 = shufflevector <32 x float> %wide.vec37, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec40 = shufflevector <32 x float> %wide.vec37, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec38
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.k)
  %i.m = fsub reassoc nsz arcp contract afn <8 x float> %i.l, %strided.vec
  %i.n = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %wide.load
  %i.o = fadd reassoc nsz arcp contract afn <8 x float> %i.n, %strided.vec
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.q = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec35, %strided.vec39
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.q)
  %i.s = fsub reassoc nsz arcp contract afn <8 x float> %i.r, %strided.vec35
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %i.s, %wide.load
  %i.u = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %strided.vec35
  %5 = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %6 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %5, <16 x float> zeroinitializer)
  %i.v = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec36, %strided.vec40
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.v)
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %i.w, %strided.vec36
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %i.x, %wide.load
  %i.z = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %strided.vec36
  %i.aa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.z, <8 x float> zeroinitializer)
  %i.ab = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aa, <8 x float> splat (float 1.000000e+00))
  %i.ac = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %6, <16 x float> splat (float 1.000000e+00))
  %i.ad = shufflevector <8 x float> %i.ab, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ac, <16 x float> %i.ad, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !34, !alias.scope !320, !noalias !321
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %.lr.ph.preheader42, label %vector.body, !llvm.loop !316

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %.02428 = phi i64 [ %i.bv, %.lr.ph ], [ %.02428.ph, %.lr.ph.preheader42 ] ; 6 uses
  %.02527 = phi i64 [ %i.bu, %.lr.ph ], [ %.02527.ph, %.lr.ph.preheader42 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02527
  %i.ag = load float, ptr %i.af, align 4, !tbaa !34 ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02428
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !34 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02428
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !34
  %i.al = fsub reassoc nsz arcp contract afn float %i.ai, %i.ak
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.al)
  %i.an = fsub reassoc nsz arcp contract afn float %i.am, %i.ai
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, %i.ag
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, %i.ai
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ap, float 0.000000e+00)
  %i.ar = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.aq, float 1.000000e+00)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02428 ; 2 uses
  store float %i.ar, ptr %i.as, align 4, !tbaa !34
  %i.at = or disjoint i64 %.02428, 1              ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !34 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = fsub reassoc nsz arcp contract afn float %i.av, %i.ax
  %i.az = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ay)
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.av
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.ag
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.av
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bc, float 0.000000e+00)
  %i.be = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bd, float 1.000000e+00)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at
  store float %i.be, ptr %i.bf, align 4, !tbaa !34
  %i.bg = or disjoint i64 %.02428, 2              ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !34 ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bg
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !34
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bi, %i.bk
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bl)
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bi
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.ag
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bi
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float 0.000000e+00)
  %i.br = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bq, float 1.000000e+00)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bg
  store float %i.br, ptr %i.bs, align 4, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float %i.ag, ptr %i.bt, align 4, !tbaa !34
  %i.bu = add nuw i64 %.02527, 1                  ; 2 uses
  %i.bv = add i64 %.02428, 4
  %exitcond.not = icmp eq i64 %i.bu, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !317
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_screen(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader44, label %vector.memcheck

.lr.ph.preheader44:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.030.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02429.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep32 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep33 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep32
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound034 = icmp ult ptr %2, %scevgep33
  %bound135 = icmp ult ptr %1, %scevgep
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  br i1 %conflict.rdx, label %.lr.ph.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !34, !alias.scope !328 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec37 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec38 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.j = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.j, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec39 = load <32 x float>, ptr %i.l, align 4, !tbaa !34, !alias.scope !329 ; 3 uses
  %strided.vec40 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec41 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec42 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec40, <8 x float> zeroinitializer)
  %i.n = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.m, <8 x float> splat (float 1.000000e+00))
  %i.o = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.n
  %i.p = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.k, splat (float -1.000000e+00)
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %i.o, %i.p
  %i.r = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.k
  %i.s = fadd reassoc nsz arcp contract afn <8 x float> %i.r, %i.q
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %i.s, %wide.load
  %i.u = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %i.k
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec37, <8 x float> zeroinitializer)
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.w, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.y = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec41, <8 x float> zeroinitializer)
  %i.z = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.y, <8 x float> splat (float 1.000000e+00))
  %i.aa = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.z
  %i.ab = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.x, splat (float -1.000000e+00)
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.aa, %i.ab
  %i.ad = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.x
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, %i.ac
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %i.ae, %wide.load
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %i.af, %i.x
  %5 = shufflevector <8 x float> %i.u, <8 x float> %i.ag, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %6 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %5, <16 x float> zeroinitializer)
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec38, <8 x float> zeroinitializer)
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ah, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec42, <8 x float> zeroinitializer)
  %i.ak = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aj, <8 x float> splat (float 1.000000e+00))
  %i.al = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ak
  %i.am = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ai, splat (float -1.000000e+00)
  %i.an = fmul reassoc nsz arcp contract afn <8 x float> %i.al, %i.am
  %i.ao = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ai
  %i.ap = fadd reassoc nsz arcp contract afn <8 x float> %i.ao, %i.an
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %i.ap, %wide.load
  %i.ar = fadd reassoc nsz arcp contract afn <8 x float> %i.aq, %i.ai
  %i.as = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ar, <8 x float> zeroinitializer)
  %i.at = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.as, <8 x float> splat (float 1.000000e+00))
  %i.au = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %6, <16 x float> splat (float 1.000000e+00))
  %i.av = shufflevector <8 x float> %i.at, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.au, <16 x float> %i.av, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.v, align 4, !tbaa !34, !alias.scope !330, !noalias !331
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %.lr.ph.preheader44, label %vector.body, !llvm.loop !326

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader44, %.lr.ph
  %.030 = phi i64 [ %i.cy, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader44 ] ; 2 uses
  %.02429 = phi i64 [ %i.cz, %.lr.ph ], [ %.02429.ph, %.lr.ph.preheader44 ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.030
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !34 ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02429
  %i.ba = load float, ptr %i.az, align 4, !tbaa !34
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ba, float 0.000000e+00)
  %i.bc = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bb, float 1.000000e+00) ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02429
  %i.be = load float, ptr %i.bd, align 4, !tbaa !34
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.be, float 0.000000e+00)
  %i.bg = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bf, float 1.000000e+00)
  %i.bh = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bg
  %i.bi = fadd reassoc nnan nsz arcp contract afn float %i.bc, -1.000000e+00
  %.neg26 = fmul reassoc nsz arcp contract afn float %i.bh, %i.bi
  %.neg27 = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bc
  %i.bj = fadd reassoc nsz arcp contract afn float %.neg27, %.neg26
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %i.ay
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.bc
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bl, float 0.000000e+00)
  %i.bn = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bm, float 1.000000e+00)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02429 ; 2 uses
  store float %i.bn, ptr %i.bo, align 4, !tbaa !34
  %i.bp = or disjoint i64 %.02429, 1              ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !34
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.br, float 0.000000e+00)
  %i.bt = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bs, float 1.000000e+00) ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bp
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !34
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bv, float 0.000000e+00)
  %i.bx = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bw, float 1.000000e+00)
  %i.by = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bx
  %i.bz = fadd reassoc nnan nsz arcp contract afn float %i.bt, -1.000000e+00
  %.neg26.1 = fmul reassoc nsz arcp contract afn float %i.by, %i.bz
  %.neg27.1 = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bt
  %i.ca = fadd reassoc nsz arcp contract afn float %.neg27.1, %.neg26.1
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.ay
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %i.bt
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cc, float 0.000000e+00)
  %i.ce = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cd, float 1.000000e+00)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bp
  store float %i.ce, ptr %i.cf, align 4, !tbaa !34
  %i.cg = or disjoint i64 %.02429, 2              ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !34
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ci, float 0.000000e+00)
  %i.ck = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cj, float 1.000000e+00) ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cg
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !34
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cm, float 0.000000e+00)
  %i.co = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.cn, float 1.000000e+00)
  %i.cp = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.co
  %i.cq = fadd reassoc nnan nsz arcp contract afn float %i.ck, -1.000000e+00
  %.neg26.2 = fmul reassoc nsz arcp contract afn float %i.cp, %i.cq
  %.neg27.2 = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ck
  %i.cr = fadd reassoc nsz arcp contract afn float %.neg27.2, %.neg26.2
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.ay
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, %i.ck
  %i.cu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ct, float 0.000000e+00)
  %i.cv = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cu, float 1.000000e+00)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cg
  store float %i.cv, ptr %i.cw, align 4, !tbaa !34
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store float %i.ay, ptr %i.cx, align 4, !tbaa !34
  %i.cy = add nuw i64 %.030, 1                    ; 2 uses
  %i.cz = add i64 %.02429, 4
  %exitcond.not = icmp eq i64 %i.cy, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !327
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_overlay(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader51, label %vector.ph

.lr.ph.preheader51:                               ; preds = %vector.body, %.lr.ph.preheader
  %.02934.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.d, %vector.body ]
  %.03033.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.a = and i64 %4, 7                            ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = select i1 %i.b, i64 8, i64 %i.a
  %n.vec = sub i64 %4, %i.c                       ; 3 uses
  %i.d = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = shl i64 %index, 2                        ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.f, align 4, !tbaa !34 ; 3 uses
  %i.g = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %wide.vec = load <32 x float>, ptr %i.h, align 4, !tbaa !34 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec42 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec43 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.i = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.j = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.i, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %wide.vec44 = load <32 x float>, ptr %i.k, align 4, !tbaa !34 ; 3 uses
  %strided.vec45 = shufflevector <32 x float> %wide.vec44, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec46 = shufflevector <32 x float> %wide.vec44, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec47 = shufflevector <32 x float> %wide.vec44, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec45, <8 x float> zeroinitializer)
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.l, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.n = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.j, splat (float 2.000000e+00) ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.p = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec42, <8 x float> zeroinitializer)
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.p, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec46, <8 x float> zeroinitializer)
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.r, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.t = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.q, splat (float 2.000000e+00) ; 2 uses
  %5 = shufflevector <8 x float> %i.g, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <8 x float> %i.j, <8 x float> %i.q, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %7 = fcmp reassoc nsz arcp contract afn ogt <16 x float> %6, splat (float 5.000000e-01)
  %8 = shufflevector <8 x float> %i.n, <8 x float> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %9 = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 2.000000e+00), %8
  %10 = shufflevector <8 x float> %i.m, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %11 = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %10
  %12 = fmul reassoc nsz arcp contract afn <16 x float> %9, %11
  %13 = fsub reassoc nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %12
  %14 = shufflevector <8 x float> %i.n, <8 x float> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %15 = shufflevector <8 x float> %i.m, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %16 = fmul reassoc nsz arcp contract afn <16 x float> %14, %15
  %17 = select reassoc nsz arcp contract afn <16 x i1> %7, <16 x float> %13, <16 x float> %16
  %18 = shufflevector <8 x float> %i.j, <8 x float> %i.q, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %19 = fsub reassoc nsz arcp contract afn <16 x float> %17, %18
  %20 = fmul reassoc nsz arcp contract afn <16 x float> %5, %19
  %21 = shufflevector <8 x float> %i.j, <8 x float> %i.q, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %22 = fadd reassoc nsz arcp contract afn <16 x float> %20, %21
  %23 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %22, <16 x float> zeroinitializer)
  %24 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec43, <8 x float> zeroinitializer)
  %25 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %24, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %26 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec47, <8 x float> zeroinitializer)
  %27 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %26, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %28 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %25, splat (float 5.000000e-01)
  %29 = fmul reassoc nnan nsz arcp contract afn <8 x float> %25, splat (float 2.000000e+00) ; 2 uses
  %30 = fmul reassoc nsz arcp contract afn <8 x float> %29, %27
  %31 = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %29
  %32 = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %27
  %33 = fmul reassoc nsz arcp contract afn <8 x float> %31, %32
  %34 = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %33
  %predphi49 = select reassoc nsz arcp contract afn <8 x i1> %28, <8 x float> %34, <8 x float> %30
  %35 = fsub reassoc nsz arcp contract afn <8 x float> %predphi49, %25
  %36 = fmul reassoc nsz arcp contract afn <8 x float> %i.g, %35
  %37 = fadd reassoc nsz arcp contract afn <8 x float> %36, %25
  %38 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %37, <8 x float> zeroinitializer)
  %39 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %38, <8 x float> splat (float 1.000000e+00))
  %i.u = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %23, <16 x float> splat (float 1.000000e+00))
  %i.v = shufflevector <8 x float> %39, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.u, <16 x float> %i.v, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.o, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %.lr.ph.preheader51, label %vector.body, !llvm.loop !332

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %bb.j
  %.02934 = phi i64 [ %i.cs, %bb.j ], [ %.02934.ph, %.lr.ph.preheader51 ] ; 6 uses
  %.03033 = phi i64 [ %i.cr, %bb.j ], [ %.03033.ph, %.lr.ph.preheader51 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03033
  %i.y = load float, ptr %i.x, align 4, !tbaa !34 ; 3 uses
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02934
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !34
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ab, float 0.000000e+00)
  %i.ad = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ac, float 1.000000e+00) ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02934
  %i.af = load float, ptr %i.ae, align 4, !tbaa !34
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.af, float 0.000000e+00)
  %i.ah = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ag, float 1.000000e+00) ; 2 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.ad, 5.000000e-01
  %i.aj = fmul reassoc nnan nsz arcp contract afn float %i.ad, 2.000000e+00 ; 2 uses
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ak = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.aj
  %i.al = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ah
  %i.am = fmul reassoc nsz arcp contract afn float %i.ak, %i.al
  %i.an = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.am
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ao = fmul reassoc nsz arcp contract afn float %i.aj, %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = phi reassoc nsz arcp contract afn float [ %i.an, %bb.b ], [ %i.ao, %bb.c ]
  %i.aq = fsub reassoc nsz arcp contract afn float %i.ap, %i.ad
  %i.ar = fmul reassoc nsz arcp contract afn float %i.z, %i.aq
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.ad
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.as, float 0.000000e+00)
  %i.au = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.at, float 1.000000e+00)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02934 ; 2 uses
  store float %i.au, ptr %i.av, align 4, !tbaa !34
  %i.aw = or disjoint i64 %.02934, 1              ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !34
  %i.az = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ay, float 0.000000e+00)
  %i.ba = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.az, float 1.000000e+00) ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !34
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bc, float 0.000000e+00)
  %i.be = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bd, float 1.000000e+00) ; 2 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt float %i.ba, 5.000000e-01
  %i.bg = fmul reassoc nnan nsz arcp contract afn float %i.ba, 2.000000e+00 ; 2 uses
  br i1 %i.bf, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.be
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bi = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.bg
  %i.bj = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.be
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bi, %i.bj
  %i.bl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bk
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bm = phi reassoc nsz arcp contract afn float [ %i.bl, %bb.f ], [ %i.bh, %bb.e ]
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.ba
  %i.bo = fmul reassoc nsz arcp contract afn float %i.z, %i.bn
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.ba
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float 0.000000e+00)
  %i.br = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bq, float 1.000000e+00)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw
  store float %i.br, ptr %i.bs, align 4, !tbaa !34
  %i.bt = or disjoint i64 %.02934, 2              ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !34
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bv, float 0.000000e+00)
  %i.bx = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bw, float 1.000000e+00) ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  %i.bz = load float, ptr %i.by, align 4, !tbaa !34
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bz, float 0.000000e+00)
  %i.cb = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ca, float 1.000000e+00) ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt float %i.bx, 5.000000e-01
  %i.cd = fmul reassoc nnan nsz arcp contract afn float %i.bx, 2.000000e+00 ; 2 uses
  br i1 %i.cc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.cb
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cf = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.cd
  %i.cg = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.cb
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cf, %i.cg
  %i.ci = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ch
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cj = phi reassoc nsz arcp contract afn float [ %i.ci, %bb.i ], [ %i.ce, %bb.h ]
  %i.ck = fsub reassoc nsz arcp contract afn float %i.cj, %i.bx
  %i.cl = fmul reassoc nsz arcp contract afn float %i.z, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, %i.bx
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cm, float 0.000000e+00)
  %i.co = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cn, float 1.000000e+00)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bt
  store float %i.co, ptr %i.cp, align 4, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store float %i.y, ptr %i.cq, align 4, !tbaa !34
  %i.cr = add nuw i64 %.03033, 1                  ; 2 uses
  %i.cs = add i64 %.02934, 4
  %exitcond.not = icmp eq i64 %i.cr, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !333
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_softlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.memcheck

.lr.ph.preheader56:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02934.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.03033.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep42 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep43 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep42
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %2, %scevgep43
  %bound145 = icmp ult ptr %1, %scevgep
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 3 uses
  %i.i = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !340 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec47 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec48 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.k, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec49 = load <32 x float>, ptr %i.m, align 4, !tbaa !34, !alias.scope !341 ; 3 uses
  %strided.vec50 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec51 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec52 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec50, <8 x float> zeroinitializer)
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.n, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec47, <8 x float> zeroinitializer)
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.q, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec51, <8 x float> zeroinitializer)
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.s, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %5 = shufflevector <8 x float> %i.i, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <8 x float> %i.o, <8 x float> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %7 = fcmp reassoc nsz arcp contract afn ogt <16 x float> %6, splat (float 5.000000e-01)
  %8 = shufflevector <8 x float> %i.o, <8 x float> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %9 = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 1.500000e+00), %8
  %10 = shufflevector <8 x float> %i.l, <8 x float> %i.r, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %11 = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %10
  %12 = fmul reassoc nsz arcp contract afn <16 x float> %9, %11
  %13 = fsub reassoc nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %12
  %14 = shufflevector <8 x float> %i.o, <8 x float> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %15 = fadd reassoc nnan nsz arcp contract afn <16 x float> %14, splat (float 5.000000e-01)
  %16 = shufflevector <8 x float> %i.l, <8 x float> %i.r, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %17 = fmul reassoc nsz arcp contract afn <16 x float> %15, %16
  %18 = select reassoc nsz arcp contract afn <16 x i1> %7, <16 x float> %13, <16 x float> %17
  %19 = shufflevector <8 x float> %i.l, <8 x float> %i.r, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %20 = fsub reassoc nsz arcp contract afn <16 x float> %18, %19
  %21 = fmul reassoc nsz arcp contract afn <16 x float> %5, %20
  %22 = shufflevector <8 x float> %i.l, <8 x float> %i.r, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %23 = fadd reassoc nsz arcp contract afn <16 x float> %21, %22
  %24 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %23, <16 x float> zeroinitializer)
  %25 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec48, <8 x float> zeroinitializer)
  %26 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %25, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %27 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec52, <8 x float> zeroinitializer)
  %28 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %27, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %29 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %28, splat (float 5.000000e-01)
  %30 = fadd reassoc nnan nsz arcp contract afn <8 x float> %28, splat (float 5.000000e-01)
  %31 = fmul reassoc nsz arcp contract afn <8 x float> %30, %26
  %32 = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %26
  %33 = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.500000e+00), %28
  %34 = fmul reassoc nsz arcp contract afn <8 x float> %33, %32
  %35 = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %34
  %predphi54 = select reassoc nsz arcp contract afn <8 x i1> %29, <8 x float> %35, <8 x float> %31
  %36 = fsub reassoc nsz arcp contract afn <8 x float> %predphi54, %26
  %37 = fmul reassoc nsz arcp contract afn <8 x float> %i.i, %36
  %38 = fadd reassoc nsz arcp contract afn <8 x float> %37, %26
  %39 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %38, <8 x float> zeroinitializer)
  %40 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %39, <8 x float> splat (float 1.000000e+00))
  %i.u = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %24, <16 x float> splat (float 1.000000e+00))
  %i.v = shufflevector <8 x float> %40, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.u, <16 x float> %i.v, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.p, align 4, !tbaa !34, !alias.scope !342, !noalias !343
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %.lr.ph.preheader56, label %vector.body, !llvm.loop !338

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader56, %bb.j
  %.02934 = phi i64 [ %i.cs, %bb.j ], [ %.02934.ph, %.lr.ph.preheader56 ] ; 6 uses
  %.03033 = phi i64 [ %i.cr, %bb.j ], [ %.03033.ph, %.lr.ph.preheader56 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03033
  %i.y = load float, ptr %i.x, align 4, !tbaa !34 ; 3 uses
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02934
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !34
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ab, float 0.000000e+00)
  %i.ad = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ac, float 1.000000e+00) ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02934
  %i.af = load float, ptr %i.ae, align 4, !tbaa !34
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.af, float 0.000000e+00)
  %i.ah = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ag, float 1.000000e+00) ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.ah, 5.000000e-01
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.aj = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ad
  %i.ak = fsub reassoc nnan nsz arcp contract afn float 1.500000e+00, %i.ah
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.aj
  %i.am = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.al
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.an = fadd reassoc nnan nsz arcp contract afn float %i.ah, 5.000000e-01
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, %i.ad
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = phi reassoc nsz arcp contract afn float [ %i.am, %bb.b ], [ %i.ao, %bb.c ]
  %i.aq = fsub reassoc nsz arcp contract afn float %i.ap, %i.ad
  %i.ar = fmul reassoc nsz arcp contract afn float %i.z, %i.aq
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.ad
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.as, float 0.000000e+00)
  %i.au = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.at, float 1.000000e+00)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02934 ; 2 uses
  store float %i.au, ptr %i.av, align 4, !tbaa !34
  %i.aw = or disjoint i64 %.02934, 1              ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !34
  %i.az = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ay, float 0.000000e+00)
  %i.ba = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.az, float 1.000000e+00) ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !34
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bc, float 0.000000e+00)
  %i.be = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bd, float 1.000000e+00) ; 3 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt float %i.be, 5.000000e-01
  br i1 %i.bf, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = fadd reassoc nnan nsz arcp contract afn float %i.be, 5.000000e-01
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.ba
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bi = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ba
  %i.bj = fsub reassoc nnan nsz arcp contract afn float 1.500000e+00, %i.be
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %i.bi
  %i.bl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bk
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bm = phi reassoc nsz arcp contract afn float [ %i.bl, %bb.f ], [ %i.bh, %bb.e ]
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.ba
  %i.bo = fmul reassoc nsz arcp contract afn float %i.z, %i.bn
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.ba
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float 0.000000e+00)
  %i.br = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bq, float 1.000000e+00)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw
  store float %i.br, ptr %i.bs, align 4, !tbaa !34
  %i.bt = or disjoint i64 %.02934, 2              ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !34
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bv, float 0.000000e+00)
  %i.bx = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bw, float 1.000000e+00) ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  %i.bz = load float, ptr %i.by, align 4, !tbaa !34
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bz, float 0.000000e+00)
  %i.cb = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ca, float 1.000000e+00) ; 3 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt float %i.cb, 5.000000e-01
  br i1 %i.cc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = fadd reassoc nnan nsz arcp contract afn float %i.cb, 5.000000e-01
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.bx
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cf = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bx
  %i.cg = fsub reassoc nnan nsz arcp contract afn float 1.500000e+00, %i.cb
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.cf
  %i.ci = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ch
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cj = phi reassoc nsz arcp contract afn float [ %i.ci, %bb.i ], [ %i.ce, %bb.h ]
  %i.ck = fsub reassoc nsz arcp contract afn float %i.cj, %i.bx
  %i.cl = fmul reassoc nsz arcp contract afn float %i.z, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, %i.bx
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cm, float 0.000000e+00)
  %i.co = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cn, float 1.000000e+00)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bt
  store float %i.co, ptr %i.cp, align 4, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store float %i.y, ptr %i.cq, align 4, !tbaa !34
  %i.cr = add nuw i64 %.03033, 1                  ; 2 uses
  %i.cs = add i64 %.02934, 4
  %exitcond.not = icmp eq i64 %i.cr, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !339
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_hardlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.memcheck

.lr.ph.preheader56:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02934.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.03033.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep42 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep43 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep42
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %2, %scevgep43
  %bound145 = icmp ult ptr %1, %scevgep
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 3 uses
  %i.i = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !350 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec47 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec48 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.k, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec49 = load <32 x float>, ptr %i.m, align 4, !tbaa !34, !alias.scope !351 ; 3 uses
  %strided.vec50 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec51 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec52 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec50, <8 x float> zeroinitializer)
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.n, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.p = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.l, splat (float 2.000000e+00) ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec47, <8 x float> zeroinitializer)
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.r, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec51, <8 x float> zeroinitializer)
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.t, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.v = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.s, splat (float 2.000000e+00) ; 2 uses
  %5 = shufflevector <8 x float> %i.i, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %7 = fcmp reassoc nsz arcp contract afn ogt <16 x float> %6, splat (float 5.000000e-01)
  %8 = shufflevector <8 x float> %i.p, <8 x float> %i.v, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %9 = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 2.000000e+00), %8
  %10 = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %11 = fsub reassoc nnan nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %10
  %12 = fmul reassoc nsz arcp contract afn <16 x float> %9, %11
  %13 = fsub reassoc nsz arcp contract afn <16 x float> splat (float 1.000000e+00), %12
  %14 = shufflevector <8 x float> %i.p, <8 x float> %i.v, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %15 = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %16 = fmul reassoc nsz arcp contract afn <16 x float> %14, %15
  %17 = select reassoc nsz arcp contract afn <16 x i1> %7, <16 x float> %13, <16 x float> %16
  %18 = shufflevector <8 x float> %i.l, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %19 = fsub reassoc nsz arcp contract afn <16 x float> %17, %18
  %20 = fmul reassoc nsz arcp contract afn <16 x float> %5, %19
  %21 = shufflevector <8 x float> %i.l, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %22 = fadd reassoc nsz arcp contract afn <16 x float> %20, %21
  %23 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %22, <16 x float> zeroinitializer)
  %24 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec48, <8 x float> zeroinitializer)
  %25 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %24, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %26 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec52, <8 x float> zeroinitializer)
  %27 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %26, <8 x float> splat (float 1.000000e+00)) ; 3 uses
  %28 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %27, splat (float 5.000000e-01)
  %29 = fmul reassoc nnan nsz arcp contract afn <8 x float> %25, splat (float 2.000000e+00) ; 2 uses
  %30 = fmul reassoc nsz arcp contract afn <8 x float> %29, %27
  %31 = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %29
  %32 = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %27
  %33 = fmul reassoc nsz arcp contract afn <8 x float> %31, %32
  %34 = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %33
  %predphi54 = select reassoc nsz arcp contract afn <8 x i1> %28, <8 x float> %34, <8 x float> %30
  %35 = fsub reassoc nsz arcp contract afn <8 x float> %predphi54, %25
  %36 = fmul reassoc nsz arcp contract afn <8 x float> %i.i, %35
  %37 = fadd reassoc nsz arcp contract afn <8 x float> %36, %25
  %38 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %37, <8 x float> zeroinitializer)
  %39 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %38, <8 x float> splat (float 1.000000e+00))
  %i.w = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %23, <16 x float> splat (float 1.000000e+00))
  %i.x = shufflevector <8 x float> %39, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.w, <16 x float> %i.x, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.q, align 4, !tbaa !34, !alias.scope !352, !noalias !353
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %.lr.ph.preheader56, label %vector.body, !llvm.loop !348

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader56, %bb.j
  %.02934 = phi i64 [ %i.cu, %bb.j ], [ %.02934.ph, %.lr.ph.preheader56 ] ; 6 uses
  %.03033 = phi i64 [ %i.ct, %bb.j ], [ %.03033.ph, %.lr.ph.preheader56 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03033
  %i.aa = load float, ptr %i.z, align 4, !tbaa !34 ; 3 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02934
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !34
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ad, float 0.000000e+00)
  %i.af = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ae, float 1.000000e+00) ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02934
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !34
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ah, float 0.000000e+00)
  %i.aj = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ai, float 1.000000e+00) ; 3 uses
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %i.aj, 5.000000e-01
  %i.al = fmul reassoc nnan nsz arcp contract afn float %i.af, 2.000000e+00 ; 2 uses
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.am = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.al
  %i.an = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.aj
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, %i.an
  %i.ap = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ao
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.aq = fmul reassoc nsz arcp contract afn float %i.al, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = phi reassoc nsz arcp contract afn float [ %i.ap, %bb.b ], [ %i.aq, %bb.c ]
  %i.as = fsub reassoc nsz arcp contract afn float %i.ar, %i.af
  %i.at = fmul reassoc nsz arcp contract afn float %i.ab, %i.as
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.af
  %i.av = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.au, float 0.000000e+00)
  %i.aw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.av, float 1.000000e+00)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02934 ; 2 uses
  store float %i.aw, ptr %i.ax, align 4, !tbaa !34
  %i.ay = or disjoint i64 %.02934, 1              ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !34
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ba, float 0.000000e+00)
  %i.bc = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bb, float 1.000000e+00) ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay
  %i.be = load float, ptr %i.bd, align 4, !tbaa !34
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.be, float 0.000000e+00)
  %i.bg = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bf, float 1.000000e+00) ; 3 uses
  %i.bh = fcmp reassoc nsz arcp contract afn ogt float %i.bg, 5.000000e-01
  %i.bi = fmul reassoc nnan nsz arcp contract afn float %i.bc, 2.000000e+00 ; 2 uses
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %i.bg
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bk = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.bi
  %i.bl = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.bg
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bk, %i.bl
  %i.bn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bm
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bo = phi reassoc nsz arcp contract afn float [ %i.bn, %bb.f ], [ %i.bj, %bb.e ]
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bo, %i.bc
  %i.bq = fmul reassoc nsz arcp contract afn float %i.ab, %i.bp
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bc
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.br, float 0.000000e+00)
  %i.bt = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bs, float 1.000000e+00)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ay
  store float %i.bt, ptr %i.bu, align 4, !tbaa !34
  %i.bv = or disjoint i64 %.02934, 2              ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !34
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bx, float 0.000000e+00)
  %i.bz = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.by, float 1.000000e+00) ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !34
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cb, float 0.000000e+00)
  %i.cd = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cc, float 1.000000e+00) ; 3 uses
  %i.ce = fcmp reassoc nsz arcp contract afn ogt float %i.cd, 5.000000e-01
  %i.cf = fmul reassoc nnan nsz arcp contract afn float %i.bz, 2.000000e+00 ; 2 uses
  br i1 %i.ce, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.cd
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ch = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.cf
  %i.ci = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.cd
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ch, %i.ci
  %i.ck = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cl = phi reassoc nsz arcp contract afn float [ %i.ck, %bb.i ], [ %i.cg, %bb.h ]
  %i.cm = fsub reassoc nsz arcp contract afn float %i.cl, %i.bz
  %i.cn = fmul reassoc nsz arcp contract afn float %i.ab, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, %i.bz
  %i.cp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.co, float 0.000000e+00)
  %i.cq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cp, float 1.000000e+00)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bv
  store float %i.cq, ptr %i.cr, align 4, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store float %i.aa, ptr %i.cs, align 4, !tbaa !34
  %i.ct = add nuw i64 %.03033, 1                  ; 2 uses
  %i.cu = add i64 %.02934, 4
  %exitcond.not = icmp eq i64 %i.ct, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !349
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_vividlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader64, label %vector.memcheck

.lr.ph.preheader64:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.03136.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.03235.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep44 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep45 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep44
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound046 = icmp ult ptr %2, %scevgep45
  %bound147 = icmp ult ptr %1, %scevgep
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  br i1 %conflict.rdx, label %.lr.ph.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 3 uses
  %i.i = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !360 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec49 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec50 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.k, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec51 = load <32 x float>, ptr %i.m, align 4, !tbaa !34, !alias.scope !361 ; 3 uses
  %strided.vec52 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec53 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec54 = shufflevector <32 x float> %wide.vec51, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec52, <8 x float> zeroinitializer)
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.n, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.p = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.o, splat (float 5.000000e-01)
  %i.q = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.o, zeroinitializer
  %i.r = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.l
  %i.s = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.o, splat (float 2.000000e+00) ; 2 uses
  %i.t = fdiv reassoc nsz arcp contract afn <8 x float> %i.r, %i.s
  %i.u = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.t
  %i.v = fcmp reassoc nsz arcp contract afn ult <8 x float> %i.o, splat (float 1.000000e+00) ; 2 uses
  %i.w = and <8 x i1> %i.p, %i.v
  %i.x = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.s
  %i.y = fdiv reassoc nsz arcp contract afn <8 x float> %i.l, %i.x
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.q, <8 x float> zeroinitializer, <8 x float> %i.u
  %predphi55 = select reassoc nsz arcp contract afn <8 x i1> %i.w, <8 x float> %i.y, <8 x float> %predphi
  %predphi56 = select reassoc nsz arcp contract afn <8 x i1> %i.v, <8 x float> %predphi55, <8 x float> splat (float 1.000000e+00)
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> %predphi56, %i.l
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %i.i, %i.z
  %i.ab = fadd reassoc nsz arcp contract afn <8 x float> %i.aa, %i.l
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec49, <8 x float> zeroinitializer)
  %i.ae = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ad, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec53, <8 x float> zeroinitializer)
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.af, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ag, splat (float 5.000000e-01)
  %i.ai = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.ag, zeroinitializer ; 2 uses
  %i.aj = xor <8 x i1> %i.ah, %i.ai
  %i.ak = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ae
  %i.al = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ag, splat (float 2.000000e+00) ; 2 uses
  %i.am = fdiv reassoc nsz arcp contract afn <8 x float> %i.ak, %i.al
  %i.an = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.am
  %i.ao = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ag, splat (float 1.000000e+00)
  %i.ap = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.al
  %i.aq = fdiv reassoc nsz arcp contract afn <8 x float> %i.ae, %i.ap
  %predphi57 = select reassoc nsz arcp contract afn <8 x i1> %i.ao, <8 x float> splat (float 1.000000e+00), <8 x float> %i.aq
  %predphi58 = select reassoc nsz arcp contract afn <8 x i1> %i.aj, <8 x float> %i.an, <8 x float> %predphi57
  %predphi59 = select reassoc nsz arcp contract afn <8 x i1> %i.ai, <8 x float> %predphi58, <8 x float> zeroinitializer
  %i.ar = fsub reassoc nsz arcp contract afn <8 x float> %predphi59, %i.ae
  %i.as = fmul reassoc nsz arcp contract afn <8 x float> %i.i, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn <8 x float> %i.as, %i.ae
  %5 = shufflevector <8 x float> %i.ab, <8 x float> %i.at, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %6 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %5, <16 x float> zeroinitializer)
  %i.au = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec50, <8 x float> zeroinitializer)
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.au, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.aw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec54, <8 x float> zeroinitializer)
  %i.ax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aw, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.ay = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.ax, zeroinitializer ; 2 uses
  %i.ba = xor <8 x i1> %i.ay, %i.az
  %i.bb = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.av
  %i.bc = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ax, splat (float 2.000000e+00) ; 2 uses
  %i.bd = fdiv reassoc nsz arcp contract afn <8 x float> %i.bb, %i.bc
  %i.be = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.bd
  %i.bf = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ax, splat (float 1.000000e+00)
  %i.bg = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.bc
  %i.bh = fdiv reassoc nsz arcp contract afn <8 x float> %i.av, %i.bg
  %predphi60 = select reassoc nsz arcp contract afn <8 x i1> %i.bf, <8 x float> splat (float 1.000000e+00), <8 x float> %i.bh
  %predphi61 = select reassoc nsz arcp contract afn <8 x i1> %i.ba, <8 x float> %i.be, <8 x float> %predphi60
  %predphi62 = select reassoc nsz arcp contract afn <8 x i1> %i.az, <8 x float> %predphi61, <8 x float> zeroinitializer
  %i.bi = fsub reassoc nsz arcp contract afn <8 x float> %predphi62, %i.av
  %i.bj = fmul reassoc nsz arcp contract afn <8 x float> %i.i, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn <8 x float> %i.bj, %i.av
  %i.bl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bk, <8 x float> zeroinitializer)
  %i.bm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bl, <8 x float> splat (float 1.000000e+00))
  %i.bn = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %6, <16 x float> splat (float 1.000000e+00))
  %i.bo = shufflevector <8 x float> %i.bm, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.bn, <16 x float> %i.bo, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ac, align 4, !tbaa !34, !alias.scope !362, !noalias !363
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %.lr.ph.preheader64, label %vector.body, !llvm.loop !358

._crit_edge:                                      ; preds = %bb.p, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader64, %bb.p
  %.03136 = phi i64 [ %i.eu, %bb.p ], [ %.03136.ph, %.lr.ph.preheader64 ] ; 6 uses
  %.03235 = phi i64 [ %i.et, %bb.p ], [ %.03235.ph, %.lr.ph.preheader64 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03235
  %i.br = load float, ptr %i.bq, align 4, !tbaa !34 ; 3 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03136
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !34
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bu, float 0.000000e+00)
  %i.bw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bv, float 1.000000e+00) ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03136
  %i.by = load float, ptr %i.bx, align 4, !tbaa !34
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.by, float 0.000000e+00)
  %i.ca = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bz, float 1.000000e+00) ; 5 uses
  %i.cb = fcmp reassoc nsz arcp contract afn ogt float %i.ca, 5.000000e-01
  br i1 %i.cb, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.cc = fcmp reassoc nsz arcp contract afn ult float %i.ca, 1.000000e+00
  br i1 %i.cc, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.cd = fmul reassoc nnan nsz arcp contract afn float %i.ca, 2.000000e+00
  %i.ce = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.cd
  %i.cf = fdiv reassoc nsz arcp contract afn float %i.bw, %i.ce
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.cg = fcmp reassoc nsz arcp contract afn ugt float %i.ca, 0.000000e+00
  br i1 %i.cg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ch = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bw
  %i.ci = fmul reassoc nnan nsz arcp contract afn float %i.ca, 2.000000e+00
  %i.cj = fdiv reassoc nsz arcp contract afn float %i.ch, %i.ci
  %i.ck = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.cl = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.b ], [ %i.cf, %bb.c ], [ %i.ck, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.cm = fsub reassoc nsz arcp contract afn float %i.cl, %i.bw
  %i.cn = fmul reassoc nsz arcp contract afn float %i.bs, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, %i.bw
  %i.cp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.co, float 0.000000e+00)
  %i.cq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cp, float 1.000000e+00)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03136 ; 2 uses
  store float %i.cq, ptr %i.cr, align 4, !tbaa !34
  %i.cs = or disjoint i64 %.03136, 1              ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !34
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cu, float 0.000000e+00)
  %i.cw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cv, float 1.000000e+00) ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cs
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !34
  %i.cz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cy, float 0.000000e+00)
  %i.da = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cz, float 1.000000e+00) ; 5 uses
  %i.db = fcmp reassoc nsz arcp contract afn ogt float %i.da, 5.000000e-01
  br i1 %i.db, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dc = fcmp reassoc nsz arcp contract afn ugt float %i.da, 0.000000e+00
  br i1 %i.dc, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.dd = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cw
  %i.de = fmul reassoc nnan nsz arcp contract afn float %i.da, 2.000000e+00
  %i.df = fdiv reassoc nsz arcp contract afn float %i.dd, %i.de
  %i.dg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.df
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.dh = fcmp reassoc nsz arcp contract afn ult float %i.da, 1.000000e+00
  br i1 %i.dh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.di = fmul reassoc nnan nsz arcp contract afn float %i.da, 2.000000e+00
  %i.dj = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.di
  %i.dk = fdiv reassoc nsz arcp contract afn float %i.cw, %i.dj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.dl = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.i ], [ %i.dk, %bb.j ], [ %i.dg, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.dm = fsub reassoc nsz arcp contract afn float %i.dl, %i.cw
  %i.dn = fmul reassoc nsz arcp contract afn float %i.bs, %i.dm
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.cw
  %i.dp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.do, float 0.000000e+00)
  %i.dq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dp, float 1.000000e+00)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cs
  store float %i.dq, ptr %i.dr, align 4, !tbaa !34
  %i.ds = or disjoint i64 %.03136, 2              ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !34
  %i.dv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.du, float 0.000000e+00)
  %i.dw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dv, float 1.000000e+00) ; 4 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ds
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !34
  %i.dz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dy, float 0.000000e+00)
  %i.ea = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.dz, float 1.000000e+00) ; 5 uses
  %i.eb = fcmp reassoc nsz arcp contract afn ogt float %i.ea, 5.000000e-01
  br i1 %i.eb, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ec = fcmp reassoc nsz arcp contract afn ugt float %i.ea, 0.000000e+00
  br i1 %i.ec, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ed = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dw
  %i.ee = fmul reassoc nnan nsz arcp contract afn float %i.ea, 2.000000e+00
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.ed, %i.ee
  %i.eg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ef
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.eh = fcmp reassoc nsz arcp contract afn ult float %i.ea, 1.000000e+00
  br i1 %i.eh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ei = fmul reassoc nnan nsz arcp contract afn float %i.ea, 2.000000e+00
  %i.ej = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.ei
  %i.ek = fdiv reassoc nsz arcp contract afn float %i.dw, %i.ej
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.el = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.n ], [ %i.ek, %bb.o ], [ %i.eg, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.em = fsub reassoc nsz arcp contract afn float %i.el, %i.dw
  %i.en = fmul reassoc nsz arcp contract afn float %i.bs, %i.em
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, %i.dw
  %i.ep = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eo, float 0.000000e+00)
  %i.eq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ep, float 1.000000e+00)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ds
  store float %i.eq, ptr %i.er, align 4, !tbaa !34
  %i.es = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store float %i.br, ptr %i.es, align 4, !tbaa !34
  %i.et = add nuw i64 %.03235, 1                  ; 2 uses
  %i.eu = add i64 %.03136, 4
  %exitcond.not = icmp eq i64 %i.et, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !359
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_linearlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader44, label %vector.memcheck

.lr.ph.preheader44:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.030.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02629.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep32 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep33 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep32
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound034 = icmp ult ptr %2, %scevgep33
  %bound135 = icmp ult ptr %1, %scevgep
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  br i1 %conflict.rdx, label %.lr.ph.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 3 uses
  %i.i = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !370 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec37 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec38 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.k, <8 x float> splat (float 1.000000e+00))
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec39 = load <32 x float>, ptr %i.m, align 4, !tbaa !34, !alias.scope !371 ; 3 uses
  %strided.vec40 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec41 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec42 = shufflevector <32 x float> %wide.vec39, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec40, <8 x float> zeroinitializer)
  %i.o = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.n, <8 x float> splat (float 1.000000e+00))
  %i.p = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.o, splat (float 2.000000e+00)
  %i.q = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.p, splat (float -1.000000e+00)
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %i.i, %i.q
  %i.s = fadd reassoc nsz arcp contract afn <8 x float> %i.r, %i.l
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec37, <8 x float> zeroinitializer)
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.u, <8 x float> splat (float 1.000000e+00))
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec41, <8 x float> zeroinitializer)
  %i.x = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.w, <8 x float> splat (float 1.000000e+00))
  %i.y = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.x, splat (float 2.000000e+00)
  %i.z = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.y, splat (float -1.000000e+00)
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %i.i, %i.z
  %i.ab = fadd reassoc nsz arcp contract afn <8 x float> %i.aa, %i.v
  %5 = shufflevector <8 x float> %i.s, <8 x float> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %6 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %5, <16 x float> zeroinitializer)
  %i.ac = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec38, <8 x float> zeroinitializer)
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ac, <8 x float> splat (float 1.000000e+00))
  %i.ae = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec42, <8 x float> zeroinitializer)
  %i.af = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ae, <8 x float> splat (float 1.000000e+00))
  %i.ag = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.af, splat (float 2.000000e+00)
  %i.ah = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ag, splat (float -1.000000e+00)
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.i, %i.ah
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %i.ad
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aj, <8 x float> zeroinitializer)
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ak, <8 x float> splat (float 1.000000e+00))
  %i.am = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %6, <16 x float> splat (float 1.000000e+00))
  %i.an = shufflevector <8 x float> %i.al, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.am, <16 x float> %i.an, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.t, align 4, !tbaa !34, !alias.scope !372, !noalias !373
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %.lr.ph.preheader44, label %vector.body, !llvm.loop !368

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader44, %.lr.ph
  %.030 = phi i64 [ %i.co, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader44 ] ; 2 uses
  %.02629 = phi i64 [ %i.cp, %.lr.ph ], [ %.02629.ph, %.lr.ph.preheader44 ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.030
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !34 ; 3 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02629
  %i.at = load float, ptr %i.as, align 4, !tbaa !34
  %i.au = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.at, float 0.000000e+00)
  %i.av = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.au, float 1.000000e+00)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02629
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ax, float 0.000000e+00)
  %i.az = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.ay, float 1.000000e+00)
  %i.ba = fmul reassoc nnan nsz arcp contract afn float %i.az, 2.000000e+00
  %i.bb = fadd reassoc nnan nsz arcp contract afn float %i.ba, -1.000000e+00
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ar, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.av
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bd, float 0.000000e+00)
  %i.bf = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.be, float 1.000000e+00)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02629 ; 2 uses
  store float %i.bf, ptr %i.bg, align 4, !tbaa !34
  %i.bh = or disjoint i64 %.02629, 1              ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !34
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bj, float 0.000000e+00)
  %i.bl = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bk, float 1.000000e+00)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bh
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !34
  %i.bo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bn, float 0.000000e+00)
  %i.bp = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bo, float 1.000000e+00)
  %i.bq = fmul reassoc nnan nsz arcp contract afn float %i.bp, 2.000000e+00
  %i.br = fadd reassoc nnan nsz arcp contract afn float %i.bq, -1.000000e+00
  %i.bs = fmul reassoc nsz arcp contract afn float %i.ar, %i.br
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %i.bl
  %i.bu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bt, float 0.000000e+00)
  %i.bv = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bu, float 1.000000e+00)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bh
  store float %i.bv, ptr %i.bw, align 4, !tbaa !34
  %i.bx = or disjoint i64 %.02629, 2              ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !34
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bz, float 0.000000e+00)
  %i.cb = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ca, float 1.000000e+00)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !34
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cd, float 0.000000e+00)
  %i.cf = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.ce, float 1.000000e+00)
  %i.cg = fmul reassoc nnan nsz arcp contract afn float %i.cf, 2.000000e+00
  %i.ch = fadd reassoc nnan nsz arcp contract afn float %i.cg, -1.000000e+00
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ar, %i.ch
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %i.cb
  %i.ck = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cj, float 0.000000e+00)
  %i.cl = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ck, float 1.000000e+00)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx
  store float %i.cl, ptr %i.cm, align 4, !tbaa !34
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store float %i.aq, ptr %i.cn, align 4, !tbaa !34
  %i.co = add nuw i64 %.030, 1                    ; 2 uses
  %i.cp = add i64 %.02629, 4
  %exitcond.not = icmp eq i64 %i.co, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !369
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_pinlight(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader54, label %vector.memcheck

.lr.ph.preheader54:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02934.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.03033.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep42 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep43 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep42
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %2, %scevgep43
  %bound145 = icmp ult ptr %1, %scevgep
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.lr.ph.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 3 uses
  %i.i = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !380 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec47 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec48 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> zeroinitializer)
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.k, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec49 = load <32 x float>, ptr %i.m, align 4, !tbaa !34, !alias.scope !381 ; 3 uses
  %strided.vec50 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec51 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec52 = shufflevector <32 x float> %wide.vec49, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.n = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec50, <8 x float> zeroinitializer)
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.n, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.p = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.o, splat (float 2.000000e+00) ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.r = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec47, <8 x float> zeroinitializer)
  %i.s = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.r, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec51, <8 x float> zeroinitializer)
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.t, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.v = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.u, splat (float 2.000000e+00) ; 2 uses
  %5 = shufflevector <8 x float> %i.i, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <8 x float> %i.o, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %7 = fcmp reassoc nsz arcp contract afn ogt <16 x float> %6, splat (float 5.000000e-01)
  %8 = shufflevector <8 x float> %i.l, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %9 = shufflevector <8 x float> %i.p, <8 x float> %i.v, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %10 = fadd reassoc nnan nsz arcp contract afn <16 x float> %9, splat (float -1.000000e+00)
  %11 = tail call reassoc nnan nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %8, <16 x float> %10)
  %12 = shufflevector <8 x float> %i.l, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %13 = shufflevector <8 x float> %i.p, <8 x float> %i.v, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %14 = tail call reassoc nnan nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %12, <16 x float> %13)
  %15 = select reassoc nsz arcp contract afn <16 x i1> %7, <16 x float> %11, <16 x float> %14
  %16 = shufflevector <8 x float> %i.l, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %17 = fsub reassoc nnan nsz arcp contract afn <16 x float> %15, %16
  %18 = fmul reassoc nsz arcp contract afn <16 x float> %5, %17
  %19 = shufflevector <8 x float> %i.l, <8 x float> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %20 = fadd reassoc nsz arcp contract afn <16 x float> %18, %19
  %21 = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %20, <16 x float> zeroinitializer)
  %22 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec48, <8 x float> zeroinitializer)
  %23 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %22, <8 x float> splat (float 1.000000e+00)) ; 4 uses
  %24 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec52, <8 x float> zeroinitializer)
  %25 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %24, <8 x float> splat (float 1.000000e+00)) ; 2 uses
  %26 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %25, splat (float 5.000000e-01)
  %27 = fmul reassoc nnan nsz arcp contract afn <8 x float> %25, splat (float 2.000000e+00) ; 2 uses
  %28 = fadd reassoc nnan nsz arcp contract afn <8 x float> %27, splat (float -1.000000e+00)
  %29 = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %23, <8 x float> %28)
  %30 = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %23, <8 x float> %27)
  %31 = select reassoc nsz arcp contract afn <8 x i1> %26, <8 x float> %29, <8 x float> %30
  %32 = fsub reassoc nnan nsz arcp contract afn <8 x float> %31, %23
  %33 = fmul reassoc nsz arcp contract afn <8 x float> %i.i, %32
  %34 = fadd reassoc nsz arcp contract afn <8 x float> %33, %23
  %35 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %34, <8 x float> zeroinitializer)
  %36 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %35, <8 x float> splat (float 1.000000e+00))
  %i.w = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %21, <16 x float> splat (float 1.000000e+00))
  %i.x = shufflevector <8 x float> %36, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.w, <16 x float> %i.x, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.q, align 4, !tbaa !34, !alias.scope !382, !noalias !383
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %.lr.ph.preheader54, label %vector.body, !llvm.loop !378

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader54, %.lr.ph
  %.02934 = phi i64 [ %i.co, %.lr.ph ], [ %.02934.ph, %.lr.ph.preheader54 ] ; 6 uses
  %.03033 = phi i64 [ %i.cn, %.lr.ph ], [ %.03033.ph, %.lr.ph.preheader54 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03033
  %i.aa = load float, ptr %i.z, align 4, !tbaa !34 ; 3 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02934
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !34
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ad, float 0.000000e+00)
  %i.af = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ae, float 1.000000e+00) ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02934
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !34
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ah, float 0.000000e+00)
  %i.aj = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ai, float 1.000000e+00) ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %i.aj, 5.000000e-01
  %i.al = fmul reassoc nnan nsz arcp contract afn float %i.aj, 2.000000e+00 ; 2 uses
  %i.am = fadd reassoc nnan nsz arcp contract afn float %i.al, -1.000000e+00
  %i.an = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.af, float %i.am)
  %i.ao = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.af, float %i.al)
  %i.ap = select reassoc nsz arcp contract afn i1 %i.ak, float %i.an, float %i.ao
  %i.aq = fsub reassoc nnan nsz arcp contract afn float %i.ap, %i.af
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ab, %i.aq
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.af
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.as, float 0.000000e+00)
  %i.au = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.at, float 1.000000e+00)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02934 ; 2 uses
  store float %i.au, ptr %i.av, align 4, !tbaa !34
  %i.aw = or disjoint i64 %.02934, 1              ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !34
  %i.az = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ay, float 0.000000e+00)
  %i.ba = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.az, float 1.000000e+00) ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !34
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bc, float 0.000000e+00)
  %i.be = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bd, float 1.000000e+00) ; 2 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt float %i.be, 5.000000e-01
  %i.bg = fmul reassoc nnan nsz arcp contract afn float %i.be, 2.000000e+00 ; 2 uses
  %i.bh = fadd reassoc nnan nsz arcp contract afn float %i.bg, -1.000000e+00
  %i.bi = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.ba, float %i.bh)
  %i.bj = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.ba, float %i.bg)
  %i.bk = select reassoc nsz arcp contract afn i1 %i.bf, float %i.bi, float %i.bj
  %i.bl = fsub reassoc nnan nsz arcp contract afn float %i.bk, %i.ba
  %i.bm = fmul reassoc nsz arcp contract afn float %i.ab, %i.bl
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, %i.ba
  %i.bo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bn, float 0.000000e+00)
  %i.bp = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bo, float 1.000000e+00)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw
  store float %i.bp, ptr %i.bq, align 4, !tbaa !34
  %i.br = or disjoint i64 %.02934, 2              ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !34
  %i.bu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bt, float 0.000000e+00)
  %i.bv = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bu, float 1.000000e+00) ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.br
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !34
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bx, float 0.000000e+00)
  %i.bz = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.by, float 1.000000e+00) ; 2 uses
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, 5.000000e-01
  %i.cb = fmul reassoc nnan nsz arcp contract afn float %i.bz, 2.000000e+00 ; 2 uses
  %i.cc = fadd reassoc nnan nsz arcp contract afn float %i.cb, -1.000000e+00
  %i.cd = tail call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.bv, float %i.cc)
  %i.ce = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bv, float %i.cb)
  %i.cf = select reassoc nsz arcp contract afn i1 %i.ca, float %i.cd, float %i.ce
  %i.cg = fsub reassoc nnan nsz arcp contract afn float %i.cf, %i.bv
  %i.ch = fmul reassoc nsz arcp contract afn float %i.ab, %i.cg
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, %i.bv
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ci, float 0.000000e+00)
  %i.ck = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.cj, float 1.000000e+00)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.br
  store float %i.ck, ptr %i.cl, align 4, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store float %i.aa, ptr %i.cm, align 4, !tbaa !34
  %i.cn = add nuw i64 %.03033, 1                  ; 2 uses
  %i.co = add i64 %.02934, 4
  %exitcond.not = icmp eq i64 %i.cn, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !379
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_lightness(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader89, label %vector.memcheck

.lr.ph.preheader89:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.060.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.01859.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep65 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep66 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep65
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %2, %scevgep66
  %bound168 = icmp ult ptr %1, %scevgep
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  br i1 %conflict.rdx, label %.lr.ph.preheader89, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !34, !alias.scope !397 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec70 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec71 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec72 = load <32 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !398 ; 3 uses
  %strided.vec73 = shufflevector <32 x float> %wide.vec72, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec74 = shufflevector <32 x float> %wide.vec72, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec75 = shufflevector <32 x float> %wide.vec72, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec, zeroinitializer
  %i.l = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec, splat (float 1.000000e+00)
  %i.m = select reassoc nsz arcp contract afn <8 x i1> %i.l, <8 x float> %strided.vec, <8 x float> splat (float 1.000000e+00)
  %i.n = select reassoc nsz arcp contract afn <8 x i1> %i.k, <8 x float> zeroinitializer, <8 x float> %i.m ; 5 uses
  %i.o = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec70, zeroinitializer
  %i.p = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec70, splat (float 1.000000e+00)
  %i.q = select reassoc nsz arcp contract afn <8 x i1> %i.p, <8 x float> %strided.vec70, <8 x float> splat (float 1.000000e+00)
  %i.r = select reassoc nsz arcp contract afn <8 x i1> %i.o, <8 x float> zeroinitializer, <8 x float> %i.q ; 5 uses
  %i.s = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec71, zeroinitializer
  %i.t = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec71, splat (float 1.000000e+00)
  %i.u = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> %strided.vec71, <8 x float> splat (float 1.000000e+00)
  %i.v = select reassoc nsz arcp contract afn <8 x i1> %i.s, <8 x float> zeroinitializer, <8 x float> %i.u ; 4 uses
  %i.w = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec73, zeroinitializer
  %i.x = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec73, splat (float 1.000000e+00)
  %i.y = select reassoc nsz arcp contract afn <8 x i1> %i.x, <8 x float> %strided.vec73, <8 x float> splat (float 1.000000e+00)
  %i.z = select reassoc nsz arcp contract afn <8 x i1> %i.w, <8 x float> zeroinitializer, <8 x float> %i.y ; 2 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec74, zeroinitializer
  %i.ab = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec74, splat (float 1.000000e+00)
  %i.ac = select reassoc nsz arcp contract afn <8 x i1> %i.ab, <8 x float> %strided.vec74, <8 x float> splat (float 1.000000e+00)
  %i.ad = select reassoc nsz arcp contract afn <8 x i1> %i.aa, <8 x float> zeroinitializer, <8 x float> %i.ac ; 2 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec75, zeroinitializer
  %i.af = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec75, splat (float 1.000000e+00)
  %i.ag = select reassoc nsz arcp contract afn <8 x i1> %i.af, <8 x float> %strided.vec75, <8 x float> splat (float 1.000000e+00)
  %i.ah = select reassoc nsz arcp contract afn <8 x i1> %i.ae, <8 x float> zeroinitializer, <8 x float> %i.ag ; 2 uses
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.n, <8 x float> %i.r)
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ai, <8 x float> %i.v) ; 2 uses
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.n, <8 x float> %i.r)
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ak, <8 x float> %i.v) ; 5 uses
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %i.al, %i.aj ; 5 uses
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.al, %i.aj ; 3 uses
  %i.ao = fmul reassoc nsz arcp contract afn <8 x float> %i.an, splat (float 5.000000e-01) ; 3 uses
  %i.ap = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.al)
  %i.aq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ap, splat (float f0x358637BD)
  %i.ar = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.am)
  %i.as = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ar, splat (float f0x358637BD)
  %i.at = select <8 x i1> %i.aq, <8 x i1> %i.as, <8 x i1> zeroinitializer ; 4 uses
  %i.au = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ao, splat (float 5.000000e-01)
  %i.av = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.an
  %i.aw = select <8 x i1> %i.au, <8 x float> %i.an, <8 x float> %i.av
  %i.ax = fdiv reassoc nsz arcp contract afn <8 x float> %i.am, %i.aw
  %i.ay = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.n, %i.al ; 2 uses
  %i.az = xor <8 x i1> %i.ay, splat (i1 true)
  %i.ba = select <8 x i1> %i.at, <8 x i1> %i.az, <8 x i1> zeroinitializer
  %i.bb = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.r, %i.al
  %i.bc = fsub reassoc nsz arcp contract afn <8 x float> %i.n, %i.r
  %i.bd = fdiv reassoc nsz arcp contract afn <8 x float> %i.bc, %i.am
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %i.bd, splat (float 4.000000e+00)
  %i.bf = select <8 x i1> %i.ba, <8 x i1> %i.bb, <8 x i1> zeroinitializer
  %i.bg = fsub reassoc nsz arcp contract afn <8 x float> %i.v, %i.n
  %i.bh = fdiv reassoc nsz arcp contract afn <8 x float> %i.bg, %i.am
  %i.bi = fadd reassoc nsz arcp contract afn <8 x float> %i.bh, splat (float 2.000000e+00)
  %i.bj = select <8 x i1> %i.at, <8 x i1> %i.ay, <8 x i1> zeroinitializer
  %i.bk = fsub reassoc nsz arcp contract afn <8 x float> %i.r, %i.v
  %i.bl = fdiv reassoc nsz arcp contract afn <8 x float> %i.bk, %i.am
  %predphi = select nsz <8 x i1> %i.bf, <8 x float> %i.bi, <8 x float> %i.be
  %predphi76 = select nsz <8 x i1> %i.bj, <8 x float> %i.bl, <8 x float> %predphi
  %i.bm = fmul reassoc nsz arcp contract afn <8 x float> %predphi76, splat (float f0x3E2AAAAB) ; 2 uses
  %i.bn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.bm)
  %i.bo = fsub reassoc nsz arcp contract afn <8 x float> %i.bm, %i.bn
end_hunk_0
begin_hunk_1_@_blend_color:bb.a
  %i.hd = fmul reassoc nsz arcp contract afn float %.0.i.i, f0x3E2AAAAB ; 2 uses
  %i.he = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hd)
  %i.hf = fsub reassoc nsz arcp contract afn float %i.hd, %i.he
  br label %dt_RGB_2_HSL.exit

dt_RGB_2_HSL.exit:                                ; preds = %.lr.ph, %_dt_RGB_2_Hue.exit.i
  %.024.i = phi nsz float [ %i.hf, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %.lr.ph ] ; 3 uses
  %.1.i = phi nsz float [ %.0.i, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %i.hg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fu, float %i.gb)
  %i.hh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hg, float %i.gf) ; 2 uses
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fu, float %i.gb)
  %i.hj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hi, float %i.gf) ; 5 uses
  %i.hk = fsub reassoc nsz arcp contract afn float %i.hj, %i.hh ; 5 uses
  %i.hl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hj)
  %i.hm = fcmp reassoc nsz arcp contract afn ogt float %i.hl, f0x358637BD
  %i.hn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hk)
  %i.ho = fcmp reassoc nsz arcp contract afn ogt float %i.hn, f0x358637BD
  %or.cond.i35 = select i1 %i.hm, i1 %i.ho, i1 false
  br i1 %or.cond.i35, label %bb.g, label %dt_RGB_2_HSL.exit42

bb.g:                                             ; preds = %dt_RGB_2_HSL.exit
  %i.hp = fadd reassoc nsz arcp contract afn float %i.hj, %i.hh ; 3 uses
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, 5.000000e-01
  %i.hr = fcmp reassoc nsz arcp contract afn olt float %i.hq, 5.000000e-01
  %i.hs = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.hp
  %.pn.i38 = select i1 %i.hr, float %i.hp, float %i.hs
  %.0.i39 = fdiv reassoc nsz arcp contract afn float %i.hk, %.pn.i38
  %i.ht = fcmp reassoc nsz arcp contract afn oeq float %i.fu, %i.hj
  br i1 %i.ht, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hu = fsub reassoc nsz arcp contract afn float %i.gb, %i.gf
  %i.hv = fdiv reassoc nsz arcp contract afn float %i.hu, %i.hk
  br label %_dt_RGB_2_Hue.exit.i40

bb.i:                                             ; preds = %bb.g
  %i.hw = fcmp reassoc nsz arcp contract afn oeq float %i.gb, %i.hj
  br i1 %i.hw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hx = fsub reassoc nsz arcp contract afn float %i.gf, %i.fu
  %i.hy = fdiv reassoc nsz arcp contract afn float %i.hx, %i.hk
  %i.hz = fadd reassoc nsz arcp contract afn float %i.hy, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.ia = fsub reassoc nsz arcp contract afn float %i.fu, %i.gb
  %i.ib = fdiv reassoc nsz arcp contract afn float %i.ia, %i.hk
  %i.ic = fadd reassoc nsz arcp contract afn float %i.ib, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i40

_dt_RGB_2_Hue.exit.i40:                           ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i41 = phi nsz float [ %i.hv, %bb.h ], [ %i.hz, %bb.j ], [ %i.ic, %bb.k ]
  %i.id = fmul reassoc nsz arcp contract afn float %.0.i.i41, f0x3E2AAAAB ; 2 uses
  %i.ie = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.id)
  %i.if = fsub reassoc nsz arcp contract afn float %i.id, %i.ie
  br label %dt_RGB_2_HSL.exit42

dt_RGB_2_HSL.exit42:                              ; preds = %dt_RGB_2_HSL.exit, %_dt_RGB_2_Hue.exit.i40
  %.024.i36 = phi nsz float [ %i.if, %_dt_RGB_2_Hue.exit.i40 ], [ 0.000000e+00, %dt_RGB_2_HSL.exit ] ; 2 uses
  %.1.i37 = phi nsz float [ %.0.i39, %_dt_RGB_2_Hue.exit.i40 ], [ 0.000000e+00, %dt_RGB_2_HSL.exit ]
  %i.ig = fsub reassoc nsz arcp contract afn float %.024.i, %.024.i36
  %i.ih = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ig) ; 3 uses
  %i.ii = fcmp reassoc nsz arcp contract afn ogt float %i.ih, 5.000000e-01
  %i.ij = fneg reassoc nsz arcp contract afn float %i.ez
  %i.ik = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ih
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %i.ij
  %i.im = fdiv reassoc nsz arcp contract afn float %i.il, %i.ih
  %i.in = select reassoc nsz arcp contract afn i1 %i.ii, float %i.im, float %i.ez
  %i.io = fsub reassoc nsz arcp contract afn float %.024.i36, %.024.i
  %i.ip = fmul reassoc nsz arcp contract afn float %i.in, %i.io
  %i.iq = fadd reassoc nsz arcp contract afn float %.024.i, %i.ip
  %i.ir = fadd reassoc nsz arcp contract afn float %i.iq, 1.000000e+00
  %i.is = frem reassoc nsz arcp contract afn float %i.ir, 1.000000e+00
  %i.it = fsub reassoc nsz arcp contract afn float %.1.i37, %.1.i
  %i.iu = fmul reassoc nsz arcp contract afn float %i.it, %i.ez
  %i.iv = fadd reassoc nsz arcp contract afn float %i.iu, %.1.i
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.070 ; 3 uses
  %i.ix = fcmp reassoc nsz arcp contract afn olt float %i.gm, 5.000000e-01
  %i.iy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gm
  %.sink14.i = select i1 %i.ix, float %i.gm, float %i.iy
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iv, %.sink14.i ; 2 uses
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, 2.000000e+00 ; 2 uses
  %i.jb = fmul reassoc nsz arcp contract afn float %i.is, 6.000000e+00 ; 2 uses
  %i.jc = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.jb) ; 2 uses
  %i.jd = fsub reassoc nsz arcp contract afn float %i.jb, %i.jc
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, %i.ja ; 2 uses
  %i.jf = fsub reassoc nsz arcp contract afn float %i.gm, %i.iz ; 8 uses
  %i.jg = fadd reassoc nsz arcp contract afn float %i.je, %i.jf ; 3 uses
  %i.jh = fadd reassoc nsz arcp contract afn float %i.jf, %i.ja ; 7 uses
  %i.ji = fsub reassoc nsz arcp contract afn float %i.jh, %i.je ; 3 uses
  %i.jj = fptoui float %i.jc to i64
  switch i64 %i.jj, label %bb.p [
    i64 0, label %dt_HSL_2_RGB.exit
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.o
  ]

bb.l:                                             ; preds = %dt_RGB_2_HSL.exit42
  br label %dt_HSL_2_RGB.exit

bb.m:                                             ; preds = %dt_RGB_2_HSL.exit42
  br label %dt_HSL_2_RGB.exit

bb.n:                                             ; preds = %dt_RGB_2_HSL.exit42
  br label %dt_HSL_2_RGB.exit

bb.o:                                             ; preds = %dt_RGB_2_HSL.exit42
  br label %dt_HSL_2_RGB.exit

bb.p:                                             ; preds = %dt_RGB_2_HSL.exit42
  br label %dt_HSL_2_RGB.exit

dt_HSL_2_RGB.exit:                                ; preds = %dt_RGB_2_HSL.exit42, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sink54.i.i = phi float [ %i.ji, %bb.l ], [ %i.jf, %bb.n ], [ %i.jh, %bb.p ], [ %i.jg, %bb.o ], [ %i.jf, %bb.m ], [ %i.jh, %dt_RGB_2_HSL.exit42 ]
  %.sink53.i.i = phi float [ %i.jh, %bb.l ], [ %i.ji, %bb.n ], [ %i.jf, %bb.p ], [ %i.jf, %bb.o ], [ %i.jh, %bb.m ], [ %i.jg, %dt_RGB_2_HSL.exit42 ]
  %.sink.i.i = phi float [ %i.jf, %bb.l ], [ %i.jh, %bb.n ], [ %i.ji, %bb.p ], [ %i.jh, %bb.o ], [ %i.jg, %bb.m ], [ %i.jf, %dt_RGB_2_HSL.exit42 ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jl = insertelement <2 x float> poison, float %.sink54.i.i, i64 0
  %i.jm = insertelement <2 x float> %i.jl, float %.sink53.i.i, i64 1 ; 3 uses
  %i.jn = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.jm, zeroinitializer
  %i.jo = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.jm, splat (float 1.000000e+00)
  %i.jp = select <2 x i1> %i.jo, <2 x float> %i.jm, <2 x float> splat (float 1.000000e+00)
  %i.jq = select <2 x i1> %i.jn, <2 x float> zeroinitializer, <2 x float> %i.jp
  store <2 x float> %i.jq, ptr %i.iw, align 4, !tbaa !34, !alias.scope !451
  %i.jr = fcmp reassoc nsz arcp contract afn ult float %.sink.i.i, 0.000000e+00
  %.inv.2.i47 = fcmp reassoc nsz arcp contract afn ole float %.sink.i.i, 1.000000e+00
  %spec.select.2.i48 = select reassoc nsz arcp contract afn i1 %.inv.2.i47, float %.sink.i.i, float 1.000000e+00
  %i.js = select reassoc nsz arcp contract afn i1 %i.jr, float 0.000000e+00, float %spec.select.2.i48
  store float %i.js, ptr %i.jk, align 4, !tbaa !34, !alias.scope !451
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store float %i.ez, ptr %i.jt, align 4, !tbaa !34
  %i.ju = add nuw i64 %.02569, 1                  ; 2 uses
  %i.jv = add i64 %.070, 4
  %exitcond.not = icmp eq i64 %i.ju, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !447
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_normal_bounded(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.memcheck

.lr.ph.preheader39:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02125.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.02224.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep27 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep28 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep27
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %2, %scevgep28
  %bound130 = icmp ult ptr %1, %scevgep
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  br i1 %conflict.rdx, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 3                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 4, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.h, align 4, !tbaa !34 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <16 x float>, ptr %i.i, align 4, !tbaa !34, !alias.scope !458 ; 3 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec32 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec33 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec34 = load <16 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !459 ; 3 uses
  %strided.vec35 = shufflevector <16 x float> %wide.vec34, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec36 = shufflevector <16 x float> %wide.vec34, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec37 = shufflevector <16 x float> %wide.vec34, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.k = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec35, %strided.vec
  %i.l = fmul reassoc nsz arcp contract afn <4 x float> %i.k, %wide.load
  %i.m = fadd reassoc nsz arcp contract afn <4 x float> %i.l, %strided.vec
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.o = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec36, %strided.vec32
  %i.p = fmul reassoc nsz arcp contract afn <4 x float> %i.o, %wide.load
  %i.q = fadd reassoc nsz arcp contract afn <4 x float> %i.p, %strided.vec32
  %5 = shufflevector <4 x float> %i.m, <4 x float> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %5, <8 x float> zeroinitializer)
  %i.r = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec37, %strided.vec33
  %i.s = fmul reassoc nsz arcp contract afn <4 x float> %i.r, %wide.load
  %i.t = fadd reassoc nsz arcp contract afn <4 x float> %i.s, %strided.vec33
  %i.u = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.t, <4 x float> zeroinitializer)
  %i.v = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.u, <4 x float> splat (float 1.000000e+00))
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %6, <8 x float> splat (float 1.000000e+00))
  %i.x = shufflevector <4 x float> %i.v, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.w, <8 x float> %i.x, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.n, align 4, !tbaa !34, !alias.scope !460, !noalias !461
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %.lr.ph.preheader39, label %vector.body, !llvm.loop !456

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader39, %.lr.ph
  %.02125 = phi i64 [ %i.bj, %.lr.ph ], [ %.02125.ph, %.lr.ph.preheader39 ] ; 6 uses
  %.02224 = phi i64 [ %i.bi, %.lr.ph ], [ %.02224.ph, %.lr.ph.preheader39 ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02224
  %i.aa = load float, ptr %i.z, align 4, !tbaa !34 ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02125
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !34 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02125
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !34
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.ac
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.aa
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, %i.ac
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ah, float 0.000000e+00)
  %i.aj = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ai, float 1.000000e+00)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02125 ; 2 uses
  store float %i.aj, ptr %i.ak, align 4, !tbaa !34
  %i.al = or disjoint i64 %.02125, 1              ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !34 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !34
  %i.aq = fsub reassoc nsz arcp contract afn float %i.ap, %i.an
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.aa
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.an
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.as, float 0.000000e+00)
  %i.au = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.at, float 1.000000e+00)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.al
  store float %i.au, ptr %i.av, align 4, !tbaa !34
  %i.aw = or disjoint i64 %.02125, 2              ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !34 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.ba = load float, ptr %i.az, align 4, !tbaa !34
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ba, %i.ay
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.aa
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ay
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bd, float 0.000000e+00)
  %i.bf = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.be, float 1.000000e+00)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw
  store float %i.bf, ptr %i.bg, align 4, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store float %i.aa, ptr %i.bh, align 4, !tbaa !34
  %i.bi = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bj = add i64 %.02125, 4
  %exitcond.not = icmp eq i64 %i.bi, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !457
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_coloradjust(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader105, label %vector.memcheck

.lr.ph.preheader105:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.069.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  %.02568.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep77 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep78 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep77
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound079 = icmp ult ptr %2, %scevgep78
  %bound180 = icmp ult ptr %1, %scevgep
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  br i1 %conflict.rdx, label %.lr.ph.preheader105, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !34 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !34, !alias.scope !475 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec82 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec83 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec84 = load <32 x float>, ptr %i.j, align 4, !tbaa !34, !alias.scope !476 ; 3 uses
  %strided.vec85 = shufflevector <32 x float> %wide.vec84, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec86 = shufflevector <32 x float> %wide.vec84, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec87 = shufflevector <32 x float> %wide.vec84, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec, zeroinitializer
  %i.l = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec, splat (float 1.000000e+00)
  %i.m = select reassoc nsz arcp contract afn <8 x i1> %i.l, <8 x float> %strided.vec, <8 x float> splat (float 1.000000e+00)
  %i.n = select reassoc nsz arcp contract afn <8 x i1> %i.k, <8 x float> zeroinitializer, <8 x float> %i.m ; 5 uses
  %i.o = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec82, zeroinitializer
  %i.p = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec82, splat (float 1.000000e+00)
  %i.q = select reassoc nsz arcp contract afn <8 x i1> %i.p, <8 x float> %strided.vec82, <8 x float> splat (float 1.000000e+00)
  %i.r = select reassoc nsz arcp contract afn <8 x i1> %i.o, <8 x float> zeroinitializer, <8 x float> %i.q ; 5 uses
  %i.s = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec83, zeroinitializer
  %i.t = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec83, splat (float 1.000000e+00)
  %i.u = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> %strided.vec83, <8 x float> splat (float 1.000000e+00)
  %i.v = select reassoc nsz arcp contract afn <8 x i1> %i.s, <8 x float> zeroinitializer, <8 x float> %i.u ; 4 uses
  %i.w = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec85, zeroinitializer
  %i.x = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec85, splat (float 1.000000e+00)
  %i.y = select reassoc nsz arcp contract afn <8 x i1> %i.x, <8 x float> %strided.vec85, <8 x float> splat (float 1.000000e+00)
  %i.z = select reassoc nsz arcp contract afn <8 x i1> %i.w, <8 x float> zeroinitializer, <8 x float> %i.y ; 5 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec86, zeroinitializer
  %i.ab = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec86, splat (float 1.000000e+00)
  %i.ac = select reassoc nsz arcp contract afn <8 x i1> %i.ab, <8 x float> %strided.vec86, <8 x float> splat (float 1.000000e+00)
  %i.ad = select reassoc nsz arcp contract afn <8 x i1> %i.aa, <8 x float> zeroinitializer, <8 x float> %i.ac ; 5 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec87, zeroinitializer
  %i.af = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec87, splat (float 1.000000e+00)
  %i.ag = select reassoc nsz arcp contract afn <8 x i1> %i.af, <8 x float> %strided.vec87, <8 x float> splat (float 1.000000e+00)
  %i.ah = select reassoc nsz arcp contract afn <8 x i1> %i.ae, <8 x float> zeroinitializer, <8 x float> %i.ag ; 4 uses
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.n, <8 x float> %i.r)
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ai, <8 x float> %i.v) ; 2 uses
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.n, <8 x float> %i.r)
  %i.al = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ak, <8 x float> %i.v) ; 5 uses
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %i.al, %i.aj ; 5 uses
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.al)
  %i.ao = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.an, splat (float f0x358637BD)
  %i.ap = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.am)
  %i.aq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ap, splat (float f0x358637BD)
  %i.ar = select <8 x i1> %i.ao, <8 x i1> %i.aq, <8 x i1> zeroinitializer ; 4 uses
  %i.as = fadd reassoc nsz arcp contract afn <8 x float> %i.al, %i.aj ; 3 uses
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %i.as, splat (float 5.000000e-01)
  %i.au = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.at, splat (float 5.000000e-01)
  %i.av = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.as
  %i.aw = select <8 x i1> %i.au, <8 x float> %i.as, <8 x float> %i.av
  %i.ax = fdiv reassoc nsz arcp contract afn <8 x float> %i.am, %i.aw
  %i.ay = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.n, %i.al ; 2 uses
  %i.az = xor <8 x i1> %i.ay, splat (i1 true)
  %i.ba = select <8 x i1> %i.ar, <8 x i1> %i.az, <8 x i1> zeroinitializer
  %i.bb = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.r, %i.al
  %i.bc = fsub reassoc nsz arcp contract afn <8 x float> %i.n, %i.r
  %i.bd = fdiv reassoc nsz arcp contract afn <8 x float> %i.bc, %i.am
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %i.bd, splat (float 4.000000e+00)
  %i.bf = select <8 x i1> %i.ba, <8 x i1> %i.bb, <8 x i1> zeroinitializer
  %i.bg = fsub reassoc nsz arcp contract afn <8 x float> %i.v, %i.n
  %i.bh = fdiv reassoc nsz arcp contract afn <8 x float> %i.bg, %i.am
  %i.bi = fadd reassoc nsz arcp contract afn <8 x float> %i.bh, splat (float 2.000000e+00)
  %i.bj = select <8 x i1> %i.ar, <8 x i1> %i.ay, <8 x i1> zeroinitializer
  %i.bk = fsub reassoc nsz arcp contract afn <8 x float> %i.r, %i.v
  %i.bl = fdiv reassoc nsz arcp contract afn <8 x float> %i.bk, %i.am
  %predphi = select nsz <8 x i1> %i.bf, <8 x float> %i.bi, <8 x float> %i.be
  %predphi88 = select nsz <8 x i1> %i.bj, <8 x float> %i.bl, <8 x float> %predphi
  %i.bm = fmul reassoc nsz arcp contract afn <8 x float> %predphi88, splat (float f0x3E2AAAAB) ; 2 uses
  %i.bn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.bm)
  %i.bo = fsub reassoc nsz arcp contract afn <8 x float> %i.bm, %i.bn
  %predphi89 = select nsz <8 x i1> %i.ar, <8 x float> %i.bo, <8 x float> zeroinitializer ; 3 uses
  %predphi90 = select nsz <8 x i1> %i.ar, <8 x float> %i.ax, <8 x float> zeroinitializer ; 2 uses
  %i.bp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.z, <8 x float> %i.ad)
  %i.bq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bp, <8 x float> %i.ah) ; 2 uses
  %i.br = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.z, <8 x float> %i.ad)
  %i.bs = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.br, <8 x float> %i.ah) ; 5 uses
  %i.bt = fsub reassoc nsz arcp contract afn <8 x float> %i.bs, %i.bq ; 5 uses
  %i.bu = fadd reassoc nsz arcp contract afn <8 x float> %i.bs, %i.bq ; 3 uses
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %i.bu, splat (float 5.000000e-01) ; 4 uses
  %i.bw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bs)
  %i.bx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bw, splat (float f0x358637BD)
  %i.by = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bt)
  %i.bz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.by, splat (float f0x358637BD)
  %i.ca = select <8 x i1> %i.bx, <8 x i1> %i.bz, <8 x i1> zeroinitializer ; 4 uses
  %i.cb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bv, splat (float 5.000000e-01) ; 2 uses
  %i.cc = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.bu
  %i.cd = select <8 x i1> %i.cb, <8 x float> %i.bu, <8 x float> %i.cc
  %i.ce = fdiv reassoc nsz arcp contract afn <8 x float> %i.bt, %i.cd
  %i.cf = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.z, %i.bs ; 2 uses
  %i.cg = xor <8 x i1> %i.cf, splat (i1 true)
  %i.ch = select <8 x i1> %i.ca, <8 x i1> %i.cg, <8 x i1> zeroinitializer
  %i.ci = fcmp reassoc nsz arcp contract afn oeq <8 x float> %i.ad, %i.bs
  %i.cj = fsub reassoc nsz arcp contract afn <8 x float> %i.z, %i.ad
  %i.ck = fdiv reassoc nsz arcp contract afn <8 x float> %i.cj, %i.bt
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %i.ck, splat (float 4.000000e+00)
  %i.cm = select <8 x i1> %i.ch, <8 x i1> %i.ci, <8 x i1> zeroinitializer
  %i.cn = fsub reassoc nsz arcp contract afn <8 x float> %i.ah, %i.z
  %i.co = fdiv reassoc nsz arcp contract afn <8 x float> %i.cn, %i.bt
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.co, splat (float 2.000000e+00)
end_hunk_1
