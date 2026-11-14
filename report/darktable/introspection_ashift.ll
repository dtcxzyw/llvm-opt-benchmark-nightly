Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 75
begin_hunk_0_@distort_transform:bb.a
  %i.l = fcmp reassoc nsz arcp contract afn uge float %i.k, f0x38D1B717
  br i1 %i.l, label %_isneutral.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !39
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.n)
  %i.p = fcmp reassoc nsz arcp contract afn uge float %i.o, f0x38D1B717
  br i1 %i.p, label %_isneutral.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !40
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, -1.000000e+00
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp reassoc nsz arcp contract afn uge float %i.t, f0x38D1B717
  br i1 %i.u, label %_isneutral.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !41
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp reassoc nsz arcp contract afn uge float %i.x, f0x38D1B717
  br i1 %i.y, label %_isneutral.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load float, ptr %i.z, align 4, !tbaa !42
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, -1.000000e+00
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ab)
  %i.ad = fcmp reassoc nsz arcp contract afn uge float %i.ac, f0x38D1B717
  br i1 %i.ad, label %_isneutral.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !43
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp reassoc nsz arcp contract afn uge float %i.ag, f0x38D1B717
  br i1 %i.ah, label %_isneutral.exit.thread, label %_isneutral.exit

_isneutral.exit:                                  ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !44
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, -1.000000e+00
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ak)
  %i.am = fcmp reassoc nsz arcp contract afn uge float %i.al, f0x38D1B717
  br i1 %i.am, label %_isneutral.exit.thread, label %bb.h

_isneutral.exit.thread:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_isneutral.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !48
  call fastcc void @_homography(ptr noundef %i.a, float noundef %i.d, float noundef %.pre, float noundef %i.ao, float noundef %i.aq, float noundef %i.as, float noundef %i.au, float noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 0)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bd = load <2 x i32>, ptr %i.bb, align 4, !tbaa !17
  %i.be = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bd to <2 x float>
  %i.bf = load <4 x float>, ptr %i.bc, align 4, !tbaa !15 ; 2 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bi = fsub reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bh
  %i.bj = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.be
  %i.bk = fdiv reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.bl = shl i64 %3, 1                           ; 3 uses
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_isneutral.exit.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bn = load <4 x float>, ptr %i.a, align 64, !tbaa !15, !noalias !344 ; 7 uses
  %i.bo = load <2 x float>, ptr %i.bm, align 16, !tbaa !15, !noalias !344 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !15, !noalias !344 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bs = load float, ptr %i.br, align 4, !tbaa !15, !noalias !344 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bu = load float, ptr %i.bt, align 32, !tbaa !15, !noalias !344 ; 2 uses
  %i.bv = add i64 %i.bl, -2                       ; 2 uses
  %i.bw = lshr exact i64 %i.bv, 1
  %i.bx = add nuw i64 %i.bw, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bv, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.bx, -8                      ; 3 uses
  %i.by = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat43 = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat45 = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat47 = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat49 = shufflevector <2 x float> %i.bo, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat51 = shufflevector <2 x float> %i.bo, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert52 = insertelement <8 x float> poison, float %i.bq, i64 0
  %broadcast.splat53 = shufflevector <8 x float> %broadcast.splatinsert52, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <8 x float> poison, float %i.bs, i64 0
  %broadcast.splat55 = shufflevector <8 x float> %broadcast.splatinsert54, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <8 x float> poison, float %i.bu, i64 0
  %broadcast.splat57 = shufflevector <8 x float> %broadcast.splatinsert56, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat59 = shufflevector <2 x float> %i.bk, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat61 = shufflevector <2 x float> %i.bk, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.bz, align 64, !tbaa !15 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec62 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.ca = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %strided.vec
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat43, %strided.vec62
  %i.cc = fadd reassoc nsz arcp contract afn <8 x float> %i.cb, %i.ca
  %i.cd = fadd reassoc nsz arcp contract afn <8 x float> %i.cc, %broadcast.splat45
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat47, %strided.vec
  %i.cf = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat49, %strided.vec62
  %i.cg = fadd reassoc nsz arcp contract afn <8 x float> %i.cf, %i.ce
  %i.ch = fadd reassoc nsz arcp contract afn <8 x float> %i.cg, %broadcast.splat51
  %i.ci = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat53, %strided.vec
  %i.cj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat55, %strided.vec62
  %i.ck = fadd reassoc nsz arcp contract afn <8 x float> %i.cj, %i.ci
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %i.ck, %broadcast.splat57 ; 2 uses
  %i.cm = fdiv reassoc nsz arcp contract afn <8 x float> %i.cd, %i.cl
  %i.cn = fsub reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat59
  %i.co = fdiv reassoc nsz arcp contract afn <8 x float> %i.ch, %i.cl
  %i.cp = fsub reassoc nsz arcp contract afn <8 x float> %i.co, %broadcast.splat61
  %interleaved.vec = shufflevector <8 x float> %i.cn, <8 x float> %i.cp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bz, align 64, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.040.ph = phi i64 [ 0, %.lr.ph ], [ %i.by, %middle.block ]
  %i.cr = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cs = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ct = shufflevector <4 x float> %i.bn, <4 x float> %i.cs, <2 x i32> <i32 0, i32 4>
  %i.cu = shufflevector <4 x float> %i.bn, <4 x float> %i.cs, <2 x i32> <i32 2, i32 5>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_isneutral.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.040 = phi i64 [ %i.dm, %scalar.ph ], [ %.040.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.040 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.cv, align 8, !tbaa !15 ; 4 uses
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cx
  %i.cz = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cw
  %i.da = fadd reassoc nsz arcp contract afn <2 x float> %i.cz, %i.cy
  %i.db = fadd reassoc nsz arcp contract afn <2 x float> %i.da, %i.cu
  %i.dc = extractelement <2 x float> %i.cw, i64 0
  %i.dd = fmul reassoc nsz arcp contract afn float %i.bq, %i.dc
  %i.de = extractelement <2 x float> %i.cw, i64 1
  %i.df = fmul reassoc nsz arcp contract afn float %i.bs, %i.de
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, %i.dd
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, %i.bu
  %i.di = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fdiv reassoc nsz arcp contract afn <2 x float> %i.db, %i.dj
  %i.dl = fsub reassoc nsz arcp contract afn <2 x float> %i.dk, %i.bk
  store <2 x float> %i.dl, ptr %i.cv, align 8, !tbaa !15
  %i.dm = add nuw i64 %.040, 2                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.bl
  br i1 %i.dn, label %scalar.ph, label %._crit_edge, !llvm.loop !343

bb.h:                                             ; preds = %_isneutral.exit, %._crit_edge
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_homography(ptr noundef nonnull %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 11 uses
  %i.b = sitofp reassoc nsz arcp contract afn i32 %8 to float ; 6 uses
  %i.c = sitofp reassoc nsz arcp contract afn i32 %9 to float ; 7 uses
  %i.d = fmul reassoc nsz arcp contract afn float %1, f0x3C8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.d) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 6 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 5 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %7) ; 2 uses
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %2) ; 6 uses
  %i.g = fmul reassoc nsz arcp contract afn float %i.c, f0x40E66666
  %i.h = fdiv reassoc nsz arcp contract afn float %i.g, %i.b
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, f0x40E66666
  %i.j = fadd reassoc nsz arcp contract afn float %i.f, -1.000000e+00 ; 3 uses
  %i.k = fmul reassoc nsz arcp contract afn float %5, %i.j
  %i.l = fadd reassoc nsz arcp contract afn float %i.f, 1.000000e+00 ; 3 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.i, %i.l
  %i.n = fdiv reassoc nsz arcp contract afn float %i.k, %i.m
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.atan.f32(float %i.n) ; 2 uses
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.o)
  %or.cond = fcmp reassoc nsz arcp contract afn ogt float %i.p, 1.500000e+00
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fmul reassoc nsz arcp contract afn float %i.o, 5.000000e-01
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.q) ; 2 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi float [ f0x3EEDE42B, %bb.a ], [ %i.s, %bb.b ]
  %i.u = fmul reassoc nsz arcp contract afn float %6, -2.000000e-02 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, %i.u
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, 1.000000e+00
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.w, float 1.000000e-01) ; 4 uses
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %3) ; 6 uses
  %i.z = fmul reassoc nsz arcp contract afn float %i.b, f0x40E66666
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %i.c
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, f0x40E66666
  %i.ac = fadd reassoc nsz arcp contract afn float %i.y, -1.000000e+00 ; 3 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %5, %i.ac
  %i.ae = fadd reassoc nsz arcp contract afn float %i.y, 1.000000e+00 ; 3 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ab, %i.ae
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.ad, %i.af
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.atan.f32(float %i.ag) ; 2 uses
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ah)
  %or.cond225 = fcmp reassoc nsz arcp contract afn ogt float %i.ai, 1.500000e+00
  br i1 %or.cond225, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ah, 5.000000e-01
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.aj) ; 2 uses
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.ak
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = phi float [ f0x3EEDE42B, %bb.c ], [ %i.al, %bb.d ]
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.u
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, 1.000000e+00
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ao, float 1.000000e-01) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.aq = fmul reassoc nsz arcp contract afn float %i.c, -5.000000e-01 ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %cos
  %i.as = fmul reassoc nsz arcp contract afn float %i.b, 5.000000e-01 ; 4 uses
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %sin
  %i.au = fmul reassoc nsz arcp contract afn float %i.aq, %sin
  %i.av = fmul reassoc nsz arcp contract afn float %i.as, %cos
  %i.aw = fsub reassoc nsz arcp contract afn float %i.au, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn float %sin, -0.000000e+00 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bd = fmul reassoc nsz arcp contract afn float %i.j, %i.b ; 2 uses
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, -5.000000e-01
  %i.bf = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.x
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.as ; 3 uses
  %i.bh = fmul reassoc nsz arcp contract afn float %i.ac, %i.c ; 2 uses
  %i.bi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ap
  %i.bj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.e ; 2 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.c, 5.000000e-01 ; 2 uses
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %i.at
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.be, %i.l ; 3 uses
  %i.bn = fdiv reassoc nsz arcp contract afn float %i.j, %i.c ; 3 uses
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bl, %i.ar ; 2 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, 0.000000e+00 ; 2 uses
  %i.bq = fadd reassoc nsz arcp contract afn float %i.ax, %cos
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bp ; 3 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %4
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bd, 5.000000e-01
  %i.bu = fdiv reassoc nsz arcp contract afn float %i.bt, %i.c ; 3 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.f, 2.000000e+00
  %i.bw = fdiv reassoc nsz arcp contract afn float %i.bv, %i.l ; 3 uses
  %i.bx = fmul reassoc nsz arcp contract afn float %cos, 0.000000e+00 ; 4 uses
  %i.by = fadd reassoc nsz arcp contract afn float %i.ax, %i.bx
  %i.bz = fmul reassoc nsz arcp contract afn float %sin, 0.000000e+00 ; 2 uses
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bx, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn float %i.aw, %i.as ; 2 uses
  %i.cc = fsub reassoc nsz arcp contract afn float %i.bx, %sin
  %i.cd = fadd reassoc nsz arcp contract afn float %i.bp, %i.cc ; 3 uses
  %i.ce = fadd reassoc nsz arcp contract afn float %i.by, %i.bo ; 3 uses
  %i.cf = fadd reassoc nsz arcp contract afn float %i.bz, %cos
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cb, 0.000000e+00 ; 2 uses
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cf, %i.cg ; 3 uses
  %i.ci = fadd reassoc nsz arcp contract afn float %i.bx, %sin
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %i.cg ; 4 uses
  %i.ck = fadd reassoc nsz arcp contract afn float %i.ca, %i.cb ; 4 uses
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ch, %4
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, %i.cd ; 3 uses
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cj, %4
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, %i.br ; 3 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.ck, %4
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %i.ce ; 3 uses
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cd, %4
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %i.ch ; 2 uses
  %i.ct = fadd reassoc nsz arcp contract afn float %i.bs, %i.cj ; 2 uses
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ce, %4
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %i.ck ; 2 uses
  %i.cw = fadd reassoc nsz arcp contract afn float %i.ch, %i.cd
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, 0.000000e+00 ; 3 uses
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cj, %i.br
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, 0.000000e+00 ; 3 uses
  %i.da = fadd reassoc nsz arcp contract afn float %i.ck, %i.ce
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, 0.000000e+00
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, 1.000000e+00 ; 3 uses
  %i.dd = fmul reassoc nsz arcp contract afn float %i.cm, %i.f
  %i.de = fmul reassoc nsz arcp contract afn float %i.cs, 0.000000e+00 ; 2 uses
  %i.df = fadd reassoc nsz arcp contract afn float %i.dd, %i.cx
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, %i.de ; 2 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.co, %i.f
  %i.di = fmul reassoc nsz arcp contract afn float %i.ct, 0.000000e+00 ; 2 uses
  %i.dj = fadd reassoc nsz arcp contract afn float %i.dh, %i.cz
  %i.dk = fadd reassoc nsz arcp contract afn float %i.dj, %i.di ; 3 uses
  store float %i.dk, ptr %i.ay, align 4, !tbaa !15, !alias.scope !351
  %i.dl = fmul reassoc nsz arcp contract afn float %i.cq, %i.f
  %i.dm = fmul reassoc nsz arcp contract afn float %i.cv, 0.000000e+00 ; 2 uses
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, %i.dl
  %i.do = fmul reassoc nsz arcp contract afn float %i.dc, 0.000000e+00
  %i.dp = fadd reassoc nsz arcp contract afn float %i.dn, %i.do ; 3 uses
  store float %i.dp, ptr %i.az, align 8, !tbaa !15, !alias.scope !351
  %i.dq = fmul reassoc nsz arcp contract afn float %i.cm, %i.bu
  %i.dr = fmul reassoc nsz arcp contract afn float %i.cs, %i.bw
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, %i.dq
  %i.dt = fmul reassoc nsz arcp contract afn float %i.cx, %i.bm
  %i.du = fadd reassoc nsz arcp contract afn float %i.ds, %i.dt ; 3 uses
  %i.dv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.du, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.cj, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.ck, i64 2
  store <4 x float> %i.dx, ptr %i.ba, align 4, !tbaa !15
  %i.dy = fmul reassoc nsz arcp contract afn float %i.co, %i.bu
  %i.dz = fmul reassoc nsz arcp contract afn float %i.ct, %i.bw
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.dy
  %i.eb = fmul reassoc nsz arcp contract afn float %i.cz, %i.bm
  %i.ec = fadd reassoc nsz arcp contract afn float %i.ea, %i.eb ; 2 uses
  %i.ed = fmul reassoc nsz arcp contract afn float %i.cq, %i.bu
  %i.ee = fmul reassoc nsz arcp contract afn float %i.cv, %i.bw
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.ed
  %i.eg = fmul reassoc nsz arcp contract afn float %i.dc, %i.bm
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ef, %i.eg ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.cm, %i.bn
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.cx
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.de ; 3 uses
  %i.el = fmul reassoc nsz arcp contract afn float %i.co, %i.bn
  %i.em = fadd reassoc nsz arcp contract afn float %i.el, %i.cz
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.di ; 3 uses
  %i.eo = fmul reassoc nsz arcp contract afn float %i.cq, %i.bn
  %i.ep = fadd reassoc nsz arcp contract afn float %i.dm, %i.eo
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, %i.dc ; 3 uses
  %i.er = fmul reassoc nsz arcp contract afn float %i.du, 0.000000e+00 ; 2 uses
  %i.es = fadd reassoc nsz arcp contract afn float %i.er, %i.dg
  %i.et = fmul reassoc nsz arcp contract afn float %i.ek, 0.000000e+00
  %i.eu = fadd reassoc nsz arcp contract afn float %i.es, %i.et ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %i.ec, 0.000000e+00 ; 2 uses
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ev, %i.dk
  %i.ex = fmul reassoc nsz arcp contract afn float %i.en, 0.000000e+00
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ew, %i.ex ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn float %i.eh, 0.000000e+00 ; 2 uses
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, %i.dp
  %i.fb = fmul reassoc nsz arcp contract afn float %i.eq, 0.000000e+00
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fa, %i.fb ; 2 uses
  %i.fd = fmul reassoc nsz arcp contract afn float %i.dg, 0.000000e+00 ; 2 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %i.x, %i.du
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, %i.fd
  %i.fg = fmul reassoc nsz arcp contract afn float %i.bg, %i.ek
  %i.fh = fadd reassoc nsz arcp contract afn float %i.ff, %i.fg ; 2 uses
  %i.fi = fmul reassoc nsz arcp contract afn float %i.dk, 0.000000e+00 ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn float %i.x, %i.ec
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.fi
  %i.fl = fmul reassoc nsz arcp contract afn float %i.bg, %i.en
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl ; 2 uses
  %i.fn = fmul reassoc nsz arcp contract afn float %i.dp, 0.000000e+00 ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.x, %i.eh
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.fn
  %i.fq = fmul reassoc nsz arcp contract afn float %i.bg, %i.eq
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fp, %i.fq ; 2 uses
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fd, %i.ek
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, %i.er ; 2 uses
  %i.fu = fadd reassoc nsz arcp contract afn float %i.fi, %i.en
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, %i.ev ; 2 uses
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fn, %i.eq
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fw, %i.ez ; 2 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %i.eu, 0.000000e+00 ; 2 uses
  %i.fz = fmul reassoc nsz arcp contract afn float %i.ft, 0.000000e+00 ; 2 uses
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.fy
  %i.gb = fadd reassoc nsz arcp contract afn float %i.ga, %i.fh ; 4 uses
  store float %i.gb, ptr %i.a, align 64, !tbaa !15, !alias.scope !352
  %i.gc = fmul reassoc nsz arcp contract afn float %i.ey, 0.000000e+00 ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fv, 0.000000e+00 ; 2 uses
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.gc
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.fm ; 3 uses
  %i.gg = fmul reassoc nsz arcp contract afn float %i.fc, 0.000000e+00 ; 2 uses
  %i.gh = fmul reassoc nsz arcp contract afn float %i.fx, 0.000000e+00 ; 2 uses
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, %i.gg
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gi, %i.fr ; 3 uses
  %i.gk = fmul reassoc nsz arcp contract afn float %i.fh, 0.000000e+00
  %i.gl = fadd reassoc nsz arcp contract afn float %i.fz, %i.eu
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gd, %i.ey
  %i.gn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.fr, i64 1
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.go, zeroinitializer
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gh, %i.fc
  %i.gr = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.gs = insertelement <4 x float> %i.gr, float %i.gq, i64 1
  %i.gt = insertelement <4 x float> %i.gs, float %i.gl, i64 2
  %i.gu = shufflevector <2 x float> %i.gp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gv = insertelement <4 x float> %i.gu, float %i.gk, i64 2 ; 2 uses
  %i.gw = fadd reassoc nsz arcp contract afn <4 x float> %i.gt, %i.gv ; 2 uses
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.gy = fadd reassoc nsz arcp contract afn float %i.fy, %i.ft
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gc, %i.fv
  %i.ha = fadd reassoc nsz arcp contract afn float %i.gg, %i.fx
  %i.hb = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.hc = insertelement <4 x float> %i.hb, float %i.ha, i64 1
  %i.hd = insertelement <4 x float> %i.hc, float %i.gy, i64 2
  %i.he = fadd reassoc nsz arcp contract afn <4 x float> %i.hd, %i.gv
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.hg = insertelement <2 x float> poison, float %i.y, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.bh, i64 1
  %i.hi = fmul reassoc nsz arcp contract afn <2 x float> %i.hh, <float 2.000000e+00, float 5.000000e-01>
  %i.hj = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.hk = insertelement <2 x float> %i.hj, float %i.b, i64 1
  %i.hl = fdiv reassoc nsz arcp contract afn <2 x float> %i.hi, %i.hk ; 2 uses
  %i.hm = fmul reassoc nsz arcp contract afn float %i.bh, -5.000000e-01
  %i.hn = fdiv reassoc nsz arcp contract afn float %i.hm, %i.ae
  %i.ho = fdiv reassoc nsz arcp contract afn float %i.ac, %i.b
  %i.hp = fmul reassoc nsz arcp contract afn float %i.gb, %i.y
  %i.hq = fmul reassoc nsz arcp contract afn float %i.gf, %i.y
  %i.hr = fmul reassoc nsz arcp contract afn float %i.gj, %i.y
  %i.hs = fmul reassoc nsz arcp contract afn <4 x float> %i.gx, zeroinitializer ; 2 uses
  %i.ht = insertelement <4 x float> poison, float %i.hq, i64 0
  %i.hu = insertelement <4 x float> %i.ht, float %i.hr, i64 1
  %i.hv = insertelement <4 x float> %i.hu, float %i.hp, i64 2
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hx = fadd reassoc nsz arcp contract afn <4 x float> %i.hs, %i.hw
  %i.hy = fmul reassoc nsz arcp contract afn <4 x float> %i.hf, zeroinitializer
  %i.hz = fadd reassoc nsz arcp contract afn <4 x float> %i.hx, %i.hy ; 2 uses
  %i.ia = insertelement <4 x float> %i.gx, float %i.gj, i64 1
  %i.ib = insertelement <4 x float> %i.ia, float %i.gf, i64 3 ; 2 uses
  %i.ic = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.id = fmul reassoc nsz arcp contract afn <4 x float> %i.ib, %i.ic
  %i.ie = shufflevector <4 x float> %i.ib, <4 x float> %i.gw, <4 x i32> <i32 3, i32 5, i32 poison, i32 0>
  %i.if = insertelement <4 x float> %i.ie, float %i.gb, i64 2
  %i.ig = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ih = fmul reassoc nsz arcp contract afn <4 x float> %i.if, %i.ig
  %i.ii = fadd reassoc nsz arcp contract afn <4 x float> %i.ih, %i.id
  %i.ij = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = fmul reassoc nsz arcp contract afn <4 x float> %i.hf, %i.ik
  %i.im = fadd reassoc nsz arcp contract afn <4 x float> %i.ii, %i.il ; 2 uses
  %i.in = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.io = insertelement <4 x float> %i.in, float %i.gj, i64 1
  %i.ip = insertelement <4 x float> %i.io, float %i.gb, i64 2
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ir = insertelement <4 x float> poison, float %i.ho, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = fmul reassoc nsz arcp contract afn <4 x float> %i.iq, %i.is
  %i.iu = fadd reassoc nsz arcp contract afn <4 x float> %i.hf, %i.it
  %i.iv = fadd reassoc nsz arcp contract afn <4 x float> %i.iu, %i.hs ; 3 uses
  %i.iw = fmul reassoc nsz arcp contract afn float %i.bi, %i.bk
  %i.ix = fmul reassoc nsz arcp contract afn <4 x float> %i.im, zeroinitializer ; 2 uses
  %i.iy = fadd reassoc nsz arcp contract afn <4 x float> %i.ix, %i.hz
end_hunk_0
begin_hunk_1_@modify_roi_in:bb.a
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !34  ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !55
  %i.d = load float, ptr %i.c, align 4, !tbaa !36 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp reassoc nsz arcp contract afn uge float %i.e, f0x38D1B717
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !37 ; 2 uses
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.pre)
  %i.h = fcmp reassoc nsz arcp contract afn uge float %i.g, f0x38D1B717
  %or.cond = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond, label %_isneutral.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !38
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp reassoc nsz arcp contract afn uge float %i.k, f0x38D1B717
  br i1 %i.l, label %_isneutral.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !39
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.n)
  %i.p = fcmp reassoc nsz arcp contract afn uge float %i.o, f0x38D1B717
  br i1 %i.p, label %_isneutral.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !40
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, -1.000000e+00
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp reassoc nsz arcp contract afn uge float %i.t, f0x38D1B717
  br i1 %i.u, label %_isneutral.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !41
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp reassoc nsz arcp contract afn uge float %i.x, f0x38D1B717
  br i1 %i.y, label %_isneutral.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load float, ptr %i.z, align 4, !tbaa !42
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, -1.000000e+00
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ab)
  %i.ad = fcmp reassoc nsz arcp contract afn uge float %i.ac, f0x38D1B717
  br i1 %i.ad, label %_isneutral.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !43
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp reassoc nsz arcp contract afn uge float %i.ag, f0x38D1B717
  br i1 %i.ah, label %_isneutral.exit.thread, label %_isneutral.exit

_isneutral.exit:                                  ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !44
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, -1.000000e+00
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ak)
  %i.am = fcmp reassoc nsz arcp contract afn uge float %i.al, f0x38D1B717
  br i1 %i.am, label %_isneutral.exit.thread, label %bb.i

_isneutral.exit.thread:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_isneutral.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !48
  call fastcc void @_homography(ptr noundef %i.a, float noundef %i.d, float noundef %.pre, float noundef %i.ao, float noundef %i.aq, float noundef %i.as, float noundef %i.au, float noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 1)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !53
  %i.bd = load <2 x i32>, ptr %i.ax, align 16, !tbaa !17
  %i.be = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bd to <2 x float>
  %i.bf = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = fmul reassoc nsz arcp contract afn <2 x float> %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bk = load <2 x i32>, ptr %i.bi, align 4, !tbaa !17
  %i.bl = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bk to <2 x float>
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !53 ; 3 uses
  %i.bo = load <4 x float>, ptr %i.bj, align 4, !tbaa !15 ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bq = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.br = fsub reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bl
  %i.bt = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bs, %i.bu
  %i.bw = fdiv reassoc nsz arcp contract afn <2 x float> %i.bv, %i.br ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !52 ; 4 uses
  %invariant.op135 = add nsw i32 %i.by, -1        ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.preheader.lr.ph, label %._crit_edge142

.preheader.lr.ph:                                 ; preds = %_isneutral.exit.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !51 ; 3 uses
  %invariant.op = add i32 %i.cb, -1
  %i.cc = icmp sgt i32 %i.cb, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ce = load <4 x float>, ptr %i.a, align 64    ; 3 uses
  %i.cf = load <4 x float>, ptr %i.cd, align 16   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ch = load float, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cl = load float, ptr %i.ck, align 32
  br i1 %i.cc, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cn = load i32, ptr %2, align 4, !tbaa !56
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !57
  %i.cp = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <2 x i32> <i32 1, i32 4>
  %i.cq = extractelement <2 x float> %i.bw, i64 1
  %i.cr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bn ; 2 uses
  %invariant.op170 = fmul reassoc nsz arcp contract afn float %i.cr, %i.cj
  %i.cs = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ct = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <2 x i32> <i32 2, i32 5>
  %i.cu = extractelement <2 x float> %i.bw, i64 0
  %i.cv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bn ; 2 uses
  %invariant.op168 = fmul reassoc nsz arcp contract afn float %i.cv, %i.ch
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.098141.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %.reass136.us, %._crit_edge.us ] ; 2 uses
  %i.cw = phi <2 x float> [ splat (float f0x7F7FFFFF), %.preheader.lr.ph.split.us ], [ %i.dt, %._crit_edge.us ]
  %i.cx = phi <2 x float> [ splat (float f0xFF7FFFFF), %.preheader.lr.ph.split.us ], [ %i.dv, %._crit_edge.us ]
  %i.cy = add nsw i32 %i.co, %.098141.us
  %i.cz = sitofp reassoc nsz arcp contract afn i32 %i.cy to float
  %i.da = fadd reassoc nsz arcp contract afn float %i.cq, %i.cz ; 2 uses
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.cr
  %i.dc = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul reassoc nsz arcp contract afn <2 x float> %i.dd, %i.cp
  %.reass171 = fmul reassoc nsz arcp contract afn float %i.da, %invariant.op170
  %invariant.op133.us = fadd reassoc nsz arcp contract afn float %.reass171, %i.cl
  %invariant.op167 = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.de
  br label %bb.h

bb.h:                                             ; preds = %.preheader.us, %bb.h
  %.0125.us = phi i32 [ 0, %.preheader.us ], [ %.reass.us, %bb.h ] ; 2 uses
  %i.df = phi <2 x float> [ %i.cw, %.preheader.us ], [ %i.dt, %bb.h ] ; 2 uses
  %i.dg = phi <2 x float> [ %i.cx, %.preheader.us ], [ %i.dv, %bb.h ] ; 2 uses
  %i.dh = add nsw i32 %i.cn, %.0125.us
  %i.di = sitofp reassoc nsz arcp contract afn i32 %i.dh to float
  %i.dj = fadd reassoc nsz arcp contract afn float %i.cu, %i.di ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.cv
  %i.dl = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul reassoc nsz arcp contract afn <2 x float> %i.dm, %i.cs
  %.reass = fadd reassoc nsz arcp contract afn <2 x float> %i.dn, %invariant.op167
  %.reass169 = fmul reassoc nsz arcp contract afn float %i.dj, %invariant.op168
  %.reass134.us = fadd reassoc nsz arcp contract afn float %.reass169, %invariant.op133.us
  %i.do = fmul reassoc nsz arcp contract afn <2 x float> %.reass, %i.bg
  %i.dp = insertelement <2 x float> poison, float %.reass134.us, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fdiv reassoc nsz arcp contract afn <2 x float> %i.do, %i.dq ; 4 uses
  %i.ds = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.df, %i.dr
  %i.dt = select <2 x i1> %i.ds, <2 x float> %i.df, <2 x float> %i.dr ; 3 uses
  %i.du = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.dg, %i.dr
  %i.dv = select <2 x i1> %i.du, <2 x float> %i.dg, <2 x float> %i.dr ; 3 uses
  %.reass.us = add i32 %.0125.us, %invariant.op   ; 2 uses
  %i.dw = icmp slt i32 %.reass.us, %i.cb
  br i1 %i.dw, label %bb.h, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.h
  %.reass136.us = add i32 %.098141.us, %invariant.op135 ; 2 uses
  %i.dx = icmp slt i32 %.reass136.us, %i.by
  br i1 %i.dx, label %.preheader.us, label %._crit_edge142

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.098141 = phi i32 [ %.reass136, %.preheader ], [ 0, %.preheader.lr.ph ]
  %.reass136 = add i32 %.098141, %invariant.op135 ; 2 uses
  %i.dy = icmp slt i32 %.reass136, %i.by
  br i1 %i.dy, label %.preheader, label %._crit_edge142

._crit_edge142:                                   ; preds = %.preheader, %._crit_edge.us, %_isneutral.exit.thread
  %i.dz = phi <2 x float> [ splat (float f0x7F7FFFFF), %_isneutral.exit.thread ], [ %i.dt, %._crit_edge.us ], [ splat (float f0x7F7FFFFF), %.preheader ] ; 2 uses
  %i.ea = phi <2 x float> [ splat (float f0xFF7FFFFF), %_isneutral.exit.thread ], [ %i.dv, %._crit_edge.us ], [ splat (float f0xFF7FFFFF), %.preheader ]
  %i.eb = call ptr @dt_interpolation_new(i32 noundef 3) #34
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !367
  %i.ee = uitofp reassoc nsz arcp contract afn i64 %i.ed to float ; 2 uses
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, 2.000000e+00
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eh = call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.bh)
  %i.ei = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fsub reassoc nsz arcp contract afn <2 x float> %i.dz, %i.ej
  %i.el = fptosi <2 x float> %i.ek to <2 x i32>   ; 2 uses
  %i.em = fptosi <2 x float> %i.eh to <2 x i32>   ; 3 uses
  %i.en = icmp sgt <2 x i32> %i.el, %i.em
  %i.eo = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.el, <2 x i32> zeroinitializer)
  %i.ep = select <2 x i1> %i.en, <2 x i32> %i.em, <2 x i32> %i.eo ; 2 uses
  store <2 x i32> %i.ep, ptr %3, align 4, !tbaa !17
  %i.eq = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.dz
  %i.er = fadd reassoc nsz arcp contract afn <2 x float> %i.eq, %i.ea
  %i.es = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fadd reassoc nsz arcp contract afn <2 x float> %i.er, %i.et
  %i.ev = fptosi <2 x float> %i.eu to <2 x i32>   ; 2 uses
  %i.ew = sub nsw <2 x i32> %i.em, %i.ep          ; 2 uses
  %i.ex = icmp slt <2 x i32> %i.ew, %i.ev
  %i.ey = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ev, <2 x i32> splat (i32 4))
  %i.ez = select <2 x i1> %i.ex, <2 x i32> %i.ew, <2 x i32> %i.ey
  store <2 x i32> %i.ez, ptr %i.eg, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.i

