Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DrawRectangleRounded:bb.a
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.dm = sitofp i32 %i.dl to float
  %i.dn = fdiv float %i.ae, %i.dm
  tail call void @rlTexCoord2f(float noundef %i.dk, float noundef %i.dn) #14
  tail call void @rlVertex2f(float noundef %.sroa.0281.0.vec.extract, float noundef %i.x) #14
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.dp = sitofp i32 %i.do to float
  %i.dq = fdiv float %i.ad, %i.dp
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ds = sitofp i32 %i.dr to float
  %i.dt = fdiv float %i.ae, %i.ds
  tail call void @rlTexCoord2f(float noundef %i.dq, float noundef %i.dt) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.x) #14
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.dv = sitofp i32 %i.du to float
  %i.dw = fdiv float %i.ad, %i.dv
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.dy = sitofp i32 %i.dx to float
  %i.dz = fdiv float %.sroa.031.4.vec.extract, %i.dy
  tail call void @rlTexCoord2f(float noundef %i.dw, float noundef %i.dz) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.v) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.eb = sitofp i32 %i.ea to float
  %i.ec = fdiv float %.sroa.031.0.vec.extract, %i.eb
  %i.ed = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = fdiv float %.sroa.031.4.vec.extract, %i.ee
  tail call void @rlTexCoord2f(float noundef %i.ec, float noundef %i.ef) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.v) #14
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.eh = sitofp i32 %i.eg to float
  %i.ei = fdiv float %.sroa.031.0.vec.extract, %i.eh
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ek = sitofp i32 %i.ej to float
  %i.el = fdiv float %i.ae, %i.ek
  tail call void @rlTexCoord2f(float noundef %i.ei, float noundef %i.el) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.x) #14
  %i.em = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.en = sitofp i32 %i.em to float
  %i.eo = fdiv float %i.ad, %i.en
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.eq = sitofp i32 %i.ep to float
  %i.er = fdiv float %i.ae, %i.eq
  tail call void @rlTexCoord2f(float noundef %i.eo, float noundef %i.er) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %i.x) #14
  %i.es = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.et = sitofp i32 %i.es to float
  %i.eu = fdiv float %i.ad, %i.et
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ew = sitofp i32 %i.ev to float
  %i.ex = fdiv float %.sroa.031.4.vec.extract, %i.ew
  tail call void @rlTexCoord2f(float noundef %i.eu, float noundef %i.ex) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %i.v) #14
  tail call void @rlEnd() #14
  tail call void @rlSetTexture(i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @__const.DrawRectangleRoundedLinesEx.angles, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4          ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.fb = load <2 x float>, ptr %i.fa, align 8    ; 3 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 1 ; 7 uses
  %i.fd = extractelement <2 x float> %i.fb, i64 0 ; 7 uses
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.0357.lcssa = phi float [ %i.ez, %bb.h ], [ %i.fq, %.lr.ph ] ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.0365 = phi i32 [ %i.gw, %.lr.ph ], [ 0, %bb.h ]
  %.0357364 = phi float [ %i.fq, %.lr.ph ], [ %i.ez, %bb.h ] ; 3 uses
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ff = sitofp i32 %i.fe to float
  %i.fg = fdiv float %.sroa.031.0.vec.extract, %i.ff
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.fi = sitofp i32 %i.fh to float
  %i.fj = fdiv float %.sroa.031.4.vec.extract, %i.fi
  tail call void @rlTexCoord2f(float noundef %i.fg, float noundef %i.fj) #14
  tail call void @rlVertex2f(float noundef %i.fd, float noundef %i.fc) #14
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.fl = sitofp i32 %i.fk to float
  %i.fm = fdiv float %i.ad, %i.fl
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.fo = sitofp i32 %i.fn to float
  %i.fp = fdiv float %.sroa.031.4.vec.extract, %i.fo
  tail call void @rlTexCoord2f(float noundef %i.fm, float noundef %i.fp) #14
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.r, float 2.000000e+00, float %.0357364) ; 3 uses
  %i.fr = fmul float %i.fq, f0x3C8EFA35           ; 2 uses
  %i.fs = tail call float @cosf(float noundef %i.fr) #14
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.d, float %i.fd)
  %i.fu = tail call float @sinf(float noundef %i.fr) #14
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.d, float %i.fc)
  tail call void @rlVertex2f(float noundef %i.ft, float noundef %i.fv) #14
  %i.fw = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.fx = sitofp i32 %i.fw to float
  %i.fy = fdiv float %i.ad, %i.fx
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ga = sitofp i32 %i.fz to float
  %i.gb = fdiv float %i.ae, %i.ga
  tail call void @rlTexCoord2f(float noundef %i.fy, float noundef %i.gb) #14
  %i.gc = fadd float %i.r, %.0357364
  %i.gd = fmul float %i.gc, f0x3C8EFA35           ; 2 uses
  %i.ge = tail call float @cosf(float noundef %i.gd) #14
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.d, float %i.fd)
  %i.gg = tail call float @sinf(float noundef %i.gd) #14
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.d, float %i.fc)
  tail call void @rlVertex2f(float noundef %i.gf, float noundef %i.gh) #14
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.gj = sitofp i32 %i.gi to float
  %i.gk = fdiv float %.sroa.031.0.vec.extract, %i.gj
  %i.gl = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.gm = sitofp i32 %i.gl to float
  %i.gn = fdiv float %i.ae, %i.gm
  tail call void @rlTexCoord2f(float noundef %i.gk, float noundef %i.gn) #14
  %i.go = fmul float %.0357364, f0x3C8EFA35       ; 2 uses
  %i.gp = tail call float @cosf(float noundef %i.go) #14
  %i.gq = tail call float @sinf(float noundef %i.go) #14
  %i.gr = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.gq, i64 1
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.ah, <2 x float> %i.fb) ; 2 uses
  %i.gu = extractelement <2 x float> %i.gt, i64 0
  %i.gv = extractelement <2 x float> %i.gt, i64 1
  tail call void @rlVertex2f(float noundef %i.gu, float noundef %i.gv) #14
  %i.gw = add nuw nsw i32 %.0365, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gw, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.gx = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.gy = sitofp i32 %i.gx to float
  %i.gz = fdiv float %.sroa.031.0.vec.extract, %i.gy
  %i.ha = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.hb = sitofp i32 %i.ha to float
  %i.hc = fdiv float %.sroa.031.4.vec.extract, %i.hb
  tail call void @rlTexCoord2f(float noundef %i.gz, float noundef %i.hc) #14
  tail call void @rlVertex2f(float noundef %i.fd, float noundef %i.fc) #14
  %i.hd = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.he = sitofp i32 %i.hd to float
  %i.hf = fdiv float %i.ad, %i.he
  %i.hg = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.hh = sitofp i32 %i.hg to float
  %i.hi = fdiv float %i.ae, %i.hh
  tail call void @rlTexCoord2f(float noundef %i.hf, float noundef %i.hi) #14
  %i.hj = fadd float %i.r, %.0357.lcssa
  %i.hk = fmul float %i.hj, f0x3C8EFA35           ; 2 uses
  %i.hl = tail call float @cosf(float noundef %i.hk) #14
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.d, float %i.fd)
  %i.hn = tail call float @sinf(float noundef %i.hk) #14
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.d, float %i.fc)
  tail call void @rlVertex2f(float noundef %i.hm, float noundef %i.ho) #14
  %i.hp = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.hq = sitofp i32 %i.hp to float
  %i.hr = fdiv float %.sroa.031.0.vec.extract, %i.hq
  %i.hs = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ht = sitofp i32 %i.hs to float
  %i.hu = fdiv float %i.ae, %i.ht
  tail call void @rlTexCoord2f(float noundef %i.hr, float noundef %i.hu) #14
  %i.hv = fmul float %.0357.lcssa, f0x3C8EFA35    ; 2 uses
  %i.hw = tail call float @cosf(float noundef %i.hv) #14
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.d, float %i.fd)
  %i.hy = tail call float @sinf(float noundef %i.hv) #14
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.d, float %i.fc)
  tail call void @rlVertex2f(float noundef %i.hx, float noundef %i.hz) #14
  %i.ia = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ib = sitofp i32 %i.ia to float
  %i.ic = fdiv float %i.ad, %i.ib
  %i.id = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ie = sitofp i32 %i.id to float
  %i.if = fdiv float %.sroa.031.4.vec.extract, %i.ie
  tail call void @rlTexCoord2f(float noundef %i.ic, float noundef %i.if) #14
  tail call void @rlVertex2f(float noundef %i.fd, float noundef %i.fc) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond368.not, label %bb.g, label %bb.h

