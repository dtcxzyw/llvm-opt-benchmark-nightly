inline.NumInlined: 60
inline.NumDeleted: 29
begin_hunk_0_@SharpYuvGammaToLinear:bb.a

bb.j:                                             ; preds = %bb.e
  %i.ak = fcmp ogt float %i.ab, 1.000000e+00
  %i.al = select i1 %i.ak, float 1.000000e+00, float %i.ab
  %i.am = fpext float %i.al to double
  %i.an = tail call double @pow(double noundef %i.am, double noundef f0x40019999A0000000) #4, !tbaa !3
  %i.ao = fptrunc double %i.an to float
  br label %ToLinear709.exit

bb.k:                                             ; preds = %bb.e
  %i.ap = fcmp ogt float %i.ab, 1.000000e+00
  %i.aq = select i1 %i.ap, float 1.000000e+00, float %i.ab
  %i.ar = fpext float %i.aq to double
  %i.as = tail call double @pow(double noundef %i.ar, double noundef f0x4006666660000000) #4, !tbaa !3
  %i.at = fptrunc double %i.as to float
  br label %ToLinear709.exit

bb.l:                                             ; preds = %bb.e
  %i.au = fcmp olt float %i.ab, f0x3DBAF455
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = fmul nnan float %i.ab, 2.500000e-01
  br label %ToLinear709.exit

bb.n:                                             ; preds = %bb.l
  %i.aw = fcmp olt float %i.ab, 1.000000e+00
  br i1 %i.aw, label %bb.o, label %ToLinear709.exit

bb.o:                                             ; preds = %bb.n
  %i.ax = fadd float %i.ab, f0x3DE47FF7
  %i.ay = fdiv float %i.ax, f0x3F8E47FF
  %i.az = fpext float %i.ay to double
  %i.ba = tail call double @pow(double noundef %i.az, double noundef f0x4001C71C80000000) #4, !tbaa !3
  %i.bb = fptrunc double %i.ba to float
  br label %ToLinear709.exit

bb.p:                                             ; preds = %bb.e
  %i.bc = zext i16 %0 to i32
  br label %ToLinearSrgb.exit

bb.q:                                             ; preds = %bb.e
  %i.bd = fcmp ugt float %i.ab, 0.000000e+00
  br i1 %i.bd, label %bb.r, label %ToLinear709.exit

bb.r:                                             ; preds = %bb.q
  %i.be = fcmp olt float %i.ab, 1.000000e+00
  %i.bf = select i1 %i.be, float %i.ab, float 1.000000e+00
  %i.bg = fadd nnan float %i.bf, -1.000000e+00
  %i.bh = fmul nnan float %i.bg, 2.000000e+00
  %i.bi = fpext float %i.bh to double
  %i.bj = tail call double @pow(double noundef 1.000000e+01, double noundef %i.bi) #4, !tbaa !3
  %i.bk = fptrunc double %i.bj to float
  br label %ToLinear709.exit

bb.s:                                             ; preds = %bb.e
  %i.bl = fcmp ugt float %i.ab, 0.000000e+00
  br i1 %i.bl, label %bb.t, label %ToLinear709.exit

bb.t:                                             ; preds = %bb.s
  %i.bm = fcmp olt float %i.ab, 1.000000e+00
  %i.bn = select i1 %i.bm, float %i.ab, float 1.000000e+00
  %i.bo = fadd nnan float %i.bn, -1.000000e+00
  %i.bp = fmul nnan float %i.bo, 2.500000e+00
  %i.bq = fpext float %i.bp to double
  %i.br = tail call double @pow(double noundef 1.000000e+01, double noundef %i.bq) #4, !tbaa !3
  %i.bs = fptrunc double %i.br to float
  br label %ToLinear709.exit

bb.u:                                             ; preds = %bb.e
  %i.bt = fcmp olt float %i.ab, f0x3DA662A8
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bu = fdiv nnan float %i.ab, 4.500000e+00
  br label %ToLinear709.exit

bb.w:                                             ; preds = %bb.u
  %i.bv = fadd float %i.ab, f0x3DCB5C22
  %i.bw = fdiv float %i.bv, f0x3F8CB5C2
  %i.bx = fpext float %i.bw to double
  %i.by = tail call double @pow(double noundef %i.bx, double noundef f0x4001C71C80000000) #4, !tbaa !3
  %i.bz = fptrunc double %i.by to float
  br label %ToLinear709.exit