bb.i:                                             ; preds = %_isneutral.exit, %._crit_edge142
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [3 x [3 x float]], align 64       ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !34  ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !125 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.h = load i32, ptr %i.g, align 4, !tbaa !372  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51
  %i.k = mul nsw i32 %i.j, %i.h
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126  ; 3 uses
  %i.n = load i32, ptr %i.m, align 16, !tbaa !373
  %.not128 = icmp eq i32 %i.n, 0
  br i1 %.not128, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !102
  %i.q = getelementptr i8, ptr %i.p, i64 644
  %.val = load i32, ptr %i.q, align 4, !tbaa !115
  %i.r = and i32 %.val, 4
  %.not129 = icmp eq i32 %i.r, 0
  br i1 %.not129, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.w = load <2 x i32>, ptr %i.u, align 16, !tbaa !17
  %i.x = sitofp reassoc nsz arcp contract afn <2 x i32> %i.w to <2 x float> ; 3 uses
  store <2 x float> %i.x, ptr %i.t, align 8, !tbaa !15
  %i.y = extractelement <2 x float> %i.x, i64 0   ; 2 uses
  %i.z = extractelement <2 x float> %i.x, i64 1   ; 2 uses
  %i.aa = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.y, float noundef %i.z) #35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !143
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !144
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ae to double
  %i.ag = call i32 @dt_dev_distort_backtransform_plus(ptr noundef nonnull %i.m, ptr noundef %i.ac, double noundef %i.af, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 2) #34 ; 0 uses
  %i.ah = load float, ptr %i.t, align 8, !tbaa !15
  %i.ai = load float, ptr %i.a, align 16, !tbaa !15
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ah, %i.ai ; 2 uses
  %i.ak = load float, ptr %i.v, align 4, !tbaa !15
  %i.al = load float, ptr %i.s, align 4, !tbaa !15
  %i.am = fsub reassoc nsz arcp contract afn float %i.ak, %i.al ; 2 uses
  %i.an = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aj, float noundef %i.am) #35
  %i.ao = fmul reassoc nsz arcp contract afn float %i.aj, %i.y
  %i.ap = fmul reassoc nsz arcp contract afn float %i.am, %i.z
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.ao
  %i.ar = fmul reassoc nsz arcp contract afn float %i.an, %i.aa
  %i.as = fdiv reassoc nsz arcp contract afn float %i.aq, %i.ar ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt float %i.as, 1.000000e+00
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.as, -1.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.au, float -1.000000e+00, float %i.as
  %i.av = select reassoc nsz arcp contract afn i1 %i.at, float 1.000000e+00, float %spec.select
  %i.aw = call reassoc nsz arcp contract afn float @llvm.acos.f32(float %i.av)
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, f0x40490FDB
  %i.ay = frem reassoc nsz arcp contract afn float %i.ax, f0x40490FDB
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, f0xBFC90FDB
  %i.ba = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.az)
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.ba, f0x3F490FDB
  %i.bc = zext i1 %i.bb to i32
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !126 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !143
  %i.bg = load i32, ptr %i.ad, align 16, !tbaa !144
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.bg to double
  %i.bi = call i64 @dt_dev_hash_plus(ptr noundef %i.bd, ptr noundef %i.bf, double noundef %i.bh, i32 noundef 4) #34
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.bk = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bj) #34 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i32 %i.bc, ptr %i.bl, align 8, !tbaa !151
  %i.bm = load i32, ptr %i.i, align 4, !tbaa !51
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !52
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %i.bq, %i.bn                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 264 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !152 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !153
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 276
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !154
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, %i.bx
  %i.cc = icmp ult i64 %i.cb, %i.br
  br i1 %i.cc, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %bb.d, %bb.e
  call void @free(ptr noundef %i.bt) #34
  %i.cd = shl i64 %i.br, 4
  %i.ce = call ptr @dt_alloc_aligned(i64 noundef %i.cd) #34 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ce, i64 64) ]
  store ptr %i.ce, ptr %i.bs, align 8, !tbaa !152
  %.not130 = icmp eq ptr %i.ce, null
  br i1 %.not130, label %bb.f, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.e, %thread-pre-split
  %i.cf = phi ptr [ %i.ce, %thread-pre-split ], [ %i.bt, %bb.e ]
  %i.cg = load i32, ptr %i.i, align 4, !tbaa !51
  %i.ch = sext i32 %i.cg to i64
  %i.ci = load i32, ptr %i.bo, align 4, !tbaa !52
  %i.cj = sext i32 %i.ci to i64
  %i.ck = sext i32 %i.h to i64
  %i.cl = mul nsw i64 %i.ch, %i.ck
  %i.cm = mul i64 %i.cl, %i.cj
  call void @dt_iop_image_copy(ptr noundef nonnull %i.cf, ptr noundef %2, i64 noundef %i.cm) #34
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.co = load <4 x i32>, ptr %4, align 4, !tbaa !17
  %i.cp = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.cp, ptr %i.cn, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  store float %i.cr, ptr %i.cs, align 8, !tbaa !155
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  store i64 %i.bi, ptr %i.ct, align 8, !tbaa !156
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.thread, %thread-pre-split
  %i.cu = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bj) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b, %bb.a
  %i.cv = load float, ptr %i.d, align 4, !tbaa !36
  %i.cw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cv)
  %i.cx = fcmp reassoc nsz arcp contract afn uge float %i.cw, f0x38D1B717
  br i1 %i.cx, label %_isneutral.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !37
  %i.da = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cz)
  %i.db = fcmp reassoc nsz arcp contract afn uge float %i.da, f0x38D1B717
  br i1 %i.db, label %_isneutral.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !38
  %i.de = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dd)
  %i.df = fcmp reassoc nsz arcp contract afn uge float %i.de, f0x38D1B717
  br i1 %i.df, label %_isneutral.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !39
  %i.di = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dh)
  %i.dj = fcmp reassoc nsz arcp contract afn uge float %i.di, f0x38D1B717
  br i1 %i.dj, label %_isneutral.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_1
begin_hunk_2_@gui_post_expose:bb.a
  store double %i.abt, ptr %i.e, align 16, !tbaa !166
  %i.abu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.abt, ptr %i.abu, align 8, !tbaa !166
  %i.abv = getelementptr inbounds nuw i8, ptr %i.j, i64 324
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !201 ; 2 uses
  %i.abx = fmul reassoc nsz arcp contract afn float %i.abw, %2
  %i.aby = fpext reassoc nsz arcp contract afn float %i.abx to double
  %i.abz = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  %i.aca = load float, ptr %i.abz, align 8, !tbaa !202 ; 2 uses
  %i.acb = fmul reassoc nsz arcp contract afn float %i.aca, %3
  %i.acc = fpext reassoc nsz arcp contract afn float %i.acb to double
  %i.acd = fsub reassoc nsz arcp contract afn float %4, %i.abw
  %i.ace = fmul reassoc nsz arcp contract afn float %i.acd, %2
  %i.acf = fpext reassoc nsz arcp contract afn float %i.ace to double
  %i.acg = fsub reassoc nsz arcp contract afn float %5, %i.aca
  %i.ach = fmul reassoc nsz arcp contract afn float %i.acg, %3
  %i.aci = fpext reassoc nsz arcp contract afn float %i.ach to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.aby, double noundef %i.acc, double noundef %i.acf, double noundef %i.aci) #34
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 8.000000e-01) #34
  %i.acj = extractelement <2 x double> %i.abs, i64 1
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.acj) #34
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 2, double noundef 0.000000e+00) #34
  call void @cairo_stroke_preserve(ptr noundef %1) #34
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #34
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 2, double noundef 4.000000e+00) #34
  call void @cairo_stroke(ptr noundef %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.loopexit
  %i.ack = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.acl = load float, ptr %i.ack, align 8, !tbaa !203 ; 2 uses
  %i.acm = fcmp reassoc nsz arcp contract afn ogt float %i.acl, 0.000000e+00
  br i1 %i.acm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.acn = fdiv reassoc nsz arcp contract afn double 4.000000e+00, %i.o ; 2 uses
  store double %i.acn, ptr %i.f, align 16, !tbaa !166
  %i.aco = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %i.acn, ptr %i.aco, align 8, !tbaa !166
  %i.acp = fmul reassoc nsz arcp contract afn float %4, %2
  %i.acq = fpext reassoc nsz arcp contract afn float %i.acp to double
  %i.acr = fmul reassoc nsz arcp contract afn float %5, %3
  %i.acs = fpext reassoc nsz arcp contract afn float %i.acr to double
  %i.act = fpext reassoc nsz arcp contract afn float %i.acl to double
  call void @cairo_arc(ptr noundef %1, double noundef %i.acq, double noundef %i.acs, double noundef %i.act, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #34
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 8.000000e-01) #34
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.p) #34
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 2, double noundef 0.000000e+00) #34
  call void @cairo_stroke_preserve(ptr noundef %1) #34
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #34
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 2, double noundef 4.000000e+00) #34
  call void @cairo_stroke(ptr noundef %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  call void @cairo_restore(ptr noundef %1) #34
  br label %_get_points.exit.thread

.critedge:                                        ; preds = %bb.e, %bb.g, %bb.d, %call_distort_transform.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %_get_points.exit.thread

.critedge497:                                     ; preds = %.preheader510.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %_get_points.exit.thread

_get_points.exit.thread:                          ; preds = %bb.z, %bb.au, %bb.av, %bb.y, %.critedge497, %bb.bq, %.thread573, %bb.ay, %bb.r, %bb.s, %bb.q, %.critedge
  ret void
}

declare i32 @dt_iop_canvas_not_sensitive(ptr noundef) local_unnamed_addr #7

declare i32 @dt_iop_has_focus(ptr noundef) local_unnamed_addr #7

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @cairo_save(ptr noundef) local_unnamed_addr #7

declare void @cairo_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #7

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_set_fill_rule(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #7

declare void @cairo_fill(ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @dt_draw_set_color_overlay(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #13 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !159 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %i.c = load double, ptr %i.b, align 8, !tbaa !167
  %i.d = fmul reassoc nsz arcp contract afn double %i.c, 5.000000e-01 ; 2 uses
  %i.e = fneg reassoc nsz arcp contract afn double %i.d
  %.p = select i1 %.not, double %i.e, double %i.d
  %i.f = fadd reassoc nsz arcp contract afn double %.p, 5.000000e-01 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1384
  %i.h = load double, ptr %i.g, align 8, !tbaa !168
  %i.i = fmul reassoc nsz arcp contract afn double %i.h, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1400
  %i.k = load double, ptr %i.j, align 8, !tbaa !169
  %i.l = fmul reassoc nsz arcp contract afn double %i.k, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1392
  %i.n = load double, ptr %i.m, align 8, !tbaa !170
  %i.o = fmul reassoc nsz arcp contract afn double %i.n, %i.f
  tail call void @cairo_set_source_rgba(ptr noundef %0, double noundef %i.i, double noundef %i.l, double noundef %i.o, double noundef 1.000000e+00) #34
  ret void
}

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #7

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #12

declare void @dt_guides_draw(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_rel_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #7

declare void @cairo_restore(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc float @_calculate_straightening(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = fsub reassoc nsz arcp contract afn float %1, %3
  %i.c = fsub reassoc nsz arcp contract afn float %2, %4
  %i.d = fmul reassoc nsz arcp contract afn float %5, %i.b ; 3 uses
  %i.e = fmul reassoc nsz arcp contract afn float %6, %i.c ; 3 uses
  %i.f = fmul reassoc nsz arcp contract afn float %i.d, %i.d
  %i.g = fmul reassoc nsz arcp contract afn float %i.e, %i.e
  %i.h = fadd reassoc nsz arcp contract afn float %i.g, %i.f
  %i.i = fpext reassoc nsz arcp contract afn float %i.h to double
  %i.j = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.i)
  %i.k = fpext reassoc nsz arcp contract afn float %7 to double
  %i.l = fmul reassoc nsz arcp contract afn double %i.j, %i.k
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !159
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1432
  %i.o = load double, ptr %i.n, align 8, !tbaa !165
  %i.p = fmul reassoc nsz arcp contract afn double %i.o, 2.500000e+01
  %i.q = fcmp reassoc nsz arcp contract afn olt double %i.l, %i.p
  br i1 %i.q, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.d, i64 2
  %i.t = insertelement <4 x float> %i.s, float %i.e, i64 3
  store <4 x float> %i.t, ptr %i.a, align 16, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !126  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.z = load i32, ptr %i.y, align 16, !tbaa !144
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to double
  %i.ab = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.v, ptr noundef %i.x, double noundef %i.aa, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 2) #34 ; 0 uses
  %i.ac = load <2 x float>, ptr %i.a, align 16, !tbaa !15
  %i.ad = load <2 x float>, ptr %i.r, align 8, !tbaa !15
  %i.ae = fsub reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ad ; 3 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.af, 0.000000e+00 ; 2 uses
  %i.ah = fneg reassoc nsz arcp contract afn <2 x float> %i.ae ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %.039 = select nsz i1 %i.ag, float %i.ai, float %i.af
  %i.aj = extractelement <2 x float> %i.ah, i64 1
  %i.ak = extractelement <2 x float> %i.ae, i64 1
  %.038 = select nsz i1 %i.ag, float %i.aj, float %i.ak
  %i.al = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %.038, float %.039) ; 6 uses
  %i.am = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.al)
  %or.cond = fcmp reassoc nsz arcp contract afn ugt float %i.am, f0x3FC90FDB
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.al, f0x3F490FDB
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = fsub reassoc nsz arcp contract afn float f0x3FC90FDB, %i.al
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.al, f0xBF490FDB
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = fsub reassoc nsz arcp contract afn float f0xBFC90FDB, %i.al
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ar = fneg reassoc nsz arcp contract afn float %i.al
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.037 = phi nsz float [ %i.ao, %bb.d ], [ %i.aq, %bb.f ], [ %i.ar, %bb.g ]
  %i.as = fmul reassoc nsz arcp contract afn float %.037, f0x42652EE0 ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn olt float %i.as, -1.800000e+02
  %i.au = fadd reassoc nsz arcp contract afn float %i.as, 3.600000e+02
  %spec.select = select nsz i1 %i.at, float %i.au, float %i.as ; 3 uses
  %i.av = fcmp reassoc nsz arcp contract afn ogt float %spec.select, 1.800000e+02
  %i.aw = fadd reassoc nsz arcp contract afn float %spec.select, -3.600000e+02
  %.1 = select nsz i1 %i.av, float %i.aw, float %spec.select
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.040 = phi nsz float [ %.1, %bb.h ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.141 = phi nsz float [ %.040, %bb.i ], [ 0.000000e+00, %bb.a ]
  ret float %.141
}

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #7

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #7

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #7

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_gui_draw_rounded_rectangle(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #7

declare void @g_object_unref(ptr noundef) local_unnamed_addr #7

declare i64 @dt_dev_hash_distort_plus(ptr noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_update_colors(i32 %.704.val.152.val, ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %.704.val.152.val, 0        ; 4 uses
  %i.b = select i1 %.not, i32 4, i32 2            ; 2 uses
  %i.c = select i1 %.not, i32 3, i32 1            ; 2 uses
  %i.d = select i1 %.not, i32 2, i32 4            ; 2 uses
  %i.e = select i1 %.not, i32 1, i32 3            ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat2 = shufflevector <8 x i32> %broadcast.splatinsert1, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert3 = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat4 = shufflevector <8 x i32> %broadcast.splatinsert3, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat6 = shufflevector <8 x i32> %broadcast.splatinsert5, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %0, <8 x i64> %vec.ind ; 2 uses
  %wide.gep7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep7, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !196
  %i.f = and <8 x i32> %wide.masked.gather, splat (i32 7) ; 4 uses
  %wide.gep8 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %i.g = icmp eq <8 x i32> %i.f, splat (i32 7)
  %i.h = icmp eq <8 x i32> %i.f, splat (i32 3)
  %i.i = icmp eq <8 x i32> %i.f, splat (i32 5)
  %i.j = icmp eq <8 x i32> %i.f, splat (i32 1)
  %predphi = select <8 x i1> %i.g, <8 x i32> %broadcast.splat6, <8 x i32> zeroinitializer
  %predphi9 = select <8 x i1> %i.h, <8 x i32> %broadcast.splat4, <8 x i32> %predphi
  %predphi10 = select <8 x i1> %i.j, <8 x i32> %broadcast.splat, <8 x i32> %predphi9
  %predphi11 = select <8 x i1> %i.i, <8 x i32> %broadcast.splat2, <8 x i32> %predphi10
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %predphi11, <8 x ptr> align 8 %wide.gep8, <8 x i1> splat (i1 true)), !tbaa !191
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %bb.f, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !196
  %i.o = and i32 %i.n, 7
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  switch i32 %i.o, label %bb.e [
    i32 7, label %bb.f
    i32 3, label %bb.b
    i32 5, label %bb.c
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %scalar.ph
  br label %bb.f

bb.c:                                             ; preds = %scalar.ph
  br label %bb.f

bb.d:                                             ; preds = %scalar.ph
  br label %bb.f

bb.e:                                             ; preds = %scalar.ph
  br label %bb.f

bb.f:                                             ; preds = %scalar.ph, %bb.b, %bb.d, %bb.e, %bb.c
  %.sink = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.d ], [ 0, %bb.e ], [ %i.c, %bb.c ], [ %i.e, %scalar.ph ]
  store i32 %.sink, ptr %i.p, align 8, !tbaa !191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !401
}

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 8 uses
  %i.b = alloca [4 x [3 x float]], align 16       ; 7 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %i.e = alloca [4 x float], align 16             ; 7 uses
  %i.f = alloca [2 x float], align 8              ; 10 uses
  %i.g = alloca [2 x float], align 8              ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !125 ; 46 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !174
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.ck

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.m = load i32, ptr %i.l, align 16, !tbaa !158
  %.not256 = icmp eq i32 %i.m, 0
  br i1 %.not256, label %bb.ck, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.p = call i32 @dt_dev_get_preview_size(ptr noundef %i.o, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #34 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 348
  %i.r = load i32, ptr %i.q, align 4, !tbaa !171
  %.not257 = icmp eq i32 %i.r, 0
  br i1 %.not257, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !157  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store float %1, ptr %i.e, align 16, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store float %2, ptr %i.u, align 4, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.v, align 8, !tbaa !15
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !126  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !143
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aa = load i32, ptr %i.z, align 16, !tbaa !144
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.ac = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.w, ptr noundef %i.y, double noundef %i.ab, i32 noundef 1, ptr noundef nonnull %i.e, i64 noundef 2) #34 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 332
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 324
end_hunk_2
begin_hunk_3_@mouse_moved:bb.a
  %i.ci = fadd reassoc nsz arcp contract afn <2 x float> %i.ch, %i.ce ; 2 uses
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cg
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ca, 0.000000e+00
  %i.cl = fmul reassoc nsz arcp contract afn float %i.cb, 0.000000e+00 ; 2 uses
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cc, %i.ck ; 2 uses
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, %i.cl
  %i.co = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, %i.co ; 2 uses
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cp
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cb, %i.bw ; 2 uses
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cm, %i.cr
  %i.ct = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul reassoc nsz arcp contract afn <2 x float> %i.cd, %i.ct
  %i.cv = fadd reassoc nsz arcp contract afn <2 x float> %i.ch, %i.cu ; 2 uses
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cp
  %i.cx = fmul reassoc nsz arcp contract afn float %i.ca, %i.bu
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cc, %i.cx ; 2 uses
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, %i.cr
  %i.da = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cg
  %i.db = fadd reassoc nsz arcp contract afn float %i.cy, %i.cl
  %i.dc = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fdiv reassoc nsz arcp contract afn <2 x float> %i.cj, %i.dd ; 10 uses
  %i.df = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fdiv reassoc nsz arcp contract afn <2 x float> %i.cq, %i.dg ; 9 uses
  %i.di = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fdiv reassoc nsz arcp contract afn <2 x float> %i.cw, %i.dj ; 9 uses
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dm = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fdiv reassoc nsz arcp contract afn <2 x float> %i.da, %i.dn ; 10 uses
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.dr = extractelement <2 x float> %i.de, i64 1 ; 2 uses
  %i.ds = extractelement <2 x float> %i.de, i64 0
  %i.dt = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.du = extractelement <2 x float> %i.do, i64 0
  %i.dv = shufflevector <2 x float> %i.de, <2 x float> %i.dh, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.dw = shufflevector <2 x float> %i.dk, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.dx = shufflevector <3 x float> %i.dv, <3 x float> %i.dw, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dh, <2 x float> %i.dk, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.dz = shufflevector <3 x float> %i.dy, <3 x float> %i.dq, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ea = fsub reassoc nsz arcp contract afn <3 x float> %i.dx, %i.dz ; 3 uses
  %i.eb = shufflevector <2 x float> %i.dh, <2 x float> %i.dk, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ec = shufflevector <3 x float> %i.eb, <3 x float> %i.dp, <3 x i32> <i32 0, i32 1, i32 3> ; 2 uses
  %i.ed = shufflevector <2 x float> %i.de, <2 x float> %i.dh, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ee = shufflevector <3 x float> %i.ed, <3 x float> %i.dl, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ef = fsub reassoc nsz arcp contract afn <3 x float> %i.ec, %i.ee ; 3 uses
  %i.eg = shufflevector <2 x float> %i.de, <2 x float> %i.dk, <3 x i32> <i32 0, i32 3, i32 2>
  %i.eh = shufflevector <2 x float> %i.dh, <2 x float> %i.do, <3 x i32> <i32 1, i32 0, i32 3>
  %i.ei = fmul reassoc nsz arcp contract afn <3 x float> %i.eg, %i.eh
  %i.ej = fmul reassoc nsz arcp contract afn <3 x float> %i.ec, %i.dx
  %i.ek = fsub reassoc nsz arcp contract afn <3 x float> %i.ei, %i.ej ; 4 uses
  %i.el = fmul reassoc nsz arcp contract afn <3 x float> %i.ea, %i.ea
  %i.em = fmul reassoc nsz arcp contract afn <3 x float> %i.ef, %i.ef
  %i.en = fadd reassoc nsz arcp contract afn <3 x float> %i.em, %i.el
  %i.eo = fmul reassoc nsz arcp contract afn <3 x float> %i.ek, %i.ek
  %i.ep = fadd reassoc nsz arcp contract afn <3 x float> %i.en, %i.eo ; 2 uses
  %i.eq = call reassoc nsz arcp contract afn <3 x float> @llvm.sqrt.v3f32(<3 x float> %i.ep)
  %i.er = fcmp reassoc nsz arcp contract afn ogt <3 x float> %i.ep, zeroinitializer
  %i.es = fdiv reassoc nsz arcp contract afn <3 x float> splat (float 1.000000e+00), %i.eq
  %i.et = select <3 x i1> %i.er, <3 x float> %i.es, <3 x float> splat (float 1.000000e+00) ; 2 uses
  %i.eu = shufflevector <3 x float> %i.et, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2>
  %i.ev = shufflevector <3 x float> %i.ea, <3 x float> %i.ef, <8 x i32> <i32 0, i32 3, i32 poison, i32 1, i32 4, i32 poison, i32 2, i32 5>
  %i.ew = shufflevector <3 x float> %i.ek, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <8 x float> %i.ev, <8 x float> %i.ew, <8 x i32> <i32 0, i32 1, i32 8, i32 3, i32 4, i32 9, i32 6, i32 7>
  %i.ey = fmul reassoc nsz arcp contract afn <8 x float> %i.eu, %i.ex
  store <8 x float> %i.ey, ptr %i.b, align 16, !tbaa !15
  %i.ez = fsub reassoc nsz arcp contract afn float %i.dt, %i.dr ; 3 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.de, %i.do ; 3 uses
  %i.fa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fb = fmul reassoc nsz arcp contract afn float %i.du, %i.dr
  %i.fc = fmul reassoc nsz arcp contract afn float %i.ds, %i.dt
  %i.fd = fsub reassoc nsz arcp contract afn float %i.fb, %i.fc ; 3 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %i.ez, %i.ez
  %foldExtExtBinop338 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.ff = extractelement <2 x float> %foldExtExtBinop338, i64 0
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ff, %i.fe
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fd, %i.fd
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fg, %i.fh ; 2 uses
  %i.fj = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fi)
  %i.fk = fcmp reassoc nsz arcp contract afn ogt float %i.fi, 0.000000e+00
  %i.fl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fj
  %i.fm = select reassoc nsz arcp contract afn i1 %i.fk, float %i.fl, float 1.000000e+00 ; 3 uses
  %i.fn = shufflevector <3 x float> %i.et, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.fo = insertelement <2 x float> %i.fn, float %i.fm, i64 1
  %i.fp = shufflevector <3 x float> %i.ek, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.fq = insertelement <2 x float> %i.fp, float %i.ez, i64 1
  %i.fr = fmul reassoc nsz arcp contract afn <2 x float> %i.fo, %i.fq
  store <2 x float> %i.fr, ptr %i.bp, align 16, !tbaa !15
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fm, %i.fa
  store float %i.fs, ptr %i.bq, align 8, !tbaa !15
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fm, %i.fd
  store float %i.ft, ptr %i.br, align 4, !tbaa !15
  %i.fu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.de, splat (float f0x7F7FFFFF)
  %i.fv = select <2 x i1> %i.fu, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %i.de ; 2 uses
  %i.fw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.de, splat (float f0x00800000)
  %i.fx = select <2 x i1> %i.fw, <2 x float> splat (float f0x00800000), <2 x float> %i.de ; 2 uses
  %i.fy = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fv, %i.dh
  %i.fz = select <2 x i1> %i.fy, <2 x float> %i.fv, <2 x float> %i.dh ; 2 uses
  %i.ga = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fx, %i.dh
  %i.gb = select <2 x i1> %i.ga, <2 x float> %i.fx, <2 x float> %i.dh ; 2 uses
  %i.gc = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fz, %i.dk
  %i.gd = select <2 x i1> %i.gc, <2 x float> %i.fz, <2 x float> %i.dk ; 2 uses
  %i.ge = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gb, %i.dk
  %i.gf = select <2 x i1> %i.ge, <2 x float> %i.gb, <2 x float> %i.dk ; 2 uses
  %i.gg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gd, %i.do
  %i.gh = select <2 x i1> %i.gg, <2 x float> %i.gd, <2 x float> %i.do
  %i.gi = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gf, %i.do
  %i.gj = select <2 x i1> %i.gi, <2 x float> %i.gf, <2 x float> %i.do
  %i.gk = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bw, float %i.bu) ; 3 uses
  %sincos.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.gk) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 2 uses
  %i.gl = fsub reassoc nsz arcp contract afn <2 x float> %i.gj, %i.gh ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.gn = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, %i.al ; 3 uses
  %i.go = fmul reassoc nsz arcp contract afn float %cos.i, 1.000000e+01 ; 5 uses
  %i.gp = extractelement <2 x float> %i.gn, i64 0 ; 5 uses
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gp, %i.go
  %i.gr = extractelement <2 x float> %i.gn, i64 1 ; 5 uses
  %i.gs = fmul reassoc nsz arcp contract afn float %sin.i, -1.000000e+01
  %i.gt = fmul reassoc nsz arcp contract afn float %i.go, %i.go
  %i.gu = fmul reassoc nsz arcp contract afn float %sin.i, 1.000000e+01 ; 5 uses
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gr, %i.gu
  %i.gw = fsub reassoc nsz arcp contract afn float %i.gr, %i.gu
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gv, %i.gp
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gq, %i.gr ; 2 uses
  %i.gz = fsub reassoc nsz arcp contract afn float %i.gx, %i.gy ; 3 uses
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gu, %i.gu
  %i.hb = fadd reassoc nsz arcp contract afn float %i.gt, %i.ha ; 2 uses
  %i.hc = fmul reassoc nsz arcp contract afn float %i.gz, %i.gz
  %i.hd = fadd reassoc nsz arcp contract afn float %i.hc, %i.hb ; 2 uses
  %i.he = fcmp reassoc nsz arcp contract afn ogt float %i.hd, 0.000000e+00
  %i.hf = fmul reassoc nsz arcp contract afn float %i.gw, %i.gp
  %i.hg = fsub reassoc nsz arcp contract afn float %i.hf, %i.gy ; 3 uses
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, %i.hg
  %i.hi = fadd reassoc nsz arcp contract afn float %i.hh, %i.hb ; 2 uses
  %i.hj = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hk = insertelement <2 x float> %i.hj, float %i.hi, i64 1
  %i.hl = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.hk)
  %i.hm = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.hl ; 2 uses
  %i.hn = extractelement <2 x float> %i.hm, i64 0
  %i.ho = select reassoc nsz arcp contract afn i1 %i.he, float %i.hn, float 1.000000e+00 ; 3 uses
  %i.hp = fmul reassoc nsz arcp contract afn float %i.gs, %i.ho ; 2 uses
  %i.hq = fmul reassoc nsz arcp contract afn float %i.ho, %i.go ; 2 uses
  %i.hr = fmul reassoc nsz arcp contract afn float %i.ho, %i.gz ; 2 uses
  %i.hs = fcmp reassoc nsz arcp contract afn ogt float %i.hi, 0.000000e+00
  %i.ht = extractelement <2 x float> %i.hm, i64 1
  %i.hu = select reassoc nsz arcp contract afn i1 %i.hs, float %i.ht, float 1.000000e+00 ; 3 uses
  %i.hv = fmul reassoc nsz arcp contract afn float %i.hu, %i.gu ; 2 uses
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hu, %i.go ; 2 uses
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hu, %i.hg ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.l, %.thread24.i
  %indvars.iv.i = phi i64 [ 0, %.thread24.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.014343.i = phi float [ f0x7F7FFFFF, %.thread24.i ], [ %.3.i, %bb.l ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.i ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !15 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !15 ; 4 uses
  %i.id = load float, ptr %i.hy, align 4, !tbaa !15 ; 4 uses
  %i.ie = fmul reassoc nsz arcp contract afn float %i.ia, %i.hr
  %i.if = fmul reassoc nsz arcp contract afn float %i.ic, %i.hq
  %i.ig = fsub reassoc nsz arcp contract afn float %i.ie, %i.if ; 3 uses
  %i.ih = fmul reassoc nsz arcp contract afn float %i.ic, %i.hp
  %i.ii = fmul reassoc nsz arcp contract afn float %i.id, %i.hr
  %i.ij = fsub reassoc nsz arcp contract afn float %i.ih, %i.ii ; 3 uses
  %i.ik = fmul reassoc nsz arcp contract afn float %i.id, %i.hq
  %i.il = fmul reassoc nsz arcp contract afn float %i.ia, %i.hp
  %i.im = fsub reassoc nsz arcp contract afn float %i.ik, %i.il ; 3 uses
  %i.in = fmul reassoc nsz arcp contract afn float %i.ig, %i.ig
  %i.io = fmul reassoc nsz arcp contract afn float %i.ij, %i.ij
  %i.ip = fadd reassoc nsz arcp contract afn float %i.io, %i.in
  %i.iq = fmul reassoc nsz arcp contract afn float %i.im, %i.im
  %i.ir = fadd reassoc nsz arcp contract afn float %i.ip, %i.iq ; 2 uses
  %i.is = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ir)
  %i.it = fcmp reassoc nsz arcp contract afn ogt float %i.ir, 0.000000e+00
  %i.iu = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.is
  %i.iv = select reassoc nsz arcp contract afn i1 %i.it, float %i.iu, float 1.000000e+00 ; 3 uses
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iv, %i.ig ; 2 uses
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iv, %i.ij ; 2 uses
  %i.iy = fmul reassoc nsz arcp contract afn float %i.iv, %i.im ; 4 uses
  %i.iz = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iw)
  %i.ja = fcmp reassoc nsz arcp contract afn uge float %i.iz, 1.000000e-10
  %i.jb = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ix)
  %i.jc = fcmp reassoc nsz arcp contract afn uge float %i.jb, 1.000000e-10
  %or.cond31.not47.i = select i1 %i.ja, i1 true, i1 %i.jc
  %i.jd = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iy)
  %i.je = fcmp reassoc nsz arcp contract afn uge float %i.jd, 1.000000e-10
  %or.cond.i = select i1 %or.cond31.not47.i, i1 true, i1 %i.je
  br i1 %or.cond.i, label %vec3isnull.exit.thread.i, label %bb.l

bb.h:                                             ; preds = %bb.l
  %i.jf = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %.3.i) ; 4 uses
  %i.jg = fmul reassoc nsz arcp contract afn float %i.gk, 2.000000e+00
  %i.jh = call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.jg)
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jh, 2.000000e+00
  %i.jj = fmul reassoc nsz arcp contract afn float %i.jf, %i.jf
  %i.jk = fmul reassoc nsz arcp contract afn float %i.jj, %i.ji
  %i.jl = fmul reassoc nsz arcp contract afn float %i.bu, f0x3C23D70A
  %i.jm = fmul reassoc nsz arcp contract afn float %i.jl, %i.bw
  %i.jn = fcmp reassoc nsz arcp contract afn olt float %i.jk, %i.jm
  br i1 %i.jn, label %bb.o, label %bb.m

vec3isnull.exit.thread.i:                         ; preds = %.preheader.i
  %i.jo = fcmp reassoc nsz arcp contract afn oeq float %i.iy, 0.000000e+00
  br i1 %i.jo, label %bb.j, label %bb.i

bb.i:                                             ; preds = %vec3isnull.exit.thread.i
  %i.jp = fdiv reassoc nsz arcp contract afn float %i.iw, %i.iy
  %i.jq = fdiv reassoc nsz arcp contract afn float %i.ix, %i.iy
  %i.jr = fsub reassoc nsz arcp contract afn float %i.gp, %i.jp ; 2 uses
  %i.js = fmul reassoc nsz arcp contract afn float %i.jr, %i.jr
  %i.jt = fsub reassoc nsz arcp contract afn float %i.gr, %i.jq ; 2 uses
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jt, %i.jt
  %i.jv = fadd reassoc nsz arcp contract afn float %i.js, %i.ju ; 2 uses
  %i.jw = fcmp reassoc nsz arcp contract afn olt float %.014343.i, %i.jv
  %i.jx = select reassoc nsz arcp contract afn i1 %i.jw, float %.014343.i, float %i.jv
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %vec3isnull.exit.thread.i
  %.2.ph.i = phi float [ %.014343.i, %vec3isnull.exit.thread.i ], [ %i.jx, %bb.i ] ; 3 uses
  %i.jy = fmul reassoc nsz arcp contract afn float %i.ia, %i.hx
  %i.jz = fmul reassoc nsz arcp contract afn float %i.ic, %i.hw
  %i.ka = fsub reassoc nsz arcp contract afn float %i.jy, %i.jz ; 3 uses
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ic, %i.hv
  %i.kc = fmul reassoc nsz arcp contract afn float %i.id, %i.hx
  %i.kd = fsub reassoc nsz arcp contract afn float %i.kb, %i.kc ; 3 uses
  %i.ke = fmul reassoc nsz arcp contract afn float %i.id, %i.hw
  %i.kf = fmul reassoc nsz arcp contract afn float %i.ia, %i.hv
  %i.kg = fsub reassoc nsz arcp contract afn float %i.ke, %i.kf ; 3 uses
  %i.kh = fmul reassoc nsz arcp contract afn float %i.ka, %i.ka
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kd, %i.kd
  %i.kj = fadd reassoc nsz arcp contract afn float %i.ki, %i.kh
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kg, %i.kg
  %i.kl = fadd reassoc nsz arcp contract afn float %i.kj, %i.kk ; 2 uses
  %i.km = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.kl)
  %i.kn = fcmp reassoc nsz arcp contract afn ogt float %i.kl, 0.000000e+00
  %i.ko = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.km
  %i.kp = select reassoc nsz arcp contract afn i1 %i.kn, float %i.ko, float 1.000000e+00 ; 3 uses
  %i.kq = fmul reassoc nsz arcp contract afn float %i.kp, %i.ka ; 2 uses
  %i.kr = fmul reassoc nsz arcp contract afn float %i.kp, %i.kd ; 2 uses
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kp, %i.kg ; 4 uses
  %i.kt = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kq)
  %i.ku = fcmp reassoc nsz arcp contract afn uge float %i.kt, 1.000000e-10
  %i.kv = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kr)
  %i.kw = fcmp reassoc nsz arcp contract afn uge float %i.kv, 1.000000e-10
  %or.cond31.not47.1.i = select i1 %i.ku, i1 true, i1 %i.kw
  %i.kx = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ks)
  %i.ky = fcmp reassoc nsz arcp contract afn uge float %i.kx, 1.000000e-10
  %or.cond.1.i = select i1 %or.cond31.not47.1.i, i1 true, i1 %i.ky
  br i1 %or.cond.1.i, label %vec3isnull.exit.thread.1.i, label %bb.l