bb.k:                                             ; preds = %bb.g, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawRectangleRoundedLines(<2 x float> %0, <2 x float> %1, float noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #4 {
bb.a:
  tail call void @DrawRectangleRoundedLinesEx(<2 x float> %0, <2 x float> %1, float noundef %2, i32 noundef %3, float noundef 1.000000e+00, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawRectangleRoundedLinesEx(<2 x float> %0, <2 x float> %1, float noundef %2, i32 noundef %3, float noundef %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca [4 x %struct.Vector2], align 16     ; 11 uses
  %.sroa.0232.0.extract.trunc = trunc i32 %5 to i8 ; 13 uses
  %.sroa.9.0.extract.shift = lshr i32 %5, 8
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8 ; 13 uses
  %.sroa.16.0.extract.shift = lshr i32 %5, 16
  %.sroa.16.0.extract.trunc = trunc i32 %.sroa.16.0.extract.shift to i8 ; 13 uses
  %.sroa.23.0.extract.shift = lshr i32 %5, 24
  %.sroa.23.0.extract.trunc = trunc nuw i32 %.sroa.23.0.extract.shift to i8 ; 13 uses
  %i.a = fcmp olt float %4, 0.000000e+00
  %spec.store.select = select i1 %i.a, float 0.000000e+00, float %4 ; 9 uses
  %i.b = fcmp ugt float %2, 0.000000e+00
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.e = fsub <2 x float> %0, %i.d                ; 5 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> splat (float 2.000000e+00), <2 x float> %1) ; 6 uses
  %i.g = fcmp ogt <2 x float> %i.d, %i.f          ; 2 uses
  %7 = extractelement <2 x i1> %i.g, i64 0
  %8 = extractelement <2 x i1> %i.g, i64 1
  %or.cond.i = select i1 %7, i1 true, i1 %8
  br i1 %or.cond.i, label %bb.c, label %DrawRectangleLinesEx.exit

bb.c:                                             ; preds = %bb.b
  %i.h = extractelement <2 x float> %i.f, i64 0   ; 3 uses
  %i.i = extractelement <2 x float> %i.f, i64 1   ; 3 uses
  %i.j = fcmp ult float %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fmul float %i.i, 5.000000e-01
  br label %DrawRectangleLinesEx.exit

bb.e:                                             ; preds = %bb.c
  %i.l = fcmp ugt float %i.h, %i.i
  br i1 %i.l, label %DrawRectangleLinesEx.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = fmul float %i.h, 5.000000e-01
  br label %DrawRectangleLinesEx.exit

DrawRectangleLinesEx.exit:                        ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi float [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %spec.store.select, %bb.e ], [ %spec.store.select, %bb.b ] ; 4 uses
  %.sroa.513.12.vec.insert.i = insertelement <2 x float> %i.f, float %.0.i, i64 1 ; 2 uses
  %i.n = extractelement <2 x float> %i.e, i64 1
  %i.o = extractelement <2 x float> %i.f, i64 1
  %i.p = fadd float %i.n, %.0.i                   ; 2 uses
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %i.e, float %i.p, i64 1
  %.sroa.55.8.vec.insert.i = insertelement <2 x float> poison, float %.0.i, i64 0 ; 2 uses
  %i.q = fneg float %.0.i
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 2.000000e+00, float %i.o)
  %.sroa.55.12.vec.insert.i = insertelement <2 x float> %.sroa.55.8.vec.insert.i, float %i.r, i64 1 ; 2 uses
  %i.s = shufflevector <2 x float> %.sroa.55.8.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fsub <2 x float> %i.e, %i.s
  %i.u = fadd <2 x float> %i.f, %i.t              ; 2 uses
  %i.v = shufflevector <2 x float> %i.e, <2 x float> %i.u, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.u, float %i.p, i64 1
  tail call void @DrawRectanglePro(<2 x float> %i.e, <2 x float> %.sroa.513.12.vec.insert.i, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %5)
  tail call void @DrawRectanglePro(<2 x float> %i.v, <2 x float> %.sroa.513.12.vec.insert.i, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %5)
  tail call void @DrawRectanglePro(<2 x float> %.sroa.03.4.vec.insert.i, <2 x float> %.sroa.55.12.vec.insert.i, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %5)
  tail call void @DrawRectanglePro(<2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.55.12.vec.insert.i, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %5)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.w = fcmp oge float %2, 1.000000e+00
  %spec.store.select1 = select i1 %i.w, float 1.000000e+00, float %2
  %.sroa.43339.8.vec.extract341 = extractelement <2 x float> %1, i64 0 ; 2 uses
  %.sroa.43339.12.vec.extract365 = extractelement <2 x float> %1, i64 1 ; 3 uses
  %i.x = fcmp ogt float %.sroa.43339.8.vec.extract341, %.sroa.43339.12.vec.extract365
  %.sroa.43339.12.vec.extract365..sroa.43339.8.vec.extract341 = select i1 %i.x, float %.sroa.43339.12.vec.extract365, float %.sroa.43339.8.vec.extract341
  %.in = fmul float %.sroa.43339.12.vec.extract365..sroa.43339.8.vec.extract341, %spec.store.select1
  %i.y = fmul float %.in, 5.000000e-01            ; 11 uses
  %i.z = fcmp ugt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %3, 4
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = fdiv float 5.000000e-01, %i.y
  %i.ac = fsub float 1.000000e+00, %i.ab
  %i.ad = tail call float @powf(float noundef %i.ac, float noundef 2.000000e+00) #14
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float 2.000000e+00, float -1.000000e+00)
  %i.af = tail call float @acosf(float noundef %i.ae) #14
  %i.ag = fdiv float f0x40C90FDB, %i.af
  %i.ah = tail call float @llvm.ceil.f32(float %i.ag)
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = fptosi float %i.ai to i32               ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 1
  %spec.store.select2 = select i1 %i.ak, i32 4, i32 %i.aj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0394 = phi i32 [ %spec.store.select2, %bb.i ], [ %3, %bb.h ] ; 8 uses
  %i.al = sitofp i32 %.0394 to float
  %i.am = fdiv float 9.000000e+01, %i.al          ; 5 uses
  %i.an = fadd float %i.y, %spec.store.select     ; 20 uses
  %.sroa.0258.0.vec.extract260 = extractelement <2 x float> %0, i64 0 ; 3 uses
  %i.ao = fadd float %.sroa.0258.0.vec.extract260, %i.y
  %i.ap = fadd float %i.ao, 5.000000e-01          ; 12 uses
  %.sroa.0258.4.vec.extract300 = extractelement <2 x float> %0, i64 1 ; 4 uses
  %i.aq = fsub float %.sroa.0258.4.vec.extract300, %spec.store.select
  %i.ar = fadd float %i.aq, 5.000000e-01          ; 4 uses
  %foldExtExtBinop = fadd <2 x float> %0, %1
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.at = fsub float %i.as, %i.y
  %i.au = fadd float %i.at, -5.000000e-01         ; 12 uses
  %i.av = fadd float %i.as, %spec.store.select
  %i.aw = fadd float %i.av, -5.000000e-01         ; 4 uses
  %i.ax = fadd float %.sroa.0258.4.vec.extract300, %i.y
  %i.ay = fadd float %i.ax, 5.000000e-01          ; 12 uses
  %i.az = fadd float %.sroa.0258.4.vec.extract300, %.sroa.43339.12.vec.extract365 ; 3 uses
  %i.ba = fsub float %i.az, %i.y
  %i.bb = fadd float %i.ba, -5.000000e-01         ; 12 uses
  %i.bc = fadd float %i.az, %spec.store.select
  %i.bd = fadd float %i.bc, -5.000000e-01         ; 4 uses
  %i.be = fsub float %.sroa.0258.0.vec.extract260, %spec.store.select
  %i.bf = fadd float %i.be, 5.000000e-01          ; 4 uses
  %i.bg = fadd float %.sroa.0258.4.vec.extract300, 5.000000e-01 ; 2 uses
  %i.bh = fadd float %i.as, -5.000000e-01         ; 2 uses
  %i.bi = fadd float %i.az, -5.000000e-01         ; 2 uses
  %i.bj = fadd float %.sroa.0258.0.vec.extract260, 5.000000e-01 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store float %i.ap, ptr %6, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ay, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.au, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.ay, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.au, ptr %i.bn, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.bb, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.ap, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.bb, ptr %i.bq, align 4
  %i.br = fcmp ogt float %spec.store.select, 1.000000e+00
  br i1 %i.br, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload398 = load i32, ptr @texShapes, align 16
  tail call void @rlSetTexture(i32 noundef %.sroa.0.0.copyload398) #14
  %.sroa.0.0.copyload.i = load <2 x float>, ptr @texShapesRec, align 16 ; 4 uses
  %.sroa.2.0.copyload.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @texShapesRec, i64 8), align 8 ; 2 uses
  tail call void @rlBegin(i32 noundef 7) #14
  %i.bs = icmp sgt i32 %.0394, 0
  %.sroa.042.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 10 uses
  %.sroa.042.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 10 uses
  %foldExtExtBinop422 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.bt = extractelement <2 x float> %foldExtExtBinop422, i64 0 ; 10 uses
  %foldExtExtBinop424 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.bu = extractelement <2 x float> %foldExtExtBinop424, i64 1 ; 10 uses
  br i1 %i.bs, label %.lr.ph406, label %.split410