bb.x:                                             ; preds = %bb.e
  %i.ca = fcmp olt float %i.ab, f0x3DA662A8
  br i1 %i.ca, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cb = fdiv nnan float %i.ab, 4.500000e+00
  br label %ToLinear709.exit

bb.z:                                             ; preds = %bb.x
  %i.cc = fcmp olt float %i.ab, 1.000000e+00
  br i1 %i.cc, label %bb.aa, label %ToLinear709.exit

bb.aa:                                            ; preds = %bb.z
  %i.cd = fadd float %i.ab, f0x3DCB5C22
  %i.ce = fdiv float %i.cd, f0x3F8CB5C2
  %i.cf = fpext float %i.ce to double
  %i.cg = tail call double @pow(double noundef %i.cf, double noundef f0x4001C71C80000000) #4, !tbaa !3
  %i.ch = fptrunc double %i.cg to float
  br label %ToLinear709.exit

bb.ab:                                            ; preds = %bb.e
  %i.ci = fcmp ogt float %i.ab, 0.000000e+00
  br i1 %i.ci, label %bb.ac, label %ToLinear709.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cj = fpext float %i.ab to double
  %i.ck = tail call double @pow(double noundef %i.cj, double noundef f0x3F89F9B580000000) #4, !tbaa !3
  %i.cl = fptrunc double %i.ck to float           ; 2 uses
  %i.cm = fadd float %i.cl, f0xBF560000           ; 2 uses
  %i.cn = fcmp ogt float %i.cm, 0.000000e+00
  %i.co = select i1 %i.cn, float %i.cm, float 0.000000e+00
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cl, float -1.868750e+01, float f0x4196D000) ; 2 uses
  %i.cq = fcmp ogt float %i.cp, f0x00800000
  %i.cr = select i1 %i.cq, float %i.cp, float f0x00800000
  %i.cs = fdiv float %i.co, %i.cr
  %i.ct = fpext float %i.cs to double
  %i.cu = tail call double @pow(double noundef %i.ct, double noundef f0x4019172160000000) #4, !tbaa !3
  %i.cv = fptrunc double %i.cu to float
  br label %ToLinear709.exit

bb.ad:                                            ; preds = %bb.e
  %i.cw = fcmp ogt float %i.ab, 0.000000e+00
  %i.cx = select i1 %i.cw, float %i.ab, float 0.000000e+00
  %i.cy = fpext float %i.cx to double
  %i.cz = tail call double @pow(double noundef %i.cy, double noundef f0x4004CCCCC0000000) #4, !tbaa !3
  %i.da = fptrunc double %i.cz to float
  %i.db = fdiv float %i.da, f0x3F6AA35E
  br label %ToLinear709.exit

bb.ae:                                            ; preds = %bb.e
  %i.dc = fcmp ugt float %i.ab, 5.000000e-01
  br i1 %i.dc, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = fmul nnan float %i.ab, %i.ab
  %i.de = fmul nnan float %i.dd, f0x3EAAAAAB
  br label %ToLinearHlg.exit

bb.ag:                                            ; preds = %bb.ae
  %i.df = fadd float %i.ab, f0xBF0F564F
  %i.dg = fdiv float %i.df, f0x3E371FF0
  %i.dh = tail call float @expf(float noundef %i.dg) #4, !tbaa !3
  %i.di = fadd float %i.dh, f0x3E91C020
  %i.dj = fdiv float %i.di, 1.200000e+01
  br label %ToLinearHlg.exit

ToLinearHlg.exit:                                 ; preds = %bb.af, %bb.ag
  %.sink.i = phi float [ %i.dj, %bb.ag ], [ %i.de, %bb.af ]
  %i.dk = fpext float %.sink.i to double
  %i.dl = tail call double @pow(double noundef %i.dk, double noundef f0x3FF3333340000000) #4, !tbaa !3
  %i.dm = fptrunc double %i.dl to float
  br label %ToLinear709.exit

