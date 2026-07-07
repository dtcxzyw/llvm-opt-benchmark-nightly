inline.NumInlined: 60
inline.NumDeleted: 29
begin_hunk_0_@SharpYuvGammaToLinear:bb.a
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
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
  %i.k = icmp slt i32 %1, 16                      ; 2 uses
  %i.l = select i1 %i.k, i32 %i.j, i32 %i.h       ; 2 uses
  %i.m = add nsw i32 %i.c, 1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @kLinearToGammaTabS, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = shl i32 %i.p, %i.b
  %i.r = ashr i32 %i.p, %i.i
  %i.s = select i1 %i.k, i32 %i.r, i32 %i.q
  %i.t = sub i32 %i.s, %i.l
  %i.u = mul i32 %i.t, %i.d
  %i.v = add i32 %i.u, 64
  %i.w = lshr i32 %i.v, 7
  %i.x = add i32 %i.w, %i.l
  %i.y = trunc i32 %i.x to i16
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.z = uitofp i32 %0 to float
  %i.aa = fdiv float %i.z, 6.553500e+04           ; 30 uses
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
  %i.ab = fcmp olt float %i.aa, f0x3C93E5EB
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = fmul nnan float %i.aa, 4.500000e+00
  br label %FromLinear709.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = fcmp olt float %i.aa, 1.000000e+00
  br i1 %i.ad, label %bb.g, label %FromLinear709.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = fpext float %i.aa to double
  %i.af = tail call double @pow(double noundef %i.ae, double noundef f0x3FDCCCCCC0000000) #4, !tbaa !3
  %i.ag = fptrunc double %i.af to float
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float f0x3F8CB5C2, float f0xBDCB5C22)
  br label %FromLinear709.exit

bb.h:                                             ; preds = %bb.c
  %i.ai = fcmp ogt float %i.aa, 1.000000e+00
  %i.aj = select i1 %i.ai, float 1.000000e+00, float %i.aa
  %i.ak = fpext float %i.aj to double
  %i.al = tail call double @pow(double noundef %i.ak, double noundef f0x3FDD1745C0000000) #4, !tbaa !3
  %i.am = fptrunc double %i.al to float
  br label %FromLinear709.exit

bb.i:                                             ; preds = %bb.c
  %i.an = fcmp ogt float %i.aa, 1.000000e+00
  %i.ao = select i1 %i.an, float 1.000000e+00, float %i.aa
  %i.ap = fpext float %i.ao to double
  %i.aq = tail call double @pow(double noundef %i.ap, double noundef f0x3FD6DB6DC0000000) #4, !tbaa !3
  %i.ar = fptrunc double %i.aq to float
  br label %FromLinear709.exit

bb.j:                                             ; preds = %bb.c
  %i.as = fcmp olt float %i.aa, f0x3CBAF455
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = fmul nnan float %i.aa, 4.000000e+00
  br label %FromLinear709.exit

bb.l:                                             ; preds = %bb.j
  %i.au = fcmp olt float %i.aa, 1.000000e+00
  br i1 %i.au, label %bb.m, label %FromLinear709.exit

bb.m:                                             ; preds = %bb.l
  %i.av = fpext float %i.aa to double
  %i.aw = tail call double @pow(double noundef %i.av, double noundef f0x3FDCCCCCC0000000) #4, !tbaa !3
  %i.ax = fptrunc double %i.aw to float
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float f0x3F8E47FF, float f0xBDE47FF7)
  br label %FromLinear709.exit

bb.n:                                             ; preds = %bb.c
  %i.az = trunc i32 %0 to i16
  br label %bb.ai

bb.o:                                             ; preds = %bb.c
  %i.ba = fcmp olt float %i.aa, f0x3C23D70A
  br i1 %i.ba, label %FromLinear709.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = fcmp olt float %i.aa, 1.000000e+00
  %i.bc = select i1 %i.bb, float %i.aa, float 1.000000e+00
  %i.bd = fpext nnan ninf float %i.bc to double
  %i.be = tail call nnan ninf double @llvm.log10.f64(double %i.bd)
  %i.bf = fptrunc nnan double %i.be to float
  %i.bg = fmul nnan float %i.bf, 5.000000e-01
  %i.bh = fadd nnan float %i.bg, 1.000000e+00
  br label %FromLinear709.exit

bb.q:                                             ; preds = %bb.c
  %i.bi = fcmp olt float %i.aa, f0x3B4F3E37
  br i1 %i.bi, label %FromLinear709.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = fcmp olt float %i.aa, 1.000000e+00
  %i.bk = select i1 %i.bj, float %i.aa, float 1.000000e+00
  %i.bl = fpext float %i.bk to double
  %i.bm = tail call double @llvm.log10.f64(double %i.bl), !tbaa !3
  %i.bn = fptrunc double %i.bm to float
  %i.bo = fdiv float %i.bn, 2.500000e+00
  %i.bp = fadd float %i.bo, 1.000000e+00
  br label %FromLinear709.exit

bb.s:                                             ; preds = %bb.c
  %i.bq = fcmp olt float %i.aa, f0x3C93E5EB
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.br = fmul nnan float %i.aa, 4.500000e+00
  br label %FromLinear709.exit

bb.u:                                             ; preds = %bb.s
  %i.bs = fpext float %i.aa to double
  %i.bt = tail call double @pow(double noundef %i.bs, double noundef f0x3FDCCCCCC0000000) #4, !tbaa !3
  %i.bu = fptrunc double %i.bt to float
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float f0x3F8CB5C2, float f0xBDCB5C22)
  br label %FromLinear709.exit