vec3isnull.exit.thread.1.i:                       ; preds = %bb.j
  %i.kz = fcmp reassoc nsz arcp contract afn oeq float %i.ks, 0.000000e+00
  br i1 %i.kz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %vec3isnull.exit.thread.1.i
  %i.la = fdiv reassoc nsz arcp contract afn float %i.kq, %i.ks
  %i.lb = fdiv reassoc nsz arcp contract afn float %i.kr, %i.ks
  %i.lc = fsub reassoc nsz arcp contract afn float %i.gp, %i.la ; 2 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, %i.lc
  %i.le = fsub reassoc nsz arcp contract afn float %i.gr, %i.lb ; 2 uses
  %i.lf = fmul reassoc nsz arcp contract afn float %i.le, %i.le
  %i.lg = fadd reassoc nsz arcp contract afn float %i.ld, %i.lf ; 2 uses
  %i.lh = fcmp reassoc nsz arcp contract afn olt float %.2.ph.i, %i.lg
  %i.li = select reassoc nsz arcp contract afn i1 %i.lh, float %.2.ph.i, float %i.lg
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %vec3isnull.exit.thread.1.i, %bb.j, %.preheader.i
  %.3.i = phi nsz float [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %.preheader.i ], [ %.2.ph.i, %vec3isnull.exit.thread.1.i ], [ %i.li, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.h, label %.preheader.i

bb.m:                                             ; preds = %bb.h
  %i.lj = fmul reassoc nsz arcp contract afn float %i.jf, %cos.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ll = getelementptr inbounds nuw i8, ptr %.val, i64 356
  %i.lm = fmul reassoc nsz arcp contract afn float %i.jf, %sin.i
  %i.ln = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.lo = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.lp = insertelement <4 x float> %i.lo, float %i.lm, i64 1
  %i.lq = insertelement <4 x float> %i.lp, float %i.lj, i64 3 ; 3 uses
  %i.lr = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ls = fadd reassoc nsz arcp contract afn <4 x float> %i.lq, %i.lr
  %i.lt = fsub reassoc nsz arcp contract afn <4 x float> %i.lq, %i.lr
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> %i.ls, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.lv = fdiv reassoc nsz arcp contract afn <4 x float> %i.lu, %i.gm ; 3 uses
  %i.lw = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.lv, zeroinitializer
  %i.lx = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.lv, splat (float 1.000000e+00)
  %i.ly = select <4 x i1> %i.lw, <4 x float> zeroinitializer, <4 x float> %i.lv
  %i.lz = select <4 x i1> %i.lx, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ly ; 4 uses
  %i.ma = extractelement <4 x float> %i.lz, i64 2 ; 3 uses
  store float %i.ma, ptr %i.lk, align 8, !tbaa !213
  %i.mb = extractelement <4 x float> %i.lz, i64 3 ; 3 uses
  store float %i.mb, ptr %i.ll, align 4, !tbaa !214
  %i.mc = extractelement <4 x float> %i.lz, i64 0 ; 3 uses
  store float %i.mc, ptr %i.ln, align 8, !tbaa !215
  %i.md = getelementptr inbounds nuw i8, ptr %.val, i64 364
  %i.me = extractelement <4 x float> %i.lz, i64 1 ; 3 uses
  store float %i.me, ptr %i.md, align 4, !tbaa !216
  %i.mf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !101
  %i.mg = and i32 %i.mf, 50331648
  %or.cond.not.i = icmp eq i32 %i.mg, 50331648
  br i1 %or.cond.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.mh = fadd reassoc nsz arcp contract afn float %i.ma, %i.mb
  %i.mi = fmul reassoc nsz arcp contract afn float %i.mh, 5.000000e-01
  %i.mj = fpext reassoc nsz arcp contract afn float %i.mi to double
  %i.mk = fadd reassoc nsz arcp contract afn float %i.mc, %i.me
  %i.ml = fmul reassoc nsz arcp contract afn float %i.mk, 5.000000e-01
  %i.mm = fpext reassoc nsz arcp contract afn float %i.ml to double
  %i.mn = fpext reassoc nsz arcp contract afn float %i.gk to double
  %i.mo = fpext reassoc nsz arcp contract afn float %i.ma to double
  %i.mp = fpext reassoc nsz arcp contract afn float %i.mb to double
  %i.mq = fpext reassoc nsz arcp contract afn float %i.mc to double
  %i.mr = fpext reassoc nsz arcp contract afn float %i.me to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.96, double noundef %i.mj, double noundef %i.mm, double noundef %i.mn, double noundef %i.mo, double noundef %i.mp, double noundef %i.mq, double noundef %i.mr, i32 noundef %i.bv, i32 noundef %i.bx) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %crop_adjust.exit

crop_adjust.exit:                                 ; preds = %bb.e, %bb.o
  call void @dt_control_queue_redraw_center() #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.cj

bb.p:                                             ; preds = %bb.d
  %i.ms = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 16 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !179
  %.not258 = icmp eq ptr %i.mt, null
  br i1 %.not258, label %bb.cj, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.mu = getelementptr inbounds nuw i8, ptr %i.i, i64 376
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !217
  %.not259 = icmp eq i32 %i.mv, 0
  br i1 %.not259, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.mw = load float, ptr %i.c, align 4, !tbaa !15
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mw, %1
  store float %i.mx, ptr %i.f, align 8, !tbaa !15
  %i.my = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.mz = load float, ptr %i.d, align 4, !tbaa !15
  %i.na = fmul reassoc nsz arcp contract afn float %i.mz, %2
  store float %i.na, ptr %i.my, align 4, !tbaa !15
  %i.nb = load ptr, ptr %i.n, align 8, !tbaa !126 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 96
  %i.nd = load ptr, ptr %i.nc, align 16, !tbaa !143
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.nf = load i32, ptr %i.ne, align 16, !tbaa !144
  %i.ng = sitofp reassoc nsz arcp contract afn i32 %i.nf to double
  %i.nh = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.nb, ptr noundef %i.nd, double noundef %i.ng, i32 noundef 1, ptr noundef nonnull %i.f, i64 noundef 1) #34
  %.not270 = icmp eq i32 %i.nh, 0
  br i1 %.not270, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ni = getelementptr inbounds nuw i8, ptr %i.i, i64 372
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !199 ; 4 uses
  %i.nk = icmp sgt i32 %i.nj, -1
  br i1 %i.nk, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.nl = lshr i32 %i.nj, 1
  %i.nm = and i32 %i.nj, 1
  %i.nn = icmp eq i32 %i.nm, 0
  %i.no = load float, ptr %i.f, align 8, !tbaa !15 ; 4 uses
  %i.np = load ptr, ptr %i.ms, align 8, !tbaa !179 ; 2 uses
  %i.nq = zext nneg i32 %i.nl to i64              ; 2 uses
  %i.nr = getelementptr inbounds nuw [64 x i8], ptr %i.np, i64 %i.nq ; 8 uses
  br i1 %i.nn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %i.no, ptr %i.nr, align 16, !tbaa !15
  %i.ns = load float, ptr %i.my, align 4, !tbaa !15 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  store float %i.ns, ptr %i.nt, align 4, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %.pre = load float, ptr %.phi.trans.insert, align 16, !tbaa !15
  %.phi.trans.insert314 = getelementptr inbounds nuw i8, ptr %i.nr, i64 12
  %.pre315 = load float, ptr %.phi.trans.insert314, align 4, !tbaa !15
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 12
  store float %i.no, ptr %i.nu, align 4, !tbaa !15
  %i.nv = load float, ptr %i.my, align 4, !tbaa !15 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  store float %i.nv, ptr %i.nw, align 4, !tbaa !15
  %.phi.trans.insert312 = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %.pre313 = load float, ptr %.phi.trans.insert312, align 4, !tbaa !15
  %.pre316 = load float, ptr %i.nr, align 16, !tbaa !15
  br label %bb.w
end_hunk_3
begin_hunk_4_@get_p:bb.a
  %.not57 = icmp eq i32 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 860
  %spec.select = select i1 %.not57, ptr %i.bb, ptr null
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.a, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.ae ], [ %i.az, %bb.ad ], [ %i.ax, %bb.ab ], [ %i.av, %bb.z ], [ %i.at, %bb.x ], [ %i.ar, %bb.w ], [ %i.al, %bb.v ], [ %i.af, %bb.u ], [ %i.z, %bb.t ], [ %i.s, %bb.s ], [ %i.q, %bb.q ], [ %i.o, %bb.o ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.28) #34
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.34) #34
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.35) #34
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.36) #34
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.39) #34
  %.not23 = icmp eq i32 %i.e, 0
  br i1 %.not23, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.41) #34
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.42) #34
  %.not25 = icmp eq i32 %i.g, 0
  br i1 %.not25, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.44) #34
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.37) #34
  %.not27 = icmp eq i32 %i.i, 0
  br i1 %.not27, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.30) #34
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.87) #34
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.88) #34
  %.not30 = icmp eq i32 %i.l, 0
  br i1 %.not30, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.89) #34
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.90) #34
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.91) #34
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.92) #34
  %.not34 = icmp eq i32 %i.p, 0
  br i1 %.not34, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.93) #34
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.94) #34
  %.not36 = icmp eq i32 %i.r, 0
  br i1 %.not36, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.95) #34
  %.not37 = icmp eq i32 %i.s, 0
  %. = select i1 %.not37, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), ptr null
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ %., %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

declare i32 @mat3inv(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

declare ptr @dt_dev_distort_get_iop_pipe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @dt_iop_module_is_skipped(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #11

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @simplex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, double noundef nofpclass(nan inf zero sub nnorm) %3, double noundef nofpclass(nan inf zero sub nnorm) %4, i32 noundef range(i32 100, 401) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef nonnull %7) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = add i32 %2, 1                            ; 21 uses
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #33 ; 22 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.d) #33 ; 56 uses
  %i.g = sext i32 %2 to i64
  %i.h = shl nsw i64 %i.g, 3                      ; 5 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #33 ; 40 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 3 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.h) #33 ; 19 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.h) #33 ; 26 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 2 uses
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.h) #33 ; 23 uses
  %.not417 = icmp slt i32 %2, 0                   ; 6 uses
  br i1 %.not417, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.h) #33
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.p, ptr %i.q, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.r = sitofp reassoc nsz arcp contract afn i32 %i.b to double ; 2 uses
  %i.s = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.r)
  %i.t = fadd reassoc nsz arcp contract afn double %i.s, -1.000000e+00 ; 2 uses
  %i.u = sitofp reassoc nsz arcp contract afn i32 %2 to double ; 6 uses
  %i.v = fadd reassoc nsz arcp contract afn double %i.t, %i.u
  %i.w = fmul reassoc nsz arcp contract afn double %i.u, f0x3FF6A09E667F3BCD
  %i.x = insertelement <2 x double> poison, double %i.v, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.t, i64 1
  %i.z = insertelement <2 x double> poison, double %4, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul reassoc nsz arcp contract afn <2 x double> %i.y, %i.aa
  %i.ac = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv reassoc nsz arcp contract afn <2 x double> %i.ab, %i.ad ; 2 uses
  %i.af = icmp slt i32 %2, 1                      ; 11 uses
  br i1 %i.af, label %._crit_edge427, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !13  ; 12 uses
  %wide.trip.count530 = zext nneg i32 %2 to i64   ; 10 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = sub i64 %i.a, %i.ah
  %diff.check = icmp ugt i64 %i.ai, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check708 = icmp ult i32 %2, 16
  br i1 %min.iters.check708, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %wide.trip.count530, 12
  %n.vec = and i64 %wide.trip.count530, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %wide.load = load <4 x double>, ptr %i.ak, align 8, !tbaa !166
  %wide.load709 = load <4 x double>, ptr %i.al, align 8, !tbaa !166
  %wide.load710 = load <4 x double>, ptr %i.am, align 8, !tbaa !166
  %wide.load711 = load <4 x double>, ptr %i.an, align 8, !tbaa !166
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  store <4 x double> %wide.load, ptr %i.ao, align 8, !tbaa !166
  store <4 x double> %wide.load709, ptr %i.ap, align 8, !tbaa !166
  store <4 x double> %wide.load710, ptr %i.aq, align 8, !tbaa !166
  store <4 x double> %wide.load711, ptr %i.ar, align 8, !tbaa !166
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !449

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count530
  br i1 %cmp.n, label %.preheader415.us.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !269

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec712 = and i64 %wide.trip.count530, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index713 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next715, %vec.epilog.vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index713
  %wide.load714 = load <4 x double>, ptr %i.at, align 8, !tbaa !166
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index713
  store <4 x double> %wide.load714, ptr %i.au, align 8, !tbaa !166
  %index.next715 = add nuw i64 %index713, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next715, %n.vec712
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !450

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n716 = icmp eq i64 %n.vec712, %wide.trip.count530
  br i1 %cmp.n716, label %.preheader415.us.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv527.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec712, %vec.epilog.middle.block ] ; 4 uses
  %i.aw = sub nsw i64 %wide.trip.count530, %indvars.iv527.ph
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv527.prol = phi i64 [ %indvars.iv.next528.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv527.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv527.prol
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !166
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv527.prol
  store double %i.ay, ptr %i.az, align 8, !tbaa !166
  %indvars.iv.next528.prol = add nuw nsw i64 %indvars.iv527.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !451

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv527.unr = phi i64 [ %indvars.iv527.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next528.prol, %vec.epilog.scalar.ph.prol ]
  %i.ba = sub nsw i64 %indvars.iv527.ph, %wide.trip.count530
  %i.bb = icmp ugt i64 %i.ba, -8
  br i1 %i.bb, label %.preheader415.us.preheader, label %vec.epilog.scalar.ph

.preheader415.us.preheader:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %wide.trip.count540 = zext i32 %i.b to i64
  %i.bc = extractelement <2 x double> %i.ae, i64 0 ; 5 uses
  %i.bd = extractelement <2 x double> %i.ae, i64 1 ; 5 uses
  %xtraiter1218 = and i64 %wide.trip.count530, 3  ; 3 uses
  %i.be = add nsw i32 %2, -1
  %i.bf = icmp ult i32 %i.be, 3
  %unroll_iter = and i64 %wide.trip.count530, 2147483644
  %lcmp.mod1219.not = icmp eq i64 %xtraiter1218, 0
  %lcmp.mod1220 = icmp ne i64 %xtraiter1218, 0
  br label %.preheader415.us

.preheader415.us:                                 ; preds = %.preheader415.us.preheader, %._crit_edge424.us
  %indvars.iv537 = phi i64 [ 1, %.preheader415.us.preheader ], [ %indvars.iv.next538, %._crit_edge424.us ] ; 3 uses
  %i.bg = add nsw i64 %indvars.iv537, -1          ; 11 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv537 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bg ; 5 uses
  br i1 %i.bf, label %.epil.preheader, label %.preheader415.us.new

.preheader415.us.new:                             ; preds = %.preheader415.us
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !13 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %.preheader415.us.new
  %indvars.iv532 = phi i64 [ 0, %.preheader415.us.new ], [ %indvars.iv.next533.3, %bb.n ] ; 7 uses
  %niter = phi i64 [ 0, %.preheader415.us.new ], [ %niter.next.3, %bb.n ]
  %i.bk = icmp eq i64 %i.bg, %indvars.iv532
  br i1 %i.bk, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv532
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !166
  %i.bn = fadd reassoc nsz arcp contract afn double %i.bm, %i.bd
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bo = load double, ptr %i.bi, align 8, !tbaa !166
  %i.bp = fadd reassoc nsz arcp contract afn double %i.bo, %i.bc
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink702 = phi i64 [ %i.bg, %bb.d ], [ %indvars.iv532, %bb.c ]
  %.sink699 = phi double [ %i.bp, %bb.d ], [ %i.bn, %bb.c ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sink702
  store double %.sink699, ptr %i.bq, align 8, !tbaa !166
  %indvars.iv.next533 = or disjoint i64 %indvars.iv532, 1 ; 3 uses
  %i.br = icmp eq i64 %i.bg, %indvars.iv.next533
  br i1 %i.br, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next533
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !166
  %i.bu = fadd reassoc nsz arcp contract afn double %i.bt, %i.bd
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bv = load double, ptr %i.bi, align 8, !tbaa !166
  %i.bw = fadd reassoc nsz arcp contract afn double %i.bv, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink702.1 = phi i64 [ %i.bg, %bb.g ], [ %indvars.iv.next533, %bb.f ]
  %.sink699.1 = phi double [ %i.bw, %bb.g ], [ %i.bu, %bb.f ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sink702.1
  store double %.sink699.1, ptr %i.bx, align 8, !tbaa !166
  %indvars.iv.next533.1 = or disjoint i64 %indvars.iv532, 2 ; 3 uses
  %i.by = icmp eq i64 %i.bg, %indvars.iv.next533.1
  br i1 %i.by, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next533.1
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !166
  %i.cb = fadd reassoc nsz arcp contract afn double %i.ca, %i.bd
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cc = load double, ptr %i.bi, align 8, !tbaa !166
  %i.cd = fadd reassoc nsz arcp contract afn double %i.cc, %i.bc
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink702.2 = phi i64 [ %i.bg, %bb.j ], [ %indvars.iv.next533.1, %bb.i ]
  %.sink699.2 = phi double [ %i.cd, %bb.j ], [ %i.cb, %bb.i ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sink702.2
  store double %.sink699.2, ptr %i.ce, align 8, !tbaa !166
  %indvars.iv.next533.2 = or disjoint i64 %indvars.iv532, 3 ; 3 uses
  %i.cf = icmp eq i64 %i.bg, %indvars.iv.next533.2
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next533.2
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !166
  %i.ci = fadd reassoc nsz arcp contract afn double %i.ch, %i.bd
  br label %bb.n

bb.m:                                             ; preds = %bb.k
end_hunk_4
begin_hunk_5_@do_fit:bb.a
nmsfit.exit.thread25:                             ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %nmsfit.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.fh = call fastcc i32 @simplex(ptr noundef nonnull @model_fitness, ptr noundef %i.a, i32 noundef %i.eo, double noundef 1.000000e-03, double noundef 1.000000e+00, i32 noundef 400, ptr noundef null, ptr noundef %3)
  %i.fi = icmp sgt i32 %i.fh, 399
  br i1 %i.fi, label %nmsfit.exit.thread27, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fj = load float, ptr %i.ao, align 4, !tbaa !278 ; 2 uses
  %i.fk = fcmp ord float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fl = load double, ptr %i.a, align 16, !tbaa !166
  %i.fm = load float, ptr %i.at, align 4, !tbaa !282 ; 2 uses
  %i.fn = fneg reassoc nsz arcp contract afn float %i.fm
  %i.fo = fpext reassoc nsz arcp contract afn float %i.fn to double ; 2 uses
  %i.fp = fpext reassoc nsz arcp contract afn float %i.fm to double
  %i.fq = fmul reassoc nsz arcp contract afn double %i.fl, 5.000000e-01
  %i.fr = call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.fq)
  %i.fs = fmul reassoc nsz arcp contract afn double %i.fr, 5.000000e-01
  %i.ft = fadd reassoc nsz arcp contract afn double %i.fs, 5.000000e-01
  %i.fu = fsub reassoc nsz arcp contract afn double %i.fp, %i.fo
  %i.fv = fmul reassoc nsz arcp contract afn double %i.ft, %i.fu
  %i.fw = fadd reassoc nsz arcp contract afn double %i.fv, %i.fo
  %i.fx = fptrunc reassoc nsz arcp contract afn double %i.fw to float
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3.i = phi i32 [ 1, %bb.ai ], [ 0, %bb.ah ]    ; 3 uses
  %i.fy = phi float [ %i.fx, %bb.ai ], [ %i.fj, %bb.ah ] ; 2 uses
  store float %i.fy, ptr %i.ao, align 4, !tbaa !278
  %i.fz = load float, ptr %i.ap, align 8, !tbaa !279 ; 2 uses
  %i.ga = fcmp ord float %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = add nuw nsw i32 %.3.i, 1
  %i.gc = zext nneg i32 %.3.i to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gc
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !166
  %i.gf = load float, ptr %i.au, align 8, !tbaa !283 ; 2 uses
  %i.gg = fneg reassoc nsz arcp contract afn float %i.gf
  %i.gh = fpext reassoc nsz arcp contract afn float %i.gg to double ; 2 uses
  %i.gi = fpext reassoc nsz arcp contract afn float %i.gf to double
  %i.gj = fmul reassoc nsz arcp contract afn double %i.ge, 5.000000e-01
  %i.gk = call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.gj)
  %i.gl = fmul reassoc nsz arcp contract afn double %i.gk, 5.000000e-01
  %i.gm = fadd reassoc nsz arcp contract afn double %i.gl, 5.000000e-01
  %i.gn = fsub reassoc nsz arcp contract afn double %i.gi, %i.gh
  %i.go = fmul reassoc nsz arcp contract afn double %i.gm, %i.gn
  %i.gp = fadd reassoc nsz arcp contract afn double %i.go, %i.gh
  %i.gq = fptrunc reassoc nsz arcp contract afn double %i.gp to float
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.4.i = phi i32 [ %i.gb, %bb.ak ], [ %.3.i, %bb.aj ] ; 3 uses
  %i.gr = phi float [ %i.gq, %bb.ak ], [ %i.fz, %bb.aj ] ; 2 uses
  store float %i.gr, ptr %i.ap, align 8, !tbaa !279
  %i.gs = load float, ptr %i.aq, align 4, !tbaa !280 ; 2 uses
  %i.gt = fcmp ord float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gu = add nuw nsw i32 %.4.i, 1
  %i.gv = zext nneg i32 %.4.i to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !166
  %i.gy = load float, ptr %i.av, align 4, !tbaa !284 ; 2 uses
  %i.gz = fneg reassoc nsz arcp contract afn float %i.gy
  %i.ha = fpext reassoc nsz arcp contract afn float %i.gz to double ; 2 uses
  %i.hb = fpext reassoc nsz arcp contract afn float %i.gy to double
  %i.hc = fmul reassoc nsz arcp contract afn double %i.gx, 5.000000e-01
  %i.hd = call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.hc)
  %i.he = fmul reassoc nsz arcp contract afn double %i.hd, 5.000000e-01
  %i.hf = fadd reassoc nsz arcp contract afn double %i.he, 5.000000e-01
  %i.hg = fsub reassoc nsz arcp contract afn double %i.hb, %i.ha
  %i.hh = fmul reassoc nsz arcp contract afn double %i.hf, %i.hg
  %i.hi = fadd reassoc nsz arcp contract afn double %i.hh, %i.ha
  %i.hj = fptrunc reassoc nsz arcp contract afn double %i.hi to float
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.5.i = phi i32 [ %i.gu, %bb.am ], [ %.4.i, %bb.al ]
  %i.hk = phi float [ %i.hj, %bb.am ], [ %i.gs, %bb.al ] ; 2 uses
  store float %i.hk, ptr %i.aq, align 4, !tbaa !280
  %i.hl = load float, ptr %i.ar, align 8, !tbaa !281 ; 2 uses
  %i.hm = fcmp ord float %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hn = zext nneg i32 %.5.i to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !166
  %i.hq = load float, ptr %i.aw, align 8, !tbaa !285 ; 2 uses
  %i.hr = fneg reassoc nsz arcp contract afn float %i.hq
  %i.hs = fpext reassoc nsz arcp contract afn float %i.hr to double ; 2 uses
  %i.ht = fpext reassoc nsz arcp contract afn float %i.hq to double
  %i.hu = fmul reassoc nsz arcp contract afn double %i.hp, 5.000000e-01
  %i.hv = call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.hu)
  %i.hw = fmul reassoc nsz arcp contract afn double %i.hv, 5.000000e-01
  %i.hx = fadd reassoc nsz arcp contract afn double %i.hw, 5.000000e-01
  %i.hy = fsub reassoc nsz arcp contract afn double %i.ht, %i.hs
  %i.hz = fmul reassoc nsz arcp contract afn double %i.hx, %i.hy
  %i.ia = fadd reassoc nsz arcp contract afn double %i.hz, %i.hs
  %i.ib = fptrunc reassoc nsz arcp contract afn double %i.ia to float
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ic = phi float [ %i.ib, %bb.ao ], [ %i.hl, %bb.an ] ; 2 uses
  store float %i.ic, ptr %i.ar, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.id = load float, ptr %i.al, align 8, !tbaa !273
  %i.ie = load float, ptr %i.ak, align 4, !tbaa !274
  %i.if = load float, ptr %i.an, align 8, !tbaa !275
  %i.ig = load i32, ptr %i.r, align 4, !tbaa !286
  %i.ih = load i32, ptr %i.s, align 8, !tbaa !287
  call fastcc void @_homography(ptr noundef %i.b, float noundef %i.fy, float noundef %i.gr, float noundef %i.hk, float noundef %i.ic, float noundef %i.id, float noundef %i.ie, float noundef %i.if, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef 0)
  %i.ii = load i32, ptr %i.s, align 8, !tbaa !287 ; 5 uses
  %invariant.op17.i = add nsw i32 %i.ii, -1       ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !286 ; 4 uses
  br i1 %i.ij, label %.preheader.lr.ph.i, label %._crit_edge24.i

.preheader.lr.ph.i:                               ; preds = %bb.ap
  %invariant.op.i = add nsw i32 %.pre.i, -1
  %i.ik = icmp sgt i32 %.pre.i, 0
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.im = load <4 x float>, ptr %i.b, align 64    ; 3 uses
  %i.in = load <4 x float>, ptr %i.il, align 16   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ip = load float, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ir = load float, ptr %i.iq, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.it = load float, ptr %i.is, align 32
  br i1 %i.ik, label %.preheader.us.i.preheader, label %.preheader.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.i
  %i.iu = shufflevector <4 x float> %i.im, <4 x float> %i.in, <2 x i32> <i32 1, i32 4>
  %i.iv = shufflevector <4 x float> %i.im, <4 x float> %i.in, <2 x i32> <i32 2, i32 5>
  %i.iw = shufflevector <4 x float> %i.im, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us.i
  %.07823.us.i = phi i32 [ %.reass18.us.i, %._crit_edge.us.i ], [ 0, %.preheader.us.i.preheader ] ; 2 uses
  %i.ix = phi <2 x float> [ %i.jt, %._crit_edge.us.i ], [ splat (float f0xFF7FFFFF), %.preheader.us.i.preheader ]
  %i.iy = phi <2 x float> [ %i.jr, %._crit_edge.us.i ], [ splat (float f0x7F7FFFFF), %.preheader.us.i.preheader ]
  %i.iz = sitofp reassoc nsz arcp contract afn i32 %.07823.us.i to float ; 2 uses
  %i.ja = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul reassoc nsz arcp contract afn <2 x float> %i.iu, %i.jb
  %i.jd = fadd reassoc nsz arcp contract afn <2 x float> %i.iv, %i.jc
  %i.je = fmul reassoc nsz arcp contract afn float %i.ir, %i.iz
  %invariant.op15.us.i = fadd reassoc nsz arcp contract afn float %i.it, %i.je
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader.us.i
  %.07.us.i = phi i32 [ 0, %.preheader.us.i ], [ %.reass.us.i, %bb.aq ] ; 2 uses
  %i.jf = phi <2 x float> [ %i.ix, %.preheader.us.i ], [ %i.jt, %bb.aq ] ; 2 uses
  %i.jg = phi <2 x float> [ %i.iy, %.preheader.us.i ], [ %i.jr, %bb.aq ] ; 2 uses
  %i.jh = sitofp reassoc nsz arcp contract afn i32 %.07.us.i to float ; 2 uses
  %i.ji = fmul reassoc nsz arcp contract afn float %i.ip, %i.jh
  %.reass16.us.i = fadd reassoc nsz arcp contract afn float %i.ji, %invariant.op15.us.i
  %i.jj = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul reassoc nsz arcp contract afn <2 x float> %i.iw, %i.jk
  %i.jm = fadd reassoc nsz arcp contract afn <2 x float> %i.jl, %i.jd
  %i.jn = insertelement <2 x float> poison, float %.reass16.us.i, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fdiv reassoc nsz arcp contract afn <2 x float> %i.jm, %i.jo ; 4 uses
  %i.jq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.jg, %i.jp
  %i.jr = select <2 x i1> %i.jq, <2 x float> %i.jg, <2 x float> %i.jp ; 3 uses
  %i.js = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.jf, %i.jp
  %i.jt = select <2 x i1> %i.js, <2 x float> %i.jf, <2 x float> %i.jp ; 3 uses
  %.reass.us.i = add i32 %invariant.op.i, %.07.us.i ; 2 uses
  %i.ju = icmp slt i32 %.reass.us.i, %.pre.i
  br i1 %i.ju, label %bb.aq, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %bb.aq
  %.reass18.us.i = add i32 %.07823.us.i, %invariant.op17.i ; 2 uses
  %i.jv = icmp slt i32 %.reass18.us.i, %i.ii
  br i1 %i.jv, label %.preheader.us.i, label %._crit_edge24.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %.preheader.i
  %.07823.i = phi i32 [ %.reass18.i, %.preheader.i ], [ 0, %.preheader.lr.ph.i ]
  %.reass18.i = add i32 %.07823.i, %invariant.op17.i ; 2 uses
  %i.jw = icmp slt i32 %.reass18.i, %i.ii
  br i1 %i.jw, label %.preheader.i, label %._crit_edge24.i

._crit_edge24.i:                                  ; preds = %.preheader.i, %._crit_edge.us.i, %bb.ap
  %i.jx = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.ap ], [ %i.jt, %._crit_edge.us.i ], [ splat (float f0xFF7FFFFF), %.preheader.i ]
  %i.jy = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.ap ], [ %i.jr, %._crit_edge.us.i ], [ splat (float f0x7F7FFFFF), %.preheader.i ]
  %i.jz = fsub reassoc nsz arcp contract afn <2 x float> %i.jx, %i.jy
  %i.ka = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.jz)
  %i.kb = sitofp reassoc nsz arcp contract afn i32 %.pre.i to float
  %i.kc = sitofp reassoc nsz arcp contract afn i32 %i.ii to float
  %i.kd = fmul reassoc nsz arcp contract afn float %i.kc, 4.000000e+00
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %i.kb
  %i.kf = fcmp reassoc nsz arcp contract afn ogt float %i.ka, %i.ke
  br i1 %i.kf, label %nmsfit.exit.thread29, label %nmsfit.exit

nmsfit.exit.thread29:                             ; preds = %._crit_edge24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %nmsfit.exit.thread27

nmsfit.exit:                                      ; preds = %._crit_edge24.i
  %i.kg = load <4 x float>, ptr %i.ao, align 4, !tbaa !15
  store <4 x float> %i.kg, ptr %1, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.val.pre = load ptr, ptr %i.c, align 16, !tbaa !125
  br label %nmsfit.exit.thread23

nmsfit.exit.thread:                               ; preds = %bb.d, %nmsfit.exit.thread25
  store i32 0, ptr %i.e, align 4, !tbaa !178
  %i.kh = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.103, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.kh, i32 noundef 2) #34
  br label %bb.ar

nmsfit.exit.thread27:                             ; preds = %bb.ag, %nmsfit.exit.thread29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  store i32 0, ptr %i.e, align 4, !tbaa !178
  %i.ki = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.104, i32 noundef 5) #34
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ki) #34
  br label %bb.ar

nmsfit.exit.thread23:                             ; preds = %bb.e, %nmsfit.exit
  %.val = phi ptr [ %.val2154, %bb.e ], [ %.val.pre, %nmsfit.exit ]
  store i32 0, ptr %i.e, align 4, !tbaa !178
  call fastcc void @do_crop(ptr %.val, ptr noundef %1)
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !235
  call void @dt_dev_invalidate_all(ptr noundef %i.kj) #34
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !159
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 104
  %i.km = atomicrmw add ptr %i.kl, i32 1 seq_cst, align 4 ; 0 uses
  %i.kn = load ptr, ptr %i.d, align 8, !tbaa !234
  %i.ko = load float, ptr %1, align 4, !tbaa !209
  call void @dt_bauhaus_slider_set(ptr noundef %i.kn, float noundef %i.ko) #34
  %i.kp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !253
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !210
  call void @dt_bauhaus_slider_set(ptr noundef %i.kq, float noundef %i.ks) #34
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !254
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !211
  call void @dt_bauhaus_slider_set(ptr noundef %i.ku, float noundef %i.kw) #34
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !262
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.la = load float, ptr %i.kz, align 4, !tbaa !212
  call void @dt_bauhaus_slider_set(ptr noundef %i.ky, float noundef %i.la) #34
  %i.lb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !159
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 104
  %i.ld = atomicrmw add ptr %i.lc, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %nmsfit.exit.thread, %nmsfit.exit.thread27, %nmsfit.exit.thread23, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_do_get_structure_auto(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.rect, align 8               ; 46 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %3 = alloca %struct.rect, align 16              ; 50 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !125 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 148 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !178
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.gs

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.f, align 4, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 5 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !152
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.n) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !143
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.r) #34
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !126
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.s) #34
  br label %_remove_outliers.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.d, align 16, !tbaa !125 ; 11 uses
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.y = load <4 x i32>, ptr %i.x, align 8, !tbaa !17 ; 5 uses
  %i.z = extractelement <4 x i32> %i.y, i64 1     ; 16 uses
  %i.aa = extractelement <4 x i32> %i.y, i64 0    ; 16 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !155 ; 2 uses
  %i.ad = sext i32 %i.aa to i64                   ; 4 uses
  %i.ae = sext i32 %i.z to i64                    ; 4 uses
  %i.af = shl nsw i64 %i.ad, 4
  %i.ag = mul i64 %i.af, %i.ae
  %i.ah = tail call ptr @dt_alloc_aligned(i64 noundef %i.ag) #34 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %.not54.i = icmp eq ptr %i.ah, null
  br i1 %.not54.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  br label %bb.ge

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !152
  %i.ak = shl nsw i64 %i.ad, 2
  %i.al = mul i64 %i.ak, %i.ae                    ; 6 uses
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.ah, ptr noundef %i.aj, i64 noundef %i.al) #34
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !180
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 220 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !230
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 224 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !232
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !179
  tail call void @free(ptr noundef %i.ar) #34
  store ptr null, ptr %i.aq, align 8, !tbaa !179
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !126
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.av = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.au) #34
  %.not.i.i = icmp eq i32 %i.av, 0
  %.not.i.i.i = icmp eq i64 %i.al, 0              ; 3 uses
  %or.cond.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond.i, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.f
  %i.aw = add i64 %i.al, -4                       ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %i.az = icmp ult i64 %i.aw, 12
  br i1 %i.az, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %i.ay, 9223372036854775804
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.01214.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.cn, %.preheader.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 4 uses
  %i.bb = load float, ptr %i.ba, align 64, !tbaa !15
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bb, float 4.500000e-01)
  store float %i.bc, ptr %i.ba, align 64, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !15
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.be, float 4.500000e-01)
  store float %i.bf, ptr %i.bd, align 4, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !15
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bh, float 4.500000e-01)
  store float %i.bi, ptr %i.bg, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 16, !tbaa !15
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bl, float 4.500000e-01)
  store float %i.bm, ptr %i.bk, align 16, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 20 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !15
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bo, float 4.500000e-01)
  store float %i.bp, ptr %i.bn, align 4, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !15
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.br, float 4.500000e-01)
  store float %i.bs, ptr %i.bq, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 32, !tbaa !15
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float 4.500000e-01)
  store float %i.bw, ptr %i.bu, align 32, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 36 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !15
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.by, float 4.500000e-01)
  store float %i.bz, ptr %i.bx, align 4, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !15
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float 4.500000e-01)
  store float %i.cc, ptr %i.ca, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !15
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cf, float 4.500000e-01)
  store float %i.cg, ptr %i.ce, align 16, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 52 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !15
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ci, float 4.500000e-01)
  store float %i.cj, ptr %i.ch, align 4, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !15
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cl, float 4.500000e-01)
  store float %i.cm, ptr %i.ck, align 8, !tbaa !15
  %i.cn = add nuw i64 %.01214.i.i.i, 16           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %gamma_correct.exit.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i