.split410:                                        ; preds = %._crit_edge407, %bb.k
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0232.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.bw = sitofp i32 %i.bv to float
  %i.bx = fdiv float %.sroa.042.0.vec.extract, %i.bw
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.bz = sitofp i32 %i.by to float
  %i.ca = fdiv float %.sroa.042.4.vec.extract, %i.bz
  tail call void @rlTexCoord2f(float noundef %i.bx, float noundef %i.ca) #14
  tail call void @rlVertex2f(float noundef %i.ap, float noundef %i.ar) #14
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.cc = sitofp i32 %i.cb to float
  %i.cd = fdiv float %.sroa.042.0.vec.extract, %i.cc
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.cf = sitofp i32 %i.ce to float
  %i.cg = fdiv float %i.bu, %i.cf
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.cg) #14
  tail call void @rlVertex2f(float noundef %i.ap, float noundef %i.bg) #14
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ci = sitofp i32 %i.ch to float
  %i.cj = fdiv float %i.bt, %i.ci
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.cl = sitofp i32 %i.ck to float
  %i.cm = fdiv float %i.bu, %i.cl
  tail call void @rlTexCoord2f(float noundef %i.cj, float noundef %i.cm) #14
  tail call void @rlVertex2f(float noundef %i.au, float noundef %i.bg) #14
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.co = sitofp i32 %i.cn to float
  %i.cp = fdiv float %i.bt, %i.co
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.cr = sitofp i32 %i.cq to float
  %i.cs = fdiv float %.sroa.042.4.vec.extract, %i.cr
  tail call void @rlTexCoord2f(float noundef %i.cp, float noundef %i.cs) #14
  tail call void @rlVertex2f(float noundef %i.au, float noundef %i.ar) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0232.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.cu = sitofp i32 %i.ct to float
  %i.cv = fdiv float %.sroa.042.0.vec.extract, %i.cu
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.cx = sitofp i32 %i.cw to float
  %i.cy = fdiv float %.sroa.042.4.vec.extract, %i.cx
  tail call void @rlTexCoord2f(float noundef %i.cv, float noundef %i.cy) #14
  tail call void @rlVertex2f(float noundef %i.aw, float noundef %i.ay) #14
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.da = sitofp i32 %i.cz to float
  %i.db = fdiv float %.sroa.042.0.vec.extract, %i.da
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.dd = sitofp i32 %i.dc to float
  %i.de = fdiv float %i.bu, %i.dd
  tail call void @rlTexCoord2f(float noundef %i.db, float noundef %i.de) #14
  tail call void @rlVertex2f(float noundef %i.bh, float noundef %i.ay) #14
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.dg = sitofp i32 %i.df to float
  %i.dh = fdiv float %i.bt, %i.dg
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.dj = sitofp i32 %i.di to float
  %i.dk = fdiv float %i.bu, %i.dj
  tail call void @rlTexCoord2f(float noundef %i.dh, float noundef %i.dk) #14
  tail call void @rlVertex2f(float noundef %i.bh, float noundef %i.bb) #14
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.dm = sitofp i32 %i.dl to float
  %i.dn = fdiv float %i.bt, %i.dm
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.dp = sitofp i32 %i.do to float
  %i.dq = fdiv float %.sroa.042.4.vec.extract, %i.dp
  tail call void @rlTexCoord2f(float noundef %i.dn, float noundef %i.dq) #14
  tail call void @rlVertex2f(float noundef %i.aw, float noundef %i.bb) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0232.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ds = sitofp i32 %i.dr to float
  %i.dt = fdiv float %.sroa.042.0.vec.extract, %i.ds
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.dv = sitofp i32 %i.du to float
  %i.dw = fdiv float %.sroa.042.4.vec.extract, %i.dv
  tail call void @rlTexCoord2f(float noundef %i.dt, float noundef %i.dw) #14
  tail call void @rlVertex2f(float noundef %i.ap, float noundef %i.bi) #14
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.dy = sitofp i32 %i.dx to float
  %i.dz = fdiv float %.sroa.042.0.vec.extract, %i.dy
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.eb = sitofp i32 %i.ea to float
  %i.ec = fdiv float %i.bu, %i.eb
  tail call void @rlTexCoord2f(float noundef %i.dz, float noundef %i.ec) #14
  tail call void @rlVertex2f(float noundef %i.ap, float noundef %i.bd) #14
  %i.ed = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = fdiv float %i.bt, %i.ee
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.eh = sitofp i32 %i.eg to float
  %i.ei = fdiv float %i.bu, %i.eh
  tail call void @rlTexCoord2f(float noundef %i.ef, float noundef %i.ei) #14
  tail call void @rlVertex2f(float noundef %i.au, float noundef %i.bd) #14
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ek = sitofp i32 %i.ej to float
  %i.el = fdiv float %i.bt, %i.ek
  %i.em = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.en = sitofp i32 %i.em to float
  %i.eo = fdiv float %.sroa.042.4.vec.extract, %i.en
  tail call void @rlTexCoord2f(float noundef %i.el, float noundef %i.eo) #14
  tail call void @rlVertex2f(float noundef %i.au, float noundef %i.bi) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0232.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.eq = sitofp i32 %i.ep to float
  %i.er = fdiv float %.sroa.042.0.vec.extract, %i.eq
  %i.es = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.et = sitofp i32 %i.es to float
  %i.eu = fdiv float %.sroa.042.4.vec.extract, %i.et
  tail call void @rlTexCoord2f(float noundef %i.er, float noundef %i.eu) #14
  tail call void @rlVertex2f(float noundef %i.bj, float noundef %i.ay) #14
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ew = sitofp i32 %i.ev to float
  %i.ex = fdiv float %.sroa.042.0.vec.extract, %i.ew
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ez = sitofp i32 %i.ey to float
  %i.fa = fdiv float %i.bu, %i.ez
  tail call void @rlTexCoord2f(float noundef %i.ex, float noundef %i.fa) #14
  tail call void @rlVertex2f(float noundef %i.bf, float noundef %i.ay) #14
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.fc = sitofp i32 %i.fb to float
  %i.fd = fdiv float %i.bt, %i.fc
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ff = sitofp i32 %i.fe to float
  %i.fg = fdiv float %i.bu, %i.ff
  tail call void @rlTexCoord2f(float noundef %i.fd, float noundef %i.fg) #14
  tail call void @rlVertex2f(float noundef %i.bf, float noundef %i.bb) #14
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.fi = sitofp i32 %i.fh to float
  %i.fj = fdiv float %i.bt, %i.fi
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.fl = sitofp i32 %i.fk to float
  %i.fm = fdiv float %.sroa.042.4.vec.extract, %i.fl
  tail call void @rlTexCoord2f(float noundef %i.fj, float noundef %i.fm) #14
  tail call void @rlVertex2f(float noundef %i.bj, float noundef %i.bb) #14
  tail call void @rlEnd() #14
  tail call void @rlSetTexture(i32 noundef 0) #14
  br label %bb.n