bb.v:                                             ; preds = %bb.c
  %i.bw = fcmp olt float %i.aa, f0x3C93E5EB
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bx = fmul nnan float %i.aa, 4.500000e+00
  br label %FromLinear709.exit

bb.x:                                             ; preds = %bb.v
  %i.by = fcmp olt float %i.aa, 1.000000e+00
  br i1 %i.by, label %bb.y, label %FromLinear709.exit

bb.y:                                             ; preds = %bb.x
  %i.bz = fpext float %i.aa to double
  %i.ca = tail call double @pow(double noundef %i.bz, double noundef f0x3FDCCCCCC0000000) #4, !tbaa !3
  %i.cb = fptrunc double %i.ca to float
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float f0x3F8CB5C2, float f0xBDCB5C22)
  br label %FromLinear709.exit

bb.z:                                             ; preds = %bb.c
  %i.cd = fcmp ogt float %i.aa, 0.000000e+00
  br i1 %i.cd, label %bb.aa, label %FromLinear709.exit

bb.aa:                                            ; preds = %bb.z
  %i.ce = fpext float %i.aa to double
  %i.cf = tail call double @pow(double noundef %i.ce, double noundef f0x3FC4680000000000) #4, !tbaa !3
  %i.cg = fptrunc double %i.cf to float
  %3 = insertelement <2 x float> poison, float %i.cg, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> <float f0x4196D000, float 1.868750e+01>, <2 x float> <float f0x3F560000, float 1.000000e+00>) ; 2 uses
  %6 = extractelement <2 x float> %5, i64 0
  %7 = extractelement <2 x float> %5, i64 1
  %i.ch = fdiv float %6, %7
  %i.ci = fpext float %i.ch to double
  %i.cj = tail call double @pow(double noundef %i.ci, double noundef f0x4053B60000000000) #4, !tbaa !3
  %i.ck = fptrunc double %i.cj to float
  br label %FromLinear709.exit

bb.ab:                                            ; preds = %bb.c
  %i.cl = fcmp ogt float %i.aa, 0.000000e+00
  %i.cm = select i1 %i.cl, float %i.aa, float 0.000000e+00
  %i.cn = fmul nnan float %i.cm, f0x3F6AA35E
  %i.co = fpext float %i.cn to double
  %i.cp = tail call double @pow(double noundef %i.co, double noundef f0x3FD89D89E0000000) #4, !tbaa !3
  %i.cq = fptrunc double %i.cp to float
  br label %FromLinear709.exit

bb.ac:                                            ; preds = %bb.c
  %i.cr = fpext float %i.aa to double
  %i.cs = tail call double @pow(double noundef %i.cr, double noundef f0x3FEAAAAAA0000000) #4, !tbaa !3 ; 3 uses
  %i.ct = fptrunc double %i.cs to float           ; 2 uses
  %i.cu = fcmp olt double %i.cs, f0xB690000000000000
  br i1 %i.cu, label %FromLinear709.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = fcmp ugt double %i.cs, f0x3FB555556FFFFFFF
  br i1 %i.cv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = fmul nnan float %i.ct, 3.000000e+00
  %i.cx = tail call float @sqrtf(float noundef %i.cw) #4, !tbaa !3
  br label %FromLinear709.exit

bb.af:                                            ; preds = %bb.ad
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.ct, float 1.200000e+01, float f0xBE91C020)
  %i.cz = tail call float @logf(float noundef %i.cy) #4, !tbaa !3
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float f0x3E371FF0, float f0x3F0F564F)
  br label %FromLinear709.exit

FromLinear709.exit:                               ; preds = %bb.af, %bb.ae, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.g, %bb.f, %bb.e, %bb.c, %bb.ab, %bb.i, %bb.h
  %.0 = phi float [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.c ], [ %i.am, %bb.h ], [ %i.ar, %bb.i ], [ %i.ah, %bb.g ], [ %i.ay, %bb.m ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.q ], [ %i.br, %bb.t ], [ %i.bx, %bb.w ], [ %i.cq, %bb.ab ], [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.e ], [ 1.000000e+00, %bb.l ], [ %i.at, %bb.k ], [ %i.bh, %bb.p ], [ %i.bp, %bb.r ], [ %i.bv, %bb.u ], [ 1.000000e+00, %bb.x ], [ %i.cc, %bb.y ], [ %i.ck, %bb.aa ], [ %i.da, %bb.af ], [ %i.cx, %bb.ae ], [ 0.000000e+00, %bb.ac ]
  %notmask = shl nsw i32 -1, %1
  %i.db = xor i32 %notmask, -1
  %i.dc = uitofp nneg i32 %i.db to float
  %i.dd = fmul float %.0, %i.dc                   ; 3 uses
  %i.de = fcmp olt float %i.dd, 0.000000e+00
  br i1 %i.de, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %FromLinear709.exit
  %i.df = fadd float %i.dd, -5.000000e-01
  %i.dg = tail call float @llvm.ceil.f32(float %i.df)
  br label %Roundf.exit

bb.ah:                                            ; preds = %FromLinear709.exit
  %i.dh = fadd float %i.dd, 5.000000e-01
  %i.di = tail call float @llvm.floor.f32(float %i.dh)
  br label %Roundf.exit

Roundf.exit:                                      ; preds = %bb.ag, %bb.ah
  %.0.i26 = phi float [ %i.dg, %bb.ag ], [ %i.di, %bb.ah ]
  %i.dj = fptoui float %.0.i26 to i16
  br label %bb.ai

bb.ai:                                            ; preds = %Roundf.exit, %bb.n, %bb.b
  %.019 = phi i16 [ %i.y, %bb.b ], [ %i.dj, %Roundf.exit ], [ %i.az, %bb.n ]
  ret i16 %.019
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
end_hunk_0