gamma_correct.exit.i.i.loopexit.unr-lcssa:        ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.01214.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.cn, %gamma_correct.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod251 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod251)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.01214.i.i.i.epil = phi i64 [ %i.cx, %.preheader.i.i.i.epil ], [ %.01214.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i.epil ; 4 uses
  %i.cp = load float, ptr %i.co, align 16, !tbaa !15
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cp, float 4.500000e-01)
  store float %i.cq, ptr %i.co, align 16, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !15
  %i.ct = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cs, float 4.500000e-01)
  store float %i.ct, ptr %i.cr, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !15
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cv, float 4.500000e-01)
  store float %i.cw, ptr %i.cu, align 8, !tbaa !15
  %i.cx = add nuw i64 %.01214.i.i.i.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil, !llvm.loop !520

gamma_correct.exit.i.i:                           ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.f
  %i.cy = and i32 %1, 2
  %.not185.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not185.i.i, label %detail_enhance.exit.i.i, label %bb.g

bb.g:                                             ; preds = %gamma_correct.exit.i.i
  %i.cz = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.z)
  %i.da = sitofp i32 %i.cz to float
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, 2.000000e-02
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %dt_XYZ_to_Lab.exit.i.i.i, %bb.g
  %i.dc = tail call ptr @dt_bilateral_init(i32 noundef %i.aa, i32 noundef %i.z, float noundef %i.db, float noundef 5.000000e+00) #34 ; 5 uses
  %.not.i191.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i191.i.i, label %bb.t, label %bb.s

.lr.ph.i.i.i:                                     ; preds = %bb.g, %dt_XYZ_to_Lab.exit.i.i.i
  %.02943.i.i.i = phi i64 [ %i.fg, %dt_XYZ_to_Lab.exit.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.02943.i.i.i ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load float, ptr %i.df, align 8, !tbaa !15 ; 4 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, f0x3E1283AB
  %i.di = fmul reassoc nsz arcp contract afn float %i.dg, 6.061690e-02
  %i.dj = fmul reassoc nsz arcp contract afn float %i.dg, f0x3F36D410
  %i.dk = load float, ptr %i.dd, align 16, !tbaa !15
  %i.dl = load float, ptr %i.de, align 4, !tbaa !15
  %i.dm = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = fmul reassoc arcp contract afn <4 x float> %i.dn, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %i.dp = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul reassoc arcp contract afn <4 x float> %i.dq, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.ds = fadd reassoc nsz arcp contract afn <4 x float> %i.dr, %i.do ; 4 uses
  %i.dt = extractelement <4 x float> %i.ds, i64 0
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, %i.dh ; 2 uses
  %i.dv = extractelement <4 x float> %i.ds, i64 1
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, %i.di ; 3 uses
  %i.dx = extractelement <4 x float> %i.ds, i64 2
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, %i.dj ; 2 uses
  %i.dz = extractelement <4 x float> %i.ds, i64 3
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.dg
  %i.eb = fmul reassoc nsz arcp contract afn float %i.du, f0x3F84C0A6 ; 2 uses
  %i.ec = fcmp reassoc nsz arcp contract afn ogt float %i.eb, f0x3C111AA7
  br i1 %i.ec, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ed = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.eb) #35
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ee = fmul reassoc nsz arcp contract afn float %i.du, f0x410137F7
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, f0x3E0D3DCB
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eg = phi reassoc nsz arcp contract afn float [ %i.ed, %bb.h ], [ %i.ef, %bb.i ]
  %i.eh = fcmp reassoc nsz arcp contract afn ogt float %i.dw, f0x3C111AA7
  br i1 %i.eh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ei = fmul reassoc nsz arcp contract afn float %i.dw, f0x40F92F69
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, f0x3E0D3DCB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ek = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.dw) #35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.el = phi reassoc nsz arcp contract afn float [ %i.ek, %bb.l ], [ %i.ej, %bb.k ] ; 3 uses
  %i.em = fmul reassoc nsz arcp contract afn float %i.dy, f0x3F9B2B9B ; 2 uses
  %i.en = fcmp reassoc nsz arcp contract afn ogt float %i.em, f0x3C111AA7
  br i1 %i.en, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eo = fmul reassoc nsz arcp contract afn float %i.dy, f0x41170A26
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, f0x3E0D3DCB
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.eq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.em) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.er = phi reassoc nsz arcp contract afn float [ %i.eq, %bb.o ], [ %i.ep, %bb.n ]
  %i.es = fmul reassoc nsz arcp contract afn float %i.ea, 0.000000e+00 ; 3 uses
  %i.et = fcmp reassoc nsz arcp contract afn ogt float %i.es, f0x3C111AA7
  br i1 %i.et, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = fadd reassoc nsz arcp contract afn float %i.es, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ev = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.es) #35
  br label %dt_XYZ_to_Lab.exit.i.i.i

dt_XYZ_to_Lab.exit.i.i.i:                         ; preds = %bb.r, %bb.q
  %i.ew = phi reassoc nsz arcp contract afn float [ %i.ev, %bb.r ], [ %i.eu, %bb.q ]
  %i.ex = fmul reassoc nsz arcp contract afn float %i.el, 1.160000e+02
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ex, -1.600000e+01
  %i.ez = fsub reassoc nsz arcp contract afn float %i.eg, %i.el
  %i.fa = fsub reassoc nsz arcp contract afn float %i.er, %i.el
  %i.fb = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fc = insertelement <4 x float> %i.fb, float %i.ez, i64 1
  %i.fd = insertelement <4 x float> %i.fc, float %i.fa, i64 2
  %i.fe = insertelement <4 x float> %i.fd, float %i.ew, i64 3
  %i.ff = fmul reassoc nsz arcp contract afn <4 x float> %i.fe, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.ff, ptr %i.dd, align 16, !tbaa !15
  %i.fg = add nuw i64 %.02943.i.i.i, 4            ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.al
  br i1 %i.fh, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i
  tail call void @dt_bilateral_splat(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.ah) #34
  tail call void @dt_bilateral_blur(ptr noundef nonnull %i.dc) #34
  tail call void @dt_bilateral_slice_to_output(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ah, float noundef 1.000000e+01) #34
  tail call void @dt_bilateral_free(ptr noundef nonnull %i.dc) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  br i1 %.not.i.i.i, label %detail_enhance.exit.i.i, label %.lr.ph46.i.i.i.preheader

.lr.ph46.i.i.i.preheader:                         ; preds = %bb.t
  %i.fi = add i64 %i.al, -4                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.fi, 32
  br i1 %min.iters.check, label %.lr.ph46.i.i.i.preheader250, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.i.i.i.preheader
  %i.fj = lshr exact i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %i.fl = and i64 %i.fk, 7                        ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  %i.fn = select i1 %i.fm, i64 8, i64 %i.fl
  %n.vec = sub nsw i64 %i.fk, %i.fn               ; 2 uses
  %i.fo = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.fp, align 64, !tbaa !15 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec152 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec153 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.fq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec152, splat (float 2.000000e-03)
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 8.620690e-03)
  %i.fs = fadd reassoc nsz arcp contract afn <8 x float> %i.fr, splat (float f0x3E0D3DCB) ; 7 uses
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec153, splat (float 5.000000e-03)
  %i.fu = fadd reassoc nsz arcp contract afn <8 x float> %i.fs, %i.fq ; 5 uses
  %i.fv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fu, splat (float f0x3E53DCB1)
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fu, %i.fu
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %i.fw, %i.fu
  %i.fy = fmul reassoc nsz arcp contract afn <8 x float> %i.fu, splat (float f0x3E038026)
  %i.fz = fadd reassoc nsz arcp contract afn <8 x float> %i.fy, splat (float f0xBC911AA6)
  %i.ga = select reassoc nsz arcp contract afn <8 x i1> %i.fv, <8 x float> %i.fx, <8 x float> %i.fz ; 3 uses
  %i.gb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fs, splat (float f0x3E53DCB1)
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %i.fs, %i.fs
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %i.gc, %i.fs
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %i.fs, splat (float f0x3E038026)
  %i.gf = fadd reassoc nsz arcp contract afn <8 x float> %i.ge, splat (float f0xBC911AA6)
  %i.gg = select reassoc nsz arcp contract afn <8 x i1> %i.gb, <8 x float> %i.gd, <8 x float> %i.gf ; 3 uses
  %i.gh = fsub reassoc nsz arcp contract afn <8 x float> %i.fs, %i.ft ; 5 uses
  %i.gi = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gh, splat (float f0x3E53DCB1)
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %i.gh, %i.gh
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gj, %i.gh
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gh, splat (float f0x3E038026)
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, splat (float f0xBC911AA6)
  %i.gn = select reassoc nsz arcp contract afn <8 x i1> %i.gi, <8 x float> %i.gk, <8 x float> %i.gm ; 3 uses
  %i.go = fmul reassoc nsz arcp contract afn <8 x float> %i.ga, splat (float 9.642000e-01)
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %i.gn, splat (float f0x3F532CA5)
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %i.ga, splat (float f0x3D8E11AE)
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %i.gg, splat (float f0xBE6A7CB9)
  %i.gs = fadd reassoc nsz arcp contract afn <8 x float> %i.gq, %i.gr
  %i.gt = fmul reassoc nsz arcp contract afn <8 x float> %i.gn, splat (float f0x3F94602A)
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %i.gs, %i.gt
  %i.gv = fadd reassoc nsz arcp contract afn <8 x float> %i.go, %i.gg
  %i.gw = fadd reassoc nsz arcp contract afn <8 x float> %i.gv, %i.gp
  %i.gx = fmul reassoc nsz arcp contract afn <8 x float> %i.gw, zeroinitializer
  %i.gy = shufflevector <8 x float> %i.ga, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gz = fmul reassoc nsz arcp contract afn <16 x float> %i.gy, <float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831>
  %i.ha = shufflevector <8 x float> %i.gg, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hb = fmul reassoc nsz arcp contract afn <16 x float> %i.ha, <float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420>
  %i.hc = fadd reassoc nsz arcp contract afn <16 x float> %i.gz, %i.hb
  %i.hd = shufflevector <8 x float> %i.gn, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.he = fmul reassoc nsz arcp contract afn <16 x float> %i.hd, <float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F>
  %i.hf = fadd reassoc nsz arcp contract afn <16 x float> %i.hc, %i.he
  %i.hg = shufflevector <8 x float> %i.gu, <8 x float> %i.gx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.hf, <16 x float> %i.hg, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.fp, align 64, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %.lr.ph46.i.i.i.preheader250, label %vector.body, !llvm.loop !521

.lr.ph46.i.i.i.preheader250:                      ; preds = %vector.body, %.lr.ph46.i.i.i.preheader
  %.044.i.i.i.ph = phi i64 [ 0, %.lr.ph46.i.i.i.preheader ], [ %i.fo, %vector.body ]
  br label %.lr.ph46.i.i.i

.lr.ph46.i.i.i:                                   ; preds = %.lr.ph46.i.i.i.preheader250, %.lr.ph46.i.i.i
  %.044.i.i.i = phi i64 [ %i.ja, %.lr.ph46.i.i.i ], [ %.044.i.i.i.ph, %.lr.ph46.i.i.i.preheader250 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.044.i.i.i ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !15
  %i.hl = load float, ptr %i.hi, align 16, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !15
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hk, 2.000000e-03
end_hunk_5
begin_hunk_6_@_do_get_structure_auto:bb.a
  %i.iv = shufflevector <4 x float> %i.it, <4 x float> %i.iu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.iw = fadd reassoc nsz arcp contract afn <4 x float> %i.iv, %i.iq ; 2 uses
  %i.ix = fadd reassoc nsz arcp contract afn <4 x float> %i.iw, %i.is
  %i.iy = fmul reassoc nsz arcp contract afn <4 x float> %i.iw, %i.is
  %i.iz = shufflevector <4 x float> %i.ix, <4 x float> %i.iy, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.iz, ptr %i.hi, align 16, !tbaa !15
  %i.ja = add nuw i64 %.044.i.i.i, 4              ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.al
  br i1 %i.jb, label %.lr.ph46.i.i.i, label %detail_enhance.exit.i.i, !llvm.loop !522

detail_enhance.exit.i.i:                          ; preds = %.lr.ph46.i.i.i, %bb.t, %gamma_correct.exit.i.i
  %i.jc = shl nsw i64 %i.ad, 3
  %i.jd = mul i64 %i.jc, %i.ae                    ; 3 uses
  %i.je = tail call noalias ptr @malloc(i64 noundef %i.jd) #33 ; 16 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %line_detect.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %detail_enhance.exit.i.i
  %i.jg = mul nsw i64 %i.ae, %i.ad                ; 9 uses
  %.not.i192.i.i = icmp eq i64 %i.jg, 0           ; 2 uses
  br i1 %.not.i192.i.i, label %rgb2grey256.exit.i.i, label %.lr.ph.i193.i.i.preheader

.lr.ph.i193.i.i.preheader:                        ; preds = %bb.u
  %min.iters.check155 = icmp ult i64 %i.jg, 5
  br i1 %min.iters.check155, label %.lr.ph.i193.i.i.preheader249, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph.i193.i.i.preheader
  %i.jh = and i64 %i.jg, 3                        ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  %i.jj = select i1 %i.ji, i64 4, i64 %i.jh
  %n.vec157 = sub i64 %i.jg, %i.jj                ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body158 ] ; 3 uses
  %i.jk = shl i64 %index159, 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.jk
  %wide.vec160 = load <16 x float>, ptr %i.jl, align 64, !tbaa !15 ; 3 uses
  %strided.vec161 = shufflevector <16 x float> %wide.vec160, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec162 = shufflevector <16 x float> %wide.vec160, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec163 = shufflevector <16 x float> %wide.vec160, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.jm = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec161, splat (float 3.000000e-01)
  %i.jn = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec162, splat (float 5.900000e-01)
  %i.jo = fadd reassoc nsz arcp contract afn <4 x float> %i.jn, %i.jm
  %i.jp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec163, splat (float 1.100000e-01)
  %i.jq = fadd reassoc nsz arcp contract afn <4 x float> %i.jo, %i.jp
  %i.jr = fpext reassoc nsz arcp contract afn <4 x float> %i.jq to <4 x double>
  %i.js = fmul reassoc nsz arcp contract afn <4 x double> %i.jr, splat (double 2.560000e+02)
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %index159
  store <4 x double> %i.js, ptr %i.jt, align 8, !tbaa !166
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.ju, label %.lr.ph.i193.i.i.preheader249, label %vector.body158, !llvm.loop !523

.lr.ph.i193.i.i.preheader249:                     ; preds = %vector.body158, %.lr.ph.i193.i.i.preheader
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i193.i.i.preheader ], [ %n.vec157, %vector.body158 ]
  br label %.lr.ph.i193.i.i

.lr.ph.i193.i.i:                                  ; preds = %.lr.ph.i193.i.i.preheader249, %.lr.ph.i193.i.i
  %.012.i.i.i = phi i64 [ %i.kj, %.lr.ph.i193.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i193.i.i.preheader249 ] ; 3 uses
  %.idx.i.i.i = shl i64 %.012.i.i.i, 4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i ; 3 uses
  %i.jw = load float, ptr %i.jv, align 16, !tbaa !15
  %i.jx = fmul reassoc nsz arcp contract afn float %i.jw, 3.000000e-01
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !15
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, 5.900000e-01
  %i.kb = fadd reassoc nsz arcp contract afn float %i.ka, %i.jx
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.kd = load float, ptr %i.kc, align 8, !tbaa !15
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, 1.100000e-01
  %i.kf = fadd reassoc nsz arcp contract afn float %i.kb, %i.ke
  %i.kg = fpext reassoc nsz arcp contract afn float %i.kf to double
  %i.kh = fmul reassoc nsz arcp contract afn double %i.kg, 2.560000e+02
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.012.i.i.i
  store double %i.kh, ptr %i.ki, align 8, !tbaa !166
  %i.kj = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.kj, %i.jg
  br i1 %exitcond.not.i.i.i, label %rgb2grey256.exit.i.i, label %.lr.ph.i193.i.i, !llvm.loop !524

rgb2grey256.exit.i.i:                             ; preds = %.lr.ph.i193.i.i, %bb.u
  %i.kk = and i32 %1, 1
  %.not186.i.i = icmp eq i32 %i.kk, 0
  br i1 %.not186.i.i, label %edge_enhance.exit.i.i, label %bb.v

bb.v:                                             ; preds = %rgb2grey256.exit.i.i
  %i.kl = tail call noalias ptr @malloc(i64 noundef %i.jd) #33 ; 6 uses
  %cond.i.i.i = icmp eq ptr %i.kl, null
  br i1 %cond.i.i.i, label %edge_enhance.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.km = tail call noalias ptr @malloc(i64 noundef %i.jd) #33 ; 5 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %.sink.split.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @edge_enhance_1d(ptr noundef nonnull readonly %i.je, ptr noundef %i.kl, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef 256)
  tail call fastcc void @edge_enhance_1d(ptr noundef nonnull readonly %i.je, ptr noundef %i.km, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef 512)
  br i1 %.not.i192.i.i, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i.preheader

.lr.ph.i196.i.i.preheader:                        ; preds = %bb.x
  %min.iters.check168 = icmp ult i64 %i.jg, 4
  br i1 %min.iters.check168, label %.lr.ph.i196.i.i.preheader248, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i196.i.i.preheader
  %n.vec170 = and i64 %i.jg, -4                   ; 3 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next174, %vector.body171 ] ; 4 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %index172
  %wide.load = load <4 x double>, ptr %i.ko, align 8, !tbaa !166 ; 2 uses
  %i.kp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %wide.load
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %index172
  %wide.load173 = load <4 x double>, ptr %i.kq, align 8, !tbaa !166 ; 2 uses
  %i.kr = fmul reassoc nsz arcp contract afn <4 x double> %wide.load173, %wide.load173
  %i.ks = fadd reassoc nsz arcp contract afn <4 x double> %i.kr, %i.kp
  %i.kt = tail call reassoc nsz arcp contract afn <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.ks)
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %index172
  store <4 x double> %i.kt, ptr %i.ku, align 8, !tbaa !166
  %index.next174 = add nuw i64 %index172, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next174, %n.vec170
  br i1 %i.kv, label %middle.block175, label %vector.body171, !llvm.loop !525

middle.block175:                                  ; preds = %vector.body171
  %cmp.n = icmp eq i64 %i.jg, %n.vec170
  br i1 %cmp.n, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i.preheader248

.lr.ph.i196.i.i.preheader248:                     ; preds = %.lr.ph.i196.i.i.preheader, %middle.block175
  %.039.i.i.i.ph = phi i64 [ 0, %.lr.ph.i196.i.i.preheader ], [ %n.vec170, %middle.block175 ]
  br label %.lr.ph.i196.i.i

._crit_edge.i198.i.i:                             ; preds = %.lr.ph.i196.i.i, %middle.block175, %bb.x
  tail call void @free(ptr noundef nonnull %i.kl) #34
  br label %.sink.split.i.i.i

.lr.ph.i196.i.i:                                  ; preds = %.lr.ph.i196.i.i.preheader248, %.lr.ph.i196.i.i
  %.039.i.i.i = phi i64 [ %i.lf, %.lr.ph.i196.i.i ], [ %.039.i.i.i.ph, %.lr.ph.i196.i.i.preheader248 ] ; 4 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %.039.i.i.i
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !166 ; 2 uses
  %i.ky = fmul reassoc nsz arcp contract afn double %i.kx, %i.kx
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.039.i.i.i
  %i.la = load double, ptr %i.kz, align 8, !tbaa !166 ; 2 uses
  %i.lb = fmul reassoc nsz arcp contract afn double %i.la, %i.la
  %i.lc = fadd reassoc nsz arcp contract afn double %i.lb, %i.ky
  %i.ld = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.lc)
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.039.i.i.i
  store double %i.ld, ptr %i.le, align 8, !tbaa !166
  %i.lf = add nuw i64 %.039.i.i.i, 1              ; 2 uses
  %exitcond.not.i197.i.i = icmp eq i64 %i.lf, %i.jg
  br i1 %exitcond.not.i197.i.i, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i, !llvm.loop !526

.sink.split.i.i.i:                                ; preds = %._crit_edge.i198.i.i, %bb.w
  %.sink.i.i.i = phi ptr [ %i.km, %._crit_edge.i198.i.i ], [ %i.kl, %bb.w ]
  tail call void @free(ptr noundef nonnull %.sink.i.i.i) #34
  br label %edge_enhance.exit.i.i

edge_enhance.exit.i.i:                            ; preds = %.sink.split.i.i.i, %bb.v, %rgb2grey256.exit.i.i
  %i.lg = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33 ; 9 uses
  %i.lh = icmp eq ptr %i.lg, null
  br i1 %i.lh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %edge_enhance.exit.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.z:                                             ; preds = %edge_enhance.exit.i.i
  store i32 0, ptr %i.lg, align 8, !tbaa !541
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 4 ; 3 uses
  store i32 1, ptr %i.li, align 4, !tbaa !542
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  store i32 7, ptr %i.lj, align 8, !tbaa !543
  %i.lk = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #33 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 4 uses
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !544
  %i.lm = icmp eq ptr %i.lk, null
  br i1 %i.lm, label %bb.aa, label %new_ntuple_list.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_ntuple_list.exit.i.i.i:                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.ln = icmp slt i32 %i.aa, 1
  %i.lo = icmp slt i32 %i.z, 1
  %or.cond3.i.i.i = or i1 %i.ln, %i.lo
  br i1 %or.cond3.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %new_ntuple_list.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.108) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.ac:                                            ; preds = %new_ntuple_list.exit.i.i.i
  %i.lp = uitofp reassoc nsz arcp contract afn nneg i32 %i.aa to double
  %i.lq = fmul reassoc nsz arcp contract afn double %i.lp, f0x3FEFAE147AE147AE ; 2 uses
  %i.lr = fcmp reassoc nsz arcp contract afn ogt double %i.lq, f0x41EFFFFFFFE00000
  br i1 %i.lr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ls = uitofp reassoc nsz arcp contract afn nneg i32 %i.z to double
  %i.lt = fmul reassoc nsz arcp contract afn double %i.ls, f0x3FEFAE147AE147AE ; 2 uses
  %i.lu = fcmp reassoc nsz arcp contract afn ogt double %i.lt, f0x41EFFFFFFFE00000
  br i1 %i.lu, label %bb.ae, label %new_ntuple_list.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.127) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_ntuple_list.exit.i.i.i.i:                     ; preds = %bb.ad
  %i.lv = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.lq)
  %i.lw = fptoui double %i.lv to i32              ; 2 uses
  %i.lx = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.lt)
  %i.ly = fptoui double %i.lx to i32
  %i.lz = tail call fastcc ptr @new_image_double(i32 noundef %i.lw, i32 noundef %i.z) ; 6 uses
  %i.ma = tail call fastcc ptr @new_image_double(i32 noundef %i.lw, i32 noundef %i.ly) ; 6 uses
  %i.mb = shl nuw i32 %i.aa, 1                    ; 28 uses
  %i.mc = shl nuw i32 %i.z, 1                     ; 28 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.me = load i32, ptr %i.md, align 8, !tbaa !289 ; 10 uses
  %.not.i.i.i.i = icmp eq i32 %i.me, 0
  br i1 %.not.i.i.i.i, label %.preheader135.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %new_ntuple_list.exit.i.i.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !290 ; 2 uses
  %.not153.i.i.i.i = icmp eq i32 %i.mg, 0
  %wide.trip.count165.i.i.i.i = zext i32 %i.mg to i64
  br label %.lr.ph.i164.i.i.i

.preheader135.i.i.i.i:                            ; preds = %._crit_edge141.i.i.i.i, %new_ntuple_list.exit.i.i.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !290 ; 9 uses
  %.not155.i.i.i.i = icmp eq i32 %i.mi, 0         ; 2 uses
  br i1 %.not155.i.i.i.i, label %free_ntuple_list.exit.i.i.i.i, label %.lr.ph152.i.i.i.i

.lr.ph152.i.i.i.i:                                ; preds = %.preheader135.i.i.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !289 ; 3 uses
  %.not156.i.i.i.i = icmp eq i32 %i.mk, 0
  %wide.trip.count181.i.i.i.i = zext i32 %i.mk to i64
  br label %.lr.ph.i157.i.i.i

.lr.ph.i164.i.i.i:                                ; preds = %._crit_edge141.i.i.i.i, %.lr.ph.i.i.i.i
  %.0122142.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.rg, %._crit_edge141.i.i.i.i ] ; 3 uses
  %i.ml = uitofp reassoc nsz arcp contract afn i32 %.0122142.i.i.i.i to double
  %i.mm = fmul reassoc nsz arcp contract afn double %i.ml, f0x3FF0295FAD40A57F ; 2 uses
  %i.mn = fadd reassoc nsz arcp contract afn double %i.mm, 5.000000e-01
  %i.mo = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.mn)
  %i.mp = fptosi double %i.mo to i32              ; 8 uses
  %4 = sitofp reassoc nsz arcp contract afn i32 %i.mp to double
  %.neg11.i.i.i = fsub reassoc nsz arcp contract afn double -3.000000e+00, %i.mm
  %i.mq = fadd reassoc nsz arcp contract afn double %.neg11.i.i.i, %4 ; 5 uses
  %i.mr = fmul reassoc nsz arcp contract afn double %i.mq, %i.mq
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mr, f0xBFF5C7AE147AE147
  %i.mt = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.ms) ; 3 uses
  %i.mu = fadd reassoc nsz arcp contract afn double %i.mq, 1.000000e+00 ; 2 uses
  %i.mv = fmul reassoc nsz arcp contract afn double %i.mu, %i.mu
  %i.mw = fmul reassoc nsz arcp contract afn double %i.mv, f0xBFF5C7AE147AE147
  %i.mx = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.mw) ; 3 uses
  %i.my = fadd reassoc nsz arcp contract afn double %i.mq, 2.000000e+00 ; 2 uses
  %i.mz = fmul reassoc nsz arcp contract afn double %i.my, %i.my
  %i.na = fmul reassoc nsz arcp contract afn double %i.mz, f0xBFF5C7AE147AE147
  %i.nb = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.na) ; 3 uses
  %i.nc = insertelement <4 x double> poison, double %i.mq, i64 0
  %i.nd = shufflevector <4 x double> %i.nc, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ne = fadd reassoc nsz arcp contract afn <4 x double> %i.nd, <double 6.000000e+00, double 5.000000e+00, double 4.000000e+00, double 3.000000e+00> ; 2 uses
  %i.nf = fmul reassoc nsz arcp contract afn <4 x double> %i.ne, %i.ne
  %i.ng = fmul reassoc nsz arcp contract afn <4 x double> %i.nf, splat (double f0xBFF5C7AE147AE147)
  %i.nh = tail call reassoc nsz arcp contract afn <4 x double> @llvm.exp.v4f64(<4 x double> %i.ng) ; 3 uses
  %op.rdx232 = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.mx, <4 x double> %i.nh)
  %op.rdx233 = fadd reassoc nsz arcp contract afn double %i.mt, %i.nb
  %op.rdx234 = fadd reassoc nsz arcp contract afn double %op.rdx232, %op.rdx233 ; 5 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ult double %op.rdx234, 0.000000e+00
  br i1 %i.ni, label %gaussian_kernel.exit176.i.i.i, label %.lr.ph31.i171.preheader.i.i.i

.lr.ph31.i171.preheader.i.i.i:                    ; preds = %.lr.ph.i164.i.i.i
  %i.nj = fdiv reassoc nsz arcp contract afn double %i.mt, %op.rdx234
  %i.nk = fdiv reassoc nsz arcp contract afn double %i.mx, %op.rdx234
  %i.nl = fdiv reassoc nsz arcp contract afn double %i.nb, %op.rdx234
  %i.nm = insertelement <4 x double> poison, double %op.rdx234, i64 0
  %i.nn = shufflevector <4 x double> %i.nm, <4 x double> poison, <4 x i32> zeroinitializer
  %i.no = fdiv reassoc nsz arcp contract afn <4 x double> %i.nh, %i.nn
  br label %gaussian_kernel.exit176.i.i.i

gaussian_kernel.exit176.i.i.i:                    ; preds = %.lr.ph31.i171.preheader.i.i.i, %.lr.ph.i164.i.i.i
  %i.np = phi double [ %i.nl, %.lr.ph31.i171.preheader.i.i.i ], [ %i.nb, %.lr.ph.i164.i.i.i ]
  %i.nq = phi double [ %i.nk, %.lr.ph31.i171.preheader.i.i.i ], [ %i.mx, %.lr.ph.i164.i.i.i ]
  %i.nr = phi double [ %i.nj, %.lr.ph31.i171.preheader.i.i.i ], [ %i.mt, %.lr.ph.i164.i.i.i ]
  %i.ns = phi <4 x double> [ %i.no, %.lr.ph31.i171.preheader.i.i.i ], [ %i.nh, %.lr.ph.i164.i.i.i ] ; 4 uses
  br i1 %.not153.i.i.i.i, label %._crit_edge141.i.i.i.i, label %.preheader137.lr.ph.split.us.i.i.i.i

.preheader137.lr.ph.split.us.i.i.i.i:             ; preds = %gaussian_kernel.exit176.i.i.i
  %i.nt = add i32 %i.mp, -3
  %i.nu = load ptr, ptr %i.lz, align 8, !tbaa !291
  %i.nv = add i32 %i.mp, -2
  %i.nw = add i32 %i.mp, -1
  %i.nx = add i32 %i.mp, 1
  %i.ny = add i32 %i.mp, 2
  %i.nz = add i32 %i.mp, 3
  %i.oa = extractelement <4 x double> %i.ns, i64 0
  %i.ob = extractelement <4 x double> %i.ns, i64 1
  %i.oc = extractelement <4 x double> %i.ns, i64 2
  %i.od = extractelement <4 x double> %i.ns, i64 3
  br label %.preheader137.us.i.i.i.i

.preheader137.us.i.i.i.i:                         ; preds = %._crit_edge.us.i.i.i.i, %.preheader137.lr.ph.split.us.i.i.i.i
  %indvars.iv162.i.i.i.i = phi i64 [ %indvars.iv.next163.i.i.i.i, %._crit_edge.us.i.i.i.i ], [ 0, %.preheader137.lr.ph.split.us.i.i.i.i ] ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader137.us.i.i.i.i
  %.0116.us.i.i.i.i = phi i32 [ %i.nt, %.preheader137.us.i.i.i.i ], [ %i.of, %bb.af ] ; 3 uses
  %i.oe = icmp slt i32 %.0116.us.i.i.i.i, 0
  %i.of = add nsw i32 %.0116.us.i.i.i.i, %i.mb
  br i1 %i.oe, label %bb.af, label %.preheader136.us.i.i.i.i

.preheader136.us.i.i.i.i:                         ; preds = %bb.af, %.preheader136.us.i.i.i.i
  %.1117.us.i.i.i.i = phi i32 [ %i.og, %.preheader136.us.i.i.i.i ], [ %.0116.us.i.i.i.i, %bb.af ] ; 5 uses
  %.not130.us.i.i.i.i = icmp slt i32 %.1117.us.i.i.i.i, %i.mb
  %i.og = sub nsw i32 %.1117.us.i.i.i.i, %i.mb
  br i1 %.not130.us.i.i.i.i, label %bb.ag, label %.preheader136.us.i.i.i.i

bb.ag:                                            ; preds = %.preheader136.us.i.i.i.i
  %i.oh = trunc nuw i64 %indvars.iv162.i.i.i.i to i32 ; 2 uses
  %i.oi = mul i32 %i.aa, %i.oh                    ; 7 uses
  %.not131.us.i.i.i.i = icmp slt i32 %.1117.us.i.i.i.i, %i.aa
  %i.oj = xor i32 %.1117.us.i.i.i.i, -1
  %i.ok = add i32 %i.mb, %i.oj
  %.2.us.i.i.i.i = select i1 %.not131.us.i.i.i.i, i32 %.1117.us.i.i.i.i, i32 %i.ok
  %i.ol = add i32 %.2.us.i.i.i.i, %i.oi
  %i.om = zext i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.om
  %i.oo = load double, ptr %i.on, align 8, !tbaa !166
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0116.us.i.1.i.i.i = phi i32 [ %i.nv, %bb.ag ], [ %i.oq, %bb.ah ] ; 3 uses
  %i.op = icmp slt i32 %.0116.us.i.1.i.i.i, 0
  %i.oq = add nsw i32 %.0116.us.i.1.i.i.i, %i.mb
  br i1 %i.op, label %bb.ah, label %.preheader136.us.i.1.i.i.i

.preheader136.us.i.1.i.i.i:                       ; preds = %bb.ah, %.preheader136.us.i.1.i.i.i
  %.1117.us.i.1.i.i.i = phi i32 [ %i.or, %.preheader136.us.i.1.i.i.i ], [ %.0116.us.i.1.i.i.i, %bb.ah ] ; 5 uses
  %.not130.us.i.1.i.i.i = icmp slt i32 %.1117.us.i.1.i.i.i, %i.mb
  %i.or = sub nsw i32 %.1117.us.i.1.i.i.i, %i.mb
  br i1 %.not130.us.i.1.i.i.i, label %bb.ai, label %.preheader136.us.i.1.i.i.i

