Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 77
begin_hunk_0_@distort_transform:bb.a
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
  %i.be = sitofp <2 x i32> %i.bd to <2 x float>
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
  %i.a = alloca [3 x [3 x float]], align 64       ; 10 uses
  %i.b = sitofp reassoc nsz arcp contract afn i32 %8 to float ; 6 uses
  %i.c = sitofp reassoc nsz arcp contract afn i32 %9 to float ; 7 uses
  %i.d = fmul reassoc nsz arcp contract afn float %1, f0x3C8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.d) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 6 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 5 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %7) ; 2 uses
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %2) ; 6 uses
  %i.g = fmul reassoc nnan nsz arcp contract afn float %i.c, f0x40E66666
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
  %i.z = fmul reassoc nnan nsz arcp contract afn float %i.b, f0x40E66666
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
  %i.aq = fmul reassoc nnan nsz arcp contract afn float %i.c, -5.000000e-01 ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %cos
  %i.as = fmul reassoc nnan nsz arcp contract afn float %i.b, 5.000000e-01 ; 4 uses
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %sin
  %i.au = fmul reassoc nsz arcp contract afn float %i.aq, %sin
  %i.av = fmul reassoc nsz arcp contract afn float %i.as, %cos
  %i.aw = fsub reassoc nsz arcp contract afn float %i.au, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn float %sin, -0.000000e+00 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bc = fmul reassoc nsz arcp contract afn float %i.j, %i.b ; 2 uses
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, -5.000000e-01
  %i.be = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.x
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.as ; 3 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ac, %i.c ; 2 uses
  %i.bh = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ap
  %i.bi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.e ; 2 uses
  %i.bj = fmul reassoc nnan nsz arcp contract afn float %i.c, 5.000000e-01 ; 2 uses
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.at
  %i.bl = fdiv reassoc nsz arcp contract afn float %i.bd, %i.l ; 3 uses
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.j, %i.c ; 3 uses
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bk, %i.ar ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, 0.000000e+00 ; 2 uses
  %i.bp = fadd reassoc nsz arcp contract afn float %i.ax, %cos
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.bo ; 3 uses
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %4
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bc, 5.000000e-01
  %i.bt = fdiv reassoc nsz arcp contract afn float %i.bs, %i.c ; 3 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %i.f, 2.000000e+00
  %i.bv = fdiv reassoc nsz arcp contract afn float %i.bu, %i.l ; 3 uses
  %i.bw = fmul reassoc nsz arcp contract afn float %cos, 0.000000e+00 ; 4 uses
  %i.bx = fadd reassoc nsz arcp contract afn float %i.ax, %i.bw
  %i.by = fmul reassoc nsz arcp contract afn float %sin, 0.000000e+00 ; 2 uses
  %i.bz = fadd reassoc nsz arcp contract afn float %i.bw, %i.by
  %i.ca = fadd reassoc nsz arcp contract afn float %i.aw, %i.as ; 2 uses
  %i.cb = fsub reassoc nsz arcp contract afn float %i.bw, %sin
  %i.cc = fadd reassoc nsz arcp contract afn float %i.bo, %i.cb ; 3 uses
  %i.cd = fadd reassoc nsz arcp contract afn float %i.bx, %i.bn ; 3 uses
  %i.ce = fadd reassoc nsz arcp contract afn float %i.by, %cos
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ca, 0.000000e+00 ; 2 uses
  %i.cg = fadd reassoc nsz arcp contract afn float %i.ce, %i.cf ; 3 uses
  %i.ch = fadd reassoc nsz arcp contract afn float %i.bw, %sin
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, %i.cf ; 4 uses
  %i.cj = fadd reassoc nsz arcp contract afn float %i.bz, %i.ca ; 4 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cg, %4
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.cc ; 3 uses
  %i.cm = fmul reassoc nsz arcp contract afn float %i.ci, %4
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, %i.bq ; 3 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cj, %4
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, %i.cd ; 3 uses
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cc, %4
  %i.cr = fadd reassoc nsz arcp contract afn float %i.cq, %i.cg ; 2 uses
  %i.cs = fadd reassoc nsz arcp contract afn float %i.br, %i.ci ; 2 uses
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cd, %4
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.cj ; 2 uses
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cg, %i.cc
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, 0.000000e+00 ; 3 uses
  %i.cx = fadd reassoc nsz arcp contract afn float %i.ci, %i.bq
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, 0.000000e+00 ; 3 uses
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cj, %i.cd
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, 0.000000e+00
  %i.db = fadd reassoc nsz arcp contract afn float %i.da, 1.000000e+00 ; 3 uses
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cl, %i.f
  %i.dd = fmul reassoc nsz arcp contract afn float %i.cr, 0.000000e+00 ; 2 uses
  %i.de = fadd reassoc nsz arcp contract afn float %i.dc, %i.cw
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, %i.dd ; 2 uses
  %i.dg = fmul reassoc nsz arcp contract afn float %i.cn, %i.f
  %i.dh = fmul reassoc nsz arcp contract afn float %i.cs, 0.000000e+00 ; 2 uses
  %i.di = fadd reassoc nsz arcp contract afn float %i.dg, %i.cy
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %i.dh ; 3 uses
  store float %i.dj, ptr %i.ay, align 4, !tbaa !15, !alias.scope !357, !noalias !358
  %i.dk = fmul reassoc nsz arcp contract afn float %i.cp, %i.f
  %i.dl = fmul reassoc nsz arcp contract afn float %i.cu, 0.000000e+00 ; 2 uses
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.dk
  %i.dn = fmul reassoc nsz arcp contract afn float %i.db, 0.000000e+00
  %i.do = fadd reassoc nsz arcp contract afn float %i.dm, %i.dn ; 3 uses
  store float %i.do, ptr %i.az, align 8, !tbaa !15, !alias.scope !357, !noalias !358
  %i.dp = fmul reassoc nsz arcp contract afn float %i.cl, %i.bt
  %i.dq = fmul reassoc nsz arcp contract afn float %i.cr, %i.bv
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, %i.dp
  %i.ds = fmul reassoc nsz arcp contract afn float %i.cw, %i.bl
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dr, %i.ds ; 3 uses
  %i.du = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dt, i64 0
  %i.dv = insertelement <4 x float> %i.du, float %i.ci, i64 1
  %i.dw = insertelement <4 x float> %i.dv, float %i.cj, i64 2
  store <4 x float> %i.dw, ptr %i.ba, align 4, !tbaa !15, !noalias !359
  %i.dx = fmul reassoc nsz arcp contract afn float %i.cn, %i.bt
  %i.dy = fmul reassoc nsz arcp contract afn float %i.cs, %i.bv
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.dx
  %i.ea = fmul reassoc nsz arcp contract afn float %i.cy, %i.bl
  %i.eb = fadd reassoc nsz arcp contract afn float %i.dz, %i.ea ; 2 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %i.cp, %i.bt
  %i.ed = fmul reassoc nsz arcp contract afn float %i.cu, %i.bv
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, %i.ec
  %i.ef = fmul reassoc nsz arcp contract afn float %i.db, %i.bl
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ee, %i.ef ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.cl, %i.bm
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, %i.cw
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.dd ; 3 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.cn, %i.bm
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.cy
  %i.em = fadd reassoc nsz arcp contract afn float %i.el, %i.dh ; 3 uses
  %i.en = fmul reassoc nsz arcp contract afn float %i.cp, %i.bm
  %i.eo = fadd reassoc nsz arcp contract afn float %i.dl, %i.en
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.db ; 3 uses
  %i.eq = fmul reassoc nsz arcp contract afn float %i.dt, 0.000000e+00 ; 2 uses
  %i.er = fadd reassoc nsz arcp contract afn float %i.eq, %i.df
  %i.es = fmul reassoc nsz arcp contract afn float %i.ej, 0.000000e+00
  %i.et = fadd reassoc nsz arcp contract afn float %i.er, %i.es ; 2 uses
  %i.eu = fmul reassoc nsz arcp contract afn float %i.eb, 0.000000e+00 ; 2 uses
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eu, %i.dj
  %i.ew = fmul reassoc nsz arcp contract afn float %i.em, 0.000000e+00
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ev, %i.ew ; 2 uses
  %i.ey = fmul reassoc nsz arcp contract afn float %i.eg, 0.000000e+00 ; 2 uses
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, %i.do
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ep, 0.000000e+00
  %i.fb = fadd reassoc nsz arcp contract afn float %i.ez, %i.fa ; 2 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %i.df, 0.000000e+00 ; 2 uses
  %i.fd = fmul reassoc nsz arcp contract afn float %i.x, %i.dt
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, %i.fc
  %i.ff = fmul reassoc nsz arcp contract afn float %i.bf, %i.ej
  %i.fg = fadd reassoc nsz arcp contract afn float %i.fe, %i.ff ; 2 uses
  %i.fh = fmul reassoc nsz arcp contract afn float %i.dj, 0.000000e+00 ; 2 uses
  %i.fi = fmul reassoc nsz arcp contract afn float %i.x, %i.eb
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, %i.fh
  %i.fk = fmul reassoc nsz arcp contract afn float %i.bf, %i.em
  %i.fl = fadd reassoc nsz arcp contract afn float %i.fj, %i.fk ; 2 uses
  %i.fm = fmul reassoc nsz arcp contract afn float %i.do, 0.000000e+00 ; 2 uses
  %i.fn = fmul reassoc nsz arcp contract afn float %i.x, %i.eg
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fn, %i.fm
  %i.fp = fmul reassoc nsz arcp contract afn float %i.bf, %i.ep
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fo, %i.fp ; 2 uses
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fc, %i.ej
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, %i.eq ; 2 uses
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fh, %i.em
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, %i.eu ; 2 uses
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fm, %i.ep
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, %i.ey ; 2 uses
  %i.fx = fmul reassoc nsz arcp contract afn float %i.et, 0.000000e+00 ; 2 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fs, 0.000000e+00 ; 2 uses
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, %i.fx
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.fg ; 4 uses
  store float %i.ga, ptr %i.a, align 64, !tbaa !15, !alias.scope !360, !noalias !361
  %i.gb = fmul reassoc nsz arcp contract afn float %i.ex, 0.000000e+00 ; 2 uses
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fu, 0.000000e+00 ; 2 uses
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.gb
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.fl ; 3 uses
  %i.gf = fmul reassoc nsz arcp contract afn float %i.fb, 0.000000e+00 ; 2 uses
  %i.gg = fmul reassoc nsz arcp contract afn float %i.fw, 0.000000e+00 ; 2 uses
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, %i.gf
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, %i.fq ; 3 uses
  %i.gj = fmul reassoc nsz arcp contract afn float %i.fg, 0.000000e+00
  %i.gk = fadd reassoc nsz arcp contract afn float %i.fy, %i.et
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gc, %i.ex
  %i.gm = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.fq, i64 1
  %i.go = fmul reassoc nsz arcp contract afn <2 x float> %i.gn, zeroinitializer
  %i.gp = fadd reassoc nsz arcp contract afn float %i.gg, %i.fb
  %i.gq = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.gr = insertelement <4 x float> %i.gq, float %i.gp, i64 1
  %i.gs = insertelement <4 x float> %i.gr, float %i.gk, i64 2
  %i.gt = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float %i.gj, i64 2 ; 2 uses
  %i.gv = fadd reassoc nsz arcp contract afn <4 x float> %i.gs, %i.gu ; 2 uses
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.gx = fadd reassoc nsz arcp contract afn float %i.fx, %i.fs
  %i.gy = fadd reassoc nsz arcp contract afn float %i.gb, %i.fu
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gf, %i.fw
  %i.ha = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.gz, i64 1
  %i.hc = insertelement <4 x float> %i.hb, float %i.gx, i64 2
  %i.hd = fadd reassoc nsz arcp contract afn <4 x float> %i.hc, %i.gu
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.hf = insertelement <2 x float> poison, float %i.y, i64 0
  %i.hg = insertelement <2 x float> %i.hf, float %i.bg, i64 1
  %i.hh = fmul reassoc nsz arcp contract afn <2 x float> %i.hg, <float 2.000000e+00, float 5.000000e-01>
  %i.hi = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.b, i64 1
  %i.hk = fdiv reassoc nsz arcp contract afn <2 x float> %i.hh, %i.hj ; 2 uses
  %i.hl = fmul reassoc nsz arcp contract afn float %i.bg, -5.000000e-01
  %i.hm = fdiv reassoc nsz arcp contract afn float %i.hl, %i.ae
  %i.hn = fdiv reassoc nsz arcp contract afn float %i.ac, %i.b
  %i.ho = fmul reassoc nsz arcp contract afn float %i.ga, %i.y
  %i.hp = fmul reassoc nsz arcp contract afn float %i.ge, %i.y
  %i.hq = fmul reassoc nsz arcp contract afn float %i.gi, %i.y
  %i.hr = fmul reassoc nsz arcp contract afn <4 x float> %i.gw, zeroinitializer ; 2 uses
  %i.hs = insertelement <4 x float> poison, float %i.hp, i64 0
  %i.ht = insertelement <4 x float> %i.hs, float %i.hq, i64 1
  %i.hu = insertelement <4 x float> %i.ht, float %i.ho, i64 2
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hw = fadd reassoc nsz arcp contract afn <4 x float> %i.hr, %i.hv
  %i.hx = fmul reassoc nsz arcp contract afn <4 x float> %i.he, zeroinitializer
  %i.hy = fadd reassoc nsz arcp contract afn <4 x float> %i.hw, %i.hx ; 2 uses
  %i.hz = insertelement <4 x float> %i.gw, float %i.gi, i64 1
  %i.ia = insertelement <4 x float> %i.hz, float %i.ge, i64 3 ; 2 uses
  %i.ib = shufflevector <2 x float> %i.hk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %i.ia, %i.ib
  %i.id = shufflevector <4 x float> %i.ia, <4 x float> %i.gv, <4 x i32> <i32 3, i32 5, i32 poison, i32 0>
  %i.ie = insertelement <4 x float> %i.id, float %i.ga, i64 2
  %i.if = shufflevector <2 x float> %i.hk, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ig = fmul reassoc nsz arcp contract afn <4 x float> %i.ie, %i.if
  %i.ih = fadd reassoc nsz arcp contract afn <4 x float> %i.ig, %i.ic
  %i.ii = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = fmul reassoc nsz arcp contract afn <4 x float> %i.he, %i.ij
  %i.il = fadd reassoc nsz arcp contract afn <4 x float> %i.ih, %i.ik ; 2 uses
  %i.im = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.in = insertelement <4 x float> %i.im, float %i.gi, i64 1
  %i.io = insertelement <4 x float> %i.in, float %i.ga, i64 2
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.iq = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = fmul reassoc nsz arcp contract afn <4 x float> %i.ip, %i.ir
  %i.it = fadd reassoc nsz arcp contract afn <4 x float> %i.he, %i.is
  %i.iu = fadd reassoc nsz arcp contract afn <4 x float> %i.it, %i.hr ; 3 uses
  %i.iv = fmul reassoc nsz arcp contract afn float %i.bh, %i.bj
  %i.iw = fmul reassoc nsz arcp contract afn <4 x float> %i.il, zeroinitializer ; 2 uses
  %i.ix = fadd reassoc nsz arcp contract afn <4 x float> %i.iw, %i.hy
  %i.iy = fmul reassoc nsz arcp contract afn <4 x float> %i.iu, zeroinitializer
  %i.iz = fadd reassoc nsz arcp contract afn <4 x float> %i.ix, %i.iy ; 3 uses
  %i.ja = fmul reassoc nsz arcp contract afn <4 x float> %i.hy, zeroinitializer ; 2 uses
  %i.jb = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jd = fmul reassoc nsz arcp contract afn <4 x float> %i.jc, %i.il
  %i.je = fadd reassoc nsz arcp contract afn <4 x float> %i.jd, %i.ja
  %i.jf = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = fmul reassoc nsz arcp contract afn <4 x float> %i.jg, %i.iu
  %i.ji = fadd reassoc nsz arcp contract afn <4 x float> %i.je, %i.jh ; 3 uses
  %i.jj = fadd reassoc nsz arcp contract afn <4 x float> %i.ja, %i.iu
  %i.jk = fadd reassoc nsz arcp contract afn <4 x float> %i.jj, %i.iw ; 3 uses
  %i.jl = insertelement <4 x float> poison, float %i.e, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = fmul reassoc nsz arcp contract afn <4 x float> %i.iz, %i.jm
  %i.jo = fmul reassoc nsz arcp contract afn <4 x float> %i.ji, zeroinitializer ; 3 uses
  %i.jp = fmul reassoc nsz arcp contract afn <4 x float> %i.jk, zeroinitializer ; 3 uses
  %i.jq = fadd reassoc nsz arcp contract afn <4 x float> %i.jp, %i.jn
  %i.jr = fadd reassoc nsz arcp contract afn <4 x float> %i.jq, %i.jo ; 6 uses
  %i.js = extractelement <4 x float> %i.iz, i64 1
  %i.jt = fmul reassoc nsz arcp contract afn float %i.js, 0.000000e+00 ; 2 uses
  %i.ju = extractelement <4 x float> %i.ji, i64 1
  %i.jv = fmul reassoc nsz arcp contract afn float %i.ju, %i.bi
  %i.jw = extractelement <4 x float> %i.jp, i64 1
  %i.jx = fadd reassoc nsz arcp contract afn float %i.jw, %i.jt
  %i.jy = fadd reassoc nsz arcp contract afn float %i.jx, %i.jv ; 3 uses
  %i.jz = shufflevector <4 x float> %i.iz, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ka = fmul reassoc nsz arcp contract afn <2 x float> %i.jz, zeroinitializer ; 2 uses
  %i.kb = shufflevector <4 x float> %i.ji, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.kc = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = fmul reassoc nsz arcp contract afn <2 x float> %i.kb, %i.kd
  %i.kf = shufflevector <4 x float> %i.jp, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.kg = fadd reassoc nsz arcp contract afn <2 x float> %i.kf, %i.ka
  %i.kh = fadd reassoc nsz arcp contract afn <2 x float> %i.kg, %i.ke ; 4 uses
  %i.ki = shufflevector <4 x float> %i.jk, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.kj = fadd reassoc nsz arcp contract afn <2 x float> %i.ka, %i.ki
  %i.kk = shufflevector <4 x float> %i.jo, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.kl = fadd reassoc nsz arcp contract afn <2 x float> %i.kj, %i.kk ; 5 uses
  %i.km = extractelement <4 x float> %i.jk, i64 1
  %i.kn = fadd reassoc nsz arcp contract afn float %i.jt, %i.km
  %i.ko = extractelement <4 x float> %i.jo, i64 1
  %i.kp = fadd reassoc nsz arcp contract afn float %i.kn, %i.ko ; 4 uses
  %i.kq = icmp sgt i32 %9, 0
  br i1 %i.kq, label %.preheader.lr.ph, label %._crit_edge360

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.kr = icmp sgt i32 %8, 0
  %i.ks = add nsw i32 %8, -1
  %i.kt = add nsw i32 %9, -1                      ; 2 uses
  br i1 %i.kr, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ku = shufflevector <2 x float> %i.kh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.kv = shufflevector <4 x float> %i.jr, <4 x float> %i.ku, <2 x i32> <i32 0, i32 5>
  %i.kw = shufflevector <4 x float> %i.jr, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kx = insertelement <2 x float> %i.kw, float %i.jy, i64 1
  %i.ky = extractelement <2 x float> %i.kl, i64 1
  %i.kz = extractelement <2 x float> %i.kl, i64 0
  %i.la = shufflevector <4 x float> %i.jr, <4 x float> %i.ku, <2 x i32> <i32 2, i32 4>
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.0217359.us = phi i32 [ %i.ly, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.lb = phi <2 x float> [ %i.lv, %._crit_edge.us ], [ splat (float f0x7F7FFFFF), %.preheader.us.preheader ]
  %i.lc = uitofp nneg i32 %.0217359.us to float   ; 2 uses
  %i.ld = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fmul reassoc nsz arcp contract afn <2 x float> %i.kv, %i.le
  %i.lg = fadd reassoc nsz arcp contract afn <2 x float> %i.lf, %i.kx
  %i.lh = fmul reassoc nsz arcp contract afn float %i.ky, %i.lc
  %i.li = fadd reassoc nsz arcp contract afn float %i.lh, %i.kp
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.f
  %.0355.us = phi i32 [ 0, %.preheader.us ], [ %i.lw, %bb.f ] ; 2 uses
  %i.lj = phi <2 x float> [ %i.lb, %.preheader.us ], [ %i.lv, %bb.f ] ; 2 uses
  %i.lk = uitofp nneg i32 %.0355.us to float      ; 2 uses
  %i.ll = fmul reassoc nsz arcp contract afn float %i.kz, %i.lk
  %i.lm = fadd reassoc nsz arcp contract afn float %i.li, %i.ll
  %i.ln = insertelement <2 x float> poison, float %i.lk, i64 0
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lp = fmul reassoc nsz arcp contract afn <2 x float> %i.la, %i.lo
  %i.lq = fadd reassoc nsz arcp contract afn <2 x float> %i.lg, %i.lp
  %i.lr = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.ls = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lt = fdiv reassoc nsz arcp contract afn <2 x float> %i.lq, %i.ls ; 2 uses
  %i.lu = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.lj, %i.lt
  %i.lv = select <2 x i1> %i.lu, <2 x float> %i.lj, <2 x float> %i.lt ; 3 uses
  %i.lw = add nuw nsw i32 %i.ks, %.0355.us        ; 2 uses
  %i.lx = icmp slt i32 %i.lw, %8
  br i1 %i.lx, label %bb.f, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.f
  %i.ly = add nuw nsw i32 %i.kt, %.0217359.us     ; 2 uses
  %i.lz = icmp slt i32 %i.ly, %9
  br i1 %i.lz, label %.preheader.us, label %._crit_edge360

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.0217359 = phi i32 [ %i.ma, %.preheader ], [ 0, %.preheader.lr.ph ]
  %i.ma = add nuw nsw i32 %i.kt, %.0217359        ; 2 uses
  %i.mb = icmp slt i32 %i.ma, %9
  br i1 %i.mb, label %.preheader, label %._crit_edge360

._crit_edge360:                                   ; preds = %.preheader, %._crit_edge.us, %bb.e
  %i.mc = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.e ], [ %i.lv, %._crit_edge.us ], [ splat (float f0x7F7FFFFF), %.preheader ] ; 3 uses
  %i.md = fmul reassoc nsz arcp contract afn <2 x float> %i.kh, zeroinitializer ; 2 uses
  %i.me = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mf = fmul reassoc nsz arcp contract afn <2 x float> %i.kl, %i.me
  %i.mg = shufflevector <4 x float> %i.jr, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.mh = fadd reassoc nsz arcp contract afn <2 x float> %i.md, %i.mg
  %i.mi = fsub reassoc nsz arcp contract afn <2 x float> %i.mh, %i.mf
  %i.mj = fmul reassoc nsz arcp contract afn float %i.jy, 0.000000e+00 ; 2 uses
  %i.mk = fmul reassoc nsz arcp contract afn <4 x float> %i.jr, zeroinitializer ; 3 uses
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.mm = insertelement <2 x float> %i.ml, float %i.mj, i64 0
  %i.mn = shufflevector <2 x float> %i.kh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.mo = shufflevector <4 x float> %i.jr, <4 x float> %i.mn, <2 x i32> <i32 1, i32 4>
  %i.mp = fadd reassoc nsz arcp contract afn <2 x float> %i.mm, %i.mo
  %i.mq = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mr = insertelement <2 x float> %i.mq, float %i.kp, i64 0
  %i.ms = fmul reassoc nsz arcp contract afn <2 x float> %i.mr, %i.mc
  %i.mt = fsub reassoc nsz arcp contract afn <2 x float> %i.mp, %i.ms
  %11 = shufflevector <2 x float> %i.mi, <2 x float> %i.mt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mu = insertelement <2 x float> %i.mq, float %i.kp, i64 1
  %i.mv = shufflevector <2 x float> %i.kh, <2 x float> %i.kl, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.mw = insertelement <4 x float> %i.mv, float %i.jy, i64 1
  %i.mx = fadd reassoc nsz arcp contract afn <4 x float> %i.mk, %i.mw ; 2 uses
  %i.my = shufflevector <2 x float> %i.mu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mz = shufflevector <2 x float> %i.mc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.na = fmul reassoc nsz arcp contract afn <4 x float> %i.my, %i.mz
  %i.nb = shufflevector <2 x float> %i.md, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nc = shufflevector <4 x float> %i.na, <4 x float> %i.nb, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.nd = fsub reassoc nsz arcp contract afn <4 x float> %i.mx, %i.nc
  %i.ne = fadd reassoc nsz arcp contract afn <4 x float> %i.mx, %i.nc
  %i.nf = shufflevector <4 x float> %i.nd, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %12 = shufflevector <4 x float> %11, <4 x float> %i.nf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %12, ptr %i.a, align 64, !tbaa !15, !alias.scope !362, !noalias !363
  %i.ng = extractelement <4 x float> %i.mk, i64 1
  %i.nh = fadd reassoc nsz arcp contract afn float %i.ng, %i.kp
  %i.ni = fadd reassoc nsz arcp contract afn float %i.nh, %i.mj
  store float %i.ni, ptr %i.bb, align 32, !tbaa !15, !alias.scope !362, !noalias !363
  %i.nj = icmp eq i32 %10, 0
  br i1 %i.nj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 64 dereferenceable(36) %i.a, i64 36, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge360
  %i.nk = call i32 @mat3inv(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #34
  %.not = icmp eq i32 %i.nk, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %.sroa.121.0..sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nounwind uwtable
define noundef i32 @distort_backtransform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !34  ; 15 uses
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
  call fastcc void @_homography(ptr noundef %i.a, float noundef %i.d, float noundef %.pre, float noundef %i.ao, float noundef %i.aq, float noundef %i.as, float noundef %i.au, float noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 1)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bd = load <2 x i32>, ptr %i.bb, align 4, !tbaa !17
  %i.be = sitofp <2 x i32> %i.bd to <2 x float>
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
  %i.bn = load <4 x float>, ptr %i.a, align 64, !tbaa !15, !noalias !369 ; 7 uses
  %i.bo = load <2 x float>, ptr %i.bm, align 16, !tbaa !15, !noalias !369 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !15, !noalias !369 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bs = load float, ptr %i.br, align 4, !tbaa !15, !noalias !369 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bu = load float, ptr %i.bt, align 32, !tbaa !15, !noalias !369 ; 2 uses
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
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec62 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ca = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat59 ; 3 uses
  %i.cb = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec62, %broadcast.splat61 ; 3 uses
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.ca
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat43, %i.cb
  %i.ce = fadd reassoc nsz arcp contract afn <8 x float> %i.cd, %i.cc
  %i.cf = fadd reassoc nsz arcp contract afn <8 x float> %i.ce, %broadcast.splat45
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat47, %i.ca
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat49, %i.cb
  %i.ci = fadd reassoc nsz arcp contract afn <8 x float> %i.ch, %i.cg
  %i.cj = fadd reassoc nsz arcp contract afn <8 x float> %i.ci, %broadcast.splat51
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat53, %i.ca
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat55, %i.cb
  %i.cm = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %i.ck
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat57 ; 2 uses
  %i.co = fdiv reassoc nsz arcp contract afn <8 x float> %i.cf, %i.cn
  %i.cp = fdiv reassoc nsz arcp contract afn <8 x float> %i.cj, %i.cn
  %interleaved.vec = shufflevector <8 x float> %i.co, <8 x float> %i.cp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bz, align 64, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.040.ph = phi i64 [ 0, %.lr.ph ], [ %i.by, %middle.block ]
end_hunk_0
begin_hunk_1_@modify_roi_in:bb.a
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
  %i.be = sitofp <2 x i32> %i.bd to <2 x float>
  %i.bf = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = fmul reassoc nsz arcp contract afn <2 x float> %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bk = load <2 x i32>, ptr %i.bi, align 4, !tbaa !17
  %i.bl = sitofp <2 x i32> %i.bk to <2 x float>
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
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !377
  %i.ee = uitofp reassoc nsz arcp contract afn i64 %i.ed to float ; 2 uses
  %i.ef = fmul reassoc nnan nsz arcp contract afn float %i.ee, 2.000000e+00
  %i.eg = call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.bh)
  %i.eh = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fsub reassoc nsz arcp contract afn <2 x float> %i.dz, %i.ei
  %i.ek = fptosi <2 x float> %i.ej to <2 x i32>   ; 2 uses
  %i.el = fptosi <2 x float> %i.eg to <2 x i32>   ; 3 uses
  %i.em = icmp sgt <2 x i32> %i.ek, %i.el
  %i.en = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ek, <2 x i32> zeroinitializer)
  %i.eo = select <2 x i1> %i.em, <2 x i32> %i.el, <2 x i32> %i.en ; 2 uses
  %i.ep = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.dz
  %i.eq = fadd reassoc nsz arcp contract afn <2 x float> %i.ep, %i.ea
  %i.er = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fadd reassoc nsz arcp contract afn <2 x float> %i.eq, %i.es
  %i.eu = fptosi <2 x float> %i.et to <2 x i32>   ; 2 uses
  %i.ev = sub nsw <2 x i32> %i.el, %i.eo          ; 2 uses
  %i.ew = icmp slt <2 x i32> %i.ev, %i.eu
  %i.ex = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.eu, <2 x i32> splat (i32 4))
  %i.ey = select <2 x i1> %i.ew, <2 x i32> %i.ev, <2 x i32> %i.ex
  %4 = shufflevector <2 x i32> %i.eo, <2 x i32> %i.ey, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %4, ptr %3, align 4, !tbaa !17
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
  %i.h = load i32, ptr %i.g, align 4, !tbaa !382  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51
  %i.k = mul nsw i32 %i.j, %i.h
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126  ; 3 uses
  %i.n = load i32, ptr %i.m, align 16, !tbaa !383
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
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.w = load <2 x i32>, ptr %i.u, align 16, !tbaa !17
  %i.x = sitofp <2 x i32> %i.w to <2 x float>     ; 3 uses
  %6 = shufflevector <2 x float> zeroinitializer, <2 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %i.a, align 16, !tbaa !15
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
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !40
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, -1.000000e+00
  %i.dn = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dm)
  %i.do = fcmp reassoc nsz arcp contract afn uge float %i.dn, f0x38D1B717
  br i1 %i.do, label %_isneutral.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !41
  %i.dr = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dq)
  %i.ds = fcmp reassoc nsz arcp contract afn uge float %i.dr, f0x38D1B717
  br i1 %i.ds, label %_isneutral.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.du = load float, ptr %i.dt, align 4, !tbaa !42
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, -1.000000e+00
  %i.dw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp reassoc nsz arcp contract afn uge float %i.dw, f0x38D1B717
  br i1 %i.dx, label %_isneutral.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !43
  %i.ea = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dz)
  %i.eb = fcmp reassoc nsz arcp contract afn uge float %i.ea, f0x38D1B717
  br i1 %i.eb, label %_isneutral.exit.thread, label %_isneutral.exit