ToLinear709.exit:                                 ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.i, %bb.h, %bb.g, %bb.e, %ToLinearHlg.exit, %bb.ad, %bb.k, %bb.j
  %.0 = phi float [ %i.dm, %ToLinearHlg.exit ], [ 0.000000e+00, %bb.e ], [ %i.ao, %bb.j ], [ %i.at, %bb.k ], [ %i.aj, %bb.i ], [ %i.bb, %bb.o ], [ 5.000000e-03, %bb.q ], [ f0x3ACF3E37, %bb.s ], [ %i.bu, %bb.v ], [ %i.cb, %bb.y ], [ %i.db, %bb.ad ], [ 1.000000e+00, %bb.h ], [ %i.ad, %bb.g ], [ 1.000000e+00, %bb.n ], [ %i.av, %bb.m ], [ %i.bk, %bb.r ], [ %i.bs, %bb.t ], [ %i.bz, %bb.w ], [ 1.000000e+00, %bb.z ], [ %i.ch, %bb.aa ], [ %i.cv, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.dn = fmul float %.0, 6.553500e+04            ; 3 uses
  %i.do = fcmp olt float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %ToLinear709.exit
  %i.dp = fadd float %i.dn, -5.000000e-01
  %i.dq = tail call float @llvm.ceil.f32(float %i.dp)
  br label %Roundf.exit

bb.ai:                                            ; preds = %ToLinear709.exit
  %i.dr = fadd float %i.dn, 5.000000e-01
  %i.ds = tail call float @llvm.floor.f32(float %i.dr)
  br label %Roundf.exit

Roundf.exit:                                      ; preds = %bb.ah, %bb.ai
  %.0.i27 = phi float [ %i.dq, %bb.ah ], [ %i.ds, %bb.ai ]
  %i.dt = fptoui float %.0.i27 to i32
  br label %ToLinearSrgb.exit

ToLinearSrgb.exit:                                ; preds = %bb.d, %bb.c, %Roundf.exit, %bb.p
  %.019 = phi i32 [ %i.bc, %bb.p ], [ %i.dt, %Roundf.exit ], [ %i.h, %bb.c ], [ %i.x, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden zeroext i16 @SharpYuvLinearToGamma(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %2, 13
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %1, -16                      ; 2 uses
  %i.c = ashr i32 %0, 7                           ; 2 uses
  %i.d = and i32 %0, 127
  %i.e = zext i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @kLinearToGammaTabS, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = shl i32 %i.g, %i.b
  %i.i = sub nsw i32 16, %1                       ; 2 uses
  %i.j = ashr i32 %i.g, %i.i
  %.narrow.i20.i.i = icmp sgt i32 %1, 16          ; 2 uses
  %i.k = select i1 %.narrow.i20.i.i, i32 %i.h, i32 %i.j ; 2 uses
  %i.l = add nsw i32 %i.c, 1
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @kLinearToGammaTabS, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.p = shl i32 %i.o, %i.b
  %i.q = ashr i32 %i.o, %i.i
  %i.r = select i1 %.narrow.i20.i.i, i32 %i.p, i32 %i.q
  %i.s = sub i32 %i.r, %i.k
  %i.t = mul i32 %i.s, %i.d
  %i.u = add i32 %i.t, 64
  %i.v = lshr i32 %i.u, 7
  %i.w = add i32 %i.v, %i.k
  %i.x = trunc i32 %i.w to i16
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.y = uitofp i32 %0 to float
  %i.z = fdiv float %i.y, 6.553500e+04            ; 30 uses
  switch i32 %2, label %FromLinear709.exit [
    i32 1, label %bb.d
    i32 6, label %bb.d
    i32 14, label %bb.d
    i32 15, label %bb.d
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.q
    i32 11, label %bb.s
    i32 12, label %bb.v
    i32 16, label %bb.z
    i32 17, label %bb.ab
    i32 18, label %bb.ac
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.aa = fcmp olt float %i.z, f0x3C93E5EB
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = fmul nnan float %i.z, 4.500000e+00
  br label %FromLinear709.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = fcmp olt float %i.z, 1.000000e+00
  br i1 %i.ac, label %bb.g, label %FromLinear709.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = fpext float %i.z to double
  %i.ae = tail call double @pow(double noundef %i.ad, double noundef f0x3FDCCCCCC0000000) #4, !tbaa !3
  %i.af = fptrunc double %i.ae to float
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float f0x3F8CB5C2, float f0xBDCB5C22)
  br label %FromLinear709.exit

bb.h:                                             ; preds = %bb.c
  %i.ah = fcmp ogt float %i.z, 1.000000e+00
  %i.ai = select i1 %i.ah, float 1.000000e+00, float %i.z
  %i.aj = fpext float %i.ai to double
  %i.ak = tail call double @pow(double noundef %i.aj, double noundef f0x3FDD1745C0000000) #4, !tbaa !3
  %i.al = fptrunc double %i.ak to float
  br label %FromLinear709.exit

bb.i:                                             ; preds = %bb.c
  %i.am = fcmp ogt float %i.z, 1.000000e+00
  %i.an = select i1 %i.am, float 1.000000e+00, float %i.z
  %i.ao = fpext float %i.an to double
  %i.ap = tail call double @pow(double noundef %i.ao, double noundef f0x3FD6DB6DC0000000) #4, !tbaa !3
  %i.aq = fptrunc double %i.ap to float
  br label %FromLinear709.exit

bb.j:                                             ; preds = %bb.c
  %i.ar = fcmp olt float %i.z, f0x3CBAF455
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = fmul nnan float %i.z, 4.000000e+00
  br label %FromLinear709.exit

bb.l:                                             ; preds = %bb.j
  %i.at = fcmp olt float %i.z, 1.000000e+00
  br i1 %i.at, label %bb.m, label %FromLinear709.exit

bb.m:                                             ; preds = %bb.l
  %i.au = fpext float %i.z to double
  %i.av = tail call double @pow(double noundef %i.au, double noundef f0x3FDCCCCCC0000000) #4, !tbaa !3
  %i.aw = fptrunc double %i.av to float
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float f0x3F8E47FF, float f0xBDE47FF7)
  br label %FromLinear709.exit

bb.n:                                             ; preds = %bb.c
  %i.ay = trunc i32 %0 to i16
  br label %bb.ai

bb.o:                                             ; preds = %bb.c
  %i.az = fcmp olt float %i.z, f0x3C23D70A
  br i1 %i.az, label %FromLinear709.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = fcmp olt float %i.z, 1.000000e+00
  %i.bb = select i1 %i.ba, float %i.z, float 1.000000e+00
  %i.bc = fpext nnan ninf float %i.bb to double
  %i.bd = tail call nnan ninf double @llvm.log10.f64(double %i.bc)
  %i.be = fptrunc nnan double %i.bd to float
  %i.bf = fmul nnan float %i.be, 5.000000e-01
  %i.bg = fadd nnan float %i.bf, 1.000000e+00
  br label %FromLinear709.exit

bb.q:                                             ; preds = %bb.c
  %i.bh = fcmp olt float %i.z, f0x3B4F3E37
  br i1 %i.bh, label %FromLinear709.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = fcmp olt float %i.z, 1.000000e+00
  %i.bj = select i1 %i.bi, float %i.z, float 1.000000e+00
  %i.bk = fpext float %i.bj to double
  %i.bl = tail call double @llvm.log10.f64(double %i.bk), !tbaa !3
  %i.bm = fptrunc double %i.bl to float
  %i.bn = fdiv float %i.bm, 2.500000e+00
  %i.bo = fadd float %i.bn, 1.000000e+00
  br label %FromLinear709.exit

bb.s:                                             ; preds = %bb.c
  %i.bp = fcmp olt float %i.z, f0x3C93E5EB
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = fmul nnan float %i.z, 4.500000e+00
  br label %FromLinear709.exit

bb.u:                                             ; preds = %bb.s
  %i.br = fpext float %i.z to double
  %i.bs = tail call double @pow(double noundef %i.br, double noundef f0x3FDCCCCCC0000000) #4, !tbaa !3
  %i.bt = fptrunc double %i.bs to float
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float f0x3F8CB5C2, float f0xBDCB5C22)
  br label %FromLinear709.exit

bb.v:                                             ; preds = %bb.c
  %i.bv = fcmp olt float %i.z, f0x3C93E5EB
  br i1 %i.bv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bw = fmul nnan float %i.z, 4.500000e+00
  br label %FromLinear709.exit

bb.x:                                             ; preds = %bb.v
  %i.bx = fcmp olt float %i.z, 1.000000e+00
  br i1 %i.bx, label %bb.y, label %FromLinear709.exit

bb.y:                                             ; preds = %bb.x
  %i.by = fpext float %i.z to double
  %i.bz = tail call double @pow(double noundef %i.by, double noundef f0x3FDCCCCCC0000000) #4, !tbaa !3
  %i.ca = fptrunc double %i.bz to float
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float f0x3F8CB5C2, float f0xBDCB5C22)
  br label %FromLinear709.exit