bb.ai:                                            ; preds = %.preheader136.us.i.1.i.i.i
  %.not131.us.i.1.i.i.i = icmp slt i32 %.1117.us.i.1.i.i.i, %i.aa
  %i.os = xor i32 %.1117.us.i.1.i.i.i, -1
  %i.ot = add i32 %i.mb, %i.os
  %.2.us.i.1.i.i.i = select i1 %.not131.us.i.1.i.i.i, i32 %.1117.us.i.1.i.i.i, i32 %i.ot
  %i.ou = add i32 %.2.us.i.1.i.i.i, %i.oi
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.ov
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !166
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.0116.us.i.2.i.i.i = phi i32 [ %i.nw, %bb.ai ], [ %i.oz, %bb.aj ] ; 3 uses
  %i.oy = icmp slt i32 %.0116.us.i.2.i.i.i, 0
  %i.oz = add nsw i32 %.0116.us.i.2.i.i.i, %i.mb
  br i1 %i.oy, label %bb.aj, label %.preheader136.us.i.2.i.i.i

.preheader136.us.i.2.i.i.i:                       ; preds = %bb.aj, %.preheader136.us.i.2.i.i.i
  %.1117.us.i.2.i.i.i = phi i32 [ %i.pa, %.preheader136.us.i.2.i.i.i ], [ %.0116.us.i.2.i.i.i, %bb.aj ] ; 5 uses
  %.not130.us.i.2.i.i.i = icmp slt i32 %.1117.us.i.2.i.i.i, %i.mb
  %i.pa = sub nsw i32 %.1117.us.i.2.i.i.i, %i.mb
  br i1 %.not130.us.i.2.i.i.i, label %.preheader136.us.i.preheader.3.i.i.i, label %.preheader136.us.i.2.i.i.i

.preheader136.us.i.preheader.3.i.i.i:             ; preds = %.preheader136.us.i.2.i.i.i
  %.not131.us.i.2.i.i.i = icmp slt i32 %.1117.us.i.2.i.i.i, %i.aa
  %i.pb = xor i32 %.1117.us.i.2.i.i.i, -1
  %i.pc = add i32 %i.mb, %i.pb
  %.2.us.i.2.i.i.i = select i1 %.not131.us.i.2.i.i.i, i32 %.1117.us.i.2.i.i.i, i32 %i.pc
  %i.pd = add i32 %.2.us.i.2.i.i.i, %i.oi
  %i.pe = zext i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.pe
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !166
  br label %5

5:                                                ; preds = %5, %.preheader136.us.i.preheader.3.i.i.i
  %.0116.us.i.3.i.i.i = phi i32 [ %i.mp, %.preheader136.us.i.preheader.3.i.i.i ], [ %7, %5 ] ; 3 uses
  %6 = icmp slt i32 %.0116.us.i.3.i.i.i, 0
  %7 = add nsw i32 %.0116.us.i.3.i.i.i, %i.mb
  br i1 %6, label %5, label %.preheader136.us.i.3.i.i.i

.preheader136.us.i.3.i.i.i:                       ; preds = %5, %.preheader136.us.i.3.i.i.i
  %.1117.us.i.3.i.i.i = phi i32 [ %i.ph, %.preheader136.us.i.3.i.i.i ], [ %.0116.us.i.3.i.i.i, %5 ] ; 5 uses
  %.not130.us.i.3.i.i.i = icmp slt i32 %.1117.us.i.3.i.i.i, %i.mb
  %i.ph = sub nsw i32 %.1117.us.i.3.i.i.i, %i.mb
  br i1 %.not130.us.i.3.i.i.i, label %bb.ak, label %.preheader136.us.i.3.i.i.i

bb.ak:                                            ; preds = %.preheader136.us.i.3.i.i.i
  %.not131.us.i.3.i.i.i = icmp slt i32 %.1117.us.i.3.i.i.i, %i.aa
  %i.pi = xor i32 %.1117.us.i.3.i.i.i, -1
  %i.pj = add i32 %i.mb, %i.pi
  %.2.us.i.3.i.i.i = select i1 %.not131.us.i.3.i.i.i, i32 %.1117.us.i.3.i.i.i, i32 %i.pj
  %i.pk = add i32 %.2.us.i.3.i.i.i, %i.oi
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.pl
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !166
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.0116.us.i.4.i.i.i = phi i32 [ %i.nx, %bb.ak ], [ %i.pp, %bb.al ] ; 3 uses
  %i.po = icmp slt i32 %.0116.us.i.4.i.i.i, 0
  %i.pp = add nsw i32 %.0116.us.i.4.i.i.i, %i.mb
  br i1 %i.po, label %bb.al, label %.preheader136.us.i.4.i.i.i

.preheader136.us.i.4.i.i.i:                       ; preds = %bb.al, %.preheader136.us.i.4.i.i.i
  %.1117.us.i.4.i.i.i = phi i32 [ %i.pq, %.preheader136.us.i.4.i.i.i ], [ %.0116.us.i.4.i.i.i, %bb.al ] ; 5 uses
  %.not130.us.i.4.i.i.i = icmp slt i32 %.1117.us.i.4.i.i.i, %i.mb
  %i.pq = sub nsw i32 %.1117.us.i.4.i.i.i, %i.mb
  br i1 %.not130.us.i.4.i.i.i, label %bb.am, label %.preheader136.us.i.4.i.i.i

bb.am:                                            ; preds = %.preheader136.us.i.4.i.i.i
  %.not131.us.i.4.i.i.i = icmp slt i32 %.1117.us.i.4.i.i.i, %i.aa
  %i.pr = xor i32 %.1117.us.i.4.i.i.i, -1
  %i.ps = add i32 %i.mb, %i.pr
  %.2.us.i.4.i.i.i = select i1 %.not131.us.i.4.i.i.i, i32 %.1117.us.i.4.i.i.i, i32 %i.ps
  %i.pt = add i32 %.2.us.i.4.i.i.i, %i.oi
  %i.pu = zext i32 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.pu
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !166
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.0116.us.i.5.i.i.i = phi i32 [ %i.ny, %bb.am ], [ %i.py, %bb.an ] ; 3 uses
  %i.px = icmp slt i32 %.0116.us.i.5.i.i.i, 0
  %i.py = add nsw i32 %.0116.us.i.5.i.i.i, %i.mb
  br i1 %i.px, label %bb.an, label %.preheader136.us.i.5.i.i.i

.preheader136.us.i.5.i.i.i:                       ; preds = %bb.an, %.preheader136.us.i.5.i.i.i
  %.1117.us.i.5.i.i.i = phi i32 [ %i.pz, %.preheader136.us.i.5.i.i.i ], [ %.0116.us.i.5.i.i.i, %bb.an ] ; 5 uses
  %.not130.us.i.5.i.i.i = icmp slt i32 %.1117.us.i.5.i.i.i, %i.mb
  %i.pz = sub nsw i32 %.1117.us.i.5.i.i.i, %i.mb
  br i1 %.not130.us.i.5.i.i.i, label %bb.ao, label %.preheader136.us.i.5.i.i.i

bb.ao:                                            ; preds = %.preheader136.us.i.5.i.i.i
  %.not131.us.i.5.i.i.i = icmp slt i32 %.1117.us.i.5.i.i.i, %i.aa
  %i.qa = xor i32 %.1117.us.i.5.i.i.i, -1
  %i.qb = add i32 %i.mb, %i.qa
  %.2.us.i.5.i.i.i = select i1 %.not131.us.i.5.i.i.i, i32 %.1117.us.i.5.i.i.i, i32 %i.qb
  %i.qc = add i32 %.2.us.i.5.i.i.i, %i.oi
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.qd
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !166
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.0116.us.i.6.i.i.i = phi i32 [ %i.nz, %bb.ao ], [ %i.qh, %bb.ap ] ; 3 uses
  %i.qg = icmp slt i32 %.0116.us.i.6.i.i.i, 0
  %i.qh = add nsw i32 %.0116.us.i.6.i.i.i, %i.mb
  br i1 %i.qg, label %bb.ap, label %.preheader136.us.i.6.i.i.i

.preheader136.us.i.6.i.i.i:                       ; preds = %bb.ap, %.preheader136.us.i.6.i.i.i
  %.1117.us.i.6.i.i.i = phi i32 [ %i.qi, %.preheader136.us.i.6.i.i.i ], [ %.0116.us.i.6.i.i.i, %bb.ap ] ; 5 uses
  %.not130.us.i.6.i.i.i = icmp slt i32 %.1117.us.i.6.i.i.i, %i.mb
  %i.qi = sub nsw i32 %.1117.us.i.6.i.i.i, %i.mb
  br i1 %.not130.us.i.6.i.i.i, label %._crit_edge.us.i.i.i.i, label %.preheader136.us.i.6.i.i.i

._crit_edge.us.i.i.i.i:                           ; preds = %.preheader136.us.i.6.i.i.i
  %i.qj = fmul reassoc nsz arcp contract afn double %i.oo, %i.nr
  %i.qk = fmul reassoc nsz arcp contract afn double %i.ox, %i.nq
  %i.ql = fadd reassoc nsz arcp contract afn double %i.qk, %i.qj
  %i.qm = fmul reassoc nsz arcp contract afn double %i.pg, %i.np
  %i.qn = fadd reassoc nsz arcp contract afn double %i.ql, %i.qm
  %i.qo = fmul reassoc nsz arcp contract afn double %i.pn, %i.od
  %i.qp = fadd reassoc nsz arcp contract afn double %i.qn, %i.qo
  %i.qq = fmul reassoc nsz arcp contract afn double %i.pw, %i.oc
  %i.qr = fadd reassoc nsz arcp contract afn double %i.qp, %i.qq
  %i.qs = fmul reassoc nsz arcp contract afn double %i.qf, %i.ob
  %i.qt = fadd reassoc nsz arcp contract afn double %i.qr, %i.qs
  %.not131.us.i.6.i.i.i = icmp slt i32 %.1117.us.i.6.i.i.i, %i.aa
  %i.qu = xor i32 %.1117.us.i.6.i.i.i, -1
  %i.qv = add i32 %i.mb, %i.qu
  %.2.us.i.6.i.i.i = select i1 %.not131.us.i.6.i.i.i, i32 %.1117.us.i.6.i.i.i, i32 %i.qv
  %i.qw = add i32 %.2.us.i.6.i.i.i, %i.oi
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.qx
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !166
  %i.ra = fmul reassoc nsz arcp contract afn double %i.qz, %i.oa
  %i.rb = fadd reassoc nsz arcp contract afn double %i.qt, %i.ra
  %i.rc = mul i32 %i.me, %i.oh
  %i.rd = add i32 %i.rc, %.0122142.i.i.i.i
  %i.re = zext i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.re
  store double %i.rb, ptr %i.rf, align 8, !tbaa !166
  %indvars.iv.next163.i.i.i.i = add nuw nsw i64 %indvars.iv162.i.i.i.i, 1 ; 2 uses
  %exitcond166.not.i.i.i.i = icmp eq i64 %indvars.iv.next163.i.i.i.i, %wide.trip.count165.i.i.i.i
  br i1 %exitcond166.not.i.i.i.i, label %._crit_edge141.i.i.i.i, label %.preheader137.us.i.i.i.i

._crit_edge141.i.i.i.i:                           ; preds = %._crit_edge.us.i.i.i.i, %gaussian_kernel.exit176.i.i.i
  %i.rg = add nuw i32 %.0122142.i.i.i.i, 1        ; 2 uses
  %exitcond172.not.i.i.i.i = icmp eq i32 %i.rg, %i.me
  br i1 %exitcond172.not.i.i.i.i, label %.preheader135.i.i.i.i, label %.lr.ph.i164.i.i.i

.lr.ph.i157.i.i.i:                                ; preds = %._crit_edge149.i.i.i.i, %.lr.ph152.i.i.i.i
  %.1121151.i.i.i.i = phi i32 [ 0, %.lr.ph152.i.i.i.i ], [ %i.wj, %._crit_edge149.i.i.i.i ] ; 3 uses
  %i.rh = uitofp reassoc nsz arcp contract afn i32 %.1121151.i.i.i.i to double
  %i.ri = fmul reassoc nsz arcp contract afn double %i.rh, f0x3FF0295FAD40A57F ; 2 uses
  %i.rj = fadd reassoc nsz arcp contract afn double %i.ri, 5.000000e-01
  %i.rk = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.rj)
  %i.rl = fptosi double %i.rk to i32              ; 8 uses
  %8 = sitofp reassoc nsz arcp contract afn i32 %i.rl to double
  %.neg13.i.i.i = fsub reassoc nsz arcp contract afn double -3.000000e+00, %i.ri
  %i.rm = fadd reassoc nsz arcp contract afn double %.neg13.i.i.i, %8 ; 5 uses
  %i.rn = fmul reassoc nsz arcp contract afn double %i.rm, %i.rm
  %i.ro = fmul reassoc nsz arcp contract afn double %i.rn, f0xBFF5C7AE147AE147
  %i.rp = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.ro) ; 3 uses
  %i.rq = fadd reassoc nsz arcp contract afn double %i.rm, 1.000000e+00 ; 2 uses
  %i.rr = fmul reassoc nsz arcp contract afn double %i.rq, %i.rq
  %i.rs = fmul reassoc nsz arcp contract afn double %i.rr, f0xBFF5C7AE147AE147
  %i.rt = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.rs) ; 3 uses
  %i.ru = fadd reassoc nsz arcp contract afn double %i.rm, 2.000000e+00 ; 2 uses
  %i.rv = fmul reassoc nsz arcp contract afn double %i.ru, %i.ru
  %i.rw = fmul reassoc nsz arcp contract afn double %i.rv, f0xBFF5C7AE147AE147
  %i.rx = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.rw) ; 3 uses
  %i.ry = insertelement <4 x double> poison, double %i.rm, i64 0
  %i.rz = shufflevector <4 x double> %i.ry, <4 x double> poison, <4 x i32> zeroinitializer
  %i.sa = fadd reassoc nsz arcp contract afn <4 x double> %i.rz, <double 6.000000e+00, double 5.000000e+00, double 4.000000e+00, double 3.000000e+00> ; 2 uses
  %i.sb = fmul reassoc nsz arcp contract afn <4 x double> %i.sa, %i.sa
  %i.sc = fmul reassoc nsz arcp contract afn <4 x double> %i.sb, splat (double f0xBFF5C7AE147AE147)
  %i.sd = tail call reassoc nsz arcp contract afn <4 x double> @llvm.exp.v4f64(<4 x double> %i.sc) ; 3 uses
  %op.rdx = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.rt, <4 x double> %i.sd)
  %op.rdx230 = fadd reassoc nsz arcp contract afn double %i.rp, %i.rx
  %op.rdx231 = fadd reassoc nsz arcp contract afn double %op.rdx, %op.rdx230 ; 5 uses
  %i.se = fcmp reassoc nsz arcp contract afn ult double %op.rdx231, 0.000000e+00
  br i1 %i.se, label %gaussian_kernel.exit.i.i.i, label %.lr.ph31.i.preheader.i.i.i

.lr.ph31.i.preheader.i.i.i:                       ; preds = %.lr.ph.i157.i.i.i
  %i.sf = fdiv reassoc nsz arcp contract afn double %i.rp, %op.rdx231
  %i.sg = fdiv reassoc nsz arcp contract afn double %i.rt, %op.rdx231
  %i.sh = fdiv reassoc nsz arcp contract afn double %i.rx, %op.rdx231
  %i.si = insertelement <4 x double> poison, double %op.rdx231, i64 0
  %i.sj = shufflevector <4 x double> %i.si, <4 x double> poison, <4 x i32> zeroinitializer
  %i.sk = fdiv reassoc nsz arcp contract afn <4 x double> %i.sd, %i.sj
  br label %gaussian_kernel.exit.i.i.i

gaussian_kernel.exit.i.i.i:                       ; preds = %.lr.ph31.i.preheader.i.i.i, %.lr.ph.i157.i.i.i
  %i.sl = phi double [ %i.sh, %.lr.ph31.i.preheader.i.i.i ], [ %i.rx, %.lr.ph.i157.i.i.i ]
  %i.sm = phi double [ %i.sg, %.lr.ph31.i.preheader.i.i.i ], [ %i.rt, %.lr.ph.i157.i.i.i ]
  %i.sn = phi double [ %i.sf, %.lr.ph31.i.preheader.i.i.i ], [ %i.rp, %.lr.ph.i157.i.i.i ]
  %i.so = phi <4 x double> [ %i.sk, %.lr.ph31.i.preheader.i.i.i ], [ %i.sd, %.lr.ph.i157.i.i.i ] ; 4 uses
  br i1 %.not156.i.i.i.i, label %._crit_edge149.i.i.i.i, label %.preheader134.lr.ph.split.us.i.i.i.i

.preheader134.lr.ph.split.us.i.i.i.i:             ; preds = %gaussian_kernel.exit.i.i.i
  %i.sp = add i32 %i.rl, -3
  %i.sq = load ptr, ptr %i.ma, align 8, !tbaa !291
  %i.sr = mul i32 %.1121151.i.i.i.i, %i.mk
  %i.ss = load ptr, ptr %i.lz, align 8, !tbaa !291 ; 7 uses
  %i.st = add i32 %i.rl, -2
  %i.su = add i32 %i.rl, -1
  %i.sv = add i32 %i.rl, 1
  %i.sw = add i32 %i.rl, 2
  %i.sx = add i32 %i.rl, 3
  %i.sy = extractelement <4 x double> %i.so, i64 0
  %i.sz = extractelement <4 x double> %i.so, i64 1
  %i.ta = extractelement <4 x double> %i.so, i64 2
  %i.tb = extractelement <4 x double> %i.so, i64 3
  br label %.preheader134.us.i.i.i.i

.preheader134.us.i.i.i.i:                         ; preds = %._crit_edge.us150.i.i.i.i, %.preheader134.lr.ph.split.us.i.i.i.i
  %indvars.iv178.i.i.i.i = phi i64 [ %indvars.iv.next179.i.i.i.i, %._crit_edge.us150.i.i.i.i ], [ 0, %.preheader134.lr.ph.split.us.i.i.i.i ] ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader134.us.i.i.i.i
  %.3.us.i.i.i.i = phi i32 [ %i.sp, %.preheader134.us.i.i.i.i ], [ %i.td, %bb.aq ] ; 3 uses
  %i.tc = icmp slt i32 %.3.us.i.i.i.i, 0
  %i.td = add nsw i32 %.3.us.i.i.i.i, %i.mc
  br i1 %i.tc, label %bb.aq, label %.preheader.us.i.i.i.i

.preheader.us.i.i.i.i:                            ; preds = %bb.aq, %.preheader.us.i.i.i.i
  %.4.us.i.i.i.i = phi i32 [ %i.te, %.preheader.us.i.i.i.i ], [ %.3.us.i.i.i.i, %bb.aq ] ; 5 uses
  %.not.us.i.i.i.i = icmp slt i32 %.4.us.i.i.i.i, %i.mc
  %i.te = sub nsw i32 %.4.us.i.i.i.i, %i.mc
  br i1 %.not.us.i.i.i.i, label %bb.ar, label %.preheader.us.i.i.i.i

bb.ar:                                            ; preds = %.preheader.us.i.i.i.i
  %i.tf = trunc nuw i64 %indvars.iv178.i.i.i.i to i32 ; 8 uses
  %.not129.us.i.i.i.i = icmp slt i32 %.4.us.i.i.i.i, %i.z
  %i.tg = xor i32 %.4.us.i.i.i.i, -1
  %i.th = add i32 %i.mc, %i.tg
  %.5.us.i.i.i.i = select i1 %.not129.us.i.i.i.i, i32 %.4.us.i.i.i.i, i32 %i.th
  %i.ti = mul i32 %.5.us.i.i.i.i, %i.me
  %i.tj = add i32 %i.ti, %i.tf
  %i.tk = zext i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.tk
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !166
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %.3.us.i.1.i.i.i = phi i32 [ %i.st, %bb.ar ], [ %i.to, %bb.as ] ; 3 uses
  %i.tn = icmp slt i32 %.3.us.i.1.i.i.i, 0
  %i.to = add nsw i32 %.3.us.i.1.i.i.i, %i.mc
  br i1 %i.tn, label %bb.as, label %.preheader.us.i.1.i.i.i

.preheader.us.i.1.i.i.i:                          ; preds = %bb.as, %.preheader.us.i.1.i.i.i
  %.4.us.i.1.i.i.i = phi i32 [ %i.tp, %.preheader.us.i.1.i.i.i ], [ %.3.us.i.1.i.i.i, %bb.as ] ; 5 uses
  %.not.us.i.1.i.i.i = icmp slt i32 %.4.us.i.1.i.i.i, %i.mc
  %i.tp = sub nsw i32 %.4.us.i.1.i.i.i, %i.mc
  br i1 %.not.us.i.1.i.i.i, label %bb.at, label %.preheader.us.i.1.i.i.i

bb.at:                                            ; preds = %.preheader.us.i.1.i.i.i
  %.not129.us.i.1.i.i.i = icmp slt i32 %.4.us.i.1.i.i.i, %i.z
  %i.tq = xor i32 %.4.us.i.1.i.i.i, -1
  %i.tr = add i32 %i.mc, %i.tq
  %.5.us.i.1.i.i.i = select i1 %.not129.us.i.1.i.i.i, i32 %.4.us.i.1.i.i.i, i32 %i.tr
  %i.ts = mul i32 %.5.us.i.1.i.i.i, %i.me
  %i.tt = add i32 %i.ts, %i.tf
  %i.tu = zext i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.tu
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !166
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.3.us.i.2.i.i.i = phi i32 [ %i.su, %bb.at ], [ %i.ty, %bb.au ] ; 3 uses
  %i.tx = icmp slt i32 %.3.us.i.2.i.i.i, 0
  %i.ty = add nsw i32 %.3.us.i.2.i.i.i, %i.mc
  br i1 %i.tx, label %bb.au, label %.preheader.us.i.2.i.i.i

.preheader.us.i.2.i.i.i:                          ; preds = %bb.au, %.preheader.us.i.2.i.i.i
  %.4.us.i.2.i.i.i = phi i32 [ %i.tz, %.preheader.us.i.2.i.i.i ], [ %.3.us.i.2.i.i.i, %bb.au ] ; 5 uses
  %.not.us.i.2.i.i.i = icmp slt i32 %.4.us.i.2.i.i.i, %i.mc
  %i.tz = sub nsw i32 %.4.us.i.2.i.i.i, %i.mc
  br i1 %.not.us.i.2.i.i.i, label %.preheader.us.i.preheader.3.i.i.i, label %.preheader.us.i.2.i.i.i

.preheader.us.i.preheader.3.i.i.i:                ; preds = %.preheader.us.i.2.i.i.i
  %.not129.us.i.2.i.i.i = icmp slt i32 %.4.us.i.2.i.i.i, %i.z
  %i.ua = xor i32 %.4.us.i.2.i.i.i, -1
  %i.ub = add i32 %i.mc, %i.ua
  %.5.us.i.2.i.i.i = select i1 %.not129.us.i.2.i.i.i, i32 %.4.us.i.2.i.i.i, i32 %i.ub
  %i.uc = mul i32 %.5.us.i.2.i.i.i, %i.me
  %i.ud = add i32 %i.uc, %i.tf
  %i.ue = zext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.ue
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !166
  br label %9

9:                                                ; preds = %9, %.preheader.us.i.preheader.3.i.i.i
  %.3.us.i.3.i.i.i = phi i32 [ %i.rl, %.preheader.us.i.preheader.3.i.i.i ], [ %11, %9 ] ; 3 uses
  %10 = icmp slt i32 %.3.us.i.3.i.i.i, 0
  %11 = add nsw i32 %.3.us.i.3.i.i.i, %i.mc
  br i1 %10, label %9, label %.preheader.us.i.3.i.i.i

.preheader.us.i.3.i.i.i:                          ; preds = %9, %.preheader.us.i.3.i.i.i
  %.4.us.i.3.i.i.i = phi i32 [ %i.uh, %.preheader.us.i.3.i.i.i ], [ %.3.us.i.3.i.i.i, %9 ] ; 5 uses
  %.not.us.i.3.i.i.i = icmp slt i32 %.4.us.i.3.i.i.i, %i.mc
  %i.uh = sub nsw i32 %.4.us.i.3.i.i.i, %i.mc
  br i1 %.not.us.i.3.i.i.i, label %bb.av, label %.preheader.us.i.3.i.i.i

bb.av:                                            ; preds = %.preheader.us.i.3.i.i.i
  %.not129.us.i.3.i.i.i = icmp slt i32 %.4.us.i.3.i.i.i, %i.z
  %i.ui = xor i32 %.4.us.i.3.i.i.i, -1
  %i.uj = add i32 %i.mc, %i.ui
  %.5.us.i.3.i.i.i = select i1 %.not129.us.i.3.i.i.i, i32 %.4.us.i.3.i.i.i, i32 %i.uj
  %i.uk = mul i32 %.5.us.i.3.i.i.i, %i.me
  %i.ul = add i32 %i.uk, %i.tf
  %i.um = zext i32 %i.ul to i64
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.um
  %i.uo = load double, ptr %i.un, align 8, !tbaa !166
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.3.us.i.4.i.i.i = phi i32 [ %i.sv, %bb.av ], [ %i.uq, %bb.aw ] ; 3 uses
  %i.up = icmp slt i32 %.3.us.i.4.i.i.i, 0
  %i.uq = add nsw i32 %.3.us.i.4.i.i.i, %i.mc
  br i1 %i.up, label %bb.aw, label %.preheader.us.i.4.i.i.i

.preheader.us.i.4.i.i.i:                          ; preds = %bb.aw, %.preheader.us.i.4.i.i.i
  %.4.us.i.4.i.i.i = phi i32 [ %i.ur, %.preheader.us.i.4.i.i.i ], [ %.3.us.i.4.i.i.i, %bb.aw ] ; 5 uses
  %.not.us.i.4.i.i.i = icmp slt i32 %.4.us.i.4.i.i.i, %i.mc
  %i.ur = sub nsw i32 %.4.us.i.4.i.i.i, %i.mc
  br i1 %.not.us.i.4.i.i.i, label %bb.ax, label %.preheader.us.i.4.i.i.i

bb.ax:                                            ; preds = %.preheader.us.i.4.i.i.i
  %.not129.us.i.4.i.i.i = icmp slt i32 %.4.us.i.4.i.i.i, %i.z
  %i.us = xor i32 %.4.us.i.4.i.i.i, -1
  %i.ut = add i32 %i.mc, %i.us
  %.5.us.i.4.i.i.i = select i1 %.not129.us.i.4.i.i.i, i32 %.4.us.i.4.i.i.i, i32 %i.ut
  %i.uu = mul i32 %.5.us.i.4.i.i.i, %i.me
  %i.uv = add i32 %i.uu, %i.tf
  %i.uw = zext i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.uw
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !166
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.3.us.i.5.i.i.i = phi i32 [ %i.sw, %bb.ax ], [ %i.va, %bb.ay ] ; 3 uses
  %i.uz = icmp slt i32 %.3.us.i.5.i.i.i, 0
  %i.va = add nsw i32 %.3.us.i.5.i.i.i, %i.mc
  br i1 %i.uz, label %bb.ay, label %.preheader.us.i.5.i.i.i

.preheader.us.i.5.i.i.i:                          ; preds = %bb.ay, %.preheader.us.i.5.i.i.i
  %.4.us.i.5.i.i.i = phi i32 [ %i.vb, %.preheader.us.i.5.i.i.i ], [ %.3.us.i.5.i.i.i, %bb.ay ] ; 5 uses
  %.not.us.i.5.i.i.i = icmp slt i32 %.4.us.i.5.i.i.i, %i.mc
  %i.vb = sub nsw i32 %.4.us.i.5.i.i.i, %i.mc
  br i1 %.not.us.i.5.i.i.i, label %bb.az, label %.preheader.us.i.5.i.i.i

bb.az:                                            ; preds = %.preheader.us.i.5.i.i.i
  %.not129.us.i.5.i.i.i = icmp slt i32 %.4.us.i.5.i.i.i, %i.z
  %i.vc = xor i32 %.4.us.i.5.i.i.i, -1
  %i.vd = add i32 %i.mc, %i.vc
  %.5.us.i.5.i.i.i = select i1 %.not129.us.i.5.i.i.i, i32 %.4.us.i.5.i.i.i, i32 %i.vd
  %i.ve = mul i32 %.5.us.i.5.i.i.i, %i.me
  %i.vf = add i32 %i.ve, %i.tf
  %i.vg = zext i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.vg
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !166
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %.3.us.i.6.i.i.i = phi i32 [ %i.sx, %bb.az ], [ %i.vk, %bb.ba ] ; 3 uses
  %i.vj = icmp slt i32 %.3.us.i.6.i.i.i, 0
  %i.vk = add nsw i32 %.3.us.i.6.i.i.i, %i.mc
  br i1 %i.vj, label %bb.ba, label %.preheader.us.i.6.i.i.i

.preheader.us.i.6.i.i.i:                          ; preds = %bb.ba, %.preheader.us.i.6.i.i.i
  %.4.us.i.6.i.i.i = phi i32 [ %i.vl, %.preheader.us.i.6.i.i.i ], [ %.3.us.i.6.i.i.i, %bb.ba ] ; 5 uses
  %.not.us.i.6.i.i.i = icmp slt i32 %.4.us.i.6.i.i.i, %i.mc
  %i.vl = sub nsw i32 %.4.us.i.6.i.i.i, %i.mc
  br i1 %.not.us.i.6.i.i.i, label %._crit_edge.us150.i.i.i.i, label %.preheader.us.i.6.i.i.i

._crit_edge.us150.i.i.i.i:                        ; preds = %.preheader.us.i.6.i.i.i
  %i.vm = fmul reassoc nsz arcp contract afn double %i.tm, %i.sn
  %i.vn = fmul reassoc nsz arcp contract afn double %i.tw, %i.sm
  %i.vo = fadd reassoc nsz arcp contract afn double %i.vn, %i.vm
  %i.vp = fmul reassoc nsz arcp contract afn double %i.ug, %i.sl
  %i.vq = fadd reassoc nsz arcp contract afn double %i.vo, %i.vp
  %i.vr = fmul reassoc nsz arcp contract afn double %i.uo, %i.tb
  %i.vs = fadd reassoc nsz arcp contract afn double %i.vq, %i.vr
  %i.vt = fmul reassoc nsz arcp contract afn double %i.uy, %i.ta
  %i.vu = fadd reassoc nsz arcp contract afn double %i.vs, %i.vt
  %i.vv = fmul reassoc nsz arcp contract afn double %i.vi, %i.sz
  %i.vw = fadd reassoc nsz arcp contract afn double %i.vu, %i.vv
  %.not129.us.i.6.i.i.i = icmp slt i32 %.4.us.i.6.i.i.i, %i.z
  %i.vx = xor i32 %.4.us.i.6.i.i.i, -1
  %i.vy = add i32 %i.mc, %i.vx
  %.5.us.i.6.i.i.i = select i1 %.not129.us.i.6.i.i.i, i32 %.4.us.i.6.i.i.i, i32 %i.vy
  %i.vz = mul i32 %.5.us.i.6.i.i.i, %i.me
  %i.wa = add i32 %i.vz, %i.tf
  %i.wb = zext i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.wb
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !166
  %i.we = fmul reassoc nsz arcp contract afn double %i.wd, %i.sy
  %i.wf = fadd reassoc nsz arcp contract afn double %i.vw, %i.we
  %i.wg = add i32 %i.sr, %i.tf
  %i.wh = zext i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.wh
  store double %i.wf, ptr %i.wi, align 8, !tbaa !166
  %indvars.iv.next179.i.i.i.i = add nuw nsw i64 %indvars.iv178.i.i.i.i, 1 ; 2 uses
  %exitcond182.not.i.i.i.i = icmp eq i64 %indvars.iv.next179.i.i.i.i, %wide.trip.count181.i.i.i.i
  br i1 %exitcond182.not.i.i.i.i, label %._crit_edge149.i.i.i.i, label %.preheader134.us.i.i.i.i

._crit_edge149.i.i.i.i:                           ; preds = %._crit_edge.us150.i.i.i.i, %gaussian_kernel.exit.i.i.i
  %i.wj = add nuw i32 %.1121151.i.i.i.i, 1        ; 2 uses
  %exitcond188.not.i.i.i.i = icmp eq i32 %i.wj, %i.mi
  br i1 %exitcond188.not.i.i.i.i, label %free_ntuple_list.exit.i.i.i.i, label %.lr.ph.i157.i.i.i

free_ntuple_list.exit.i.i.i.i:                    ; preds = %._crit_edge149.i.i.i.i, %.preheader135.i.i.i.i
  %i.wk = load ptr, ptr %i.lz, align 8, !tbaa !291 ; 2 uses
  %i.wl = icmp eq ptr %i.wk, null
  br i1 %i.wl, label %bb.bb, label %gaussian_sampler.exit.i.i.i

bb.bb:                                            ; preds = %free_ntuple_list.exit.i.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

gaussian_sampler.exit.i.i.i:                      ; preds = %free_ntuple_list.exit.i.i.i.i
  tail call void @free(ptr noundef nonnull %i.wk) #34
  tail call void @free(ptr noundef nonnull %i.lz) #34
  %i.wm = load ptr, ptr %i.ma, align 8, !tbaa !291 ; 6 uses
  %i.wn = icmp eq ptr %i.wm, null
  br i1 %i.wn, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %gaussian_sampler.exit.i.i.i
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !289 ; 22 uses
  %i.wq = icmp eq i32 %i.wp, 0
  %brmerge.i.i.i = or i1 %.not155.i.i.i.i, %i.wq
  br i1 %brmerge.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %gaussian_sampler.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.133) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.wr = tail call fastcc ptr @new_image_double(i32 noundef %i.wp, i32 noundef %i.mi) ; 32 uses
  %i.ws = tail call fastcc ptr @new_image_double(i32 noundef %i.wp, i32 noundef %i.mi) ; 6 uses
  %i.wt = mul i32 %i.wp, %i.mi
  %i.wu = zext i32 %i.wt to i64
  %i.wv = tail call noalias ptr @calloc(i64 noundef %i.wu, i64 noundef 16) #36 ; 4 uses
  %i.ww = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 1024, i64 noundef 8) #36 ; 21 uses
  %i.wx = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 1024, i64 noundef 8) #36 ; 10 uses
  %i.wy = icmp eq ptr %i.wv, null
  %i.wz = icmp eq ptr %i.ww, null
  %or.cond.i136.i.i.i = or i1 %i.wy, %i.wz
  %i.xa = icmp eq ptr %i.wx, null
  %or.cond3.i.i.i.i = or i1 %or.cond.i136.i.i.i, %i.xa
  br i1 %or.cond3.i.i.i.i, label %bb.bf, label %iter.check

