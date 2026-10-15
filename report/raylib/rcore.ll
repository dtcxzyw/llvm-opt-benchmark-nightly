Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1927
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@MatrixDecompose:bb.a
  %i.bv = fsub float %i.az, %i.bs                 ; 4 uses
  %.sroa.08.0.vec.insert.i = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bw = fsub float %i.ba, %i.bt                 ; 4 uses
  %.sroa.08.4.vec.insert.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i, float %i.bw, i64 1
  %i.bx = fsub float %i.bb, %i.bu                 ; 4 uses
  %i.by = fmul float %i.bw, %i.bw
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.by)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bz)
  %i.cb = tail call float @sqrtf(float noundef %i.ca) #59 ; 4 uses
  %.sroa.0182.4.vec.insert = insertelement <2 x float> %.sroa.0182.0.vec.insert, float %i.cb, i64 1
  %i.cc = fcmp ogt float %i.cb, f0x3089705F
  br i1 %i.cc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cd = fdiv float 1.000000e+00, %i.cb          ; 3 uses
  %i.ce = fmul float %i.cd, %i.bv
  %.sroa.06.0.vec.insert.i244 = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cf = fmul float %i.cd, %i.bw
  %.sroa.06.4.vec.insert.i246 = insertelement <2 x float> %.sroa.06.0.vec.insert.i244, float %i.cf, i64 1
  %i.cg = fmul float %i.cd, %i.bx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.18.0 = phi <2 x float> [ %.sroa.06.4.vec.insert.i246, %bb.d ], [ %.sroa.08.4.vec.insert.i, %bb.c ] ; 2 uses
  %i.ch = phi float [ %i.cg, %bb.d ], [ %i.bx, %bb.c ] ; 6 uses
  %i.ci = fmul float %i.bd, %.sroa.04.4.vec.extract.i
  %i.cj = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i, float %i.bc, float %i.ci)
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.be, float %i.cj) ; 3 uses
  %i.cl = fmul float %.sroa.04.0.vec.extract.i, %i.ck
  %i.cm = fmul float %.sroa.04.4.vec.extract.i, %i.ck
  %i.cn = fmul float %i.bo, %i.ck
  %i.co = fsub float %i.bc, %i.cl                 ; 2 uses
  %i.cp = fsub float %i.bd, %i.cm                 ; 2 uses
  %i.cq = fsub float %i.be, %i.cn                 ; 2 uses
  %.sroa.04.0.vec.extract.i267 = extractelement <2 x float> %.sroa.18.0, i64 0 ; 6 uses
  %.sroa.04.4.vec.extract.i269 = extractelement <2 x float> %.sroa.18.0, i64 1 ; 6 uses
  %i.cr = fmul float %i.cp, %.sroa.04.4.vec.extract.i269
  %i.cs = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i267, float %i.co, float %i.cr)
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.cq, float %i.cs) ; 3 uses
  %i.cu = fmul float %.sroa.04.0.vec.extract.i267, %i.ct
  %i.cv = fmul float %.sroa.04.4.vec.extract.i269, %i.ct
  %i.cw = fmul float %i.ch, %i.ct
  %i.cx = fsub float %i.co, %i.cu                 ; 4 uses
  %.sroa.08.0.vec.insert.i279 = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cy = fsub float %i.cp, %i.cv                 ; 4 uses
  %.sroa.08.4.vec.insert.i282 = insertelement <2 x float> %.sroa.08.0.vec.insert.i279, float %i.cy, i64 1
  %i.cz = fsub float %i.cq, %i.cw                 ; 4 uses
  %i.da = fmul float %i.cy, %i.cy
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.da)
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.db)
  %i.dd = tail call float @sqrtf(float noundef %i.dc) #59 ; 4 uses
  %i.de = fcmp ogt float %i.dd, f0x3089705F
  br i1 %i.de, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.df = fdiv float 1.000000e+00, %i.dd          ; 3 uses
  %i.dg = fmul float %i.df, %i.cx
  %.sroa.06.0.vec.insert.i288 = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dh = fmul float %i.df, %i.cy
  %.sroa.06.4.vec.insert.i290 = insertelement <2 x float> %.sroa.06.0.vec.insert.i288, float %i.dh, i64 1
  %i.di = fmul float %i.df, %i.cz
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.36.0 = phi <2 x float> [ %.sroa.06.4.vec.insert.i290, %bb.f ], [ %.sroa.08.4.vec.insert.i282, %bb.e ] ; 2 uses
  %i.dj = phi float [ %i.di, %bb.f ], [ %i.cz, %bb.e ] ; 3 uses
  %.sroa.03.4.vec.extract.i293 = extractelement <2 x float> %.sroa.36.0, i64 1 ; 3 uses
  %i.dk = fneg float %.sroa.03.4.vec.extract.i293 ; 2 uses
  %i.dl = fmul float %i.ch, %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %.sroa.04.4.vec.extract.i269, float %i.dj, float %i.dl)
  %.sroa.03.0.vec.extract.i294 = extractelement <2 x float> %.sroa.36.0, i64 0 ; 3 uses
  %i.dn = fneg float %i.dj                        ; 2 uses
  %i.do = fmul float %.sroa.04.0.vec.extract.i267, %i.dn
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.ch, float %.sroa.03.0.vec.extract.i294, float %i.do)
  %i.dq = fneg float %.sroa.03.0.vec.extract.i294 ; 2 uses
  %i.dr = fmul float %.sroa.04.4.vec.extract.i269, %i.dq
  %i.ds = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i267, float %.sroa.03.4.vec.extract.i293, float %i.dr)
  %i.dt = fmul float %.sroa.04.4.vec.extract.i, %i.dp
  %i.du = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i, float %i.dm, float %i.dt)
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.ds, float %i.du)
  %i.dw = fcmp olt float %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dx = insertelement <2 x float> %.sroa.0182.0.vec.insert, float %i.cb, i64 1
  %i.dy = fneg <2 x float> %i.dx
  %i.dz = fneg float %i.dd
  %i.ea = fneg float %.sroa.04.0.vec.extract.i
  %i.eb = fneg float %.sroa.04.4.vec.extract.i
  %i.ec = fneg float %i.bo
  %i.ed = fneg float %.sroa.04.0.vec.extract.i267
  %i.ee = fneg float %.sroa.04.4.vec.extract.i269
  %i.ef = fneg float %i.ch
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.36.28.vec.extract.pre-phi = phi float [ %i.dk, %bb.h ], [ %.sroa.03.4.vec.extract.i293, %bb.g ] ; 4 uses
  %.sroa.36.24.vec.extract.pre-phi = phi float [ %i.dq, %bb.h ], [ %.sroa.03.0.vec.extract.i294, %bb.g ] ; 4 uses
  %.sroa.18.16.vec.extract.pre-phi = phi float [ %i.ee, %bb.h ], [ %.sroa.04.4.vec.extract.i269, %bb.g ] ; 4 uses
  %.sroa.18.12.vec.extract.pre-phi = phi float [ %i.ed, %bb.h ], [ %.sroa.04.0.vec.extract.i267, %bb.g ] ; 4 uses
  %.sroa.0.4.vec.extract.pre-phi = phi float [ %i.eb, %bb.h ], [ %.sroa.04.4.vec.extract.i, %bb.g ] ; 4 uses
  %.sroa.0.0.vec.extract.pre-phi = phi float [ %i.ea, %bb.h ], [ %.sroa.04.0.vec.extract.i, %bb.g ] ; 4 uses
  %.sroa.0182.0 = phi <2 x float> [ %i.dy, %bb.h ], [ %.sroa.0182.4.vec.insert, %bb.g ]
  %.sroa.13.0 = phi float [ %i.dz, %bb.h ], [ %i.dd, %bb.g ]
  %i.eg = phi float [ %i.dn, %bb.h ], [ %i.dj, %bb.g ] ; 4 uses
  %i.eh = phi float [ %i.ef, %bb.h ], [ %i.ch, %bb.g ] ; 4 uses
  %i.ei = phi float [ %i.ec, %bb.h ], [ %i.bo, %bb.g ] ; 4 uses
  %i.ej = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x float> %i.ek, %.sroa.0182.0
  %i.em = fmul float %i.as, %.sroa.13.0
  store <2 x float> %i.el, ptr %3, align 4
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.em, ptr %.sroa.45.0..sroa_idx, align 4
  %i.en = fadd float %.sroa.0.0.vec.extract.pre-phi, %.sroa.18.16.vec.extract.pre-phi
  %i.eo = fadd float %i.eg, %i.en                 ; 2 uses
  %i.ep = fsub float %.sroa.0.0.vec.extract.pre-phi, %.sroa.18.16.vec.extract.pre-phi
  %i.eq = fsub float %i.ep, %i.eg                 ; 2 uses
  %i.er = fsub float %.sroa.18.16.vec.extract.pre-phi, %.sroa.0.0.vec.extract.pre-phi
  %i.es = fsub float %i.er, %i.eg                 ; 2 uses
  %i.et = fsub float %i.eg, %.sroa.0.0.vec.extract.pre-phi
  %i.eu = fsub float %i.et, %.sroa.18.16.vec.extract.pre-phi ; 2 uses
  %i.ev = fcmp ogt float %i.eq, %i.eo             ; 2 uses
  %.054.i = zext i1 %i.ev to i32
  %.0.i = select i1 %i.ev, float %i.eq, float %i.eo ; 2 uses
  %i.ew = fcmp ogt float %i.es, %.0.i             ; 2 uses
  %.155.i = select i1 %i.ew, i32 2, i32 %.054.i
  %.1.i = select i1 %i.ew, float %i.es, float %.0.i ; 2 uses
  %i.ex = fcmp ogt float %i.eu, %.1.i             ; 2 uses
  %.256.i = select i1 %i.ex, i32 3, i32 %.155.i
  %.2.i = select i1 %i.ex, float %i.eu, float %.1.i
  %i.ey = fadd float %.2.i, 1.000000e+00
  %i.ez = tail call float @sqrtf(float noundef %i.ey) #59
  %i.fa = fmul float %i.ez, 5.000000e-01          ; 5 uses
  %i.fb = fdiv float 2.500000e-01, %i.fa          ; 12 uses
  switch i32 %.256.i, label %default.unreachable [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.fc = fsub float %.sroa.36.28.vec.extract.pre-phi, %i.eh
  %i.fd = fmul float %i.fc, %i.fb
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fe = fsub float %i.ei, %.sroa.36.24.vec.extract.pre-phi
  %i.ff = fmul float %i.fe, %i.fb
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ff, i64 1
  %i.fg = fsub float %.sroa.18.12.vec.extract.pre-phi, %.sroa.0.4.vec.extract.pre-phi
  %i.fh = fmul float %i.fg, %i.fb
  %i.fi = insertelement <2 x float> poison, float %i.fh, i64 0
  %.sroa.10.8.vec.insert.i = insertelement <2 x float> %i.fi, float %i.fa, i64 1
  br label %QuaternionFromMatrix.exit

bb.k:                                             ; preds = %bb.i
  %.sroa.0.0.vec.insert30.i = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fj = fsub float %.sroa.36.28.vec.extract.pre-phi, %i.eh
  %i.fk = fmul float %i.fj, %i.fb
  %i.fl = fadd float %.sroa.0.4.vec.extract.pre-phi, %.sroa.18.12.vec.extract.pre-phi
  %i.fm = fmul float %i.fl, %i.fb
  %.sroa.0.4.vec.insert36.i = insertelement <2 x float> %.sroa.0.0.vec.insert30.i, float %i.fm, i64 1
  %i.fn = fadd float %i.ei, %.sroa.36.24.vec.extract.pre-phi
  %i.fo = fmul float %i.fn, %i.fb
  %i.fp = insertelement <2 x float> poison, float %i.fo, i64 0
  %.sroa.10.8.vec.insert43.i = insertelement <2 x float> %i.fp, float %i.fk, i64 1
  br label %QuaternionFromMatrix.exit

bb.l:                                             ; preds = %bb.i
  %i.fq = fsub float %i.ei, %.sroa.36.24.vec.extract.pre-phi
  %i.fr = fmul float %i.fq, %i.fb
  %i.fs = fadd float %.sroa.0.4.vec.extract.pre-phi, %.sroa.18.12.vec.extract.pre-phi
  %i.ft = fmul float %i.fs, %i.fb
  %i.fu = insertelement <2 x float> poison, float %i.ft, i64 0
  %.sroa.0.0.vec.insert32.i = insertelement <2 x float> %i.fu, float %i.fa, i64 1
  %i.fv = fadd float %i.eh, %.sroa.36.28.vec.extract.pre-phi
  %i.fw = fmul float %i.fv, %i.fb
  %i.fx = insertelement <2 x float> poison, float %i.fw, i64 0
  %.sroa.10.8.vec.insert45.i = insertelement <2 x float> %i.fx, float %i.fr, i64 1
  br label %QuaternionFromMatrix.exit

bb.m:                                             ; preds = %bb.i
  %.sroa.10.8.vec.insert47.i = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fy = fsub float %.sroa.18.12.vec.extract.pre-phi, %.sroa.0.4.vec.extract.pre-phi
  %i.fz = fmul float %i.fy, %i.fb
  %.sroa.10.12.vec.insert53.i = insertelement <2 x float> %.sroa.10.8.vec.insert47.i, float %i.fz, i64 1
  %i.ga = fadd float %i.ei, %.sroa.36.24.vec.extract.pre-phi
  %i.gb = fmul float %i.ga, %i.fb
  %.sroa.0.0.vec.insert34.i = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gc = fadd float %i.eh, %.sroa.36.28.vec.extract.pre-phi
  %i.gd = fmul float %i.gc, %i.fb
  %.sroa.0.4.vec.insert40.i = insertelement <2 x float> %.sroa.0.0.vec.insert34.i, float %i.gd, i64 1
  br label %QuaternionFromMatrix.exit

default.unreachable:                              ; preds = %bb.i
  unreachable

QuaternionFromMatrix.exit:                        ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.10.0.i = phi <2 x float> [ %.sroa.10.12.vec.insert53.i, %bb.m ], [ %.sroa.10.8.vec.insert.i, %bb.j ], [ %.sroa.10.8.vec.insert43.i, %bb.k ], [ %.sroa.10.8.vec.insert45.i, %bb.l ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert40.i, %bb.m ], [ %.sroa.0.4.vec.insert.i, %bb.j ], [ %.sroa.0.4.vec.insert36.i, %bb.k ], [ %.sroa.0.0.vec.insert32.i, %bb.l ]
  %4 = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.10.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @SetGesturesEnabled(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 4), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @IsGestureDetected(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 4), align 4
  %i.b = load i32, ptr @GESTURES, align 8
  %i.c = and i32 %i.b, %i.a
  %i.d = icmp eq i32 %i.c, %0
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define hidden void @ProcessGestureEvent(ptr nofree noundef readonly byval(%struct.GestureEvent) align 8 captures(none) %0) local_unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 12), align 4
  switch i32 %i.b, label %bb.ah [
    i32 1, label %bb.b
    i32 2, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8
  switch i32 %i.c, label %bb.ah [
    i32 1, label %bb.c
    i32 0, label %bb.i
    i32 2, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 88), align 8 ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 88), align 8
  %i.f = load i32, ptr @GESTURES, align 8
  %i.g = icmp eq i32 %i.f, 0
  %i.h = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = tail call double @glfwGetTime() #59
  %i.j = load double, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 16), align 8
  %i.k = fsub double %i.i, %i.j
  %i.l = fcmp olt double %i.k, f0x3FD3333340000000
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 32), align 8 ; 2 uses
  %i.o = load <2 x float>, ptr %i.m, align 8      ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.o, %i.n
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop75 = fsub <2 x float> %i.o, %i.n ; 2 uses
  %foldExtExtBinop77 = fmul <2 x float> %foldExtExtBinop75, %foldExtExtBinop75
  %i.q = extractelement <2 x float> %foldExtExtBinop77, i64 1
  %i.r = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.q)
  %sqrtf.i = tail call float @sqrtf(float noundef %i.r) #59
  %i.s = fcmp olt float %sqrtf.i, 3.000000e-02
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = bitcast <2 x float> %i.o to i64
  store i32 2, ptr @GESTURES, align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 88), align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 88), align 8
  store i32 1, ptr @GESTURES, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre61 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi i64 [ %.pre61, %bb.g ], [ %i.t, %bb.f ] ; 3 uses
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 32), align 8
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 48), align 8
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 24), align 8
  %i.v = tail call double @glfwGetTime() #59
  store double %i.v, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 16), align 8
  %i.w = tail call double @glfwGetTime() #59
  store double %i.w, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 136), align 8
  store <2 x float> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 112), align 8
  br label %bb.ah