.lr.ph406:                                        ; preds = %bb.k, %._crit_edge407
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge407 ], [ 0, %bb.k ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @__const.DrawRectangleRoundedLinesEx.angles, i64 %indvars.iv
  %i.fo = load float, ptr %i.fn, align 4
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %.sroa.022.0.copyload = load float, ptr %i.fp, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 4 uses
  br label %bb.l

._crit_edge407:                                   ; preds = %bb.l
end_hunk_0
begin_hunk_1_@GetSplinePointBezierCubic:bb.a
  %i.k = fmul <2 x float> %i.h, %i.j              ; 2 uses
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x float> %1, %i.l
  %i.n = insertelement <2 x float> poison, float %i.b, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %0, <2 x float> %i.m)
  %i.q = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %2, <2 x float> %i.p)
  %i.s = insertelement <2 x float> poison, float %i.e, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %3, <2 x float> %i.r)
  ret <2 x float> %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointRec(<2 x float> %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #10 {
bb.a:
  %.sroa.05.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fcmp oge float %.sroa.05.0.vec.extract, %.sroa.0.0.vec.extract
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fcmp olt float %.sroa.05.0.vec.extract, %i.b
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.05.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.d = fcmp oge float %.sroa.05.4.vec.extract, %.sroa.0.4.vec.extract
  %foldExtExtBinop14 = fadd <2 x float> %1, %2
  %i.e = extractelement <2 x float> %foldExtExtBinop14, i64 1
  %i.f = fcmp olt float %.sroa.05.4.vec.extract, %i.e
  %or.cond12 = select i1 %i.d, i1 %i.f, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond12, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointCircle(<2 x float> %0, <2 x float> %1, float noundef %2) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %0, %1
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop13 = fsub <2 x float> %0, %1    ; 2 uses
  %foldExtExtBinop15 = fmul <2 x float> %foldExtExtBinop13, %foldExtExtBinop13
  %i.b = extractelement <2 x float> %foldExtExtBinop15, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.b)
  %i.d = fmul float %2, %2
  %i.e = fcmp ole float %i.c, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointTriangle(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %1, %3
  %i.a = shufflevector <2 x float> %0, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.b = fsub <2 x float> %i.a, %3                ; 2 uses
  %i.c = shufflevector <2 x float> %0, <2 x float> %3, <2 x i32> <i32 1, i32 2>
  %i.d = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 1, i32 2>
  %i.e = fsub <2 x float> %i.c, %i.d              ; 2 uses
  %i.f = shufflevector <2 x float> %1, <2 x float> %0, <2 x i32> <i32 0, i32 3>
  %i.g = fsub <2 x float> %i.f, %3                ; 2 uses
  %foldExtExtBinop60 = fmul <2 x float> %i.e, %foldExtExtBinop
  %i.h = extractelement <2 x float> %foldExtExtBinop60, i64 1
  %i.i = extractelement <2 x float> %i.b, i64 1
  %i.j = extractelement <2 x float> %i.g, i64 0
  %i.k = tail call float @llvm.fmuladd.f32(float %i.i, float %i.j, float %i.h)
  %i.l = shufflevector <2 x float> %3, <2 x float> %0, <2 x i32> <i32 1, i32 2>
  %i.m = shufflevector <2 x float> %1, <2 x float> %3, <2 x i32> <i32 1, i32 2>
  %i.n = fsub <2 x float> %i.l, %i.m
  %i.o = fmul <2 x float> %i.g, %i.e
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.b, <2 x float> %i.o)
  %i.q = insertelement <2 x float> poison, float %i.k, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x float> %i.p, %i.r              ; 3 uses
  %i.t = extractelement <2 x float> %i.s, i64 1
  %i.u = fsub float 1.000000e+00, %i.t
  %i.v = fcmp ule <2 x float> %i.s, zeroinitializer
  %i.w = bitcast <2 x i1> %i.v to i2
  %i.x = icmp eq i2 %i.w, 0
  %i.y = extractelement <2 x float> %i.s, i64 0
  %i.z = fcmp ogt float %i.u, %i.y
  %or.cond3 = and i1 %i.x, %i.z
  ret i1 %or.cond3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define zeroext i1 @CheckCollisionPointPoly(<2 x float> %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %2, 2
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %2, -1                       ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0
  %wide.trip.count = zext nneg i32 %2 to i64
  %.phi.trans.insert = zext nneg i32 %i.b to i64
  %.phi.trans.insert32 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.phi.trans.insert
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert32, i64 4
  %.pre = load float, ptr %.phi.trans.insert33, align 4
  %i.c = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %i.d = phi float [ %.pre, %bb.b ], [ %i.g, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.031 = phi i64 [ %i.c, %bb.b ], [ %indvars.iv, %bb.e ]
  %.02729 = phi i1 [ false, %bb.b ], [ %.1, %bb.e ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load float, ptr %i.f, align 4            ; 4 uses
  %i.h = fcmp ogt float %i.g, %.sroa.0.4.vec.extract
  %i.i = fcmp ule float %i.d, %.sroa.0.4.vec.extract
  %.not = xor i1 %i.h, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.031
  %i.k = load float, ptr %i.j, align 4
  %i.l = load float, ptr %i.e, align 4            ; 2 uses
  %i.m = fsub float %i.k, %i.l
  %i.n = fsub float %.sroa.0.4.vec.extract, %i.g
  %i.o = fmul float %i.n, %i.m
  %i.p = fsub float %i.d, %i.g
  %i.q = fdiv float %i.o, %i.p
  %i.r = fadd float %i.l, %i.q
  %i.s = fcmp olt float %.sroa.0.0.vec.extract, %i.r
  %spec.select = xor i1 %.02729, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i1 [ %.02729, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.e, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %.1, %bb.e ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionRecs(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %.sroa.05.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.b = fcmp olt float %.sroa.05.0.vec.extract, %i.a
  %foldExtExtBinop15 = fadd <2 x float> %0, %1
  %i.c = extractelement <2 x float> %foldExtExtBinop15, i64 0
  %i.d = fcmp ogt float %i.c, %.sroa.0.0.vec.extract
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop17 = fadd <2 x float> %2, %3
  %i.e = fcmp olt <2 x float> %0, %foldExtExtBinop17
  %i.f = extractelement <2 x i1> %i.e, i64 1
  %foldExtExtBinop19 = fadd <2 x float> %0, %1
  %i.g = fcmp ogt <2 x float> %foldExtExtBinop19, %2
  %i.h = extractelement <2 x i1> %i.g, i64 1
  %or.cond13 = select i1 %i.f, i1 %i.h, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond13, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircles(<2 x float> %0, float noundef %1, <2 x float> %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %2, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop11 = fsub <2 x float> %2, %0    ; 2 uses
  %foldExtExtBinop13 = fmul <2 x float> %foldExtExtBinop11, %foldExtExtBinop11
  %i.b = extractelement <2 x float> %foldExtExtBinop13, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.b)
  %i.d = fadd float %1, %3                        ; 2 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = fcmp ole float %i.c, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircleRec(<2 x float> %0, float noundef %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %i.a = fmul <2 x float> %3, splat (float 5.000000e-01) ; 5 uses
  %i.b = fadd <2 x float> %2, %i.a
  %i.c = fsub <2 x float> %0, %i.b
  %i.d = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.c) ; 4 uses
  %i.e = insertelement <2 x float> poison, float %1, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fadd <2 x float> %i.f, %i.a
  %i.h = fcmp ugt <2 x float> %i.d, %i.g          ; 2 uses
  %4 = extractelement <2 x i1> %i.h, i64 0
  %5 = extractelement <2 x i1> %i.h, i64 1
  %or.cond = select i1 %4, i1 true, i1 %5
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp ugt <2 x float> %i.d, %i.a          ; 2 uses
  %6 = extractelement <2 x i1> %i.i, i64 0
  %7 = extractelement <2 x i1> %i.i, i64 1
  %or.cond37 = select i1 %6, i1 %7, i1 false
  br i1 %or.cond37, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop = fsub <2 x float> %i.d, %i.a
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop43 = fsub <2 x float> %i.d, %i.a ; 2 uses
  %foldExtExtBinop45 = fmul <2 x float> %foldExtExtBinop43, %foldExtExtBinop43
  %i.k = extractelement <2 x float> %foldExtExtBinop45, i64 1
  %i.l = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.k)
  %i.m = fmul float %1, %1
  %i.n = fcmp ole float %i.l, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.n, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @CheckCollisionLines(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #13 {
bb.a:
  %i.a = fsub <2 x float> %1, %0                  ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %3, %2
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop47 = fsub <2 x float> %3, %2    ; 2 uses
  %i.c = extractelement <2 x float> %foldExtExtBinop47, i64 1
  %i.d = fneg float %i.b                          ; 2 uses
  %i.e = extractelement <2 x float> %i.a, i64 1
  %i.f = fmul float %i.e, %i.d
  %i.g = extractelement <2 x float> %i.a, i64 0
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.c, float %i.f) ; 2 uses
  %i.i = tail call float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp ult float %i.i, f0x34000000
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fsub <2 x float> %2, %0                  ; 2 uses
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = insertelement <2 x float> poison, float %i.d, i64 0
  %i.n = fneg <2 x float> %i.a
  %i.o = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.p = fmul <2 x float> %i.l, %i.o
  %i.q = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = shufflevector <2 x float> %i.a, <2 x float> %foldExtExtBinop47, <2 x i32> <i32 3, i32 1>
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.p)
  %i.t = insertelement <2 x float> poison, float %i.h, i64 0
  %i.u = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> zeroinitializer
  %i.w = fdiv <4 x float> %i.u, %i.v              ; 3 uses
  %i.x = fcmp ole <4 x float> %i.w, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.y = fcmp oge <4 x float> %i.w, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.z = shufflevector <4 x i1> %i.x, <4 x i1> %i.y, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aa = freeze <4 x i1> %i.z
  %i.ab = bitcast <4 x i1> %i.aa to i4
  %i.ac = icmp eq i4 %i.ab, -1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.a, <2 x float> %0)
  store <2 x float> %i.ae, ptr %4, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointLine(<2 x float> %0, <2 x float> %1, <2 x float> %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %.sroa.033.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 4 uses
  %.sroa.020.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %0, %1
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.033.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 5 uses
  %.sroa.020.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 4 uses
  %i.b = fsub float %.sroa.033.4.vec.extract, %.sroa.020.4.vec.extract
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %foldExtExtBinop52 = fsub <2 x float> %2, %1
  %i.c = extractelement <2 x float> %foldExtExtBinop52, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 3 uses
  %i.d = fsub float %.sroa.0.4.vec.extract, %.sroa.020.4.vec.extract ; 3 uses
  %i.e = fneg float %i.c
  %i.f = fmul float %i.b, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.a, float %i.d, float %i.f)
  %i.h = tail call float @llvm.fabs.f32(float %i.g)
  %i.i = sitofp i32 %3 to float
  %i.j = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.k = tail call float @llvm.fabs.f32(float %i.d) ; 2 uses
  %i.l = tail call nsz float @llvm.maxnum.f32(float %i.j, float %i.k)
  %i.m = fmul float %i.l, %i.i
  %i.n = fcmp olt float %i.h, %i.m
  br i1 %i.n, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = fcmp ult float %i.j, %i.k
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp ogt float %i.c, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = fcmp ole float %.sroa.020.0.vec.extract, %.sroa.033.0.vec.extract
  %i.r = fcmp ole float %.sroa.033.0.vec.extract, %.sroa.0.0.vec.extract
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp ole float %.sroa.0.0.vec.extract, %.sroa.033.0.vec.extract
  %i.u = fcmp ole float %.sroa.033.0.vec.extract, %.sroa.020.0.vec.extract
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.w = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = fcmp ole float %.sroa.020.4.vec.extract, %.sroa.033.4.vec.extract
  %i.y = fcmp ole float %.sroa.033.4.vec.extract, %.sroa.0.4.vec.extract
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = fcmp ole float %.sroa.0.4.vec.extract, %.sroa.033.4.vec.extract
  %i.ab = fcmp ole float %.sroa.033.4.vec.extract, %.sroa.020.4.vec.extract
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.a
  %.0.shrunk = phi i1 [ false, %bb.a ], [ %i.v, %bb.e ], [ %i.s, %bb.d ], [ %i.z, %bb.g ], [ %i.ac, %bb.h ]
  ret i1 %.0.shrunk
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircleLine(<2 x float> %0, float noundef %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %i.a = fsub <2 x float> %2, %3                  ; 6 uses
  %i.b = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.a)
  %i.c = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.b)
  %i.d = fcmp ugt float %i.c, f0x34000000
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop = fsub <2 x float> %0, %2
  %i.e = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop48 = fsub <2 x float> %0, %2    ; 2 uses
  %foldExtExtBinop50 = fmul <2 x float> %foldExtExtBinop48, %foldExtExtBinop48
  %i.f = extractelement <2 x float> %foldExtExtBinop50, i64 1
  %i.g = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.f)
  %i.h = fadd float %1, 0.000000e+00              ; 2 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = fcmp ole float %i.g, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.025.4.vec.extract = extractelement <2 x float> %2, i64 1
  %.sroa.025.0.vec.extract = extractelement <2 x float> %2, i64 0
  %.sroa.039.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.039.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.k = shufflevector <2 x float> %0, <2 x float> %3, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.l = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.m = fsub <4 x float> %i.k, %i.l              ; 4 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.o = shufflevector <2 x float> %i.n, <2 x float> %i.a, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.p = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.q = shufflevector <2 x float> %i.p, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.r = fmul <2 x float> %i.o, %i.q
  %i.s = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.t = shufflevector <2 x float> %i.s, <2 x float> %i.a, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x float> %i.a, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.v = shufflevector <4 x float> %i.u, <4 x float> %i.m, <2 x i32> <i32 5, i32 1>
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.v, <2 x float> %i.r) ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = extractelement <2 x float> %i.w, i64 1
  %i.z = fdiv float %i.x, %i.y                    ; 3 uses
  %i.aa = fcmp ogt float %i.z, 1.000000e+00
  %i.ab = fcmp olt float %i.z, 0.000000e+00
  %.neg = fneg float %i.z
  %spec.store.select.neg = select i1 %i.ab, float -0.000000e+00, float %.neg
  %i.ac = select i1 %i.aa, float -1.000000e+00, float %spec.store.select.neg ; 2 uses
  %i.ad = extractelement <2 x float> %i.a, i64 0
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ad, float %.sroa.025.0.vec.extract)
  %i.af = fsub float %i.ae, %.sroa.039.0.vec.extract ; 2 uses
  %i.ag = extractelement <2 x float> %i.a, i64 1
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ag, float %.sroa.025.4.vec.extract)
  %i.ai = fsub float %i.ah, %.sroa.039.4.vec.extract ; 2 uses
  %i.aj = fmul float %i.ai, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.aj)
  %i.al = fmul float %1, %1
  %i.am = fcmp ole float %i.ak, %i.al
  br label %bb.d
end_hunk_1