iter.check:                                       ; preds = %bb.be
  %i.xb = load ptr, ptr %i.wr, align 8, !tbaa !291 ; 28 uses
  %i.xc = add i32 %i.mi, -1                       ; 3 uses
  %i.xd = mul i32 %i.wp, %i.xc                    ; 12 uses
  %wide.trip.count.i137.i.i.i = zext i32 %i.wp to i64 ; 9 uses
  %min.iters.check178 = icmp ult i32 %i.wp, 4
  br i1 %min.iters.check178, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.xe = add nsw i64 %wide.trip.count.i137.i.i.i, -1 ; 2 uses
  %i.xf = trunc i64 %i.xe to i32
  %i.xg = xor i32 %i.xd, -1
  %i.xh = icmp ult i32 %i.xg, %i.xf
  %i.xi = icmp ugt i64 %i.xe, 4294967295
  %i.xj = or i1 %i.xh, %i.xi
  br i1 %i.xj, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check179 = icmp ult i32 %i.wp, 16
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.ph180

vector.ph180:                                     ; preds = %vector.main.loop.iter.check
  %i.xk = and i64 %wide.trip.count.i137.i.i.i, 12
  %n.vec181 = and i64 %wide.trip.count.i137.i.i.i, 4294967280 ; 4 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.ph180, %vector.body182
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next184, %vector.body182 ] ; 2 uses
  %i.xl = trunc nuw i64 %index183 to i32
  %i.xm = add i32 %i.xd, %i.xl
  %i.xn = zext i32 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.xn ; 4 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 32
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 64
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xo, i64 96
  store <4 x double> splat (double -1.024000e+03), ptr %i.xo, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xp, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xq, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xr, align 8, !tbaa !166
  %index.next184 = add nuw i64 %index183, 16      ; 2 uses
  %i.xs = icmp eq i64 %index.next184, %n.vec181
  br i1 %i.xs, label %middle.block185, label %vector.body182, !llvm.loop !527

middle.block185:                                  ; preds = %vector.body182
end_hunk_6
begin_hunk_7_@_do_get_structure_auto:bb.a
  br label %free_image_double.exit.i.i.i

.preheader190.i.i.i.i:                            ; preds = %bb.bn, %.preheader190.i.i.i.i.preheader
  %indvars.iv.i = phi i64 [ 1023, %.preheader190.i.i.i.i.preheader ], [ %indvars.iv.next.i.10, %bb.bn ] ; 13 uses
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.i
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !546 ; 2 uses
  %i.ady = icmp eq ptr %i.adx, null
  br i1 %i.ady, label %.preheader190.i.i.i.i.1, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.1:                          ; preds = %.preheader190.i.i.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next.i
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !546 ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, null
  br i1 %i.aeb, label %.preheader190.i.i.i.i.2, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.2:                          ; preds = %.preheader190.i.i.i.i.1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next.i.1
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !546 ; 2 uses
  %i.aee = icmp eq ptr %i.aed, null
  br i1 %i.aee, label %.preheader190.i.i.i.i.3, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.3:                          ; preds = %.preheader190.i.i.i.i.2
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next.i.2
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !546 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, null
  br i1 %i.aeh, label %.preheader190.i.i.i.i.4, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.4:                          ; preds = %.preheader190.i.i.i.i.3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next.i.3
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !546 ; 2 uses
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %.preheader190.i.i.i.i.5, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.5:                          ; preds = %.preheader190.i.i.i.i.4
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, -5 ; 2 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next.i.4
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !546 ; 2 uses
  %i.aen = icmp eq ptr %i.aem, null
  br i1 %i.aen, label %.preheader190.i.i.i.i.6, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.6:                          ; preds = %.preheader190.i.i.i.i.5
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, -6 ; 2 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next.i.5
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !546 ; 2 uses
  %i.aeq = icmp eq ptr %i.aep, null
  br i1 %i.aeq, label %.preheader190.i.i.i.i.7, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.7:                          ; preds = %.preheader190.i.i.i.i.6
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, -7 ; 2 uses
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next.i.6
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !546 ; 2 uses
  %i.aet = icmp eq ptr %i.aes, null
  br i1 %i.aet, label %.preheader190.i.i.i.i.8, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.8:                          ; preds = %.preheader190.i.i.i.i.7
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, -8 ; 2 uses
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next.i.7
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !546 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, null
  br i1 %i.aew, label %.preheader190.i.i.i.i.9, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.9:                          ; preds = %.preheader190.i.i.i.i.8
  %indvars.iv.next.i.8 = add nsw i64 %indvars.iv.i, -9 ; 2 uses
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next.i.8
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !546 ; 2 uses
  %i.aez = icmp eq ptr %i.aey, null
  br i1 %i.aez, label %.preheader190.i.i.i.i.10, label %.preheader.preheader.i.i.i.i

.preheader190.i.i.i.i.10:                         ; preds = %.preheader190.i.i.i.i.9
  %indvars.iv.next.i.9 = add nsw i64 %indvars.iv.i, -10 ; 2 uses
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next.i.9
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !546 ; 2 uses
  %i.afc = icmp eq ptr %i.afb, null
  br i1 %i.afc, label %bb.bn, label %.preheader.preheader.i.i.i.i

bb.bn:                                            ; preds = %.preheader190.i.i.i.i.10
  %indvars.iv.next.i.10 = add nsw i64 %indvars.iv.i, -11 ; 2 uses
  %.not188.i.i.i.i.10 = icmp eq i64 %indvars.iv.next.i.10, 0
  br i1 %.not188.i.i.i.i.10, label %.critedge.thread.i.i.i.i, label %.preheader190.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.preheader190.i.i.i.i.10, %.preheader190.i.i.i.i.9, %.preheader190.i.i.i.i.8, %.preheader190.i.i.i.i.7, %.preheader190.i.i.i.i.6, %.preheader190.i.i.i.i.5, %.preheader190.i.i.i.i.4, %.preheader190.i.i.i.i.3, %.preheader190.i.i.i.i.2, %.preheader190.i.i.i.i.1, %.preheader190.i.i.i.i
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %.preheader190.i.i.i.i ], [ %indvars.iv.next.i, %.preheader190.i.i.i.i.1 ], [ %indvars.iv.next.i.1, %.preheader190.i.i.i.i.2 ], [ %indvars.iv.next.i.2, %.preheader190.i.i.i.i.3 ], [ %indvars.iv.next.i.3, %.preheader190.i.i.i.i.4 ], [ %indvars.iv.next.i.4, %.preheader190.i.i.i.i.5 ], [ %indvars.iv.next.i.5, %.preheader190.i.i.i.i.6 ], [ %indvars.iv.next.i.6, %.preheader190.i.i.i.i.7 ], [ %indvars.iv.next.i.7, %.preheader190.i.i.i.i.8 ], [ %indvars.iv.next.i.8, %.preheader190.i.i.i.i.9 ], [ %indvars.iv.next.i.9, %.preheader190.i.i.i.i.10 ] ; 5 uses
  %.lcssa245 = phi ptr [ %i.adx, %.preheader190.i.i.i.i ], [ %i.aea, %.preheader190.i.i.i.i.1 ], [ %i.aed, %.preheader190.i.i.i.i.2 ], [ %i.aeg, %.preheader190.i.i.i.i.3 ], [ %i.aej, %.preheader190.i.i.i.i.4 ], [ %i.aem, %.preheader190.i.i.i.i.5 ], [ %i.aep, %.preheader190.i.i.i.i.6 ], [ %i.aes, %.preheader190.i.i.i.i.7 ], [ %i.aev, %.preheader190.i.i.i.i.8 ], [ %i.aey, %.preheader190.i.i.i.i.9 ], [ %i.afb, %.preheader190.i.i.i.i.10 ] ; 2 uses
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %indvars.iv.i.lcssa
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !546 ; 2 uses
  %i.aff = add nsw i64 %indvars.iv.i.lcssa, -1
  %xtraiter257 = and i64 %indvars.iv.i.lcssa, 3   ; 2 uses
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol

.preheader.i.i.i.i.prol:                          ; preds = %.preheader.preheader.i.i.i.i, %bb.bp
  %indvars.iv246.i.i.i.i.prol = phi i64 [ %i.afg, %bb.bp ], [ %indvars.iv.i.lcssa, %.preheader.preheader.i.i.i.i ]
  %.0160.i.i.i.i.prol = phi ptr [ %.1161.i.i.i.i.prol, %bb.bp ], [ %i.afe, %.preheader.preheader.i.i.i.i ] ; 2 uses
  %prol.iter259 = phi i64 [ %prol.iter259.next, %bb.bp ], [ 0, %.preheader.preheader.i.i.i.i ]
  %i.afg = add nsw i64 %indvars.iv246.i.i.i.i.prol, -1 ; 4 uses
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %i.afg
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !546 ; 2 uses
  %.not.i144.i.i.i.prol = icmp eq ptr %i.afi, null
  br i1 %.not.i144.i.i.i.prol, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.preheader.i.i.i.i.prol
  %i.afj = getelementptr inbounds nuw i8, ptr %.0160.i.i.i.i.prol, i64 8
  store ptr %i.afi, ptr %i.afj, align 8, !tbaa !548
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %i.afg
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !546
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.preheader.i.i.i.i.prol
  %.1161.i.i.i.i.prol = phi ptr [ %i.afl, %bb.bo ], [ %.0160.i.i.i.i.prol, %.preheader.i.i.i.i.prol ] ; 2 uses
  %prol.iter259.next = add i64 %prol.iter259, 1   ; 2 uses
  %prol.iter259.cmp.not = icmp eq i64 %prol.iter259.next, %xtraiter257
  br i1 %prol.iter259.cmp.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol, !llvm.loop !535

.preheader.i.i.i.i.prol.loopexit:                 ; preds = %bb.bp, %.preheader.preheader.i.i.i.i
  %indvars.iv246.i.i.i.i.unr = phi i64 [ %indvars.iv.i.lcssa, %.preheader.preheader.i.i.i.i ], [ %i.afg, %bb.bp ]
  %.0160.i.i.i.i.unr = phi ptr [ %i.afe, %.preheader.preheader.i.i.i.i ], [ %.1161.i.i.i.i.prol, %bb.bp ]
  %i.afm = icmp ult i64 %i.aff, 3
  br i1 %i.afm, label %free_image_double.exit.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.prol.loopexit, %bb.bu
  %indvars.iv246.i.i.i.i = phi i64 [ %i.agf, %bb.bu ], [ %indvars.iv246.i.i.i.i.unr, %.preheader.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0160.i.i.i.i = phi ptr [ %.1161.i.i.i.i.3, %bb.bu ], [ %.0160.i.i.i.i.unr, %.preheader.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.afn = add nsw i64 %indvars.iv246.i.i.i.i, -1 ; 2 uses
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %i.afn
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !546 ; 2 uses
  %.not.i144.i.i.i = icmp eq ptr %i.afp, null
  br i1 %.not.i144.i.i.i, label %.preheader.i.i.i.i.1, label %bb.bq

bb.bq:                                            ; preds = %.preheader.i.i.i.i
  %i.afq = getelementptr inbounds nuw i8, ptr %.0160.i.i.i.i, i64 8
  store ptr %i.afp, ptr %i.afq, align 8, !tbaa !548
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %i.afn
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !546
  br label %.preheader.i.i.i.i.1

.preheader.i.i.i.i.1:                             ; preds = %bb.bq, %.preheader.i.i.i.i
  %.1161.i.i.i.i = phi ptr [ %i.afs, %bb.bq ], [ %.0160.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.aft = add nsw i64 %indvars.iv246.i.i.i.i, -2 ; 2 uses
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %i.aft
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !546 ; 2 uses
  %.not.i144.i.i.i.1 = icmp eq ptr %i.afv, null
  br i1 %.not.i144.i.i.i.1, label %.preheader.i.i.i.i.2, label %bb.br

bb.br:                                            ; preds = %.preheader.i.i.i.i.1
  %i.afw = getelementptr inbounds nuw i8, ptr %.1161.i.i.i.i, i64 8
  store ptr %i.afv, ptr %i.afw, align 8, !tbaa !548
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %i.aft
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !546
  br label %.preheader.i.i.i.i.2

.preheader.i.i.i.i.2:                             ; preds = %bb.br, %.preheader.i.i.i.i.1
  %.1161.i.i.i.i.1 = phi ptr [ %i.afy, %bb.br ], [ %.1161.i.i.i.i, %.preheader.i.i.i.i.1 ] ; 2 uses
  %i.afz = add nsw i64 %indvars.iv246.i.i.i.i, -3 ; 2 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %i.afz
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !546 ; 2 uses
  %.not.i144.i.i.i.2 = icmp eq ptr %i.agb, null
  br i1 %.not.i144.i.i.i.2, label %.preheader.i.i.i.i.3, label %bb.bs

bb.bs:                                            ; preds = %.preheader.i.i.i.i.2
  %i.agc = getelementptr inbounds nuw i8, ptr %.1161.i.i.i.i.1, i64 8
  store ptr %i.agb, ptr %i.agc, align 8, !tbaa !548
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %i.afz
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !546
  br label %.preheader.i.i.i.i.3

.preheader.i.i.i.i.3:                             ; preds = %bb.bs, %.preheader.i.i.i.i.2
  %.1161.i.i.i.i.2 = phi ptr [ %i.age, %bb.bs ], [ %.1161.i.i.i.i.1, %.preheader.i.i.i.i.2 ] ; 2 uses
  %i.agf = add nsw i64 %indvars.iv246.i.i.i.i, -4 ; 4 uses
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %i.agf
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !546 ; 2 uses
  %.not.i144.i.i.i.3 = icmp eq ptr %i.agh, null
  br i1 %.not.i144.i.i.i.3, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.preheader.i.i.i.i.3
  %i.agi = getelementptr inbounds nuw i8, ptr %.1161.i.i.i.i.2, i64 8
  store ptr %i.agh, ptr %i.agi, align 8, !tbaa !548
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %i.agf
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !546
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.preheader.i.i.i.i.3
  %.1161.i.i.i.i.3 = phi ptr [ %i.agk, %bb.bt ], [ %.1161.i.i.i.i.2, %.preheader.i.i.i.i.3 ]
  %.old4.not.wide.i.i.i.i.3 = icmp eq i64 %i.agf, 0
  br i1 %.old4.not.wide.i.i.i.i.3, label %free_image_double.exit.i.i.i, label %.preheader.i.i.i.i

free_image_double.exit.i.i.i:                     ; preds = %.preheader.i.i.i.i.prol.loopexit, %bb.bu, %.critedge.thread.i.i.i.i
  %i.agl = phi ptr [ %i.adv, %.critedge.thread.i.i.i.i ], [ %.lcssa245, %bb.bu ], [ %.lcssa245, %.preheader.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @free(ptr noundef nonnull %i.ww) #34
  tail call void @free(ptr noundef %i.wx) #34
  tail call void @free(ptr noundef nonnull %i.wm) #34
  tail call void @free(ptr noundef nonnull %i.ma) #34
  %i.agm = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.agn = load i32, ptr %i.agm, align 8, !tbaa !289 ; 8 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.wr, i64 12
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !290 ; 4 uses
  %i.agq = uitofp reassoc nsz arcp contract afn i32 %i.agn to double
  %i.agr = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.agq)
  %i.ags = uitofp reassoc nsz arcp contract afn i32 %i.agp to double
  %i.agt = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.ags)
  %i.agu = fadd reassoc nsz arcp contract afn double %i.agt, %i.agr
  %i.agv = fmul reassoc nsz arcp contract afn double %i.agu, 2.500000e+00
  %i.agw = fadd reassoc nsz arcp contract afn double %i.agv, f0x3FF0A98B6050C56E ; 27 uses
  %i.agx = fmul reassoc nsz arcp contract afn double %i.agw, f0x3FF1B78A065117A1
  %i.agy = fptosi double %i.agx to i32
  %i.agz = icmp eq i32 %i.agn, 0
  %i.aha = icmp eq i32 %i.agp, 0
  %or.cond.i.i.i.i.i = or i1 %i.agz, %i.aha
  br i1 %or.cond.i.i.i.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %free_image_double.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.142) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.bw:                                            ; preds = %free_image_double.exit.i.i.i
  %i.ahb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.ahc = icmp eq ptr %i.ahb, null
  br i1 %i.ahc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.ahd = mul i32 %i.agp, %i.agn
  %i.ahe = zext i32 %i.ahd to i64                 ; 2 uses
  %i.ahf = tail call noalias ptr @calloc(i64 noundef %i.ahe, i64 noundef 1) #36 ; 6 uses
  store ptr %i.ahf, ptr %i.ahb, align 8, !tbaa !293
  %i.ahg = icmp eq ptr %i.ahf, null
  br i1 %i.ahg, label %bb.bz, label %new_image_char_ini.exit.i.i.i

bb.bz:                                            ; preds = %bb.by
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_image_char_ini.exit.i.i.i:                    ; preds = %bb.by
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  store i32 %i.agn, ptr %i.ahh, align 8, !tbaa !294
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahb, i64 12
  store i32 %i.agp, ptr %i.ahi, align 4, !tbaa !295
  %i.ahj = tail call noalias ptr @calloc(i64 noundef %i.ahe, i64 noundef 8) #36 ; 13 uses
  %i.ahk = icmp eq ptr %i.ahj, null
  br i1 %i.ahk, label %bb.ca, label %.preheader.i200.i.i

.preheader.i200.i.i:                              ; preds = %new_image_char_ini.exit.i.i.i
  %.not28.i.i.i = icmp eq ptr %i.agl, null
  br i1 %.not28.i.i.i, label %._crit_edge.i203.i.i, label %.lr.ph.i201.i.i

.lr.ph.i201.i.i:                                  ; preds = %.preheader.i200.i.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 35 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  %i.ahq = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 17 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 18 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 18 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 10 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 8 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 21 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  br label %bb.cb

bb.ca:                                            ; preds = %new_image_char_ini.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.115) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.cb:                                            ; preds = %bb.fo, %.lr.ph.i201.i.i
  %.0829.i.i.i = phi ptr [ %i.agl, %.lr.ph.i201.i.i ], [ %i.axq, %bb.fo ] ; 3 uses
  %i.aib = load i32, ptr %.0829.i.i.i, align 8, !tbaa !549 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.0829.i.i.i, i64 4
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !550 ; 2 uses
  %i.aie = mul i32 %i.aid, %i.agn
  %i.aif = add i32 %i.aie, %i.aib
  %i.aig = zext i32 %i.aif to i64                 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.aig
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !177
  %i.aij = icmp eq i8 %i.aii, 0
  br i1 %i.aij, label %bb.cc, label %bb.fo

bb.cc:                                            ; preds = %bb.cb
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.aig
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !166
  %i.aim = fcmp reassoc nsz arcp contract afn une double %i.ail, -1.024000e+03
  br i1 %i.aim, label %bb.cd, label %bb.fo

bb.cd:                                            ; preds = %bb.cc
  call fastcc void @region_grow(i32 noundef %i.aib, i32 noundef %i.aid, ptr noundef nonnull %i.wr, ptr noundef nonnull %i.ahj, ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull %i.ahb, double noundef f0x3FD921FB54442D18)
  %i.ain = load i32, ptr %i.b, align 4, !tbaa !17 ; 5 uses
  %i.aio = icmp slt i32 %i.ain, %i.agy
  br i1 %i.aio, label %bb.fo, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.aip = load double, ptr %i.c, align 8, !tbaa !166 ; 2 uses
  call fastcc void @region2rect(ptr noundef nonnull %i.ahj, i32 noundef %i.ain, ptr noundef nonnull %i.ws, double noundef %i.aip, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.aip, ptr %i.a, align 8, !tbaa !166
  %i.aiq = sitofp reassoc nsz arcp contract afn i32 %i.ain to double
  %i.air = load double, ptr %3, align 16, !tbaa !297
  %i.ais = load double, ptr %i.ahl, align 8, !tbaa !298
  %i.ait = load double, ptr %i.ahm, align 16, !tbaa !299
  %i.aiu = load double, ptr %i.ahn, align 8, !tbaa !300
  %i.aiv = fsub reassoc nsz arcp contract afn double %i.ait, %i.air ; 2 uses
  %i.aiw = fmul reassoc nsz arcp contract afn double %i.aiv, %i.aiv
  %i.aix = fsub reassoc nsz arcp contract afn double %i.aiu, %i.ais ; 2 uses
  %i.aiy = fmul reassoc nsz arcp contract afn double %i.aix, %i.aix
  %i.aiz = fadd reassoc nsz arcp contract afn double %i.aiy, %i.aiw
  %i.aja = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.aiz)
  %i.ajb = load double, ptr %i.aho, align 16, !tbaa !301 ; 2 uses
  %i.ajc = fmul reassoc nsz arcp contract afn double %i.aja, %i.ajb
  %i.ajd = fdiv reassoc nsz arcp contract afn double %i.aiq, %i.ajc
  %i.aje = fcmp reassoc nsz arcp contract afn ult double %i.ajd, f0x3FE6666666666666
  br i1 %i.aje, label %bb.cf, label %bb.co

bb.cf:                                            ; preds = %bb.ce
  %i.ajf = load i32, ptr %i.ahj, align 4, !tbaa !303 ; 3 uses
  %i.ajg = sitofp reassoc nsz arcp contract afn i32 %i.ajf to double
  %i.ajh = load i32, ptr %i.ahp, align 4, !tbaa !304 ; 3 uses
  %i.aji = sitofp reassoc nsz arcp contract afn i32 %i.ajh to double
  %i.ajj = mul i32 %i.ajh, %i.agn
  %i.ajk = add i32 %i.ajj, %i.ajf
  %i.ajl = zext i32 %i.ajk to i64
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.ajl
  %i.ajn = load double, ptr %i.ajm, align 8, !tbaa !166
  %i.ajo = icmp sgt i32 %i.ain, 0
  br i1 %i.ajo, label %.lr.ph.i147.preheader.i.i.i, label %refine.exit.thread.i.i.i

.lr.ph.i147.preheader.i.i.i:                      ; preds = %bb.cf
  %i.ajp = zext nneg i32 %i.ain to i64
  br label %.lr.ph.i147.i.i.i

