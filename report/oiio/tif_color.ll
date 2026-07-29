inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @TIFFCIELabToXYZ(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i32 %1, 257
  %i.b = shl nsw i32 %2, 8
  %i.c = shl nsw i32 %3, 8
  %i.d = uitofp i32 %i.a to float
  %i.e = fmul nnan float %i.d, 1.000000e+02
  %i.f = fdiv float %i.e, 6.553500e+04            ; 3 uses
  %i.g = fcmp olt float %i.f, f0x410DB22D
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !7
  %i.j = fmul float %i.f, %i.i
  %i.k = fdiv float %i.j, f0x4461D2B0             ; 2 uses
  store float %i.k, ptr %5, align 4, !tbaa !11
  %i.l = load float, ptr %i.h, align 4, !tbaa !7
  %i.m = fdiv float %i.k, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = fadd float %i.f, 1.600000e+01
  %i.p = fdiv float %i.o, 1.160000e+02            ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !7
  %i.s = fmul float %i.p, %i.r
  %i.t = fmul float %i.p, %i.s
  %i.u = fmul float %i.p, %i.t
  store float %i.u, ptr %5, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi float [ %i.n, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.v = sitofp i32 %i.b to float
  %i.w = fmul nnan float %i.v, 3.906250e-03
  %i.x = fdiv float %i.w, 5.000000e+02
  %i.y = fadd float %i.x, %.0.i                   ; 5 uses
  %i.z = fcmp olt float %i.y, 2.069000e-01
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12 ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = fadd nnan float %i.y, -1.379300e-01
  %i.ad = fmul float %i.ab, %i.ac
  %i.ae = fdiv float %i.ad, 7.787000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = fmul float %i.y, %i.ab
  %i.ag = fmul float %i.y, %i.af
  %i.ah = fmul float %i.y, %i.ag
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge.i = phi float [ %i.ah, %bb.f ], [ %i.ae, %bb.e ]
  store float %storemerge.i, ptr %4, align 4, !tbaa !11
  %i.ai = sitofp i32 %i.c to float
  %i.aj = fmul nnan float %i.ai, 3.906250e-03
  %i.ak = fdiv float %i.aj, 2.000000e+02
  %i.al = fsub float %.0.i, %i.ak                 ; 5 uses
  %i.am = fcmp olt float %i.al, 2.069000e-01
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load float, ptr %i.an, align 4, !tbaa !13 ; 2 uses
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = fadd nnan float %i.al, -1.379300e-01
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = fdiv float %i.aq, 7.787000e+00
  br label %TIFFCIELab16ToXYZ.exit

bb.i:                                             ; preds = %bb.g
  %i.as = fmul float %i.al, %i.ao
  %i.at = fmul float %i.al, %i.as
  %i.au = fmul float %i.al, %i.at
  br label %TIFFCIELab16ToXYZ.exit

TIFFCIELab16ToXYZ.exit:                           ; preds = %bb.h, %bb.i
  %storemerge39.i = phi float [ %i.au, %bb.i ], [ %i.ar, %bb.h ]
  store float %storemerge39.i, ptr %6, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @TIFFCIELab16ToXYZ(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = uitofp i32 %1 to float
  %i.b = fmul nnan float %i.a, 1.000000e+02
  %i.c = fdiv float %i.b, 6.553500e+04            ; 3 uses
  %i.d = fcmp olt float %i.c, f0x410DB22D
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !7
  %i.g = fmul float %i.c, %i.f
  %i.h = fdiv float %i.g, f0x4461D2B0             ; 2 uses
  store float %i.h, ptr %5, align 4, !tbaa !11
  %i.i = load float, ptr %i.e, align 4, !tbaa !7
  %i.j = fdiv float %i.h, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = fadd float %i.c, 1.600000e+01
  %i.m = fdiv float %i.l, 1.160000e+02            ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !7
  %i.p = fmul float %i.m, %i.o
  %i.q = fmul float %i.m, %i.p
  %i.r = fmul float %i.m, %i.q
  store float %i.r, ptr %5, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.s = sitofp i32 %2 to float
  %i.t = fmul nnan float %i.s, 3.906250e-03
  %i.u = fdiv float %i.t, 5.000000e+02
  %i.v = fadd float %i.u, %.0                     ; 5 uses
  %i.w = fcmp olt float %i.v, 2.069000e-01
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load float, ptr %i.x, align 4, !tbaa !12 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = fadd nnan float %i.v, -1.379300e-01
  %i.aa = fmul float %i.z, %i.y
  %i.ab = fdiv float %i.aa, 7.787000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = fmul float %i.v, %i.y
  %i.ad = fmul float %i.v, %i.ac
  %i.ae = fmul float %i.v, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi float [ %i.ae, %bb.f ], [ %i.ab, %bb.e ]
  store float %storemerge, ptr %4, align 4, !tbaa !11
  %i.af = sitofp i32 %3 to float
  %i.ag = fmul nnan float %i.af, 3.906250e-03
  %i.ah = fdiv float %i.ag, 2.000000e+02
  %i.ai = fsub float %.0, %i.ah                   ; 5 uses
  %i.aj = fcmp olt float %i.ai, 2.069000e-01
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13 ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = fadd nnan float %i.ai, -1.379300e-01
  %i.an = fmul float %i.am, %i.al
  %i.ao = fdiv float %i.an, 7.787000e+00
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = fmul float %i.ai, %i.al
  %i.aq = fmul float %i.ai, %i.ap
  %i.ar = fmul float %i.ai, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge39 = phi float [ %i.ar, %bb.i ], [ %i.ao, %bb.h ]
  store float %storemerge39, ptr %6, align 4, !tbaa !11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @TIFFXYZToRGB(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef captures(none) initializes((0, 4)) %4, ptr nofree noundef captures(none) initializes((0, 4)) %5, ptr nofree noundef captures(none) initializes((0, 4)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load float, ptr %i.e, align 4, !tbaa !11
  %i.g = fmul float %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load float, ptr %i.h, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load <4 x float>, ptr %i.a, align 4, !tbaa !11 ; 3 uses
  %i.l = load <2 x float>, ptr %i.b, align 4, !tbaa !11 ; 2 uses
  %i.m = insertelement <2 x float> poison, float %2, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.p = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.q = shufflevector <4 x float> %i.k, <4 x float> %i.p, <2 x i32> <i32 1, i32 4>
  %i.r = fmul <2 x float> %i.n, %i.q
  %i.s = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.t = insertelement <2 x float> poison, float %1, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.u, <2 x float> %i.r)
  %i.w = shufflevector <2 x float> %i.o, <2 x float> %i.l, <2 x i32> <i32 0, i32 3>
  %i.x = insertelement <2 x float> poison, float %3, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.y, <2 x float> %i.v) ; 3 uses
  %i.aa = load <2 x float>, ptr %i.j, align 4, !tbaa !11 ; 4 uses
  %i.ab = fcmp ogt <2 x float> %i.z, %i.aa        ; 2 uses
  %i.ac = extractelement <2 x i1> %i.ab, i64 0
  %i.ad = extractelement <2 x float> %i.z, i64 0
  %i.ae = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %. = select i1 %i.ac, float %i.ad, float %i.ae  ; 2 uses
  %i.af = extractelement <2 x i1> %i.ab, i64 1
  %i.ag = extractelement <2 x float> %i.aa, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !14 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !15 ; 2 uses
  %i.al = fcmp olt float %., %i.ak
  %i.am = select i1 %i.al, float %., float %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ao = fsub float %i.am, %i.ae
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !16
  %i.ar = fdiv float %i.ao, %i.aq
  %i.as = fptoui float %i.ar to i64
  %i.at = load i32, ptr %0, align 4, !tbaa !17
  %i.au = sext i32 %i.at to i64
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.as)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !11 ; 2 uses
  %i.az = fcmp ogt float %i.ay, 0.000000e+00
  %i.ba = fpext float %i.ay to double
  %.v = select i1 %i.az, double 5.000000e-01, double -5.000000e-01
  %i.bb = fadd double %.v, %i.ba
  %i.bc = fptoui double %i.bb to i32
  store i32 %i.bc, ptr %4, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i32, ptr %0, align 4, !tbaa !17
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 6116
  %7 = extractelement <2 x float> %i.z, i64 1
  %8 = tail call float @llvm.fmuladd.f32(float %i.d, float %1, float %i.g)
  %9 = tail call float @llvm.fmuladd.f32(float %i.i, float %3, float %8) ; 2 uses
  %10 = fcmp ogt float %9, %i.ai
  %i.bh = select i1 %10, float %9, float %i.ai
  %i.bi = select i1 %i.af, float %7, float %i.ag
  %i.bj = load <2 x float>, ptr %i.an, align 4, !tbaa !11 ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bh, i64 1 ; 2 uses
  %i.bm = fcmp olt <2 x float> %i.bl, %i.bj
  %i.bn = select <2 x i1> %i.bm, <2 x float> %i.bl, <2 x float> %i.bj
  %i.bo = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bp = insertelement <2 x float> %i.bo, float %i.ai, i64 1
  %i.bq = fsub <2 x float> %i.bn, %i.bp
  %i.br = load <2 x float>, ptr %i.bd, align 4, !tbaa !11
  %i.bs = fdiv <2 x float> %i.bq, %i.br           ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = fptoui float %i.bt to i64
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bu)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !11 ; 2 uses
  %i.by = fcmp ogt float %i.bx, 0.000000e+00
  %i.bz = fpext float %i.bx to double
  %.v127 = select i1 %i.by, double 5.000000e-01, double -5.000000e-01
  %i.ca = fadd double %.v127, %i.bz
  %i.cb = fptoui double %i.ca to i32
  store i32 %i.cb, ptr %5, align 4, !tbaa !3
  %i.cc = extractelement <2 x float> %i.bs, i64 1
  %i.cd = fptoui float %i.cc to i64
  %i.ce = load i32, ptr %0, align 4, !tbaa !17
  %i.cf = sext i32 %i.ce to i64
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.cd)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12120
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cg
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !11 ; 2 uses
  %i.ck = fcmp ogt float %i.cj, 0.000000e+00
  %i.cl = fpext float %i.cj to double
  %.v128 = select i1 %i.ck, double 5.000000e-01, double -5.000000e-01
  %i.cm = fadd double %.v128, %i.cl
  %i.cn = fptoui double %i.cm to i32
  store i32 %i.cn, ptr %6, align 4, !tbaa !3
  %i.co = load i32, ptr %4, align 4, !tbaa !3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !18
  %i.cr = tail call i32 @llvm.umin.i32(i32 %i.co, i32 %i.cq)
  store i32 %i.cr, ptr %4, align 4, !tbaa !3
  %i.cs = load i32, ptr %5, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !19
  %i.cv = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 %i.cu)
  store i32 %i.cv, ptr %5, align 4, !tbaa !3
  %i.cw = load i32, ptr %6, align 4, !tbaa !3
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !20
  %i.cz = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.cy)
  store i32 %i.cz, ptr %6, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @TIFFCIELabToRGBInit(ptr noundef initializes((0, 4)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  store i32 1500, ptr %0, align 4, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 84) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.c = load float, ptr %i.b, align 4, !tbaa !21
  %i.d = fpext float %i.c to double
  %i.e = fdiv double 1.000000e+00, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load float, ptr %i.h, align 4, !tbaa !22
  %i.j = fsub float %i.g, %i.i                    ; 3 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !17     ; 2 uses
  %i.l = sitofp i32 %i.k to float
  %i.m = fdiv float %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.m, ptr %i.n, align 4, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ %i.k, %bb.a ], [ %i.ab, %bb.b ]
  %.053 = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.b ]  ; 3 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !18
  %i.s = uitofp i32 %i.r to float
  %i.t = uitofp i64 %.053 to double
  %i.u = sitofp i32 %i.q to double
  %i.v = fdiv double %i.t, %i.u
  %i.w = tail call double @pow(double noundef %i.v, double noundef %i.e) #6, !tbaa !3
  %i.x = fptrunc double %i.w to float
  %i.y = fmul float %i.s, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.053
  store float %i.y, ptr %i.z, align 4, !tbaa !11
  %i.aa = add i64 %.053, 1                        ; 2 uses
  %i.ab = load i32, ptr %0, align 4, !tbaa !17    ; 4 uses
  %i.ac = sext i32 %i.ab to i64
  %.not = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !23
  %i.af = fpext float %i.ae to double
  %i.ag = fdiv double 1.000000e+00, %i.af
  %i.ah = sitofp i32 %i.ab to float
  %i.ai = fdiv float %i.j, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ai, ptr %i.aj, align 4, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6116
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %i.am = phi i32 [ %i.ab, %bb.c ], [ %i.ax, %bb.d ]
  %.154 = phi i64 [ 0, %bb.c ], [ %i.aw, %bb.d ]  ; 3 uses
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.ao = uitofp i32 %i.an to float
  %i.ap = uitofp i64 %.154 to double
  %i.aq = sitofp i32 %i.am to double
  %i.ar = fdiv double %i.ap, %i.aq
  %i.as = tail call double @pow(double noundef %i.ar, double noundef %i.ag) #6, !tbaa !3
  %i.at = fptrunc double %i.as to float
  %i.au = fmul float %i.ao, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.154
  store float %i.au, ptr %i.av, align 4, !tbaa !11
  %i.aw = add i64 %.154, 1                        ; 2 uses
  %i.ax = load i32, ptr %0, align 4, !tbaa !17    ; 4 uses
  %i.ay = sext i32 %i.ax to i64
  %.not50 = icmp ugt i64 %i.aw, %i.ay
  br i1 %.not50, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ba = load float, ptr %i.az, align 4, !tbaa !25
  %i.bb = fpext float %i.ba to double
  %i.bc = fdiv double 1.000000e+00, %i.bb
  %i.bd = sitofp i32 %i.ax to float
  %i.be = fdiv float %i.j, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.be, ptr %i.bf, align 4, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12120
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %i.bi = phi i32 [ %i.ax, %bb.e ], [ %i.bt, %bb.f ]
  %.255 = phi i64 [ 0, %bb.e ], [ %i.bs, %bb.f ]  ; 3 uses
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !20
  %i.bk = uitofp i32 %i.bj to float
  %i.bl = uitofp i64 %.255 to double
  %i.bm = sitofp i32 %i.bi to double
  %i.bn = fdiv double %i.bl, %i.bm
  %i.bo = tail call double @pow(double noundef %i.bn, double noundef %i.bc) #6, !tbaa !3
  %i.bp = fptrunc double %i.bo to float
  %i.bq = fmul float %i.bk, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.255
  store float %i.bq, ptr %i.br, align 4, !tbaa !11
  %i.bs = add i64 %.255, 1                        ; 2 uses
  %i.bt = load i32, ptr %0, align 4, !tbaa !17    ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %.not51 = icmp ugt i64 %i.bs, %i.bu
  br i1 %.not51, label %bb.g, label %bb.f

bb.g:                                             ; preds = %bb.f
  %i.bv = load float, ptr %2, align 4, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bv, ptr %i.bw, align 4, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.by, ptr %i.bz, align 4, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cb, ptr %i.cc, align 4, !tbaa !13
  ret i32 0
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @TIFFYCbCrtoRGB(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @llvm.umin.i32(i32 %1, i32 255)
  %i.b = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 255)
  %i.d = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %i.e = tail call i32 @llvm.umin.i32(i32 %i.d, i32 255)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = zext nneg i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = zext nneg i32 %i.e to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, %i.j
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0)
end_hunk_0