_isneutral.exit:                                  ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !44
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, -1.000000e+00
  %i.ef = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ee)
  %i.eg = fcmp reassoc nsz arcp contract afn uge float %i.ef, f0x38D1B717
  br i1 %i.eg, label %_isneutral.exit.thread, label %bb.o

bb.o:                                             ; preds = %_isneutral.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !51
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !52
  %i.em = sext i32 %i.el to i64
  %i.en = sext i32 %i.h to i64
  %i.eo = mul nsw i64 %i.ej, %i.en
  %i.ep = mul i64 %i.eo, %i.em
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ep) #34
  br label %bb.p

_isneutral.exit.thread:                           ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %_isneutral.exit
  %i.eq = call ptr @dt_interpolation_new(i32 noundef 3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.er = load float, ptr %i.d, align 4, !tbaa !36
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.et = load float, ptr %i.es, align 4, !tbaa !37
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !38
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !39
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !45
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !46
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !40
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ff = load i32, ptr %i.fe, align 16, !tbaa !47
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !48
  call fastcc void @_homography(ptr noundef %i.b, float noundef %i.er, float noundef %i.et, float noundef %i.ev, float noundef %i.ex, float noundef %i.ez, float noundef %i.fb, float noundef %i.fd, i32 noundef %i.ff, i32 noundef %i.fh, i32 noundef 1)
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 164
end_hunk_1