.lr.ph.i147.i.i.i:                                ; preds = %bb.ch, %.lr.ph.i147.preheader.i.i.i
  %indvars.iv.i148.i.i.i = phi i64 [ %indvars.iv.next.i149.i.i.i, %bb.ch ], [ 0, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %.0110.i.i.i.i = phi i32 [ %.1.i.i.i.i, %bb.ch ], [ 0, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %.093108.i.i.i.i = phi double [ %.194.i.i.i.i, %bb.ch ], [ 0.000000e+00, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %.095107.i.i.i.i = phi double [ %.196.i.i.i.i, %bb.ch ], [ 0.000000e+00, %.lr.ph.i147.preheader.i.i.i ] ; 2 uses
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.ahj, i64 %indvars.iv.i148.i.i.i ; 2 uses
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !303 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajq, i64 4
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !304 ; 2 uses
  %i.aju = mul i32 %i.ajt, %i.agn
  %i.ajv = add i32 %i.aju, %i.ajr
  %i.ajw = zext i32 %i.ajv to i64                 ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.ajw
  store i8 0, ptr %i.ajx, align 1, !tbaa !177
  %i.ajy = sitofp reassoc nsz arcp contract afn i32 %i.ajr to double
  %i.ajz = sitofp reassoc nsz arcp contract afn i32 %i.ajt to double
  %i.aka = fsub reassoc nsz arcp contract afn double %i.ajy, %i.ajg ; 2 uses
  %i.akb = fmul reassoc nsz arcp contract afn double %i.aka, %i.aka
  %i.akc = fsub reassoc nsz arcp contract afn double %i.ajz, %i.aji ; 2 uses
  %i.akd = fmul reassoc nsz arcp contract afn double %i.akc, %i.akc
  %i.ake = fadd reassoc nsz arcp contract afn double %i.akd, %i.akb
  %i.akf = tail call reassoc nsz arcp contract afn noundef double @llvm.sqrt.f64(double %i.ake)
  %i.akg = fcmp reassoc nsz arcp contract afn olt double %i.akf, %i.ajb
  br i1 %i.akg, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i147.i.i.i
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.ajw
  %i.aki = load double, ptr %i.akh, align 8, !tbaa !166
  %i.akj = fsub reassoc nsz arcp contract afn double %i.aki, %i.ajn ; 3 uses
  %i.akk = fcmp reassoc nsz arcp contract afn ugt double %i.akj, f0xC00921FB54442D18
  br i1 %i.akk, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.cg
  %.0.lcssa.i.i.i.i.i = phi double [ %i.akj, %bb.cg ], [ %i.akm, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.akl = fcmp reassoc nsz arcp contract afn ogt double %.0.lcssa.i.i.i.i.i, f0x400921FB54442D18
  br i1 %i.akl, label %.lr.ph9.i.i.i.i.i, label %angle_diff_signed.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cg, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi double [ %i.akm, %.lr.ph.i.i.i.i.i ], [ %i.akj, %bb.cg ]
  %i.akm = fadd reassoc nsz arcp contract afn double %.07.i.i.i.i.i, f0x401921FB54442D18 ; 3 uses
  %i.akn = fcmp reassoc nsz arcp contract afn ugt double %i.akm, f0xC00921FB54442D18
  br i1 %i.akn, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph9.i.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i, %.lr.ph9.i.i.i.i.i
  %.18.i.i.i.i.i = phi double [ %i.ako, %.lr.ph9.i.i.i.i.i ], [ %.0.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %i.ako = fadd reassoc nsz arcp contract afn double %.18.i.i.i.i.i, f0xC01921FB54442D18 ; 3 uses
  %i.akp = fcmp reassoc nsz arcp contract afn ogt double %i.ako, f0x400921FB54442D18
  br i1 %i.akp, label %.lr.ph9.i.i.i.i.i, label %angle_diff_signed.exit.i.i.i.i

angle_diff_signed.exit.i.i.i.i:                   ; preds = %.lr.ph9.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.1.lcssa.i.i.i.i.i = phi double [ %.0.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.ako, %.lr.ph9.i.i.i.i.i ] ; 3 uses
  %i.akq = fadd reassoc nsz arcp contract afn double %.1.lcssa.i.i.i.i.i, %.095107.i.i.i.i
  %i.akr = fmul reassoc nsz arcp contract afn double %.1.lcssa.i.i.i.i.i, %.1.lcssa.i.i.i.i.i
  %i.aks = fadd reassoc nsz arcp contract afn double %i.akr, %.093108.i.i.i.i
  %i.akt = add nsw i32 %.0110.i.i.i.i, 1
  br label %bb.ch

bb.ch:                                            ; preds = %angle_diff_signed.exit.i.i.i.i, %.lr.ph.i147.i.i.i
  %.196.i.i.i.i = phi nsz double [ %i.akq, %angle_diff_signed.exit.i.i.i.i ], [ %.095107.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 3 uses
  %.194.i.i.i.i = phi nsz double [ %i.aks, %angle_diff_signed.exit.i.i.i.i ], [ %.093108.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi i32 [ %i.akt, %angle_diff_signed.exit.i.i.i.i ], [ %.0110.i.i.i.i, %.lr.ph.i147.i.i.i ] ; 3 uses
  %indvars.iv.next.i149.i.i.i = add nuw nsw i64 %indvars.iv.i148.i.i.i, 1 ; 2 uses
  %exitcond.not.i204.i.i = icmp eq i64 %indvars.iv.next.i149.i.i.i, %i.ajp
  br i1 %exitcond.not.i204.i.i, label %._crit_edge.i150.i.i.i, label %.lr.ph.i147.i.i.i

end_hunk_7
begin_hunk_8_@rect_nfa:bb.a
  %i.ak = fcmp reassoc nsz arcp contract afn ugt double %i.o, %i.y
  %or.cond.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i, label %bb.f, label %ri_ini.exit

bb.f:                                             ; preds = %bb.e
  %i.al = fcmp reassoc nsz arcp contract afn oge double %i.f, %i.u
  %i.am = fcmp reassoc nsz arcp contract afn olt double %i.o, %i.y
  %or.cond56.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond56.i, label %ri_ini.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = fcmp reassoc nsz arcp contract afn ule double %i.f, %i.u
  %i.ao = fcmp reassoc nsz arcp contract afn ult double %i.o, %i.y
  %or.cond57.i = select i1 %i.an, i1 true, i1 %i.ao
  %i.ap = select i1 %or.cond57.i, i64 3, i64 2
  br label %ri_ini.exit

ri_ini.exit:                                      ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ap, %bb.g ], [ 0, %bb.e ], [ 1, %bb.f ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !166 ; 2 uses
  store double %i.as, ptr %i.d, align 8, !tbaa !166
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !166 ; 2 uses
  store double %i.au, ptr %i.aq, align 8, !tbaa !166
  %i.av = add nuw nsw i64 %.0.i, 1
  %i.aw = and i64 %i.av, 3                        ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !166
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.ay, ptr %i.az, align 8, !tbaa !166
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !166
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store double %i.bb, ptr %i.bc, align 8, !tbaa !166
  %i.bd = xor i64 %.0.i, 2                        ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !166
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store double %i.bf, ptr %i.bg, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !166
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store double %i.bi, ptr %i.bj, align 8, !tbaa !166
  %i.bk = add nuw nsw i64 %.0.i, 3
  %i.bl = and i64 %i.bk, 3                        ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !166
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double %i.bn, ptr %i.bo, align 8, !tbaa !166
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bl
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !166
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store double %i.bq, ptr %i.br, align 8, !tbaa !166
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.bu = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.au, i64 1
  %i.bw = tail call reassoc nsz arcp contract afn <2 x double> @llvm.ceil.v2f64(<2 x double> %i.bv)
  %i.bx = fptosi <2 x double> %i.bw to <2 x i32>
  %i.by = add nsw <2 x i32> %i.bx, <i32 -1, i32 0>
  store <2 x i32> %i.by, ptr %i.bs, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.bz, align 8, !tbaa !166
  tail call fastcc void @ri_inc(ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ca = load i32, ptr %i.bs, align 8, !tbaa !313 ; 2 uses
  %i.cb = sitofp reassoc nsz arcp contract afn i32 %i.ca to double
  %i.cc = load double, ptr %i.bg, align 8, !tbaa !166
  %i.cd = fcmp reassoc nsz arcp contract afn uge double %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph, label %ri_del.exit

.lr.ph:                                           ; preds = %ri_ini.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %ri_end.exit
  %i.ci = phi i32 [ %i.ca, %.lr.ph ], [ %i.dl, %ri_end.exit ] ; 3 uses
  %.088 = phi i32 [ 0, %.lr.ph ], [ %.1, %ri_end.exit ] ; 6 uses
  %.02287 = phi i32 [ 0, %.lr.ph ], [ %.123, %ri_end.exit ] ; 5 uses
  %i.cj = icmp sgt i32 %i.ci, -1
  br i1 %i.cj, label %bb.i, label %ri_end.exit

bb.i:                                             ; preds = %bb.h
  %i.ck = load i32, ptr %i.bt, align 4, !tbaa !314 ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.j, label %ri_end.exit

bb.j:                                             ; preds = %bb.i
  %i.cm = load i32, ptr %i.ce, align 8, !tbaa !289 ; 2 uses
  %i.cn = icmp slt i32 %i.ci, %i.cm
  br i1 %i.cn, label %bb.k, label %ri_end.exit

bb.k:                                             ; preds = %bb.j
  %i.co = load i32, ptr %i.cf, align 4, !tbaa !290
  %i.cp = icmp slt i32 %i.ck, %i.co
  br i1 %i.cp, label %bb.l, label %ri_end.exit

bb.l:                                             ; preds = %bb.k
  %i.cq = add nsw i32 %.02287, 1                  ; 2 uses
  %i.cr = load double, ptr %i.cg, align 8, !tbaa !309
  %i.cs = load double, ptr %i.ch, align 8, !tbaa !575 ; 2 uses
  %i.ct = load ptr, ptr %1, align 8, !tbaa !291   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.149) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cv = fcmp reassoc nsz arcp contract afn olt double %i.cs, 0.000000e+00
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.151) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cw = mul i32 %i.cm, %i.ck
  %i.cx = add i32 %i.cw, %i.ci
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !166 ; 2 uses
  %i.db = fcmp reassoc nsz arcp contract afn oeq double %i.da, -1.024000e+03
  br i1 %i.db, label %isaligned.exit.thread, label %isaligned.exit

isaligned.exit:                                   ; preds = %bb.p
  %i.dc = fsub reassoc nsz arcp contract afn double %i.cr, %i.da ; 3 uses
  %i.dd = fcmp reassoc nsz arcp contract afn olt double %i.dc, 0.000000e+00
  %i.de = fneg reassoc nsz arcp contract afn double %i.dc
  %spec.select.i = select nsz i1 %i.dd, double %i.de, double %i.dc ; 3 uses
  %i.df = fcmp reassoc nsz arcp contract afn ogt double %spec.select.i, f0x4012D97C7F3321D2
  %i.dg = fadd reassoc nsz arcp contract afn double %spec.select.i, f0xC01921FB54442D18 ; 3 uses
  %i.dh = fcmp reassoc nsz arcp contract afn olt double %i.dg, 0.000000e+00
  %i.di = fneg reassoc nsz arcp contract afn double %i.dg
  %spec.select35.i = select nsz i1 %i.dh, double %i.di, double %i.dg
  %.1.i = select nsz i1 %i.df, double %spec.select35.i, double %spec.select.i
  %i.dj = fcmp reassoc nsz arcp contract afn ugt double %.1.i, %i.cs
  %i.dk = add nsw i32 %.088, 1
  %cond.fr = freeze i1 %i.dj
  br i1 %cond.fr, label %isaligned.exit.thread, label %ri_end.exit

isaligned.exit.thread:                            ; preds = %bb.p, %isaligned.exit
  br label %ri_end.exit

ri_end.exit:                                      ; preds = %isaligned.exit.thread, %isaligned.exit, %bb.h, %bb.i, %bb.j, %bb.k
  %.123 = phi i32 [ %.02287, %bb.h ], [ %.02287, %bb.i ], [ %.02287, %bb.k ], [ %.02287, %bb.j ], [ %i.cq, %isaligned.exit ], [ %i.cq, %isaligned.exit.thread ] ; 2 uses
  %.1 = phi i32 [ %.088, %bb.h ], [ %.088, %bb.i ], [ %.088, %bb.k ], [ %.088, %bb.j ], [ %i.dk, %isaligned.exit ], [ %.088, %isaligned.exit.thread ] ; 2 uses
  tail call fastcc void @ri_inc(ptr noundef nonnull %i.d)
  %i.dl = load i32, ptr %i.bs, align 8, !tbaa !313 ; 2 uses
  %i.dm = sitofp reassoc nsz arcp contract afn i32 %i.dl to double
  %i.dn = load double, ptr %i.bg, align 8, !tbaa !166
  %i.do = fcmp reassoc nsz arcp contract afn uge double %i.dn, %i.dm
  br i1 %i.do, label %bb.h, label %ri_del.exit

ri_del.exit:                                      ; preds = %ri_end.exit, %ri_ini.exit
  %.022.lcssa = phi i32 [ 0, %ri_ini.exit ], [ %.123, %ri_end.exit ] ; 8 uses
  %.0.lcssa = phi i32 [ 0, %ri_ini.exit ], [ %.1, %ri_end.exit ] ; 7 uses
  tail call void @free(ptr noundef nonnull %i.d) #34
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !305 ; 7 uses
  %i.dr = or i32 %.0.lcssa, %.022.lcssa
  %or.cond.not.i = icmp sgt i32 %i.dr, -1
  br i1 %or.cond.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %ri_del.exit
  %i.ds = icmp sgt i32 %.0.lcssa, %.022.lcssa
  %i.dt = fcmp reassoc nsz arcp contract afn ole double %i.dq, 0.000000e+00
  %or.cond3.i = or i1 %i.ds, %i.dt
  %i.du = fcmp reassoc nsz arcp contract afn oge double %i.dq, 1.000000e+00
  %or.cond5.i = or i1 %i.du, %or.cond3.i
  br i1 %or.cond5.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %ri_del.exit
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.183) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.dv = icmp eq i32 %.0.lcssa, 0
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dw = fneg reassoc nsz arcp contract afn double %2
  br label %nfa.exit

bb.u:                                             ; preds = %bb.s
  %i.dx = icmp eq i32 %.022.lcssa, %.0.lcssa
  br i1 %i.dx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dy = sitofp reassoc nsz arcp contract afn i32 %.022.lcssa to double
  %i.dz = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.dq)
  %i.ea = fmul reassoc nsz arcp contract afn double %i.dz, %i.dy
  %i.eb = fadd reassoc nsz arcp contract afn double %i.ea, %2
  %i.ec = fneg reassoc nsz arcp contract afn double %i.eb
  br label %nfa.exit

bb.w:                                             ; preds = %bb.u
  %i.ed = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.dq ; 2 uses
  %i.ee = sitofp reassoc nsz arcp contract afn i32 %.022.lcssa to double ; 12 uses
  %i.ef = fadd reassoc nsz arcp contract afn double %i.ee, 1.000000e+00 ; 13 uses
  %i.eg = fcmp reassoc nsz arcp contract afn ogt double %i.ef, 1.500000e+01
  br i1 %i.eg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eh = fadd reassoc nsz arcp contract afn double %i.ee, 5.000000e-01
  %i.ei = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ef)
  %i.ej = fmul reassoc nsz arcp contract afn double %i.ei, %i.eh
  %i.ek = fmul reassoc nsz arcp contract afn double %i.ef, 5.000000e-01
  %i.el = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.ef, i32 6)
  %i.em = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.el, i64 1
  %i.eo = fdiv reassoc nsz arcp contract afn <2 x double> <double 1.000000e+00, double f0x3F543A2730ABEE4D>, %i.en ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  %i.eq = tail call reassoc nsz arcp contract afn double @llvm.sinh.f64(double %i.ep)
  %i.er = fmul reassoc nsz arcp contract afn double %i.eq, %i.ef
  %i.es = extractelement <2 x double> %i.eo, i64 1
  %i.et = fadd reassoc nsz arcp contract afn double %i.er, %i.es
  %i.eu = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.et)
  %i.ev = fmul reassoc nsz arcp contract afn double %i.ek, %i.eu
  %i.ew = fsub reassoc nsz arcp contract afn double f0xBFB4C071BCDA0A48, %i.ee
  %i.ex = fadd reassoc nsz arcp contract afn double %i.ew, %i.ej
  %i.ey = fadd reassoc nsz arcp contract afn double %i.ex, %i.ev
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ez = fadd reassoc nsz arcp contract afn double %i.ee, 1.500000e+00
  %i.fa = fadd reassoc nsz arcp contract afn double %i.ee, 6.500000e+00 ; 2 uses
  %i.fb = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fa)
  %i.fc = fmul reassoc nsz arcp contract afn double %i.fb, %i.ez
  %i.fd = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ef)
  %i.fe = fadd reassoc nsz arcp contract afn double %i.ee, 2.000000e+00
  %i.ff = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fe)
  %i.fg = fadd reassoc nsz arcp contract afn double %i.ee, 3.000000e+00
  %i.fh = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fg)
  %i.fi = fmul reassoc nsz arcp contract afn double %i.ef, f0x40E1BA8971D996E0
  %i.fj = fadd reassoc nsz arcp contract afn double %i.ee, 4.000000e+00
  %i.fk = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fj)
  %i.fl = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.ef, i32 3)
  %i.fm = fmul reassoc nsz arcp contract afn double %i.fl, f0x40C0F79F65E4CBC7
  %i.fn = fadd reassoc nsz arcp contract afn double %i.ee, 5.000000e+00
  %i.fo = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fn)
  %i.fp = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.ef, i32 4)
  %i.fq = fmul reassoc nsz arcp contract afn double %i.fp, f0x409243B4BB0CDBDC
  %i.fr = fadd reassoc nsz arcp contract afn double %i.ee, 6.000000e+00
  %i.fs = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fr)
  %i.ft = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.ef, i32 5)
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, f0x4054F786D45D1E70
  %i.fv = fadd reassoc nsz arcp contract afn double %i.ee, 7.000000e+00
  %i.fw = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fv)
  %i.fx = fadd reassoc nsz arcp contract afn double %i.fa, %i.fd
  %i.fy = fadd reassoc nsz arcp contract afn double %i.ff, %i.fx
  %i.fz = fadd reassoc nsz arcp contract afn double %i.fh, %i.fy
  %i.ga = fadd reassoc nsz arcp contract afn double %i.fk, %i.fz
  %i.gb = fadd reassoc nsz arcp contract afn double %i.fo, %i.ga
  %i.gc = fadd reassoc nsz arcp contract afn double %i.fs, %i.gb
  %i.gd = fadd reassoc nsz arcp contract afn double %i.fw, %i.gc
  %i.ge = fsub reassoc nsz arcp contract afn double %i.fc, %i.gd
  %i.gf = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.ef, i32 6)
  %i.gg = fmul reassoc nsz arcp contract afn double %i.gf, f0x40040D9320069C59
  %reass.add.i = fadd reassoc nsz arcp contract afn double %i.fi, f0x40F3C14A0BDBD655
  %reass.mul.i = fmul reassoc nsz arcp contract afn double %reass.add.i, %i.ef
  %i.gh = fadd reassoc nsz arcp contract afn double %i.fm, f0x40F2572A21650A46
  %i.gi = fadd reassoc nsz arcp contract afn double %i.gh, %i.fq
  %i.gj = fadd reassoc nsz arcp contract afn double %i.gi, %i.fu
  %i.gk = fadd reassoc nsz arcp contract afn double %i.gj, %i.gg
  %i.gl = fadd reassoc nsz arcp contract afn double %i.gk, %reass.mul.i
  %i.gm = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.gl)
  %i.gn = fadd reassoc nsz arcp contract afn double %i.ge, %i.gm
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.go = phi reassoc nsz arcp contract afn double [ %i.ey, %bb.x ], [ %i.gn, %bb.y ]
  %i.gp = sitofp reassoc nsz arcp contract afn i32 %.0.lcssa to double ; 13 uses
  %i.gq = fadd reassoc nsz arcp contract afn double %i.gp, 1.000000e+00 ; 13 uses
  %i.gr = fcmp reassoc nsz arcp contract afn ogt double %i.gq, 1.500000e+01
  br i1 %i.gr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gs = fadd reassoc nsz arcp contract afn double %i.gp, 5.000000e-01
  %i.gt = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.gq)
  %i.gu = fmul reassoc nsz arcp contract afn double %i.gt, %i.gs
  %i.gv = fmul reassoc nsz arcp contract afn double %i.gq, 5.000000e-01
  %i.gw = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.gq, i32 6)
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gw, i64 1
  %i.gz = fdiv reassoc nsz arcp contract afn <2 x double> <double 1.000000e+00, double f0x3F543A2730ABEE4D>, %i.gy ; 2 uses
  %i.ha = extractelement <2 x double> %i.gz, i64 0
  %i.hb = tail call reassoc nsz arcp contract afn double @llvm.sinh.f64(double %i.ha)
  %i.hc = fmul reassoc nsz arcp contract afn double %i.hb, %i.gq
  %i.hd = extractelement <2 x double> %i.gz, i64 1
  %i.he = fadd reassoc nsz arcp contract afn double %i.hc, %i.hd
  %i.hf = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.he)
  %i.hg = fmul reassoc nsz arcp contract afn double %i.gv, %i.hf
  %i.hh = fsub reassoc nsz arcp contract afn double f0xBFB4C071BCDA0A48, %i.gp
  %i.hi = fadd reassoc nsz arcp contract afn double %i.hh, %i.gu
  %i.hj = fadd reassoc nsz arcp contract afn double %i.hi, %i.hg
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hk = fadd reassoc nsz arcp contract afn double %i.gp, 1.500000e+00
  %i.hl = fadd reassoc nsz arcp contract afn double %i.gp, 6.500000e+00 ; 2 uses
  %i.hm = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.hl)
  %i.hn = fmul reassoc nsz arcp contract afn double %i.hm, %i.hk
  %i.ho = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.gq)
  %i.hp = fadd reassoc nsz arcp contract afn double %i.gp, 2.000000e+00
  %i.hq = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.hp)
  %i.hr = fadd reassoc nsz arcp contract afn double %i.gp, 3.000000e+00
  %i.hs = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.hr)
  %i.ht = fmul reassoc nsz arcp contract afn double %i.gq, f0x40E1BA8971D996E0
  %i.hu = fadd reassoc nsz arcp contract afn double %i.gp, 4.000000e+00
  %i.hv = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.hu)
  %i.hw = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.gq, i32 3)
  %i.hx = fmul reassoc nsz arcp contract afn double %i.hw, f0x40C0F79F65E4CBC7
  %i.hy = fadd reassoc nsz arcp contract afn double %i.gp, 5.000000e+00
  %i.hz = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.hy)
  %i.ia = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.gq, i32 4)
  %i.ib = fmul reassoc nsz arcp contract afn double %i.ia, f0x409243B4BB0CDBDC
  %i.ic = fadd reassoc nsz arcp contract afn double %i.gp, 6.000000e+00
  %i.id = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ic)
  %i.ie = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.gq, i32 5)
  %i.if = fmul reassoc nsz arcp contract afn double %i.ie, f0x4054F786D45D1E70
  %i.ig = fadd reassoc nsz arcp contract afn double %i.gp, 7.000000e+00
  %i.ih = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ig)
  %i.ii = fadd reassoc nsz arcp contract afn double %i.hl, %i.ho
  %i.ij = fadd reassoc nsz arcp contract afn double %i.hq, %i.ii
  %i.ik = fadd reassoc nsz arcp contract afn double %i.hs, %i.ij
  %i.il = fadd reassoc nsz arcp contract afn double %i.hv, %i.ik
  %i.im = fadd reassoc nsz arcp contract afn double %i.hz, %i.il
  %i.in = fadd reassoc nsz arcp contract afn double %i.id, %i.im
  %i.io = fadd reassoc nsz arcp contract afn double %i.ih, %i.in
  %i.ip = fsub reassoc nsz arcp contract afn double %i.hn, %i.io
  %i.iq = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.gq, i32 6)
  %i.ir = fmul reassoc nsz arcp contract afn double %i.iq, f0x40040D9320069C59
  %reass.add126.i = fadd reassoc nsz arcp contract afn double %i.ht, f0x40F3C14A0BDBD655
  %reass.mul127.i = fmul reassoc nsz arcp contract afn double %reass.add126.i, %i.gq
  %i.is = fadd reassoc nsz arcp contract afn double %i.hx, f0x40F2572A21650A46
  %i.it = fadd reassoc nsz arcp contract afn double %i.is, %i.ib
  %i.iu = fadd reassoc nsz arcp contract afn double %i.it, %i.if
  %i.iv = fadd reassoc nsz arcp contract afn double %i.iu, %i.ir
  %i.iw = fadd reassoc nsz arcp contract afn double %i.iv, %reass.mul127.i
  %i.ix = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.iw)
  %i.iy = fadd reassoc nsz arcp contract afn double %i.ip, %i.ix
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.iz = phi reassoc nsz arcp contract afn double [ %i.hj, %bb.aa ], [ %i.iy, %bb.ab ]
  %i.ja = sub nuw nsw i32 %.022.lcssa, %.0.lcssa
  %i.jb = sitofp reassoc nsz arcp contract afn i32 %i.ja to double ; 12 uses
  %i.jc = fadd reassoc nsz arcp contract afn double %i.jb, 1.000000e+00 ; 13 uses
  %i.jd = fcmp reassoc nsz arcp contract afn ogt double %i.jc, 1.500000e+01
  br i1 %i.jd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.je = fadd reassoc nsz arcp contract afn double %i.jb, 5.000000e-01
  %i.jf = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.jc)
  %i.jg = fmul reassoc nsz arcp contract afn double %i.jf, %i.je
  %i.jh = fmul reassoc nsz arcp contract afn double %i.jc, 5.000000e-01
  %i.ji = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.jc, i32 6)
  %i.jj = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jk = insertelement <2 x double> %i.jj, double %i.ji, i64 1
  %i.jl = fdiv reassoc nsz arcp contract afn <2 x double> <double 1.000000e+00, double f0x3F543A2730ABEE4D>, %i.jk ; 2 uses
  %i.jm = extractelement <2 x double> %i.jl, i64 0
  %i.jn = tail call reassoc nsz arcp contract afn double @llvm.sinh.f64(double %i.jm)
  %i.jo = fmul reassoc nsz arcp contract afn double %i.jn, %i.jc
  %i.jp = extractelement <2 x double> %i.jl, i64 1
  %i.jq = fadd reassoc nsz arcp contract afn double %i.jo, %i.jp
  %i.jr = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.jq)
  %i.js = fmul reassoc nsz arcp contract afn double %i.jh, %i.jr
  %i.jt = fsub reassoc nsz arcp contract afn double f0xBFB4C071BCDA0A48, %i.jb
  %i.ju = fadd reassoc nsz arcp contract afn double %i.jt, %i.jg
  %i.jv = fadd reassoc nsz arcp contract afn double %i.ju, %i.js
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.jw = fadd reassoc nsz arcp contract afn double %i.jb, 1.500000e+00
  %i.jx = fadd reassoc nsz arcp contract afn double %i.jb, 6.500000e+00 ; 2 uses
  %i.jy = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.jx)
  %i.jz = fmul reassoc nsz arcp contract afn double %i.jy, %i.jw
  %i.ka = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.jc)
  %i.kb = fadd reassoc nsz arcp contract afn double %i.jb, 2.000000e+00
  %i.kc = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.kb)
  %i.kd = fadd reassoc nsz arcp contract afn double %i.jb, 3.000000e+00
  %i.ke = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.kd)
  %i.kf = fmul reassoc nsz arcp contract afn double %i.jc, f0x40E1BA8971D996E0
  %i.kg = fadd reassoc nsz arcp contract afn double %i.jb, 4.000000e+00
  %i.kh = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.kg)
  %i.ki = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.jc, i32 3)
  %i.kj = fmul reassoc nsz arcp contract afn double %i.ki, f0x40C0F79F65E4CBC7
  %i.kk = fadd reassoc nsz arcp contract afn double %i.jb, 5.000000e+00
  %i.kl = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.kk)
  %i.km = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.jc, i32 4)
  %i.kn = fmul reassoc nsz arcp contract afn double %i.km, f0x409243B4BB0CDBDC
  %i.ko = fadd reassoc nsz arcp contract afn double %i.jb, 6.000000e+00
  %i.kp = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ko)
  %i.kq = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.jc, i32 5)
  %i.kr = fmul reassoc nsz arcp contract afn double %i.kq, f0x4054F786D45D1E70
  %i.ks = fadd reassoc nsz arcp contract afn double %i.jb, 7.000000e+00
  %i.kt = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ks)
  %i.ku = fadd reassoc nsz arcp contract afn double %i.jx, %i.ka
  %i.kv = fadd reassoc nsz arcp contract afn double %i.kc, %i.ku
  %i.kw = fadd reassoc nsz arcp contract afn double %i.ke, %i.kv
  %i.kx = fadd reassoc nsz arcp contract afn double %i.kh, %i.kw
  %i.ky = fadd reassoc nsz arcp contract afn double %i.kl, %i.kx
  %i.kz = fadd reassoc nsz arcp contract afn double %i.kp, %i.ky
  %i.la = fadd reassoc nsz arcp contract afn double %i.kt, %i.kz
  %i.lb = fsub reassoc nsz arcp contract afn double %i.jz, %i.la
  %i.lc = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.jc, i32 6)
  %i.ld = fmul reassoc nsz arcp contract afn double %i.lc, f0x40040D9320069C59
  %reass.add144.i = fadd reassoc nsz arcp contract afn double %i.kf, f0x40F3C14A0BDBD655
  %reass.mul145.i = fmul reassoc nsz arcp contract afn double %reass.add144.i, %i.jc
  %i.le = fadd reassoc nsz arcp contract afn double %i.kj, f0x40F2572A21650A46
  %i.lf = fadd reassoc nsz arcp contract afn double %i.le, %i.kn
  %i.lg = fadd reassoc nsz arcp contract afn double %i.lf, %i.kr
  %i.lh = fadd reassoc nsz arcp contract afn double %i.lg, %i.ld
  %i.li = fadd reassoc nsz arcp contract afn double %i.lh, %reass.mul145.i
  %i.lj = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.li)
  %i.lk = fadd reassoc nsz arcp contract afn double %i.lb, %i.lj
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ll = phi reassoc nsz arcp contract afn double [ %i.jv, %bb.ad ], [ %i.lk, %bb.ae ]
  %i.lm = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.dq)
  %i.ln = fmul reassoc nsz arcp contract afn double %i.lm, %i.gp
  %i.lo = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ed)
  %i.lp = fmul reassoc nsz arcp contract afn double %i.lo, %i.jb
  %.neg82 = fadd reassoc nsz arcp contract afn double %i.lp, %i.ln
  %.neg149.i = fadd reassoc nsz arcp contract afn double %.neg82, %i.go
  %i.lq = fadd reassoc nsz arcp contract afn double %i.iz, %i.ll
  %i.lr = fsub reassoc nsz arcp contract afn double %.neg149.i, %i.lq ; 2 uses
  %i.ls = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.lr) ; 4 uses
  %i.lt = fcmp reassoc nsz arcp contract afn oeq double %i.ls, 0.000000e+00
  br i1 %i.lt, label %double_equal.exit.thread.i, label %double_equal.exit.i

double_equal.exit.i:                              ; preds = %bb.af
  %i.lu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ls) ; 3 uses
  %i.lv = fcmp reassoc nsz arcp contract afn ogt double %i.lu, 0.000000e+00
  %i.lw = select reassoc nsz arcp contract afn i1 %i.lv, double %i.lu, double 0.000000e+00 ; 2 uses
  %i.lx = fcmp reassoc nsz arcp contract afn olt double %i.lw, f0x0010000000000000
  %spec.store.select.i.i = select i1 %i.lx, double f0x0010000000000000, double %i.lw
  %i.ly = fdiv reassoc nsz arcp contract afn double %i.lu, %spec.store.select.i.i
  %i.lz = fcmp reassoc nsz arcp contract afn ugt double %i.ly, f0x3D19000000000000
  br i1 %i.lz, label %.lr.ph.i, label %double_equal.exit.thread.i

.lr.ph.i:                                         ; preds = %double_equal.exit.i
  %i.ma = load ptr, ptr @inv, align 8
  %i.mb = sext i32 %.0.lcssa to i64
  %i.mc = sext i32 %.022.lcssa to i64             ; 2 uses
  %i.md = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ed
  br label %.backedge.i

double_equal.exit.thread.i:                       ; preds = %double_equal.exit.i, %bb.af
  %i.me = fmul reassoc nsz arcp contract afn double %i.dq, %i.ee
  %i.mf = fcmp reassoc nsz arcp contract afn olt double %i.me, %i.gp
  br i1 %i.mf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %double_equal.exit.thread.i
  %i.mg = fmul reassoc nsz arcp contract afn double %i.lr, f0xBFDBCB7B1526E50D
  %i.mh = fsub reassoc nsz arcp contract afn double %i.mg, %2
  br label %nfa.exit

bb.ah:                                            ; preds = %double_equal.exit.thread.i
  %i.mi = fneg reassoc nsz arcp contract afn double %2
  br label %nfa.exit

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.mb, %.lr.ph.i ], [ %indvars.iv.next.i, %.backedge.i.backedge ] ; 2 uses
  %.079153.i = phi double [ %i.ls, %.lr.ph.i ], [ %i.na, %.backedge.i.backedge ]
  %.080152.i = phi double [ %i.ls, %.lr.ph.i ], [ %i.mz, %.backedge.i.backedge ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.mj = trunc i64 %indvars.iv.next.i to i32     ; 3 uses
  %i.mk = sub i32 %.022.lcssa, %i.mj
  %i.ml = add i32 %i.mk, 1                        ; 2 uses
  %i.mm = sitofp reassoc nsz arcp contract afn i32 %i.ml to double
  %i.mn = icmp slt i64 %indvars.iv.i, 99999
  br i1 %i.mn, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.backedge.i
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %indvars.iv.next.i ; 2 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !166 ; 2 uses
  %i.mq = fcmp reassoc nsz arcp contract afn une double %i.mp, 0.000000e+00
  br i1 %i.mq, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mr = sitofp reassoc nsz arcp contract afn i32 %i.mj to double
  %i.ms = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.mr ; 2 uses
  store double %i.ms, ptr %i.mo, align 8, !tbaa !166
  br label %bb.al

bb.ak:                                            ; preds = %.backedge.i
  %i.mt = uitofp nneg i32 %i.mj to double
  %i.mu = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.mt
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.mv = phi reassoc nsz arcp contract afn double [ %i.mu, %bb.ak ], [ %i.ms, %bb.aj ], [ %i.mp, %bb.ai ]
  %i.mw = fmul reassoc nsz arcp contract afn double %i.mv, %i.mm ; 2 uses
  %i.mx = fmul reassoc nsz arcp contract afn double %i.dq, %i.mw
  %i.my = fmul reassoc nsz arcp contract afn double %i.mx, %i.md ; 3 uses
  %i.mz = fmul reassoc nsz arcp contract afn double %i.my, %.080152.i ; 3 uses
  %i.na = fadd reassoc nsz arcp contract afn double %i.mz, %.079153.i ; 4 uses
  %i.nb = fcmp reassoc nsz arcp contract afn olt double %i.mw, 1.000000e+00
  br i1 %i.nb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.nc = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.my, i32 %i.ml)
  %i.nd = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.nc
  %i.ne = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.my
  %i.nf = fdiv reassoc nsz arcp contract afn double %i.nd, %i.ne
  %i.ng = fadd reassoc nsz arcp contract afn double %i.nf, -1.000000e+00
  %i.nh = fmul reassoc nsz arcp contract afn double %i.ng, %i.mz
  %i.ni = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.na)
  %i.nj = fadd reassoc nsz arcp contract afn double %i.ni, %2 ; 2 uses
  %i.nk = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.nj)
  %i.nl = fmul reassoc nsz arcp contract afn double %i.na, 1.000000e-01
  %i.nm = fmul reassoc nsz arcp contract afn double %i.nl, %i.nk
  %i.nn = fcmp reassoc nsz arcp contract afn uge double %i.nh, %i.nm
  %.not91.not.i = icmp slt i64 %indvars.iv.next.i, %i.mc
  %or.cond.i29 = select i1 %i.nn, i1 %.not91.not.i, i1 false
  br i1 %or.cond.i29, label %.backedge.i.backedge, label %._crit_edge.i

bb.an:                                            ; preds = %bb.al
  %.not91.not.old.i = icmp slt i64 %indvars.iv.next.i, %i.mc
  br i1 %.not91.not.old.i, label %.backedge.i.backedge, label %.._crit_edge.i_crit_edge

.backedge.i.backedge:                             ; preds = %bb.an, %bb.am
  br label %.backedge.i

.._crit_edge.i_crit_edge:                         ; preds = %bb.an
  %.pre = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.na)
  %.pre90 = fadd reassoc nsz arcp contract afn double %.pre, %2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.am, %.._crit_edge.i_crit_edge
  %.pre-phi91 = phi double [ %.pre90, %.._crit_edge.i_crit_edge ], [ %i.nj, %bb.am ]
  %i.no = fneg reassoc nsz arcp contract afn double %.pre-phi91
  br label %nfa.exit

nfa.exit:                                         ; preds = %bb.t, %bb.v, %bb.ag, %bb.ah, %._crit_edge.i
  %.081.i = phi nsz double [ %i.dw, %bb.t ], [ %i.ec, %bb.v ], [ %i.mh, %bb.ag ], [ %i.mi, %bb.ah ], [ %i.no, %._crit_edge.i ]
  ret double %.081.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ri_inc(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.split39, label %ri_end.exit

ri_end.exit:                                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !313  ; 2 uses
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to double
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !166 ; 12 uses
  %i.g = fcmp reassoc nsz arcp contract afn uge double %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !314  ; 2 uses
  br i1 %i.g, label %bb.b, label %ri_end.exit._crit_edge

.split39:                                         ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.179) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.b:                                             ; preds = %ri_end.exit
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !tbaa !314
  br label %ri_end.exit._crit_edge

ri_end.exit._crit_edge:                           ; preds = %ri_end.exit, %bb.b
  %.promoted = phi i32 [ %i.j, %bb.b ], [ %i.i, %ri_end.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted84 = load double, ptr %i.l, align 8, !tbaa !576
  %i.m = sitofp reassoc nsz arcp contract afn i32 %.promoted to double
  %i.n = fcmp reassoc nsz arcp contract afn olt double %.promoted84, %i.m
  br i1 %i.n, label %ri_end.exit50.lr.ph, label %.critedge

ri_end.exit50.lr.ph:                              ; preds = %ri_end.exit._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.f) ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %ri_end.exit50

ri_end.exit50:                                    ; preds = %ri_end.exit50.lr.ph, %inter_hi.exit
  %i.w = phi i32 [ %i.c, %ri_end.exit50.lr.ph ], [ %i.z, %inter_hi.exit ] ; 2 uses
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to double
  %i.y = fcmp reassoc nsz arcp contract afn uge double %i.f, %i.x
  br i1 %i.y, label %ri_end.exit51, label %.critedge

ri_end.exit51:                                    ; preds = %ri_end.exit50
  %i.z = add nsw i32 %i.w, 1                      ; 3 uses
  store i32 %i.z, ptr %i.b, align 8, !tbaa !313
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to double ; 9 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt double %i.f, %i.aa
  br i1 %i.ab, label %.critedge, label %bb.c

bb.c:                                             ; preds = %ri_end.exit51
  %i.ac = load double, ptr %i.o, align 8, !tbaa !166 ; 12 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt double %i.ac, %i.aa
  br i1 %i.ad, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ae = load double, ptr %0, align 8, !tbaa !166 ; 7 uses
  %i.af = load double, ptr %i.t, align 8, !tbaa !166 ; 7 uses
  %i.ag = load double, ptr %i.p, align 8, !tbaa !166 ; 5 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt double %i.ae, %i.ac
  %i.ai = fcmp reassoc nsz arcp contract afn ogt double %i.ae, %i.aa
  %or.cond.i = or i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.180) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aj = fcmp reassoc nsz arcp contract afn oeq double %i.ae, %i.ac
  br i1 %i.aj, label %double_equal.exit.i, label %double_equal.exit.thread.i

double_equal.exit.i:                              ; preds = %bb.f
  %i.ak = fcmp reassoc nsz arcp contract afn olt double %i.af, %i.ag
  br i1 %i.ak, label %inter_low.exit, label %double_equal.exit35.i

double_equal.exit.thread.i:                       ; preds = %bb.f
  %i.al = fsub reassoc nsz arcp contract afn double %i.ae, %i.ac
  %i.am = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.al)
  %i.an = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ae) ; 2 uses
  %i.ao = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ac) ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.an, %i.ao
  %i.aq = select reassoc nsz arcp contract afn i1 %i.ap, double %i.an, double %i.ao ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt double %i.aq, f0x0010000000000000
  %spec.store.select.i.i = select i1 %i.ar, double f0x0010000000000000, double %i.aq
  %i.as = fdiv reassoc nsz arcp contract afn double %i.am, %spec.store.select.i.i
  %i.at = fcmp reassoc nsz arcp contract afn ole double %i.as, f0x3D19000000000000 ; 2 uses
  %i.au = fcmp reassoc nsz arcp contract afn olt double %i.af, %i.ag
  %or.cond3138.i = and i1 %i.au, %i.at
  br i1 %or.cond3138.i, label %inter_low.exit, label %double_equal.exit35.i

double_equal.exit35.i:                            ; preds = %double_equal.exit.thread.i, %double_equal.exit.i
  %.0.i34.i = phi i1 [ true, %double_equal.exit.i ], [ %i.at, %double_equal.exit.thread.i ]
  %i.av = fcmp reassoc nsz arcp contract afn ogt double %i.af, %i.ag
  %or.cond32.i = and i1 %i.av, %.0.i34.i
  br i1 %or.cond32.i, label %inter_low.exit, label %bb.g

bb.g:                                             ; preds = %double_equal.exit35.i
  %i.aw = fsub reassoc nsz arcp contract afn double %i.aa, %i.ae
  %i.ax = fsub reassoc nsz arcp contract afn double %i.ag, %i.af
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, %i.aw
  %i.az = fsub reassoc nsz arcp contract afn double %i.ac, %i.ae
  %i.ba = fdiv reassoc nsz arcp contract afn double %i.ay, %i.az
  %i.bb = fadd reassoc nsz arcp contract afn double %i.ba, %i.af
  br label %inter_low.exit

bb.h:                                             ; preds = %bb.c
  %i.bc = load double, ptr %i.p, align 8, !tbaa !166 ; 7 uses
  %i.bd = load double, ptr %i.q, align 8, !tbaa !166 ; 5 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt double %i.ac, %i.f
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.180) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bf = fcmp reassoc nsz arcp contract afn oeq double %i.ac, %i.f
  br i1 %i.bf, label %double_equal.exit.i61, label %double_equal.exit.thread.i54

double_equal.exit.i61:                            ; preds = %bb.j
  %i.bg = fcmp reassoc nsz arcp contract afn olt double %i.bc, %i.bd
  br i1 %i.bg, label %inter_low.exit, label %double_equal.exit35.i57

double_equal.exit.thread.i54:                     ; preds = %bb.j
  %i.bh = fsub reassoc nsz arcp contract afn double %i.ac, %i.f
  %i.bi = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bh)
  %i.bj = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ac) ; 2 uses
  %i.bk = fcmp reassoc nsz arcp contract afn ogt double %i.bj, %i.r
  %i.bl = select reassoc nsz arcp contract afn i1 %i.bk, double %i.bj, double %i.r ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn olt double %i.bl, f0x0010000000000000
  %spec.store.select.i.i55 = select i1 %i.bm, double f0x0010000000000000, double %i.bl
  %i.bn = fdiv reassoc nsz arcp contract afn double %i.bi, %spec.store.select.i.i55
  %i.bo = fcmp reassoc nsz arcp contract afn ole double %i.bn, f0x3D19000000000000 ; 2 uses
  %i.bp = fcmp reassoc nsz arcp contract afn olt double %i.bc, %i.bd
  %or.cond3138.i56 = and i1 %i.bo, %i.bp
  br i1 %or.cond3138.i56, label %inter_low.exit, label %double_equal.exit35.i57
end_hunk_8
begin_hunk_9_@ransac:bb.a
  %wide.gep255 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep242, i64 32
  %wide.masked.gather256 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 16 %wide.gep254, <8 x i1> %i.fd, <8 x float> poison), !tbaa !306 ; 2 uses
  %wide.masked.gather257 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 16 %wide.gep255, <8 x i1> %i.fe, <8 x float> poison), !tbaa !306 ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather256, splat (float 3.300000e-01)
  %i.fk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather257, splat (float 3.300000e-01)
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %i.fj, %i.al
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %i.fk, %i.am
  %i.fn = fmul reassoc nsz arcp contract afn <8 x float> %i.fb, splat (float 3.300000e-01)
  %i.fo = fmul reassoc nsz arcp contract afn <8 x float> %i.fc, splat (float 3.300000e-01)
  %i.fp = fmul reassoc nsz arcp contract afn <8 x float> %i.fn, %i.ek
  %i.fq = fmul reassoc nsz arcp contract afn <8 x float> %i.fo, %i.el
  %i.fr = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.300000e-01), %i.fp
  %i.fs = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.300000e-01), %i.fq
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %i.fr, %broadcast.splat232
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %i.fs, %broadcast.splat232
  %i.fv = fmul reassoc nsz arcp contract afn <8 x float> %i.ft, %wide.masked.gather256
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fu, %wide.masked.gather257
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %i.fv, %i.an
  %i.fy = fmul reassoc nsz arcp contract afn <8 x float> %i.fw, %i.ao
  %i.fz = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi237, %broadcast.splat234
  %i.ga = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi238, %broadcast.splat234
  %i.gb = fadd reassoc nsz arcp contract afn <8 x float> %i.fz, %i.fl
  %i.gc = fadd reassoc nsz arcp contract afn <8 x float> %i.ga, %i.fm
  %i.gd = fadd reassoc nsz arcp contract afn <8 x float> %i.gb, %i.fx
  %i.ge = fadd reassoc nsz arcp contract afn <8 x float> %i.gc, %i.fy
  %not. = xor <8 x i1> %i.fd, splat (i1 true)
  %i.gf = zext <8 x i1> %not. to <8 x i32>
  %predphi = add <8 x i32> %vec.phi239, %i.gf     ; 2 uses
  %not.310 = xor <8 x i1> %i.fe, splat (i1 true)
  %i.gg = zext <8 x i1> %not.310 to <8 x i32>
  %predphi258 = add <8 x i32> %vec.phi240, %i.gg  ; 2 uses
  %predphi259 = select <8 x i1> %i.fd, <8 x float> %i.gd, <8 x float> %vec.phi237 ; 2 uses
  %predphi260 = select <8 x i1> %i.fe, <8 x float> %i.ge, <8 x float> %vec.phi238 ; 2 uses
  %index.next261 = add nuw i64 %index236, 16      ; 2 uses
  %i.gh = icmp eq i64 %index.next261, %n.vec220
  br i1 %i.gh, label %middle.block262, label %vector.body235, !llvm.loop !581

middle.block262:                                  ; preds = %vector.body235
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %predphi260, %predphi259
  %i.gi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 3 uses
  %bin.rdx263 = add <8 x i32> %predphi258, %predphi
  %i.gj = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx263) ; 3 uses
  br i1 %cmp.n264, label %.loopexit, label %vec.epilog.iter.check266