bb.z:                                             ; preds = %bb.c
  %i.cc = fcmp ogt float %i.z, 0.000000e+00
  br i1 %i.cc, label %bb.aa, label %FromLinear709.exit

bb.aa:                                            ; preds = %bb.z
  %i.cd = fpext float %i.z to double
  %i.ce = tail call double @pow(double noundef %i.cd, double noundef f0x3FC4680000000000) #4, !tbaa !3
  %i.cf = fptrunc double %i.ce to float           ; 2 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float f0x4196D000, float f0x3F560000)
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cf, float 1.868750e+01, float 1.000000e+00)
  %i.ci = fdiv float %i.cg, %i.ch
  %i.cj = fpext float %i.ci to double
  %i.ck = tail call double @pow(double noundef %i.cj, double noundef f0x4053B60000000000) #4, !tbaa !3
  %i.cl = fptrunc double %i.ck to float
  br label %FromLinear709.exit

bb.ab:                                            ; preds = %bb.c
  %i.cm = fcmp ogt float %i.z, 0.000000e+00
  %i.cn = select i1 %i.cm, float %i.z, float 0.000000e+00
  %i.co = fmul nnan float %i.cn, f0x3F6AA35E
  %i.cp = fpext float %i.co to double
  %i.cq = tail call double @pow(double noundef %i.cp, double noundef f0x3FD89D89E0000000) #4, !tbaa !3
  %i.cr = fptrunc double %i.cq to float
  br label %FromLinear709.exit