bb.i:                                             ; preds = %bb.b
  %i.x = load i32, ptr @GESTURES, align 8
  switch i32 %i.x, label %._crit_edge [
    i32 8, label %bb.j
    i32 4, label %bb.j
  ]

._crit_edge:                                      ; preds = %bb.i
  %.pre60 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 24), align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  store i64 %i.z, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 24), align 8
  %i.aa = bitcast i64 %i.z to <2 x float>
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.ab = phi <2 x float> [ %.pre60, %._crit_edge ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ac = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 32), align 8 ; 2 uses
  %foldExtExtBinop79 = fsub <2 x float> %i.ab, %i.ac
  %i.ad = extractelement <2 x float> %foldExtExtBinop79, i64 0 ; 2 uses
  %foldExtExtBinop81 = fsub <2 x float> %i.ab, %i.ac ; 2 uses
  %foldExtExtBinop83 = fmul <2 x float> %foldExtExtBinop81, %foldExtExtBinop81
  %i.ae = extractelement <2 x float> %foldExtExtBinop83, i64 1
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ae)
  %sqrtf.i25 = tail call float @sqrtf(float noundef %i.af) #59 ; 2 uses
  store float %sqrtf.i25, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 124), align 4
  %i.ag = tail call double @glfwGetTime() #59
  %i.ah = load double, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 136), align 8
  %i.ai = fsub double %i.ag, %i.ah
  %i.aj = fptrunc double %i.ai to float
  %i.ak = fdiv float %sqrtf.i25, %i.aj            ; 2 uses
  store float %i.ak, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 128), align 8
  %i.al = fcmp ogt float %i.ak, 2.000000e-01
  %i.am = load i32, ptr @GESTURES, align 8
  %i.an = icmp ne i32 %i.am, 8
  %or.cond5 = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond5, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ao = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 32), align 8
  %i.ap = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 24), align 8
  %i.aq = fsub <2 x float> %i.ap, %i.ao           ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = extractelement <2 x float> %i.aq, i64 1
  %i.at = tail call float @atan2f(float noundef %i.as, float noundef %i.ar) #59
  %i.au = fmul float %i.at, f0x42652EE0           ; 3 uses
  %i.av = fcmp olt float %i.au, 0.000000e+00
  %i.aw = fadd float %i.au, 3.600000e+02
  %.0.i = select i1 %i.av, float %i.aw, float %i.au
  %i.ax = fsub float 3.600000e+02, %.0.i          ; 9 uses
  store float %i.ax, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 120), align 8
  %i.ay = fcmp olt float %i.ax, 3.000000e+01
  %i.az = fcmp ogt float %i.ax, 3.300000e+02
  %or.cond7 = or i1 %i.ay, %i.az
  br i1 %or.cond7, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = fcmp oge float %i.ax, 3.000000e+01
  %i.bb = fcmp ole float %i.ax, 1.500000e+02
  %or.cond9 = and i1 %i.ba, %i.bb
  br i1 %or.cond9, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = fcmp ogt float %i.ax, 1.500000e+02
  %i.bd = fcmp olt float %i.ax, 2.100000e+02
  %or.cond11 = and i1 %i.bc, %i.bd
  br i1 %or.cond11, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = fcmp oge float %i.ax, 2.100000e+02
  %i.bf = fcmp ole float %i.ax, 3.300000e+02
  %or.cond13 = and i1 %i.be, %i.bf
  %. = select i1 %or.cond13, i32 128, i32 0
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 128), align 8
  store <2 x float> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 120), align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.p
  %.sink = phi i32 [ 0, %bb.p ], [ 64, %bb.m ], [ 32, %bb.n ], [ %., %bb.o ], [ 16, %bb.l ]
  store i32 %.sink, ptr @GESTURES, align 8
  store <2 x float> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 48), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 12), align 4
  br label %bb.ah

bb.r:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  store i64 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 56), align 8
  %i.bi = load i32, ptr @GESTURES, align 8
  %i.bj = icmp eq i32 %i.bi, 4
  br i1 %i.bj, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 96), align 8, !range !4, !noundef !5
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @GESTURES, i64 32), align 8
end_hunk_0