vec.epilog.iter.check266:                         ; preds = %middle.block262
  br i1 %min.epilog.iters.check268, label %vec.epilog.scalar.ph267.preheader, label %vec.epilog.ph269, !prof !269

vec.epilog.ph269:                                 ; preds = %vector.main.loop.iter.check217, %vec.epilog.iter.check266
  %vec.epilog.resume.val270 = phi i64 [ %n.vec220, %vec.epilog.iter.check266 ], [ 0, %vector.main.loop.iter.check217 ]
  %bc.merge.rdx = phi float [ %i.gi, %vec.epilog.iter.check266 ], [ 0.000000e+00, %vector.main.loop.iter.check217 ]
  %bc.merge.rdx271 = phi i32 [ %i.gj, %vec.epilog.iter.check266 ], [ %.0108170, %vector.main.loop.iter.check217 ]
  %i.gk = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.gl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx271, i64 0
  %broadcast.splatinsert273 = insertelement <4 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat274 = shufflevector <4 x float> %broadcast.splatinsert273, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert275 = insertelement <4 x float> poison, float %factor.op.fmul154, i64 0
  %broadcast.splat276 = shufflevector <4 x float> %broadcast.splatinsert275, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert277 = insertelement <4 x float> poison, float %factor.op.fmul156, i64 0
  %broadcast.splat278 = shufflevector <4 x float> %broadcast.splatinsert277, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert279 = insertelement <4 x float> poison, float %.0113168, i64 0
  %broadcast.splat280 = shufflevector <4 x float> %broadcast.splatinsert279, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gm = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat280
  br label %vec.epilog.vector.body287

vec.epilog.vector.body287:                        ; preds = %vec.epilog.vector.body287, %vec.epilog.ph269
  %index288 = phi i64 [ %vec.epilog.resume.val270, %vec.epilog.ph269 ], [ %index.next303, %vec.epilog.vector.body287 ] ; 2 uses
  %vec.phi289 = phi <4 x float> [ %i.gk, %vec.epilog.ph269 ], [ %predphi302, %vec.epilog.vector.body287 ] ; 2 uses
  %vec.phi290 = phi <4 x i32> [ %i.gl, %vec.epilog.ph269 ], [ %predphi301, %vec.epilog.vector.body287 ]
  %i.gn = or disjoint i64 %index288, 2            ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gn
  %wide.load291 = load <4 x i32>, ptr %i.go, align 4, !tbaa !17
  %i.gp = sext <4 x i32> %wide.load291 to <4 x i64>
  %wide.gep292 = getelementptr inbounds [64 x i8], ptr %0, <4 x i64> %i.gp ; 4 uses
  %wide.gep293 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep292, i64 48
  %wide.masked.gather294 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep293, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !15
  %i.gq = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather294, %broadcast.splat276
  %wide.gep295 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep292, i64 52
  %wide.masked.gather296 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep295, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !15
  %i.gr = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather296, %broadcast.splat278
  %wide.gep297 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep292, i64 56
  %wide.masked.gather298 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep297, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !15
  %i.gs = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather298, %broadcast.splat274
  %i.gt = fadd reassoc nsz arcp contract afn <4 x float> %i.gr, %i.gq
  %i.gu = fadd reassoc nsz arcp contract afn <4 x float> %i.gt, %i.gs
  %i.gv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gu) ; 2 uses
  %i.gw = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.gv, %broadcast.splat280 ; 4 uses
  %i.gx = zext <4 x i1> %i.gw to <4 x i32>
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.gn
  store <4 x i32> %i.gx, ptr %i.gy, align 4, !tbaa !17
  %wide.gep299 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep292, i64 32
  %wide.masked.gather300 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 16 %wide.gep299, <4 x i1> %i.gw, <4 x float> poison), !tbaa !306 ; 2 uses
  %i.gz = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather300, splat (float 3.300000e-01)
  %i.ha = fmul reassoc nsz arcp contract afn <4 x float> %i.gz, %i.aq
  %i.hb = fmul reassoc nsz arcp contract afn <4 x float> %i.gv, splat (float 3.300000e-01)
  %i.hc = fmul reassoc nsz arcp contract afn <4 x float> %i.hb, %i.gm
  %i.hd = fsub reassoc nsz arcp contract afn <4 x float> splat (float 3.300000e-01), %i.hc
  %i.he = fmul reassoc nsz arcp contract afn <4 x float> %i.hd, %broadcast.splat284
  %i.hf = fmul reassoc nsz arcp contract afn <4 x float> %i.he, %wide.masked.gather300
  %i.hg = fmul reassoc nsz arcp contract afn <4 x float> %i.hf, %i.ar
  %i.hh = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi289, %broadcast.splat286
  %i.hi = fadd reassoc nsz arcp contract afn <4 x float> %i.hh, %i.ha
  %i.hj = fadd reassoc nsz arcp contract afn <4 x float> %i.hi, %i.hg
  %not.311 = xor <4 x i1> %i.gw, splat (i1 true)
  %i.hk = zext <4 x i1> %not.311 to <4 x i32>
  %predphi301 = add <4 x i32> %vec.phi290, %i.hk  ; 2 uses
  %predphi302 = select <4 x i1> %i.gw, <4 x float> %i.hj, <4 x float> %vec.phi289 ; 2 uses
  %index.next303 = add nuw i64 %index288, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next303, %n.vec272
  br i1 %i.hl, label %vec.epilog.middle.block304, label %vec.epilog.vector.body287, !llvm.loop !582

vec.epilog.middle.block304:                       ; preds = %vec.epilog.vector.body287
  %i.hm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %predphi302) ; 2 uses
  %i.hn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi301) ; 2 uses
  br i1 %cmp.n305, label %.loopexit, label %vec.epilog.scalar.ph267.preheader

vec.epilog.scalar.ph267.preheader:                ; preds = %iter.check265, %vec.epilog.iter.check266, %vec.epilog.middle.block304
  %indvars.iv181.ph = phi i64 [ 2, %iter.check265 ], [ %i.ak, %vec.epilog.iter.check266 ], [ %i.ap, %vec.epilog.middle.block304 ]
  %.0103159.ph = phi float [ 0.000000e+00, %iter.check265 ], [ %i.gi, %vec.epilog.iter.check266 ], [ %i.hm, %vec.epilog.middle.block304 ]
  %.1109158.ph = phi i32 [ %.0108170, %iter.check265 ], [ %i.gj, %vec.epilog.iter.check266 ], [ %i.hn, %vec.epilog.middle.block304 ]
  %i.ho = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0113168
  br label %vec.epilog.scalar.ph267

.loopexit:                                        ; preds = %bb.i, %vec.epilog.middle.block304, %middle.block262
  %.2110.lcssa = phi i32 [ %i.hn, %vec.epilog.middle.block304 ], [ %i.gj, %middle.block262 ], [ %.2110, %bb.i ]
  %.0.lcssa = phi float [ %i.hm, %vec.epilog.middle.block304 ], [ %i.gi, %middle.block262 ], [ %.0, %bb.i ]
  %i.hp = add nsw i32 %.0106171, 1
  br label %bb.j

vec.epilog.scalar.ph267:                          ; preds = %vec.epilog.scalar.ph267.preheader, %bb.i
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %bb.i ], [ %indvars.iv181.ph, %vec.epilog.scalar.ph267.preheader ] ; 3 uses
  %.0103159 = phi float [ %.0, %bb.i ], [ %.0103159.ph, %vec.epilog.scalar.ph267.preheader ] ; 2 uses
  %.1109158 = phi i32 [ %.2110, %bb.i ], [ %.1109158.ph, %vec.epilog.scalar.ph267.preheader ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv181
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !17
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [64 x i8], ptr %0, i64 %i.hs ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !15
  %.reass155 = fmul reassoc nsz arcp contract afn float %i.hv, %factor.op.fmul154
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 52
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !15
  %.reass157 = fmul reassoc nsz arcp contract afn float %i.hx, %factor.op.fmul156
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !15
  %.reass = fmul reassoc nsz arcp contract afn float %i.hz, %factor.op.fmul
  %reass.add = fadd reassoc nsz arcp contract afn float %.reass157, %.reass155
  %reass.add150 = fadd reassoc nsz arcp contract afn float %reass.add, %.reass
  %i.ia = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %reass.add150) ; 2 uses
  %i.ib = fcmp reassoc nsz arcp contract afn olt float %i.ia, %.0113168 ; 2 uses
  %i.ic = zext i1 %i.ib to i32
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv181
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !17
  br i1 %i.ib, label %bb.g, label %bb.h

bb.g:                                             ; preds = %vec.epilog.scalar.ph267
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.if = load float, ptr %i.ie, align 16, !tbaa !306
  %i.ig = fmul reassoc nsz arcp contract afn float %i.ia, 3.300000e-01
  %i.ih = fmul reassoc nsz arcp contract afn float %i.ig, %i.ho
  %i.ii = fsub reassoc nsz arcp contract afn float 3.300000e-01, %i.ih
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, %i.ag
  %i.ik = insertelement <2 x float> <float 3.300000e-01, float poison>, float %i.ij, i64 1
  %i.il = insertelement <2 x float> poison, float %i.if, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = fmul reassoc nsz arcp contract afn <2 x float> %i.ik, %i.im
  %i.io = fmul reassoc nsz arcp contract afn <2 x float> %i.in, %i.au ; 2 uses
  %i.ip = fadd reassoc nsz arcp contract afn float %.0103159, %i.ah
  %i.iq = extractelement <2 x float> %i.io, i64 0
  %i.ir = fadd reassoc nsz arcp contract afn float %i.ip, %i.iq
  %i.is = extractelement <2 x float> %i.io, i64 1
  %i.it = fadd reassoc nsz arcp contract afn float %i.ir, %i.is
  br label %bb.i

bb.h:                                             ; preds = %vec.epilog.scalar.ph267
  %i.iu = add nsw i32 %.1109158, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2110 = phi i32 [ %.1109158, %bb.g ], [ %i.iu, %bb.h ] ; 2 uses
  %.0 = phi float [ %i.it, %bb.g ], [ %.0103159, %bb.h ] ; 2 uses
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %i.a
  br i1 %exitcond185.not, label %.loopexit, label %vec.epilog.scalar.ph267, !llvm.loop !583

bb.j:                                             ; preds = %shuffle.exit, %bb.f, %.loopexit
  %.3 = phi i32 [ %.2110.lcssa, %.loopexit ], [ %.0108170, %bb.f ], [ %.0108170, %shuffle.exit ] ; 4 uses
  %.1107 = phi i32 [ %i.hp, %.loopexit ], [ %.0106171, %bb.f ], [ %.0106171, %shuffle.exit ] ; 5 uses
  %.1 = phi nsz float [ %.0.lcssa, %.loopexit ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %shuffle.exit ] ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %.lhs.trunc = trunc nuw i32 %.0104172 to i8
  %i.iv = urem i8 %.lhs.trunc, 50
  %i.iw = icmp eq i8 %i.iv, 49
  %i.ix = icmp sgt i32 %.1107, 0
  %or.cond3 = select i1 %i.iw, i1 %i.ix, i1 false
  br i1 %or.cond3, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.iy = sitofp reassoc nsz arcp contract afn i32 %.3 to float
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, 1.000000e+02
  %i.ja = uitofp nneg i32 %.1107 to float
  %i.jb = fmul reassoc nsz arcp contract afn float %i.ja, %i.ag
  %i.jc = fdiv reassoc nsz arcp contract afn float %i.iz, %i.jb ; 2 uses
  %i.jd = fcmp reassoc nsz arcp contract afn olt float %i.jc, 6.000000e+01
  br i1 %i.jd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.je = fpext reassoc nsz arcp contract afn float %.0113168 to double
  %i.jf = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.je)
  %i.jg = fpext reassoc nsz arcp contract afn float %.0111169 to double
  %i.jh = fsub reassoc nsz arcp contract afn double %i.jf, %i.jg
  %i.ji = fptrunc reassoc nsz arcp contract afn double %i.jh to float
  %i.jj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.000000e+01, float %i.ji)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.jk = fcmp reassoc nsz arcp contract afn ogt float %i.jc, 6.000000e+01
  br i1 %i.jk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.jl = fpext reassoc nsz arcp contract afn float %.0113168 to double
  %i.jm = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.jl)
  %i.jn = fpext reassoc nsz arcp contract afn float %.0111169 to double
  %i.jo = fadd reassoc nsz arcp contract afn double %i.jm, %i.jn
  %i.jp = fptrunc reassoc nsz arcp contract afn double %i.jo to float
  %i.jq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.000000e+01, float %i.jp)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.1114 = phi nsz float [ %i.jj, %bb.m ], [ %i.jq, %bb.o ], [ %.0113168, %bb.n ]
  %i.jr = fmul reassoc nsz arcp contract afn float %.0111169, 5.000000e-01
  br label %bb.s

bb.q:                                             ; preds = %bb.j
  %i.js = fcmp reassoc nsz arcp contract afn ogt float %.1, %.0116167
  br i1 %i.js, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.c, ptr noundef nonnull align 4 dereferenceable(1) %1, i64 %i.b, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.d, ptr noundef nonnull align 4 dereferenceable(1) %i.x, i64 %i.b, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.k, %bb.p
  %.1117 = phi nsz float [ %.0116167, %bb.p ], [ %.0116167, %bb.k ], [ %.1, %bb.r ], [ %.0116167, %bb.q ]
  %.2115 = phi nsz float [ %.1114, %bb.p ], [ %.0113168, %bb.k ], [ %.0113168, %bb.r ], [ %.0113168, %bb.q ]
  %.1112 = phi nsz float [ %i.jr, %bb.p ], [ %.0111169, %bb.k ], [ %.0111169, %bb.r ], [ %.0111169, %bb.q ]
  %.4 = phi i32 [ 0, %bb.p ], [ %.3, %bb.k ], [ %.3, %bb.r ], [ %.3, %bb.q ]
  %.2 = phi i32 [ 0, %bb.p ], [ %.1107, %bb.k ], [ %.1107, %bb.r ], [ %.1107, %bb.q ]
  %i.jt = add nuw nsw i32 %.0104172, 1            ; 2 uses
  %exitcond186.not = icmp eq i32 %i.jt, %i.j
  br i1 %exitcond186.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal double @model_fitness(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !272  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !286
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !287
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load float, ptr %i.j, align 8, !tbaa !273
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load float, ptr %i.l, align 4, !tbaa !274
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load float, ptr %i.n, align 8, !tbaa !275
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.q = load float, ptr %i.p, align 4, !tbaa !278 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load float, ptr %i.r, align 8, !tbaa !279 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.u = load float, ptr %i.t, align 4, !tbaa !280 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load float, ptr %i.v, align 8, !tbaa !281 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load float, ptr %i.x, align 8, !tbaa !283 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.aa = load float, ptr %i.z, align 4, !tbaa !284 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !285 ; 2 uses
  %i.ad = fcmp ord float %i.q, 0.000000e+00
  br i1 %i.ad, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.af = load float, ptr %i.ae, align 4, !tbaa !282 ; 2 uses
  %i.ag = load double, ptr %0, align 8, !tbaa !166
  %i.ah = fneg reassoc nsz arcp contract afn float %i.af
  %i.ai = fpext reassoc nsz arcp contract afn float %i.ah to double ; 2 uses
  %i.aj = fpext reassoc nsz arcp contract afn float %i.af to double
  %i.ak = fmul reassoc nsz arcp contract afn double %i.ag, 5.000000e-01
  %i.al = tail call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.ak)
  %i.am = fmul reassoc nsz arcp contract afn double %i.al, 5.000000e-01
  %i.an = fadd reassoc nsz arcp contract afn double %i.am, 5.000000e-01
  %i.ao = fsub reassoc nsz arcp contract afn double %i.aj, %i.ai
  %i.ap = fmul reassoc nsz arcp contract afn double %i.an, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn double %i.ap, %i.ai
  %i.ar = fptrunc reassoc nsz arcp contract afn double %i.aq to float
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0124 = phi nsz float [ %i.ar, %bb.b ], [ %i.q, %bb.a ]
  %.0119 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]     ; 3 uses
  %i.as = fcmp ord float %i.s, 0.000000e+00
  br i1 %i.as, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = zext nneg i32 %.0119 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !166
  %i.aw = fneg reassoc nsz arcp contract afn float %i.y
  %i.ax = fpext reassoc nsz arcp contract afn float %i.aw to double ; 2 uses
  %i.ay = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.az = fmul reassoc nsz arcp contract afn double %i.av, 5.000000e-01
  %i.ba = tail call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.az)
  %i.bb = fmul reassoc nsz arcp contract afn double %i.ba, 5.000000e-01
  %i.bc = fadd reassoc nsz arcp contract afn double %i.bb, 5.000000e-01
  %i.bd = fsub reassoc nsz arcp contract afn double %i.ay, %i.ax
  %i.be = fmul reassoc nsz arcp contract afn double %i.bc, %i.bd
  %i.bf = fadd reassoc nsz arcp contract afn double %i.be, %i.ax
  %i.bg = fptrunc reassoc nsz arcp contract afn double %i.bf to float
  %i.bh = add nuw nsw i32 %.0119, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0123 = phi nsz float [ %i.bg, %bb.d ], [ %i.s, %bb.c ]
  %.1120 = phi i32 [ %i.bh, %bb.d ], [ %.0119, %bb.c ] ; 3 uses
  %i.bi = fcmp ord float %i.u, 0.000000e+00
  br i1 %i.bi, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = zext nneg i32 %.1120 to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !166
  %i.bm = fneg reassoc nsz arcp contract afn float %i.aa
  %i.bn = fpext reassoc nsz arcp contract afn float %i.bm to double ; 2 uses
  %i.bo = fpext reassoc nsz arcp contract afn float %i.aa to double
  %i.bp = fmul reassoc nsz arcp contract afn double %i.bl, 5.000000e-01
  %i.bq = tail call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.bp)
  %i.br = fmul reassoc nsz arcp contract afn double %i.bq, 5.000000e-01
  %i.bs = fadd reassoc nsz arcp contract afn double %i.br, 5.000000e-01
  %i.bt = fsub reassoc nsz arcp contract afn double %i.bo, %i.bn
  %i.bu = fmul reassoc nsz arcp contract afn double %i.bs, %i.bt
  %i.bv = fadd reassoc nsz arcp contract afn double %i.bu, %i.bn
  %i.bw = fptrunc reassoc nsz arcp contract afn double %i.bv to float
  %i.bx = add nuw nsw i32 %.1120, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0122 = phi nsz float [ %i.bw, %bb.f ], [ %i.u, %bb.e ]
  %.2 = phi i32 [ %i.bx, %bb.f ], [ %.1120, %bb.e ]
  %i.by = fcmp ord float %i.w, 0.000000e+00
  br i1 %i.by, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = zext nneg i32 %.2 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !166
  %i.cc = fneg reassoc nsz arcp contract afn float %i.ac
  %i.cd = fpext reassoc nsz arcp contract afn float %i.cc to double ; 2 uses
  %i.ce = fpext reassoc nsz arcp contract afn float %i.ac to double
  %i.cf = fmul reassoc nsz arcp contract afn double %i.cb, 5.000000e-01
  %i.cg = tail call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.cf)
  %i.ch = fmul reassoc nsz arcp contract afn double %i.cg, 5.000000e-01
  %i.ci = fadd reassoc nsz arcp contract afn double %i.ch, 5.000000e-01
  %i.cj = fsub reassoc nsz arcp contract afn double %i.ce, %i.cd
  %i.ck = fmul reassoc nsz arcp contract afn double %i.ci, %i.cj
  %i.cl = fadd reassoc nsz arcp contract afn double %i.ck, %i.cd
  %i.cm = fptrunc reassoc nsz arcp contract afn double %i.cl to float
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0121 = phi nsz float [ %i.cm, %bb.h ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call fastcc void @_homography(ptr noundef %i.a, float noundef %.0124, float noundef %.0123, float noundef %.0122, float noundef %.0121, float noundef %i.k, float noundef %i.m, float noundef %i.o, i32 noundef %i.g, i32 noundef %i.i, i32 noundef 0)
  %i.cn = icmp sgt i32 %i.e, 0
  br i1 %i.cn, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !277
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !276
  %i.cs = load float, ptr %i.a, align 64          ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cu = load float, ptr %i.ct, align 4          ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cw = load float, ptr %i.cv, align 8          ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cy = load float, ptr %i.cx, align 4          ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.da = load float, ptr %i.cz, align 16         ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.dc = load float, ptr %i.db, align 4          ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.de = load float, ptr %i.dd, align 8          ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dg = load float, ptr %i.df, align 4          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.di = load float, ptr %i.dh, align 32         ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.j

._crit_edge:                                      ; preds = %bb.o
  %i.dj = sitofp reassoc nsz arcp contract afn i32 %.1110 to float
  %i.dk = fpext reassoc nsz arcp contract afn float %i.dj to double
  %i.dl = fmul reassoc nsz arcp contract afn double %.1118, %i.dk
  %i.dm = fcmp reassoc nsz arcp contract afn ogt double %.1114, 0.000000e+00
  %i.dn = icmp sgt i32 %.1, 0                     ; 2 uses
  %or.cond = select i1 %i.dm, i1 %i.dn, i1 false
  %i.do = uitofp nneg i32 %.1 to double
  %i.dp = fmul reassoc nsz arcp contract afn double %.1114, %i.do
  %i.dq = fdiv reassoc nsz arcp contract afn double %i.dl, %i.dp
  %i.dr = select reassoc nsz arcp contract afn i1 %or.cond, double %i.dq, double 0.000000e+00 ; 2 uses
  %i.ds = fcmp reassoc nsz arcp contract afn ogt double %.1112, 0.000000e+00
  %or.cond3 = select i1 %i.ds, i1 %i.dn, i1 false
  br i1 %or.cond3, label %bb.p, label %.thread

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.0106170 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.o ] ; 2 uses
  %.0107169 = phi i32 [ 0, %.lr.ph ], [ %.1108, %bb.o ] ; 2 uses
  %.0109168 = phi i32 [ 0, %.lr.ph ], [ %.1110, %bb.o ] ; 3 uses
  %.0111167 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1112, %bb.o ] ; 3 uses
  %.0113166 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1114, %bb.o ] ; 3 uses
  %.0115165 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1116, %bb.o ] ; 3 uses
  %.0117164 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1118, %bb.o ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !189 ; 2 uses
  %i.dw = and i32 %i.cp, %i.dv
  %.not128 = icmp eq i32 %i.dw, %i.cr
  br i1 %.not128, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.dx = and i32 %i.dv, 2
  %.not129.not = icmp eq i32 %i.dx, 0             ; 3 uses
  %i.dy = load float, ptr %i.dt, align 4, !tbaa !15, !alias.scope !588 ; 3 uses
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, %i.cs
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !15, !alias.scope !588 ; 3 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, %i.cu
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, %i.dz
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !15, !alias.scope !588 ; 3 uses
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.cw
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ed, %i.eg ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.cy, %i.dy
  %i.ej = fmul reassoc nsz arcp contract afn float %i.da, %i.eb
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, %i.ei
  %i.el = fmul reassoc nsz arcp contract afn float %i.dc, %i.ef
  %i.em = fadd reassoc nsz arcp contract afn float %i.ek, %i.el ; 2 uses
  %i.en = fmul reassoc nsz arcp contract afn float %i.de, %i.dy
  %i.eo = fmul reassoc nsz arcp contract afn float %i.dg, %i.eb
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.en
  %i.eq = fmul reassoc nsz arcp contract afn float %i.di, %i.ef
  %i.er = fadd reassoc nsz arcp contract afn float %i.ep, %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.et = load float, ptr %i.es, align 4, !tbaa !15, !alias.scope !589 ; 3 uses
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, %i.cs
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !15, !alias.scope !589 ; 3 uses
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, %i.cu
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ex, %i.eu
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !15, !alias.scope !589 ; 3 uses
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, %i.cw
  %i.fc = fadd reassoc nsz arcp contract afn float %i.ey, %i.fb ; 2 uses
  %i.fd = fmul reassoc nsz arcp contract afn float %i.et, %i.cy
  %i.fe = fmul reassoc nsz arcp contract afn float %i.ew, %i.da
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, %i.fd
  %i.fg = fmul reassoc nsz arcp contract afn float %i.fa, %i.dc
  %i.fh = fadd reassoc nsz arcp contract afn float %i.ff, %i.fg ; 2 uses
  %i.fi = fmul reassoc nsz arcp contract afn float %i.et, %i.de
  %i.fj = fmul reassoc nsz arcp contract afn float %i.ew, %i.dg
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.fi
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fa, %i.di
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl ; 2 uses
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, %i.em
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fh, %i.er
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fn, %i.fo ; 3 uses
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fc, %i.er
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fm, %i.eh
  %i.fs = fsub reassoc nsz arcp contract afn float %i.fq, %i.fr ; 3 uses
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fh, %i.eh
  %i.fu = fmul reassoc nsz arcp contract afn float %i.fc, %i.em
  %i.fv = fsub reassoc nsz arcp contract afn float %i.ft, %i.fu ; 3 uses
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fp, %i.fp
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fs, %i.fs
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fx, %i.fw
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fv, %i.fv
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fy, %i.fz ; 2 uses
  %i.gb = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ga)
  %i.gc = fcmp reassoc nsz arcp contract afn ogt float %i.ga, 0.000000e+00
  %i.gd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gb
  %i.ge = select reassoc nsz arcp contract afn i1 %i.gc, float %i.gd, float 1.000000e+00 ; 3 uses
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.fp ; 2 uses
  %i.gg = fmul reassoc nsz arcp contract afn float %i.ge, %i.fs ; 2 uses
  %i.gh = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.gf, float noundef %i.gg) #35 ; 2 uses
  %i.gi = fcmp reassoc nsz arcp contract afn ogt float %i.gh, 0.000000e+00
  %i.gj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gh
  %i.gk = select reassoc nsz arcp contract afn i1 %i.gi, float %i.gj, float 1.000000e+00
  %.sroa.speculated151 = select i1 %.not129.not, float 1.000000e+00, float 0.000000e+00
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gf, %.sroa.speculated151
  %.sroa.speculated148 = select i1 %.not129.not, float 0.000000e+00, float 1.000000e+00
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gg, %.sroa.speculated148
  %i.gn = fmul reassoc nsz arcp contract afn float %i.fv, 0.000000e+00
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, %i.ge
  %reass.add = fadd reassoc nsz arcp contract afn float %i.go, %i.gm
  %reass.add163 = fadd reassoc nsz arcp contract afn float %reass.add, %i.gl
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add163, %i.gk ; 2 uses
  %i.gp = fmul reassoc nsz arcp contract afn float %reass.mul, %reass.mul
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.gr = load float, ptr %i.gq, align 16, !tbaa !306 ; 2 uses
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gp, %i.gr
  %i.gt = fpext reassoc nsz arcp contract afn float %i.gs to double ; 2 uses
  %i.gu = fpext reassoc nsz arcp contract afn float %i.gr to double ; 2 uses
  br i1 %.not129.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gv = fadd reassoc nsz arcp contract afn double %.0117164, %i.gt
  %i.gw = fadd reassoc nsz arcp contract afn double %.0113166, %i.gu
  %i.gx = add nsw i32 %.0109168, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.gy = fadd reassoc nsz arcp contract afn double %.0115165, %i.gt
  %i.gz = fadd reassoc nsz arcp contract afn double %.0111167, %i.gu
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ha = phi double [ %i.gy, %bb.m ], [ %.0115165, %bb.l ]
  %i.hb = phi double [ %.0117164, %bb.m ], [ %i.gv, %bb.l ]
  %i.hc = phi double [ %.0113166, %bb.m ], [ %i.gw, %bb.l ]
  %.lobit157161 = phi i32 [ 1, %bb.m ], [ 0, %bb.l ]
  %i.hd = phi i32 [ %.0109168, %bb.m ], [ %i.gx, %bb.l ]
  %i.he = phi double [ %i.gz, %bb.m ], [ %.0111167, %bb.l ]
  %i.hf = add nsw i32 %.lobit157161, %.0107169
  %i.hg = add nsw i32 %.0106170, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.n
  %.1118 = phi nsz double [ %.0117164, %bb.j ], [ %i.hb, %bb.n ] ; 2 uses
  %.1116 = phi nsz double [ %.0115165, %bb.j ], [ %i.ha, %bb.n ] ; 2 uses
  %.1114 = phi nsz double [ %.0113166, %bb.j ], [ %i.hc, %bb.n ] ; 3 uses
  %.1112 = phi nsz double [ %.0111167, %bb.j ], [ %i.he, %bb.n ] ; 3 uses
  %.1110 = phi i32 [ %.0109168, %bb.j ], [ %i.hd, %bb.n ] ; 2 uses
  %.1108 = phi i32 [ %.0107169, %bb.j ], [ %i.hf, %bb.n ] ; 2 uses
  %.1 = phi i32 [ %.0106170, %bb.j ], [ %i.hg, %bb.n ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j

bb.p:                                             ; preds = %._crit_edge
  %i.hh = sitofp reassoc nsz arcp contract afn i32 %.1108 to float
  %i.hi = fpext reassoc nsz arcp contract afn float %i.hh to double
  %i.hj = fmul reassoc nsz arcp contract afn double %.1116, %i.hi
  %i.hk = uitofp nneg i32 %.1 to double
  %i.hl = fmul reassoc nsz arcp contract afn double %.1112, %i.hk
  %i.hm = fdiv reassoc nsz arcp contract afn double %i.hj, %i.hl
  br label %.thread

.thread:                                          ; preds = %bb.i, %._crit_edge, %bb.p
  %i.hn = phi double [ %i.dr, %bb.p ], [ %i.dr, %._crit_edge ], [ 0.000000e+00, %bb.i ]
  %i.ho = phi reassoc nsz arcp contract afn double [ %i.hm, %bb.p ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %bb.i ]
  %i.hp = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.hn
  %i.hq = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ho
  %i.hr = fmul reassoc nsz arcp contract afn double %i.hq, %i.hp
  %i.hs = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.hr
  %i.ht = call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.hs)
  %i.hu = fmul reassoc nsz arcp contract afn double %i.ht, 1.000000e+06
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret double %i.hu
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @atanh(double noundef) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tanh.f64(double) #11

; Function Attrs: nounwind uwtable
define internal fastcc void @_do_get_structure_quad(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca [8 x float], align 16             ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !125 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #34 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !152
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #34 ; 0 uses
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.l) #34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !143
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.p) #34
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !126
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.q) #34
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !246
  %.val = load ptr, ptr %i.d, align 16, !tbaa !125
  tail call fastcc void @_gui_update_structure_states(ptr %.val, ptr noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !143
  %i.x = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.u, ptr noundef %i.w, ptr noundef nonnull %0) #34
  %i.y = load ptr, ptr %i.d, align 16, !tbaa !125 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 148 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !178
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.d, label %_do_clean_structure.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_draw_save_lines_to_params(ptr noundef nonnull %0)
  store i32 1, ptr %i.z, align 4, !tbaa !178
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  store i32 0, ptr %i.ab, align 8, !tbaa !180
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 220
  store i32 0, ptr %i.ac, align 4, !tbaa !230
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  store i32 0, ptr %i.ad, align 8, !tbaa !232
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179 ; 2 uses
  %.not16.i = icmp eq ptr %i.af, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.af) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.ae, align 8, !tbaa !179
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 228 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !183
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !183
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 368
  store i32 0, ptr %i.aj, align 8, !tbaa !197
  store i32 0, ptr %i.z, align 4, !tbaa !178
  br label %_do_clean_structure.exit

_do_clean_structure.exit:                         ; preds = %bb.c, %bb.f
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !246
  %i.al = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.ak) #34
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_do_clean_structure.exit
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.m

bb.h:                                             ; preds = %_do_clean_structure.exit
  %i.am = tail call fastcc i32 @_draw_retrieve_lines_from_params(ptr noundef nonnull %0, i32 noundef 2)
  %.not42 = icmp eq i32 %i.am, 0
  br i1 %.not42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !126
  %i.ao = call i32 @dt_dev_get_preview_size(ptr noundef %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #34 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.ap = load float, ptr %i.a, align 4, !tbaa !15
  %i.aq = load float, ptr %i.b, align 4, !tbaa !15
  %i.ar = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.aq, i64 1
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.au = fpext reassoc nsz arcp contract afn <4 x float> %i.at to <4 x double>
  %i.av = fmul reassoc nsz arcp contract afn <4 x double> %i.au, <double 2.000000e-01, double 2.000000e-01, double 8.000000e-01, double 8.000000e-01>
  %i.aw = fptrunc reassoc nsz arcp contract afn <4 x double> %i.av to <4 x float>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 2, i32 1, i32 2, i32 3>
  store <8 x float> %i.ax, ptr %i.c, align 16, !tbaa !15
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !126 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !143
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bc = load i32, ptr %i.bb, align 16, !tbaa !144
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.bc to double
  %i.be = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.ay, ptr noundef %i.ba, double noundef %i.bd, i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef 4) #34
  %.not43 = icmp eq i32 %i.be, 0
  br i1 %.not43, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  store i32 2, ptr %i.bi, align 8, !tbaa !197
  %i.bj = call noalias dereferenceable_or_null(256) ptr @calloc(i64 noundef 4, i64 noundef 64) #36 ; 44 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !179
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  store i32 4, ptr %i.bl, align 8, !tbaa !180
  %i.bm = load <2 x float>, ptr %i.c, align 16, !tbaa !15 ; 6 uses
  store <2 x float> %i.bm, ptr %i.bj, align 16, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bh, align 8, !tbaa !15 ; 12 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bu = extractelement <2 x float> %i.bp, i64 1
  store <2 x float> %i.bp, ptr %i.bo, align 4, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  store float 1.000000e+00, ptr %i.bv, align 4, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.ca, align 4, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.bg, align 16, !tbaa !15 ; 8 uses
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  store <2 x float> %i.cd, ptr %i.cc, align 16, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  store float 1.000000e+00, ptr %i.cf, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 76
  %i.ch = load <2 x float>, ptr %i.bf, align 8, !tbaa !15 ; 10 uses
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ck = extractelement <2 x float> %i.ch, i64 1
  store <2 x float> %i.ch, ptr %i.cg, align 4, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 84
  store float 1.000000e+00, ptr %i.cl, align 4, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bj, i64 116
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 120
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 92
  store <2 x float> splat (float 1.000000e+00), ptr %i.cq, align 4, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 128 ; 2 uses
  store <2 x float> %i.bm, ptr %i.cr, align 16, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  store float 1.000000e+00, ptr %i.cs, align 8, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 140
end_hunk_9