bb.ac:                                            ; preds = %bb.c
  %i.cs = fpext float %i.z to double
  %i.ct = tail call double @pow(double noundef %i.cs, double noundef f0x3FEAAAAAA0000000) #4, !tbaa !3 ; 3 uses
  %i.cu = fptrunc double %i.ct to float           ; 2 uses
  %i.cv = fcmp olt double %i.ct, f0xB690000000000000
  br i1 %i.cv, label %FromLinear709.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = fcmp ugt double %i.ct, f0x3FB555556FFFFFFF
  br i1 %i.cw, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = fmul nnan float %i.cu, 3.000000e+00
  %i.cy = tail call float @sqrtf(float noundef %i.cx) #4, !tbaa !3
  br label %FromLinear709.exit

bb.af:                                            ; preds = %bb.ad
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cu, float 1.200000e+01, float f0xBE91C020)
  %i.da = tail call float @logf(float noundef %i.cz) #4, !tbaa !3
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float f0x3E371FF0, float f0x3F0F564F)
  br label %FromLinear709.exit

FromLinear709.exit:                               ; preds = %bb.af, %bb.ae, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.g, %bb.f, %bb.e, %bb.c, %bb.ab, %bb.i, %bb.h
  %.0 = phi float [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.c ], [ %i.al, %bb.h ], [ %i.aq, %bb.i ], [ %i.ag, %bb.g ], [ %i.ax, %bb.m ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.q ], [ %i.bq, %bb.t ], [ %i.bw, %bb.w ], [ %i.cr, %bb.ab ], [ 1.000000e+00, %bb.f ], [ %i.ab, %bb.e ], [ 1.000000e+00, %bb.l ], [ %i.as, %bb.k ], [ %i.bg, %bb.p ], [ %i.bo, %bb.r ], [ %i.bu, %bb.u ], [ 1.000000e+00, %bb.x ], [ %i.cb, %bb.y ], [ %i.cl, %bb.aa ], [ %i.db, %bb.af ], [ %i.cy, %bb.ae ], [ 0.000000e+00, %bb.ac ]
  %notmask = shl nsw i32 -1, %1
  %i.dc = xor i32 %notmask, -1
end_hunk_0
